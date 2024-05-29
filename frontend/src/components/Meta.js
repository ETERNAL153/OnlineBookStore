import React from 'react'
import { Helmet } from 'react-helmet'

const Meta = ({ title, description, keywords }) => {
  return (
    <Helmet>
      <title>{title}</title>
      <meta name='description' content={description} />
      <meta name='keyword' content={keywords} />
    </Helmet>
  )
}

Meta.defaultProps = {
  title: 'FPRTstore by Vibhor',
  description: 'Best products. Unbeatable prices',
  keywords: 'electronics, books, mobiles, fashion',
}

export default Meta
