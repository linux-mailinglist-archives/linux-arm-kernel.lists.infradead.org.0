Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CB8210F568
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 04:06:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZNw3l2bX0nfwQFlrHayj9lcFz/H8l+64tS2Jiif39Eg=; b=AmDDbGzyfLEItu
	T9J3mybockV6JNsv7cz85pSpB5OVTo5ERDwjEb+l+cjr4izydl4OgH1JHg9t06O6j058qrK1LlG8E
	ox+CQMrzHIbe/TEiPfOo7pJEz8wzSFPUA670waMrbrBjjpsB5kYtdkL5C6Gcm9hdBZ+Qy2Pplux4u
	rl3g7SfX49s9X6kNhGBf7S6+QLRDR2ncL9eVwVyfene9bvP/+2ip6OVaDXJNqlGM0tPWHHX2M3jMr
	83r/4dQKwft6X0FhlRaYyjUOl3efNQdkI5GWW9s5U/nZ1bhLgMGKqvUJznYEyMJUQsGSNT/AIabCX
	mEbB6jrzqeQaEb9aynLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibyW9-0006Lb-Tf; Tue, 03 Dec 2019 03:06:25 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibyW1-0006Kj-Uv; Tue, 03 Dec 2019 03:06:20 +0000
X-UUID: 5807c51f2ef742dd9e46b507ba9e60ec-20191202
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=WbuStjV9RqL/lNhT3KcEaQtDIheHeoMGleNxkBNRQcM=; 
 b=lctfpE716ICBMPR8jpEJhYGdRquH1G2XiWCWDahu1a41ReYeYORvnmlVn2dMAdJYpo+m6y/9eRKDfw6+n2I//1EZQe2CNcjrCNOxhfB+XYfehUyy6KloKaVF8Lr4InKYMyvQFZjQKsJ8cf3UTmcU8msaFvq5M+ZchyDonCQGaQM=;
X-UUID: 5807c51f2ef742dd9e46b507ba9e60ec-20191202
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 608711536; Mon, 02 Dec 2019 19:06:13 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 2 Dec 2019 18:56:53 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Dec 2019 10:55:24 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 3 Dec 2019 10:56:45 +0800
Message-ID: <1575341763.19788.3.camel@mtksdaap41>
Subject: Re: [PATCH v1 5/6] drm/mediatek: support CMDQ interface in ddp
 component
From: CK Hu <ck.hu@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Tue, 3 Dec 2019 10:56:03 +0800
In-Reply-To: <20191128024238.9399-6-bibby.hsieh@mediatek.com>
References: <20191128024238.9399-1-bibby.hsieh@mediatek.com>
 <20191128024238.9399-6-bibby.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: F4B85E6EDEF300A7A86BFC992C143BAD71BEFFB95CAEA01CD399E2B279F860CF2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_190618_017802_65CDA48A 
X-CRM114-Status: GOOD (  19.07  )
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

On Thu, 2019-11-28 at 10:42 +0800, Bibby Hsieh wrote:
> The CMDQ (Command Queue) in MT8183 is used to help
> update all relevant display controller registers
> with critical time limation.
> This patch add cmdq interface in ddp_comp interface,
> let all ddp_comp interface can support cpu/cmdq function
> at the same time.
> 
> Signed-off-by: YT Shen <yt.shen@mediatek.com>
> Signed-off-by: CK Hu <ck.hu@mediatek.com>
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_disp_color.c   |   7 +-
>  drivers/gpu/drm/mediatek/mtk_disp_ovl.c     |  65 ++++++-----
>  drivers/gpu/drm/mediatek/mtk_disp_rdma.c    |  43 ++++---
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c     |  11 +-
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 120 ++++++++++++++------
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h |  55 ++++++---
>  6 files changed, 190 insertions(+), 111 deletions(-)
> 

[snip]

