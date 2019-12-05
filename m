Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8FB1113B6D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 06:45:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/iJe1fALm++J4Zz/JD0t0qIHPCgnMA4mo44mKku+jug=; b=LosiqhwOndMBYr
	yp5n0je/BG0bRDV/FPz/NXd9v8a3Wp+zcXxtHbSOntPoTke4ivhigyBCc18CwH5lB/FEL/CPC/Odw
	uqldjvZRo3Gcxrak4f+eLWtfE1ESUmDNtkcNMkRHoaToUUUvLDryCbc8aENk2BdRSvTnnA7rvw7+N
	CFjmaRn8+ea71nLWRWsMva9vvUmfgMKxf3bN5IBsoOva89GzAvuqIu0XNaKRnK1csLN5c7ceAa5K3
	/6vhxDdamFpOQSsLAZoLSW968lVgED2e7HR6ca23qMfcIUEo664TPgCSZzvzbQx7z2wjPv2ebFa08
	l3h1/AOe34w6yyViJk8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icjwz-0004JC-9w; Thu, 05 Dec 2019 05:45:17 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icjwq-0003Wn-Tg; Thu, 05 Dec 2019 05:45:11 +0000
X-UUID: 6bf56341d73343febdb41a236cdfc115-20191204
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=DMukBWFVgZU4DzzXUc2ShgiywIROlscb4YOByu87/p4=; 
 b=A2/T+2gQ9t2mkR4JREyWfUNk7Pba/h+gDoz5DgGGID9QWt7BZ9fMSi+kPhsZr2WyYzU1shFYhFrMrQ9HTbSA8SWfAoyeeaaO54B5HBxmcoZ4syiADXyDM54X0p85gKj05ZZEbUdeSrVn+Mcyth/L15qF9QCQlvBa9oR9g4Zq4/Q=;
X-UUID: 6bf56341d73343febdb41a236cdfc115-20191204
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 596374458; Wed, 04 Dec 2019 21:45:01 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Dec 2019 21:45:51 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Dec 2019 13:44:41 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 5 Dec 2019 13:44:27 +0800
Message-ID: <1575524697.24783.20.camel@mtksdaap41>
Subject: Re: [PATCH v3 6/6] drm/mediatek: apply CMDQ control flow
From: CK Hu <ck.hu@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Thu, 5 Dec 2019 13:44:57 +0800
In-Reply-To: <20191204094441.5116-7-bibby.hsieh@mediatek.com>
References: <20191204094441.5116-1-bibby.hsieh@mediatek.com>
 <20191204094441.5116-7-bibby.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_214508_977529_CE19DFC7 
