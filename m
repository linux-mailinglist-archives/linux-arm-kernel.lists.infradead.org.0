Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D52951E070D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 08:33:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fZswO5TNA4pfXoJKqlnKERHbddWi8Zb5ge9wGvl/lys=; b=YmR7Do5vMJEBNo
	AfCdeda0gZ+h4ydyNA5U8DSv7IwbuRwjOfAgf3nj8nXvK82MQdKRKLUhRb4P5QeuCCTpYF2xR0vj1
	Vp8CGgAlQbj//nOIJ66ur8ms0aBmz6QnerTloBtgotSG/0b0GkeU9kRxhSh8XGy8uYSOkRS0I73G+
	hHS2Qv0JSiKUG+Qqnlf6LvVQwG1EH4ZI0hf+qriwqC1yI7jWe/O1YjDNUVfS51ie8S1CwxCSLC2uE
	DMs3qnQYFqCjWSQ4hb/SYsPJtb7lTnZFFaSnvE5Jdw/EPAMgxsCzQo3S6g+JKBlMyDoxaToy+DnDp
	Sc7lOsa2I7qsgtr4Dozw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd6gI-0006HT-KY; Mon, 25 May 2020 06:33:50 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd6g2-0006G8-K8; Mon, 25 May 2020 06:33:36 +0000
X-UUID: 2d077a92d5a845c0b04b67c108887d4e-20200524
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=yX9DbdtxP2DzviHUTXSqqtm5djMy9Kag6CeDl4UJwgY=; 
 b=cB2mCdjtp5Q6HPHxys4r1gnum8R9U9b/LF9GdeKjluhsBWBGCPYhqToX5m7q69q9Yb8idWRZOhSkO3ym5+XmYdKVwTSZlXFUSP0iD8BoMM5hmtYE/gVaCqEeWIGQOhVcaPiYuZ0Peios5veHYBmixAhhTy39btpVzmbfR/W6N3o=;
X-UUID: 2d077a92d5a845c0b04b67c108887d4e-20200524
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2087756207; Sun, 24 May 2020 22:33:32 -0800
Received: from MTKMBS32N2.mediatek.inc (172.27.4.72) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 24 May 2020 23:33:29 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS32N2.mediatek.inc
 (172.27.4.72) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Mon, 25 May 2020 14:33:27 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 25 May 2020 14:33:26 +0800
Message-ID: <1590388305.13912.16.camel@mhfsdcap03>
Subject: Re: [PATCH v3 5/7] iommu/mediatek: Add sub_comm id in translation
 fault
From: Yong Wu <yong.wu@mediatek.com>
To: Chao Hao <chao.hao@mediatek.com>
Date: Mon, 25 May 2020 14:31:45 +0800
In-Reply-To: <20200509083654.5178-6-chao.hao@mediatek.com>
References: <20200509083654.5178-1-chao.hao@mediatek.com>
 <20200509083654.5178-6-chao.hao@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: D04CEC16514D9461F79069ADF288E5C328AE4284FF7CB22830DF0E34DCEFE93A2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_233334_668361_C4F6934B 
