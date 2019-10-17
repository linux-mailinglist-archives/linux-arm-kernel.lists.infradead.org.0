Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B1BDA6C8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 09:51:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0MmEqfyMDeEx9TQIRpxlfhrsnC0pLNdHKd3Bg+n8wfw=; b=IwCRATWRbbcV8Y
	Qn6YhqGT+5l++6JFslHHrS3afSkjdHIzL7xNDTSUgts+zXH2Rx8FPdCCj0sRNTjPIaoUl4WMF6zq7
	S7mozcSHZoVzh31pRT8sWxKx2vXyTrYDYMnYszrfrEPNVUjTtTTzXeu1R1xGzss/jP5l9Huri06o7
	DOZ1INJFAqYAVQtJkTBUOmwGDzcCawP1uYUMMvRjvqEoMSjKKFhSrsqHBXb3bPWzhJHTe4SiPVZYC
	h4QZLHZk44WxXtdcDIpdtsQzi8m0Jwz+G3F/Og4qJoV6O4tNeSQ6a1ux9vZxYF528Ams4wjdMqO8q
	OVjQPHWf8w1iqrdUGKZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL0ZO-0001wY-3Z; Thu, 17 Oct 2019 07:51:38 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL0ZF-0001vf-BK
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 07:51:31 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 74FEA204C8;
 Thu, 17 Oct 2019 09:51:22 +0200 (CEST)
Received: from [192.168.108.37] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 5E37B204A6;
 Thu, 17 Oct 2019 09:51:22 +0200 (CEST)
Subject: Re: [PATCH -next] ASoC: atmel: Fix build error
To: YueHaibing <yuehaibing@huawei.com>
References: <20190928081641.44232-1-yuehaibing@huawei.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <97c5adeb-ce12-f50a-f3e5-e187985ef073@free.fr>
Date: Thu, 17 Oct 2019 09:51:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190928081641.44232-1-yuehaibing@huawei.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Thu Oct 17 09:51:22 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_005129_537439_99503A02 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alsa-devel@alsa-project.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28/09/2019 10:16, YueHaibing wrote:

> when do randbuilding, I got this error:
> 
> sound/soc/atmel/atmel_ssc_dai.o: In function `atmel_ssc_set_audio':
> (.text+0x12f6): undefined reference to `atmel_pcm_pdc_platform_register'
> 
> This is because SND_ATMEL_SOC_SSC_DMA=y, SND_ATMEL_SOC_SSC=y,
> but SND_ATMEL_SOC_SSC_PDC=m. Fix it bt reintroducing the default Kconfig.

A default doesn't prevent a user from picking the problematic config.
Shouldn't there be some kind of "depends on" clause?


> Reported-by: Hulk Robot <hulkci@huawei.com>
> Fixes: 18291410557f ("ASoC: atmel: enable SOC_SSC_PDC and SOC_SSC_DMA in Kconfig")
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  sound/soc/atmel/Kconfig | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/sound/soc/atmel/Kconfig b/sound/soc/atmel/Kconfig
> index f118c22..79e45f2 100644
> --- a/sound/soc/atmel/Kconfig
> +++ b/sound/soc/atmel/Kconfig
> @@ -12,10 +12,14 @@ if SND_ATMEL_SOC
>  config SND_ATMEL_SOC_PDC
>  	tristate
>  	depends on HAS_DMA
> +	default m if SND_ATMEL_SOC_SSC_PDC=m && SND_ATMEL_SOC_SSC=m
> +	default y if SND_ATMEL_SOC_SSC_PDC=y || (SND_ATMEL_SOC_SSC_PDC=m && SND_ATMEL_SOC_SSC=y)
>  
>  config SND_ATMEL_SOC_DMA
>  	tristate
>  	select SND_SOC_GENERIC_DMAENGINE_PCM
> +	default m if SND_ATMEL_SOC_SSC_DMA=m && SND_ATMEL_SOC_SSC=m
> +	default y if SND_ATMEL_SOC_SSC_DMA=y || (SND_ATMEL_SOC_SSC_DMA=m && SND_ATMEL_SOC_SSC=y)
>  
>  config SND_ATMEL_SOC_SSC
>  	tristate

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
