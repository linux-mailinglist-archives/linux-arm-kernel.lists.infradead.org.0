Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FDD124AA5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 16:07:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yFcr/P1VrL7xSKNdmwDWHnISqP+QvSS2XveZE4nSPMU=; b=eiZtplN4aK7ewC
	X1rTBgh6/zEwD49eOUhNZ0DA3TZAD6B8Nj44dOXKaBvWYKKNznoO0kxOdtkRvLdvf+KDsQHpRXBt9
	+iiydROaxrbtJXvp8m0W+sb5bIGH0Az6bCBc4Iup3p9wkva9Pbnrt9zqPT043Iuo47SDAogQZL8oM
	bvPUUXxGN4qcV1g2YR82vxPa/2xAnIV6tuLxHLOgdNEmjpLc0LChxIyeWepGJhMrqzgc0k02BDSTj
	vlOEbjF6W5jMkdZem/h7AAzrg0R1ojmOlAtVq3t9of7VeUripgaGCzHUvrFiTTWiTXEMADvzKlJ04
	xn3aTlLOqY82qXJUCGag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihav9-0006WU-Ao; Wed, 18 Dec 2019 15:07:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihauy-0006VM-7p
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 15:07:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B723C30E;
 Wed, 18 Dec 2019 07:07:15 -0800 (PST)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4B46D3F719;
 Wed, 18 Dec 2019 07:07:14 -0800 (PST)
Date: Wed, 18 Dec 2019 15:07:11 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [PATCH] pcie: Add quirk for the Arm Neoverse N1SDP platform
Message-ID: <20191218150711.41bdf9a4@donnerap.cambridge.arm.com>
In-Reply-To: <20191213150031.GA229369@google.com>
References: <9ad40b55-0d31-a7b7-9f99-ea281fd4ad7d@arm.com>
 <20191213150031.GA229369@google.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_070716_371713_B337C074 
