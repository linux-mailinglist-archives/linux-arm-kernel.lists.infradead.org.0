Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC2DC3825
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 16:57:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pzTXbLPnWlRwQoKDbUmf6f2Re4kjrBqjRpT0ehdGvNQ=; b=SCOXhEO4CxUoRt
	dhXE1HhGuTY6wVFfpl9upSRKnAda/htdW/Ut2XhaNvcXKqvyMKbMeFpYDgWmUV4CVrghwjHmrCa5V
	MrvArzh8CZM8CLqPiyOcbODrZNOLJOOdZ4yTj6kks/yYSanq/oGMGLoiiV8KkCi8jgzydPRYO9URz
	UCiWxVUXm6l2j1B3onaL4EMMgEzt6nbicR6iEs25CJL9+zs+Tt/rofLQyjNQgiSh/tz02Po5oREY1
	T5JGDVq5lgKSpmwVTba6pEguLyVhRsIAili/4x15EZmVopiS9b8qjrOblNwXHxCEzhIJhziAFN5k4
	dEfp6aRitVGU4eUqRjyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFJaQ-0003EE-C9; Tue, 01 Oct 2019 14:57:10 +0000
Received: from rere.qmqm.pl ([91.227.64.183])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFJaJ-0003D1-C8
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 14:57:05 +0000
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 46jMkZ2SSrz4G;
 Tue,  1 Oct 2019 16:55:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1569941704; bh=/oFjgNLU/ZvSelC6tLjw91cHQa877YduGYa+snzVYRU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JsQ1F1kX3wGRrlY1a9hWTLA2LaalbBEahiTlqlZOGsDZXb+SyXUwzKD4rbke0EmXG
 x7N82fQJUZm074OdjoaLeJbSdMG/B3bF3Y+uWGhTlrenGAtWt3MMrBkxoPn3XT0f1v
 ZYxlbloRZzLwqC97uSfDNoEDk0Yhu006mYNLkwnJtid/YXtL8s7NeBwDWKf2yIH9tk
 brd/t5cuqt8mnC01f850RppQzimpW7PEbWF1Z5ZrE8uY+2lVF17M9PdYc7BIglHjxm
 ZiM2Lzi3u2RaucgE3dU7OMpp60GXXQsanht7Z/0Ho1o/zDnV8d5fPbjPMTazBU7wW0
 JuWnKzqAZOu9g==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.101.4 at mail
Date: Tue, 1 Oct 2019 16:56:56 +0200
From: =?iso-8859-2?Q?Micha=B3_Miros=B3aw?= <mirq-linux@rere.qmqm.pl>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] ASoC: atmel: fix atmel_ssc_set_audio link failure
Message-ID: <20191001145656.GB6905@qmqm.qmqm.pl>
References: <20191001142116.1172290-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191001142116.1172290-1-arnd@arndb.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_075703_768497_4A23AEF7 
X-CRM114-Status: GOOD (  14.61  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 alsa-devel@alsa-project.org, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel@vger.kernel.org, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Mark Brown <broonie@kernel.org>,
 Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 01, 2019 at 04:20:55PM +0200, Arnd Bergmann wrote:
> The ssc audio driver can call into both pdc and dma backends.  With the
> latest rework, the logic to do this in a safe way avoiding link errors
> was removed, bringing back link errors that were fixed long ago in commit
> 061981ff8cc8 ("ASoC: atmel: properly select dma driver state") such as
> =

> sound/soc/atmel/atmel_ssc_dai.o: In function `atmel_ssc_set_audio':
> atmel_ssc_dai.c:(.text+0xac): undefined reference to `atmel_pcm_pdc_platf=
orm_register'
> =

> Fix it this time using Makefile hacks and a comment to prevent this
> from accidentally getting removed again rather than Kconfig hacks.
> =

> Fixes: 18291410557f ("ASoC: atmel: enable SOC_SSC_PDC and SOC_SSC_DMA in =
Kconfig")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  sound/soc/atmel/Kconfig  |  4 ++--
>  sound/soc/atmel/Makefile | 10 ++++++++--
>  2 files changed, 10 insertions(+), 4 deletions(-)
> =

> diff --git a/sound/soc/atmel/Kconfig b/sound/soc/atmel/Kconfig
> index f118c229ed82..25c31bf64936 100644
> --- a/sound/soc/atmel/Kconfig
> +++ b/sound/soc/atmel/Kconfig
> @@ -10,11 +10,11 @@ config SND_ATMEL_SOC
>  if SND_ATMEL_SOC
>  =

>  config SND_ATMEL_SOC_PDC
> -	tristate
> +	bool
>  	depends on HAS_DMA
>  =

>  config SND_ATMEL_SOC_DMA
> -	tristate
> +	bool
>  	select SND_SOC_GENERIC_DMAENGINE_PCM
>  =

>  config SND_ATMEL_SOC_SSC
> diff --git a/sound/soc/atmel/Makefile b/sound/soc/atmel/Makefile
> index 1f6890ed3738..c7d2989791be 100644
> --- a/sound/soc/atmel/Makefile
> +++ b/sound/soc/atmel/Makefile
> @@ -6,8 +6,14 @@ snd-soc-atmel_ssc_dai-objs :=3D atmel_ssc_dai.o
>  snd-soc-atmel-i2s-objs :=3D atmel-i2s.o
>  snd-soc-mchp-i2s-mcc-objs :=3D mchp-i2s-mcc.o
>  =

> -obj-$(CONFIG_SND_ATMEL_SOC_PDC) +=3D snd-soc-atmel-pcm-pdc.o
> -obj-$(CONFIG_SND_ATMEL_SOC_DMA) +=3D snd-soc-atmel-pcm-dma.o
> +# pdc and dma need to both be built-in if any user of
> +# ssc is built-in.
> +ifdef CONFIG_SND_ATMEL_SOC_PDC
> +obj-$(CONFIG_SND_ATMEL_SOC_SSC) +=3D snd-soc-atmel-pcm-pdc.o
> +endif
> +ifdef CONFIG_SND_ATMEL_SOC_DMA
> +obj-$(CONFIG_SND_ATMEL_SOC_SSC) +=3D snd-soc-atmel-pcm-dma.o
> +endif
>  obj-$(CONFIG_SND_ATMEL_SOC_SSC) +=3D snd-soc-atmel_ssc_dai.o
>  obj-$(CONFIG_SND_ATMEL_SOC_I2S) +=3D snd-soc-atmel-i2s.o
>  obj-$(CONFIG_SND_MCHP_SOC_I2S_MCC) +=3D snd-soc-mchp-i2s-mcc.o

I was just exploring similar solution, using $(if X,Y) instead, but your
fix will work just as well.

Reviewed-by: Micha=B3 Miros=B3aw <mirq-linux@rere.qmqm.pl>

Best Regards,
Micha=B3=A0Miros=B3aw

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
