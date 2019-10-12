Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 920FAD4EF9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 12:25:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2cS8U22QueIfGZNzl9IGVmM7i3rPmXAsFzfV9iCr+8Y=; b=nNI+Yo1VNQcD0J
	TYSNkGDRspyU1CbG391bXNvG5UiLP188ZfKkvzqt6aPg3bAjI+plQGonaRWDd+82EVQqQ8D9JFnds
	y4R9ghAsTfCf3fXKYGA+XOHi9m6rMD83sI56nstWqLOe+J5AENZ/0HAyKolrPXosm1JxebEaf+NVH
	Xl2YVDHgIe0dnhTLb6LcUDFIoXCnWAdVoCXxbgZ/NpK3Wl2SXVVeoNNbM2PsbjKEWZ6QYWPX6Bur/
	jslGo24kDk36prG9AGv2RqjxeON0Q6iRkUNP5osIzacDKaR++Ir2TCT2VfbEnak/WCrLXDeIyGzud
	eyzZQ3BWqI9RZDZvLrhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJEZv-0008S9-BO; Sat, 12 Oct 2019 10:24:51 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJEZm-0008PX-VM
 for linux-arm-kernel@lists.infradead.org; Sat, 12 Oct 2019 10:24:45 +0000
X-Originating-IP: 86.202.229.42
Received: from localhost (lfbn-lyo-1-146-42.w86-202.abo.wanadoo.fr
 [86.202.229.42])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 4955D20007;
 Sat, 12 Oct 2019 10:24:30 +0000 (UTC)
Date: Sat, 12 Oct 2019 12:24:29 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Mao Wenan <maowenan@huawei.com>
Subject: Re: [PATCH -next] ASoC: atmel: select SND_ATMEL_SOC_DMA for
 SND_ATMEL_SOC_SSC
Message-ID: <20191012102429.GH3125@piout.net>
References: <20191012024230.159371-1-maowenan@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191012024230.159371-1-maowenan@huawei.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_032443_145074_0A969B59 
X-CRM114-Status: GOOD (  17.00  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: alsa-devel@alsa-project.org, lgirdwood@gmail.com,
 linux-kernel@vger.kernel.org, mirq-linux@rere.qmqm.pl,
 kernel-janitors@vger.kernel.org, tiwai@suse.com,
 ludovic.desroches@microchip.com, broonie@kernel.org,
 codrin.ciubotariu@microchip.com, perex@perex.cz,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/10/2019 10:42:30+0800, Mao Wenan wrote:
> If SND_ATMEL_SOC_SSC_PDC=y and SND_ATMEL_SOC_SSC_DMA=m,
> below errors can be found:
> sound/soc/atmel/atmel_ssc_dai.o: In function
> `atmel_ssc_set_audio':
> atmel_ssc_dai.c:(.text+0x6fe): undefined reference to
> `atmel_pcm_dma_platform_register'
> make: *** [vmlinux] Error 1
> 
> After commit 18291410557f ("ASoC: atmel: enable
> SOC_SSC_PDC and SOC_SSC_DMA in Kconfig"), SND_ATMEL_SOC_DMA
> and SND_ATMEL_SOC_SSC are selected by SND_ATMEL_SOC_SSC_DMA,
> SND_ATMEL_SOC_SSC is also selected by SND_ATMEL_SOC_SSC_PDC,
> the results are SND_ATMEL_SOC_DMA=m but SND_ATMEL_SOC_SSC=y,
> so the errors happen.
> 
> This patch make SND_ATMEL_SOC_SSC select SND_ATMEL_SOC_DMA.
> 
> Fixes: 18291410557f ("ASoC: atmel: enable SOC_SSC_PDC and SOC_SSC_DMA in Kconfig")
> Signed-off-by: Mao Wenan <maowenan@huawei.com>
> ---
>  sound/soc/atmel/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/sound/soc/atmel/Kconfig b/sound/soc/atmel/Kconfig
> index f118c22..2938f6b 100644
> --- a/sound/soc/atmel/Kconfig
> +++ b/sound/soc/atmel/Kconfig
> @@ -19,6 +19,7 @@ config SND_ATMEL_SOC_DMA
>  
>  config SND_ATMEL_SOC_SSC
>  	tristate
> +	select SND_ATMEL_SOC_DMA
>  

This is not the solution because this doesn't allow to compile out DMA
and use only PDC. I think Arnd already submitted a proper patch.

>  config SND_ATMEL_SOC_SSC_PDC
>  	tristate "SoC PCM DAI support for AT91 SSC controller using PDC"
> -- 
> 2.7.4
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
