Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 815E2173922
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 14:57:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EAOL9h/jF2pJXHnP2pMRJVs5u1mxxZcx/I9DtjkLLHA=; b=qPbZewXIElri+K
	kj22Axi1GR3AhcvLbszgyWhi6/NtJQCYeUHlGUNnQR44xQt+6oReAnf2k7ulOkE2qW15G4hzPxxXW
	Sz6KbWt+TeXg5W6/rCVz/0MGb38VvhUeLsGNofxiqhlQ0M25tpRmhxufNAwYmfgI2JKOn0kCjeuX4
	n12dMpnwjY/VBgnrqd2/5O76MlpaoTWuVW3k7Lz6QTEO/wVfe5j6j76ot5bKdzhwYiDa82c5LgS7e
	heOR168wR5u3fYzfOmK1Fmj0Nir9WsXnxT0Mvs9d85U7wM8LFs02sa6ALWjkI56MJNopZBCQWp8BY
	Gedf0mvS5JFjV4QHYOxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7g8i-0000IL-Ta; Fri, 28 Feb 2020 13:57:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7g8N-0000Cn-Jc
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 13:56:57 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CA55C2051A;
 Fri, 28 Feb 2020 13:56:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582898214;
 bh=ZU+rG3/lVhcg+pzaISBduhlJvAnXlVfNLTn4KsAAEvI=;
 h=Date:From:To:List-Id:Cc:Subject:References:In-Reply-To:From;
 b=NOpNE0o8IqHzcn4zf7Hcc4rLX+FV3gUR9JYfhPZ9Dgmhfts7krwNn5vBEKSRpVnMH
 pOxmn7l2Z/IwWJCMCv5A23jEa5s72VvrzsKIdshJASdp5Vu5Z8yesDUFJ0w25cXf7c
 g0GsPssS4RoBQhqEqTMmDP2ISV9YKFSX+M2yE36E=
Date: Fri, 28 Feb 2020 13:56:46 +0000
From: Will Deacon <will@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [RFC PATCH 06/11] iommu: arm-smmu: Remove Calxeda secure mode
 quirk
Message-ID: <20200228135645.GA4745@willie-the-truck>
References: <20200218171321.30990-1-robh@kernel.org>
 <20200218171321.30990-7-robh@kernel.org>
 <20200218172000.GF1133@willie-the-truck>
 <CAL_JsqJn1kG6gah+4318NQfJ4PaS3x3woWEUh08+OTfOcD+1MQ@mail.gmail.com>
 <20200228100446.GA2395@willie-the-truck>
 <20200228102556.1dde016e@donnerap.cambridge.arm.com>
 <20200228105024.GC2395@willie-the-truck>
 <20200228134254.03fc5e1b@donnerap.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228134254.03fc5e1b@donnerap.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_055655_691516_06D9BEC0 
X-CRM114-Status: GOOD (  29.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Langsdorf <mlangsdo@redhat.com>, kvm@vger.kernel.org,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "open list:LIBATA SUBSYSTEM \(Serial and Parallel ATA drivers\)"
 <linux-ide@vger.kernel.org>, linux-clk <linux-clk@vger.kernel.org>,
 Rob Herring <robh@kernel.org>, soc@kernel.org, Joerg Roedel <joro@8bytes.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, devicetree@vger.kernel.org,
 Jon Loeliger <jdl@jdl.com>, "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Eric Auger <eric.auger@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>, Tony Luck <tony.luck@intel.com>,
 Alexander Graf <graf@amazon.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-edac <linux-edac@vger.kernel.org>, Jens Axboe <axboe@kernel.dk>,
 Matthias Brugger <mbrugger@suse.com>, Stephen Boyd <sboyd@kernel.org>,
 netdev <netdev@vger.kernel.org>, Cornelia Huck <cohuck@redhat.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux IOMMU <iommu@lists.linux-foundation.org>,
 Robert Richter <rrichter@marvell.com>, James Morse <james.morse@arm.com>,
 Borislav Petkov <bp@alien8.de>, Robin Murphy <robin.murphy@arm.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 28, 2020 at 01:42:54PM +0000, Andre Przywara wrote:
> On Fri, 28 Feb 2020 10:50:25 +0000
> Will Deacon <will@kernel.org> wrote:
> > On Fri, Feb 28, 2020 at 10:25:56AM +0000, Andre Przywara wrote:
> > > > On Tue, Feb 25, 2020 at 04:01:54PM -0600, Rob Herring wrote:  
> > > > > Seems we're leaving the platform support for now, but I think we never
> > > > > actually enabled SMMU support. It's not in the dts either in mainline
> > > > > nor the version I have which should be close to what shipped in
> > > > > firmware. So as long as Andre agrees, this one is good to apply.    
> > > > 
> > > > Andre? Can I queue this one for 5.7, please?  
> > > 
> > > I was wondering how much of a pain it is to keep it in? AFAICS there are
> > > other users of the "impl" indirection. If those goes away, I would be
> > > happy to let Calxeda go.  
> > 
> > The impl stuff is new, so we'll keep it around. The concern is more about
> > testing (see below).
> > 
> > > But Eric had the magic DT nodes to get the SMMU working, and I used that
> > > before, with updating the DT either on flash or dynamically via U-Boot.  
> > 
> > What did you actually use the SMMU for, though? The
> > 'arm_iommu_create_mapping()' interface isn't widely used and, given that
> > highbank doesn't support KVM, the use-cases for VFIO are pretty limited
> > too.
> 
> AFAIK Highbank doesn't have the SMMU, probably mostly for that reason.
> I have a DT snippet for Midway, and that puts the MMIO base at ~36GB, which is not possible on Highbank.
> So I think that the quirk is really meant and needed for Midway.

Sorry, but I don't follow your reasoning here. The MMIO base has nothing
to do with the quirk, although doing some digging it looks like your
conclusion about this applying to Midway (ecx-2000?) is correct:

http://lists.infradead.org/pipermail/linux-arm-kernel/2014-January/226095.html

> > > So I don't know exactly *how* desperate you are with removing this, or if
> > > there are other reasons than "negative diffstat", but if possible I would
> > > like to keep it in.  
> > 
> > It's more that we *do* make quite a lot of changes to the arm-smmu driver
> > and it's never tested with this quirk. If you're stepping up to run smmu
> > tests on my queue for each release on highbank, then great, but otherwise
> > I'd rather not carry the code for fun. The change in diffstat is minimal
> > (we're going to need to hooks for nvidia, who broke things in a different
> > way).
> 
> I am about to set up some more sophisticated testing, and will include
> some SMMU bits in it.

Yes, please.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
