Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0305A92236
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 13:25:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ypghdgn34fHz8x5y4nuKHb6AWWnlxe/YRqtyfkAeQrM=; b=DpcF1/TK5zuj8r
	JfLnZc/Px1pmHLGCXz7N0FGbDVLQu3NBIDL3HJqn50INLEmOPy2sGr2u2U1oM3KRWroaOr00yb95/
	lxtpoB+ragBTYFbidQgSo9mRPyqJUvFMnE9gONJpTEmE3bulNa0gUcST2twRxm1mEvZf3wDu+8CUq
	rKI0wNNJl7jK/hDJxIau94Zu29zgq/ZpO4hCZcXV5OnZQUaVexOueb5/g5xLMlsZiiRbo64kz0qZv
	0bCOhp06XQkli8JVm1TWbntnsyyn5tYTXACyuQmERsAjtjWxuIMB2xBHqe52N/MD5S4WosfcEGqh9
	0BgN9X8qaekl1/g2Y/vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzfmP-0005KL-8A; Mon, 19 Aug 2019 11:24:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzfmH-0005Jt-Aq; Mon, 19 Aug 2019 11:24:46 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AE2B320851;
 Mon, 19 Aug 2019 11:24:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566213884;
 bh=KxFLgNmJMln3v1xilT2WLaj/V5rdHTGk5mDJHEGlyZM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nOUquHtzf14nNUsDP3ummqHXlIVpJLB8nupErbnKr/AJXJj+wkKyvXBKS5xb482qj
 HkuzQ6aZ60aRgigZLr5sugceTgcU7Lw3HzG0aNDdc1CzFTioSgslLVpa+0yiT4Uit4
 z0fGfbKcIhH8HWgp3mzLViuMBMua082sRHmdt1dU=
Date: Mon, 19 Aug 2019 12:24:38 +0100
From: Will Deacon <will@kernel.org>
To: Yong Wu <yong.wu@mediatek.com>
Subject: Re: [PATCH v9 08/21] iommu/io-pgtable-arm-v7s: Extend MediaTek 4GB
 Mode
Message-ID: <20190819112438.fr233h5dgjkqb36r@willie-the-truck>
References: <1565423901-17008-1-git-send-email-yong.wu@mediatek.com>
 <1565423901-17008-9-git-send-email-yong.wu@mediatek.com>
 <20190814144059.ruyc45yoqkwpbuga@willie-the-truck>
 <1565858869.12818.51.camel@mhfsdcap03>
 <20190815095123.rzgtpklvhtjlqir4@willie-the-truck>
 <1565864318.14278.4.camel@mhfsdcap03>
 <20190815115021.7pbv5s2qbgsuitvh@willie-the-truck>
 <1565940140.20346.21.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1565940140.20346.21.camel@mhfsdcap03>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_042445_414661_34A614DA 
