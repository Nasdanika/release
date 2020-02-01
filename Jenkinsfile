node {
    def release = '2020.01'
    stage('Foundation') {
        build job: 'foundation', parameters: [string(name: 'release', value: release)]
    }
}