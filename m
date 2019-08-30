Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87416A32BF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 10:36:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I3NMxvBklfj/182VSNkNHlo+OyGC9s8kmjUCfJ5K1E8=; b=uQVbaJ5WnjLprM
	alioPPjvu0i8bTfGsXQsQHlag8wAVww2nsJjOjNdqnXzyS0OhTtRGnwNUotzcKxwfrJB4T+epi1hZ
	LjSVeswESomkisIDkZDlcDWDC//j+bI4Q3TkeQjhvi5jfoU6krjM+440hIORKceneNn7P64rQZIql
	2Q+UvDdorI09MOwkpqOxSqQpBp/HSJATrB1zQ1XjtOgh2yVbWyeu4gENpRqxvidjeN4fK8OQ2VLkZ
	Kodtgltl6JEReHDQwUuV0gcIEHsV0oy0DKD1OVyaINg00ABCk/QC7ARrGCoJq7dK9zTggbpY/s2/R
	vzTCK62dJEwOBofrI/MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3cOL-0004i4-57; Fri, 30 Aug 2019 08:36:21 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3cO6-0004h4-IG; Fri, 30 Aug 2019 08:36:08 +0000
X-UUID: afe819a577dd4724a9064817be893338-20190830
X-UUID: afe819a577dd4724a9064817be893338-20190830
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 472908768; Fri, 30 Aug 2019 00:36:04 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 30 Aug 2019 01:36:03 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 30 Aug 2019 16:35:55 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 30 Aug 2019 16:35:55 +0800
Message-ID: <1567154150.13325.2.camel@mtksdaap41>
Subject: Re: [PATCH 1/2] drm/mediatek: Only block updates to CRTCs that have
 a pending update
From: CK Hu <ck.hu@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Fri, 30 Aug 2019 16:35:50 +0800
In-Reply-To: <20190830073819.16566-2-bibby.hsieh@mediatek.com>
References: <20190830073819.16566-1-bibby.hsieh@mediatek.com>
 <20190830073819.16566-2-bibby.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 6A96CFC89D33F5FA5F20A3018DA500853F5365A8A16AA1784E06D7C60982FE4B2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_013606_612954_9F81D7AD 
