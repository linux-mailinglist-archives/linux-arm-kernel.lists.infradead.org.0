Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0FCF136A7F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 11:06:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8YIdRJ+ZkGGNTefa8tngF1jWmzFu7ovymvtJ9lRz1cQ=; b=n9q2u8YxV2RF92
	YH616DSnyR34crcWXlm2CYMXwT7YPCSoly/wvlaVd5a0eHRVwGtjMhe2ZIlRHgbRzKFvitymvF8u6
	YvjQffbBSniR9e4+M9X5SxQr/qnndbfb7+x5yx85TAnHmTKH3Bv8G35aoFP2CFDRMMlfK90Oy4umx
	PmSBbwouiQ/tGGnQPHbn3xuHgsgVwzCMNHjsZXuLdzH62aq2/M5D0NnDipclsHfhtoknAJc398bi9
	E+AzwQDc2IGgA1WVvaoYGydHlUBvvQvUCCLq5IWpCezZjbX6ovVbUX1ZIUIIdvrtZTHjU+v7gzmmD
	OmGNWyjJjqul3alaH/Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iprBc-0004V2-AT; Fri, 10 Jan 2020 10:06:36 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iprBR-0004UH-0E
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 10:06:26 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00AA3GGC022000; Fri, 10 Jan 2020 11:06:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=X/IKNq/8pJeoSL1pB8WIriwvGpAf8+royPr4JdN4o5o=;
 b=OskxaP71K4BlIRa4w8IX7yvBVUjgYvCXCPe6onm4asE5Z2uFKOyXq6A9UVk6RbpffuYO
 SpEXuRkdYlY6uZ28Ng//3Z/U2GYITL8TmyjXzM1sd7H1OcGHAh3UWkwMMRsN1gVU9AIl
 6Ddhpa/wP/vVZUkSd49BN0Bcr72Abq7e4a7HdpBzf7eUGjQSTmcejs8BInztc+NwPn8t
 EC6bcfBjOlHjDMSwg+w21utR4+Wu162jkNU/Q/g97m/m6n6R5IizQlylL2sr+tXK/BZ7
 rwnwMTvh9rLq65E98OIroTteb34sflFTLgTO0RyVQcubEJCZ1MAdqdkqchw+WZb+Kn33 Ig== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xdw8b7jex-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 10 Jan 2020 11:06:20 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 42754100042;
 Fri, 10 Jan 2020 11:06:14 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node1.st.com [10.75.127.13])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 348E72A6199;
 Fri, 10 Jan 2020 11:06:14 +0100 (CET)
Received: from SFHDAG6NODE2.st.com (10.75.127.17) by SFHDAG5NODE1.st.com
 (10.75.127.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 10 Jan
 2020 11:06:13 +0100
Received: from SFHDAG6NODE2.st.com ([fe80::a56f:c186:bab7:13d6]) by
 SFHDAG6NODE2.st.com ([fe80::a56f:c186:bab7:13d6%20]) with mapi id
 15.00.1347.000; Fri, 10 Jan 2020 11:06:13 +0100
From: Olivier MOYSAN <olivier.moysan@st.com>
To: "jic23@kernel.org" <jic23@kernel.org>, "knaack.h@gmx.de" <knaack.h@gmx.de>,
 "lars@metafoo.de" <lars@metafoo.de>, "pmeerw@pmeerw.net"
 <pmeerw@pmeerw.net>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>, Fabrice GASNIER
 <fabrice.gasnier@st.com>, "linux-iio@vger.kernel.org"
 <linux-iio@vger.kernel.org>, "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>,
 Benjamin GAIGNARD <benjamin.gaignard@st.com>
Subject: Re: [PATCH v2] iio: adc: stm32-dfsdm: adapt sampling rate to
 oversampling ratio
Thread-Topic: [PATCH v2] iio: adc: stm32-dfsdm: adapt sampling rate to
 oversampling ratio
Thread-Index: AQHVpSQGsx9/ld0UD0mL7CjGbR/bFqfj4CGA
Date: Fri, 10 Jan 2020 10:06:13 +0000
Message-ID: <9b7e2161-1a31-8d69-52f9-ae9dedc902e3@st.com>
References: <20191127131008.18896-1-olivier.moysan@st.com>
In-Reply-To: <20191127131008.18896-1-olivier.moysan@st.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.50]
Content-ID: <1C2AA4C736BB8E4387DC1A086E9FE594@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-10_01:2020-01-10,
 2020-01-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_020625_332889_7D774D3D 
X-CRM114-Status: GOOD (  20.92  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi Jonathan, all,

Kind reminder on this patch.
Regards
Olivier

On 11/27/19 2:10 PM, Olivier Moysan wrote:
> Update sampling rate when oversampling ratio is changed
> through the IIO ABI.
>
> Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
> ---
> changes in version 2:
> - correct title
> ---
>   drivers/iio/adc/stm32-dfsdm-adc.c | 32 ++++++++++++++++++-------------
>   1 file changed, 19 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/iio/adc/stm32-dfsdm-adc.c b/drivers/iio/adc/stm32-dfsdm-adc.c
> index 0339ecdd06bd..87a842507509 100644
> --- a/drivers/iio/adc/stm32-dfsdm-adc.c
> +++ b/drivers/iio/adc/stm32-dfsdm-adc.c
> @@ -1221,14 +1221,32 @@ static int stm32_dfsdm_write_raw(struct iio_dev *indio_dev,
>   	unsigned int spi_freq;
>   	int ret = -EINVAL;
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
>   	switch (mask) {
>   	case IIO_CHAN_INFO_OVERSAMPLING_RATIO:
>   		ret = iio_device_claim_direct_mode(indio_dev);
>   		if (ret)
>   			return ret;
> +
>   		ret = stm32_dfsdm_compute_all_osrs(indio_dev, val);
> -		if (!ret)
> +		if (!ret) {
> +			dev_dbg(&indio_dev->dev,
> +				"Sampling rate changed from (%u) to (%u)\n",
> +				adc->sample_freq, spi_freq / val);
>   			adc->oversamp = val;
> +			adc->sample_freq = spi_freq / val;
> +		}
>   		iio_device_release_direct_mode(indio_dev);
>   		return ret;
>   
> @@ -1240,18 +1258,6 @@ static int stm32_dfsdm_write_raw(struct iio_dev *indio_dev,
>   		if (ret)
>   			return ret;
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
>   		ret = dfsdm_adc_set_samp_freq(indio_dev, val, spi_freq);
>   		iio_device_release_direct_mode(indio_dev);
>   		return ret;
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