X-CRM114-Status: GOOD (  20.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: drinkcat@chromium.org, Yongqiang Niu <yongqiang.niu@mediatek.com>,
 srv_heupstream@mediatek.com, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, tfiga@chromium.org,
 YT Shen <yt.shen@mediatek.com>, Thierry Reding <thierry.reding@gmail.com>,
 linux-mediatek@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Bibby:

On Wed, 2019-12-04 at 17:44 +0800, Bibby Hsieh wrote:
> Unlike other SoCs, MT8183 does not have "shadow"
> registers for performaing an atomic video mode
> set or page flip at vblank/vsync.
> 
> The CMDQ (Commend Queue) in MT8183 is used to help
> update all relevant display controller registers
> with critical time limation.
> 
> Signed-off-by: YT Shen <yt.shen@mediatek.com>
> Signed-off-by: CK Hu <ck.hu@mediatek.com>
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 80 ++++++++++++++++++++++++-
>  1 file changed, 77 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> index 9f1ff2f3f104..9340346e2727 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> @@ -12,6 +12,8 @@
>  #include <drm/drm_plane_helper.h>
>  #include <drm/drm_probe_helper.h>
>  #include <drm/drm_vblank.h>
> +#include <linux/of_address.h>
> +#include <linux/soc/mediatek/mtk-cmdq.h>
>  
>  #include "mtk_drm_drv.h"
>  #include "mtk_drm_crtc.h"
> @@ -42,6 +44,9 @@ struct mtk_drm_crtc {
>  	unsigned int			layer_nr;
>  	bool				pending_planes;
>  
> +	struct cmdq_client		*cmdq_client;
> +	u32				cmdq_event;
> +
>  	void __iomem			*config_regs;
>  	const struct mtk_mmsys_reg_data *mmsys_reg_data;
>  	struct mtk_disp_mutex		*mutex;
> @@ -59,6 +64,11 @@ struct mtk_crtc_state {
>  	unsigned int			pending_width;
>  	unsigned int			pending_height;
>  	unsigned int			pending_vrefresh;
> +	struct cmdq_pkt			*cmdq_handle;

The handle is just used in mtk_drm_crtc_hw_config(), so I think you need
not to store it in mtk_crtc_state. Make it a local variable in
mtk_drm_crtc_hw_config() is enough.

> +};
> +
> +struct mtk_cmdq_cb_data {
> +	struct cmdq_pkt			*cmdq_handle;
>  };
>  
>  static inline struct mtk_drm_crtc *to_mtk_crtc(struct drm_crtc *c)
> @@ -233,6 +243,47 @@ struct mtk_ddp_comp *mtk_drm_ddp_comp_for_plane(struct drm_crtc *crtc,
>  	return NULL;
>  }
>  
> +#ifdef CONFIG_MTK_CMDQ
> +static void ddp_cmdq_cb(struct cmdq_cb_data data)
> +{
> +	struct mtk_cmdq_cb_data *cb_data = data.data;
> +
> +	cmdq_pkt_destroy(cb_data->cmdq_handle);
> +	kfree(cb_data);
> +}
> +
> +static void mtk_cmdq_acquire(struct drm_crtc *crtc)
> +{
> +	struct mtk_crtc_state *mtk_crtc_state =
> +			to_mtk_crtc_state(crtc->state);
> +	struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
> +
> +	mtk_crtc_state->cmdq_handle =
> +			cmdq_pkt_create(mtk_crtc->cmdq_client,
> +					PAGE_SIZE);
> +	cmdq_pkt_clear_event(mtk_crtc_state->cmdq_handle,
> +			     mtk_crtc->cmdq_event);
> +	cmdq_pkt_wfe(mtk_crtc_state->cmdq_handle, mtk_crtc->cmdq_event);
> +}
> +
> +static void mtk_cmdq_release(struct drm_crtc *crtc)
> +{
> +	struct mtk_crtc_state *mtk_crtc_state =
> +			to_mtk_crtc_state(crtc->state);
> +	struct mtk_cmdq_cb_data *cb_data;
> +
> +	cb_data = kmalloc(sizeof(*cb_data), GFP_KERNEL);
> +	if (!cb_data) {
> +		DRM_DEV_ERROR(crtc->dev->dev, "Failed to alloc cb_data\n");
> +		return;
> +	}
> +
> +	cb_data->cmdq_handle = mtk_crtc_state->cmdq_handle;
> +	cmdq_pkt_flush_async(mtk_crtc_state->cmdq_handle,
> +			     ddp_cmdq_cb, cb_data);

Why do you create mtk_cmdq_cb_data{}? You could directly put handle in
cb_date parameter.

> +}
> +#endif
> +
>  static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
>  {
>  	struct drm_crtc *crtc = &mtk_crtc->base;
> @@ -393,7 +444,8 @@ static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
>  	if (state->pending_config) {
>  		mtk_ddp_comp_config(comp, state->pending_width,
>  				    state->pending_height,
> -				    state->pending_vrefresh, 0, NULL);
> +				    state->pending_vrefresh, 0,
> +				    state->cmdq_handle);
>  
>  		state->pending_config = false;
>  	}
> @@ -413,7 +465,8 @@ static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
>  
>  			if (comp)
>  				mtk_ddp_comp_layer_config(comp, local_layer,
> -							  plane_state, NULL);
> +							  plane_state,
> +							  state->cmdq_handle);
>  			plane_state->pending.config = false;
>  		}
>  		mtk_crtc->pending_planes = false;
> @@ -452,6 +505,13 @@ static void mtk_drm_crtc_hw_config(struct mtk_drm_crtc *mtk_crtc)
>  		mtk_crtc_ddp_config(crtc);
>  		mtk_disp_mutex_release(mtk_crtc->mutex);
>  	}
> +#ifdef CONFIG_MTK_CMDQ
> +	if (mtk_crtc->cmdq_client) {
> +		mtk_cmdq_acquire(crtc);
> +		mtk_crtc_ddp_config(crtc);
> +		mtk_cmdq_release(crtc);
> +	}
> +#endif
>  	mutex_unlock(&mtk_crtc->hw_lock);
>  }
>  
> @@ -528,6 +588,7 @@ static void mtk_drm_crtc_atomic_disable(struct drm_crtc *crtc,
>  	mtk_crtc->pending_planes = true;
>  
>  	/* Wait for planes to be disabled */
> +	mtk_drm_crtc_hw_config(mtk_crtc);

I think shadow register has the same problem, so I would like to move
this part to an independent patch which fix shadow register problem. And
I think this statement should be moved before the comment because this
statement does not doing wait.

>  	drm_crtc_wait_one_vblank(crtc);
>  
>  	drm_crtc_vblank_off(crtc);
> @@ -619,7 +680,7 @@ void mtk_crtc_ddp_irq(struct drm_crtc *crtc, struct mtk_ddp_comp *comp)
>  	struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
>  	struct mtk_drm_private *priv = crtc->dev->dev_private;
>  
> -	if (!priv->data->shadow_register)
> +	if (!priv->data->shadow_register && !mtk_crtc->cmdq_client)
>  		mtk_crtc_ddp_config(crtc);
>  
>  	mtk_drm_finish_page_flip(mtk_crtc);
> @@ -763,5 +824,18 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
>  	priv->num_pipes++;
>  	mutex_init(&mtk_crtc->hw_lock);
>  
> +#ifdef CONFIG_MTK_CMDQ
> +	mtk_crtc->cmdq_client =
> +			cmdq_mbox_create(dev, drm_crtc_index(&mtk_crtc->base),
> +					 2000);
> +	of_property_read_u32_index(dev->of_node, "mediatek,gce-events",
> +				   drm_crtc_index(&mtk_crtc->base),
> +				   &mtk_crtc->cmdq_event);

Check the return value.

Regards,
CK

> +	if (IS_ERR(mtk_crtc->cmdq_client)) {
> +		dev_dbg(dev, "mtk_crtc %d failed to create mailbox client, writing register by CPU now\n",
> +			drm_crtc_index(&mtk_crtc->base));
> +		mtk_crtc->cmdq_client = NULL;
> +	}
> +#endif
>  	return 0;
>  }

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
