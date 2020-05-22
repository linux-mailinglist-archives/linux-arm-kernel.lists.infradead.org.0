Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EECF1DEE9A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 19:49:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wGoBGG2Ajo4HgIiwr9Bf6F6HnNpTCLUcN0XBKX1tLiU=; b=UFKgVA4EIvMFgP
	CZ7JsimcPjL9rfqlSAzmF9OxMcVGy/6803YOjzZb7Rk7uX1slz05WbCSalZPV3q5X9XE0zEd9Btf9
	FNd7ybn0qlxLrRnYEs8aLYYgCqtKase805BMt7vz1hPfxCanmx6KgXaged4ffP+oRxVK6sNnIo7D+
	i4IteT7uazR65P/Lz+DOTdx8EbTsXXDS/srVlofNrs2WFtfXVJWPHNGCK42cZKj+Z5CY/NmlHlsuZ
	7t9eFhy//iCTo6q5SDYqvRxiOpF8nZOUA8z/q8GRpoMRqi45Ynp7SqS7jpNBjgWCrtmUt4/vR1BDS
	5bqoELcrv76zjn6WxrXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcBn9-0007Ou-AD; Fri, 22 May 2020 17:49:07 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcBmz-0007Mt-KA
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 17:49:00 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 771FB80510;
 Fri, 22 May 2020 19:48:37 +0200 (CEST)
Date: Fri, 22 May 2020 19:48:35 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH 01/21] drm/cma-helper: Rework DRM_GEM_CMA_VMAP_DRIVER_OPS
 macro
Message-ID: <20200522174835.GA1087580@ravnborg.org>
References: <20200522135246.10134-1-tzimmermann@suse.de>
 <20200522135246.10134-2-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200522135246.10134-2-tzimmermann@suse.de>
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=MOBOZvRl c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=kj9zAlcOel0A:10 a=7gkXJVJtAAAA:8 a=KDJZXs7mkFYPK4s90MwA:9
 a=i7WDZxakis8GCl3P:21 a=Cq1OpgOFi_fPnBzB:21 a=CjuIK1q_8ugA:10
 a=E9Po1WZjFZOl8hwRPBS3:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_104858_201287_FCCE1234 
