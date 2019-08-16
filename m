Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA008FC17
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 09:23:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gptZu8iHTqqKbJYl/7MXTYs3Ld9AtmcxZz8KRV9fdPo=; b=h7TQzVnc9izoa+
	yc0RaZnsGMNBeGvWuk2qoHk25QKLkPWoih5pRGFn3HWR+zPAs0TIuh3iK4sx18OnB4A+7F4867S9J
	fWFkaTHPcGKXIrle7Al5Y9RJYhIcttLEEko5ZOIvJjvepddA3b6UdAfzVJ9PpuRZgfB6xxY42mgqB
	i3X+z/whEYm5bgxFfhvoYM4ulmYt0eXtrtsumn+jkdDIzvPhu4eMoMECZW541JEqfiqiWhYvWHpsc
	KjssSVuI0TocgvlG9O6xta76nWGjZjxcTU1ibTBimj1iKQMGv8yoXvyoElL0Tdc5ZbC/rjVmUciv7
	i3IQs+7rEfp6PHHmQiFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyWZj-0003BK-TG; Fri, 16 Aug 2019 07:23:04 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyWZI-00039W-P6; Fri, 16 Aug 2019 07:22:38 +0000
X-UUID: ec22b7defd614d8ebe4fd3da0a0590ce-20190815
X-UUID: ec22b7defd614d8ebe4fd3da0a0590ce-20190815
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2146176014; Thu, 15 Aug 2019 23:22:32 -0800
Received: from MTKMBS32DR.mediatek.inc (172.27.6.104) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 16 Aug 2019 00:22:31 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS32DR.mediatek.inc
 (172.27.6.104) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Fri, 16 Aug 2019 15:22:24 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 16 Aug 2019 15:22:23 +0800
Message-ID: <1565940140.20346.21.camel@mhfsdcap03>
Subject: Re: [PATCH v9 08/21] iommu/io-pgtable-arm-v7s: Extend MediaTek 4GB
 Mode
From: Yong Wu <yong.wu@mediatek.com>
To: Will Deacon <will@kernel.org>
Date: Fri, 16 Aug 2019 15:22:20 +0800
In-Reply-To: <20190815115021.7pbv5s2qbgsuitvh@willie-the-truck>
References: <1565423901-17008-1-git-send-email-yong.wu@mediatek.com>
 <1565423901-17008-9-git-send-email-yong.wu@mediatek.com>
 <20190814144059.ruyc45yoqkwpbuga@willie-the-truck>
 <1565858869.12818.51.camel@mhfsdcap03>
 <20190815095123.rzgtpklvhtjlqir4@willie-the-truck>
 <1565864318.14278.4.camel@mhfsdcap03>
 <20190815115021.7pbv5s2qbgsuitvh@willie-the-truck>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: BA349197A457FBABF294C6AEA76C731A816F8C5D8247B147DB51393DA440EAB42000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_002236_818585_FD12E9CD 
X-CRM114-Status: GOOD (  26.67  )
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
 Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org, Evan
 Green <evgreen@chromium.org>, Tomasz Figa <tfiga@google.com>,
 iommu@lists.linux-foundation.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 ming-fan.chen@mediatek.com, anan.sun@mediatek.com,
 Robin Murphy <robin.murphy@arm.com>, Matthias Kaehlcke <mka@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-08-15 at 12:50 +0100, Will Deacon wrote:
