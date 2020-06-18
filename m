Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 818FF1FF0E8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 13:46:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZVYpu9mf2n7zP6odmfSswShCyYliEz0AE97CvUlfp+s=; b=YAHyxQwPgMyAFy
	nsLN1I5OsepYVzn/WZ+EtFkXfuQPckw6hBfyJ+7PxTaLu8b09HPsS/2SIz1HpnmgiHLWWSCcXOvml
	5Ex4wwseYpaS4p6Dd0/1qCPprFq8qUxjJWAGCkExyy6YK2h22rEHOHZJqfYcFYzVw8U7h/aB7mpnZ
	fM/zQZEdyWau4qER5pFIGoEmkwJw8xd619O3dyR9TXeYHg5J1bluMj14Y5X88bpfdKC+LslTUJILM
	VGaxlx+MFvrJ96EvgKLI1yF8FJdO3g45nKGsG9jqbohmboyup9OTDxCT/JZYOSs9rzOhtrt4oy2Cz
	5x4HqvIHu8RNeejjxRDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlt01-0003HY-AP; Thu, 18 Jun 2020 11:46:29 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlsyW-0008Gw-JI; Thu, 18 Jun 2020 11:44:59 +0000
X-UUID: 0aa4d90294734ab799c00339d86a65f7-20200618
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=bPuvJFwQK1+UUwK7qWYiuSt1c5UvVj+Vy18oTLOPX74=; 
 b=FkPuKCooyoDAOyg2wthMVb6yX42MHyUe5cqMn4pQ9vpSTTBP9W4fhB4H9sA0yAq1FhomfngG0+VuEVOyq6N4Tjylh3iN+1DlnBEolplWnIKGaHLYxEo88qNnvdW1sBTiZLRgyFwST4MulAhJJCr6vnqH/EHXJOrYHGSJVif+ZaI=;
X-UUID: 0aa4d90294734ab799c00339d86a65f7-20200618
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <chao.hao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1282835294; Thu, 18 Jun 2020 03:44:37 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 18 Jun 2020 04:44:47 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 18 Jun 2020 19:44:39 +0800
Received: from [10.15.20.246] (10.15.20.246) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 18 Jun 2020 19:44:38 +0800
Message-ID: <1592480656.12647.2.camel@mbjsdccf07>
Subject: Re: [PATCH v4 5/7] iommu/mediatek: Add sub_comm id in translation
 fault
From: chao hao <Chao.Hao@mediatek.com>
To: Yong Wu <yong.wu@mediatek.com>
Date: Thu, 18 Jun 2020 19:44:16 +0800
In-Reply-To: <1592392265.20080.11.camel@mhfsdcap03>
References: <20200617030029.4082-1-chao.hao@mediatek.com>
 <20200617030029.4082-6-chao.hao@mediatek.com>
 <4418c5a7-3f17-9d00-43b2-4ffc5d458116@gmail.com>
 <1592392265.20080.11.camel@mhfsdcap03>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_044456_644009_25601D64 