X-CRM114-Status: GOOD (  32.50  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, Tomasz Figa <tfiga@google.com>,
 iommu@lists.linux-foundation.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 ming-fan.chen@mediatek.com, anan.sun@mediatek.com,
 Robin Murphy <robin.murphy@arm.com>, Matthias Kaehlcke <mka@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 16, 2019 at 03:22:20PM +0800, Yong Wu wrote:
> On Thu, 2019-08-15 at 12:50 +0100, Will Deacon wrote:
> > Ok, I think speaking to Robin helped me a bit with this...
> > 
> > On Thu, Aug 15, 2019 at 06:18:38PM +0800, Yong Wu wrote:
> > > On Thu, 2019-08-15 at 10:51 +0100, Will Deacon wrote:
> > > > On Thu, Aug 15, 2019 at 04:47:49PM +0800, Yong Wu wrote:
> > > > > On Wed, 2019-08-14 at 15:41 +0100, Will Deacon wrote:
> > > > > > On Sat, Aug 10, 2019 at 03:58:08PM +0800, Yong Wu wrote:
> > > > > > > MediaTek extend the arm v7s descriptor to support the dram over 4GB.
> > > > > > > 
> > > > > > > In the mt2712 and mt8173, it's called "4GB mode", the physical address
> > > > > > > is from 0x4000_0000 to 0x1_3fff_ffff, but from EMI point of view, it
> > > > > > > is remapped to high address from 0x1_0000_0000 to 0x1_ffff_ffff, the
> > > > > > > bit32 is always enabled. thus, in the M4U, we always enable the bit9
> > > > > > > for all PTEs which means to enable bit32 of physical address. Here is
> > > > > > > the detailed remap relationship in the "4GB mode":
> > > > > > > CPU PA         ->    HW PA
> > > > > > > 0x4000_0000          0x1_4000_0000 (Add bit32)
> > > > > > > 0x8000_0000          0x1_8000_0000 ...
> > > > > > > 0xc000_0000          0x1_c000_0000 ...
> > > > > > > 0x1_0000_0000        0x1_0000_0000 (No change)
> > 
> > [...]
> > 
> > > > > > The way I would like this quirk to work is that the io-pgtable code
> > > > > > basically sets bit 9 in the pte when bit 32 is set in the physical address,
> > > > > > and sets bit 4 in the pte when bit 33 is set in the physical address. It
> > > > > > would then do the opposite when converting a pte to a physical address.
> > > > > > 
> > > > > > That way, your driver can call the page table code directly with the high
> > > > > > addresses and we don't have to do any manual offsetting or range checking
> > > > > > in the page table code.
> > > > > 
> > > > > In this case, the mt8183 can work successfully while the "4gb
> > > > > mode"(mt8173/mt2712) can not.
> > > > > 
> > > > > In the "4gb mode", As the remap relationship above, we should always add
> > > > > bit32 in pte as we did in [2]. and need add bit32 in the
> > > > > "iova_to_phys"(Not always add.). That means the "4gb mode" has a special
> > > > > flow:
> > > > > a. Always add bit32 in paddr_to_iopte.
> > > > > b. Add bit32 only when PA < 0x40000000 in iopte_to_paddr.
> > > > 
> > > > I think this is probably at the heart of my misunderstanding. What is so
> > > > special about PAs (is this HW PA or CPU PA?) below 0x40000000? Is this RAM
> > > > or something else?
> > > 
> > > SRAM and HW register that IOMMU can not access.
> > 
> > Ok, so redrawing your table from above, I think we can say something like:
> > 
> > 
> > CPU Physical address
> > ====================
> > 
> > 0G	1G	2G	3G	4G	5G
> > |---A---|---B---|---C---|---D---|---E---|
> > +--I/O--+------------Memory-------------+
> > 
> > 
> > IOMMU output physical address
> > =============================
> > 
> > 				4G	5G	6G	7G	8G
> > 				|---E---|---B---|---C---|---D---|
> > 				+------------Memory-------------+
> > 
> > 
> > Do you agree? 
> 
> Quite right.

Woohoo! So I finally got something right about this :) I'd be up for
including the diagrams above either in the commit message or in the IOMMU
driver code, along with a comment saying that region 'A' cannot be mapped
by the IOMMU and that the page-table walker uses CPU physical addresses.

> > If so, what happens to region 'A' (the I/O region) in the
> > IOMMU output physical address space. Is it accessible?
> 
> No. IOMMU can not access region 'A' above.

Got it. Thanks.

> > Anyway, I think it's the job of the driver to convert between the two
> > address spaces, so that:
> > 
> >   - On ->map(), bit 32 of the CPU physical address is set before calling
> >     into the iopgtable code
> > 
> >   - The result from ->iova_to_phys() should be the result from the
> >     iopgtable code, but with the top bit cleared for addresses over
> >     5G.
> > 
> > This assumes that:
> > 
> >   1. We're ok setting bit 9 in the ptes mapping region 'E'.
> >   2. The IOMMU page-table walker uses CPU physical addresses
> > 
> > Are those true?
> 
> Yes. Then this patch would be close to the one[1] I sent in v8.
> 
> Do I need to split this patch into 2 ones?:

Up to you. If you want to fix the current mainline behaviour of always
setting bit 4, then that should be a separate patch at the start of the
series which can be backported to stable. Is there a reason this doesn't go
wrong in practice?

> a).the pagetable code that support 34bit PA when MTK quirk is enabled.
> It only has the symmetric code handle BIT32/BIT33. Besides, I will add
> CONFIG_PHYS_ADDR_T_64BIT in the iopte_to_addr as commented before.

Hmm. I would prefer that the iopgtable code:

	* Range checks the paddr against the oas in ->map()
	* Refuses to accept an oas > 32 in ->alloc()

Then it's up to you whether you just want to pass an oas of 34 from the
IOMMU driver.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
