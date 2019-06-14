Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A604F464EA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 18:48:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0C6FoCCw/N5c5sUByTNjwoAtb//jvhc1tZmYyLd9yfA=; b=LHx5ELPXWVY4AC
	uGC+KLQeICWk3RWTtbyxyTMy57SwCu3SE/+WnEB64UQWeyUnNDzOik5X/3Ck+o7Rp+dbd5D4TuoVn
	lk79GIm13cxEjiJpHZvHu/tjujjruOP8tqk64iRrGGSP2vfCD3IG1W25lsuQeplsJQKGkvlsIYTuy
	LLmcHGtIEfFMl7HZrboxGrS/QOQG79UyafNoWKZZICFqCE6DBQNdqz/6O91KmJLoS9y/vanUPURSx
	laFqDmdhR05MEtdcIDLbrwyJZ/9DadvOg4iBGxh+fZklLVXiTAiglkandJPuizoAxu24mdLsD8bIJ
	5h04Is08Pkrc8rqjfbDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbpN9-0005WK-MW; Fri, 14 Jun 2019 16:48:15 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbpKx-0003CL-MF
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 16:46:03 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 09:45:57 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 14 Jun 2019 09:45:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 14 Jun 2019 19:45:49 +0300
Date: Fri, 14 Jun 2019 19:45:49 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [Intel-gfx] [PATCH 03/16] drm/i915: stop using drm_pci_alloc
Message-ID: <20190614164549.GD5942@intel.com>
References: <20190614134726.3827-1-hch@lst.de>
 <20190614134726.3827-4-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614134726.3827-4-hch@lst.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_094559_784336_513F698A 
