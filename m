Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C9A6C8C7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 07:38:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wb9mvED+RYLXDTjslmaqnCTetsQOey5gnu0iN6ozbtU=; b=dqlCi1zUt5em5i
	jyTpsLdvV7FwgX8qcS/6o7rwNr1MT6ttmAY5j570lkVMF1zFcRViK88IoA6vj6COtp7t/9J4yRsCW
	2Es0MTcFfmaN4mDRkjw5jG6yCoted0oqXLN8ZB1Nx/BCd0/5H0/+/TfdPISZSsFL1R3q0a7grfmmY
	L8OubemVomdr41LtEXVX8BwyTztKpqF1D0+2Ngzz8dqIG96GurFErL4iRBfaPUHElpO2giqBZmmwy
	IyFGD4BujRTkgm1WhaU2pfhabqzeCERwY2dH9xHHMkHeJoezNoKvz4Whb0t2uLZVvu+iV5aC0iSOb
	S8lk1VJ60q8yHF6Ef7PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnz7O-0005Jz-RC; Thu, 18 Jul 2019 05:38:14 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnz6p-0005Ij-Ce; Thu, 18 Jul 2019 05:37:41 +0000
X-UUID: 92863a26e45b4781b3fa0b783bcb0d0f-20190717
X-UUID: 92863a26e45b4781b3fa0b783bcb0d0f-20190717
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1522020798; Wed, 17 Jul 2019 21:37:32 -0800
Received: from MTKMBS32DR.mediatek.inc (172.27.6.104) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 17 Jul 2019 22:37:30 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS32DR.mediatek.inc
 (172.27.6.104) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 18 Jul 2019 13:37:24 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 18 Jul 2019 13:37:23 +0800
Message-ID: <1563428243.31342.39.camel@mhfsdcap03>
Subject: Re: [PATCH v8 07/21] iommu/io-pgtable-arm-v7s: Extend MediaTek 4GB
 Mode
From: Yong Wu <yong.wu@mediatek.com>
To: Will Deacon <will@kernel.org>
Date: Thu, 18 Jul 2019 13:37:23 +0800
In-Reply-To: <20190717142339.wltamw6wktwixqqn@willie-the-truck>
References: <1561774167-24141-1-git-send-email-yong.wu@mediatek.com>
 <1561774167-24141-8-git-send-email-yong.wu@mediatek.com>
 <20190710143649.w5dplhzdpi3bxp7e@willie-the-truck>
 <1562846036.31342.10.camel@mhfsdcap03>
 <20190711123129.da4rg35b54u4svfw@willie-the-truck>
 <1563079280.31342.22.camel@mhfsdcap03>
 <20190715095156.xczfkbm6zpjueq32@willie-the-truck>
 <1563367459.31342.34.camel@mhfsdcap03>
 <20190717142339.wltamw6wktwixqqn@willie-the-truck>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: FCC812B93959C45D6AFBE2DE9BA4C64EE9C5BF014909D9D18086284D23A8FC762000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_223739_445697_B0EB0026 
