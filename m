Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C91711EFB1C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 16:24:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6KGm+2FIOIDpb3a9T3Hn4rPZCq03DJjI2fHtTLZZ0og=; b=UNKbNcoiy4VHwB
	w2Jb2QwoNREEJRUsOw0Lr84fGUn5gDI5meEmq1tJgtvZpSfukRCL91o881lbHoeMUN6O/O2L7nvFU
	W/xW5/L7ngnEbdVt5DE4YqL2VdH/bfElvNyAYjkR5RMhX6Ge+iO910+7CtnTweu6aIxNyaSUBon2m
	tzV+MmsB7/wlSbQAd77GxZef1dZrvsueZJIL+wr3j1rlp/3o9cseN9/6Sgma9E7RooksQDBL9k+bz
	FatIq4e8oFZldXszplhmnC6LSF4Giwq0IyPG5iLjOGAnZyegkUPnSelGjgfCyqdLyXf94PuL31sA9
	1SSFsmS5aEwbFK8mwPcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhDGh-0006ds-Qk; Fri, 05 Jun 2020 14:24:23 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhDGZ-0006bj-DP
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 14:24:17 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 5255A80511;
 Fri,  5 Jun 2020 16:23:53 +0200 (CEST)
Date: Fri, 5 Jun 2020 16:23:51 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH v3 01/43] drm/cma-helper: Rename symbols from
 drm_cma_gem_ to drm_gem_cma_
Message-ID: <20200605142351.GA204352@ravnborg.org>
References: <20200605073247.4057-1-tzimmermann@suse.de>
 <20200605073247.4057-2-tzimmermann@suse.de>
 <20200605084026.GB11426@pendragon.ideasonboard.com>
 <8e2e8394-4110-9fb6-e99e-0495cf9f7218@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8e2e8394-4110-9fb6-e99e-0495cf9f7218@suse.de>
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=G88y7es5 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=8nJEP1OIZ-IA:10 a=zqeJn9o-U7iyyRRzNl8A:9 a=wPNLvfGTeEIA:10
 a=pHzHmUro8NiASowvMSCR:22 a=nt3jZW36AmriUCFCBwmW:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_072415_825504_844CD2D9 
