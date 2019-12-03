Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E00710F851
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 08:07:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B25xEqOZ+diJG/sB7WRWI9qMPyJfsjLd/7kYhpqEmiE=; b=FsnoakCU9KK95n
	VWjStNNGeB3vcy5LA9Tiq5Tp2zdk6Ufurm6TDzcHPEOM+iyLo8WMFQ+D3wSaUy+w4QHeTIhCmz++t
	Y7nBAVZsm6nuKzkvbOAQiAzsO7HYOw4DKvyJfZEOF5N+0PdVi6xCD0K+9eG1TtUdM4vcJGofV5//J
	5YJUi3sXnbW9LvuNyhxi+EGUN6Pm8V7c7QZ2EOMJwcgamp0zLcmT2MJRsIPULep7P+I/zS++ZWsNe
	am1r/BgdAbjhSZ9ercASnSAnMHX/3FOqilEnm8BayKJSQg06691tNERh/xG5BIUA/d/deAJKcoZUs
	Zx7aCK+yKyJpP46TlaCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic2HT-0003GY-D7; Tue, 03 Dec 2019 07:07:31 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic2HL-0003FZ-C1; Tue, 03 Dec 2019 07:07:26 +0000
X-UUID: 50f72e20cbc44f9ca2846d6f6b16da09-20191202
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=a2/k+pZCKbnpnNDdJ057Q34lgkPRSTIuTEW5pkAOW5I=; 
 b=Ne4eNhxwxdnmHThN7lSHpTXH59VW01C+njh2X0pGkcw4idOj35DVB3VxC2qcJOL/PzXLZlyLqQqF7BbBjVlb9bH7XQamHcgYlfYxrzkCPO0G/LnlYZ1bTWsKzxhjcoaQOk2x847KHBEnhJrKjnf0FMzA4JoqFHuNqJbqoxVNxXo=;
X-UUID: 50f72e20cbc44f9ca2846d6f6b16da09-20191202
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1365975204; Mon, 02 Dec 2019 23:07:17 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 2 Dec 2019 23:07:58 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Dec 2019 15:06:49 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 3 Dec 2019 15:06:53 +0800
Message-ID: <1575356831.22432.7.camel@mtksdaap41>
Subject: Re: [PATCH v1, 2/2] drm/mediatek: Fix external display vblank
 timeout issue
From: CK Hu <ck.hu@mediatek.com>
To: <yongqiang.niu@mediatek.com>
Date: Tue, 3 Dec 2019 15:07:11 +0800
In-Reply-To: <1574817475-22378-3-git-send-email-yongqiang.niu@mediatek.com>
References: <1574817475-22378-1-git-send-email-yongqiang.niu@mediatek.com>
 <1574817475-22378-3-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 92258CFB5CB2D6F8CD1B7935ED5D6D036C039F473DD1311588CF292D18E5CE3E2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_230723_425032_38E112BB 
