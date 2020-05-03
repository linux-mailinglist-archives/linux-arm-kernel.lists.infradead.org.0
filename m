Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB3441C2CB4
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 15:17:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c0rkyPgbD1ZS5Vo6il/pqaOuscagPWRXJz8kUvqZYMs=; b=Ou4yNKAFIL2/LS
	rBIBS/Gw48BQCk05Xu4R0Xc0drziWOqzOgrxuXATn9+AWde1bQcpgT7q7wvTNNrA09f9FJmPQPIKw
	DFg6zt1AIDKMF4lxfJm3C5h6UTcJhKJby4CQTJHEk/Enw/bRuWzIF8+7l9q6pBXLtMM99Ux2Scpv8
	ntuVAvAHKZ3KUFrBPWKnSrk/Sw+oCiazOiDxL9nUp/+JA6NGxdrTmP65yk3M3Vl9fYehIkxmRswJ5
	b/C7A1pKrfa42ztrfFgGV3IETuu+JZdLR8/hB/7xFXM2fNmBHCy0y7AUsLaOM0g8CbGiF5uANoP8G
	uaBkUbG6jQvO+J2Ki5Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVEV2-0000eq-02; Sun, 03 May 2020 13:17:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVEUt-0000dy-TG
 for linux-arm-kernel@lists.infradead.org; Sun, 03 May 2020 13:17:33 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2CB112084D;
 Sun,  3 May 2020 13:17:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588511851;
 bh=c41wwaPkMaPx/AbXYXAvHUbp8vk80alaoAI0zA7NCnc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Lp9ZTBlCE+wgj799vIc0GTuXkNxuIRSOL5IdIK2d+0gt4Ekgk7z8vrOWCIlxqyPSG
 QwOxMYR+YGl0Fg1MuRgRFvGjmf45V982vxk/Ye96NHuz2VsDn3iQjCmRKWIaHioSKN
 ZPhyr1ub+1OSTRFeiQEIcEcutXxUSqdLEQqSLE0c=
Date: Sun, 3 May 2020 14:17:27 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH] iio: adc: stm32-dfsdm: fix device used to request dma
Message-ID: <20200503141727.13269ac2@archlinux>
In-Reply-To: <1588238926-23964-2-git-send-email-fabrice.gasnier@st.com>
References: <1588238926-23964-1-git-send-email-fabrice.gasnier@st.com>
 <1588238926-23964-2-git-send-email-fabrice.gasnier@st.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_061731_985224_F9D6611E 
X-CRM114-Status: GOOD (  18.67  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: olivier.moysan@st.com, alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 30 Apr 2020 11:28:46 +0200
Fabrice Gasnier <fabrice.gasnier@st.com> wrote:

> DMA channel request should use device struct from platform device struct.
> Currently it's using iio device struct. But at this stage when probing,
> device struct isn't yet registered (e.g. device_register is done in
> iio_device_register). Since commit 71723a96b8b1 ("dmaengine: Create
> symlinks between DMA channels and slaves"), a warning message is printed
> as the links in sysfs can't be created, due to device isn't yet registered:
> - Cannot create DMA slave symlink
> - Cannot create DMA dma:rx symlink
> 
> Fix this by using device struct from platform device to request dma chan.
> 
> Fixes: eca949800d2d ("IIO: ADC: add stm32 DFSDM support for PDM microphone")
> 
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>

Both applied to the fixes-togreg branch of iio.git and marked for stable.

THanks,

Jonathan

> ---
>  drivers/iio/adc/stm32-dfsdm-adc.c | 21 +++++++++++----------
>  1 file changed, 11 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/iio/adc/stm32-dfsdm-adc.c b/drivers/iio/adc/stm32-dfsdm-adc.c
> index 76a60d9..506bf51 100644
> --- a/drivers/iio/adc/stm32-dfsdm-adc.c
> +++ b/drivers/iio/adc/stm32-dfsdm-adc.c
> @@ -62,7 +62,7 @@ enum sd_converter_type {
>  
>  struct stm32_dfsdm_dev_data {
>  	int type;
> -	int (*init)(struct iio_dev *indio_dev);
> +	int (*init)(struct device *dev, struct iio_dev *indio_dev);
>  	unsigned int num_channels;
>  	const struct regmap_config *regmap_cfg;
>  };
> @@ -1365,11 +1365,12 @@ static void stm32_dfsdm_dma_release(struct iio_dev *indio_dev)
>  	}
>  }
>  
> -static int stm32_dfsdm_dma_request(struct iio_dev *indio_dev)
> +static int stm32_dfsdm_dma_request(struct device *dev,
> +				   struct iio_dev *indio_dev)
>  {
>  	struct stm32_dfsdm_adc *adc = iio_priv(indio_dev);
>  
> -	adc->dma_chan = dma_request_chan(&indio_dev->dev, "rx");
> +	adc->dma_chan = dma_request_chan(dev, "rx");
>  	if (IS_ERR(adc->dma_chan)) {
>  		int ret = PTR_ERR(adc->dma_chan);
>  
> @@ -1425,7 +1426,7 @@ static int stm32_dfsdm_adc_chan_init_one(struct iio_dev *indio_dev,
>  					  &adc->dfsdm->ch_list[ch->channel]);
>  }
>  
> -static int stm32_dfsdm_audio_init(struct iio_dev *indio_dev)
> +static int stm32_dfsdm_audio_init(struct device *dev, struct iio_dev *indio_dev)
>  {
>  	struct iio_chan_spec *ch;
>  	struct stm32_dfsdm_adc *adc = iio_priv(indio_dev);
> @@ -1452,10 +1453,10 @@ static int stm32_dfsdm_audio_init(struct iio_dev *indio_dev)
>  	indio_dev->num_channels = 1;
>  	indio_dev->channels = ch;
>  
> -	return stm32_dfsdm_dma_request(indio_dev);
> +	return stm32_dfsdm_dma_request(dev, indio_dev);
>  }
>  
> -static int stm32_dfsdm_adc_init(struct iio_dev *indio_dev)
> +static int stm32_dfsdm_adc_init(struct device *dev, struct iio_dev *indio_dev)
>  {
>  	struct iio_chan_spec *ch;
>  	struct stm32_dfsdm_adc *adc = iio_priv(indio_dev);
> @@ -1499,17 +1500,17 @@ static int stm32_dfsdm_adc_init(struct iio_dev *indio_dev)
>  	init_completion(&adc->completion);
>  
>  	/* Optionally request DMA */
> -	ret = stm32_dfsdm_dma_request(indio_dev);
> +	ret = stm32_dfsdm_dma_request(dev, indio_dev);
>  	if (ret) {
>  		if (ret != -ENODEV) {
>  			if (ret != -EPROBE_DEFER)
> -				dev_err(&indio_dev->dev,
> +				dev_err(dev,
>  					"DMA channel request failed with %d\n",
>  					ret);
>  			return ret;
>  		}
>  
> -		dev_dbg(&indio_dev->dev, "No DMA support\n");
> +		dev_dbg(dev, "No DMA support\n");
>  		return 0;
>  	}
>  
> @@ -1622,7 +1623,7 @@ static int stm32_dfsdm_adc_probe(struct platform_device *pdev)
>  		adc->dfsdm->fl_list[adc->fl_id].sync_mode = val;
>  
>  	adc->dev_data = dev_data;
> -	ret = dev_data->init(iio);
> +	ret = dev_data->init(dev, iio);
>  	if (ret < 0)
>  		return ret;
>  


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
