Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 532B910CCEA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 17:38:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i8kC/kslWuNJ0eoYHcfPpC6S7m1YplQAOSgp2dLn5Y8=; b=LsrY21O2JNnDLe
	Nu7K3GfyLmZOeZuo9iRsFETYWIAxFOcjFnytYnP5iJ37kaIECwQXbtMR1ABsObQ6GZ9A3fgSgJu0D
	/IpHXiAA9jD/ZTnm0AZgJ4Scfdr0F9D/RZGkqocq8AnELB2S0HI2jy5nsylrtevAGZ3i6gtadoV8l
	k4/ng5J/s/9Hj7NhtXzBRgyaed7VI6xEggjQMp5Un8UnWPAoumJSkISGZ0eS8sg2Q+DuUi2lnlc3w
	KKLS9qZPO54LgSo2eKueXK27S57PeN2hi2jJAcB5+8lfBaG8zO9v0kjGXBIg0xF96SzEjBBRGnOtp
	zwNz2/FEY0KrtYOvJIeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaMoV-0007tS-K9; Thu, 28 Nov 2019 16:38:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaMoM-0007t8-PO
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 16:38:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8CB0E1FB;
 Thu, 28 Nov 2019 08:38:33 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A7F273F6C4;
 Thu, 28 Nov 2019 08:38:32 -0800 (PST)
Date: Thu, 28 Nov 2019 16:38:27 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] arm64: dts: juno: Fix DMA address translations by adding
 SOC bus node
Message-ID: <20191128163827.GA28000@bogus>
References: <20191126165355.6696-1-sudeep.holla@arm.com>
 <d9b057ed-acfc-a9a1-a466-d3048f008568@arm.com>
 <20191128141521.GA3333@bogus>
 <df7408c0-21a9-94a6-950c-98560d3e33e4@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <df7408c0-21a9-94a6-950c-98560d3e33e4@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_083834_912149_E8CAFC3C 
X-CRM114-Status: GOOD (  25.01  )
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 28, 2019 at 04:15:43PM +0000, Robin Murphy wrote:
> On 28/11/2019 2:15 pm, Sudeep Holla wrote:
> > On Thu, Nov 28, 2019 at 11:50:54AM +0000, Robin Murphy wrote:
> > > Hi Sudeep,
> > > 
> > > On 2019-11-26 4:53 pm, Sudeep Holla wrote:
> > > > Commit 951d48855d86 ("of: Make of_dma_get_range() work on bus nodes")
> > > > reworked the logic such that of_dma_get_range() works correctly
> > > > starting from a bus node containing "dma-ranges".
> > > > 
> > > > Since on Juno we don't have a SoC level bus node and "dma-ranges" is
> > > > present only in the root node, we get the following error:
> > > > 
> > > > OF: translation of DMA address(0) to CPU address failed node(/sram@2e000000)
> > > > OF: translation of DMA address(0) to CPU address failed node(/uart@7ff80000)
> > > > ...
> > > > OF: translation of DMA address(0) to CPU address failed node(/mhu@2b1f0000)
> > > > OF: translation of DMA address(0) to CPU address failed node(/iommu@2b600000)
> > > > OF: translation of DMA address(0) to CPU address failed node(/iommu@2b600000)
> > > > OF: translation of DMA address(0) to CPU address failed node(/iommu@2b600000)
> > > > 
> > > > Let's fix it by adding a SoC bus node and moving all the devices along
> > > > with the "dma-ranges" inside it.
> > > > 
> > > > Cc: Rob Herring <robh+dt@kernel.org>
> > > > Cc: Liviu Dudau <liviu.dudau@arm.com>
> > > > Cc: Robin Murphy <robin.murphy@arm.com>
> > > > Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > > > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > > > ---
> > > >    arch/arm64/boot/dts/arm/juno-base.dtsi        | 162 +++++++++---------
> > > >    arch/arm64/boot/dts/arm/juno-clocks.dtsi      |   2 +
> > > >    arch/arm64/boot/dts/arm/juno-cs-r1r2.dtsi     |   2 +
> > > >    arch/arm64/boot/dts/arm/juno-motherboard.dtsi |   2 +
> > > >    4 files changed, 88 insertions(+), 80 deletions(-)
> > > > 
> > > > Hi Rob, Robin,
> > > > 
> > > > Let me know if this is correct fix for the issue I am seeing with linux-next
> > > > on Juno. This patch is generated with -b for ease of review. With lots of
> > > > indentation, actual delta is:
> > > > 
> > > > 4 files changed, 1274 insertions(+), 1266 deletions(-)
> > > 
> > > Other than a few nits - the GIC should probably be under the soc node as
> > > it's an MMIO device, while the clocks shouldn't; the dtsi's could probably
> > > avoid churn with a "&soc {...}" phandle - I think this is a reasonable thing
> > > to do, as it's generally the preferred structure.
> > > 
> > 
> > I agree and am still in confusion as what to put inside soc or not.
> 
> FWIW my understanding is that the "soc" node is used to provide a 'bus' to
> represent on-chip MMIO - in principle we could nerd out and describe the
> ACE-lite/AXI/APB slave interconnects in full, but there's really no benefit
> to going into that much detail - so everything with a "reg" representing a
> physical address goes inside it, while CPUs, clocks, firmware, regulators
> etc. sit in the root node 'outside the PA space', regardless of whether
> they're physically on-chip or not.
>

I saw few other DTs and they all keep interrupt-controller and timer
outside this "soc" node. Timer is sysreg based, so makes sense. GIC has
both sysreg and MMIO components so I was not sure if it's done like that
due to some dependency on how interrupt-parent property is used.
e.g. arch/arm64/boot/dts/amd/amd-seattle-soc.dtsi

I expect even the motherboard IO shouldn't go inside it but again to avoid
churn I kept it inside.

I agree on firmware, clocks, regulators,..etc. I wanted to keep the churn
minimum and it was not completely aligned to the principles you mentioned
above. Anyways it's better to fix it in right manner for next cycle.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
