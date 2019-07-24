Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9E47336C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 18:12:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bznG9UyVDCoTQJLkuCfYTxBcGdQ9gd+nbquqdtAe5ZI=; b=XdMLN58n1/9o38
	/7c3LzTQckX4lpC9xgYaY/MdrsCwpkH1eUr9hAWSoJKA6A3+09qCQl8GaqGbtFRT4M1+VOt5xJB7w
	UWiJckE9nfNJaHcznqKIfUxbslt25coX4fGMNWEVa7aQieyNXo0Nfk2fzB1W7pvqqUE24o7lzEVtE
	zwMwjArwAyDdR+Jc6mUg8kCalV7Ud0cvxidpdKHqu3Ip078OG/K+v7Lc4KPKZvpvds61tF2CSMELa
	SWWuM5FYbXsDVCcbpgOwZhdWrO7K5l65JUP76q1haH+10o4/GExKJTooVuwcMbcoBh4I8H7tXlPKJ
	1XnC06inePr/6zIT9wxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqJs8-0002F3-Au; Wed, 24 Jul 2019 16:12:08 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqJrw-0002EX-0X
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 16:11:57 +0000
Received: by mail-ed1-x543.google.com with SMTP id m10so47602852edv.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 09:11:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BcPYpR9djhaAnW7bmdaXKS87Ax5QIqkCxuLZrAiV9mQ=;
 b=cVuuHA2c2hmZ1JZ77+HbfslSKbGPv3c3+EO5CcF0SdOPaiZbD1c19Z2G6/z4E3s/wd
 6x6eglO2cwi45TxHB76FO7V4aPgD6U1mQXvolig1tck5UO13xUuAUtYZoOgADYnd58Om
 cBFBQEHNck17IEdM2yJsvobMNW6ytF+mbNF3lk/V3q21tIleWbAun5vDG4f2OD6ruckJ
 SE0FpfhHBTlHrNoYSJCdlbxOcQoeGJa3yGFv4b8UVznsu6qY/fXVtTzRQ+E3UwqeOl57
 S03mFg4EDwHc5h4nEI8fUnm4fErXaE3accQk42M0EHZOF/GAzr0ARQ3ocB1ugjoyDDyv
 ESPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BcPYpR9djhaAnW7bmdaXKS87Ax5QIqkCxuLZrAiV9mQ=;
 b=iI6WE+fqxqy7nj4yb6nh0YNMlDxkZmRpjcZ2Fp7sZ+Fqn/WpT7JDAaQd8pYbaXxoH3
 KIm+9/FE/srrH+BUcL02afEa5bX/Q8SkJjAlo8a+hDd2wdXYJKsbVndFFOghd9xdwepu
 KMeYJxTeWUlEFXbznnU6poSggvKQH5SjntzpjNeMb7tq305itm7tq4vyp6W537733JuF
 6cR6OA22ho84bbuZ7/5iz+36c37+iGd1CFLTUrIuEfiLjiRu8jGaNv+T7qctRPPZygMq
 apg1Y0EGzZE1vxj4i2XDMDVB+5zLG2fP0SnklKweYFgnajvXc7Wmcbp3Ty8NFB/zY8t1
 228w==
X-Gm-Message-State: APjAAAX5vUPikWLNWT7qcLPRfQffTglSyE6k02OVj54We79HbwoFFy0Z
 rGWSXkd27kV5ji92m5oqF8C7FrOIN6MQ17jo1OU=
