Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B5E10F7B5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 07:18:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oXTnUVpztbcHRYF0YwuaRhJSh/B0msXDBHRdilT499k=; b=cbO2bE/onx1rvk
	1AFDpUuazP8piuU4ZR0stWsYiH9v5ZbxKMlWMukSeHZzQ0G5zstDDVAt5skjaLGjKc3WFBpMQ9Q24
	zakQ0FvRcBy3U/iEeyaqCILu/gGUfSWbO7o8talyFbFrOu7TmCin+LcpGX+EI0P3XO2ZVnJ84ObS2
	zMEJCLyVZtk0RCjBhhZu9iH7+cF6XdiGPHAbDGhyOcvyqMADx7nW6L/kv+Yn3+MOtVEkhEjBCZ5GE
	iKjmLgP20JPyHaoxIEIyAfrP5Zxh8G6PklHRhuox3l9JfEQPMy030LDG8Q0rM0P2710QMs6FkGjSt
	KEFBkoRljshvKCbKqBOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic1Vc-0000Hz-HQ; Tue, 03 Dec 2019 06:18:04 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic1VU-0000HX-T7; Tue, 03 Dec 2019 06:17:59 +0000
X-UUID: 1ba8a16af1474b1f9a3c87618bdaf854-20191202
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=jo9OIf4noLNpOSggpQFh4hTIdnn1N4FLV/ao8egMNkY=; 
 b=I5i22qUJeIFfMSu/6g9a9vtofreuT2xfXJ5blPhRors35MKTWJJDPbFPEh5gRWtXrGJ5ZR7L+7gDaOUzhv91thWxc15ROGkZLtQ8STf27b2R+3odS4Brn6no1gDsTvr8vumnIWRruYl/PRc7Z+I93kJxrFgpQnRN5HGRvV92B/Y=;
X-UUID: 1ba8a16af1474b1f9a3c87618bdaf854-20191202
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 938699759; Mon, 02 Dec 2019 22:17:53 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 2 Dec 2019 22:18:39 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Dec 2019 14:17:38 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 3 Dec 2019 14:17:32 +0800
Message-ID: <1575353870.15194.2.camel@mtksdaap41>
Subject: Re: [PATCH v1 6/6] drm/mediatek: apply CMDQ control flow
From: CK Hu <ck.hu@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Tue, 3 Dec 2019 14:17:50 +0800
In-Reply-To: <1575352691.3410.2.camel@mtksdaap41>
References: <20191128024238.9399-1-bibby.hsieh@mediatek.com>
 <20191128024238.9399-7-bibby.hsieh@mediatek.com>
 <1575337114.1155.4.camel@mtksdaap41> <1575352691.3410.2.camel@mtksdaap41>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_221756_952930_97AC8A95 
