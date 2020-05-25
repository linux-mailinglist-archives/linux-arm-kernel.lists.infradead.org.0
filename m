Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E0F1E0770
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 09:02:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G61n+Rh/k8VonGNczWtgdbRdwALZ72WKIEz0hQ8WpgA=; b=JJjGmfW6t71x36
	BAzFn3L33CdZV9RjQpgLKhQrE6xHaQLRnVY7yBr+PGBzfKfiGI5XZZxA/86C9mAXy3T/qY2Ao5Unz
	6iYetAeA9T/Sver4pLM1P97Il6i4F38xCEAWx8vyLlAiGxAOH2pT7L0/0ZMbPULRvY1/TiOlbcocz
	hBTo6l00Q1ivXC9JxKec1enbSU/Yxj08a3jiFqNbdhW4FrkzzyACr/Vf7VIsyqQ9HYn8B8NisQ6s+
	DpsXTY1Qg7hGdtSaO9CR07CE/kX5KORrqm26/IF+BktqtcQuEdntTT3Ptq8PXj5ST4aWjCifRIw8O
	nNdZ0oDqN0l2vk2kwTSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd78A-0000gI-1V; Mon, 25 May 2020 07:02:38 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd77w-0000ef-Q8; Mon, 25 May 2020 07:02:26 +0000
X-UUID: 0fe773d6d1834d44953150348d1d89de-20200524
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=6DRd72G/04IUjrJWtULzvnV0W9JE0UNqefujrxFZ1Cs=; 
 b=T+CF0gcW69FpB3EUJ+ZZsxGNexcpDgDR2KK43WcVin6T7+MdynsBt/Xa1EXS1Glr0Vqk9HyimI/PlwhFzATiAm7P/iZWlv4YolAkfERqqES/rT9Hshk23orYLET5/llrXCaNJstV2mxp9h/xI+O8p3pAHEHM8vPQOxIYw+1jTE8=;
X-UUID: 0fe773d6d1834d44953150348d1d89de-20200524
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 770796664; Sun, 24 May 2020 23:02:23 -0800
Received: from MTKMBS32DR.mediatek.inc (172.27.6.104) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 24 May 2020 23:56:16 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS32DR.mediatek.inc
 (172.27.6.104) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Mon, 25 May 2020 14:56:13 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 25 May 2020 14:56:13 +0800
Message-ID: <1590389672.13912.26.camel@mhfsdcap03>
Subject: Re: [PATCH v3 7/7] iommu/mediatek: Add mt6779 basic support
From: Yong Wu <yong.wu@mediatek.com>
To: Chao Hao <chao.hao@mediatek.com>
Date: Mon, 25 May 2020 14:54:32 +0800
In-Reply-To: <20200509083654.5178-8-chao.hao@mediatek.com>
References: <20200509083654.5178-1-chao.hao@mediatek.com>
 <20200509083654.5178-8-chao.hao@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: D84AC03253283C703994F8FF4CE4C4A6A591C83D422D4AD6387936229962A63F2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_000224_856944_433AD340 
