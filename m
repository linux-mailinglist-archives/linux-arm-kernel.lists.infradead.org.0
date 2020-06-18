Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2CB41FF10E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 13:54:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=81b4APFpleWGihdXyZhlm7reLL9vpmv7z2pLUwCCKS0=; b=Djbmfcrm/KrQOC
	pQ7IHLXxv7vMPGUEPT6AbxFNzV+34rCwtafERAL6UARuWf949hiQdJkPQzf6rMr1r9eZeEHS9xzbW
	reaUnZKO9bSNNJLM6QKWj/k7ieedsoN4NeSSheOulvBKY3e9wBOrqIvV9sJhYboPe2sAzCjQIBp1x
	sxwRaFBw7DSEFZUdx/AjIAjAhx9cslqJsb+bWK2SKUZMDuCR2C6IA8uzQuLXjssR5SfkKs+LA0/bY
	3wEkrnl91vlzkOn9KusoGZdL+pzkxVaMSnxsOju16exR5Hf2bvGdMPq1TqCEA3/W+gtSYpHTg9UOl
	lkb8a7GormsxLvCq4e6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlt86-0007PR-0A; Thu, 18 Jun 2020 11:54:50 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlt7u-0007Nd-ON; Thu, 18 Jun 2020 11:54:40 +0000
X-UUID: 923ae3fab87944f39eaae99efd7e1569-20200618
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=0Ca4KSQESd08gqugE34Pvd6JgfE/JxSeHD1HM8jBsE8=; 
 b=gi6kL+ZddZciJ443lQIuc/GMQ60OPb2ZIRV8hIKuCjjAlOR81SmM5lpwtiQtfxHQzQi0IqRSzwYsXDiDOPTGkIpdjgUDq2bA1V3p4gE1SYXgb7E9YSMiTffKvn2jlDQrS3ZPdfZjVVBi9TdSAsJFk0bVPd2J9VVYOt9sGAlBWzY=;
X-UUID: 923ae3fab87944f39eaae99efd7e1569-20200618
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <chao.hao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1721401897; Thu, 18 Jun 2020 03:54:22 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 18 Jun 2020 04:54:32 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 18 Jun 2020 19:54:30 +0800
Received: from [10.15.20.246] (10.15.20.246) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 18 Jun 2020 19:54:29 +0800
Message-ID: <1592481247.12647.9.camel@mbjsdccf07>
Subject: Re: [PATCH v4 7/7] iommu/mediatek: Add mt6779 basic support
From: chao hao <Chao.Hao@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Thu, 18 Jun 2020 19:54:07 +0800
In-Reply-To: <64f63ccc-92a4-191c-3566-de00c9e04ca2@gmail.com>
References: <20200617030029.4082-1-chao.hao@mediatek.com>
 <20200617030029.4082-8-chao.hao@mediatek.com>
 <64f63ccc-92a4-191c-3566-de00c9e04ca2@gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 7A9ED2E1603EBFD22BC52CF630C4D6C113E7B91AEC8A135D07FB84444CE0BA5C2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_045438_798967_8E7F284E 
X-CRM114-Status: GOOD (  26.01  )
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
 linux-kernel@vger.kernel.org, Chao Hao <chao.hao@mediatek.com>,
 iommu@lists.linux-foundation.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Yong Wu <yong.wu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-06-17 at 11:33 +0200, Matthias Brugger wrote:
> 
> On 17/06/2020 05:00, Chao Hao wrote:
> > 1. Start from mt6779, INVLDT_SEL move to offset=0x2c, so we add
> >    REG_MMU_INV_SEL_GEN2 definition and mt6779 uses it.
> > 2. Change PROTECT_PA_ALIGN from 128 byte to 256 byte.
> > 3. For REG_MMU_CTRL_REG register, we only need to change bit[2:0],
> >    others bits keep default value, ex: enable victim tlb.
> > 4. Add mt6779_data to support mm_iommu HW init.
> > 
> > Change since v3:
> > 1. When setting MMU_CTRL_REG, we don't need to include mt8173.
> > 
> > Cc: Yong Wu <yong.wu@mediatek.com>
> > Signed-off-by: Chao Hao <chao.hao@mediatek.com>
> > ---
> >  drivers/iommu/mtk_iommu.c | 20 ++++++++++++++++++--
> >  drivers/iommu/mtk_iommu.h |  1 +
> >  2 files changed, 19 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
> > index c706bca6487e..def2e996683f 100644
> > --- a/drivers/iommu/mtk_iommu.c
> > +++ b/drivers/iommu/mtk_iommu.c
> > @@ -37,6 +37,11 @@
> >  #define REG_MMU_INVLD_START_A			0x024
> >  #define REG_MMU_INVLD_END_A			0x028
> >  
> > +/* In latest Coda, MMU_INV_SEL's offset is changed to 0x02c.
> > + * So we named offset = 0x02c to "REG_MMU_INV_SEL_GEN2"
> > + * and offset = 0x038 to "REG_MMU_INV_SEL_GEN1".
> > + */
> 
> Please delete the comment, this should be understandable from the git history

