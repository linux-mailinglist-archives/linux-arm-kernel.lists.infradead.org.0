Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 189A065632
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 13:54:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fVsGC6GV7gegEMjJyev8fcvL6GJQJx2azQZ4QxC8tbc=; b=e/AF8J7iQgUR42
	22I//KOR4yFK5TCxE37HDVngavkCUiCOCHYQNbp5nqeqAqRThFVqjGZN2lvn0xtmz+owmOQtngRlv
	y3ib0ekKbKlVB8bWsLLu2c0aYHugcm2uCz5FsLiUqH15qLV2TiNvQ0/s2T2q3cpKE1wFlk7EnE2DA
	io7TUhFM6binSCR6XRsb8vVtNSNvQVpFKO7WMG0hyb0PdB+Dhrm43lxSi2NYPGb4sxOdmEesR5b1e
	PAEd3UEEoDhUGU0nlsk/RO73tCsdM+ldl5SmbDZBYRtoB6wGa/IqhYVMozLEOLhpE+wi4kbeW97Vc
	yF4tu8LYVstU+HTrhF6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlXeU-00079i-Qz; Thu, 11 Jul 2019 11:54:18 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlXeM-00078S-0E; Thu, 11 Jul 2019 11:54:11 +0000
X-UUID: 332befba0ed34ab1b919ca20e4ef41c4-20190711
X-UUID: 332befba0ed34ab1b919ca20e4ef41c4-20190711
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 225495655; Thu, 11 Jul 2019 03:54:02 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 11 Jul 2019 04:54:00 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 11 Jul 2019 19:53:57 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 11 Jul 2019 19:53:56 +0800
Message-ID: <1562846036.31342.10.camel@mhfsdcap03>
Subject: Re: [PATCH v8 07/21] iommu/io-pgtable-arm-v7s: Extend MediaTek 4GB
 Mode
From: Yong Wu <yong.wu@mediatek.com>
To: Will Deacon <will@kernel.org>
Date: Thu, 11 Jul 2019 19:53:56 +0800
In-Reply-To: <20190710143649.w5dplhzdpi3bxp7e@willie-the-truck>
References: <1561774167-24141-1-git-send-email-yong.wu@mediatek.com>
 <1561774167-24141-8-git-send-email-yong.wu@mediatek.com>
 <20190710143649.w5dplhzdpi3bxp7e@willie-the-truck>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 0C86952889D210679121FAA38297439300932F8917CA01830F3FF75C994BE39B2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_045410_051478_77D525CD 
X-CRM114-Status: GOOD (  30.73  )
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
Cc: youlin.pei@mediatek.com, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, cui.zhang@mediatek.com,
 srv_heupstream@mediatek.com, chao.hao@mediatek.com,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Evan
 Green <evgreen@chromium.org>, Tomasz Figa <tfiga@google.com>,
 iommu@lists.linux-foundation.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 yingjoe.chen@mediatek.com, anan.sun@mediatek.com,
 Robin Murphy <robin.murphy@arm.com>, Matthias Kaehlcke <mka@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-07-10 at 15:36 +0100, Will Deacon wrote:
> On Sat, Jun 29, 2019 at 10:09:13AM +0800, Yong Wu wrote:
> > MediaTek extend the arm v7s descriptor to support the dram over 4GB.
> > 
> > In the mt2712 and mt8173, it's called "4GB mode", the physical address
> > is from 0x4000_0000 to 0x1_3fff_ffff, but from EMI point of view, it
> > is remapped to high address from 0x1_0000_0000 to 0x1_ffff_ffff, the
> > bit32 is always enabled. thus, in the M4U, we always enable the bit9
> > for all PTEs which means to enable bit32 of physical address.
> > 
> > but in mt8183, M4U support the dram from 0x4000_0000 to 0x3_ffff_ffff
> > which isn't remaped. We extend the PTEs: the bit9 represent bit32 of
> > PA and the bit4 represent bit33 of PA. Meanwhile the iova still is
> > 32bits.
> 
> What happens if bit4 is set in the pte for mt2712 or mt8173? Perhaps the

bit4 is ignored in mt2712 and mt8173(No effect).

> io-pgtable backend should be allowing oas > 32 when
> IO_PGTABLE_QUIRK_ARM_MTK_4GB is set, and then enforcing that itself.

About oas, It looks the oas doesn't work in current the v7s. 

How about I add a new simple preparing patch like this(copy from
io-pgtable-arm.c)?

