Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 281D91E06B7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 08:13:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WSdeRT0AQOpf0tFLMUY/yZgBR0Oqi6uCzaQpmlo97xI=; b=eGKaDrlxudE41K
	tt7Esi8wjlG8A0GflMbeCX+JO35bXIOt4BfdioLuC+Yr7165/OAuILpEdlfDdSIgMcR4CUUJLXSLR
	QU+u20OygH3UEuocFkuRVDcO8uYbCTPVnImldE/Bv+Lhhhxj3MgnEIEKx70FuvK6Jk39Sp4kBDdYQ
	Pb/kYZVPvIrgQcKSdgyOnvRj7v5q34SurbLJNGonhjlS27AfH2ehdSguVaDseweT1daBTSEBhwK9k
	9huyURhNKyhSgnFsRoT6s6dCuOP4nZWTs8SqEIbbSiuA/0EX94HoglWPzQ+kMf4QbYEMKkllHmmZq
	jfHFPqz3qPrzTc/QYyNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd6Mp-0001aM-C3; Mon, 25 May 2020 06:13:43 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd6MY-0001Ye-P9; Mon, 25 May 2020 06:13:28 +0000
X-UUID: 24f877816aa444ceb2dcb59c3f258e11-20200524
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=4/4tyFF13ExXdeCjudAPME2PjshhSd+G5yUb+3jQX6c=; 
 b=nZpWku+XTtMahBn/LjboqmblxblN2CRw87eFqZhwAYFVTTjkpCOBlQfpygSMc8ZtYkpj8+EnvIfCZEXZG6K3Fn3JONHhns8bX4IanYFlVyjZDPJ3czfKKOW0BhK5kdR38uRrXIfCDbUAytZjuyTxhuBFM0iWtIQ0UtgKyBrn8mE=;
X-UUID: 24f877816aa444ceb2dcb59c3f258e11-20200524
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1275175774; Sun, 24 May 2020 22:13:13 -0800
Received: from MTKMBS32N2.mediatek.inc (172.27.4.72) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 24 May 2020 23:13:12 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS32N2.mediatek.inc
 (172.27.4.72) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Mon, 25 May 2020 14:13:08 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 25 May 2020 14:13:07 +0800
Message-ID: <1590387086.13912.4.camel@mhfsdcap03>
Subject: Re: [PATCH v3 2/7] iommu/mediatek: Rename the register
 STANDARD_AXI_MODE(0x48) to MISC_CTRL
From: Yong Wu <yong.wu@mediatek.com>
To: Chao Hao <chao.hao@mediatek.com>
Date: Mon, 25 May 2020 14:11:26 +0800
In-Reply-To: <20200509083654.5178-3-chao.hao@mediatek.com>
References: <20200509083654.5178-1-chao.hao@mediatek.com>
 <20200509083654.5178-3-chao.hao@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 9F19ACAE1B3DEF7E5400D3D9BC819389FFCDC31F868E03319EA154150F0F08962000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_231326_825635_32089064 
X-CRM114-Status: GOOD (  17.63  )
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
> For iommu offset=0x48 register, only the previous mt8173/mt8183 use the
> name STANDARD_AXI_MODE, all the latest SoC extend the register more
> feature by different bits, for example: axi_mode, in_order_en, coherent_en
> and so on. So rename REG_MMU_MISC_CTRL may be more proper.
> 
> This patch only rename the register name, no functional change.
> 
> Signed-off-by: Chao Hao <chao.hao@mediatek.com>

Reviewed-by: Yong Wu <yong.wu@mediatek.com>

> ---
>  drivers/iommu/mtk_iommu.c | 14 +++++++-------
>  drivers/iommu/mtk_iommu.h |  2 +-
>  2 files changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
> index 5f4d6df59cf6..e7e7c7695ed1 100644
> --- a/drivers/iommu/mtk_iommu.c
> +++ b/drivers/iommu/mtk_iommu.c
> @@ -41,7 +41,7 @@
>  #define F_INVLD_EN0				BIT(0)
>  #define F_INVLD_EN1				BIT(1)
>  
> -#define REG_MMU_STANDARD_AXI_MODE		0x048
> +#define REG_MMU_MISC_CTRL			0x048
>  #define REG_MMU_DCM_DIS				0x050
>  
>  #define REG_MMU_CTRL_REG			0x110
> @@ -585,8 +585,10 @@ static int mtk_iommu_hw_init(const struct mtk_iommu_data *data)
>  	}
>  	writel_relaxed(0, data->base + REG_MMU_DCM_DIS);
>  
> -	if (data->plat_data->reset_axi)
> -		writel_relaxed(0, data->base + REG_MMU_STANDARD_AXI_MODE);
> +	if (data->plat_data->reset_axi) {
> +		/* The register is called STANDARD_AXI_MODE in this case */
> +		writel_relaxed(0, data->base + REG_MMU_MISC_CTRL);
> +	}
>  
>  	if (devm_request_irq(data->dev, data->irq, mtk_iommu_isr, 0,
>  			     dev_name(data->dev), (void *)data)) {
> @@ -730,8 +732,7 @@ static int __maybe_unused mtk_iommu_suspend(struct device *dev)
>  	struct mtk_iommu_suspend_reg *reg = &data->reg;
>  	void __iomem *base = data->base;
>  
> -	reg->standard_axi_mode = readl_relaxed(base +
> -					       REG_MMU_STANDARD_AXI_MODE);
> +	reg->misc_ctrl = readl_relaxed(base + REG_MMU_MISC_CTRL);
>  	reg->dcm_dis = readl_relaxed(base + REG_MMU_DCM_DIS);
>  	reg->ctrl_reg = readl_relaxed(base + REG_MMU_CTRL_REG);
>  	reg->int_control0 = readl_relaxed(base + REG_MMU_INT_CONTROL0);
> @@ -755,8 +756,7 @@ static int __maybe_unused mtk_iommu_resume(struct device *dev)
>  		dev_err(data->dev, "Failed to enable clk(%d) in resume\n", ret);
>  		return ret;
>  	}
> -	writel_relaxed(reg->standard_axi_mode,
> -		       base + REG_MMU_STANDARD_AXI_MODE);
> +	writel_relaxed(reg->misc_ctrl, base + REG_MMU_MISC_CTRL);
>  	writel_relaxed(reg->dcm_dis, base + REG_MMU_DCM_DIS);
>  	writel_relaxed(reg->ctrl_reg, base + REG_MMU_CTRL_REG);
>  	writel_relaxed(reg->int_control0, base + REG_MMU_INT_CONTROL0);
> diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
> index ea949a324e33..1b6ea839b92c 100644
> --- a/drivers/iommu/mtk_iommu.h
> +++ b/drivers/iommu/mtk_iommu.h
> @@ -18,7 +18,7 @@
>  #include <soc/mediatek/smi.h>
>  
>  struct mtk_iommu_suspend_reg {
> -	u32				standard_axi_mode;
> +	u32				misc_ctrl;
>  	u32				dcm_dis;
>  	u32				ctrl_reg;
>  	u32				int_control0;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