X-CRM114-Status: GOOD (  25.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 paul@crapouillou.net, laurent.pinchart@ideasonboard.com,
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Thomas.

On Fri, May 22, 2020 at 03:52:26PM +0200, Thomas Zimmermann wrote:
> Rename the macro to DRM_GEM_CMA_DRIVER_OPS to align with SHMEM
> helpers.
This part is fine, I like that the naming is somehow consistent.

> An internal version is provided for drivers that override
> the default .dumb_create callback. Adapt drivers to the changes.
I loathe anything named __foo or __FOO. This __ signals to me
that the author was clueless in naming - or some sort.
I know that __ is used in some lib headers - but thats not the case
here.

But I love that we have a variant that takes a create function.
So we do not have to escape from the nice macro.
The macro is another way to tell me as rewiewer that this
drivers uses all the default helpers for this.


So critizising the name I better suggest something that
I personally like better:

DRM_GEM_CMA_DRIVER_OPS_CREATE()

It would look like this:
	/* GEM Operations */
-	DRM_GEM_CMA_VMAP_DRIVER_OPS,
-	.dumb_create            = drm_sun4i_gem_dumb_create,
+	DRM_GEM_CMA_DRIVER_OPS_CREATE(drm_sun4i_gem_dumb_create),



Please fix zte/zx_drm_drv.c which also uses DRM_GEM_CMA_VMAP_DRIVER_OPS.


The naming is a bikeshedding topic that we may not agree on, soo..

With zte fixed the patch is:
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

	Sam


> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---
>  drivers/gpu/drm/drm_gem_cma_helper.c |  2 +-
>  drivers/gpu/drm/sun4i/sun4i_drv.c    |  3 +--
>  drivers/gpu/drm/tidss/tidss_drv.c    |  2 +-
>  drivers/gpu/drm/tiny/hx8357d.c       |  2 +-
>  drivers/gpu/drm/tiny/ili9225.c       |  2 +-
>  drivers/gpu/drm/tiny/ili9341.c       |  2 +-
>  drivers/gpu/drm/tiny/ili9486.c       |  2 +-
>  drivers/gpu/drm/tiny/mi0283qt.c      |  2 +-
>  drivers/gpu/drm/tiny/repaper.c       |  2 +-
>  drivers/gpu/drm/tiny/st7586.c        |  2 +-
>  drivers/gpu/drm/tiny/st7735r.c       |  2 +-
>  include/drm/drm_gem_cma_helper.h     | 24 ++++++++++++++++++++----
>  12 files changed, 31 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_gem_cma_helper.c b/drivers/gpu/drm/drm_gem_cma_helper.c
> index 12e98fb28229d..6fa4d2f2e3987 100644
> --- a/drivers/gpu/drm/drm_gem_cma_helper.c
> +++ b/drivers/gpu/drm/drm_gem_cma_helper.c
> @@ -620,7 +620,7 @@ EXPORT_SYMBOL(drm_cma_gem_create_object_default_funcs);
>   * address set. This address is released when the object is freed.
>   *
>   * This function can be used as the &drm_driver.gem_prime_import_sg_table
> - * callback. The DRM_GEM_CMA_VMAP_DRIVER_OPS() macro provides a shortcut to set
> + * callback. The &DRM_GEM_CMA_DRIVER_OPS macro provides a shortcut to set
>   * the necessary DRM driver operations.
>   *
>   * Returns:
> diff --git a/drivers/gpu/drm/sun4i/sun4i_drv.c b/drivers/gpu/drm/sun4i/sun4i_drv.c
> index 328272ff77d84..012855fd89c24 100644
> --- a/drivers/gpu/drm/sun4i/sun4i_drv.c
> +++ b/drivers/gpu/drm/sun4i/sun4i_drv.c
> @@ -52,8 +52,7 @@ static struct drm_driver sun4i_drv_driver = {
>  	.minor			= 0,
>  
>  	/* GEM Operations */
> -	DRM_GEM_CMA_VMAP_DRIVER_OPS,
> -	.dumb_create		= drm_sun4i_gem_dumb_create,
> +	__DRM_GEM_CMA_DRIVER_OPS(drm_sun4i_gem_dumb_create),
>  };
>  
>  static int sun4i_drv_bind(struct device *dev)
> diff --git a/drivers/gpu/drm/tidss/tidss_drv.c b/drivers/gpu/drm/tidss/tidss_drv.c
> index 99edc66ebdef2..1753cdc74ebda 100644
> --- a/drivers/gpu/drm/tidss/tidss_drv.c
> +++ b/drivers/gpu/drm/tidss/tidss_drv.c
> @@ -112,7 +112,7 @@ static struct drm_driver tidss_driver = {
>  	.driver_features	= DRIVER_GEM | DRIVER_MODESET | DRIVER_ATOMIC,
>  	.fops			= &tidss_fops,
>  	.release		= tidss_release,
> -	DRM_GEM_CMA_VMAP_DRIVER_OPS,
> +	DRM_GEM_CMA_DRIVER_OPS,
>  	.name			= "tidss",
>  	.desc			= "TI Keystone DSS",
>  	.date			= "20180215",
> diff --git a/drivers/gpu/drm/tiny/hx8357d.c b/drivers/gpu/drm/tiny/hx8357d.c
> index b4bc358a3269a..592da71d7ca70 100644
> --- a/drivers/gpu/drm/tiny/hx8357d.c
> +++ b/drivers/gpu/drm/tiny/hx8357d.c
> @@ -196,7 +196,7 @@ DEFINE_DRM_GEM_CMA_FOPS(hx8357d_fops);
>  static struct drm_driver hx8357d_driver = {
>  	.driver_features	= DRIVER_GEM | DRIVER_MODESET | DRIVER_ATOMIC,
>  	.fops			= &hx8357d_fops,
> -	DRM_GEM_CMA_VMAP_DRIVER_OPS,
> +	DRM_GEM_CMA_DRIVER_OPS,
>  	.debugfs_init		= mipi_dbi_debugfs_init,
>  	.name			= "hx8357d",
>  	.desc			= "HX8357D",
> diff --git a/drivers/gpu/drm/tiny/ili9225.c b/drivers/gpu/drm/tiny/ili9225.c
> index d1a5ab6747d5c..368ff6c8a1efb 100644
> --- a/drivers/gpu/drm/tiny/ili9225.c
> +++ b/drivers/gpu/drm/tiny/ili9225.c
> @@ -346,7 +346,7 @@ DEFINE_DRM_GEM_CMA_FOPS(ili9225_fops);
>  static struct drm_driver ili9225_driver = {
>  	.driver_features	= DRIVER_GEM | DRIVER_MODESET | DRIVER_ATOMIC,
>  	.fops			= &ili9225_fops,
> -	DRM_GEM_CMA_VMAP_DRIVER_OPS,
> +	DRM_GEM_CMA_DRIVER_OPS,
>  	.name			= "ili9225",
>  	.desc			= "Ilitek ILI9225",
>  	.date			= "20171106",
> diff --git a/drivers/gpu/drm/tiny/ili9341.c b/drivers/gpu/drm/tiny/ili9341.c
> index bb819f45a5d3b..e1b9043ef7a0a 100644
> --- a/drivers/gpu/drm/tiny/ili9341.c
> +++ b/drivers/gpu/drm/tiny/ili9341.c
> @@ -152,7 +152,7 @@ DEFINE_DRM_GEM_CMA_FOPS(ili9341_fops);
>  static struct drm_driver ili9341_driver = {
>  	.driver_features	= DRIVER_GEM | DRIVER_MODESET | DRIVER_ATOMIC,
>  	.fops			= &ili9341_fops,
> -	DRM_GEM_CMA_VMAP_DRIVER_OPS,
> +	DRM_GEM_CMA_DRIVER_OPS,
>  	.debugfs_init		= mipi_dbi_debugfs_init,
>  	.name			= "ili9341",
>  	.desc			= "Ilitek ILI9341",
> diff --git a/drivers/gpu/drm/tiny/ili9486.c b/drivers/gpu/drm/tiny/ili9486.c
> index 2702ea557d297..90a17f40fdf0c 100644
> --- a/drivers/gpu/drm/tiny/ili9486.c
> +++ b/drivers/gpu/drm/tiny/ili9486.c
> @@ -165,7 +165,7 @@ DEFINE_DRM_GEM_CMA_FOPS(ili9486_fops);
>  static struct drm_driver ili9486_driver = {
>  	.driver_features	= DRIVER_GEM | DRIVER_MODESET | DRIVER_ATOMIC,
>  	.fops			= &ili9486_fops,
> -	DRM_GEM_CMA_VMAP_DRIVER_OPS,
> +	DRM_GEM_CMA_DRIVER_OPS,
>  	.debugfs_init		= mipi_dbi_debugfs_init,
>  	.name			= "ili9486",
>  	.desc			= "Ilitek ILI9486",
> diff --git a/drivers/gpu/drm/tiny/mi0283qt.c b/drivers/gpu/drm/tiny/mi0283qt.c
> index 08ac549ab0f7f..6624c2098fba2 100644
> --- a/drivers/gpu/drm/tiny/mi0283qt.c
> +++ b/drivers/gpu/drm/tiny/mi0283qt.c
> @@ -156,7 +156,7 @@ DEFINE_DRM_GEM_CMA_FOPS(mi0283qt_fops);
>  static struct drm_driver mi0283qt_driver = {
>  	.driver_features	= DRIVER_GEM | DRIVER_MODESET | DRIVER_ATOMIC,
>  	.fops			= &mi0283qt_fops,
> -	DRM_GEM_CMA_VMAP_DRIVER_OPS,
> +	DRM_GEM_CMA_DRIVER_OPS,
>  	.debugfs_init		= mipi_dbi_debugfs_init,
>  	.name			= "mi0283qt",
>  	.desc			= "Multi-Inno MI0283QT",
> diff --git a/drivers/gpu/drm/tiny/repaper.c b/drivers/gpu/drm/tiny/repaper.c
> index 1c0e7169545b4..877dcece25828 100644
> --- a/drivers/gpu/drm/tiny/repaper.c
> +++ b/drivers/gpu/drm/tiny/repaper.c
> @@ -946,7 +946,7 @@ DEFINE_DRM_GEM_CMA_FOPS(repaper_fops);
>  static struct drm_driver repaper_driver = {
>  	.driver_features	= DRIVER_GEM | DRIVER_MODESET | DRIVER_ATOMIC,
>  	.fops			= &repaper_fops,
> -	DRM_GEM_CMA_VMAP_DRIVER_OPS,
> +	DRM_GEM_CMA_DRIVER_OPS,
>  	.name			= "repaper",
>  	.desc			= "Pervasive Displays RePaper e-ink panels",
>  	.date			= "20170405",
> diff --git a/drivers/gpu/drm/tiny/st7586.c b/drivers/gpu/drm/tiny/st7586.c
> index 2a1fae422f7a2..ec84bdc51f60d 100644
> --- a/drivers/gpu/drm/tiny/st7586.c
> +++ b/drivers/gpu/drm/tiny/st7586.c
> @@ -285,7 +285,7 @@ DEFINE_DRM_GEM_CMA_FOPS(st7586_fops);
>  static struct drm_driver st7586_driver = {
>  	.driver_features	= DRIVER_GEM | DRIVER_MODESET | DRIVER_ATOMIC,
>  	.fops			= &st7586_fops,
> -	DRM_GEM_CMA_VMAP_DRIVER_OPS,
> +	DRM_GEM_CMA_DRIVER_OPS,
>  	.debugfs_init		= mipi_dbi_debugfs_init,
>  	.name			= "st7586",
>  	.desc			= "Sitronix ST7586",
> diff --git a/drivers/gpu/drm/tiny/st7735r.c b/drivers/gpu/drm/tiny/st7735r.c
> index 0af1b15efdf8a..cfd4933f3b30c 100644
> --- a/drivers/gpu/drm/tiny/st7735r.c
> +++ b/drivers/gpu/drm/tiny/st7735r.c
> @@ -157,7 +157,7 @@ DEFINE_DRM_GEM_CMA_FOPS(st7735r_fops);
>  static struct drm_driver st7735r_driver = {
>  	.driver_features	= DRIVER_GEM | DRIVER_MODESET | DRIVER_ATOMIC,
>  	.fops			= &st7735r_fops,
> -	DRM_GEM_CMA_VMAP_DRIVER_OPS,
> +	DRM_GEM_CMA_DRIVER_OPS,
>  	.debugfs_init		= mipi_dbi_debugfs_init,
>  	.name			= "st7735r",
>  	.desc			= "Sitronix ST7735R",
> diff --git a/include/drm/drm_gem_cma_helper.h b/include/drm/drm_gem_cma_helper.h
> index 947ac95eb24a9..917d42603db06 100644
> --- a/include/drm/drm_gem_cma_helper.h
> +++ b/include/drm/drm_gem_cma_helper.h
> @@ -110,21 +110,37 @@ struct drm_gem_object *
>  drm_cma_gem_create_object_default_funcs(struct drm_device *dev, size_t size);
>  
>  /**
> - * DRM_GEM_CMA_VMAP_DRIVER_OPS - CMA GEM driver operations ensuring a virtual
> - *                               address on the buffer
> + * __DRM_GEM_CMA_DRIVER_OPS - CMA GEM driver operations ensuring a
> + *                            virtual address on the buffer
> + * @__dumb_create: callback function for .dumb_create
>   *
>   * This macro provides a shortcut for setting the default GEM operations in the
>   * &drm_driver structure for drivers that need the virtual address also on
>   * imported buffers.
> + *
> + * This macro is a variant of DRM_GEM_CMA_DRIVER_OPS for drivers that
> + * override the default implementation of .dumb_create. Use
> + * DRM_GEM_CMA_DRIVER_OPS if possible.
>   */
> -#define DRM_GEM_CMA_VMAP_DRIVER_OPS \
> +#define __DRM_GEM_CMA_DRIVER_OPS(__dumb_create) \
>  	.gem_create_object	= drm_cma_gem_create_object_default_funcs, \
> -	.dumb_create		= drm_gem_cma_dumb_create, \
> +	.dumb_create		= (__dumb_create), \
>  	.prime_handle_to_fd	= drm_gem_prime_handle_to_fd, \
>  	.prime_fd_to_handle	= drm_gem_prime_fd_to_handle, \
>  	.gem_prime_import_sg_table = drm_gem_cma_prime_import_sg_table_vmap, \
>  	.gem_prime_mmap		= drm_gem_prime_mmap
>  
> +/**
> + * DRM_GEM_CMA_DRIVER_OPS - CMA GEM driver operations ensuring a virtual
> + *                          address on the buffer
> + *
> + * This macro provides a shortcut for setting the default GEM operations in the
> + * &drm_driver structure for drivers that need the virtual address also on
> + * imported buffers.
> + */
> +#define DRM_GEM_CMA_DRIVER_OPS \
> +	__DRM_GEM_CMA_DRIVER_OPS(drm_gem_cma_dumb_create)
> +
>  struct drm_gem_object *
>  drm_gem_cma_prime_import_sg_table_vmap(struct drm_device *drm,
>  				       struct dma_buf_attachment *attach,
> -- 
> 2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
