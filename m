Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DFBAE02B2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 13:19:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MJg8Cz5TVDOwObPcSK1XZE3B+DRn6q0fk1ikcbOm5VU=; b=CV65dbyIzvxCC1
	dVTvnqWfOIWa2ABZtWpJChWj8OwMjRlMsTLEdpF2ZGF8mmTa/HkVxz4DoVZ6tqVK2q6Z/R53p6eKy
	YuOwvuiWtKklB4CRBpFss3oFTNoz6WSm1AcMkRDaNJQL3GJMP3UMCromIuIWzyNR06QcCs/kOkdcV
	LL6ffwa4EhFfX4LNRAxy/Qkn9R20l2of01BTqrvM3nfcM2UBHZU93WxzDFhcOCLyPgYiUbRO1YEr6
	jw8nA3TsdNUVFvEbl2OXqlKvuPSv/6bSx1X0kRL8//O10A8Iyl3y5Z8GkvWSdb5sJD45xjSoMGeog
	FrECC4QnykmJp5MOBSSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMsC4-0000fj-HB; Tue, 22 Oct 2019 11:19:16 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMsBm-0000cj-PR; Tue, 22 Oct 2019 11:19:02 +0000
Received: from pendragon.ideasonboard.com (143.121.2.93.rev.sfr.net
 [93.2.121.143])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 3AB65A2C;
 Tue, 22 Oct 2019 13:18:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1571743134;
 bh=oS7CmPV8UD0nLLejLW9+oTb/3yWIxQqsikap2UyJtwY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rzTrzyqEEhFKAKpH0TMnAV+xM4eltHUNpUsSsNkPiezxqQMASXUga56G7X0sGmOsF
 TCF6T+e/AcItSRr45a3fWVkAyT8EcBY+5GpFmCsNH+laQ+6kFuaeXuugYO3iggbHw7
 gbL3fP6hSNj5PGzTr3t01Z8CCR/AcObIKfblXsG0=
Date: Tue, 22 Oct 2019 14:18:49 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 3/6] drm/cma-helper: Use the dma_*_attr API variant
Message-ID: <20191022111849.GF4756@pendragon.ideasonboard.com>
References: <20191021214550.1461-1-robh@kernel.org>
 <20191021214550.1461-4-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021214550.1461-4-robh@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_041859_117468_E32CC446 