X-CRM114-Status: GOOD (  26.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: drinkcat@chromium.org, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, tfiga@chromium.org,
 YT Shen <yt.shen@mediatek.com>, Thierry Reding <thierry.reding@gmail.com>,
 linux-mediatek@lists.infradead.org, Daniel Kurtz <djkurtz@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Bibby:

On Fri, 2019-08-30 at 15:38 +0800, Bibby Hsieh wrote:
> Currently we use a single mutex to allow only a single atomic
> update at a time. In truth, though, we really only want to
> ensure that only a single atomic update is allowed per CRTC.
> 
> In other words, for each atomic update, we only block if there
> is a pending update for the CRTCs involved, and don't block if
> there are only pending updates for other CRTCs.

I don't know why this patch is so complicated. The original problem is
that one mutex for whole drm would block different crtc. So I think each
crtc has its own mutex would solve this problem and we need not the
event waiting. Do I miss something?

Regards,
CK

> 
> Fixes: 119f5173628a ("drm/mediatek: Add DRM Driver for Mediatek SoC MT8173.")
> 
> Signed-off-by: Daniel Kurtz <djkurtz@chromium.org>
> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c |  14 +-
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c  | 182 +++++++++++++++++++++---
>  drivers/gpu/drm/mediatek/mtk_drm_drv.h  |  12 +-
>  3 files changed, 184 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> index b55970a2869d..7697b40baac0 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> @@ -5,6 +5,7 @@
>  
>  #include <asm/barrier.h>
>  #include <drm/drmP.h>
> +#include <drm/drm_atomic.h>
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_plane_helper.h>
>  #include <drm/drm_probe_helper.h>
> @@ -45,6 +46,8 @@ struct mtk_drm_crtc {
>  	struct mtk_disp_mutex		*mutex;
>  	unsigned int			ddp_comp_nr;
>  	struct mtk_ddp_comp		**ddp_comp;
> +
> +	struct drm_crtc_state		*old_crtc_state;
>  };
>  
>  struct mtk_crtc_state {
> @@ -343,6 +346,7 @@ static void mtk_crtc_ddp_hw_fini(struct mtk_drm_crtc *mtk_crtc)
>  static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
>  {
>  	struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
> +	struct drm_atomic_state *atomic_state = mtk_crtc->old_crtc_state->state;
>  	struct mtk_crtc_state *state = to_mtk_crtc_state(mtk_crtc->base.state);
>  	struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[0];
>  	unsigned int i;
> @@ -382,6 +386,7 @@ static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
>  			}
>  		}
>  		mtk_crtc->pending_planes = false;
> +		mtk_atomic_state_put_queue(atomic_state);
>  	}
>  }
>  
> @@ -451,6 +456,7 @@ static void mtk_drm_crtc_atomic_begin(struct drm_crtc *crtc,
>  static void mtk_drm_crtc_atomic_flush(struct drm_crtc *crtc,
>  				      struct drm_crtc_state *old_crtc_state)
>  {
> +	struct drm_atomic_state *old_atomic_state = old_crtc_state->state;
>  	struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
>  	struct mtk_drm_private *priv = crtc->dev->dev_private;
>  	unsigned int pending_planes = 0;
> @@ -469,8 +475,13 @@ static void mtk_drm_crtc_atomic_flush(struct drm_crtc *crtc,
>  			pending_planes |= BIT(i);
>  		}
>  	}
> -	if (pending_planes)
> +
> +	if (pending_planes) {
>  		mtk_crtc->pending_planes = true;
> +		drm_atomic_state_get(old_atomic_state);
> +		mtk_crtc->old_crtc_state = old_crtc_state;
> +	}
> +
>  	if (crtc->state->color_mgmt_changed)
>  		for (i = 0; i < mtk_crtc->ddp_comp_nr; i++)
>  			mtk_ddp_gamma_set(mtk_crtc->ddp_comp[i], crtc->state);
> @@ -526,6 +537,7 @@ static int mtk_drm_crtc_init(struct drm_device *drm,
>  
>  void mtk_crtc_ddp_irq(struct drm_crtc *crtc, struct mtk_ddp_comp *comp)
>  {
> +
>  	struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
>  	struct mtk_drm_private *priv = crtc->dev->dev_private;
>  
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> index c0928b69dc43..b0308a3a7483 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> @@ -31,11 +31,120 @@
>  #define DRIVER_MAJOR 1
>  #define DRIVER_MINOR 0
>  
> -static void mtk_atomic_schedule(struct mtk_drm_private *private,
> +struct mtk_atomic_state {
> +	struct drm_atomic_state base;
> +	struct list_head list;
> +	struct work_struct work;
> +};
> +
> +static inline struct mtk_atomic_state *to_mtk_state(struct drm_atomic_state *s)
> +{
> +	return container_of(s, struct mtk_atomic_state, base);
> +}
> +
> +void mtk_atomic_state_put_queue(struct drm_atomic_state *state)
> +{
> +	struct drm_device *drm = state->dev;
> +	struct mtk_drm_private *mtk_drm = drm->dev_private;
> +	struct mtk_atomic_state *mtk_state = to_mtk_state(state);
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&mtk_drm->unreference.lock, flags);
> +	list_add_tail(&mtk_state->list, &mtk_drm->unreference.list);
> +	spin_unlock_irqrestore(&mtk_drm->unreference.lock, flags);
> +
> +	schedule_work(&mtk_drm->unreference.work);
> +}
> +
> +static uint32_t mtk_atomic_crtc_mask(struct drm_device *drm,
> +				     struct drm_atomic_state *state)
> +{
> +	uint32_t crtc_mask;
> +	int i;
> +
> +	for (i = 0, crtc_mask = 0; i < drm->mode_config.num_crtc; i++) {
> +		struct drm_crtc *crtc = state->crtcs[i].ptr;
> +
> +		if (crtc)
> +			crtc_mask |= (1 << drm_crtc_index(crtc));
> +	}
> +
> +	return crtc_mask;
> +}
> +
> +/*
> + * Block until specified crtcs are no longer pending update, and atomically
> + * mark them as pending update.
> + */
> +static int mtk_atomic_get_crtcs(struct drm_device *drm,
> +				struct drm_atomic_state *state)
> +{
> +	struct mtk_drm_private *private = drm->dev_private;
> +	uint32_t crtc_mask;
> +	int ret;
> +
> +	crtc_mask = mtk_atomic_crtc_mask(drm, state);
> +
> +	/*
> +	 * Wait for all pending updates to complete for the set of crtcs being
> +	 * changed in this atomic commit
> +	 */
> +	spin_lock(&private->commit.crtcs_event.lock);
> +	ret = wait_event_interruptible_locked(private->commit.crtcs_event,
> +			!(private->commit.crtcs & crtc_mask));
> +	if (ret == 0)
> +		private->commit.crtcs |= crtc_mask;
> +	spin_unlock(&private->commit.crtcs_event.lock);
> +
> +	return ret;
> +}
> +
> +/*
> + * Mark specified crtcs as no longer pending update.
> + */
> +static void mtk_atomic_put_crtcs(struct drm_device *drm,
> +				 struct drm_atomic_state *state)
> +{
> +	struct mtk_drm_private *private = drm->dev_private;
> +	uint32_t crtc_mask;
> +
> +	crtc_mask = mtk_atomic_crtc_mask(drm, state);
> +
> +	spin_lock(&private->commit.crtcs_event.lock);
> +	private->commit.crtcs &= ~crtc_mask;
> +	wake_up_all_locked(&private->commit.crtcs_event);
> +	spin_unlock(&private->commit.crtcs_event.lock);
> +}
> +
> +static void mtk_unreference_work(struct work_struct *work)
> +{
> +	struct mtk_drm_private *mtk_drm = container_of(work,
> +			struct mtk_drm_private, unreference.work);
> +	unsigned long flags;
> +	struct mtk_atomic_state *state, *tmp;
> +
> +	/*
> +	 * framebuffers cannot be unreferenced in atomic context.
> +	 * Therefore, only hold the spinlock when iterating unreference_list,
> +	 * and drop it when doing the unreference.
> +	 */
> +	spin_lock_irqsave(&mtk_drm->unreference.lock, flags);
> +	list_for_each_entry_safe(state, tmp, &mtk_drm->unreference.list, list) {
> +		list_del(&state->list);
> +		spin_unlock_irqrestore(&mtk_drm->unreference.lock, flags);
> +		drm_atomic_state_put(&state->base);
> +		spin_lock_irqsave(&mtk_drm->unreference.lock, flags);
> +	}
> +	spin_unlock_irqrestore(&mtk_drm->unreference.lock, flags);
> +}
> +
> +
> +static void mtk_atomic_schedule(struct drm_device *drm,
>  				struct drm_atomic_state *state)
>  {
> -	private->commit.state = state;
> -	schedule_work(&private->commit.work);
> +	struct mtk_atomic_state *mtk_state = to_mtk_state(state);
> +
> +	schedule_work(&mtk_state->work);
>  }
>  
>  static void mtk_atomic_wait_for_fences(struct drm_atomic_state *state)
> @@ -48,13 +157,10 @@ static void mtk_atomic_wait_for_fences(struct drm_atomic_state *state)
>  		mtk_fb_wait(new_plane_state->fb);
>  }
>  
> -static void mtk_atomic_complete(struct mtk_drm_private *private,
> +static void mtk_atomic_complete(struct drm_device *drm,
>  				struct drm_atomic_state *state)
>  {
> -	struct drm_device *drm = private->drm;
> -
>  	mtk_atomic_wait_for_fences(state);
> -
>  	/*
>  	 * Mediatek drm supports runtime PM, so plane registers cannot be
>  	 * written when their crtc is disabled.
> @@ -77,53 +183,86 @@ static void mtk_atomic_complete(struct mtk_drm_private *private,
>  	drm_atomic_helper_wait_for_vblanks(drm, state);
>  
>  	drm_atomic_helper_cleanup_planes(drm, state);
> +	mtk_atomic_put_crtcs(drm, state);
> +
>  	drm_atomic_state_put(state);
>  }
>  
>  static void mtk_atomic_work(struct work_struct *work)
>  {
> -	struct mtk_drm_private *private = container_of(work,
> -			struct mtk_drm_private, commit.work);
> +	struct mtk_atomic_state *mtk_state = container_of(work,
> +			struct mtk_atomic_state, work);
> +	struct drm_atomic_state *state = &mtk_state->base;
> +	struct drm_device *drm = state->dev;
>  
> -	mtk_atomic_complete(private, private->commit.state);
> +	mtk_atomic_complete(drm, state);
>  }
>  
>  static int mtk_atomic_commit(struct drm_device *drm,
>  			     struct drm_atomic_state *state,
>  			     bool async)
>  {
> -	struct mtk_drm_private *private = drm->dev_private;
>  	int ret;
>  
>  	ret = drm_atomic_helper_prepare_planes(drm, state);
>  	if (ret)
>  		return ret;
>  
> -	mutex_lock(&private->commit.lock);
> -	flush_work(&private->commit.work);
> +	ret = mtk_atomic_get_crtcs(drm, state);
> +	if (ret) {
> +		drm_atomic_helper_cleanup_planes(drm, state);
> +		return ret;
> +	}
>  
>  	ret = drm_atomic_helper_swap_state(state, true);
>  	if (ret) {
> -		mutex_unlock(&private->commit.lock);
>  		drm_atomic_helper_cleanup_planes(drm, state);
>  		return ret;
>  	}
>  
>  	drm_atomic_state_get(state);
>  	if (async)
> -		mtk_atomic_schedule(private, state);
> +		mtk_atomic_schedule(drm, state);
>  	else
> -		mtk_atomic_complete(private, state);
> -
> -	mutex_unlock(&private->commit.lock);
> +		mtk_atomic_complete(drm, state);
>  
>  	return 0;
>  }
>  
> +static struct drm_atomic_state *mtk_drm_atomic_state_alloc(
> +		struct drm_device *dev)
> +{
> +	struct mtk_atomic_state *mtk_state;
> +
> +	mtk_state = kzalloc(sizeof(*mtk_state), GFP_KERNEL);
> +	if (!mtk_state)
> +		return NULL;
> +
> +	if (drm_atomic_state_init(dev, &mtk_state->base) < 0) {
> +		kfree(mtk_state);
> +		return NULL;
> +	}
> +
> +	INIT_LIST_HEAD(&mtk_state->list);
> +	INIT_WORK(&mtk_state->work, mtk_atomic_work);
> +
> +	return &mtk_state->base;
> +}
> +
> +static void mtk_drm_atomic_state_free(struct drm_atomic_state *state)
> +{
> +	struct mtk_atomic_state *mtk_state = to_mtk_state(state);
> +
> +	drm_atomic_state_default_release(state);
> +	kfree(mtk_state);
> +}
> +
>  static const struct drm_mode_config_funcs mtk_drm_mode_config_funcs = {
>  	.fb_create = mtk_drm_mode_fb_create,
>  	.atomic_check = drm_atomic_helper_check,
>  	.atomic_commit = mtk_atomic_commit,
> +	.atomic_state_alloc = mtk_drm_atomic_state_alloc,
> +	.atomic_state_free = mtk_drm_atomic_state_free
>  };
>  
>  static const enum mtk_ddp_comp_id mt2701_mtk_ddp_main[] = {
> @@ -319,6 +458,11 @@ static int mtk_drm_kms_init(struct drm_device *drm)
>  	drm_kms_helper_poll_init(drm);
>  	drm_mode_config_reset(drm);
>  
> +	INIT_WORK(&private->unreference.work, mtk_unreference_work);
> +	INIT_LIST_HEAD(&private->unreference.list);
> +	spin_lock_init(&private->unreference.lock);
> +	init_waitqueue_head(&private->commit.crtcs_event);
> +
>  	return 0;
>  
>  err_component_unbind:
> @@ -504,8 +648,6 @@ static int mtk_drm_probe(struct platform_device *pdev)
>  	if (!private)
>  		return -ENOMEM;
>  
> -	mutex_init(&private->commit.lock);
> -	INIT_WORK(&private->commit.work, mtk_atomic_work);
>  	private->data = of_device_get_match_data(dev);
>  
>  	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.h b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
> index 823ba4081c18..0934f83b860d 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.h
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
> @@ -48,12 +48,16 @@ struct mtk_drm_private {
>  	const struct mtk_mmsys_driver_data *data;
>  
>  	struct {
> -		struct drm_atomic_state *state;
> -		struct work_struct work;
> -		struct mutex lock;
> +		uint32_t crtcs;
> +		wait_queue_head_t crtcs_event;
>  	} commit;
>  
>  	struct drm_atomic_state *suspend_state;
> +	struct {
> +		struct work_struct	work;
> +		struct list_head	list;
> +		spinlock_t		lock;
> +	} unreference;
>  };
>  
>  extern struct platform_driver mtk_ddp_driver;
> @@ -64,4 +68,6 @@ extern struct platform_driver mtk_dpi_driver;
>  extern struct platform_driver mtk_dsi_driver;
>  extern struct platform_driver mtk_mipi_tx_driver;
>  
> +void mtk_atomic_state_put_queue(struct drm_atomic_state *state);
> +
>  #endif /* MTK_DRM_DRV_H */



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