X-Google-Smtp-Source: APXvYqwnKz9+2R8hHcVfd0x/lvnHSBr5dPATrNP0dt3ip0omN9IfWY8hedoH3nZfWjSJPNlTslQKwkgg3Tr0lC5VCoU=
X-Received: by 2002:a17:906:3612:: with SMTP id
 q18mr64994404ejb.278.1563984714038; 
 Wed, 24 Jul 2019 09:11:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190702202631.32148-2-robdclark@gmail.com>
 <20190710182844.25032-1-robdclark@gmail.com>
 <20190722142833.GB12009@8bytes.org>
 <CAF6AEGvJc2RK3GkpcXiVKsuTX81D3oahnu=qWJ9LFst1eT3tMg@mail.gmail.com>
 <20190722154803.GG12009@8bytes.org>
 <CAF6AEGvWf3ZOrbyyWjORuOVEPOcPr+JSEO78aYjhL-GVhDZnTg@mail.gmail.com>
 <20190723153822.gm4ossn43nvqbyak@willie-the-truck>
 <CAF6AEGtL6gqtbmtksf7zCSGrFOEj0ynq-2nwvizLLiS0FTwHpg@mail.gmail.com>
 <20190724105116.fwhnbfuglbbojjzu@willie-the-truck>
In-Reply-To: <20190724105116.fwhnbfuglbbojjzu@willie-the-truck>
From: Rob Clark <robdclark@gmail.com>
Date: Wed, 24 Jul 2019 09:11:42 -0700
Message-ID: <CAF6AEGsmNtwjQQPjwzFBJSAV9dPLFH5=-vkchz0KHgL1yz3mYg@mail.gmail.com>
Subject: Re: [PATCH v2] iommu: add support for drivers that manage iommu
 explicitly
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_091156_059787_84D61144 
X-CRM114-Status: GOOD (  39.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robdclark[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Wed, Jul 24, 2019 at 3:51 AM Will Deacon <will@kernel.org> wrote:
>
> On Tue, Jul 23, 2019 at 10:40:55AM -0700, Rob Clark wrote:
> > On Tue, Jul 23, 2019 at 8:38 AM Will Deacon <will@kernel.org> wrote:
> > >
> > > On Mon, Jul 22, 2019 at 09:23:48AM -0700, Rob Clark wrote:
> > > > On Mon, Jul 22, 2019 at 8:48 AM Joerg Roedel <joro@8bytes.org> wrote:
> > > > >
> > > > > On Mon, Jul 22, 2019 at 08:41:34AM -0700, Rob Clark wrote:
> > > > > > It is set by the driver:
> > > > > >
> > > > > > https://patchwork.freedesktop.org/patch/315291/
> > > > > >
> > > > > > (This doesn't really belong in devicetree, since it isn't a
> > > > > > description of the hardware, so the driver is really the only place to
> > > > > > set this.. which is fine because it is about a detail of how the
> > > > > > driver works.)
> > > > >
> > > > > It is more a detail about how the firmware works. IIUC the problem is
> > > > > that the firmware initializes the context mappings for the GPU and the
> > > > > OS doesn't know anything about that and just overwrites them, causing
> > > > > the firmware GPU driver to fail badly.
> > > > >
> > > > > So I think it is the task of the firmware to tell the OS not to touch
> > > > > the devices mappings until the OS device driver takes over. On x86 there
> > > > > is something similar with the RMRR/unity-map tables from the firmware.
> > > > >
> > > >
> > > > Bjorn had a patchset[1] to inherit the config from firmware/bootloader
> > > > when arm-smmu is probed which handles that part of the problem.  My
> > > > patch is intended to be used on top of his patchset.  This seems to me
> > > > like the best solution, if we don't have control over the firmware.
> > >
> > > Hmm, but the feedback from Robin on the thread you cite was that this should
> > > be generalised to look more like RMRR, so there seems to be a clear message
> > > here.
> > >
> >
> > Perhaps it is a lack of creativity, or lack of familiarity w/ iommu vs
> > virtualization, but I'm not quite seeing how RMRR would help.. in
> > particular when dealing with both DT and ACPI cases.
>
> Well, I suppose we'd have something for DT and something for ACPI and we'd
> try to make them look similar enough that we don't need lots of divergent
> code in the kernel. The RMRR-like description would describe that, for a
> particular device, a specific virt:phys mapping needs to exist in the
> small window between initialising the SMMU and re-initialising the device
> (GPU).

For both DT and ACPI (or perhaps more accurately UEFI and non-UEFI) we
often don't have much/any control of the firmware.  In the UEFI case,
we can at least get the physical address of the scanout buffer from
EFI GOP (since VA=PA at that point).  In either case we could get the
iova by reading back controller state.  We kinda just need the iommu
driver to not change anything about the context bank the display is
using until the display driver is ready to install it's own
pagetables.

Initially I just want to shut down display, and then bring it back up
w/ my own pagetables.. but eventually, once iommu/clk/genpd issues are
sorted upstream, I'm planning to read out more completely the display
state, and remap the existing scanout buffer at same iova in my own
pagetables/iommu_domain, for a flicker-free display handover... that
is a lot more work but at least it is self contained in the display
(and bridge/panel) drivers.

> I would prefer this to be framebuffer-specific, since we're already in
> flagrant violation of the arm64 boot requirements wrt ongoing DMA and making
> this too general could lead to all sorts of brain damage. That would
> probably also allow us to limit the flexibility, by mandating things like
> alignment and memory attributes.

I'd be pretty happy if we could convince qcom to use EFI GOP on
android devices too..

Although there is a lot more activity these days with people bringing
upstream support to various existing android phones/tablets.. and I'd
like to see that continue without downstream hacks due to lack of
control over firmware.

> Having said that, I just realised I'm still a bit confused about the
> problem: why does the bootloader require SMMU translation for the GPU at
> all? If we could limit this whole thing to be identity-mapped/bypassed,
> then all we need is a per-device flag in the firmware to indicate that the
> SMMU should be initialised to allow passthrough for transactions originating
> from that device.

I was chatting last night w/ Bjorn on IRC.. and he mentioned that it
looked like TTBRn was 0x0.  Which I wasn't expecting, and I didn't
realize was a legit thing.  Maybe the purpose is to allow display to
access memory w/ iova==pa but disallow memory access from other
devices using different context banks of the same iommu?  Maybe this
makes more sense to you?

> > So I kinda prefer, when possible, if arm-smmu can figure out what is going
> > on by looking at the hw state at boot (since that approach would work
> > equally well for DT and ACPI).
>
> That's not going to fly.
>
> Forcing Linux to infer the state of the system by effectively parsing the
> hardware configuration directly is fragile, error-prone and may not even be
> possible in the general case. Worse, if this goes wrong, the symptoms are
> very likely to be undiagnosable memory corruption, which is pretty awful in
> my opinion.

So, I guess in a DT world, we could have some boot-on; flag in the
device node.. that tells the iommu driver the stream-id(s) which might
be in use.  I guess the iommu driver would still need to map that back
to context bank, and then leave that CB and stream<->CB mapping alone.
But I think that would at least prevent "false positives", which I
think is what you are worrying about.

I'm not sure how this would work for ACPI, but tbh I haven't looked
yet at how iommu and device are connected w/ ACPI.

> Not only would you need separate parsing code for every IOMMU out there,
> but you'd also need to make Linux aware of device aspects that it otherwise
> doesn't care about, just in case the firmware decided to use them.
> Furthermore, running an older kernel on newer hardware (which may have some
> extensions), could cause the parsing to silently ignore parts of the device
> that indicate memory regions which are in use. On top of that, there made be
> device-global state that we are unable to reconfigure and that affect
> devices other than the ones in question.

I'm not sure you can avoid having *some* amount of code in each iommu
driver, since the exact meaning of iommu-cells can be different.. but
I guess we could come up with a generic way of determining which
device(s) attached to an iommu might be active when the iommu driver
probes.

> So no, I'm very much against this approach and the solution absolutely needs
> to come in the form of a more abstract description from firmware.
>
> > I *think* (but need to confirm if Bjorn hasn't already) that the
> > memory for the pagetables that firmware/bootloader sets up is already
> > removed from the memory map efi passes to kernel, so we don't need to
> > worry about kernel stomping in-use pagetables.
>
> It's precisely this sort of fragility that makes me nervous about this whole
> approach.

See above about TTBRn==null.. although if there were actually
pagetables, they would need to be reserved memory, otherwise I guess
windows would also have a problem w/ stomping pagetables.

BR,
-R

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