==========================================
--- a/drivers/iommu/io-pgtable-arm-v7s.c
+++ b/drivers/iommu/io-pgtable-arm-v7s.c
@@ -495,7 +495,8 @@ static int arm_v7s_map(struct io_pgtable_ops *ops,
unsigned long iova,
        if (!(prot & (IOMMU_READ | IOMMU_WRITE)))
                return 0;

-       if (WARN_ON(upper_32_bits(iova) || upper_32_bits(paddr)))
+       if (WARN_ON(iova >= (1ULL << data->iop.cfg.ias) ||
+                   paddr >= (1ULL << data->iop.cfg.oas)))
                return -ERANGE;

===============================================

Then, change the oas in MTK 4GB mode, like this:

================================================
--- a/drivers/iommu/io-pgtable-arm-v7s.c
+++ b/drivers/iommu/io-pgtable-arm-v7s.c
@@ -721,7 +721,9 @@ static struct io_pgtable
*arm_v7s_alloc_pgtable(struct io_pgtable_cfg *cfg,
 {
        struct arm_v7s_io_pgtable *data;

-       if (cfg->ias > ARM_V7S_ADDR_BITS || cfg->oas >
ARM_V7S_ADDR_BITS)
+       if (cfg->ias > ARM_V7S_ADDR_BITS ||
+           (cfg->oas > ARM_V7S_ADDR_BITS &&
+            !(cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_4GB)))
                return NULL;

        if (cfg->quirks & ~(IO_PGTABLE_QUIRK_ARM_NS |

--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -274,7 +274,7 @@ static int mtk_iommu_domain_finalise(struct
mtk_iommu_domain *dom)
                        IO_PGTABLE_QUIRK_TLBI_ON_MAP,
                .pgsize_bitmap = mtk_iommu_ops.pgsize_bitmap,
                .ias = 32,
-               .oas = 32,
+               .oas = 34,
                .tlb = &mtk_iommu_gather_ops,
                .iommu_dev = data->dev,
        };
================================================


> 
> > In order to unify code, in the "4GB mode", we add the bit32 for the
> > physical address manually in our driver.
> > 
> > Correspondingly, Adding bit32 and bit33 for the PA in the iova_to_phys
> > has to been moved into v7s.
> > 
> > Regarding whether the pagetable address could be over 4GB, the mt8183
> > support it while the previous mt8173 don't. thus keep it as is.
> > 
> > Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> > Reviewed-by: Robin Murphy <robin.murphy@arm.com>
> > Reviewed-by: Evan Green <evgreen@chromium.org>
> > ---
> > Comparing with the previous one:
> > 1). Add a new patch "iommu/mediatek: Fix iova_to_phys PA start for 4GB
> > mode" before this one. Thus rebase it.
> > A little difference: in the 4gb mode, we add bit32 for PA. and the PA got
> > from iova_to_phys always have bit32 here, thus we should adjust it to locate
> > the valid pa.
> > 2). Add this code suggested from Evan.
> >  if (!data->plat_data->has_4gb_mode)
> > 	       data->enable_4GB = false;
> > ---
> >  drivers/iommu/io-pgtable-arm-v7s.c | 31 ++++++++++++++++++++++++-------
> >  drivers/iommu/mtk_iommu.c          | 29 ++++++++++++++++++-----------
> >  drivers/iommu/mtk_iommu.h          |  1 +
> >  3 files changed, 43 insertions(+), 18 deletions(-)
> > 
> > diff --git a/drivers/iommu/io-pgtable-arm-v7s.c b/drivers/iommu/io-pgtable-arm-v7s.c
> > index 94c38db..4077822 100644
> > --- a/drivers/iommu/io-pgtable-arm-v7s.c
> > +++ b/drivers/iommu/io-pgtable-arm-v7s.c
> > @@ -123,7 +123,9 @@
> >  #define ARM_V7S_TEX_MASK		0x7
> >  #define ARM_V7S_ATTR_TEX(val)		(((val) & ARM_V7S_TEX_MASK) << ARM_V7S_TEX_SHIFT)
> >  
> > -#define ARM_V7S_ATTR_MTK_4GB		BIT(9) /* MTK extend it for 4GB mode */
> > +/* MediaTek extend the two bits below for over 4GB mode */
> > +#define ARM_V7S_ATTR_MTK_PA_BIT32	BIT(9)
> > +#define ARM_V7S_ATTR_MTK_PA_BIT33	BIT(4)
> >  
> >  /* *well, except for TEX on level 2 large pages, of course :( */
> >  #define ARM_V7S_CONT_PAGE_TEX_SHIFT	6
> > @@ -190,13 +192,22 @@ static dma_addr_t __arm_v7s_dma_addr(void *pages)
> >  static arm_v7s_iopte paddr_to_iopte(phys_addr_t paddr, int lvl,
> >  				    struct io_pgtable_cfg *cfg)
> >  {
> > -	return paddr & ARM_V7S_LVL_MASK(lvl);
> > +	arm_v7s_iopte pte = paddr & ARM_V7S_LVL_MASK(lvl);
> > +
> > +	if (cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_4GB) {
> > +		if (paddr & BIT_ULL(32))
> > +			pte |= ARM_V7S_ATTR_MTK_PA_BIT32;
> > +		if (paddr & BIT_ULL(33))
> > +			pte |= ARM_V7S_ATTR_MTK_PA_BIT33;
> > +	}
> > +	return pte;
> >  }
> >  
> >  static phys_addr_t iopte_to_paddr(arm_v7s_iopte pte, int lvl,
> >  				  struct io_pgtable_cfg *cfg)
> >  {
> >  	arm_v7s_iopte mask;
> > +	phys_addr_t paddr;
> >  
> >  	if (ARM_V7S_PTE_IS_TABLE(pte, lvl))
> >  		mask = ARM_V7S_TABLE_MASK;
> > @@ -205,7 +216,14 @@ static phys_addr_t iopte_to_paddr(arm_v7s_iopte pte, int lvl,
> >  	else
> >  		mask = ARM_V7S_LVL_MASK(lvl);
> >  
> > -	return pte & mask;
> > +	paddr = pte & mask;
> > +	if (cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_4GB) {
> > +		if (pte & ARM_V7S_ATTR_MTK_PA_BIT32)
> > +			paddr |= BIT_ULL(32);
> > +		if (pte & ARM_V7S_ATTR_MTK_PA_BIT33)
> > +			paddr |= BIT_ULL(33);
> > +	}
> > +	return paddr;
> 
> I think this relies on CONFIG_PHYS_ADDR_T_64BIT, which isn't always set on
> 32-bit ARM.

This was discussed at [1]. Robin commented that this is not needed and
build won't complain about this.

[1]
http://lists.infradead.org/pipermail/linux-mediatek/2018-November/015688.html

> 
> Will



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
