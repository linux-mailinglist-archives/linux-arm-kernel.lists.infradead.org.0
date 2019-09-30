Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ABD6C24C7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 18:01:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ug/EqRV4kg3oNWYoa75ujpffhdMdRwAKPiWzm/Su+ws=; b=DCkxn/YijNBdcm
	719rzSM48ORjXFLvdSw7EqgHlq25Ok86dRfzhVkfv2QvkXz4A9q5wgw6pG2MXa0Zgm/IGgJ9zr6Cr
	e2PXFdKITwigO5VRidqBeDr1c7Nt0PGf3iuWgGXcN291MQ511mP1wrjN5Uq+Gx/IdHv+NE+UuXla4
	zf7WmHVLnHRvpQ4KbFOfbynWd3V2r3RmXaT6OkDGUTvfX9esNMk9nFCsukssG5yqQcUKZlLtx6ml2
	wM38wIAfWwgtrurFjS+Kk1TCe/qfM5StJZLqDwPlTaZiT840yXtYUCXTsViNDuwqgv3InQrchlhED
	bbQTM8cmVHgjkQDAHYNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEy7E-0002te-Tk; Mon, 30 Sep 2019 16:01:37 +0000
Received: from rere.qmqm.pl ([91.227.64.183])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEy72-0002sk-J9
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 16:01:26 +0000
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 46hnCM37HJz2J;
 Mon, 30 Sep 2019 17:59:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1569859167; bh=UhfU17aR0sNYys0oVRGSuAA/hFA3bzjaPoMdvXhHiSM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Nj72iYc/z5oBFvfSO6J2VcevkkHNftUuYSYYNlPVIFN10KCwA1SZB0EqQB6y2wV24
 ZQE0AuUJ3IRTvd//lcqlav5r0/bt8Oo4inE1oUcLwcVleeYKI5gxmJzxJ/FZFBTikf
 zIf3ellGpjWo/FAO4/ejQHvGJMZs4/vKYZFuibQLdE0Odv23S5Qrd1It0rkozCyhcs
 4ynhVaSIBYql+ybi81PttthYd2oiZhByYXXVQIojI9OzRFFtu1jz/v3J9SPmYoD3QA
 /GUmo9+K7B4DkDSwiNbw1tGdJcw5nmXgfHhiKBNQ0LdqpbE3jTJx+FMtv3c+KF9tNu
 LS6q0sL72okdQ==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.101.4 at mail
Date: Mon, 30 Sep 2019 18:01:21 +0200
From: =?iso-8859-2?Q?Micha=B3_Miros=B3aw?= <mirq-linux@rere.qmqm.pl>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next] ASoC: atmel: Fix build error
Message-ID: <20190930160120.GB32237@qmqm.qmqm.pl>
References: <20190928081641.44232-1-yuehaibing@huawei.com>
 <20190930155818.GA32237@qmqm.qmqm.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190930155818.GA32237@qmqm.qmqm.pl>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_090124_808848_B37EBF66 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alexandre.belloni@bootlin.com, alsa-devel@alsa-project.org,
 lgirdwood@gmail.com, linux-kernel@vger.kernel.org, tiwai@suse.com,
 broonie@kernel.org, codrin.ciubotariu@microchip.com, perex@perex.cz,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 30, 2019 at 05:58:18PM +0200, Micha=B3 Miros=B3aw wrote:
> On Sat, Sep 28, 2019 at 04:16:41PM +0800, YueHaibing wrote:
> > when do randbuilding, I got this error:
> > =

> > sound/soc/atmel/atmel_ssc_dai.o: In function `atmel_ssc_set_audio':
> > (.text+0x12f6): undefined reference to `atmel_pcm_pdc_platform_register'
> > =

> > This is because SND_ATMEL_SOC_SSC_DMA=3Dy, SND_ATMEL_SOC_SSC=3Dy,
> > but SND_ATMEL_SOC_SSC_PDC=3Dm. Fix it bt reintroducing the default Kcon=
fig.
> =

> Defaults won't forbid the invalid configuration. Can you try following:

Ah, no. This won't fix it - the dependency is the other way around:
SOC_SSC should depend on _PDC / _DMA.

> diff --git a/sound/soc/atmel/Kconfig b/sound/soc/atmel/Kconfig
> index f118c229ed82..461f023c5635 100644
> --- a/sound/soc/atmel/Kconfig
> +++ b/sound/soc/atmel/Kconfig
> @@ -12,10 +12,12 @@ if SND_ATMEL_SOC
>  config SND_ATMEL_SOC_PDC
>  	tristate
>  	depends on HAS_DMA
> +	select SND_ATMEL_SOC_SSC
>  =

>  config SND_ATMEL_SOC_DMA
>  	tristate
>  	select SND_SOC_GENERIC_DMAENGINE_PCM
> +	select SND_ATMEL_SOC_SSC
>  =

>  config SND_ATMEL_SOC_SSC
>  	tristate
> @@ -24,7 +26,6 @@ config SND_ATMEL_SOC_SSC_PDC
>  	tristate "SoC PCM DAI support for AT91 SSC controller using PDC"
>  	depends on ATMEL_SSC
>  	select SND_ATMEL_SOC_PDC
> -	select SND_ATMEL_SOC_SSC
>  	help
>  	  Say Y or M if you want to add support for Atmel SSC interface
>  	  in PDC mode configured using audio-graph-card in device-tree.
> @@ -33,7 +34,6 @@ config SND_ATMEL_SOC_SSC_DMA
>  	tristate "SoC PCM DAI support for AT91 SSC controller using DMA"
>  	depends on ATMEL_SSC
>  	select SND_ATMEL_SOC_DMA
> -	select SND_ATMEL_SOC_SSC
>  	help
>  	  Say Y or M if you want to add support for Atmel SSC interface
>  	  in DMA mode configured using audio-graph-card in device-tree.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