ok, thanks

> 
> > +#define REG_MMU_INV_SEL_GEN2			0x02c
> >  #define REG_MMU_INV_SEL_GEN1			0x038
> >  #define F_INVLD_EN0				BIT(0)
> >  #define F_INVLD_EN1				BIT(1)
> > @@ -98,7 +103,7 @@
> >  #define F_MMU_INT_ID_LARB_ID(a)			(((a) >> 7) & 0x7)
> >  #define F_MMU_INT_ID_PORT_ID(a)			(((a) >> 2) & 0x1f)
> >  
> > -#define MTK_PROTECT_PA_ALIGN			128
> > +#define MTK_PROTECT_PA_ALIGN			256
> 
> Do we need 512 bytes for all gen2 IOMMUs?
> I'm not sure if we should add this in plat_data or if we should just bump up the
> value for all SoCs.
> In both cases this should be a separate patch.
> 
From mt6779, MTK_PROTECT_PA_ALIGN is extend to 256 bytes and don't be
changed for a long time from our HW designer comment. The legacy iommu
also can use it, mabye it doesn't set it by platform.


> >  
> >  /*
> >   * Get the local arbiter ID and the portid within the larb arbiter
> > @@ -543,11 +548,12 @@ static int mtk_iommu_hw_init(const struct mtk_iommu_data *data)
> >  		return ret;
> >  	}
> >  
> > +	regval = readl_relaxed(data->base + REG_MMU_CTRL_REG);
> >  	if (data->plat_data->m4u_plat == M4U_MT8173)
> >  		regval = F_MMU_PREFETCH_RT_REPLACE_MOD |
> >  			 F_MMU_TF_PROT_TO_PROGRAM_ADDR_MT8173;
> >  	else
> > -		regval = F_MMU_TF_PROT_TO_PROGRAM_ADDR;
> > +		regval |= F_MMU_TF_PROT_TO_PROGRAM_ADDR;
> 
> Why do we change this, is it that the bootloader for mt6779 set some values in
> the register we have to keep? In this case I think we should update the regval
> accordingly.

For REG_MMU_CTRL_REG, bit[12] represents victim_tlb_en feature and
victim_tlb is enable defaultly(bit[12]=1),but if we use "regval =
F_MMU_TF_PROT_TO_PROGRAM_ADDR", victim_tlb will disable, it will drop
iommu performace for mt6779


> 
> >  	writel_relaxed(regval, data->base + REG_MMU_CTRL_REG);
> >  
> >  	regval = F_L2_MULIT_HIT_EN |
> > @@ -797,6 +803,15 @@ static const struct mtk_iommu_plat_data mt2712_data = {
> >  	.larbid_remap   = {{0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}},
> >  };
> >  
> > +static const struct mtk_iommu_plat_data mt6779_data = {
> > +	.m4u_plat      = M4U_MT6779,
> > +	.has_sub_comm  = true,
> > +	.has_wr_len    = true,
> > +	.has_misc_ctrl = true,
> > +	.inv_sel_reg   = REG_MMU_INV_SEL_GEN2,
> > +	.larbid_remap  = {{0}, {1}, {2}, {3}, {5}, {7, 8}, {10}, {9}},
> > +};
> > +
> >  static const struct mtk_iommu_plat_data mt8173_data = {
> >  	.m4u_plat     = M4U_MT8173,
> >  	.has_4gb_mode = true,
> > @@ -815,6 +830,7 @@ static const struct mtk_iommu_plat_data mt8183_data = {
> >  
> >  static const struct of_device_id mtk_iommu_of_ids[] = {
> >  	{ .compatible = "mediatek,mt2712-m4u", .data = &mt2712_data},
> > +	{ .compatible = "mediatek,mt6779-m4u", .data = &mt6779_data},
> >  	{ .compatible = "mediatek,mt8173-m4u", .data = &mt8173_data},
> >  	{ .compatible = "mediatek,mt8183-m4u", .data = &mt8183_data},
> >  	{}
> > diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
> > index 9971cedd72ea..fb79e710c8d9 100644
> > --- a/drivers/iommu/mtk_iommu.h
> > +++ b/drivers/iommu/mtk_iommu.h
> > @@ -31,6 +31,7 @@ struct mtk_iommu_suspend_reg {
> >  enum mtk_iommu_plat {
> >  	M4U_MT2701,
> >  	M4U_MT2712,
> > +	M4U_MT6779,
> >  	M4U_MT8173,
> >  	M4U_MT8183,
> >  };
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
