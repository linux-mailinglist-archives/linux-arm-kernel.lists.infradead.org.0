Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 683FD992D8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 14:06:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XoZF0RlYoSQwX3VRIhphyNoBapkNb88/aNbxvdZz8pY=; b=Mf/65Fhoso/+Sb
	x7tqwMz5t6aUJwiul/NgoNs+aiv8M2obXq30R6HCELHiJjeESPTT2U4oIa03Ua7TTFmnZmI4qhDVh
	UgT9eC4tTw5MddSSE8xDE8YuEtYAayaRwD36lnjbzV454Z2cPxL2dbT5xVlcaW+hMZR71UZmeKJFE
	8NpTvKV8CCmzkmU6OZlgt9yhx6IbZrQFcI53swvjaYiFhPzGPZmK/zj0uzJJx+KmMuI4ztGYYsLXp
	dybfJnaZQvX+RyVnYRFTAGk3cnARkvGF+TBtuHyw6y6oI4ovsqLeGJZlaboQpvRtc3ZZlQLP1VfQw
	hKRG+wXdCw/tbMYuGPiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0lqp-0006xn-2N; Thu, 22 Aug 2019 12:05:59 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0lqa-0006xR-HH; Thu, 22 Aug 2019 12:05:46 +0000
X-UUID: 870cff0c27f247458ea5116ed24f79cd-20190822
X-UUID: 870cff0c27f247458ea5116ed24f79cd-20190822
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2002956516; Thu, 22 Aug 2019 04:05:33 -0800
Received: from MTKMBS32DR.mediatek.inc (172.27.6.104) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 05:05:31 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS32DR.mediatek.inc
 (172.27.6.104) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 22 Aug 2019 20:05:29 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 22 Aug 2019 20:05:28 +0800
Message-ID: <1566475533.11621.18.camel@mhfsdcap03>
Subject: Re: [PATCH v10 09/23] iommu/io-pgtable-arm-v7s: Extend to support
 PA[33:32] for MediaTek
From: Yong Wu <yong.wu@mediatek.com>
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>
Date: Thu, 22 Aug 2019 20:05:33 +0800
In-Reply-To: <20190822112836.efodtwu3souq3uwa@willie-the-truck>
References: <1566395606-7975-1-git-send-email-yong.wu@mediatek.com>
 <1566395606-7975-10-git-send-email-yong.wu@mediatek.com>
 <20190821152448.qmoqjh5zznfpdi6n@willie-the-truck>
 <1566464186.11621.7.camel@mhfsdcap03>
 <10d5122d-3375-161b-9356-2ddfc1c835bd@arm.com>
 <20190822101749.3kwzd5lb7zinsord@willie-the-truck>
 <e6652176-763d-5298-9e10-8c1fbe1b3c0d@arm.com>
 <20190822112836.efodtwu3souq3uwa@willie-the-truck>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: F20067B59D18F1DAE1600790624773E385B1897B1B418F35B0B8F7CF6BE8012E2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_050544_583196_8ADDBA28 