X-CRM114-Status: GOOD (  22.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
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
Cc: alexandre.belloni@bootlin.com, linux-aspeed@lists.ozlabs.org,
 narmstrong@baylibre.com, airlied@linux.ie, linus.walleij@linaro.org,
 liviu.dudau@arm.com, stefan@agner.ch, philippe.cornu@st.com,
 paul@crapouillou.net, Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 benjamin.gaignard@linaro.org, mihail.atanassov@arm.com, festevam@gmail.com,
 alexandre.torgue@st.com, marex@denx.de, khilman@baylibre.com,
 abrodkin@synopsys.com, ludovic.desroches@microchip.com,
 xinliang.liu@linaro.org, kong.kongxinwei@hisilicon.com, tomi.valkeinen@ti.com,
 james.qian.wang@arm.com, joel@jms.id.au, linux-imx@nxp.com,
 p.zabel@pengutronix.de, puck.chen@hisilicon.com, s.hauer@pengutronix.de,
 alison.wang@nxp.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 john.stultz@linaro.org, jsarha@ti.com, wens@csie.org, vincent.abriou@st.com,
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org,
 mcoquelin.stm32@gmail.com, noralf@tronnes.org, bbrezillon@kernel.org,
 andrew@aj.id.au, dri-devel@lists.freedesktop.org, yannick.fertre@st.com,
 kieran.bingham+renesas@ideasonboard.com, daniel@ffwll.ch,
 zourongrong@gmail.com, shawnguo@kernel.org, brian.starkey@arm.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 05, 2020 at 04:15:46PM +0200, Thomas Zimmermann wrote:
> Hi
> =

> Am 05.06.20 um 10:40 schrieb Laurent Pinchart:
> > Hi Thomas,
> > =

> > Thank you for the patch.
> > =

> > On Fri, Jun 05, 2020 at 09:32:05AM +0200, Thomas Zimmermann wrote:
> >> This fixes the naming of several symbols within CMA helpers. No functi=
onal
> >> changes are made.
> >>
> >> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> > =

> > Thank you for the patch.
> > =

> > Speaking of naming, I wish we could rename drm_gem_cma_* to something
> > else, as those helpers don't use CMA directly (and may not use it at
> > all), but I think that would be too much intrusive changes for too
> > little gain :-(
> =

> I agree. Calling them GEM DMA helpers would be more precise. But I don't
> really see an easy solution without either a big patch that touches
> everything, or a lot of small patches with ugly intermediate states.
> =

> IMHO the best option would probably be an additional header file
> drm_gem_dma_helper.h that defines a dma name for each cma name. Drivers
> could then be converted individually with a single per-driver patch.

From todo.rst:

"
Rename CMA helpers to DMA helpers
---------------------------------

CMA (standing for contiguous memory allocator) is really a bit an accident =
of
what these were used for first, a much better name would be DMA helpers. In=
 the
text these should even be called coherent DMA memory helpers (so maybe CDM,=
 but
no one knows what that means) since underneath they just use dma_alloc_cohe=
rent.

Contact: Laurent Pinchart, Daniel Vetter

Level: Intermediate (mostly because it is a huge tasks without good partial
milestones, not technically itself that challenging)
"

The same?

	Sam

> =

> Best regards
> Thomas
> =

> > =

> >> ---
> >>  drivers/gpu/drm/aspeed/aspeed_gfx_drv.c |  2 +-
> >>  drivers/gpu/drm/drm_gem_cma_helper.c    | 10 +++++-----
> >>  include/drm/drm_gem_cma_helper.h        |  4 ++--
> >>  3 files changed, 8 insertions(+), 8 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c b/drivers/gpu/drm=
/aspeed/aspeed_gfx_drv.c
> >> index 6b27242b9ee3c..5e7ea0459d018 100644
> >> --- a/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c
> >> +++ b/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c
> >> @@ -188,7 +188,7 @@ DEFINE_DRM_GEM_CMA_FOPS(fops);
> >>  =

> >>  static struct drm_driver aspeed_gfx_driver =3D {
> >>  	.driver_features        =3D DRIVER_GEM | DRIVER_MODESET | DRIVER_ATO=
MIC,
> >> -	.gem_create_object	=3D drm_cma_gem_create_object_default_funcs,
> >> +	.gem_create_object	=3D drm_gem_cma_create_object_default_funcs,
> >>  	.dumb_create		=3D drm_gem_cma_dumb_create,
> >>  	.prime_handle_to_fd	=3D drm_gem_prime_handle_to_fd,
> >>  	.prime_fd_to_handle	=3D drm_gem_prime_fd_to_handle,
> >> diff --git a/drivers/gpu/drm/drm_gem_cma_helper.c b/drivers/gpu/drm/dr=
m_gem_cma_helper.c
> >> index b3db3ca7bd7a7..842e2fa332354 100644
> >> --- a/drivers/gpu/drm/drm_gem_cma_helper.c
> >> +++ b/drivers/gpu/drm/drm_gem_cma_helper.c
> >> @@ -572,7 +572,7 @@ void drm_gem_cma_prime_vunmap(struct drm_gem_objec=
t *obj, void *vaddr)
> >>  }
> >>  EXPORT_SYMBOL_GPL(drm_gem_cma_prime_vunmap);
> >>  =

> >> -static const struct drm_gem_object_funcs drm_cma_gem_default_funcs =
=3D {
> >> +static const struct drm_gem_object_funcs drm_gem_cma_default_funcs =
=3D {
> >>  	.free =3D drm_gem_cma_free_object,
> >>  	.print_info =3D drm_gem_cma_print_info,
> >>  	.get_sg_table =3D drm_gem_cma_prime_get_sg_table,
> >> @@ -581,7 +581,7 @@ static const struct drm_gem_object_funcs drm_cma_g=
em_default_funcs =3D {
> >>  };
> >>  =

> >>  /**
> >> - * drm_cma_gem_create_object_default_funcs - Create a CMA GEM object =
with a
> >> + * drm_gem_cma_create_object_default_funcs - Create a CMA GEM object =
with a
> >>   *                                           default function table
> >>   * @dev: DRM device
> >>   * @size: Size of the object to allocate
> >> @@ -593,7 +593,7 @@ static const struct drm_gem_object_funcs drm_cma_g=
em_default_funcs =3D {
> >>   * A pointer to a allocated GEM object or an error pointer on failure.
> >>   */
> >>  struct drm_gem_object *
> >> -drm_cma_gem_create_object_default_funcs(struct drm_device *dev, size_=
t size)
> >> +drm_gem_cma_create_object_default_funcs(struct drm_device *dev, size_=
t size)
> >>  {
> >>  	struct drm_gem_cma_object *cma_obj;
> >>  =

> >> @@ -601,11 +601,11 @@ drm_cma_gem_create_object_default_funcs(struct d=
rm_device *dev, size_t size)
> >>  	if (!cma_obj)
> >>  		return NULL;
> >>  =

> >> -	cma_obj->base.funcs =3D &drm_cma_gem_default_funcs;
> >> +	cma_obj->base.funcs =3D &drm_gem_cma_default_funcs;
> >>  =

> >>  	return &cma_obj->base;
> >>  }
> >> -EXPORT_SYMBOL(drm_cma_gem_create_object_default_funcs);
> >> +EXPORT_SYMBOL(drm_gem_cma_create_object_default_funcs);
> >>  =

> >>  /**
> >>   * drm_gem_cma_prime_import_sg_table_vmap - PRIME import another driv=
er's
> >> diff --git a/include/drm/drm_gem_cma_helper.h b/include/drm/drm_gem_cm=
a_helper.h
> >> index 947ac95eb24a9..64b7e9d42129a 100644
> >> --- a/include/drm/drm_gem_cma_helper.h
> >> +++ b/include/drm/drm_gem_cma_helper.h
> >> @@ -107,7 +107,7 @@ void *drm_gem_cma_prime_vmap(struct drm_gem_object=
 *obj);
> >>  void drm_gem_cma_prime_vunmap(struct drm_gem_object *obj, void *vaddr=
);
> >>  =

> >>  struct drm_gem_object *
> >> -drm_cma_gem_create_object_default_funcs(struct drm_device *dev, size_=
t size);
> >> +drm_gem_cma_create_object_default_funcs(struct drm_device *dev, size_=
t size);
> >>  =

> >>  /**
> >>   * DRM_GEM_CMA_VMAP_DRIVER_OPS - CMA GEM driver operations ensuring a=
 virtual
> >> @@ -118,7 +118,7 @@ drm_cma_gem_create_object_default_funcs(struct drm=
_device *dev, size_t size);
> >>   * imported buffers.
> >>   */
> >>  #define DRM_GEM_CMA_VMAP_DRIVER_OPS \
> >> -	.gem_create_object	=3D drm_cma_gem_create_object_default_funcs, \
> >> +	.gem_create_object	=3D drm_gem_cma_create_object_default_funcs, \
> >>  	.dumb_create		=3D drm_gem_cma_dumb_create, \
> >>  	.prime_handle_to_fd	=3D drm_gem_prime_handle_to_fd, \
> >>  	.prime_fd_to_handle	=3D drm_gem_prime_fd_to_handle, \
> > =

> =

> -- =

> Thomas Zimmermann
> Graphics Driver Developer
> SUSE Software Solutions Germany GmbH
> Maxfeldstr. 5, 90409 N=FCrnberg, Germany
> (HRB 36809, AG N=FCrnberg)
> Gesch=E4ftsf=FChrer: Felix Imend=F6rffer
> =





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