X-CRM114-Status: GOOD (  27.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-06-17 at 19:11 +0800, Yong Wu wrote:
> Hi Matthias,
> 
> Thanks very much for your review.
> 
> On Wed, 2020-06-17 at 11:17 +0200, Matthias Brugger wrote:
> > 
> > On 17/06/2020 05:00, Chao Hao wrote:
> > > The max larb number that a iommu HW support is 8(larb0~larb7 in the below
> > > diagram).
> > > If the larb's number is over 8, we use a sub_common for merging
> > > several larbs into one larb. At this case, we will extend larb_id:
> > > bit[11:9] means common-id;
> > > bit[8:7] means subcommon-id;
> > > From these two variable, we could get the real larb number when
> > > translation fault happen.
> > > The diagram is as below:
> > > 		 EMI
> > > 		  |
> > > 		IOMMU
> > > 		  |
> > >            -----------------
> > > 	   |               |
> > > 	common1   	common0
> > > 	   |		   |
> > > 	   -----------------
> > > 		  |
> > >              smi common
> > > 		  |
> > >   ------------------------------------
> > >   |       |       |       |     |    |
> > >  3'd0    3'd1    3'd2    3'd3  ...  3'd7   <-common_id(max is 8)
> > >   |       |       |       |     |    |
> > > Larb0   Larb1     |     Larb3  ... Larb7
> > > 		  |
> > > 	    smi sub common
> > > 		  |
> > >      --------------------------
> > >      |        |       |       |
> > >     2'd0     2'd1    2'd2    2'd3   <-sub_common_id(max is 4)
> > >      |        |       |       |
> > >    Larb8    Larb9   Larb10  Larb11
> > > 
> > > In this patch we extern larb_remap[] to larb_remap[8][4] for this.
> > 
> > extern -> extend
> > 
> > > larb_remap[x][y]: x mean common-id above, y means subcommon_id above.
> > 
> > mean -> means
> > 
> > > 
> > > We can also distinguish if the M4U HW has sub_common by has_sub_comm
> > > property.
> > > 
> > > Signed-off-by: Chao Hao <chao.hao@mediatek.com>
> > > Reviewed-by: Yong Wu <yong.wu@mediatek.com>
> > > ---
> > >  drivers/iommu/mtk_iommu.c | 20 +++++++++++++-------
> > >  drivers/iommu/mtk_iommu.h |  3 ++-
> > >  2 files changed, 15 insertions(+), 8 deletions(-)
> > > 
> > > diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
> > > index f23919feba4e..a687e8db0e51 100644
> > > --- a/drivers/iommu/mtk_iommu.c
> > > +++ b/drivers/iommu/mtk_iommu.c
> > > @@ -91,6 +91,8 @@
> > >  #define REG_MMU1_INVLD_PA			0x148
> > >  #define REG_MMU0_INT_ID				0x150
> > >  #define REG_MMU1_INT_ID				0x154
> > > +#define F_MMU_INT_ID_COMM_ID(a)			(((a) >> 9) & 0x7)
> > > +#define F_MMU_INT_ID_SUB_COMM_ID(a)		(((a) >> 7) & 0x3)
> > >  #define F_MMU_INT_ID_LARB_ID(a)			(((a) >> 7) & 0x7)
> > >  #define F_MMU_INT_ID_PORT_ID(a)			(((a) >> 2) & 0x1f)
> > >  
> > > @@ -229,7 +231,7 @@ static irqreturn_t mtk_iommu_isr(int irq, void *dev_id)
> > >  	struct mtk_iommu_data *data = dev_id;
> > >  	struct mtk_iommu_domain *dom = data->m4u_dom;
> > >  	u32 int_state, regval, fault_iova, fault_pa;
> > > -	unsigned int fault_larb, fault_port;
> > > +	unsigned int fault_larb, fault_port, sub_comm = 0;
> > >  	bool layer, write;
> > >  
> > >  	/* Read error info from registers */
> > > @@ -245,10 +247,14 @@ static irqreturn_t mtk_iommu_isr(int irq, void *dev_id)
> > >  	}
> > >  	layer = fault_iova & F_MMU_FAULT_VA_LAYER_BIT;
> > >  	write = fault_iova & F_MMU_FAULT_VA_WRITE_BIT;
> > > -	fault_larb = F_MMU_INT_ID_LARB_ID(regval);
> > >  	fault_port = F_MMU_INT_ID_PORT_ID(regval);
> > > -
> > > -	fault_larb = data->plat_data->larbid_remap[fault_larb];
> > > +	if (data->plat_data->has_sub_comm) {
> > > +		fault_larb = F_MMU_INT_ID_COMM_ID(regval);
> > > +		sub_comm = F_MMU_INT_ID_SUB_COMM_ID(regval);
> > > +	} else {
> > > +		fault_larb = F_MMU_INT_ID_LARB_ID(regval);
> > > +	}
> > > +	fault_larb = data->plat_data->larbid_remap[fault_larb][sub_comm];
> > >  
> > >  	if (report_iommu_fault(&dom->domain, data->dev, fault_iova,
> > >  			       write ? IOMMU_FAULT_WRITE : IOMMU_FAULT_READ)) {
> > > @@ -778,7 +784,7 @@ static const struct mtk_iommu_plat_data mt2712_data = {
> > >  	.has_bclk       = true,
> > >  	.has_vld_pa_rng = true,
> > >  	.inv_sel_reg    = REG_MMU_INV_SEL_GEN1,
> > > -	.larbid_remap   = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9},
> > > +	.larbid_remap   = {{0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}},
> > >  };
> > >  
> > >  static const struct mtk_iommu_plat_data mt8173_data = {
> > > @@ -787,14 +793,14 @@ static const struct mtk_iommu_plat_data mt8173_data = {
> > >  	.has_bclk     = true,
> > >  	.reset_axi    = true,
> > >  	.inv_sel_reg  = REG_MMU_INV_SEL_GEN1,
> > > -	.larbid_remap = {0, 1, 2, 3, 4, 5}, /* Linear mapping. */
> > > +	.larbid_remap = {{0}, {1}, {2}, {3}, {4}, {5}}, /* Linear mapping. */
> > >  };
> > >  
> > >  static const struct mtk_iommu_plat_data mt8183_data = {
> > >  	.m4u_plat     = M4U_MT8183,
> > >  	.reset_axi    = true,
> > >  	.inv_sel_reg  = REG_MMU_INV_SEL_GEN1,
> > > -	.larbid_remap = {0, 4, 5, 6, 7, 2, 3, 1},
> > > +	.larbid_remap = {{0}, {4}, {5}, {6}, {7}, {2}, {3}, {1}},
> > >  };
> > >  
> > >  static const struct of_device_id mtk_iommu_of_ids[] = {
> > > diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
> > > index afd7a2de5c1e..d51ff99c2c71 100644
> > > --- a/drivers/iommu/mtk_iommu.h
> > > +++ b/drivers/iommu/mtk_iommu.h
> > > @@ -41,10 +41,11 @@ struct mtk_iommu_plat_data {
> > >  	/* HW will use the EMI clock if there isn't the "bclk". */
> > >  	bool                has_bclk;
> > >  	bool		    has_misc_ctrl;
> > > +	bool		    has_sub_comm;
> > >  	bool                has_vld_pa_rng;
> > >  	bool                reset_axi;
> > >  	u32                 inv_sel_reg;
> > > -	unsigned char       larbid_remap[MTK_LARB_NR_MAX];
> > > +	unsigned char       larbid_remap[8][4];
> > 
> > MTK_LARB_NR_MAX is 16, why do you decrease it to 8?
> 
> From the diagram above, the max number of the larbs that could connected
> with a IOMMU HW is 8. thus, 8 is right here for each a IOMMU HW.
> 
> as I commented when v3. mt2712 have the larbs over 8 since it has 2
> IOMMU HWes.
> 
> and MTK_LARB_NR_MAX means the max larbs number that this SoC support.
> Keep its value as is.
> 
> 
> > Should we use a define for the subcommon as well?
> > 
> > Regards,
> > Matthias
> >

Hi Matthias and yong,
Thanks very much for your review.
HW diagram is as belove and whether we need to use macro definitions to
show it, maybe more clearer? like this:
 
#define LARB_COMMON_MAX             8
#define LARB_SUB_COMMON_MAX         4
unsigned char    larbid_remap[LARB_COMMON_MAX][LARB_SUB_COMMON_MAX];

>  
> > >  };
> > >  
> > >  struct mtk_iommu_domain;
> > > 
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
