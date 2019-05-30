require 'spec_helper'

RSpec.describe ToyRobot::CLI do
  subject { ToyRobot::CLI.new }

  context 'load_commands' do
    it 'loads commands from a file' do
      path = File.dirname(__FILE__) + '/../fixtures/commands.txt'
      commands = subject.load_commands(path)
      expect(commands).to eq([
        [:place, 0, 0, 'NORTH'],
        [:move],
        [:turn_right],
        [:turn_left],
        [:report]
      ])
    end
  end

  context 'run' do
    let(:simulator) { instance_double(ToyRobot::Simulator) }

    before do
      allow(subject).to receive(:simulator) { simulator }
    end

    context 'PLACE command' do
      it 'passes a PLACE command to the simulator' do
        expect(simulator).to receive(:place).with(0, 0, 'NORTH')
        subject.run([[:place, 0, 0, 'NORTH']])
      end

      context 'MOVE command' do
        it 'passes a MOVE command to the simulator' do
          expect(simulator).to receive(:move)
          subject.run([[:move]])
        end
      end

      context 'LEFT command' do
        it 'passes a LEFT command to the simulator' do
          expect(simulator).to receive(:turn_left)
          subject.run([[:turn_left]])
        end
      end

      context 'RIGHT command' do
        it 'passes a RIGHT command to the simulator' do
          expect(simulator).to receive(:turn_right)
          subject.run([[:turn_right]])
        end
      end

      context 'REPORT command' do
        it 'passes a REPORT command to the simulator' do
          expect(simulator).to receive(:report)
          subject.run([[:report]])
        end
      end
    end
  end
end
