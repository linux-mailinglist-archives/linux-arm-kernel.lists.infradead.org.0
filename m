Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E93D173890
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 14:43:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YfkG5+c6kTfpgWwwadzRYVsSpb4bU39QUSDerI/9BWY=; b=IMHw6Tb3TUEZJ2
	uZywTCIh2wfubKfrr8l4ZgJ99mhLaBBP0JtiD9hv/7K4RJswJK+zAXdES/TZOMPayV05/xoOy93hs
	wSCILwHrn5BfmrVf0vgPZnter7a+iZVq52tTPDvIoOnHjvZtsQdqBSZxZhcajGcD1DW0ypK3oIHC9
	IFwhCc9TasjPh41Lr+KpJSIXIIoKegPzmlo1oJTxxRpUhb0yetPb31y6t+Tri0PVzWnlV5syuOg9v
	m13S59KJeoa8wNG1fmRfsDPQf5YHZlhrzfRAC7gzy0ibcapBfOhF1y7j0Rs6BjD6vhDvwyxy01wJR
	NI6KVYWLB8EVtHxxG29A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7fv6-0005AW-Eu; Fri, 28 Feb 2020 13:43:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7fuv-00059t-V7
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 13:43:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5A33A31B;
 Fri, 28 Feb 2020 05:43:01 -0800 (PST)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7C8153F7B4;
 Fri, 28 Feb 2020 05:42:57 -0800 (PST)
Date: Fri, 28 Feb 2020 13:42:54 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [RFC PATCH 06/11] iommu: arm-smmu: Remove Calxeda secure mode
 quirk
Message-ID: <20200228134254.03fc5e1b@donnerap.cambridge.arm.com>
In-Reply-To: <20200228105024.GC2395@willie-the-truck>
References: <20200218171321.30990-1-robh@kernel.org>
 <20200218171321.30990-7-robh@kernel.org>
 <20200218172000.GF1133@willie-the-truck>
 <CAL_JsqJn1kG6gah+4318NQfJ4PaS3x3woWEUh08+OTfOcD+1MQ@mail.gmail.com>
 <20200228100446.GA2395@willie-the-truck>
 <20200228102556.1dde016e@donnerap.cambridge.arm.com>
 <20200228105024.GC2395@willie-the-truck>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_054302_092565_2194DB7A 
X-CRM114-Status: GOOD (  32.35  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Langsdorf <mlangsdo@redhat.com>, kvm@vger.kernel.org,
 Viresh Kumar <viresh.kumar@linaro.org>, "open
 list:LIBATA SUBSYSTEM \(Serial and Parallel ATA drivers\)"
 <linux-ide@vger.kernel.org>, linux-clk <linux-clk@vger.kernel.org>,
 Rob Herring <robh@kernel.org>, soc@kernel.org, Joerg Roedel <joro@8bytes.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, devicetree@vger.kernel.org,
 Jon Loeliger <jdl@jdl.com>, "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Eric Auger <eric.auger@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>, Tony Luck <tony.luck@intel.com>,
 Alexander Graf <graf@amazon.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC
 ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 linux-edac <linux-edac@vger.kernel.org>, Jens Axboe <axboe@kernel.dk>,
 Matthias Brugger <mbrugger@suse.com>, Stephen Boyd <sboyd@kernel.org>,
 netdev <netdev@vger.kernel.org>, Cornelia Huck <cohuck@redhat.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux IOMMU <iommu@lists.linux-foundation.org>,
 Robert Richter <rrichter@marvell.com>, James Morse <james.morse@arm.com>,
 Borislav Petkov <bp@alien8.de>, Robin Murphy <robin.murphy@arm.com>, "David S.
 Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 28 Feb 2020 10:50:25 +0000
Will Deacon <will@kernel.org> wrote:

> On Fri, Feb 28, 2020 at 10:25:56AM +0000, Andre Przywara wrote:
> > On Fri, 28 Feb 2020 10:04:47 +0000
> > Will Deacon <will@kernel.org> wrote:
> > 
> > Hi,
> >   
> > > On Tue, Feb 25, 2020 at 04:01:54PM -0600, Rob Herring wrote:  
> > > > On Tue, Feb 18, 2020 at 11:20 AM Will Deacon <will@kernel.org> wrote:    
> > > > >
> > > > > On Tue, Feb 18, 2020 at 11:13:16AM -0600, Rob Herring wrote:    
> > > > > > Cc: Will Deacon <will@kernel.org>
> > > > > > Cc: Robin Murphy <robin.murphy@arm.com>
> > > > > > Cc: Joerg Roedel <joro@8bytes.org>
> > > > > > Cc: iommu@lists.linux-foundation.org
> > > > > > Signed-off-by: Rob Herring <robh@kernel.org>
> > > > > > ---
> > > > > > Do not apply yet.    
> > > > >
> > > > > Pleeeeease? ;)
> > > > >    
> > > > > >  drivers/iommu/arm-smmu-impl.c | 43 -----------------------------------
> > > > > >  1 file changed, 43 deletions(-)    
> > > > >
> > > > > Yes, I'm happy to get rid of this. Sadly, I don't think we can remove
> > > > > anything from 'struct arm_smmu_impl' because most implementations fall
> > > > > just short of perfect.
> > > > >
> > > > > Anyway, let me know when I can push the button and I'll queue this in
> > > > > the arm-smmu tree.    
> > > > 
> > > > Seems we're leaving the platform support for now, but I think we never
> > > > actually enabled SMMU support. It's not in the dts either in mainline
> > > > nor the version I have which should be close to what shipped in
> > > > firmware. So as long as Andre agrees, this one is good to apply.    
> > > 
> > > Andre? Can I queue this one for 5.7, please?  
> > 
> > I was wondering how much of a pain it is to keep it in? AFAICS there are
> > other users of the "impl" indirection. If those goes away, I would be
> > happy to let Calxeda go.  
> 
> The impl stuff is new, so we'll keep it around. The concern is more about
> testing (see below).
> 
> > But Eric had the magic DT nodes to get the SMMU working, and I used that
> > before, with updating the DT either on flash or dynamically via U-Boot.  
> 
> What did you actually use the SMMU for, though? The
> 'arm_iommu_create_mapping()' interface isn't widely used and, given that
> highbank doesn't support KVM, the use-cases for VFIO are pretty limited
> too.

AFAIK Highbank doesn't have the SMMU, probably mostly for that reason.
I have a DT snippet for Midway, and that puts the MMIO base at ~36GB, which is not possible on Highbank.
So I think that the quirk is really meant and needed for Midway.

> > So I don't know exactly *how* desperate you are with removing this, or if
> > there are other reasons than "negative diffstat", but if possible I would
> > like to keep it in.  
> 
> It's more that we *do* make quite a lot of changes to the arm-smmu driver
> and it's never tested with this quirk. If you're stepping up to run smmu
> tests on my queue for each release on highbank, then great, but otherwise
> I'd rather not carry the code for fun. The change in diffstat is minimal
> (we're going to need to hooks for nvidia, who broke things in a different
> way).

I am about to set up some more sophisticated testing, and will include some SMMU bits in it.

Cheers,
Andre.

> Also, since the hooks aren't going away, if you /do/ end up using the SMMU
> in future, then we could re-add the driver quirk without any fuss.
> 
> Will


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
