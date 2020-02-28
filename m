Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F386517398C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 15:11:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c42YLJsrBSn09EbGULGPioEJYTSbjISj6cvb61H1leQ=; b=trsNbhAbhFJcjI
	XKeJ3p++YSQdLwsMZKfAwOWsARICNUF0cq/UAawXFQBhpzKR6aV3VzD+nv7KWUSQLlbDs6oENiHek
	F7q/KeM1LlMWh0YoVvfNwcnaCV02yYKJpXzPZIy/DrrM/jeVRm0c031tCTND0vFm67+xf5aEKkbcy
	FnE9zB2IdgvHxfxEAmhrHaiyh9BXkrl1sSMDKuq/Q8V1Y+m3i5wPo1pzJVK+CXKrw0z/Mykuu6lPz
	wNhn53ILDxOCF6u94skxT5klY12UZQafL6gNYcfh72Ae2eoBdc5Isi/TY/CTE+CyQGlGFUqQbQc79
	v3TVVAYbfrx+dizjbrRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7gMn-0006FM-8m; Fri, 28 Feb 2020 14:11:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7gMc-0006EV-2m
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 14:11:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4A6DC31B;
 Fri, 28 Feb 2020 06:11:37 -0800 (PST)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6B99B3F7B4;
 Fri, 28 Feb 2020 06:11:33 -0800 (PST)
Date: Fri, 28 Feb 2020 14:11:30 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [RFC PATCH 06/11] iommu: arm-smmu: Remove Calxeda secure mode
 quirk
Message-ID: <20200228141130.18be5bb8@donnerap.cambridge.arm.com>
In-Reply-To: <20200228135645.GA4745@willie-the-truck>
References: <20200218171321.30990-1-robh@kernel.org>
 <20200218171321.30990-7-robh@kernel.org>
 <20200218172000.GF1133@willie-the-truck>
 <CAL_JsqJn1kG6gah+4318NQfJ4PaS3x3woWEUh08+OTfOcD+1MQ@mail.gmail.com>
 <20200228100446.GA2395@willie-the-truck>
 <20200228102556.1dde016e@donnerap.cambridge.arm.com>
 <20200228105024.GC2395@willie-the-truck>
 <20200228134254.03fc5e1b@donnerap.cambridge.arm.com>
 <20200228135645.GA4745@willie-the-truck>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_061138_587671_12F07BDB 
X-CRM114-Status: GOOD (  31.41  )
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

On Fri, 28 Feb 2020 13:56:46 +0000
Will Deacon <will@kernel.org> wrote:

> On Fri, Feb 28, 2020 at 01:42:54PM +0000, Andre Przywara wrote:
> > On Fri, 28 Feb 2020 10:50:25 +0000
> > Will Deacon <will@kernel.org> wrote:  
> > > On Fri, Feb 28, 2020 at 10:25:56AM +0000, Andre Przywara wrote:  
> > > > > On Tue, Feb 25, 2020 at 04:01:54PM -0600, Rob Herring wrote:    
> > > > > > Seems we're leaving the platform support for now, but I think we never
> > > > > > actually enabled SMMU support. It's not in the dts either in mainline
> > > > > > nor the version I have which should be close to what shipped in
> > > > > > firmware. So as long as Andre agrees, this one is good to apply.      
> > > > > 
> > > > > Andre? Can I queue this one for 5.7, please?    
> > > > 
> > > > I was wondering how much of a pain it is to keep it in? AFAICS there are
> > > > other users of the "impl" indirection. If those goes away, I would be
> > > > happy to let Calxeda go.    
> > > 
> > > The impl stuff is new, so we'll keep it around. The concern is more about
> > > testing (see below).
> > >   
> > > > But Eric had the magic DT nodes to get the SMMU working, and I used that
> > > > before, with updating the DT either on flash or dynamically via U-Boot.    
> > > 
> > > What did you actually use the SMMU for, though? The
> > > 'arm_iommu_create_mapping()' interface isn't widely used and, given that
> > > highbank doesn't support KVM, the use-cases for VFIO are pretty limited
> > > too.  
> > 
> > AFAIK Highbank doesn't have the SMMU, probably mostly for that reason.
> > I have a DT snippet for Midway, and that puts the MMIO base at ~36GB, which is not possible on Highbank.
> > So I think that the quirk is really meant and needed for Midway.  
> 
> Sorry, but I don't follow your reasoning here. The MMIO base has nothing
> to do with the quirk,

It hasn't, but Highbank has no LPAE, so couldn't possible have a device at such an address. And this is the only MMIO address I know of.

> although doing some digging it looks like your
> conclusion about this applying to Midway (ecx-2000?) is correct:
> 
> http://lists.infradead.org/pipermail/linux-arm-kernel/2014-January/226095.html

Right, thanks for that find. Yes, Midway is the codename for the ECX-2000 SoC product.

Cheers,
Andre
 
> > > > So I don't know exactly *how* desperate you are with removing this, or if
> > > > there are other reasons than "negative diffstat", but if possible I would
> > > > like to keep it in.    
> > > 
> > > It's more that we *do* make quite a lot of changes to the arm-smmu driver
> > > and it's never tested with this quirk. If you're stepping up to run smmu
> > > tests on my queue for each release on highbank, then great, but otherwise
> > > I'd rather not carry the code for fun. The change in diffstat is minimal
> > > (we're going to need to hooks for nvidia, who broke things in a different
> > > way).  
> > 
> > I am about to set up some more sophisticated testing, and will include
> > some SMMU bits in it.  
> 
> Yes, please.
> 
> Will


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