X-CRM114-Status: GOOD (  23.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
 srv_heupstream@mediatek.com, Tomasz
 Figa <tfiga@google.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, chao.hao@mediatek.com,
 iommu@lists.linux-foundation.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 yingjoe.chen@mediatek.com, anan.sun@mediatek.com,
 Robin Murphy <robin.murphy@arm.com>, Matthias
 Kaehlcke <mka@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-07-17 at 15:23 +0100, Will Deacon wrote:
> On Wed, Jul 17, 2019 at 08:44:19PM +0800, Yong Wu wrote:
> > On Mon, 2019-07-15 at 10:51 +0100, Will Deacon wrote:
> > > On Sun, Jul 14, 2019 at 12:41:20PM +0800, Yong Wu wrote:
> > > > @@ -742,7 +763,9 @@ static struct io_pgtable
> > > > *arm_v7s_alloc_pgtable(struct io_pgtable_cfg *cfg,
> > > >  {
> > > >  	struct arm_v7s_io_pgtable *data;
> > > >  
> > > > -	if (cfg->ias > ARM_V7S_ADDR_BITS || cfg->oas > ARM_V7S_ADDR_BITS)
> > > > +	if (cfg->ias > ARM_V7S_ADDR_BITS ||
> > > > +	    (cfg->oas > ARM_V7S_ADDR_BITS &&
> > > > +	     !(cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_EXT)))
> > > >  		return NULL;
> > > 
> > > I think you can rework this to do something like:
> > > 
> > > 	if (cfg->ias > ARM_V7S_ADDR_BITS)
> > > 		return NULL;
> > > 
> > > 	if (cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_EXT) {
> > > 		if (!IS_ENABLED(CONFIG_PHYS_ADDR_T_64BIT))
> > > 			cfg->oas = min(cfg->oas, ARM_V7S_ADDR_BITS);
> > > 		else if (cfg->oas > 34)
> > > 			return NULL;
> > > 	} else if (cfg->oas > ARM_V7S_ADDR_BITS) {
> > > 		return NULL;
> > > 	}
> > > 
> > > so that we clamp the oas when phys_addr_t is 32-bit for you. That should
> > > allow you to remove lots of the checking from iopte_to_paddr() too if you
> > > check against oas in the map() function.
> > > 
> > > Does that make sense?
> > 
> > Of course I'm ok for this. I'm only afraid that this function has
> > already 3 checking "if (x) return NULL", Here we add a new one and so
> > many lines... Maybe the user should guarantee the right value of oas.
> > How about move it into mtk_iommu.c?
> > 
> > About the checking of iopte_to_paddr, I can not remove them. I know it
> > may be a bit special and not readable. Hmm, I guess I should use a MACRO
> > instead of the hard code 33 for the special 4GB mode case.
> 
> Why can't you just do something like:
> 
> 	if (!(cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_EXT))
> 		return paddr;
> 
> 	if (pte & ARM_V7S_ATTR_MTK_PA_BIT33)
> 		paddr |= BIT_ULL(33);

OK here.

> 
> 	if (pte & ARM_V&S_ATTR_MTK_PA_BIT32)
> 		paddr |= BIT_ULL(32);

No here, The flow is a bit special for 4GB mode here.

This is the detailed remap relationship for our 4GB mode.
           CPU PA               ->    HW PA
register: 0x0 ~ 0x3fff_ffff
dram 1G:0x4000_0000~0x7fff_ffff ->0x1_4000_0000~0x1_7fff_ffff(Add bit32)
dram 2G:0x8000_0000~0xbfff_ffff ->0x1_8000_0000~0x1_bfff_ffff(Add bit32)
dram 3G:0xc000_0000~0xffff_ffff ->0x1_c000_0000~0x1_ffff_ffff(Add bit32)
dram 4G:0x1_0000_0000~0x1_3fff_ffff->0x1_0000_0000~0x1_3fff_ffff

Thus, in the 4GB mode, we should add always add bit9 in pte(for bit32
PA). But we can not always add bit32 in the iova_to_phys. The valid PA
range should be 0x4000_0000 - 0x1_3fff_ffff. Thus, we can only add bit32
when the PA in pte < 0x4000_0000, keep it as-is if the PA in pte located
from 0x4000_0000 to 0xffff_ffff.

This issue exist all the time after we added 4GB mode for mt8173.

Thus, I have to add a special flow for 4gb mode here:

	/* Workaround for MTK 4GB Mode: Add BIT32 only when PA < 0x4000_0000.*/
	if (cfg->oas == ARM_V7S_MTK_4GB_OAS && paddr < 0x40000000UL)
		paddr |= BIT_ULL(32);
	else if (pte & ARM_V7S_ATTR_MTK_PA_BIT32)
		paddr |= BIT_ULL(32);

> 
> 	return paddr;
> 
> The diff I sent previously sanitises the oas at init time, and then you
> can just enforce it in map().
> 
> Will



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