X-CRM114-Status: GOOD (  17.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, FY Yang <fy.yang@mediatek.com>,
 wsd_upstream@mediatek.com, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Jun Yan <jun.yan@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 2020-05-09 at 16:36 +0800, Chao Hao wrote:
> 1. Start from mt6779, INVLDT_SEL move to offset=0x2c, so we add
>    REG_MMU_INV_SEL_GEN2 definition and mt6779 uses it.
> 2. Change PROTECT_PA_ALIGN from 128 byte to 256 byte.
> 3. For REG_MMU_CTRL_REG register, we only need to change bit[2:0],
>    others bits keep default value, ex: enable victim tlb.
> 4. Add mt6779_data to support mm_iommu HW init.
> 
> Signed-off-by: Chao Hao <chao.hao@mediatek.com>
> ---
>  drivers/iommu/mtk_iommu.c | 18 +++++++++++++++---
>  drivers/iommu/mtk_iommu.h |  1 +
>  2 files changed, 16 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
> index dc9ae944e712..34c4ffb77c73 100644
> --- a/drivers/iommu/mtk_iommu.c
> +++ b/drivers/iommu/mtk_iommu.c
> @@ -37,6 +37,7 @@
>  #define REG_MMU_INVLD_START_A			0x024
>  #define REG_MMU_INVLD_END_A			0x028
>  
> +#define REG_MMU_INV_SEL_GEN2			0x02c
>  #define REG_MMU_INV_SEL_GEN1			0x038

Normally the register name comes from the CODA. In the lasted CODA,
this is called "MMU_INVLDT_SEL". But it's same with the previous 0x38
totally. Using _GEN1, _GEN2 is ok for me. Please add its coda name in
the comment. like:

#define REG_MMU_INV_SEL_GEN2		0x02c /* MMU_INVLDT_SEL */

>  #define F_INVLD_EN0				BIT(0)
>  #define F_INVLD_EN1				BIT(1)
> @@ -97,7 +98,7 @@
>  #define F_MMU_INT_ID_LARB_ID(a)			(((a) >> 7) & 0x7)
>  #define F_MMU_INT_ID_PORT_ID(a)			(((a) >> 2) & 0x1f)
>  
> -#define MTK_PROTECT_PA_ALIGN			128
> +#define MTK_PROTECT_PA_ALIGN			256
>  
>  /*
>   * Get the local arbiter ID and the portid within the larb arbiter
> @@ -554,11 +555,12 @@ static int mtk_iommu_hw_init(const struct mtk_iommu_data *data)
>  		return ret;
>  	}
>  
> +	regval = readl_relaxed(data->base + REG_MMU_CTRL_REG);
>  	if (data->plat_data->m4u_plat == M4U_MT8173)
> -		regval = F_MMU_PREFETCH_RT_REPLACE_MOD |
> +		regval |= F_MMU_PREFETCH_RT_REPLACE_MOD |

The default value is not ok for mt8173(Its bit9 is in_order_write_en, we
could not use its default 1'b1). thus, Don't touch this line.

>  			 F_MMU_TF_PROT_TO_PROGRAM_ADDR_MT8173;
>  	else
> -		regval = F_MMU_TF_PROT_TO_PROGRAM_ADDR;
> +		regval |= F_MMU_TF_PROT_TO_PROGRAM_ADDR;
>  	writel_relaxed(regval, data->base + REG_MMU_CTRL_REG);
>  
>  	regval = F_L2_MULIT_HIT_EN |
> @@ -804,6 +806,15 @@ static const struct mtk_iommu_plat_data mt2712_data = {
>  	.larbid_remap = {{0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}},
>  };
>  
> +static const struct mtk_iommu_plat_data mt6779_data = {
> +	.m4u_plat = M4U_MT6779,
> +	.larbid_remap = {{0}, {1}, {2}, {3}, {5}, {7, 8}, {10}, {9}},
> +	.has_sub_comm = true,
> +	.has_wr_len = true,
> +	.has_misc_ctrl = true,
> +	.inv_sel_reg = REG_MMU_INV_SEL_GEN2,

align '=' a bit.

> +};
> +
>  static const struct mtk_iommu_plat_data mt8173_data = {
>  	.m4u_plat     = M4U_MT8173,
>  	.has_4gb_mode = true,
> @@ -822,6 +833,7 @@ static const struct mtk_iommu_plat_data mt8183_data = {
>  
>  static const struct of_device_id mtk_iommu_of_ids[] = {
>  	{ .compatible = "mediatek,mt2712-m4u", .data = &mt2712_data},
> +	{ .compatible = "mediatek,mt6779-m4u", .data = &mt6779_data},
>  	{ .compatible = "mediatek,mt8173-m4u", .data = &mt8173_data},
>  	{ .compatible = "mediatek,mt8183-m4u", .data = &mt8183_data},
>  	{}
> diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
> index 9971cedd72ea..fb79e710c8d9 100644
> --- a/drivers/iommu/mtk_iommu.h
> +++ b/drivers/iommu/mtk_iommu.h
> @@ -31,6 +31,7 @@ struct mtk_iommu_suspend_reg {
>  enum mtk_iommu_plat {
>  	M4U_MT2701,
>  	M4U_MT2712,
> +	M4U_MT6779,
>  	M4U_MT8173,
>  	M4U_MT8183,
>  };

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
