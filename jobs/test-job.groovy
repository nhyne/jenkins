job('ci') {
    description 'test'
    steps {
        shell("""
          echo test
        """)
    }
}
        
