Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EDE2114B48
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 03:55:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SYyDHzCigx15cq3OcGl99iskUoO7sVbcOIl5OpgQUQI=; b=i//BBKosdh7Kb2
	klzNIfzuNyASzO3rTFbSv365byYUvY99y19j0l+ctm01zw4HixewInzqOj/jAX7hzJh1Oo0G0R/hY
	igbOKraSH6y2nJOba4rzhbrZ18X+4r67T/MR9CdhcRomTVsV5PI0tT193t+LPVNJgQfwG16fX3IxO
	2Y810M5JxKpIP/kZfZGPs/wrgrtMUIuv0OQ4eIyvP4RYu6mHsuXrPrHTBHX4Rku8zTMmmaoli1TCJ
	HI36gLZAljSNnpqWYUxpmoi8pDgDvjSNIzy0Kh0ztFYgjWYclF0yeibnHF3Hl6g3rA63vt66lr4li
	uSHOzDc8J3YEQa1cpOkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1id3m6-0000ha-7Z; Fri, 06 Dec 2019 02:55:22 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1id3lx-0000YC-Uj; Fri, 06 Dec 2019 02:55:16 +0000
X-UUID: d625fe20304a4f3db0697edc4ccd42b2-20191205
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=+m0881iTlxWLsLEeydzi6ozs1V2dNGB1CpLzB3Z+JSE=; 
 b=i0LWQ+BHy0VCdjk3SADTwVtO7KBv5aPsls+cJ0E6hRYE0C2bMcHEfiIGgeWUu0iVO9wO+FsOqqjdOzo+Usdl5ZnwUQ7IZuusNw18tHxOWHFb6qUZs00+DDpR9GLuovKIXT430VlONCpN9RGy1boHke0IrBhuZ6czMkd65R5BYvg=;
X-UUID: d625fe20304a4f3db0697edc4ccd42b2-20191205
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 778458383; Thu, 05 Dec 2019 18:55:05 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Dec 2019 18:55:52 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 6 Dec 2019 10:54:57 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 6 Dec 2019 10:54:27 +0800
Message-ID: <1575600902.6328.11.camel@mtksdaap41>
Subject: Re: [PATCH v4 7/7] drm/mediatek: apply CMDQ control flow
From: CK Hu <ck.hu@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Fri, 6 Dec 2019 10:55:02 +0800
In-Reply-To: <20191205092749.4021-8-bibby.hsieh@mediatek.com>
References: <20191205092749.4021-1-bibby.hsieh@mediatek.com>
 <20191205092749.4021-8-bibby.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_185514_000334_F7C2A760 
X-CRM114-Status: GOOD (  16.58  )
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

On Thu, 2019-12-05 at 17:27 +0800, Bibby Hsieh wrote:
> Unlike other SoCs, MT8183 does not have "shadow"
> registers for performaing an atomic video mode
> set or page flip at vblank/vsync.
> 
> The CMDQ (Commend Queue) in MT8183 is used to help
> update all relevant display controller registers
> with critical time limation.