X-CRM114-Status: GOOD (  19.55  )
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
> The max larb number that a iommu HW support is 8(larb0~larb7 in the below
> diagram).
> If the larb's number is over 8, we use a sub_common for merging
> several larbs into one larb. At this case, we will extend larb_id:
> bit[11:9] means common-id;
> bit[8:7] means subcommon-id;
> From these two variable, we could get the real larb number when
> translation fault happen.
> The diagram is as below:
> 		 EMI
> 		  |
> 		IOMMU
> 		  |
>            -----------------
> 	   |               |
> 	common1   	common0
> 	   |		   |
> 	   -----------------
> 		  |
>              smi common
> 		  |
>   ------------------------------------
>   |       |       |       |     |    |
>  3'd0    3'd1    3'd2    3'd3  ...  3'd7   <-common_id(max is 8)
>   |       |       |       |     |    |
> Larb0   Larb1     |     Larb3  ... Larb7
> 		  |
> 	    smi sub common
> 		  |
>      --------------------------
>      |        |       |       |
>     2'd0     2'd1    2'd2    2'd3   <-sub_common_id(max is 4)
>      |        |       |       |
>    Larb8    Larb9   Larb10  Larb11
> 
> In this patch we extern larb_remap[] to larb_remap[8][4] for this.
> larb_remap[x][y]: x mean common-id above, y means subcommon_id above.
> 
> We can also distinguish if the M4U HW has sub_common by has_sub_comm
> property.
> 
> Signed-off-by: Chao Hao <chao.hao@mediatek.com>
> ---
>  drivers/iommu/mtk_iommu.c | 20 +++++++++++++-------
>  drivers/iommu/mtk_iommu.h |  3 ++-
>  2 files changed, 15 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
> index d73de987f8be..3914c418d1b0 100644
> --- a/drivers/iommu/mtk_iommu.c
> +++ b/drivers/iommu/mtk_iommu.c
> @@ -90,6 +90,8 @@
>  #define REG_MMU1_INVLD_PA			0x148
>  #define REG_MMU0_INT_ID				0x150
>  #define REG_MMU1_INT_ID				0x154
> +#define F_MMU_INT_ID_COMM_ID(a)			(((a) >> 9) & 0x7)
> +#define F_MMU_INT_ID_SUB_COMM_ID(a)		(((a) >> 7) & 0x3)
>  #define F_MMU_INT_ID_LARB_ID(a)			(((a) >> 7) & 0x7)
>  #define F_MMU_INT_ID_PORT_ID(a)			(((a) >> 2) & 0x1f)
>  
> @@ -228,7 +230,7 @@ static irqreturn_t mtk_iommu_isr(int irq, void *dev_id)
>  	struct mtk_iommu_data *data = dev_id;
>  	struct mtk_iommu_domain *dom = data->m4u_dom;
>  	u32 int_state, regval, fault_iova, fault_pa;
> -	unsigned int fault_larb, fault_port;
> +	unsigned int fault_larb, fault_port, sub_comm = 0;
>  	bool layer, write;
>  
>  	/* Read error info from registers */
> @@ -244,10 +246,14 @@ static irqreturn_t mtk_iommu_isr(int irq, void *dev_id)
>  	}
>  	layer = fault_iova & F_MMU_FAULT_VA_LAYER_BIT;
>  	write = fault_iova & F_MMU_FAULT_VA_WRITE_BIT;
> -	fault_larb = F_MMU_INT_ID_LARB_ID(regval);
>  	fault_port = F_MMU_INT_ID_PORT_ID(regval);
> -
> -	fault_larb = data->plat_data->larbid_remap[fault_larb];
> +	if (data->plat_data->has_sub_comm) {
> +		fault_larb = F_MMU_INT_ID_COMM_ID(regval);
> +		sub_comm = F_MMU_INT_ID_SUB_COMM_ID(regval);
> +	} else {
> +		fault_larb = F_MMU_INT_ID_LARB_ID(regval);
> +	}
> +	fault_larb = data->plat_data->larbid_remap[fault_larb][sub_comm];
>  
>  	if (report_iommu_fault(&dom->domain, data->dev, fault_iova,
>  			       write ? IOMMU_FAULT_WRITE : IOMMU_FAULT_READ)) {
> @@ -785,7 +791,7 @@ static const struct mtk_iommu_plat_data mt2712_data = {
>  	.has_bclk     = true,
>  	.has_vld_pa_rng   = true,
>  	.inv_sel_reg = REG_MMU_INV_SEL_GEN1,
> -	.larbid_remap = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9},
> +	.larbid_remap = {{0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}},

The original mt2712 has 10 larbs, but it actually has 2 IOMMU HWs.
For each a smi-common, The max larb number could only be 8. So it is
right here.

Thus,
Reviewed-by: Yong Wu <yong.wu@mediatek.com>

>  };
>  
>  static const struct mtk_iommu_plat_data mt8173_data = {
> @@ -794,14 +800,14 @@ static const struct mtk_iommu_plat_data mt8173_data = {
>  	.has_bclk     = true,
>  	.reset_axi    = true,
>  	.inv_sel_reg = REG_MMU_INV_SEL_GEN1,
> -	.larbid_remap = {0, 1, 2, 3, 4, 5}, /* Linear mapping. */
> +	.larbid_remap = {{0}, {1}, {2}, {3}, {4}, {5}}, /* Linear mapping. */
>  };
>  
>  static const struct mtk_iommu_plat_data mt8183_data = {
>  	.m4u_plat     = M4U_MT8183,
>  	.reset_axi    = true,
>  	.inv_sel_reg = REG_MMU_INV_SEL_GEN1,
> -	.larbid_remap = {0, 4, 5, 6, 7, 2, 3, 1},
> +	.larbid_remap = {{0}, {4}, {5}, {6}, {7}, {2}, {3}, {1}},
>  };
>  
>  static const struct of_device_id mtk_iommu_of_ids[] = {
> diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
> index afd7a2de5c1e..d51ff99c2c71 100644
> --- a/drivers/iommu/mtk_iommu.h
> +++ b/drivers/iommu/mtk_iommu.h
> @@ -41,10 +41,11 @@ struct mtk_iommu_plat_data {
>  	/* HW will use the EMI clock if there isn't the "bclk". */
>  	bool                has_bclk;
>  	bool		    has_misc_ctrl;
> +	bool		    has_sub_comm;
>  	bool                has_vld_pa_rng;
>  	bool                reset_axi;
>  	u32                 inv_sel_reg;
> -	unsigned char       larbid_remap[MTK_LARB_NR_MAX];
> +	unsigned char       larbid_remap[8][4];
>  };
>  
>  struct mtk_iommu_domain;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