X-CRM114-Status: GOOD (  32.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
Cc: youlin.pei@mediatek.com, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, cui.zhang@mediatek.com,
 srv_heupstream@mediatek.com, Tomasz Figa <tfiga@google.com>,
 Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, chao.hao@mediatek.com,
 iommu@lists.linux-foundation.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 ming-fan.chen@mediatek.com, anan.sun@mediatek.com,
 Matthias Kaehlcke <mka@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Thanks very much for viewing this so quickly.

On Thu, 2019-08-22 at 12:28 +0100, Will Deacon wrote:
> On Thu, Aug 22, 2019 at 11:57:11AM +0100, Robin Murphy wrote:
> > On 2019-08-22 11:17 am, Will Deacon wrote:
> > > On Thu, Aug 22, 2019 at 11:08:58AM +0100, Robin Murphy wrote:
> > > > On 2019-08-22 9:56 am, Yong Wu wrote:
> > > > > On Wed, 2019-08-21 at 16:24 +0100, Will Deacon wrote:
> > > > > > On Wed, Aug 21, 2019 at 09:53:12PM +0800, Yong Wu wrote:
> > > > > > > MediaTek extend the arm v7s descriptor to support up to 34 bits PA where
> > > > > > > the bit32 and bit33 are encoded in the bit9 and bit4 of the PTE
> > > > > > > respectively. Meanwhile the iova still is 32bits.
> > > > > > > 
> > > > > > > Regarding whether the pagetable address could be over 4GB, the mt8183
> > > > > > > support it while the previous mt8173 don't, thus keep it as is.
> > > > > > > 
> > > > > > > Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> > > > > > > ---
> > > > > > >    drivers/iommu/io-pgtable-arm-v7s.c | 32 +++++++++++++++++++++++++-------
> > > > > > >    include/linux/io-pgtable.h         |  7 +++----
> > > > > > >    2 files changed, 28 insertions(+), 11 deletions(-)
> > > > > > 
> > > > > > [...]
> > > > > > 
> > > > > > > @@ -731,7 +747,9 @@ static struct io_pgtable *arm_v7s_alloc_pgtable(struct io_pgtable_cfg *cfg,
> > > > > > >    {
> > > > > > >    	struct arm_v7s_io_pgtable *data;
> > > > > > > -	if (cfg->ias > ARM_V7S_ADDR_BITS || cfg->oas > ARM_V7S_ADDR_BITS)
> > > > > > > +	if (cfg->ias > ARM_V7S_ADDR_BITS ||
> > > > > > > +	    (cfg->oas > ARM_V7S_ADDR_BITS &&
> > > > > > > +	     !(cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_EXT)))
> > > > > > 
> > > > > > Please can you instead change arm_v7s_alloc_pgtable() so that it allows an
> > > > > > ias of up to 34 when the IO_PGTABLE_QUIRK_ARM_MTK_EXT is set?
> > > > > 
> > > > > Here I only simply skip the oas checking for our case. then which way do
> > > > > your prefer?  something like you commented before:?
> > > > > 
> > > > > 
> > > > > 	if (cfg->ias > ARM_V7S_ADDR_BITS)
> > > > > 		return NULL;
> > > > > 
> > > > > 	if (cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_EXT) {
> > > > > 		if (!IS_ENABLED(CONFIG_PHYS_ADDR_T_64BIT))
> > > > > 			cfg->oas = min(cfg->oas, ARM_V7S_ADDR_BITS);
> > > > > 		else if (cfg->oas > 34)
> > > > > 			return NULL;
> > > > > 	} else if (cfg->oas > ARM_V7S_ADDR_BITS) {
> > > > > 		return NULL;
> > > > > 	}
> > > > 
> > > > All it should take is something like:
> > > > 
> > > > 	if (cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_EXT)
> > > > 		max_oas = 34;
> > > > 	else
> > > > 		max_oas = 32;
> > > > 	if (cfg->oas > max_oas)
> > > > 		return NULL;
> > > > 
> > > > or even just:
> > > > 
> > > > 	if (cfg->oas > 32 ||
> > > > 	    (cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_EXT && cfg->oas > 34))
> > > > 		return NULL;
> > > > 
> > > > (and if we prefer the latter style, perhaps we could introduce some kind of
> > > > "is_mtk_4gb()" helper to save on verbosity)
> > > 
> > > I wondered the same thing, but another place we'd want the check is in
> > > iopte_to_paddr() which probably needs the PHYS_ADDR_T check to avoid GCC
> > > warnings, although I didn't try it.
> > 
> > I'm pretty sure I confirmed that "paddr |= BIT_ULL(32)" doesn't warn when
> > phys_addt_t is 32-bit - it's well-defined unsigned integer truncation after
> > all, and if GCC starts warning about all the valid no-op code it optimises
> > away then it's going to run up against IS_ENABLED() first and foremost ;)
> 
> You're quite right, although we live in a world where GCC shouts at us about
> missing comments in switch statements so I think my worry was justified!
> 
> > > So if we did:
> > > 
> > > static bool cfg_mtk_ext_enabled(struct io_pgtable_cfg *cfg)
> > > {
> > > 	return IS_ENABLED(CONFIG_PHYS_ADDR_T_64BIT) &&
> > > 	       cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_EXT;
> > > }
> > > 
> > > Then I suppose we could do this in _alloc():
> > > 
> > > 	if (cfg->oas > cfg_mtk_ext_enabled(cfg) ? 34 : ARM_V7S_ADDR_BITS)
> > > 		return NULL;
> 
> ^^ Apparantly, I left the bracketting here as an exercise to the reader.
> 
> > > 
> > > and then this in iopte_to_paddr():
> > > 
> > > 	[...]
> > > 
> > > 	paddr = pte & mask;
> > > 	if (!cfg_mtk_ext_enabled(cfg))
> > > 		return paddr;
> > > 
> > > 	if (pte & ARM_V7S_ATTR_MTK_PA_BIT32)
> > > 		paddr |= ...
> > > 
> > > 	[...]
> > > 
> > > What do you reckon?
> > 
> > Yeah, that's the general shape of things I was picturing - I'm not that
> > fussed about the PHYS_ADDR_T_64BIT thing, especially if it's wrapped up in
> > just one place, so if you do want to keep it as belt-and-braces I'll just
> > consider it a slight code size optimisation for 32-bit builds.
> 
> Ok, great. Yong Wu -- are you ok respinning with the above + missing
> brackets?

Of course I can.

NearlyAll the interface in this file is prefixed with "arm_v7s_", so
does the new interface also need it?, like arm_v7s_is_mtk_enabled. And
keep the iopte_to_paddr and paddr_to_iopte symmetrical.


Then the final patch would looks like below, is it ok?

 
+static bool arm_v7s_is_mtk_enabled(struct io_pgtable_cfg *cfg)
+{
+	return IS_ENABLED(CONFIG_PHYS_ADDR_T_64BIT) &&
+		(cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_EXT);
+}
+
 static arm_v7s_iopte paddr_to_iopte(phys_addr_t paddr, int lvl,
 				    struct io_pgtable_cfg *cfg)
 {
-	return paddr & ARM_V7S_LVL_MASK(lvl);
+	arm_v7s_iopte pte = paddr & ARM_V7S_LVL_MASK(lvl);
+
+	if (!arm_v7s_is_mtk_enabled(cfg))
+		return pte;
+
+	if (paddr & BIT_ULL(32))
+		pte |= ARM_V7S_ATTR_MTK_PA_BIT32;
+	if (paddr & BIT_ULL(33))
+		pte |= ARM_V7S_ATTR_MTK_PA_BIT33;
+	return pte;
 }
 
 static phys_addr_t iopte_to_paddr(arm_v7s_iopte pte, int lvl,
 				  struct io_pgtable_cfg *cfg)
 {
 	arm_v7s_iopte mask;
+	phys_addr_t paddr;
 
 	if (ARM_V7S_PTE_IS_TABLE(pte, lvl))
 		mask = ARM_V7S_TABLE_MASK;
@@ -194,7 +212,15 @@ static phys_addr_t iopte_to_paddr(arm_v7s_iopte
pte, int lvl,
 	else
 		mask = ARM_V7S_LVL_MASK(lvl);
 
-	return pte & mask;
+	paddr = pte & mask;
+	if (!arm_v7s_is_mtk_enabled(cfg))
+		return paddr;
+
+	if (pte & ARM_V7S_ATTR_MTK_PA_BIT32)
+		paddr |= BIT_ULL(32);
+	if (pte & ARM_V7S_ATTR_MTK_PA_BIT33)
+		paddr |= BIT_ULL(33);
+	return paddr;
 }
 
 static arm_v7s_iopte *iopte_deref(arm_v7s_iopte pte, int lvl,
@@ -315,9 +341,6 @@ static arm_v7s_iopte arm_v7s_prot_to_pte(int prot,
int lvl,
 	if (lvl == 1 && (cfg->quirks & IO_PGTABLE_QUIRK_ARM_NS))
 		pte |= ARM_V7S_ATTR_NS_SECTION;
 
-	if (cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_EXT)
-		pte |= ARM_V7S_ATTR_MTK_4GB;
-
 	return pte;
 }
 
@@ -731,7 +754,10 @@ static struct io_pgtable
*arm_v7s_alloc_pgtable(struct io_pgtable_cfg *cfg,
 {
 	struct arm_v7s_io_pgtable *data;
 
-	if (cfg->ias > ARM_V7S_ADDR_BITS || cfg->oas > ARM_V7S_ADDR_BITS)
+	if (cfg->ias > ARM_V7S_ADDR_BITS)
+		return NULL;
+
+	if (cfg->oas > (arm_v7s_is_mtk_enabled(cfg) ? 34 : ARM_V7S_ADDR_BITS))
 		return NULL;
 


> 
> Will



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
