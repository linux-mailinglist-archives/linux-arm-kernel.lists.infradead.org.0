Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD6E10F6EE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 06:20:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MBcD3bNiW+zxbDWmHsQbtb4bQbvxgZCA4055DWVsWnQ=; b=CnEDhUB8X7xNmQ
	SjMJVRQAB3Ya472OvT5WJ3aEu2T8+EJ1GDNvvXTxLkj1DpJH8JBDFKARd2iNor79iWKbKRiIOxpbm
	dRa5R/uQWLmyH9urilDFYQPG2WxbIXivE5cRDXLIFDH0CJsY9Yz82x0LetE9aeYzH19VSzXbeekRt
	/tqcHD8s9EDCJjgos+NnJ5kwrj8cSncec8x1aC+Zjso3HMtfQIBUaLUa/Utcgh5c8HO0oz1keMfUi
	q4M2KSr0CR2SVvFHAJVLMqg1YbCjOdkrviqbwpOR6HDAcyruRU0e3HZQP9KUBjwB51cAkhRJJv+gR
	hy1hEeJ8tYYx5OJAxZgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic0c5-0003bg-J5; Tue, 03 Dec 2019 05:20:41 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic0bl-0003Pb-PE; Tue, 03 Dec 2019 05:20:23 +0000
X-UUID: fb7964764351465bbb1b4289d50576fd-20191202
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=NgsysKXbS5nlDOD3N4g0hN4iMinhHgqdb3oRzZLJHmA=; 
 b=LnApxK2ZNDZdG0RU7npCaFrBisXrUbPhSb6Npf/hRTDIDjcuhjthLEhRMZarOBeUMCmRNz28qiE20zM9p0JRn4UHRKZeFNZZ4Cqe3YMHX3RbwauAotmcuSJh1eI3OH5jGURQ9noK7RqhpUZVHtJV2f3pYoO1cUcwgfT6H4sqp/4=;