Reviewed-by: CK Hu <ck.hu@mediatek.com>
> 
> Signed-off-by: YT Shen <yt.shen@mediatek.com>
> Signed-off-by: CK Hu <ck.hu@mediatek.com>
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 56 +++++++++++++++++++++----
>  1 file changed, 49 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> index 8c6231ed6f55..496dffe962af 100644
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
> @@ -43,6 +45,9 @@ struct mtk_drm_crtc {
>  	bool				pending_planes;
>  	bool				pending_async_planes;
>  
> +	struct cmdq_client		*cmdq_client;
> +	u32				cmdq_event;
> +
>  	void __iomem			*config_regs;
>  	const struct mtk_mmsys_reg_data *mmsys_reg_data;
>  	struct mtk_disp_mutex		*mutex;
> @@ -234,6 +239,13 @@ struct mtk_ddp_comp *mtk_drm_ddp_comp_for_plane(struct drm_crtc *crtc,
>  	return NULL;
>  }
>  
> +#ifdef CONFIG_MTK_CMDQ
> +static void ddp_cmdq_cb(struct cmdq_cb_data data)
> +{
> +	cmdq_pkt_destroy(data.data);
> +}
> +#endif
> +
>  static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
>  {
>  	struct drm_crtc *crtc = &mtk_crtc->base;
> @@ -378,7 +390,8 @@ static void mtk_crtc_ddp_hw_fini(struct mtk_drm_crtc *mtk_crtc)
>  	}
>  }
>  
> -static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
> +static void mtk_crtc_ddp_config(struct drm_crtc *crtc,
> +				struct cmdq_pkt *cmdq_handle)
>  {
>  	struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
>  	struct mtk_crtc_state *state = to_mtk_crtc_state(mtk_crtc->base.state);
> @@ -394,7 +407,8 @@ static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
>  	if (state->pending_config) {
>  		mtk_ddp_comp_config(comp, state->pending_width,
>  				    state->pending_height,
> -				    state->pending_vrefresh, 0, NULL);
> +				    state->pending_vrefresh, 0,
> +				    cmdq_handle);
>  
>  		state->pending_config = false;
>  	}
> @@ -414,7 +428,8 @@ static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
>  
>  			if (comp)
>  				mtk_ddp_comp_layer_config(comp, local_layer,
> -							  plane_state, NULL);
> +							  plane_state,
> +							  cmdq_handle);
>  			plane_state->pending.config = false;
>  		}
>  		mtk_crtc->pending_planes = false;
> @@ -435,7 +450,8 @@ static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
>  
>  			if (comp)
>  				mtk_ddp_comp_layer_config(comp, local_layer,
> -							  plane_state, NULL);
> +							  plane_state,
> +							  cmdq_handle);
>  			plane_state->pending.async_config = false;
>  		}
>  		mtk_crtc->pending_async_planes = false;
> @@ -444,6 +460,7 @@ static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
>  
>  static void mtk_drm_crtc_hw_config(struct mtk_drm_crtc *mtk_crtc)
>  {
> +	struct cmdq_pkt *cmdq_handle;
>  	struct drm_crtc *crtc = &mtk_crtc->base;
>  	struct mtk_drm_private *priv = crtc->dev->dev_private;
>  	unsigned int pending_planes = 0, pending_async_planes = 0;
> @@ -472,9 +489,18 @@ static void mtk_drm_crtc_hw_config(struct mtk_drm_crtc *mtk_crtc)
>  
>  	if (priv->data->shadow_register) {
>  		mtk_disp_mutex_acquire(mtk_crtc->mutex);
> -		mtk_crtc_ddp_config(crtc);
> +		mtk_crtc_ddp_config(crtc, NULL);
>  		mtk_disp_mutex_release(mtk_crtc->mutex);
>  	}
> +#ifdef CONFIG_MTK_CMDQ
> +	if (mtk_crtc->cmdq_client) {
> +		cmdq_handle = cmdq_pkt_create(mtk_crtc->cmdq_client, PAGE_SIZE);
> +		cmdq_pkt_clear_event(cmdq_handle, mtk_crtc->cmdq_event);
> +		cmdq_pkt_wfe(cmdq_handle, mtk_crtc->cmdq_event);
> +		mtk_crtc_ddp_config(crtc, cmdq_handle);
> +		cmdq_pkt_flush_async(cmdq_handle, ddp_cmdq_cb, cmdq_handle);
> +	}
> +#endif
>  	mutex_unlock(&mtk_crtc->hw_lock);
>  }
>  
> @@ -643,8 +669,8 @@ void mtk_crtc_ddp_irq(struct drm_crtc *crtc, struct mtk_ddp_comp *comp)
>  	struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
>  	struct mtk_drm_private *priv = crtc->dev->dev_private;
>  
> -	if (!priv->data->shadow_register)
> -		mtk_crtc_ddp_config(crtc);
> +	if (!priv->data->shadow_register && !mtk_crtc->cmdq_client)
> +		mtk_crtc_ddp_config(crtc, NULL);
>  
>  	mtk_drm_finish_page_flip(mtk_crtc);
>  }
> @@ -787,5 +813,21 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
>  	priv->num_pipes++;
>  	mutex_init(&mtk_crtc->hw_lock);
>  
> +#ifdef CONFIG_MTK_CMDQ
> +	mtk_crtc->cmdq_client =
> +			cmdq_mbox_create(dev, drm_crtc_index(&mtk_crtc->base),
> +					 2000);
> +	if (IS_ERR(mtk_crtc->cmdq_client)) {
> +		dev_dbg(dev, "mtk_crtc %d failed to create mailbox client, writing register by CPU now\n",
> +			drm_crtc_index(&mtk_crtc->base));
> +		mtk_crtc->cmdq_client = NULL;
> +	}
> +	ret = of_property_read_u32_index(dev->of_node, "mediatek,gce-events",
> +					 drm_crtc_index(&mtk_crtc->base),
> +					 &mtk_crtc->cmdq_event);
> +	if (ret)
> +		dev_dbg(dev, "mtk_crtc %d failed to get mediatek,gce-events property\n",
> +			drm_crtc_index(&mtk_crtc->base));
> +#endif
>  	return 0;
>  }

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