> Ok, I think speaking to Robin helped me a bit with this...
> 
> On Thu, Aug 15, 2019 at 06:18:38PM +0800, Yong Wu wrote:
> > On Thu, 2019-08-15 at 10:51 +0100, Will Deacon wrote:
> > > On Thu, Aug 15, 2019 at 04:47:49PM +0800, Yong Wu wrote:
> > > > On Wed, 2019-08-14 at 15:41 +0100, Will Deacon wrote:
> > > > > On Sat, Aug 10, 2019 at 03:58:08PM +0800, Yong Wu wrote:
> > > > > > MediaTek extend the arm v7s descriptor to support the dram over 4GB.
> > > > > > 
> > > > > > In the mt2712 and mt8173, it's called "4GB mode", the physical address
> > > > > > is from 0x4000_0000 to 0x1_3fff_ffff, but from EMI point of view, it
> > > > > > is remapped to high address from 0x1_0000_0000 to 0x1_ffff_ffff, the
> > > > > > bit32 is always enabled. thus, in the M4U, we always enable the bit9
> > > > > > for all PTEs which means to enable bit32 of physical address. Here is
> > > > > > the detailed remap relationship in the "4GB mode":
> > > > > > CPU PA         ->    HW PA
> > > > > > 0x4000_0000          0x1_4000_0000 (Add bit32)
> > > > > > 0x8000_0000          0x1_8000_0000 ...
> > > > > > 0xc000_0000          0x1_c000_0000 ...
> > > > > > 0x1_0000_0000        0x1_0000_0000 (No change)
> 
> [...]
> 
> > > > > The way I would like this quirk to work is that the io-pgtable code
> > > > > basically sets bit 9 in the pte when bit 32 is set in the physical address,
> > > > > and sets bit 4 in the pte when bit 33 is set in the physical address. It
> > > > > would then do the opposite when converting a pte to a physical address.
> > > > > 
> > > > > That way, your driver can call the page table code directly with the high
> > > > > addresses and we don't have to do any manual offsetting or range checking
> > > > > in the page table code.
> > > > 
> > > > In this case, the mt8183 can work successfully while the "4gb
> > > > mode"(mt8173/mt2712) can not.
> > > > 
> > > > In the "4gb mode", As the remap relationship above, we should always add
> > > > bit32 in pte as we did in [2]. and need add bit32 in the
> > > > "iova_to_phys"(Not always add.). That means the "4gb mode" has a special
> > > > flow:
> > > > a. Always add bit32 in paddr_to_iopte.
> > > > b. Add bit32 only when PA < 0x40000000 in iopte_to_paddr.
> > > 
> > > I think this is probably at the heart of my misunderstanding. What is so
> > > special about PAs (is this HW PA or CPU PA?) below 0x40000000? Is this RAM
> > > or something else?
> > 
> > SRAM and HW register that IOMMU can not access.
> 
> Ok, so redrawing your table from above, I think we can say something like:
> 
> 
> CPU Physical address
> ====================
> 
> 0G	1G	2G	3G	4G	5G
> |---A---|---B---|---C---|---D---|---E---|
> +--I/O--+------------Memory-------------+
> 
> 
> IOMMU output physical address
> =============================
> 
> 				4G	5G	6G	7G	8G
> 				|---E---|---B---|---C---|---D---|
> 				+------------Memory-------------+
> 
> 
> Do you agree? 

Quite right.


> If so, what happens to region 'A' (the I/O region) in the
> IOMMU output physical address space. Is it accessible?

No. IOMMU can not access region 'A' above.

> 
> Anyway, I think it's the job of the driver to convert between the two
> address spaces, so that:
> 
>   - On ->map(), bit 32 of the CPU physical address is set before calling
>     into the iopgtable code
> 
>   - The result from ->iova_to_phys() should be the result from the
>     iopgtable code, but with the top bit cleared for addresses over
>     5G.
> 
> This assumes that:
> 
>   1. We're ok setting bit 9 in the ptes mapping region 'E'.
>   2. The IOMMU page-table walker uses CPU physical addresses
> 
> Are those true?

Yes. Then this patch would be close to the one[1] I sent in v8.

Do I need to split this patch into 2 ones?:
a).the pagetable code that support 34bit PA when MTK quirk is enabled.
It only has the symmetric code handle BIT32/BIT33. Besides, I will add
CONFIG_PHYS_ADDR_T_64BIT in the iopte_to_addr as commented before.

b) MTK code that apply the special "4gb mode" flow. And the "oas" will
always is 34 bit since v7s has already supported our case.

[1]http://lists.infradead.org/pipermail/linux-mediatek/2019-June/020991.html

> 
> Thanks,
> 
> Will



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