>  
>  static const struct mtk_ddp_comp_funcs mtk_disp_rdma_funcs = {
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> index b26b7a98587b..fcf4e755e0bd 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> @@ -304,7 +304,7 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
>  		if (prev == DDP_COMPONENT_OVL0)
>  			mtk_ddp_comp_bgclr_in_on(comp);
>  
> -		mtk_ddp_comp_config(comp, width, height, vrefresh, bpc);
> +		mtk_ddp_comp_config(comp, width, height, vrefresh, bpc, NULL);
>  		mtk_ddp_comp_start(comp);
>  	}
>  
> @@ -319,7 +319,7 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
>  		comp = mtk_drm_ddp_comp_for_plane(crtc, plane, &local_layer);
>  		if (comp)
>  			mtk_ddp_comp_layer_config(comp, local_layer,
> -						  plane_state);
> +						  plane_state, NULL);
>  	}
>  
>  	return 0;
> @@ -383,7 +383,7 @@ static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
>  	if (state->pending_config) {
>  		mtk_ddp_comp_config(comp, state->pending_width,
>  				    state->pending_height,
> -				    state->pending_vrefresh, 0);
> +				    state->pending_vrefresh, 0, NULL);
>  
>  		state->pending_config = false;
>  	}
> @@ -403,7 +403,7 @@ static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
>  
>  			if (comp)
>  				mtk_ddp_comp_layer_config(comp, local_layer,
> -							  plane_state);
> +							  plane_state, NULL);
>  			plane_state->pending.config = false;
>  		}
>  		mtk_crtc->pending_planes = false;
> @@ -562,7 +562,8 @@ static void mtk_drm_crtc_atomic_flush(struct drm_crtc *crtc,
>  		mtk_crtc->pending_planes = true;
>  	if (crtc->state->color_mgmt_changed)
>  		for (i = 0; i < mtk_crtc->ddp_comp_nr; i++)
> -			mtk_ddp_gamma_set(mtk_crtc->ddp_comp[i], crtc->state);
> +			mtk_ddp_gamma_set(mtk_crtc->ddp_comp[i],
> +					  crtc->state, NULL);

If gamm_set is always with NULL packet, I think you need not to change
the interface of gamma_set.

Regards,
CK

>  
>  	if (priv->data->shadow_register) {
>  		mtk_disp_mutex_acquire(mtk_crtc->mutex);
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> index 3407d38aff8f..6d0f349ddf82 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> @@ -12,7 +12,8 @@
>  #include <linux/of_irq.h>
>  #include <linux/of_platform.h>
>  #include <linux/platform_device.h>
> -
> +#include <drm/drmP.h>
> +#include <linux/soc/mediatek/mtk-cmdq.h>
>  #include "mtk_drm_drv.h"
>  #include "mtk_drm_plane.h"
>  #include "mtk_drm_ddp_comp.h"
> @@ -76,36 +77,82 @@
>  #define DITHER_ADD_LSHIFT_G(x)			(((x) & 0x7) << 4)
>  #define DITHER_ADD_RSHIFT_G(x)			(((x) & 0x7) << 0)
>  
> +void mtk_ddp_write(struct cmdq_pkt *cmdq_pkt, unsigned int value,
> +		   struct mtk_ddp_comp *comp, unsigned int offset)
> +{
> +	if (cmdq_pkt)
> +#ifdef CONFIG_MTK_CMDQ
> +		cmdq_pkt_write(cmdq_pkt, comp->subsys,
> +			       comp->regs_pa + offset, value);
> +#endif
> +	else
> +		writel(value, comp->regs + offset);
> +}
> +
> +void mtk_ddp_write_relaxed(struct cmdq_pkt *cmdq_pkt, unsigned int value,
> +			   struct mtk_ddp_comp *comp,
> +			   unsigned int offset)
> +{
> +	if (cmdq_pkt)
> +#ifdef CONFIG_MTK_CMDQ
> +		cmdq_pkt_write(cmdq_pkt, comp->subsys,
> +			       comp->regs_pa + offset, value);
> +#endif
> +	else
> +		writel_relaxed(value, comp->regs + offset);
> +}
> +
> +void mtk_ddp_write_mask(struct cmdq_pkt *cmdq_pkt,
> +			unsigned int value,
> +			struct mtk_ddp_comp *comp,
> +			unsigned int offset,
> +			unsigned int mask)
> +{
> +	if (cmdq_pkt) {
> +#ifdef CONFIG_MTK_CMDQ
> +		cmdq_pkt_write_mask(cmdq_pkt, comp->subsys,
> +				    comp->regs_pa + offset, value, mask);
> +#endif
> +	} else {
> +		u32 tmp = readl(comp->regs + offset);
> +
> +		tmp = (tmp & ~mask) | (value & mask);
> +		writel(tmp, comp->regs + offset);
> +	}
> +}
> +
>  void mtk_dither_set(struct mtk_ddp_comp *comp, unsigned int bpc,
> -		    unsigned int CFG)
> +		    unsigned int CFG, struct cmdq_pkt *cmdq_pkt)
>  {
>  	/* If bpc equal to 0, the dithering function didn't be enabled */
>  	if (bpc == 0)
>  		return;
>  
>  	if (bpc >= MTK_MIN_BPC) {
> -		writel(0, comp->regs + DISP_DITHER_5);
> -		writel(0, comp->regs + DISP_DITHER_7);
> -		writel(DITHER_LSB_ERR_SHIFT_R(MTK_MAX_BPC - bpc) |
> -		       DITHER_ADD_LSHIFT_R(MTK_MAX_BPC - bpc) |
> -		       DITHER_NEW_BIT_MODE,
> -		       comp->regs + DISP_DITHER_15);
> -		writel(DITHER_LSB_ERR_SHIFT_B(MTK_MAX_BPC - bpc) |
> -		       DITHER_ADD_LSHIFT_B(MTK_MAX_BPC - bpc) |
> -		       DITHER_LSB_ERR_SHIFT_G(MTK_MAX_BPC - bpc) |
> -		       DITHER_ADD_LSHIFT_G(MTK_MAX_BPC - bpc),
> -		       comp->regs + DISP_DITHER_16);
> -		writel(DISP_DITHERING, comp->regs + CFG);
> +		mtk_ddp_write(cmdq_pkt, 0, comp, DISP_DITHER_5);
> +		mtk_ddp_write(cmdq_pkt, 0, comp, DISP_DITHER_7);
> +		mtk_ddp_write(cmdq_pkt,
> +			      DITHER_LSB_ERR_SHIFT_R(MTK_MAX_BPC - bpc) |
> +			      DITHER_ADD_LSHIFT_R(MTK_MAX_BPC - bpc) |
> +			      DITHER_NEW_BIT_MODE,
> +			      comp, DISP_DITHER_15);
> +		mtk_ddp_write(cmdq_pkt,
> +			      DITHER_LSB_ERR_SHIFT_B(MTK_MAX_BPC - bpc) |
> +			      DITHER_ADD_LSHIFT_B(MTK_MAX_BPC - bpc) |
> +			      DITHER_LSB_ERR_SHIFT_G(MTK_MAX_BPC - bpc) |
> +			      DITHER_ADD_LSHIFT_G(MTK_MAX_BPC - bpc),
> +			      comp, DISP_DITHER_16);
> +		mtk_ddp_write(cmdq_pkt, DISP_DITHERING, comp, CFG);
>  	}
>  }
>  
>  static void mtk_od_config(struct mtk_ddp_comp *comp, unsigned int w,
>  			  unsigned int h, unsigned int vrefresh,
> -			  unsigned int bpc)
> +			  unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
>  {
> -	writel(w << 16 | h, comp->regs + DISP_OD_SIZE);
> -	writel(OD_RELAYMODE, comp->regs + DISP_OD_CFG);
> -	mtk_dither_set(comp, bpc, DISP_OD_CFG);
> +	mtk_ddp_write(cmdq_pkt, w << 16 | h, comp, DISP_OD_SIZE);
> +	mtk_ddp_write(cmdq_pkt, OD_RELAYMODE, comp, DISP_OD_CFG);
> +	mtk_dither_set(comp, bpc, DISP_OD_CFG, cmdq_pkt);
>  }
>  
>  static void mtk_od_start(struct mtk_ddp_comp *comp)
> @@ -120,9 +167,9 @@ static void mtk_ufoe_start(struct mtk_ddp_comp *comp)
>  
>  static void mtk_aal_config(struct mtk_ddp_comp *comp, unsigned int w,
>  			   unsigned int h, unsigned int vrefresh,
> -			   unsigned int bpc)
> +			   unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
>  {
> -	writel(h << 16 | w, comp->regs + DISP_AAL_SIZE);
> +	mtk_ddp_write(cmdq_pkt, h << 16 | w, comp, DISP_AAL_SIZE);
>  }
>  
>  static void mtk_aal_start(struct mtk_ddp_comp *comp)
> @@ -137,10 +184,10 @@ static void mtk_aal_stop(struct mtk_ddp_comp *comp)
>  
>  static void mtk_ccorr_config(struct mtk_ddp_comp *comp, unsigned int w,
>  			     unsigned int h, unsigned int vrefresh,
> -			     unsigned int bpc)
> +			     unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
>  {
> -	writel(h << 16 | w, comp->regs + DISP_CCORR_SIZE);
> -	writel(CCORR_RELAY_MODE, comp->regs + DISP_CCORR_CFG);
> +	mtk_ddp_write(cmdq_pkt, h << 16 | w, comp, DISP_CCORR_SIZE);
> +	mtk_ddp_write(cmdq_pkt, CCORR_RELAY_MODE, comp, DISP_CCORR_CFG);
>  }
>  
>  static void mtk_ccorr_start(struct mtk_ddp_comp *comp)
> @@ -155,10 +202,10 @@ static void mtk_ccorr_stop(struct mtk_ddp_comp *comp)
>  
>  static void mtk_dither_config(struct mtk_ddp_comp *comp, unsigned int w,
>  			      unsigned int h, unsigned int vrefresh,
> -			      unsigned int bpc)
> +			      unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
>  {
> -	writel(h << 16 | w, comp->regs + DISP_DITHER_SIZE);
> -	writel(DITHER_RELAY_MODE, comp->regs + DISP_DITHER_CFG);
> +	mtk_ddp_write(cmdq_pkt, h << 16 | w, comp, DISP_DITHER_SIZE);
> +	mtk_ddp_write(cmdq_pkt, DITHER_RELAY_MODE, comp, DISP_DITHER_CFG);
>  }
>  
>  static void mtk_dither_start(struct mtk_ddp_comp *comp)
> @@ -173,10 +220,10 @@ static void mtk_dither_stop(struct mtk_ddp_comp *comp)
>  
>  static void mtk_gamma_config(struct mtk_ddp_comp *comp, unsigned int w,
>  			     unsigned int h, unsigned int vrefresh,
> -			     unsigned int bpc)
> +			     unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
>  {
> -	writel(h << 16 | w, comp->regs + DISP_GAMMA_SIZE);
> -	mtk_dither_set(comp, bpc, DISP_GAMMA_CFG);
> +	mtk_ddp_write(cmdq_pkt, h << 16 | w, comp, DISP_GAMMA_SIZE);
> +	mtk_dither_set(comp, bpc, DISP_GAMMA_CFG, cmdq_pkt);
>  }
>  
>  static void mtk_gamma_start(struct mtk_ddp_comp *comp)
> @@ -190,24 +237,23 @@ static void mtk_gamma_stop(struct mtk_ddp_comp *comp)
>  }
>  
>  static void mtk_gamma_set(struct mtk_ddp_comp *comp,
> -			  struct drm_crtc_state *state)
> +			  struct drm_crtc_state *state,
> +			  struct cmdq_pkt *cmdq_pkt)
>  {
> -	unsigned int i, reg;
> +	unsigned int i;
>  	struct drm_color_lut *lut;
> -	void __iomem *lut_base;
>  	u32 word;
>  
>  	if (state->gamma_lut) {
> -		reg = readl(comp->regs + DISP_GAMMA_CFG);
> -		reg = reg | GAMMA_LUT_EN;
> -		writel(reg, comp->regs + DISP_GAMMA_CFG);
> -		lut_base = comp->regs + DISP_GAMMA_LUT;
> +		mtk_ddp_write_mask(cmdq_pkt, GAMMA_LUT_EN, comp,
> +				   DISP_GAMMA_CFG, GAMMA_LUT_EN);
>  		lut = (struct drm_color_lut *)state->gamma_lut->data;
>  		for (i = 0; i < MTK_LUT_SIZE; i++) {
>  			word = (((lut[i].red >> 6) & LUT_10BIT_MASK) << 20) +
>  				(((lut[i].green >> 6) & LUT_10BIT_MASK) << 10) +
>  				((lut[i].blue >> 6) & LUT_10BIT_MASK);
> -			writel(word, (lut_base + i * 4));
> +			mtk_ddp_write(cmdq_pkt, word, comp,
> +				      DISP_GAMMA_LUT + i * 4);
>  		}
>  	}
>  }
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> index ec55c7488cc3..5b0a3d48dfa6 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> @@ -69,25 +69,30 @@ enum mtk_ddp_comp_id {
>  };
>  
>  struct mtk_ddp_comp;
> -
> +struct cmdq_pkt;
>  struct mtk_ddp_comp_funcs {
>  	void (*config)(struct mtk_ddp_comp *comp, unsigned int w,
> -		       unsigned int h, unsigned int vrefresh, unsigned int bpc);
> +		       unsigned int h, unsigned int vrefresh,
> +		       unsigned int bpc, struct cmdq_pkt *cmdq_pkt);
>  	void (*start)(struct mtk_ddp_comp *comp);
>  	void (*stop)(struct mtk_ddp_comp *comp);
>  	void (*enable_vblank)(struct mtk_ddp_comp *comp, struct drm_crtc *crtc);
>  	void (*disable_vblank)(struct mtk_ddp_comp *comp);
>  	unsigned int (*supported_rotations)(struct mtk_ddp_comp *comp);
>  	unsigned int (*layer_nr)(struct mtk_ddp_comp *comp);
> -	void (*layer_on)(struct mtk_ddp_comp *comp, unsigned int idx);
> -	void (*layer_off)(struct mtk_ddp_comp *comp, unsigned int idx);
> +	void (*layer_on)(struct mtk_ddp_comp *comp, unsigned int idx,
> +			 struct cmdq_pkt *cmdq_pkt);
> +	void (*layer_off)(struct mtk_ddp_comp *comp, unsigned int idx,
> +			  struct cmdq_pkt *cmdq_pkt);
>  	int (*layer_check)(struct mtk_ddp_comp *comp,
>  			   unsigned int idx,
>  			   struct mtk_plane_state *state);
>  	void (*layer_config)(struct mtk_ddp_comp *comp, unsigned int idx,
> -			     struct mtk_plane_state *state);
> +			     struct mtk_plane_state *state,
> +			     struct cmdq_pkt *cmdq_pkt);
>  	void (*gamma_set)(struct mtk_ddp_comp *comp,
> -			  struct drm_crtc_state *state);
> +			  struct drm_crtc_state *state,
> +			  struct cmdq_pkt *cmdq_pkt);
>  	void (*bgclr_in_on)(struct mtk_ddp_comp *comp);
>  	void (*bgclr_in_off)(struct mtk_ddp_comp *comp);
>  };
> @@ -99,14 +104,17 @@ struct mtk_ddp_comp {
>  	struct device *dev;
>  	enum mtk_ddp_comp_id id;
>  	const struct mtk_ddp_comp_funcs *funcs;
> +	resource_size_t regs_pa;
> +	u8 subsys;
>  };
>  
>  static inline void mtk_ddp_comp_config(struct mtk_ddp_comp *comp,
>  				       unsigned int w, unsigned int h,
> -				       unsigned int vrefresh, unsigned int bpc)
> +				       unsigned int vrefresh, unsigned int bpc,
> +				       struct cmdq_pkt *cmdq_pkt)
>  {
>  	if (comp->funcs && comp->funcs->config)
> -		comp->funcs->config(comp, w, h, vrefresh, bpc);
> +		comp->funcs->config(comp, w, h, vrefresh, bpc, cmdq_pkt);
>  }
>  
>  static inline void mtk_ddp_comp_start(struct mtk_ddp_comp *comp)
> @@ -152,17 +160,19 @@ static inline unsigned int mtk_ddp_comp_layer_nr(struct mtk_ddp_comp *comp)
>  }
>  
>  static inline void mtk_ddp_comp_layer_on(struct mtk_ddp_comp *comp,
> -					 unsigned int idx)
> +					 unsigned int idx,
> +					 struct cmdq_pkt *cmdq_pkt)
>  {
>  	if (comp->funcs && comp->funcs->layer_on)
> -		comp->funcs->layer_on(comp, idx);
> +		comp->funcs->layer_on(comp, idx, cmdq_pkt);
>  }
>  
>  static inline void mtk_ddp_comp_layer_off(struct mtk_ddp_comp *comp,
> -					  unsigned int idx)
> +					  unsigned int idx,
> +					  struct cmdq_pkt *cmdq_pkt)
>  {
>  	if (comp->funcs && comp->funcs->layer_off)
> -		comp->funcs->layer_off(comp, idx);
> +		comp->funcs->layer_off(comp, idx, cmdq_pkt);
>  }
>  
>  static inline int mtk_ddp_comp_layer_check(struct mtk_ddp_comp *comp,
> @@ -176,17 +186,19 @@ static inline int mtk_ddp_comp_layer_check(struct mtk_ddp_comp *comp,
>  
>  static inline void mtk_ddp_comp_layer_config(struct mtk_ddp_comp *comp,
>  					     unsigned int idx,
> -					     struct mtk_plane_state *state)
> +					     struct mtk_plane_state *state,
> +					     struct cmdq_pkt *cmdq_pkt)
>  {
>  	if (comp->funcs && comp->funcs->layer_config)
> -		comp->funcs->layer_config(comp, idx, state);
> +		comp->funcs->layer_config(comp, idx, state, cmdq_pkt);
>  }
>  
>  static inline void mtk_ddp_gamma_set(struct mtk_ddp_comp *comp,
> -				     struct drm_crtc_state *state)
> +				     struct drm_crtc_state *state,
> +				     struct cmdq_pkt *cmdq_pkt)
>  {
>  	if (comp->funcs && comp->funcs->gamma_set)
> -		comp->funcs->gamma_set(comp, state);
> +		comp->funcs->gamma_set(comp, state, cmdq_pkt);
>  }
>  
>  static inline void mtk_ddp_comp_bgclr_in_on(struct mtk_ddp_comp *comp)
> @@ -209,6 +221,13 @@ int mtk_ddp_comp_init(struct device *dev, struct device_node *comp_node,
>  int mtk_ddp_comp_register(struct drm_device *drm, struct mtk_ddp_comp *comp);
>  void mtk_ddp_comp_unregister(struct drm_device *drm, struct mtk_ddp_comp *comp);
>  void mtk_dither_set(struct mtk_ddp_comp *comp, unsigned int bpc,
> -		    unsigned int CFG);
> -
> +		    unsigned int CFG, struct cmdq_pkt *cmdq_pkt);
> +enum mtk_ddp_comp_type mtk_ddp_comp_get_type(enum mtk_ddp_comp_id comp_id);
> +void mtk_ddp_write(struct cmdq_pkt *cmdq_pkt, unsigned int value,
> +		   struct mtk_ddp_comp *comp, unsigned int offset);
> +void mtk_ddp_write_relaxed(struct cmdq_pkt *cmdq_pkt, unsigned int value,
> +			   struct mtk_ddp_comp *comp, unsigned int offset);
> +void mtk_ddp_write_mask(struct cmdq_pkt *cmdq_pkt, unsigned int value,
> +			struct mtk_ddp_comp *comp, unsigned int offset,
> +			unsigned int mask);
>  #endif /* MTK_DRM_DDP_COMP_H */

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
