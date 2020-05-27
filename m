Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B43D1E340B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 02:29:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:To:
	Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZBkrlLvXvMXpBfjODubpY/o6cbzOX6PB1GcW8631DGs=; b=DW16a/oFCLJ3DrAFFaLcKxefK
	CPP/GG8vwQ8D/nGkOkFdSCWNOSM+PFBoOX3EQt5OMXe5QKwP6wCet47KLFg0915+XbX+eWwhoawGK
	kaPGdaQ2CH/Bo0ROymj7L5vF/GpyXFXOUOQ6ZRVs5rFmTBzS8R8dTiJ+UZ9sgpUPy6v0ezbndjhcj
	hp7f6tgbjT4n/Eerm1vJS72nAU6r09h24+F4nTmCtGF1M9CWMNLr70ODDPCjj615yv7Bn7TPJAPu1
	CCQnkDwAo9Htox3vb3V/JFSxUQvw3o5Vl0/P8ITeJ2mLoci4OqTQGJhmDVRGOHPxB8vCDYi6ucGwr
	yAPMtHJxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdjwQ-0006Cy-Uk; Wed, 27 May 2020 00:29:06 +0000
Received: from outils.crapouillou.net ([89.234.176.41] helo=crapouillou.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdjwG-0006CN-7I
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 00:28:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
 s=mail; t=1590539329; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=8eNQy+HfaYgDqYPYkxNUOBbsWhF12apm1sawTSRbUxM=;
 b=ph4Oq3FAxEZc30cpk4hReFsdFhqADMQEK74TqMUgoTpR8GLEmCzAm+554fKqssFp5Hgy3a
 KAnTbBiLswq+G2wB2Q9Fo1F98CE+Ad5C1tAFCZJ6V5XjuWp94dkxvgbz1mkv09J6Ed/82J
 iinOdsAP5CSOEgoKN5MtiqCiEy6N7sU=
Date: Wed, 27 May 2020 02:28:31 +0200
From: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH 09/21] drm/ingenic: Use GEM CMA object functions
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-Id: <JZRYAQ.1QIOMTT6TPVS1@crapouillou.net>
In-Reply-To: <20200522135246.10134-10-tzimmermann@suse.de>
References: <20200522135246.10134-1-tzimmermann@suse.de>
 <20200522135246.10134-10-tzimmermann@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_172856_455284_099B5531 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alexandre.belloni@bootlin.com, linux-aspeed@lists.ozlabs.org,
 narmstrong@baylibre.com, airlied@linux.ie, linus.walleij@linaro.org,
 liviu.dudau@arm.com, stefan@agner.ch, philippe.cornu@st.com,
 laurent.pinchart@ideasonboard.com, benjamin.gaignard@linaro.org,
 mihail.atanassov@arm.com, sam@ravnborg.org, alexandre.torgue@st.com,
 marex@denx.de, festevam@gmail.com, abrodkin@synopsys.com,
 ludovic.desroches@microchip.com, xinliang.liu@linaro.org,
 kong.kongxinwei@hisilicon.com, tomi.valkeinen@ti.com, james.qian.wang@arm.com,
 joel@jms.id.au, linux-imx@nxp.com, p.zabel@pengutronix.de,
 puck.chen@hisilicon.com, s.hauer@pengutronix.de, alison.wang@nxp.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, john.stultz@linaro.org,
 jsarha@ti.com, wens@csie.org, vincent.abriou@st.com, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, mcoquelin.stm32@gmail.com,
 noralf@tronnes.org, bbrezillon@kernel.org, andrew@aj.id.au,
 dri-devel@lists.freedesktop.org, yannick.fertre@st.com,
 kieran.bingham+renesas@ideasonboard.com, daniel@ffwll.ch, khilman@baylibre.com,
 zourongrong@gmail.com, shawnguo@kernel.org, brian.starkey@arm.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Thomas,

Le ven. 22 mai 2020 =E0 15:52, Thomas Zimmermann <tzimmermann@suse.de> a =

=E9crit :
> The ingenic driver uses the default implementation for CMA functions. =

> The
> DRM_GEM_CMA_DRIVER_OPS macro now sets these defaults in struct =

> drm_driver.
> All remaining operations are provided by CMA GEM object functions.
> =

> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>

Tested-by: Paul Cercueil <paul@crapouillou.net>
Reviewed-by: Paul Cercueil <paul@crapouillou.net>

Cheers,
-Paul

> ---
>  drivers/gpu/drm/ingenic/ingenic-drm.c | 13 +------------
>  1 file changed, 1 insertion(+), 12 deletions(-)
> =

> diff --git a/drivers/gpu/drm/ingenic/ingenic-drm.c =

> b/drivers/gpu/drm/ingenic/ingenic-drm.c
> index eff57a1f70fb0..1c1cee367b752 100644
> --- a/drivers/gpu/drm/ingenic/ingenic-drm.c
> +++ b/drivers/gpu/drm/ingenic/ingenic-drm.c
> @@ -519,18 +519,7 @@ static struct drm_driver ingenic_drm_driver_data =

> =3D {
>  	.patchlevel		=3D 0,
> =

>  	.fops			=3D &ingenic_drm_fops,
> -
> -	.dumb_create		=3D drm_gem_cma_dumb_create,
> -	.gem_free_object_unlocked =3D drm_gem_cma_free_object,
> -	.gem_vm_ops		=3D &drm_gem_cma_vm_ops,
> -
> -	.prime_handle_to_fd	=3D drm_gem_prime_handle_to_fd,
> -	.prime_fd_to_handle	=3D drm_gem_prime_fd_to_handle,
> -	.gem_prime_get_sg_table	=3D drm_gem_cma_prime_get_sg_table,
> -	.gem_prime_import_sg_table =3D drm_gem_cma_prime_import_sg_table,
> -	.gem_prime_vmap		=3D drm_gem_cma_prime_vmap,
> -	.gem_prime_vunmap	=3D drm_gem_cma_prime_vunmap,
> -	.gem_prime_mmap		=3D drm_gem_cma_prime_mmap,
> +	DRM_GEM_CMA_DRIVER_OPS,
> =

>  	.irq_handler		=3D ingenic_drm_irq_handler,
>  };
> --
> 2.26.2
> =




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