X-UUID: fb7964764351465bbb1b4289d50576fd-20191202
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1558830226; Mon, 02 Dec 2019 21:20:15 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 2 Dec 2019 21:20:24 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Dec 2019 13:19:17 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 3 Dec 2019 13:19:52 +0800
Message-ID: <1575350410.31483.5.camel@mtksdaap41>
Subject: Re: [PATCH v2] drm/mediatek: add ctm property support
From: CK Hu <ck.hu@mediatek.com>
To: <yongqiang.niu@mediatek.com>
Date: Tue, 3 Dec 2019 13:20:10 +0800
In-Reply-To: <1575277423-31182-1-git-send-email-yongqiang.niu@mediatek.com>
References: <1575277423-31182-1-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 91EF239877E5336093CDE7FE8F20BECC4E7AD49A185B12DDB0DBD8016543D4DC2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_212021_865336_3E450BF4 
X-CRM114-Status: GOOD (  20.88  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Yongqiang:

On Mon, 2019-12-02 at 17:03 +0800, yongqiang.niu@mediatek.com wrote:
> From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> 
> add ctm property support
> 
> Change-Id: I8111da7b309b1809c6302e7748dd9fd06dc97bde

Remove this Change-Id.

> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c     | 15 ++++++-
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 61 ++++++++++++++++++++++++++++-
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h | 11 ++++++
>  3 files changed, 84 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> index 4fb346c..12dc684 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> @@ -666,10 +666,13 @@ static void mtk_drm_crtc_atomic_flush(struct drm_crtc *crtc,
>  	int i;
>  
>  	if (crtc->state->color_mgmt_changed)
> -		for (i = 0; i < mtk_crtc->ddp_comp_nr; i++)
> +		for (i = 0; i < mtk_crtc->ddp_comp_nr; i++) {
>  			mtk_ddp_gamma_set(mtk_crtc->ddp_comp[i],
>  					  crtc->state,
>  					  mtk_crtc_state->cmdq_handle);
> +			mtk_ddp_ctm_set(mtk_crtc->ddp_comp[i], crtc->state);

Sorry, I'm not noticed that the code here would not write register in
vblank period. If ctm could be set out of vblank period, place the code
here and do not need to support cmdq. If ctm should be set inside vblank
period, move the code to mtk_crtc_ddp_config() and support cmdq
interface.

> +		}
> +
>  #ifdef CONFIG_MTK_CMDQ
>  	if (mtk_crtc->cmdq_client) {
>  		drm_atomic_state_get(old_atomic_state);
> @@ -819,6 +822,8 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
>  	int pipe = priv->num_pipes;
>  	int ret;
>  	int i;
> +	bool has_ctm = false;
> +	uint gamma_lut_size = 0;
>  
>  	if (!path)
>  		return 0;
> @@ -870,6 +875,12 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
>  		}
>  
>  		mtk_crtc->ddp_comp[i] = comp;
> +
> +		if (comp_id == DDP_COMPONENT_CCORR)
> +			has_ctm = true;
> +
> +		if (comp_id == DDP_COMPONENT_GAMMA)
> +			gamma_lut_size = MTK_LUT_SIZE;
>  	}
>  
>  	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++)
> @@ -891,7 +902,7 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
>  	if (ret < 0)
>  		return ret;
>  	drm_mode_crtc_set_gamma_size(&mtk_crtc->base, MTK_LUT_SIZE);
> -	drm_crtc_enable_color_mgmt(&mtk_crtc->base, 0, false, MTK_LUT_SIZE);
> +	drm_crtc_enable_color_mgmt(&mtk_crtc->base, 0, has_ctm, gamma_lut_size);
>  	priv->num_pipes++;
>  #ifdef CONFIG_MTK_CMDQ
>  	mtk_crtc->cmdq_client =
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> index 9cc12af..2fd52ba 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> @@ -38,7 +38,15 @@
>  #define CCORR_EN				BIT(0)
>  #define DISP_CCORR_CFG				0x0020
>  #define CCORR_RELAY_MODE			BIT(0)
> +#define CCORR_ENGINE_EN				BIT(1)
> +#define CCORR_GAMMA_OFF				BIT(2)
> +#define CCORR_WGAMUT_SRC_CLIP			BIT(3)
>  #define DISP_CCORR_SIZE				0x0030
> +#define DISP_CCORR_COEF_0			0x0080
> +#define DISP_CCORR_COEF_1			0x0084
> +#define DISP_CCORR_COEF_2			0x0088
> +#define DISP_CCORR_COEF_3			0x008C
> +#define DISP_CCORR_COEF_4			0x0090
>  
>  #define DISP_DITHER_EN				0x0000
>  #define DITHER_EN				BIT(0)
> @@ -187,7 +195,7 @@ static void mtk_ccorr_config(struct mtk_ddp_comp *comp, unsigned int w,
>  			     unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
>  {
>  	mtk_ddp_write(cmdq_pkt, h << 16 | w, comp, DISP_CCORR_SIZE);
> -	mtk_ddp_write(cmdq_pkt, CCORR_RELAY_MODE, comp, DISP_CCORR_CFG);
> +	mtk_ddp_write(cmdq_pkt, CCORR_ENGINE_EN, comp, DISP_CCORR_CFG);
>  }
>  
>  static void mtk_ccorr_start(struct mtk_ddp_comp *comp)
> @@ -200,6 +208,56 @@ static void mtk_ccorr_stop(struct mtk_ddp_comp *comp)
>  	writel_relaxed(0x0, comp->regs + DISP_CCORR_EN);
>  }
>  
> +/* Converts a DRM S31.32 value to the HW S0.11 format. */
> +static u16 mtk_ctm_s31_32_to_s0_11(u64 in)
> +{
> +	u16 r;
> +
> +	/* Sign bit. */
> +	r = in & BIT_ULL(63) ? BIT(11) : 0;
> +
> +	if ((in & GENMASK_ULL(62, 33)) > 0) {

if ((in & GENMASK_ULL(62, 32)) > 0) {

> +		/* We have zero integer bits so we can only saturate here. */
> +		r |= GENMASK(10, 0);
> +	} else {
> +		/* Otherwise take the 9 most important fractional bits. */
> +		r |= (in >> 22) & GENMASK(10, 0);

r |= (in >> 21) & GENMASK(10, 0);

Regards,
CK

> +	}
> +
> +	return r;
> +}
> +
> +static void mtk_ccorr_ctm_set(struct mtk_ddp_comp *comp,
> +			      struct drm_crtc_state *state
> +			      struct cmdq_pkt *cmdq_pkt)
> +{
> +	struct drm_property_blob *blob = state->ctm;
> +	struct drm_color_ctm *ctm;
> +	const u64 *input;
> +	uint16_t coeffs[9] = { 0 };
> +	int i;
> +
> +	if (!blob)
> +		return;
> +
> +	ctm = (struct drm_color_ctm *)blob->data;
> +	input = ctm->matrix;
> +
> +	for (i = 0; i < ARRAY_SIZE(coeffs); i++)
> +		coeffs[i] = mtk_ctm_s31_32_to_s0_11(input[i]);
> +
> +	mtk_ddp_write(cmdq_pkt, coeffs[0] << 16 | coeffs[1],
> +		      comp, DISP_CCORR_COEF_0);
> +	mtk_ddp_write(cmdq_pkt, coeffs[2] << 16 | coeffs[3],
> +		      comp, DISP_CCORR_COEF_1);
> +	mtk_ddp_write(cmdq_pkt, coeffs[4] << 16 | coeffs[5],
> +		      comp, DISP_CCORR_COEF_2);
> +	mtk_ddp_write(cmdq_pkt, coeffs[6] << 16 | coeffs[7],
> +		      comp, DISP_CCORR_COEF_3);
> +	mtk_ddp_write(cmdq_pkt, coeffs[8] << 16,
> +		      comp, DISP_CCORR_COEF_4);
> +}
> +
>  static void mtk_dither_config(struct mtk_ddp_comp *comp, unsigned int w,
>  			      unsigned int h, unsigned int vrefresh,
>  			      unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
> @@ -269,6 +327,7 @@ static void mtk_gamma_set(struct mtk_ddp_comp *comp,
>  	.config = mtk_ccorr_config,
>  	.start = mtk_ccorr_start,
>  	.stop = mtk_ccorr_stop,
> +	.ctm_set = mtk_ccorr_ctm_set,
>  };
>  
>  static const struct mtk_ddp_comp_funcs ddp_dither = {
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> index 5b0a3d4..4e3e5aa 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> @@ -95,6 +95,9 @@ struct mtk_ddp_comp_funcs {
>  			  struct cmdq_pkt *cmdq_pkt);
>  	void (*bgclr_in_on)(struct mtk_ddp_comp *comp);
>  	void (*bgclr_in_off)(struct mtk_ddp_comp *comp);
> +	void (*ctm_set)(struct mtk_ddp_comp *comp,
> +			struct drm_crtc_state *state
> +			struct cmdq_pkt *cmdq_pkt);
>  };
>  
>  struct mtk_ddp_comp {
> @@ -213,6 +216,14 @@ static inline void mtk_ddp_comp_bgclr_in_off(struct mtk_ddp_comp *comp)
>  		comp->funcs->bgclr_in_off(comp);
>  }
>  
> +static inline void mtk_ddp_ctm_set(struct mtk_ddp_comp *comp,
> +				   struct drm_crtc_state *state
> +				   struct cmdq_pkt *cmdq_pkt)
> +{
> +	if (comp->funcs && comp->funcs->ctm_set)
> +		comp->funcs->ctm_set(comp, state);
> +}
> +
>  int mtk_ddp_comp_get_id(struct device_node *node,
>  			enum mtk_ddp_comp_type comp_type);
>  int mtk_ddp_comp_init(struct device *dev, struct device_node *comp_node,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
