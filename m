Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F6AA4D21
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 03:36:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QWTKZx2eZLGsX2F6YxL5Ur7oSohu8/gPouNCHcD3qLk=; b=VEvIL4Fva9smjG
	utszkPVUvmGZcWqX+JXRIo0jO5w8yyvxKmnzeQ1ZoXNIgN1goQ8KLW5XYBs0utkoteznRR4MivDKv
	Do7QKOvaLq50F7U34Kpkw5zg2suewAdjobA7ndobODLOedQK4g0FVPpA4Bi3lagoQOP3BeVuT/owY
	hVy0xOsLHsIroWLb2LCm4FwGSx9i+Rcle+h6yC7q4UlAw9OXxBUf3g4RMGccfhqFA2zPLKBW1XRYI
	BoGRqWV4yEyKN9qRlAxJ0Sg+0oSbT3sAur34KoIlHE+0vX1PxclIeBcVGJ+b77x4jDoR0HpEgDLsu
	TL1HZhCTbN7PLMKZn1aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4bGo-0000nf-JQ; Mon, 02 Sep 2019 01:36:38 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4bGa-0000nB-MV; Mon, 02 Sep 2019 01:36:26 +0000
X-UUID: ccb1a5971f6b402c82ef7ad9128ebb42-20190901
X-UUID: ccb1a5971f6b402c82ef7ad9128ebb42-20190901
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1239344221; Sun, 01 Sep 2019 17:36:20 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 1 Sep 2019 18:36:18 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 2 Sep 2019 09:36:18 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 2 Sep 2019 09:36:17 +0800
Message-ID: <1567388175.18937.10.camel@mtksdaap41>
Subject: Re: [PATCH 1/2] drm/mediatek: Support CMDQ interface in ddp component
From: CK Hu <ck.hu@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Mon, 2 Sep 2019 09:36:15 +0800
In-Reply-To: <20190830074103.16671-2-bibby.hsieh@mediatek.com>
References: <20190830074103.16671-1-bibby.hsieh@mediatek.com>
 <20190830074103.16671-2-bibby.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_183624_743896_EF83E48F 
X-CRM114-Status: GOOD (  17.36  )
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
Cc: drinkcat@chromium.org, Yongqiang Niu <yongqiang.niu@mediatek.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 tfiga@chromium.org, YT Shen <yt.shen@mediatek.com>,
 Thierry Reding <thierry.reding@gmail.com>, linux-mediatek@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Bibby:

