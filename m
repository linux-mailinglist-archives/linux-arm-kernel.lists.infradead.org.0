Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D356E72C9A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 12:51:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r59CztI8XYDPusZ/OB3llfpgNilksWHG66Lev8bd1mM=; b=vA2HJej0B9CCw9
	JaFqDI2OPaNFkMphcgRq/+gxebKR/XRwwmkne8Kj5UCEQrXbpZo4DvuSCzMHaXJrLVpayV7XAur95
	Pzi4AzdU1Jv3QbxFmVY4vpTL/X3hDf3L7BHmy5SjrPveQO0WjUq5+7/X21iMBfbRkB5SRIGU0h7Cf
	wfuD37+2/q8VqPMTYvYGhNhRpu2rwj818L/R33USeAG+R5mTbGGULil9kE7L1bnREwKCtlXTBL3OI
	/6D2AFMjO/9RfWhP2gZ1sPFF/WP+b4CBhnVeyTEhBf7ngEsJa/XmVo3AlkLKoXv0ybC83QMrzSM47
	CsTZ774vGKuqm/daZTrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqEru-0000HS-R9; Wed, 24 Jul 2019 10:51:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqErj-0000H9-L0
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 10:51:25 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2C0B4229ED;
 Wed, 24 Jul 2019 10:51:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563965483;
 bh=WM+fscYo1bqfJi2bJEoVhI4xfS6Xuq0YCL9CJeqsjeQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=E8/sdrxglJ6P9i4L4AFnheuK8F34oHAqeZAxjE9/ywra0lH0UJDFt76V5Q7zAhyoo
 THDmcRxl8fvPWETShgPgdpQBEgTqCQp9QoKNRCKIFRGHpA+Ytg1CkfChHBZ2djurj6
 ysGCImQlwMiYq/0GEyg2CuJIgv6DtX5PaV3JAtIo=
Date: Wed, 24 Jul 2019 11:51:17 +0100
From: Will Deacon <will@kernel.org>
To: Rob Clark <robdclark@gmail.com>
Subject: Re: [PATCH v2] iommu: add support for drivers that manage iommu
 explicitly
Message-ID: <20190724105116.fwhnbfuglbbojjzu@willie-the-truck>
References: <20190702202631.32148-2-robdclark@gmail.com>
 <20190710182844.25032-1-robdclark@gmail.com>
 <20190722142833.GB12009@8bytes.org>
 <CAF6AEGvJc2RK3GkpcXiVKsuTX81D3oahnu=qWJ9LFst1eT3tMg@mail.gmail.com>
 <20190722154803.GG12009@8bytes.org>
 <CAF6AEGvWf3ZOrbyyWjORuOVEPOcPr+JSEO78aYjhL-GVhDZnTg@mail.gmail.com>
 <20190723153822.gm4ossn43nvqbyak@willie-the-truck>
 <CAF6AEGtL6gqtbmtksf7zCSGrFOEj0ynq-2nwvizLLiS0FTwHpg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAF6AEGtL6gqtbmtksf7zCSGrFOEj0ynq-2nwvizLLiS0FTwHpg@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_035123_723725_2F007025 
X-CRM114-Status: GOOD (  29.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rob Clark <robdclark@chromium.org>, aarch64-laptops@lists.linaro.org,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, Joerg Roedel <joro@8bytes.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Joe Perches <joe@perches.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>, Bartosz Golaszewski <brgl@bgdev.pl>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 10:40:55AM -0700, Rob Clark wrote:
> On Tue, Jul 23, 2019 at 8:38 AM Will Deacon <will@kernel.org> wrote:
> >
> > On Mon, Jul 22, 2019 at 09:23:48AM -0700, Rob Clark wrote:
> > > On Mon, Jul 22, 2019 at 8:48 AM Joerg Roedel <joro@8bytes.org> wrote:
> > > >
> > > > On Mon, Jul 22, 2019 at 08:41:34AM -0700, Rob Clark wrote:
> > > > > It is set by the driver:
> > > > >
> > > > > https://patchwork.freedesktop.org/patch/315291/
> > > > >
> > > > > (This doesn't really belong in devicetree, since it isn't a
> > > > > description of the hardware, so the driver is really the only place to
> > > > > set this.. which is fine because it is about a detail of how the
> > > > > driver works.)
> > > >
> > > > It is more a detail about how the firmware works. IIUC the problem is
> > > > that the firmware initializes the context mappings for the GPU and the
> > > > OS doesn't know anything about that and just overwrites them, causing
> > > > the firmware GPU driver to fail badly.
> > > >
> > > > So I think it is the task of the firmware to tell the OS not to touch
> > > > the devices mappings until the OS device driver takes over. On x86 there
> > > > is something similar with the RMRR/unity-map tables from the firmware.
> > > >
> > >
> > > Bjorn had a patchset[1] to inherit the config from firmware/bootloader
> > > when arm-smmu is probed which handles that part of the problem.  My
> > > patch is intended to be used on top of his patchset.  This seems to me
> > > like the best solution, if we don't have control over the firmware.
> >
> > Hmm, but the feedback from Robin on the thread you cite was that this should
> > be generalised to look more like RMRR, so there seems to be a clear message
> > here.
> >
> 
> Perhaps it is a lack of creativity, or lack of familiarity w/ iommu vs
> virtualization, but I'm not quite seeing how RMRR would help.. in
> particular when dealing with both DT and ACPI cases.

Well, I suppose we'd have something for DT and something for ACPI and we'd
try to make them look similar enough that we don't need lots of divergent
code in the kernel. The RMRR-like description would describe that, for a
particular device, a specific virt:phys mapping needs to exist in the
small window between initialising the SMMU and re-initialising the device
(GPU).

I would prefer this to be framebuffer-specific, since we're already in
flagrant violation of the arm64 boot requirements wrt ongoing DMA and making
this too general could lead to all sorts of brain damage. That would
probably also allow us to limit the flexibility, by mandating things like
alignment and memory attributes.

Having said that, I just realised I'm still a bit confused about the
problem: why does the bootloader require SMMU translation for the GPU at
all? If we could limit this whole thing to be identity-mapped/bypassed,
then all we need is a per-device flag in the firmware to indicate that the
SMMU should be initialised to allow passthrough for transactions originating
from that device.

> So I kinda prefer, when possible, if arm-smmu can figure out what is going
> on by looking at the hw state at boot (since that approach would work
> equally well for DT and ACPI).

That's not going to fly.

Forcing Linux to infer the state of the system by effectively parsing the
hardware configuration directly is fragile, error-prone and may not even be
possible in the general case. Worse, if this goes wrong, the symptoms are
very likely to be undiagnosable memory corruption, which is pretty awful in
my opinion.

Not only would you need separate parsing code for every IOMMU out there,
but you'd also need to make Linux aware of device aspects that it otherwise
doesn't care about, just in case the firmware decided to use them.
Furthermore, running an older kernel on newer hardware (which may have some
extensions), could cause the parsing to silently ignore parts of the device
that indicate memory regions which are in use. On top of that, there made be
device-global state that we are unable to reconfigure and that affect
devices other than the ones in question.

So no, I'm very much against this approach and the solution absolutely needs
to come in the form of a more abstract description from firmware.

> I *think* (but need to confirm if Bjorn hasn't already) that the
> memory for the pagetables that firmware/bootloader sets up is already
> removed from the memory map efi passes to kernel, so we don't need to
> worry about kernel stomping in-use pagetables.

It's precisely this sort of fragility that makes me nervous about this whole
approach.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
