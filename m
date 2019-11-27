Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8093310B2FD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 17:13:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wqlv7ix+dL7ObL1GeQ4qfdRv/vNwe022Mlqo4Lv4pgY=; b=OgHD0/0lIMbEckbmjR3mSBumt6
	PP7zIcUdRxHeuDFhzphBSjSWh5i9kmpP10TgkyO56aVK04m7gba4YqEhQ4IPbHkMuqjB+7m/fircL
	il5bajYwed9F3ve/LcqvjvxahPpwt1MsMnDGZakHQwW3edy4I4ffTIvT7iPXUlPcXez4I6gT7GTj7
	zkcpfIY6Ll6aauJ9Z6xjnbRtqioGTTjUa0kpyq81N2y0U/llEZa0W+lxfRLUuwbPW+Z8Gws00Ytiw
	LGY6oamMIfwAbZ92OpHMaP8BWnjTaiPx7YukbhR0IGxujv6dp4huAKgplb2l+8X5d3r/uh0j4dKo3
	6DFguVzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZzwo-0006b0-Lb; Wed, 27 Nov 2019 16:13:46 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZzwg-0006aM-9e
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 16:13:40 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xARGCIWn018959; Wed, 27 Nov 2019 17:13:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : references
 : from : message-id : date : mime-version : in-reply-to : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=bnOLWjqEKHzgFYDVOb+mcrObtgio5x+q0cUoT2iaBqE=;
 b=ZFDaW64eUKS8PnXO4HBVNtxeRNJnKNYBTofpmSf0FikD1Jz3TT/2zATXIyPUW0pb3oF4
 68XrWGQIY8rCawNmrKEYYfnI92y8U2sdcCiSTVDYKZ7h2WmCJs0+LsQUGVZmmhiG3Ra+
 g9Mk4pRo1hyZMSWX1jDAMVYql5gERaMvugxFg37X353n+Dq2oO/jkpHyzNKuJ3LtzuGM
 u3FCNcVFlPS6YZUjPmnmUqiK8hUZhM5avetxF5xQjli6fTPcBIcKMDQFbwDsTfEt7jFj
 MqsVKuof6TtYcUGi9aY8Q0JQmHSNQc8lxJAfuukkI9V4NEbB/H4SVnwlyNTeW31wQPk4 bg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2whcxkmkyr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 27 Nov 2019 17:13:30 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id AB81A100034;
 Wed, 27 Nov 2019 17:13:29 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 9D37B2C38D8;
 Wed, 27 Nov 2019 17:13:29 +0100 (CET)
Received: from [10.48.0.192] (10.75.127.44) by SFHDAG5NODE3.st.com
 (10.75.127.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 27 Nov
 2019 17:13:28 +0100
Subject: Re: [PATCH v2] iio: adc: stm32-dfsdm: adapt sampling rate to
 oversampling ratio
To: Olivier Moysan <olivier.moysan@st.com>, <jic23@kernel.org>,
 <knaack.h@gmx.de>, <lars@metafoo.de>, <pmeerw@pmeerw.net>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>,
 <linux-iio@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <benjamin.gaignard@st.com>
References: <20191127131008.18896-1-olivier.moysan@st.com>
From: Fabrice Gasnier <fabrice.gasnier@st.com>
Message-ID: <c2c2a902-c16b-e85e-7fa7-a86d88f7a159@st.com>
Date: Wed, 27 Nov 2019 17:13:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191127131008.18896-1-olivier.moysan@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG4NODE2.st.com (10.75.127.11) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-27_04:2019-11-27,2019-11-27 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_081338_799803_93701366 
X-CRM114-Status: GOOD (  18.58  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/27/19 2:10 PM, Olivier Moysan wrote:
> Update sampling rate when oversampling ratio is changed
> through the IIO ABI.
> 
> Signed-off-by: Olivier Moysan <olivier.moysan@st.com>

Hi Olivier,

Acked-by: Fabrice Gasnier <fabrice.gasnier@st.com>

Thanks,
Fabrice
> ---
> changes in version 2:
> - correct title
> ---
>  drivers/iio/adc/stm32-dfsdm-adc.c | 32 ++++++++++++++++++-------------
>  1 file changed, 19 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/iio/adc/stm32-dfsdm-adc.c b/drivers/iio/adc/stm32-dfsdm-adc.c
> index 0339ecdd06bd..87a842507509 100644
> --- a/drivers/iio/adc/stm32-dfsdm-adc.c
> +++ b/drivers/iio/adc/stm32-dfsdm-adc.c
> @@ -1221,14 +1221,32 @@ static int stm32_dfsdm_write_raw(struct iio_dev *indio_dev,
>  	unsigned int spi_freq;
>  	int ret = -EINVAL;
>  
> +	switch (ch->src) {
> +	case DFSDM_CHANNEL_SPI_CLOCK_INTERNAL:
> +		spi_freq = adc->dfsdm->spi_master_freq;
> +		break;
> +	case DFSDM_CHANNEL_SPI_CLOCK_INTERNAL_DIV2_FALLING:
> +	case DFSDM_CHANNEL_SPI_CLOCK_INTERNAL_DIV2_RISING:
> +		spi_freq = adc->dfsdm->spi_master_freq / 2;
> +		break;
> +	default:
> +		spi_freq = adc->spi_freq;
> +	}
> +
>  	switch (mask) {
>  	case IIO_CHAN_INFO_OVERSAMPLING_RATIO:
>  		ret = iio_device_claim_direct_mode(indio_dev);
>  		if (ret)
>  			return ret;
> +
>  		ret = stm32_dfsdm_compute_all_osrs(indio_dev, val);
> -		if (!ret)
> +		if (!ret) {
> +			dev_dbg(&indio_dev->dev,
> +				"Sampling rate changed from (%u) to (%u)\n",
> +				adc->sample_freq, spi_freq / val);
>  			adc->oversamp = val;
> +			adc->sample_freq = spi_freq / val;
> +		}
>  		iio_device_release_direct_mode(indio_dev);
>  		return ret;
>  
> @@ -1240,18 +1258,6 @@ static int stm32_dfsdm_write_raw(struct iio_dev *indio_dev,
>  		if (ret)
>  			return ret;
>  
> -		switch (ch->src) {
> -		case DFSDM_CHANNEL_SPI_CLOCK_INTERNAL:
> -			spi_freq = adc->dfsdm->spi_master_freq;
> -			break;
> -		case DFSDM_CHANNEL_SPI_CLOCK_INTERNAL_DIV2_FALLING:
> -		case DFSDM_CHANNEL_SPI_CLOCK_INTERNAL_DIV2_RISING:
> -			spi_freq = adc->dfsdm->spi_master_freq / 2;
> -			break;
> -		default:
> -			spi_freq = adc->spi_freq;
> -		}
> -
>  		ret = dfsdm_adc_set_samp_freq(indio_dev, val, spi_freq);
>  		iio_device_release_direct_mode(indio_dev);
>  		return ret;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
