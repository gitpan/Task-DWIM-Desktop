use inc::Module::Install;
use lib 'lib';
use Task::DWIM::Desktop;

name           'Task-DWIM-Desktop';
all_from       'lib/Task/DWIM/Desktop.pm';

build_requires 'Test::More'                => '0.42';
build_requires 'Perl::Version'             => '1.011';

requires perl  => 5.008;

my %modules = Task::DWIM::Desktop::get_modules();
foreach my $name (keys %modules) {
    requires $name => $modules{$name};
}

repository 'https://github.com/dwimperl/Task-DWIM';

WriteAll;


