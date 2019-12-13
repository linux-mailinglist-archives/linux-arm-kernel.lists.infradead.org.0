Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 339F811DEF6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 08:57:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+blla12oZLcGUubqHCqhJQYmzL3zj1jQt2BAf1nRFRg=; b=jaYuPyQk66+stx
	kfwLQpb2yUbPh/kkrTGjRUbCh9373ZX+0bNUb+uJM2l3zOtKex5s+mdH/WkKQEn+HHGlssuqm5FjN
	obSabwFGErnzrvo5Jbjty3pOow43GmWr+yULeh3r+JDo3P1aIb4pHDb35PcDI2Ka2YipdfgqqzzoM
	cTOu0IlMFtmCjo8IqPjIVd8BLqYarvxUKZaIyLr3py2+VqrunNkCR8VlmqTJW0LtglZgYaXedEmTW
	qfIFfuej0ueziwbMbbBpABhjJNBmQPOcMFzFpFsdBsE/YXmoNDJeervIZgvTtHJQDiePC3TLaKxLz
	rZH0hExCGUT7ItUBsVOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iffp9-0002Jc-Mg; Fri, 13 Dec 2019 07:57:19 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iffp1-0002In-FU; Fri, 13 Dec 2019 07:57:13 +0000
X-UUID: 00dbb9f8cbff4967b1c545a6a4fefe79-20191212
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=8AMmKzh+ntbNEMNMM2Cv5TmoA9a8AXSToVuRv4sli3Y=; 
 b=TSeM83Xm5dCQNc7nP5Uzs/3/Ur6tfRSUObTPfGr6K0tT/SeYeOq+TNM1ffe+aljgz23rHzBPp1AUON2ysTit46c5eQdtuyELoJf68XrQt7dzRpuX5exX0Met4ye409UbysW+b5JzwtfxSh1qNJ3VK6RLX2lNJIH8qqEWxoeEYPo=;
X-UUID: 00dbb9f8cbff4967b1c545a6a4fefe79-20191212
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1796763749; Thu, 12 Dec 2019 23:57:10 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Dec 2019 23:58:17 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 13 Dec 2019 15:56:52 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 13 Dec 2019 15:56:54 +0800
Message-ID: <1576223825.9817.6.camel@mtksdaap41>
Subject: Re: [PATCH v2, 2/2] drm/mediatek: Add ctm property support
From: CK Hu <ck.hu@mediatek.com>
To: Yongqiang Niu <yongqiang.niu@mediatek.com>
Date: Fri, 13 Dec 2019 15:57:05 +0800
In-Reply-To: <1576222132-31586-3-git-send-email-yongqiang.niu@mediatek.com>
References: <1576222132-31586-1-git-send-email-yongqiang.niu@mediatek.com>
 <1576222132-31586-3-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: D241AD6317DCC42E1D8119342001FD3AC990BE60618A5BB94CFC0237BA5F2D392000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_235711_529226_68469590 
X-CRM114-Status: GOOD (  18.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Fri, 2019-12-13 at 15:28 +0800, Yongqiang Niu wrote:
> Add ctm property support
> 
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c     | 10 ++++-
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 62 ++++++++++++++++++++++++++++-
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h |  9 +++++
>  3 files changed, 78 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> index 9a8e1d4..db3031e 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> @@ -614,8 +614,10 @@ static void mtk_drm_crtc_atomic_flush(struct drm_crtc *crtc,
>  	if (mtk_crtc->event)
>  		mtk_crtc->pending_needs_vblank = true;
>  	if (crtc->state->color_mgmt_changed)
> -		for (i = 0; i < mtk_crtc->ddp_comp_nr; i++)
> +		for (i = 0; i < mtk_crtc->ddp_comp_nr; i++) {
>  			mtk_ddp_gamma_set(mtk_crtc->ddp_comp[i], crtc->state);
> +			mtk_ddp_ctm_set(mtk_crtc->ddp_comp[i], crtc->state);
> +		}
>  	mtk_drm_crtc_hw_config(mtk_crtc);
>  }
>  
> @@ -734,6 +736,7 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
>  	int pipe = priv->num_pipes;
>  	int ret;
>  	int i;
> +	bool has_ctm = false;
>  	uint gamma_lut_size = 0;
>  
>  	if (!path)
> @@ -787,6 +790,9 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
>  
>  		mtk_crtc->ddp_comp[i] = comp;
>  
> +		if (comp->funcs->ctm_set)
> +			has_ctm = true;
> +
>  		if (comp->funcs->gamma_set)
>  			gamma_lut_size = MTK_LUT_SIZE;
>  	}
> @@ -812,7 +818,7 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
>  
>  	if (gamma_lut_size)
>  		drm_mode_crtc_set_gamma_size(&mtk_crtc->base, gamma_lut_size);
> -	drm_crtc_enable_color_mgmt(&mtk_crtc->base, 0, false, gamma_lut_size);
> +	drm_crtc_enable_color_mgmt(&mtk_crtc->base, 0, has_ctm, gamma_lut_size);