On Fri, 2019-08-30 at 15:41 +0800, Bibby Hsieh wrote:
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
>  drivers/gpu/drm/mediatek/mtk_disp_ovl.c     |  78 +++++++-------
>  drivers/gpu/drm/mediatek/mtk_disp_rdma.c    |  66 ++++++------
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 110 ++++++++++++++------
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h |  53 ++++++----
>  5 files changed, 187 insertions(+), 127 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_disp_color.c b/drivers/gpu/drm/mediatek/mtk_disp_color.c
> index f33d98b356d6..c5d3e3cf8ad5 100644
> --- a/drivers/gpu/drm/mediatek/mtk_disp_color.c
> +++ b/drivers/gpu/drm/mediatek/mtk_disp_color.c
> @@ -9,6 +9,7 @@
>  #include <linux/of_device.h>
>  #include <linux/of_irq.h>
>  #include <linux/platform_device.h>
> +#include <linux/soc/mediatek/mtk-cmdq.h>
>  
>  #include "mtk_drm_crtc.h"
>  #include "mtk_drm_ddp_comp.h"
> @@ -45,12 +46,12 @@ static inline struct mtk_disp_color *comp_to_color(struct mtk_ddp_comp *comp)
>  
>  static void mtk_color_config(struct mtk_ddp_comp *comp, unsigned int w,
>  			     unsigned int h, unsigned int vrefresh,
> -			     unsigned int bpc)
> +			     unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
>  {
>  	struct mtk_disp_color *color = comp_to_color(comp);
>  
> -	writel(w, comp->regs + DISP_COLOR_WIDTH(color));
> -	writel(h, comp->regs + DISP_COLOR_HEIGHT(color));
> +	mtk_ddp_write(cmdq_pkt, w, comp, DISP_COLOR_WIDTH(color));
> +	mtk_ddp_write(cmdq_pkt, h, comp, DISP_COLOR_HEIGHT(color));
>  }
>  
>  static void mtk_color_start(struct mtk_ddp_comp *comp)
> diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> index 94c80c215c6e..f11c785199d3 100644
> --- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> +++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> @@ -9,6 +9,7 @@
>  #include <linux/of_device.h>
>  #include <linux/of_irq.h>
>  #include <linux/platform_device.h>
> +#include <linux/soc/mediatek/mtk-cmdq.h>
>  
>  #include "mtk_drm_crtc.h"
>  #include "mtk_drm_ddp_comp.h"
> @@ -120,14 +121,15 @@ static void mtk_ovl_stop(struct mtk_ddp_comp *comp)
>  
>  static void mtk_ovl_config(struct mtk_ddp_comp *comp, unsigned int w,
>  			   unsigned int h, unsigned int vrefresh,
> -			   unsigned int bpc)
> +			   unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
>  {
>  	if (w != 0 && h != 0)
> -		writel_relaxed(h << 16 | w, comp->regs + DISP_REG_OVL_ROI_SIZE);
> -	writel_relaxed(0x0, comp->regs + DISP_REG_OVL_ROI_BGCLR);
> +		mtk_ddp_write_relaxed(cmdq_pkt, h << 16 | w, comp,
> +		DISP_REG_OVL_ROI_SIZE);

indent.

> +	mtk_ddp_write_relaxed(cmdq_pkt, 0x0, comp, DISP_REG_OVL_ROI_BGCLR);
>  
> -	writel(0x1, comp->regs + DISP_REG_OVL_RST);
> -	writel(0x0, comp->regs + DISP_REG_OVL_RST);
> +	mtk_ddp_write(cmdq_pkt, 0x1, comp, DISP_REG_OVL_RST);
> +	mtk_ddp_write(cmdq_pkt, 0x0, comp, DISP_REG_OVL_RST);
>  }
>  
>  static unsigned int mtk_ovl_layer_nr(struct mtk_ddp_comp *comp)
> @@ -137,7 +139,8 @@ static unsigned int mtk_ovl_layer_nr(struct mtk_ddp_comp *comp)
>  	return ovl->data->layer_nr;
>  }
>  
> -static void mtk_ovl_layer_on(struct mtk_ddp_comp *comp, unsigned int idx)
> +static void mtk_ovl_layer_on(struct mtk_ddp_comp *comp, unsigned int idx,
> +			     struct cmdq_pkt *cmdq_pkt)
>  {
>  	unsigned int reg;
>  	unsigned int gmc_thrshd_l;
> @@ -145,8 +148,8 @@ static void mtk_ovl_layer_on(struct mtk_ddp_comp *comp, unsigned int idx)
>  	unsigned int gmc_value;
>  	struct mtk_disp_ovl *ovl = comp_to_ovl(comp);
>  
> -	writel(0x1, comp->regs + DISP_REG_OVL_RDMA_CTRL(idx));
> -
> +	mtk_ddp_write(cmdq_pkt, 0x1, comp,
> +		      DISP_REG_OVL_RDMA_CTRL(idx));
>  	gmc_thrshd_l = GMC_THRESHOLD_LOW >>
>  		      (GMC_THRESHOLD_BITS - ovl->data->gmc_bits);
>  	gmc_thrshd_h = GMC_THRESHOLD_HIGH >>
> @@ -156,22 +159,19 @@ static void mtk_ovl_layer_on(struct mtk_ddp_comp *comp, unsigned int idx)
>  	else
>  		gmc_value = gmc_thrshd_l | gmc_thrshd_l << 8 |
>  			    gmc_thrshd_h << 16 | gmc_thrshd_h << 24;
> -	writel(gmc_value, comp->regs + DISP_REG_OVL_RDMA_GMC(idx));
> -
> -	reg = readl(comp->regs + DISP_REG_OVL_SRC_CON);
> -	reg = reg | BIT(idx);
> -	writel(reg, comp->regs + DISP_REG_OVL_SRC_CON);
> +	mtk_ddp_write(cmdq_pkt, gmc_value,
> +		      comp, DISP_REG_OVL_RDMA_GMC(idx));
> +	mtk_ddp_write_mask(cmdq_pkt, BIT(idx), comp,
> +			    DISP_REG_OVL_SRC_CON, BIT(idx));
>  }
>  
> -static void mtk_ovl_layer_off(struct mtk_ddp_comp *comp, unsigned int idx)
> +static void mtk_ovl_layer_off(struct mtk_ddp_comp *comp, unsigned int idx,
> +			      struct cmdq_pkt *cmdq_pkt)
>  {
> -	unsigned int reg;
> -
> -	reg = readl(comp->regs + DISP_REG_OVL_SRC_CON);
> -	reg = reg & ~BIT(idx);
> -	writel(reg, comp->regs + DISP_REG_OVL_SRC_CON);
> -
> -	writel(0x0, comp->regs + DISP_REG_OVL_RDMA_CTRL(idx));
> +	mtk_ddp_write_mask(cmdq_pkt, 0, comp,
> +			    DISP_REG_OVL_SRC_CON, BIT(idx));
> +	mtk_ddp_write(cmdq_pkt, 0, comp,
> +		       DISP_REG_OVL_RDMA_CTRL(idx));
>  }
>  
>  static unsigned int ovl_fmt_convert(struct mtk_disp_ovl *ovl, unsigned int fmt)
> @@ -211,7 +211,8 @@ static unsigned int ovl_fmt_convert(struct mtk_disp_ovl *ovl, unsigned int fmt)
>  }
>  
>  static void mtk_ovl_layer_config(struct mtk_ddp_comp *comp, unsigned int idx,
> -				 struct mtk_plane_state *state)
> +				 struct mtk_plane_state *state,
> +				 struct cmdq_pkt *cmdq_pkt)
>  {
>  	struct mtk_disp_ovl *ovl = comp_to_ovl(comp);
>  	struct mtk_plane_pending_state *pending = &state->pending;
> @@ -223,38 +224,37 @@ static void mtk_ovl_layer_config(struct mtk_ddp_comp *comp, unsigned int idx,
>  	unsigned int con;
>  
>  	if (!pending->enable)
> -		mtk_ovl_layer_off(comp, idx);
> +		mtk_ovl_layer_off(comp, idx, cmdq_pkt);
>  
>  	con = ovl_fmt_convert(ovl, fmt);
>  	if (idx != 0)
>  		con |= OVL_CON_AEN | OVL_CON_ALPHA;
>  
> -	writel_relaxed(con, comp->regs + DISP_REG_OVL_CON(idx));
> -	writel_relaxed(pitch, comp->regs + DISP_REG_OVL_PITCH(idx));
> -	writel_relaxed(src_size, comp->regs + DISP_REG_OVL_SRC_SIZE(idx));
> -	writel_relaxed(offset, comp->regs + DISP_REG_OVL_OFFSET(idx));
> -	writel_relaxed(addr, comp->regs + DISP_REG_OVL_ADDR(ovl, idx));
> +	mtk_ddp_write_relaxed(cmdq_pkt, con, comp,
> +			      DISP_REG_OVL_CON(idx));
> +	mtk_ddp_write_relaxed(cmdq_pkt, pitch, comp,
> +			      DISP_REG_OVL_PITCH(idx));
> +	mtk_ddp_write_relaxed(cmdq_pkt, src_size, comp,
> +			      DISP_REG_OVL_SRC_SIZE(idx));
> +	mtk_ddp_write_relaxed(cmdq_pkt, offset, comp,
> +			      DISP_REG_OVL_OFFSET(idx));
> +	mtk_ddp_write_relaxed(cmdq_pkt, addr, comp,
> +			      DISP_REG_OVL_ADDR(ovl, idx));
>  
>  	if (pending->enable)
> -		mtk_ovl_layer_on(comp, idx);
> +		mtk_ovl_layer_on(comp, idx, cmdq_pkt);
>  }
>  
>  static void mtk_ovl_bgclr_in_on(struct mtk_ddp_comp *comp)
>  {
> -	unsigned int reg;
> -
> -	reg = readl(comp->regs + DISP_REG_OVL_DATAPATH_CON);
> -	reg = reg | OVL_BGCLR_SEL_IN;
> -	writel(reg, comp->regs + DISP_REG_OVL_DATAPATH_CON);
> +	mtk_ddp_write_mask(NULL, OVL_BGCLR_SEL_IN, comp,
> +			   DISP_REG_OVL_DATAPATH_CON, OVL_BGCLR_SEL_IN);

If the first parameter is NULL, why do you modify this?

>  }
>  
>  static void mtk_ovl_bgclr_in_off(struct mtk_ddp_comp *comp)
>  {
> -	unsigned int reg;
> -
> -	reg = readl(comp->regs + DISP_REG_OVL_DATAPATH_CON);
> -	reg = reg & ~OVL_BGCLR_SEL_IN;
> -	writel(reg, comp->regs + DISP_REG_OVL_DATAPATH_CON);
> +	mtk_ddp_write_mask(NULL, 0, comp,
> +			   DISP_REG_OVL_DATAPATH_CON, OVL_BGCLR_SEL_IN);

Ditto.

>  }
>  
>  static const struct mtk_ddp_comp_funcs mtk_disp_ovl_funcs = {
> diff --git a/drivers/gpu/drm/mediatek/mtk_disp_rdma.c b/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
> index 24945fec00b1..6df372dac3e3 100644
> --- a/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
> +++ b/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
> @@ -9,6 +9,7 @@
>  #include <linux/of_device.h>
>  #include <linux/of_irq.h>
>  #include <linux/platform_device.h>
> +#include <linux/soc/mediatek/mtk-cmdq.h>
>  
>  #include "mtk_drm_crtc.h"
>  #include "mtk_drm_ddp_comp.h"
> @@ -86,23 +87,14 @@ static irqreturn_t mtk_disp_rdma_irq_handler(int irq, void *dev_id)
>  	return IRQ_HANDLED;
>  }
>  
> -static void rdma_update_bits(struct mtk_ddp_comp *comp, unsigned int reg,
> -			     unsigned int mask, unsigned int val)
> -{
> -	unsigned int tmp = readl(comp->regs + reg);
> -
> -	tmp = (tmp & ~mask) | (val & mask);
> -	writel(tmp, comp->regs + reg);
> -}
> -
>  static void mtk_rdma_enable_vblank(struct mtk_ddp_comp *comp,
>  				   struct drm_crtc *crtc)
>  {
>  	struct mtk_disp_rdma *rdma = comp_to_rdma(comp);
>  
>  	rdma->crtc = crtc;
> -	rdma_update_bits(comp, DISP_REG_RDMA_INT_ENABLE, RDMA_FRAME_END_INT,
> -			 RDMA_FRAME_END_INT);
> +	mtk_ddp_write_mask(NULL, RDMA_FRAME_END_INT, comp,
> +			   DISP_REG_RDMA_INT_ENABLE, RDMA_FRAME_END_INT);

Ditto.

>  }
>  
>  static void mtk_rdma_disable_vblank(struct mtk_ddp_comp *comp)
> @@ -110,31 +102,35 @@ static void mtk_rdma_disable_vblank(struct mtk_ddp_comp *comp)
>  	struct mtk_disp_rdma *rdma = comp_to_rdma(comp);
>  
>  	rdma->crtc = NULL;
> -	rdma_update_bits(comp, DISP_REG_RDMA_INT_ENABLE, RDMA_FRAME_END_INT, 0);
> +	mtk_ddp_write_mask(NULL, 0, comp,
> +			   DISP_REG_RDMA_INT_ENABLE, RDMA_FRAME_END_INT);

Ditto.

>  }
>  
>  static void mtk_rdma_start(struct mtk_ddp_comp *comp)
>  {
> -	rdma_update_bits(comp, DISP_REG_RDMA_GLOBAL_CON, RDMA_ENGINE_EN,
> -			 RDMA_ENGINE_EN);
> +	mtk_ddp_write_mask(NULL, RDMA_ENGINE_EN, comp,
> +			   DISP_REG_RDMA_GLOBAL_CON, RDMA_ENGINE_EN);

Ditto.

>  }
>  
>  static void mtk_rdma_stop(struct mtk_ddp_comp *comp)
>  {
> -	rdma_update_bits(comp, DISP_REG_RDMA_GLOBAL_CON, RDMA_ENGINE_EN, 0);
> +	mtk_ddp_write_mask(NULL, 0, comp,
> +			   DISP_REG_RDMA_GLOBAL_CON, RDMA_ENGINE_EN);

Ditto.

Regards,
CK

>  }
>  
>  static void mtk_rdma_config(struct mtk_ddp_comp *comp, unsigned int width,
>  			    unsigned int height, unsigned int vrefresh,
> -			    unsigned int bpc)
> +			    unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
>  {
>  	unsigned int threshold;
>  	unsigned int reg;
>  	struct mtk_disp_rdma *rdma = comp_to_rdma(comp);
>  	u32 rdma_fifo_size;
>  
> -	rdma_update_bits(comp, DISP_REG_RDMA_SIZE_CON_0, 0xfff, width);
> -	rdma_update_bits(comp, DISP_REG_RDMA_SIZE_CON_1, 0xfffff, height);
> +	mtk_ddp_write_mask(cmdq_pkt, width, comp,
> +			    DISP_REG_RDMA_SIZE_CON_0, 0xfff);
> +	mtk_ddp_write_mask(cmdq_pkt, height, comp,
> +			    DISP_REG_RDMA_SIZE_CON_1, 0xfffff);
>  
>  	if (rdma->fifo_size)
>  		rdma_fifo_size = rdma->fifo_size;
> @@ -151,7 +147,7 @@ static void mtk_rdma_config(struct mtk_ddp_comp *comp, unsigned int width,
>  	reg = RDMA_FIFO_UNDERFLOW_EN |
>  	      RDMA_FIFO_PSEUDO_SIZE(rdma_fifo_size) |
>  	      RDMA_OUTPUT_VALID_FIFO_THRESHOLD(threshold);
> -	writel(reg, comp->regs + DISP_REG_RDMA_FIFO_CON);
> +	mtk_ddp_write(cmdq_pkt, reg, comp, DISP_REG_RDMA_FIFO_CON);
>  }
>  


> +			   struct mtk_ddp_comp *comp, unsigned int offset);
> +void mtk_ddp_write_mask(struct cmdq_pkt *cmdq_pkt, unsigned int value,
> +			struct mtk_ddp_comp *comp, unsigned int offset,
> +			unsigned int mask);
>  #endif /* MTK_DRM_DDP_COMP_H */



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
