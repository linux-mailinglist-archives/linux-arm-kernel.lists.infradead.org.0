Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD6DBDA67F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 09:32:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vuskFnOrQvh6V71rp12I0iQNMXu5wXXZArOxthftDyc=; b=BXdM+dPcsL1r6+
	DQNpQXvU96KO0VSxLwRZeawN0kPNnDuL2Ms5F8e+yXPtXxOD7yiHsfNpjB89Ft63kY+Xjdxe3mOTs
	qL366V5zxVzUfhfJj6I7LTV2YUFf8TOOVXnzG3DleVCCoIW82dH020zxyzHD3jHrLK7eeP1+YDCF+
	ti0o5KTCQN9qkqvkWjbgt0mFA4pCIPq387vRwIb4TL8QEMd7SLhq1KSxY4Qf5f66WST37MvjNPKDC
	Y0YbLHkv+7UOeR9ytrC6q0RkbzUBlIaZc1SmE44Og2OYCW+b6VNiq1av7uw5Iiw+0dIzk5aLwkzZj
	R5Ql2NlrnEkvRK4hWwzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL0Gi-0002JR-SU; Thu, 17 Oct 2019 07:32:20 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL0GZ-0002IH-UM
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 07:32:13 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 38170F1E5786B6648918;
 Thu, 17 Oct 2019 15:32:07 +0800 (CST)
Received: from [127.0.0.1] (10.133.213.239) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0;
 Thu, 17 Oct 2019 15:32:03 +0800
Subject: Re: [PATCH -next] ASoC: atmel: Fix build error
To: <codrin.ciubotariu@microchip.com>, <lgirdwood@gmail.com>,
 <broonie@kernel.org>, <perex@perex.cz>, <tiwai@suse.com>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <mirq-linux@rere.qmqm.pl>
References: <20190928081641.44232-1-yuehaibing@huawei.com>
From: Yuehaibing <yuehaibing@huawei.com>
Message-ID: <c0a0ddc9-5ae4-8b5e-1d77-b322970651bd@huawei.com>
Date: Thu, 17 Oct 2019 15:32:01 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <20190928081641.44232-1-yuehaibing@huawei.com>
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_003212_153960_DB6F6504 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ping..., this issue still in linux-next 20191017

On 2019/9/28 16:16, YueHaibing wrote:
> when do randbuilding, I got this error:
> 
> sound/soc/atmel/atmel_ssc_dai.o: In function `atmel_ssc_set_audio':
> (.text+0x12f6): undefined reference to `atmel_pcm_pdc_platform_register'
> 
> This is because SND_ATMEL_SOC_SSC_DMA=y, SND_ATMEL_SOC_SSC=y,
> but SND_ATMEL_SOC_SSC_PDC=m. Fix it bt reintroducing the default Kconfig.
> 
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
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