X-CRM114-Status: GOOD (  19.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

I would like the title could clearly express what does this patch do. I
think what this patch do is to implement prepare/unprepare interface for
dpi driver. And you could describe why do this in commit message.


On Wed, 2019-11-27 at 09:17 +0800, yongqiang.niu@mediatek.com wrote:
> From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> 
> Fix external display vblank timeout issue

I think you move dpi_power_on to more early stage. But why this would
fix vblank timeout. Please describe more about this so that I would
agree this patch. 

This is a bug fix, so please add a 'Fixes' tag.

> 
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_dpi.c          | 14 +++++++++-----
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c     |  6 ++++++
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h | 14 ++++++++++++++
>  3 files changed, 29 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
> index be6d95c..38cabbe 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dpi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
> @@ -387,8 +387,12 @@ static int mtk_dpi_power_on(struct mtk_dpi *dpi)
>  {
>  	int ret;
>  
> -	if (++dpi->refcount != 1)
> +	if (++dpi->refcount != 1) {
> +		dev_warn(dpi->dev, "%s refcount: %d\n", __func__, dpi->refcount);
>  		return 0;
> +	}
> +
> +	DRM_DEBUG_DRIVER("%s refcount %d\n", __func__, dpi->refcount);
>  
>  	ret = clk_prepare_enable(dpi->engine_clk);
>  	if (ret) {
> @@ -563,14 +567,14 @@ static int mtk_dpi_atomic_check(struct drm_encoder *encoder,
>  	.atomic_check = mtk_dpi_atomic_check,
>  };
>  
> -static void mtk_dpi_start(struct mtk_ddp_comp *comp)
> +static void mtk_dpi_prepare(struct mtk_ddp_comp *comp)
>  {
>  	struct mtk_dpi *dpi = container_of(comp, struct mtk_dpi, ddp_comp);
>  
>  	mtk_dpi_power_on(dpi);
>  }
>  
> -static void mtk_dpi_stop(struct mtk_ddp_comp *comp)
> +static void mtk_dpi_unprepare(struct mtk_ddp_comp *comp)
>  {
>  	struct mtk_dpi *dpi = container_of(comp, struct mtk_dpi, ddp_comp);
>  
> @@ -578,8 +582,8 @@ static void mtk_dpi_stop(struct mtk_ddp_comp *comp)
>  }
>  
>  static const struct mtk_ddp_comp_funcs mtk_dpi_funcs = {
> -	.start = mtk_dpi_start,
> -	.stop = mtk_dpi_stop,
> +	.prepare = mtk_dpi_prepare,
> +	.unprepare = mtk_dpi_unprepare,
>  };
>  
>  static int mtk_dpi_bind(struct device *dev, struct device *master, void *data)
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> index 7eca02f..a6d3d97 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> @@ -345,6 +345,9 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
>  		return ret;
>  	}
>  
> +	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++)
> +		mtk_ddp_comp_prepare(mtk_crtc->ddp_comp[i]);
> +
>  	ret = mtk_disp_mutex_prepare(mtk_crtc->mutex);
>  	if (ret < 0) {
>  		DRM_ERROR("Failed to enable mutex clock: %d\n", ret);
> @@ -434,6 +437,9 @@ static void mtk_crtc_ddp_hw_fini(struct mtk_drm_crtc *mtk_crtc)
>  	mtk_crtc_ddp_clk_disable(mtk_crtc);
>  	mtk_disp_mutex_unprepare(mtk_crtc->mutex);
>  
> +	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++)
> +		mtk_ddp_comp_unprepare(mtk_crtc->ddp_comp[i]);
> +
>  	pm_runtime_put(drm->dev);
>  
>  	if (crtc->state->event && !crtc->state->active) {
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> index 5b0a3d4..097b90d 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> @@ -78,6 +78,8 @@ struct mtk_ddp_comp_funcs {
>  	void (*stop)(struct mtk_ddp_comp *comp);
>  	void (*enable_vblank)(struct mtk_ddp_comp *comp, struct drm_crtc *crtc);
>  	void (*disable_vblank)(struct mtk_ddp_comp *comp);
> +	void (*prepare)(struct mtk_ddp_comp *comp);
> +	void (*unprepare)(struct mtk_ddp_comp *comp);
>  	unsigned int (*supported_rotations)(struct mtk_ddp_comp *comp);
>  	unsigned int (*layer_nr)(struct mtk_ddp_comp *comp);
>  	void (*layer_on)(struct mtk_ddp_comp *comp, unsigned int idx,
> @@ -117,6 +119,18 @@ static inline void mtk_ddp_comp_config(struct mtk_ddp_comp *comp,
>  		comp->funcs->config(comp, w, h, vrefresh, bpc, cmdq_pkt);
>  }
>  
> +static inline void mtk_ddp_comp_prepare(struct mtk_ddp_comp *comp)
> +{
> +	if (comp->funcs && comp->funcs->prepare)
> +		comp->funcs->prepare(comp);
> +}
> +
> +static inline void mtk_ddp_comp_unprepare(struct mtk_ddp_comp *comp)
> +{
> +	if (comp->funcs && comp->funcs->unprepare)
> +		comp->funcs->unprepare(comp);
> +}
> +
>  static inline void mtk_ddp_comp_start(struct mtk_ddp_comp *comp)
>  {
>  	if (comp->funcs && comp->funcs->start)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
