Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C50A4D0B0B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 11:24:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b+w/swhLfpabnU5hISQLpm5xjanVqVO4mg68rJD98wA=; b=FLfLYtbo5BIoeR
	PG4TJjGwcFRlme91koAK3WqYjFmFMzEXomsaeUA0H/TUGkxAo27jzDLa/V0LsfIKoKfbT4AfBZucc
	poEcuhV0z/xxXoWdL8oa1IW2sOsG9gb2NYAmElxUMzZ1lzuLdU28ktz/Vl7J4MCo/Yp43r13pGezd
	+MsKvg2GQEjLkzpZ3+qF7MtsIerhv40Qlr1lLaOfQLUumt9SHtrivhkFcmTxGsHg4SwIaq2wjx9E5
	imVJUxNKmUEI7UzWoUp1EWtRjlpfe88ZKVEsWOwHosWwZOT8ROrWJNWVs/dFcZinJkNo1NnOTlBo8
	pJ/1y0C3sUNKKwdDAB0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI8DJ-00079N-JW; Wed, 09 Oct 2019 09:24:57 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI8DC-00078o-J0; Wed, 09 Oct 2019 09:24:52 +0000
X-UUID: 0d002373eae1461f93d26d0b1d06cf11-20191009
X-UUID: 0d002373eae1461f93d26d0b1d06cf11-20191009
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1649796389; Wed, 09 Oct 2019 01:24:46 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 9 Oct 2019 02:24:42 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 9 Oct 2019 17:24:38 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 9 Oct 2019 17:24:37 +0800
Message-ID: <1570613080.7713.6.camel@mtksdaap41>
Subject: Re: [PATCH v5, 21/32] drm/mediatek: add background color input
 select function for ovl/ovl_2l
From: CK Hu <ck.hu@mediatek.com>
To: <yongqiang.niu@mediatek.com>
Date: Wed, 9 Oct 2019 17:24:40 +0800
In-Reply-To: <1567090254-15566-22-git-send-email-yongqiang.niu@mediatek.com>
References: <1567090254-15566-1-git-send-email-yongqiang.niu@mediatek.com>
 <1567090254-15566-22-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: B5C9C745579453C1F4ED3109BEA557BFB607994C68765150058BBB90A47201F22000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_022450_635824_79D35D1D 
X-CRM114-Status: GOOD (  18.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

On Thu, 2019-08-29 at 22:50 +0800, yongqiang.niu@mediatek.com wrote:
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

Applied to mediatek-drm-next-5.5 [1], thanks.

[1]
https://github.com/ckhu-mediatek/linux.git-tags/commits/mediatek-drm-next-5.5

Regards,
CK

> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> Reviewed-by: CK Hu <ck.hu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_disp_ovl.c | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> index baef066..eb3bf85 100644
> --- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> +++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> @@ -19,6 +19,8 @@
>  #define DISP_REG_OVL_EN				0x000c
>  #define DISP_REG_OVL_RST			0x0014
>  #define DISP_REG_OVL_ROI_SIZE			0x0020
> +#define DISP_REG_OVL_DATAPATH_CON		0x0024
> +#define OVL_BGCLR_SEL_IN				BIT(2)
>  #define DISP_REG_OVL_ROI_BGCLR			0x0028
>  #define DISP_REG_OVL_SRC_CON			0x002c
>  #define DISP_REG_OVL_CON(n)			(0x0030 + 0x20 * (n))
> @@ -237,6 +239,24 @@ static void mtk_ovl_layer_config(struct mtk_ddp_comp *comp, unsigned int idx,
>  		mtk_ovl_layer_on(comp, idx);
>  }
>  
> +static void mtk_ovl_bgclr_in_on(struct mtk_ddp_comp *comp)
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
> @@ -247,6 +267,8 @@ static void mtk_ovl_layer_config(struct mtk_ddp_comp *comp, unsigned int idx,
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
