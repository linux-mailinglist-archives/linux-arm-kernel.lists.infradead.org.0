Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 566E7D0B6D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 11:39:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ihwMrW90SmuJcRt2fn6hQITh55gLu/zN+YqMbT+mYNo=; b=XCamszttQd7TCt
	UzYI2Rp2VLwbVgckFek0tpWJUgfV9lf37/J8Cb0IMe7IdYrGkgO6ufjSNnnGxoc0lc8YOuto+dTnO
	bWVHkgLSsMXhjO2jPh6I9jcRD+WU16E5AQ7FnjlYIk0AQU7ejwLLNQWDZTTaEoPyTr1WH01RSi20M
	ntU5dEki9BI5lf7hUJsFVtcw23MbjOdgjCYk0dOjT9VuB9/knTZCOeKvF2EuC+SCejjfeNPHlCp8d
	hbglkVoqn1GZhsdyt6W04p9PeYiEay+Hf+Eyu2Om4Mnq/Qp4xG5Wv+1VDI8tmMReznkJXDEfO4a3u
	M9YXx3B6RuaP0AztVyrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI8R9-000729-12; Wed, 09 Oct 2019 09:39:15 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI8Qn-0006vl-PR; Wed, 09 Oct 2019 09:38:55 +0000
X-UUID: d183dca045bd4cfb8dcda184da5dc956-20191009
X-UUID: d183dca045bd4cfb8dcda184da5dc956-20191009
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 390671790; Wed, 09 Oct 2019 01:38:50 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 9 Oct 2019 02:34:51 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 9 Oct 2019 17:19:40 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 9 Oct 2019 17:19:40 +0800
Message-ID: <1570612783.7713.3.camel@mtksdaap41>
Subject: Re: [PATCH v5, 18/32] drm/mediatek: add gmc_bits for ovl private data
From: CK Hu <ck.hu@mediatek.com>
To: <yongqiang.niu@mediatek.com>
Date: Wed, 9 Oct 2019 17:19:43 +0800
In-Reply-To: <1567090254-15566-19-git-send-email-yongqiang.niu@mediatek.com>
References: <1567090254-15566-1-git-send-email-yongqiang.niu@mediatek.com>
 <1567090254-15566-19-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: F809891FCC3027FE8D3B12528026967FC17148ED97499028C44AAB64FEF7B7DB2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_023853_854907_F6C723F3 
X-CRM114-Status: GOOD (  16.68  )
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
> This patch add gmc_bits for ovl private data
> GMC register was set RDMA ultra and pre-ultra threshold.
> 10bit GMC register define is different with other SOC, gmc_thrshd_l not
> used.
> 

Applied to mediatek-drm-next-5.5 [1], thanks.

[1]
https://github.com/ckhu-mediatek/linux.git-tags/commits/mediatek-drm-next-5.5

Regards,
CK

> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> Reviewed-by: CK Hu <ck.hu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_disp_ovl.c | 23 +++++++++++++++++++++--
>  1 file changed, 21 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> index c4f07c2..82eaefd 100644
> --- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> +++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> @@ -31,7 +31,9 @@
>  #define DISP_REG_OVL_ADDR_MT8173		0x0f40
>  #define DISP_REG_OVL_ADDR(ovl, n)		((ovl)->data->addr + 0x20 * (n))
>  
> -#define	OVL_RDMA_MEM_GMC	0x40402020
> +#define GMC_THRESHOLD_BITS	16
> +#define GMC_THRESHOLD_HIGH	((1 << GMC_THRESHOLD_BITS) / 4)
> +#define GMC_THRESHOLD_LOW	((1 << GMC_THRESHOLD_BITS) / 8)
>  
>  #define OVL_CON_BYTE_SWAP	BIT(24)
>  #define OVL_CON_MTX_YUV_TO_RGB	(6 << 16)
> @@ -49,6 +51,7 @@
>  
>  struct mtk_disp_ovl_data {
>  	unsigned int addr;
> +	unsigned int gmc_bits;
>  	bool fmt_rgb565_is_0;
>  };
>  
> @@ -132,9 +135,23 @@ static unsigned int mtk_ovl_layer_nr(struct mtk_ddp_comp *comp)
>  static void mtk_ovl_layer_on(struct mtk_ddp_comp *comp, unsigned int idx)
>  {
>  	unsigned int reg;
> +	unsigned int gmc_thrshd_l;
> +	unsigned int gmc_thrshd_h;
> +	unsigned int gmc_value;
> +	struct mtk_disp_ovl *ovl = comp_to_ovl(comp);
>  
>  	writel(0x1, comp->regs + DISP_REG_OVL_RDMA_CTRL(idx));
> -	writel(OVL_RDMA_MEM_GMC, comp->regs + DISP_REG_OVL_RDMA_GMC(idx));
> +
> +	gmc_thrshd_l = GMC_THRESHOLD_LOW >>
> +		      (GMC_THRESHOLD_BITS - ovl->data->gmc_bits);
> +	gmc_thrshd_h = GMC_THRESHOLD_HIGH >>
> +		      (GMC_THRESHOLD_BITS - ovl->data->gmc_bits);
> +	if (ovl->data->gmc_bits == 10)
> +		gmc_value = gmc_thrshd_h | gmc_thrshd_h << 16;
> +	else
> +		gmc_value = gmc_thrshd_l | gmc_thrshd_l << 8 |
> +			    gmc_thrshd_h << 16 | gmc_thrshd_h << 24;
> +	writel(gmc_value, comp->regs + DISP_REG_OVL_RDMA_GMC(idx));
>  
>  	reg = readl(comp->regs + DISP_REG_OVL_SRC_CON);
>  	reg = reg | BIT(idx);
> @@ -316,11 +333,13 @@ static int mtk_disp_ovl_remove(struct platform_device *pdev)
>  
>  static const struct mtk_disp_ovl_data mt2701_ovl_driver_data = {
>  	.addr = DISP_REG_OVL_ADDR_MT2701,
> +	.gmc_bits = 8,
>  	.fmt_rgb565_is_0 = false,
>  };
>  
>  static const struct mtk_disp_ovl_data mt8173_ovl_driver_data = {
>  	.addr = DISP_REG_OVL_ADDR_MT8173,
> +	.gmc_bits = 8,
>  	.fmt_rgb565_is_0 = true,
>  };
>  



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
