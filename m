Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D74FB10CA34
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 15:15:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tFCWMLT/BRPPTeQb3yLPsPTR59pMdpQK2OcM347z5cQ=; b=n+4LPCx5E1HMnW
	75cYHdNrYYhoJeThjiJ6RxmikpEZ1EMKbbXa1VQ3zbVajOpRoLAsf7REOy7M8v2ilI4iEW4CPMMmA
	oefsrU0m8qG1haqaKSmERNHdn/fKebIrZo+HmiKwA+di5x4T9MBTlzoNr3+ELSiijP/596P2l31jK
	F8y883gArPJ1h5+RONO+LNl3/THcHDQ0CSXb9A4YFIqL4Ticconhv8x/T1j9LjGsbPQR2kr2h+pE7
	Cci3eIxFJWSQYmZxbz6zlmKd/6j7LtyKJWDP+mNM83FBqZB1dHcFaTlPxWm5xb8shuz8ZF6ha/Cj7
	mI4QL/W9ZSoccMT8TUqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaKaF-0000O8-Ew; Thu, 28 Nov 2019 14:15:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaKa3-0000Nk-Bj
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:15:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D4AD330E;
 Thu, 28 Nov 2019 06:15:36 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D07573F68E;
 Thu, 28 Nov 2019 06:15:35 -0800 (PST)
Date: Thu, 28 Nov 2019 14:15:21 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] arm64: dts: juno: Fix DMA address translations by adding
 SOC bus node
Message-ID: <20191128141521.GA3333@bogus>
References: <20191126165355.6696-1-sudeep.holla@arm.com>
 <d9b057ed-acfc-a9a1-a466-d3048f008568@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d9b057ed-acfc-a9a1-a466-d3048f008568@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_061539_487519_E83C7331 
X-CRM114-Status: GOOD (  20.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 28, 2019 at 11:50:54AM +0000, Robin Murphy wrote:
> Hi Sudeep,
> 
> On 2019-11-26 4:53 pm, Sudeep Holla wrote:
> > Commit 951d48855d86 ("of: Make of_dma_get_range() work on bus nodes")
> > reworked the logic such that of_dma_get_range() works correctly
> > starting from a bus node containing "dma-ranges".
> > 
> > Since on Juno we don't have a SoC level bus node and "dma-ranges" is
> > present only in the root node, we get the following error:
> > 
> > OF: translation of DMA address(0) to CPU address failed node(/sram@2e000000)
> > OF: translation of DMA address(0) to CPU address failed node(/uart@7ff80000)
> > ...
> > OF: translation of DMA address(0) to CPU address failed node(/mhu@2b1f0000)
> > OF: translation of DMA address(0) to CPU address failed node(/iommu@2b600000)
> > OF: translation of DMA address(0) to CPU address failed node(/iommu@2b600000)
> > OF: translation of DMA address(0) to CPU address failed node(/iommu@2b600000)
> > 
> > Let's fix it by adding a SoC bus node and moving all the devices along
> > with the "dma-ranges" inside it.
> > 
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Liviu Dudau <liviu.dudau@arm.com>
> > Cc: Robin Murphy <robin.murphy@arm.com>
> > Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > ---
> >   arch/arm64/boot/dts/arm/juno-base.dtsi        | 162 +++++++++---------
> >   arch/arm64/boot/dts/arm/juno-clocks.dtsi      |   2 +
> >   arch/arm64/boot/dts/arm/juno-cs-r1r2.dtsi     |   2 +
> >   arch/arm64/boot/dts/arm/juno-motherboard.dtsi |   2 +
> >   4 files changed, 88 insertions(+), 80 deletions(-)
> > 
> > Hi Rob, Robin,
> > 
> > Let me know if this is correct fix for the issue I am seeing with linux-next
> > on Juno. This patch is generated with -b for ease of review. With lots of
> > indentation, actual delta is:
> > 
> > 4 files changed, 1274 insertions(+), 1266 deletions(-)
> 
> Other than a few nits - the GIC should probably be under the soc node as
> it's an MMIO device, while the clocks shouldn't; the dtsi's could probably
> avoid churn with a "&soc {...}" phandle - I think this is a reasonable thing
> to do, as it's generally the preferred structure.
>

I agree and am still in confusion as what to put inside soc or not.

> The cruder but far simpler alternative would be to just drop the dma-ranges
> property - I'm not sure the effort to make all 64-bit platforms describe
> their dma-ranges has really panned out, and it isn't actually necessary for
> Juno (which is why it didn't seem like sufficient reason to do all this
> restructuring at the time, and instead I took a very liberal interpretation
> of the spec to sneak it into the root node).
>

I think I prefer that for v5.5 as a fix as this is much bigger churn. We
can do that for v5.6 if required. Let me know if you disagree. I can simply
revert your original patch adding dma-ranges for now and we can add it
later with all the soc structure.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