X-CRM114-Status: GOOD (  22.23  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 linux-mm@kvack.org, devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 linux-rdma@vger.kernel.org, David Airlie <airlied@linux.ie>,
 linux-media@vger.kernel.org, Intel Linux Wireless <linuxwifi@intel.com>,
 intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Sean Paul <sean@poorly.run>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, H Hartley Sweeten <hsweeten@visionengravers.com>,
 iommu@lists.linux-foundation.org, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 03:47:13PM +0200, Christoph Hellwig wrote:
> Remove usage of the legacy drm PCI DMA wrappers, and with that the
> incorrect usage cocktail of __GFP_COMP, virt_to_page on DMA allocation
> and SetPageReserved.
> =

> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  drivers/gpu/drm/i915/i915_gem.c        | 30 +++++++++++++-------------
>  drivers/gpu/drm/i915/i915_gem_object.h |  3 ++-
>  drivers/gpu/drm/i915/intel_display.c   |  2 +-
>  3 files changed, 18 insertions(+), 17 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_=
gem.c
> index ad01c92aaf74..8f2053c91aff 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -228,7 +228,6 @@ i915_gem_get_aperture_ioctl(struct drm_device *dev, v=
oid *data,
>  static int i915_gem_object_get_pages_phys(struct drm_i915_gem_object *ob=
j)
>  {
>  	struct address_space *mapping =3D obj->base.filp->f_mapping;
> -	drm_dma_handle_t *phys;
>  	struct sg_table *st;
>  	struct scatterlist *sg;
>  	char *vaddr;
> @@ -242,13 +241,13 @@ static int i915_gem_object_get_pages_phys(struct dr=
m_i915_gem_object *obj)
>  	 * to handle all possible callers, and given typical object sizes,
>  	 * the alignment of the buddy allocation will naturally match.
>  	 */
> -	phys =3D drm_pci_alloc(obj->base.dev,
> -			     roundup_pow_of_two(obj->base.size),
> -			     roundup_pow_of_two(obj->base.size));
> -	if (!phys)
> +	obj->phys_vaddr =3D dma_alloc_coherent(&obj->base.dev->pdev->dev,
> +			roundup_pow_of_two(obj->base.size),
> +			&obj->phys_handle, GFP_KERNEL);
> +	if (!obj->phys_vaddr)
>  		return -ENOMEM;
>  =

> -	vaddr =3D phys->vaddr;
> +	vaddr =3D obj->phys_vaddr;
>  	for (i =3D 0; i < obj->base.size / PAGE_SIZE; i++) {
>  		struct page *page;
>  		char *src;
> @@ -286,18 +285,17 @@ static int i915_gem_object_get_pages_phys(struct dr=
m_i915_gem_object *obj)
>  	sg->offset =3D 0;
>  	sg->length =3D obj->base.size;
>  =

> -	sg_dma_address(sg) =3D phys->busaddr;
> +	sg_dma_address(sg) =3D obj->phys_handle;
>  	sg_dma_len(sg) =3D obj->base.size;
>  =

> -	obj->phys_handle =3D phys;
> -
>  	__i915_gem_object_set_pages(obj, st, sg->length);
>  =

>  	return 0;
>  =

>  err_phys:
> -	drm_pci_free(obj->base.dev, phys);
> -
> +	dma_free_coherent(&obj->base.dev->pdev->dev,
> +			roundup_pow_of_two(obj->base.size), obj->phys_vaddr,
> +			obj->phys_handle);

Need to undo the damage to obj->phys_vaddr here since
i915_gem_pwrite_ioctl() will now use that to determine if it's
dealing with a phys obj.

>  	return err;
>  }
>  =

> @@ -335,7 +333,7 @@ i915_gem_object_put_pages_phys(struct drm_i915_gem_ob=
ject *obj,
>  =

>  	if (obj->mm.dirty) {
>  		struct address_space *mapping =3D obj->base.filp->f_mapping;
> -		char *vaddr =3D obj->phys_handle->vaddr;
> +		char *vaddr =3D obj->phys_vaddr;
>  		int i;
>  =

>  		for (i =3D 0; i < obj->base.size / PAGE_SIZE; i++) {
> @@ -363,7 +361,9 @@ i915_gem_object_put_pages_phys(struct drm_i915_gem_ob=
ject *obj,
>  	sg_free_table(pages);
>  	kfree(pages);
>  =

> -	drm_pci_free(obj->base.dev, obj->phys_handle);
> +	dma_free_coherent(&obj->base.dev->pdev->dev,
> +			roundup_pow_of_two(obj->base.size), obj->phys_vaddr,
> +			obj->phys_handle);

This one is fine I think since the object remains a phys obj once
turned into one. At least the current code isn't clearing
phys_handle here. But my memory is a bit hazy on the details. Chris?

Also maybe s/phys_handle/phys_busaddr/ all over?

>  }
>  =

>  static void
> @@ -603,7 +603,7 @@ i915_gem_phys_pwrite(struct drm_i915_gem_object *obj,
>  		     struct drm_i915_gem_pwrite *args,
>  		     struct drm_file *file)
>  {
> -	void *vaddr =3D obj->phys_handle->vaddr + args->offset;
> +	void *vaddr =3D obj->phys_vaddr + args->offset;
>  	char __user *user_data =3D u64_to_user_ptr(args->data_ptr);
>  =

>  	/* We manually control the domain here and pretend that it
> @@ -1431,7 +1431,7 @@ i915_gem_pwrite_ioctl(struct drm_device *dev, void =
*data,
>  		ret =3D i915_gem_gtt_pwrite_fast(obj, args);
>  =

>  	if (ret =3D=3D -EFAULT || ret =3D=3D -ENOSPC) {
> -		if (obj->phys_handle)
> +		if (obj->phys_vaddr)
>  			ret =3D i915_gem_phys_pwrite(obj, args, file);
>  		else
>  			ret =3D i915_gem_shmem_pwrite(obj, args);
> diff --git a/drivers/gpu/drm/i915/i915_gem_object.h b/drivers/gpu/drm/i91=
5/i915_gem_object.h
> index ca93a40c0c87..14bd2d61d0f6 100644
> --- a/drivers/gpu/drm/i915/i915_gem_object.h
> +++ b/drivers/gpu/drm/i915/i915_gem_object.h
> @@ -290,7 +290,8 @@ struct drm_i915_gem_object {
>  	};
>  =

>  	/** for phys allocated objects */
> -	struct drm_dma_handle *phys_handle;
> +	dma_addr_t phys_handle;
> +	void *phys_vaddr;
>  =

>  	struct reservation_object __builtin_resv;
>  };
> diff --git a/drivers/gpu/drm/i915/intel_display.c b/drivers/gpu/drm/i915/=
intel_display.c
> index 5098228f1302..4f8b368ac4e2 100644
> --- a/drivers/gpu/drm/i915/intel_display.c
> +++ b/drivers/gpu/drm/i915/intel_display.c
> @@ -10066,7 +10066,7 @@ static u32 intel_cursor_base(const struct intel_p=
lane_state *plane_state)
>  	u32 base;
>  =

>  	if (INTEL_INFO(dev_priv)->display.cursor_needs_physical)
> -		base =3D obj->phys_handle->busaddr;
> +		base =3D obj->phys_handle;
>  	else
>  		base =3D intel_plane_ggtt_offset(plane_state);
>  =

> -- =

> 2.20.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