X-CRM114-Status: GOOD (  26.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Tue, 2019-12-03 at 13:58 +0800, Bibby Hsieh wrote:
> On Tue, 2019-12-03 at 09:38 +0800, CK Hu wrote:
> > Hi, Bibby:
> > 
> > On Thu, 2019-11-28 at 10:42 +0800, Bibby Hsieh wrote:
> > > Unlike other SoCs, MT8183 does not have "shadow"
> > > registers for performaing an atomic video mode
> > > set or page flip at vblank/vsync.
> > > 
> > > The CMDQ (Commend Queue) in MT8183 is used to help
> > > update all relevant display controller registers
> > > with critical time limation.
> > > 
> > > Signed-off-by: YT Shen <yt.shen@mediatek.com>
> > > Signed-off-by: CK Hu <ck.hu@mediatek.com>
> > > Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> > > Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> > > Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> > > ---
> > >  drivers/gpu/drm/mediatek/mtk_drm_crtc.c     | 86 ++++++++++++++++++++-
> > >  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 31 ++++++++
> > >  2 files changed, 113 insertions(+), 4 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > > index fcf4e755e0bd..1b4e537ac3c1 100644
> > > --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > > +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > > @@ -12,6 +12,8 @@
> > >  #include <drm/drm_plane_helper.h>
> > >  #include <drm/drm_probe_helper.h>
> > >  #include <drm/drm_vblank.h>
> > > +#include <linux/of_address.h>
> > > +#include <linux/soc/mediatek/mtk-cmdq.h>
> > >  
> > >  #include "mtk_drm_drv.h"
> > >  #include "mtk_drm_crtc.h"
> > > @@ -42,6 +44,9 @@ struct mtk_drm_crtc {
> > >  	unsigned int			layer_nr;
> > >  	bool				pending_planes;
> > >  
> > > +	struct cmdq_client		*cmdq_client;
> > > +	u32				cmdq_event;
> > > +
> > >  	void __iomem			*config_regs;
> > >  	const struct mtk_mmsys_reg_data *mmsys_reg_data;
> > >  	struct mtk_disp_mutex		*mutex;
> > > @@ -56,6 +61,11 @@ struct mtk_crtc_state {
> > >  	unsigned int			pending_width;
> > >  	unsigned int			pending_height;
> > >  	unsigned int			pending_vrefresh;
> > > +	struct cmdq_pkt			*cmdq_handle;
> > > +};
> > > +
> > > +struct mtk_cmdq_cb_data {
> > > +	struct cmdq_pkt			*cmdq_handle;
> > >  };
> > >  
> > >  static inline struct mtk_drm_crtc *to_mtk_crtc(struct drm_crtc *c)
> > > @@ -229,6 +239,46 @@ struct mtk_ddp_comp *mtk_drm_ddp_comp_for_plane(struct drm_crtc *crtc,
> > >  	return NULL;
> > >  }
> > >  
> > > +#ifdef CONFIG_MTK_CMDQ
> > > +static void ddp_cmdq_cb(struct cmdq_cb_data data)
> > > +{
> > > +	struct mtk_cmdq_cb_data *cb_data = data.data;
> > > +
> > > +	cmdq_pkt_destroy(cb_data->cmdq_handle);
> > > +	kfree(cb_data);
> > > +}
> > > +
> > > +static void mtk_cmdq_acquire(struct drm_crtc *crtc)
> > > +{
> > > +	struct mtk_crtc_state *mtk_crtc_state =
> > > +			to_mtk_crtc_state(crtc->state);
> > > +	struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
> > > +
> > > +	mtk_crtc_state->cmdq_handle =
> > > +			cmdq_pkt_create(mtk_crtc->cmdq_client,
> > > +					PAGE_SIZE);
> > 
> > I would like to remove atomic feature in cmdq driver and drm driver
> > could reuse the pkt. Please refer to [1] for detail.
> > 
> > [1]
> > http://lists.infradead.org/pipermail/linux-mediatek/2019-January/016866.html
> Hi, CK,
> 
> Thanks for all the comments.
> I will change them in my next version.
> 
> About the atomic feature removing, I think we already made note at here.
> Let's fix them after the atomic feature removed really.

Removing atomic feature would modify the device tree, and I'm worry that
device tree setting could not be modified at that time. I think we could
modify the device tree now because there no client use cmdq in upstream.

Regards,
CK

> 
> Bibby
> > 
> > > +	cmdq_pkt_clear_event(mtk_crtc_state->cmdq_handle,
> > > +			     mtk_crtc->cmdq_event);
> > > +	cmdq_pkt_wfe(mtk_crtc_state->cmdq_handle, mtk_crtc->cmdq_event);
> > > +}
> > > +
> > > +static void mtk_cmdq_release(struct drm_crtc *crtc)
> > > +{
> > > +	struct mtk_crtc_state *mtk_crtc_state =
> > > +			to_mtk_crtc_state(crtc->state);
> > > +	struct mtk_cmdq_cb_data *cb_data;
> > > +
> > > +	cb_data = kmalloc(sizeof(*cb_data), GFP_KERNEL);
> > > +	if (!cb_data) {
> > > +		DRM_DEV_ERROR(crtc->dev->dev, "Failed to alloc cb_data\n");
> > > +		return;
> > > +	}
> > > +
> > > +	cb_data->cmdq_handle = mtk_crtc_state->cmdq_handle;
> > > +	cmdq_pkt_flush_async(mtk_crtc_state->cmdq_handle,
> > > +			     ddp_cmdq_cb, cb_data);
> > > +}
> > > +#endif
> > >  static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
> > >  {
> > >  	struct drm_crtc *crtc = &mtk_crtc->base;
> > > @@ -383,7 +433,8 @@ static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
> > >  	if (state->pending_config) {
> > >  		mtk_ddp_comp_config(comp, state->pending_width,
> > >  				    state->pending_height,
> > > -				    state->pending_vrefresh, 0, NULL);
> > > +				    state->pending_vrefresh, 0,
> > > +				    state->cmdq_handle);
> > >  
> > >  		state->pending_config = false;
> > >  	}
> > > @@ -403,7 +454,8 @@ static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
> > >  
> > >  			if (comp)
> > >  				mtk_ddp_comp_layer_config(comp, local_layer,
> > > -							  plane_state, NULL);
> > > +							  plane_state,
> > > +							  state->cmdq_handle);
> > >  			plane_state->pending.config = false;
> > >  		}
> > >  		mtk_crtc->pending_planes = false;
> > > @@ -454,6 +506,13 @@ void mtk_drm_crtc_cursor_update(struct drm_crtc *crtc, struct drm_plane *plane,
> > >  		mtk_crtc_ddp_config(crtc);
> > >  		mtk_disp_mutex_release(mtk_crtc->mutex);
> > >  	}
> > > +#ifdef CONFIG_MTK_CMDQ
> > > +	if (mtk_crtc->cmdq_client) {
> > > +		mtk_cmdq_acquire(crtc);
> > > +		mtk_crtc_ddp_config(crtc);
> > > +		mtk_cmdq_release(crtc);
> > > +	}
> > > +#endif
> > >  	mutex_unlock(&priv->hw_lock);
> > >  }
> > >  
> > > @@ -570,6 +629,13 @@ static void mtk_drm_crtc_atomic_flush(struct drm_crtc *crtc,
> > >  		mtk_crtc_ddp_config(crtc);
> > >  		mtk_disp_mutex_release(mtk_crtc->mutex);
> > >  	}
> > > +#ifdef CONFIG_MTK_CMDQ
> > > +	if (mtk_crtc->cmdq_client) {
> > > +		mtk_cmdq_acquire(crtc);
> > > +		mtk_crtc_ddp_config(crtc);
> > > +		mtk_cmdq_release(crtc);
> > > +	}
> > > +#endif
> > 
> > This part is almost the same as the one in mtk_drm_crtc_cursor_update(),
> > try to merge them.
> > 
> > >  }
> > >  
> > >  static const struct drm_crtc_funcs mtk_crtc_funcs = {
> > > @@ -619,7 +685,7 @@ void mtk_crtc_ddp_irq(struct drm_crtc *crtc, struct mtk_ddp_comp *comp)
> > >  	struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
> > >  	struct mtk_drm_private *priv = crtc->dev->dev_private;
> > >  
> > > -	if (!priv->data->shadow_register)
> > > +	if (!priv->data->shadow_register && !mtk_crtc->cmdq_client)
> > >  		mtk_crtc_ddp_config(crtc);
> > >  
> > >  	mtk_drm_finish_page_flip(mtk_crtc);
> > > @@ -761,6 +827,18 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
> > >  	drm_mode_crtc_set_gamma_size(&mtk_crtc->base, MTK_LUT_SIZE);
> > >  	drm_crtc_enable_color_mgmt(&mtk_crtc->base, 0, false, MTK_LUT_SIZE);
> > >  	priv->num_pipes++;
> > > -
> > > +#ifdef CONFIG_MTK_CMDQ
> > > +	mtk_crtc->cmdq_client =
> > > +			cmdq_mbox_create(dev, drm_crtc_index(&mtk_crtc->base),
> > > +					 2000);
> > > +	of_property_read_u32_index(dev->of_node, "mediatek,gce-events",
> > > +				   drm_crtc_index(&mtk_crtc->base),
> > > +				   &mtk_crtc->cmdq_event);
> > > +	if (IS_ERR(mtk_crtc->cmdq_client)) {
> > > +		dev_dbg(dev, "mtk_crtc %d failed to create mailbox client, writing register by CPU now\n",
> > > +			drm_crtc_index(&mtk_crtc->base));
> > > +		mtk_crtc->cmdq_client = NULL;
> > > +	}
> > > +#endif
> > >  	return 0;
> > >  }
> > > diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> > > index 6d0f349ddf82..9cc12af2bc06 100644
> > > --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> > > +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> > > @@ -370,6 +370,9 @@ int mtk_ddp_comp_init(struct device *dev, struct device_node *node,
> > >  		      const struct mtk_ddp_comp_funcs *funcs)
> > >  {
> > >  	struct platform_device *comp_pdev;
> > > +	struct resource res;
> > > +	struct cmdq_client_reg *cmdq_reg;
> > > +	int ret = 0;
> > >  
> > >  	if (comp_id < 0 || comp_id >= DDP_COMPONENT_ID_MAX)
> > >  		return -EINVAL;
> > > @@ -404,6 +407,34 @@ int mtk_ddp_comp_init(struct device *dev, struct device_node *node,
> > >  	}
> > >  	comp->dev = &comp_pdev->dev;
> > >  
> > > +#ifdef CONFIG_MTK_CMDQ
> > > +	if (of_address_to_resource(node, 0, &res) != 0) {
> > > +		dev_err(dev, "Missing reg in %s node\n",
> > > +			node->full_name);
> > > +		return -EINVAL;
> > > +	}
> > > +	comp->regs_pa = res.start;
> > > +
> > > +	comp_pdev = of_find_device_by_node(node);
> > > +	if (!comp_pdev) {
> > > +		dev_warn(dev, "Waiting for component device %s\n",
> > > +			 node->full_name);
> > > +		return -EPROBE_DEFER;
> > > +	}
> > > +
> > > +	cmdq_reg = kzalloc(sizeof(*cmdq_reg), GFP_KERNEL);
> > > +	if (!cmdq_reg)
> > > +		return -EINVAL;
> > > +
> > > +	ret = cmdq_dev_get_client_reg(&comp_pdev->dev, cmdq_reg, 0);
> > > +	if (ret != 0)
> > > +		dev_dbg(&comp_pdev->dev,
> > > +			"get mediatek,gce-client-reg fail!\n");
> > > +	else
> > > +		comp->subsys = cmdq_reg->subsys;
> > > +
> > > +	kfree(cmdq_reg);
> > > +#endif
> > 
> > I would like to move this part to the patch "drm/mediatek: support CMDQ
> > interface in ddp component".
> > 
> > Regards,
> > CK
> > 
> > >  	return 0;
> > >  }
> > >  
> > 
> > 
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
