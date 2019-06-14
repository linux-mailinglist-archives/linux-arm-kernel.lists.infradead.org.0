Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A3A453CA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 07:07:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nGu6gi3GLUVT1K8EYAEBplbnIASp0/TgIfQEb5Kh5qo=; b=GoSq41EXooI2aj
	INNnn4QbLTqYRVbExdBrkYSE1of19Ehm9KG3k2Fe4Nj4eSXDeXlV7SrUF1QPLJ3aLrArPPIA7vF3Q
	h1t64wtPnEeHymI+9ir21DVCOj6iJhHU4wmi5NAGmqhxOwuRMP3fw2GeqVefAGGWQKvQo6UlJZJ/y
	V06sZ2aJlrNup4/5bjaGInqbnrgsz4tfpyNCiEwAanVl6ZyYQmLjtjDtvf5aZBYJVSA383iF9nJt6
	Xr3wxaChdK4pq5GH5J4756cAVTKT5FAm1Qpmq6mCZ4I+SZV9K7TkHV8IYEvw+5i6AqAY7kIZQmA8C
	+Jo3oT7f0n8QfjyAjiZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbeQa-0000ij-5Y; Fri, 14 Jun 2019 05:07:04 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbeQO-0000iI-9U; Fri, 14 Jun 2019 05:06:53 +0000
X-UUID: 291b172541a54dc6939c771cfdbf2b8f-20190613
X-UUID: 291b172541a54dc6939c771cfdbf2b8f-20190613
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1910252098; Thu, 13 Jun 2019 21:06:39 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 13 Jun 2019 22:06:38 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 14 Jun 2019 13:06:35 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 14 Jun 2019 13:06:35 +0800
Message-ID: <1560488795.16718.18.camel@mtksdaap41>
Subject: Re: [PATCH v3, 20/27] drm/mediatek: add background color input
 select function for ovl/ovl_2l
From: CK Hu <ck.hu@mediatek.com>
To: <yongqiang.niu@mediatek.com>
Date: Fri, 14 Jun 2019 13:06:35 +0800
In-Reply-To: <1559734986-7379-21-git-send-email-yongqiang.niu@mediatek.com>
References: <1559734986-7379-1-git-send-email-yongqiang.niu@mediatek.com>
 <1559734986-7379-21-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_220652_341950_F21B8280 
X-CRM114-Status: GOOD (  17.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Wed, 2019-06-05 at 19:42 +0800, yongqiang.niu@mediatek.com wrote:
> From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> 
> This patch add background color input select function for ovl/ovl_2l
> 
> ovl include 4 DRAM layer and 1 background color layer
> ovl_2l include 4 DRAM layer and 1 background color layer
> DRAM layer frame buffer data from render hardware, GPU for example.
> backgournd color layer is embed in ovl/ovl_2l, we can only set
> it color, but not support DRAM frame buffer.
> 
> for ovl0->ovl0_2l direct link usecase,
> we need set ovl0_2l background color intput select from ovl0
> if render send DRAM buffer layer number <=4, all these layer read
> by ovl.
> layer0 is at the bottom of all layers.
> layer3 is at the top of all layers.
> if render send DRAM buffer layer numbfer >=4 && <=6
> ovl0 read layer0~3
> ovl0_2l read layer4~5
> layer5 is at the top ot all these layers.
> 
> the decision of how to setting ovl0/ovl0_2l read these layer data
> is controlled in mtk crtc, which will be another patch
> 
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_disp_ovl.c | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> index a0ab760..b5a9907 100644
> --- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> +++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> @@ -27,6 +27,8 @@
>  #define DISP_REG_OVL_EN				0x000c
>  #define DISP_REG_OVL_RST			0x0014
>  #define DISP_REG_OVL_ROI_SIZE			0x0020
> +#define DISP_REG_OVL_DATAPATH_CON		0x0024
> +#define OVL_BGCLR_SEL_IN				BIT(2)
>  #define DISP_REG_OVL_ROI_BGCLR			0x0028
>  #define DISP_REG_OVL_SRC_CON			0x002c
>  #define DISP_REG_OVL_CON(n)			(0x0030 + 0x20 * (n))
> @@ -245,6 +247,25 @@ static void mtk_ovl_layer_config(struct mtk_ddp_comp *comp, unsigned int idx,
>  		mtk_ovl_layer_on(comp, idx);
>  }
>  
> +static void mtk_ovl_bgclr_in_on(struct mtk_ddp_comp *comp,
> +				enum mtk_ddp_comp_id prev)

prev is useless, so remove it.

Regards,
CK

> +{
> +	unsigned int reg;
> +
> +	reg = readl(comp->regs + DISP_REG_OVL_DATAPATH_CON);
> +	reg = reg | OVL_BGCLR_SEL_IN;
> +	writel(reg, comp->regs + DISP_REG_OVL_DATAPATH_CON);
> +}
> +
> +static void mtk_ovl_bgclr_in_off(struct mtk_ddp_comp *comp)
> +{
> +	unsigned int reg;
> +
> +	reg = readl(comp->regs + DISP_REG_OVL_DATAPATH_CON);
> +	reg = reg & ~OVL_BGCLR_SEL_IN;
> +	writel(reg, comp->regs + DISP_REG_OVL_DATAPATH_CON);
> +}
> +
>  static const struct mtk_ddp_comp_funcs mtk_disp_ovl_funcs = {
>  	.config = mtk_ovl_config,
>  	.start = mtk_ovl_start,
> @@ -255,6 +276,8 @@ static void mtk_ovl_layer_config(struct mtk_ddp_comp *comp, unsigned int idx,
>  	.layer_on = mtk_ovl_layer_on,
>  	.layer_off = mtk_ovl_layer_off,
>  	.layer_config = mtk_ovl_layer_config,
> +	.bgclr_in_on = mtk_ovl_bgclr_in_on,
> +	.bgclr_in_off = mtk_ovl_bgclr_in_off,
>  };
>  
>  static int mtk_disp_ovl_bind(struct device *dev, struct device *master,



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