X-CRM114-Status: GOOD (  35.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 linux-acpi@vger.kernel.org, linux-pci@vger.kernel.org,
 Andrew Murray <andrew.murray@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 13 Dec 2019 15:07:07 -0600
Bjorn Helgaas <helgaas@kernel.org> wrote:

Hi Bjorn,

> On Thu, Dec 12, 2019 at 11:05:31AM +0000, Andre Przywara wrote:
> > On 11/12/2019 20:17, Bjorn Helgaas wrote:  
> > > On Wed, Dec 11, 2019 at 11:00:49AM +0000, Andre Przywara wrote:  
> > >> On Tue, 10 Dec 2019 08:41:15 -0600
> > >> Bjorn Helgaas <helgaas@kernel.org> wrote:  
> > >>> On Mon, Dec 09, 2019 at 04:06:38PM +0000, Andre Przywara wrote:  
> > >>>> From: Deepak Pandey <Deepak.Pandey@arm.com>
> > >>>>
> > >>>> The Arm N1SDP SoC suffers from some PCIe integration issues, most
> > >>>> prominently config space accesses to not existing BDFs being answered
> > >>>> with a bus abort, resulting in an SError.    
> > >>>
> > >>> Can we tease this apart a little more?  Linux doesn't program all the
> > >>> bits that control error signaling, so even on hardware that works
> > >>> perfectly, much of this behavior is determined by what firmware did.
> > >>> I wonder if Linux could be more careful about this.
> > >>>
> > >>> "Bus abort" is not a term used in PCIe.  
> > >>
> > >> Yes, sorry, that was my sloppy term, also aiming more at the CPU
> > >> side of the bus, between the cores and the RC.
> > >>  
> > >>>  IIUC, a config read to a
> > >>> device that doesn't exist should terminate with an Unsupported Request
> > >>> completion, e.g., see the implementation note in PCIe r5.0 sec 2.3.1.  
> > >>
> > >> Yes, that's what Lorenzo mentioned as well.
> > >>  
> > >>> The UR should be an uncorrectable non-fatal error (Table 6-5), and
> > >>> Figures 6-2 and 6-3 show how it should be handled and when it should
> > >>> be signaled as a system error.  In case you don't have a copy of the
> > >>> spec, I extracted those two figures and put them at [1].  
> > >>
> > >> Thanks for that.
> > >> So in the last few months we tossed several ideas around how to
> > >> work-around this without kernel intervention, all of them turned out
> > >> to be not working. There are indeed registers in the RC that
> > >> influence error reporting to the CPU side, but even if we could
> > >> suppress (or catch) the SError, we can't recover and fixup the read
> > >> transaction to the CPU. Even Lorenzo gave up on this ;-) As far as I
> > >> understood this, there are gates missing which are supposed to
> > >> translate this specific UR into a valid "all-1s" response.  
> > > 
> > > But the commit log says firmware scanned the bus (catching the
> > > SErrors).  Shouldn't Linux be able to catch them the same way?  
> > 
> > Not really. The scanning is done by the SCP management processor,
> > which is a Cortex-M class core on the same bus. So it's a simple,
> > single core running very early after power-on, when the actual AP
> > cores are still off. The SError handler is set to just increase a
> > value, then to return. This value is then checked before and after a
> > config space access for a given BDF:
> > https://git.linaro.org/landing-teams/working/arm/n1sdp-pcie-quirk.git/tree/scp
> > 
> > On the AP cores that run Linux later on this is quite different: The
> > SError is asynchronous, imprecise (inexact) and has no syndrome
> > information. That means we can't attribute this anymore to the
> > faulting instruction, we don't even know if it happened due to this
> > config space access. The CPU might have executed later instructions
> > already, so the state is broken at this point. SError basically
> > means: the system is screwed up.  Because this is quite common for
> > SErrors, we don't even allow to register SError handlers in arm64
> > Linux.
> > 
> > So even if we could somehow handle this is in Linux, it would be a
> > much greater and intrusive hack, so I'd rather stick with this
> > version.  
> 
> The problem is that from a PCIe point of view, UR is something we
> should be able to tolerate.  It happens during enumeration and also
> during hotplug.  It definitely does not mean "the system is screwed up
> and must be rebooted."

I agree, I am also wondering why an (ARM) SError was considered an appropriate answer in the first place. Maybe it's due to some confusion between the ARM architecture term "SError" and the PCI #SERR signal?

> To go back to Figure 6-3, I'm getting the impression that the "System
> Error" shown at the top is *not* the "SError" you're referring to.  If
> they were the same, the Root Control enable bits should gate it, but
> according to your lspci, those enable bits are cleared, yet you still
> take SErrors.

Yes, "System Error" in PCI lingo is definitely something different and unrelated to the ARM architecture SError.
I also checked the (legacy) PCI command register, the PCIe baseline error handling and AER, all of them seem to not propagate the SERR signal. So I reckon it's something which does this on the root complex integration level, outside of generic PCIe. So far I also couldn't find a masking bit in the RC data sheet as well.
 
> SError is asynchronous and imprecise.  Is there no way to do the
> config access in a way that makes it precise, by adding some kind of
> sync?  There's no reason we can't single-thread config accesses and
> maybe even MMIO/IO port accesses as well if necessary.

There is, on this core, but it becomes even more dodgy: While you can *block* delivery of an SError (by setting PSTATE.A), you couldn't clear it so far. ARMv8.2 introduced the "esb" instruction, which allows us to actually consume the SError, so clearing the A bit afterwards would continue operation as normal. This particular core supports v8.2, but the Rockchip SoC does not. So it would not help in the general case, also has that bitter taste of possibly masking an unrelated SError.

So I managed to hack some proof of concept up where I can indeed fence in the SError around the config space access, within the kernel, so I can *almost* certainly say whether this readl/readw triggered this. But that would require aarch64 specific code (even instructions that require an ARMv8.2 compatible core) in the PCI driver, and so is probably more ugly than the existing solution. Plus we would need to iron out the remaining uncertainty, not sure that's actually possible.

Cheers,
Andre.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