May enable color management when has gamma or ctm.

Regards,
CK

>  	priv->num_pipes++;
>  	mutex_init(&mtk_crtc->hw_lock);
>  
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> index cb3296f..182990a 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> @@ -37,7 +37,15 @@
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
> @@ -188,7 +196,7 @@ static void mtk_ccorr_config(struct mtk_ddp_comp *comp, unsigned int w,
>  			     unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
>  {
>  	mtk_ddp_write(cmdq_pkt, h << 16 | w, comp, DISP_CCORR_SIZE);
> -	mtk_ddp_write(cmdq_pkt, CCORR_RELAY_MODE, comp, DISP_CCORR_CFG);
> +	mtk_ddp_write(cmdq_pkt, CCORR_ENGINE_EN, comp, DISP_CCORR_CFG);
>  }
>  
>  static void mtk_ccorr_start(struct mtk_ddp_comp *comp)
> @@ -201,6 +209,57 @@ static void mtk_ccorr_stop(struct mtk_ddp_comp *comp)
>  	writel_relaxed(0x0, comp->regs + DISP_CCORR_EN);
>  }
>  
> +/* Converts a DRM S31.32 value to the HW S1.10 format. */
> +static u16 mtk_ctm_s31_32_to_s1_10(u64 in)
> +{
> +	u16 r;
> +
> +	/* Sign bit. */
> +	r = in & BIT_ULL(63) ? BIT(11) : 0;
> +
> +	if ((in & GENMASK_ULL(62, 33)) > 0) {
> +		/* identity value 0x100000000 -> 0x400, */
> +		/* if bigger this, set it to max 0x7ff. */
> +		r |= GENMASK(10, 0);
> +	} else {
> +		/* take the 11 most important bits. */
> +		r |= (in >> 22) & GENMASK(10, 0);
> +	}
> +
> +	return r;
> +}
> +
> +static void mtk_ccorr_ctm_set(struct mtk_ddp_comp *comp,
> +			      struct drm_crtc_state *state)
> +{
> +	struct drm_property_blob *blob = state->ctm;
> +	struct drm_color_ctm *ctm;
> +	const u64 *input;
> +	uint16_t coeffs[9] = { 0 };
> +	int i;
> +	struct cmdq_pkt *cmdq_pkt = NULL;
> +
> +	if (!blob)
> +		return;
> +
> +	ctm = (struct drm_color_ctm *)blob->data;
> +	input = ctm->matrix;
> +
> +	for (i = 0; i < ARRAY_SIZE(coeffs); i++)
> +		coeffs[i] = mtk_ctm_s31_32_to_s1_10(input[i]);
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
> @@ -271,6 +330,7 @@ static void mtk_gamma_set(struct mtk_ddp_comp *comp,
>  	.config = mtk_ccorr_config,
>  	.start = mtk_ccorr_start,
>  	.stop = mtk_ccorr_stop,
> +	.ctm_set = mtk_ccorr_ctm_set,
>  };
>  
>  static const struct mtk_ddp_comp_funcs ddp_dither = {
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> index 384abae..20fe55d 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> @@ -92,6 +92,8 @@ struct mtk_ddp_comp_funcs {
>  			  struct drm_crtc_state *state);
>  	void (*bgclr_in_on)(struct mtk_ddp_comp *comp);
>  	void (*bgclr_in_off)(struct mtk_ddp_comp *comp);
> +	void (*ctm_set)(struct mtk_ddp_comp *comp,
> +			struct drm_crtc_state *state);
>  };
>  
>  struct mtk_ddp_comp {
> @@ -205,6 +207,13 @@ static inline void mtk_ddp_comp_bgclr_in_off(struct mtk_ddp_comp *comp)
>  		comp->funcs->bgclr_in_off(comp);
>  }
>  
> +static inline void mtk_ddp_ctm_set(struct mtk_ddp_comp *comp,
> +				   struct drm_crtc_state *state)
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