X-CRM114-Status: GOOD (  16.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Liviu Dudau <liviu.dudau@arm.com>, dri-devel@lists.freedesktop.org,
 Sandy Huang <hjc@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Yannick Fertre <yannick.fertre@st.com>, Kevin Hilman <khilman@baylibre.com>,
 Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Xinliang Liu <z.liuxinliang@hisilicon.com>, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>,
 Noralf =?utf-8?Q?Tr=C3=B8nnes?= <noralf@tronnes.org>,
 "James \(Qian\) Wang" <james.qian.wang@arm.com>, CK Hu <ck.hu@mediatek.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Chen Feng <puck.chen@hisilicon.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org,
 Philippe Cornu <philippe.cornu@st.com>, Vincent Abriou <vincent.abriou@st.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Rongrong Zou <zourongrong@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

Thank you for the patch.

On Mon, Oct 21, 2019 at 04:45:47PM -0500, Rob Herring wrote:
> In preparation to allow DRM CMA users to adjust the DMA_ATTR_* flags,
> convert the CMA helper code to use the dma_*_attr APIs instead of the
> dma_*_wc variants.
> 
> Only the DMA_ATTR_WRITE_COMBINE and DMA_ATTR_NO_WARN attributes are set
> in this commit, so there's no functional change.

Apart from the documentation issue reported by kbuild,

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Sean Paul <sean@poorly.run>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  drivers/gpu/drm/drm_gem_cma_helper.c | 20 ++++++++++++--------
>  include/drm/drm_gem_cma_helper.h     |  1 +
>  2 files changed, 13 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_gem_cma_helper.c b/drivers/gpu/drm/drm_gem_cma_helper.c
> index 12e98fb28229..4cebfe01e6ea 100644
> --- a/drivers/gpu/drm/drm_gem_cma_helper.c
> +++ b/drivers/gpu/drm/drm_gem_cma_helper.c
> @@ -70,6 +70,7 @@ __drm_gem_cma_create(struct drm_device *drm, size_t size)
>  		goto error;
>  	}
> 
> +	cma_obj->dma_attrs |= DMA_ATTR_NO_WARN | DMA_ATTR_WRITE_COMBINE;
>  	return cma_obj;
> 
>  error:
> @@ -102,8 +103,9 @@ struct drm_gem_cma_object *drm_gem_cma_create(struct drm_device *drm,
>  	if (IS_ERR(cma_obj))
>  		return cma_obj;
> 
> -	cma_obj->vaddr = dma_alloc_wc(drm->dev, size, &cma_obj->paddr,
> -				      GFP_KERNEL | __GFP_NOWARN);
> +	cma_obj->vaddr = dma_alloc_attrs(drm->dev, size, &cma_obj->paddr,
> +					 GFP_KERNEL | __GFP_NOWARN,
> +					 cma_obj->dma_attrs);
>  	if (!cma_obj->vaddr) {
>  		dev_dbg(drm->dev, "failed to allocate buffer with size %zu\n",
>  			size);
> @@ -184,8 +186,9 @@ void drm_gem_cma_free_object(struct drm_gem_object *gem_obj)
>  			dma_buf_vunmap(gem_obj->import_attach->dmabuf, cma_obj->vaddr);
>  		drm_prime_gem_destroy(gem_obj, cma_obj->sgt);
>  	} else if (cma_obj->vaddr) {
> -		dma_free_wc(gem_obj->dev->dev, cma_obj->base.size,
> -			    cma_obj->vaddr, cma_obj->paddr);
> +		dma_free_attrs(gem_obj->dev->dev, cma_obj->base.size,
> +			       cma_obj->vaddr, cma_obj->paddr,
> +			       cma_obj->dma_attrs);
>  	}
> 
>  	drm_gem_object_release(gem_obj);
> @@ -279,8 +282,9 @@ static int drm_gem_cma_mmap_obj(struct drm_gem_cma_object *cma_obj,
>  	vma->vm_flags &= ~VM_PFNMAP;
>  	vma->vm_pgoff = 0;
> 
> -	ret = dma_mmap_wc(cma_obj->base.dev->dev, vma, cma_obj->vaddr,
> -			  cma_obj->paddr, vma->vm_end - vma->vm_start);
> +	ret = dma_mmap_attrs(cma_obj->base.dev->dev, vma, cma_obj->vaddr,
> +			     cma_obj->paddr, vma->vm_end - vma->vm_start,
> +			     cma_obj->dma_attrs);
>  	if (ret)
>  		drm_gem_vm_close(vma);
> 
> @@ -434,8 +438,8 @@ struct sg_table *drm_gem_cma_prime_get_sg_table(struct drm_gem_object *obj)
>  	if (!sgt)
>  		return ERR_PTR(-ENOMEM);
> 
> -	ret = dma_get_sgtable(obj->dev->dev, sgt, cma_obj->vaddr,
> -			      cma_obj->paddr, obj->size);
> +	ret = dma_get_sgtable_attrs(obj->dev->dev, sgt, cma_obj->vaddr,
> +			      cma_obj->paddr, obj->size, cma_obj->dma_attrs);
>  	if (ret < 0)
>  		goto out;
> 
> diff --git a/include/drm/drm_gem_cma_helper.h b/include/drm/drm_gem_cma_helper.h
> index 947ac95eb24a..d042213c3595 100644
> --- a/include/drm/drm_gem_cma_helper.h
> +++ b/include/drm/drm_gem_cma_helper.h
> @@ -24,6 +24,7 @@ struct drm_gem_cma_object {
> 
>  	/* For objects with DMA memory allocated by GEM CMA */
>  	void *vaddr;
> +	unsigned long dma_attrs;
>  };
> 
>  #define to_drm_gem_cma_obj(gem_obj) \

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
