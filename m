Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED7F633F59
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 08:56:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iuhQvXzyjz8Vr8m7LmUNK1BztZiCKzlaMRwQz6QHbbA=; b=XLAV1/ISa1D0+0
	+5Oe01cE59wVWXBr/wgmO2Z3id25q6+AaXO9jZW/PteCeoz82YSeD0XE+LMieHQiSSTexnPDmiqcO
	/huNkgFSF3a3YmAsC5brhF2kohCRqTc4n9lv3Wh6poLq66fJhm0PaneO7itCX4E0Vm/UsUQ3mBRXh
	nSQAFxx5EDYpiYKuOxA60qWUJWHWOYG4brjqVxm+wrldnKWsLkUb14O2a42sHU8WfQqPuP3aVURyp
	d6+66GK+QmCCMH6hK73pTaB6beGeXgLzX1Pxq2zN+aql5UBCiuHvqXrfd8jQpCxGl5ZscIjEB7/Qo
	mXrAnyLk5Mb237PzRxQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY3Mu-0004iJ-GX; Tue, 04 Jun 2019 06:56:24 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY3Mn-0004hB-Bs
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 06:56:19 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x546u4cN002022;
 Tue, 4 Jun 2019 01:56:05 -0500
Message-ID: <cb98d303c09d802f4173a33b4c33ece5d25f9748.camel@kernel.crashing.org>
Subject: Re: [RFC] ARM64 PCI resource survey issue(s)
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Date: Tue, 04 Jun 2019 16:56:04 +1000
In-Reply-To: <960c94eb151ba1d066090774621cf6ca6566d135.camel@kernel.crashing.org>
References: <56715377f941f1953be43b488c2203ec090079a1.camel@kernel.crashing.org>
 <20190604014945.GE189360@google.com>
 <960c94eb151ba1d066090774621cf6ca6566d135.camel@kernel.crashing.org>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_235617_554382_EE3674FB 
X-CRM114-Status: GOOD (  15.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-pci@vger.kernel.org,
 Sinan Kaya <okaya@kernel.org>, "Zilberman, Zeev" <zeev@amazon.com>, "Saidi,
 Ali" <alisaidi@amazon.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-06-04 at 13:32 +1000, Benjamin Herrenschmidt wrote:
> 
> > I would like to handle these individual devices that cannot be moved
> > the same way we handle legacy (IDE, VGA) devices, i.e., mark the BARs
> > with IORESOURCE_IO_FIXED.
> 
> A bit more messy but doable. However....

Sooo.... I spent some quality whisky getting my head around the current
state of setup-bus.c and setup-res.c ... gosh, what a mess ! Anyway, I
have some concerns about the use of IORESOURCE_IO_FIXED in the context
of an arch like arm64 that just blindly does:

        pci_bus_size_bridges(bus);
        pci_bus_assign_resources(bus);

Unless I'm missing something (please correct me if I am), this is all
extremely fragile and will only work under some very specific
circumstances:

First, the big issue is that having individual devices with such
"Fixed" BAR doesn't work in isolation. There is no chance in hell the
code in setup-bus.c will manage to configure the enclosing bridges
etc... to accomodate such fixed devices, it would require a major
refactoring of our entire resource allocation scheme.

pci_bus_size_bridges() does all the calculation for sizing up bridges
and ... completely ignores fixed BARs. Later pci_bus_assign_resources()
will assign bridges a location, again, completely ignoring children
fixed BARs if any.

Chances that we successfully land the fixed BARs in the resulting
allocation are slim at best.

So at the very least, to have a chance of working, if any endpoint has
fixed BARs, then all of it's parent chain must also be fixed, because
we won't be able to deal with it otherwise, at least not via the
"blunt" assignment code path.

But there seem to be more damage here (though that one maybe easier to
fix) from looking at the code: Unless I'm mistaken in my reading of the
code, for a given "level" of the bus tree, __pci_bus_assign_resources()
will *first* assign all the non-fixed devices by calling
pbus_assign_resources_sorted(), and *then* try to claim the fixed
resources of any device at that level using
pdev_assign_fixed_resources().

Again, even if we had the parent bridge by design (fixed too) or by
chance, covering the space where the fixed BAR is, chances that a
sibling non-fixed device will be given that slot before we have a
chance to claim it.

So in practice, IORESOURCE_IO_FIXED only works if all parents and
siblings are also IORESOURCE_IO_FIXED (either that or I just
misunderstood the code). The sibling case might be fixable by changing
the order inside __pci_bus_assign_resources().

There's more gunk too ... for example for IORESOURCE_IO_FIXED to work
on bridges one must call pci_read_bridge_bases() first which the
generic code doesn't do. So here comes an arch pcibios_fixup_bus ...
yuck.

There's also an oddball test about enabled bridges in
__pci_bus_assign_resources() that __pci_bridge_assign_resources()
doesn't have (yet another almost identical but not quite set of
functions just to confuse people) which might make snse

I looked at Lorenzo patches in his git repo for trying to deal with
_DSM #5 via IORESOURCE_IO_FIXED and I don't like what I see in that
context either :)

So at this stage, I think we are better off solving the immediate
issues of platforms that have good allocations coming from FW by using
Ard's old patch at the host brigde level (possibly changing the default
in absence of _DSM #5).

Taking on step back here and trying to think more long term, I am
concerned that we have how many different methods of doing the resource
allocation depending on the arch that go through different (sometime
majorly, sometimes subltly) path in the generic code, this doesn't seem
particularily maintainable...

It used to be that pci_bus_assign_resources() basically meant "force
reassign everything". If you throw IORESOURCE_IO_FIXED in the mix then
it's no longer that. It's now starting to look a bit more (but not
quite) like pci_assign_unassigned_bus_resources() except that we don't
have a generic 2-pass survey of existing resources like x86 has.

We do have pci_bus_claim_resources() but that one seems more targetted
as the opposite where we trust everything setup by FW and don't
reassign anything. It doesn't seem to have provisions for detecting
unsassigned resources unless I missed another bit here.

Then we have pci_host_probe() that some archs use (but not arm64),
which seems to be yet a different combination, which either trusts
firmware completely (pci_bus_claim_resources) or not at all
(pci_bus_size_bridges+pci_bus_assign_resources) based on a single
global flag (shouldn't it be per-host bridge ?).

Cheers,
Ben.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
