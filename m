Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3970A33D8E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 05:32:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dlY6bxf9Lc6nRDFvDivixjFY92hu9SeN8QqCariw78o=; b=ffXvSJRhqzGv5B
	RHSpswv7hr/4RZE+U9reBqDWoX8q3b2AkbgidLw2PLDtzoRDCMtfjHDZimI6L4J5Cwyx1+5kPiOER
	9irlkIjn5BNKkyE2ubN54UAWECXY0GGJVdI/yXJvCIdB5pFAUnSCMGxd1vzkznGpsqJAFPuqw3Ccd
	WKHpUBeVyRnRHKDeNQZDhtzE+BtvLVEXoPlEu73BEF9opavpv1l+Ttr1BESdY/lInbmmsBcQc9Icr
	Z7oiZ72JNZrFQRkiZ7Z72ZDKXZ9Sf7Jgm/1j4mNeYO43710Ul9BOMUNmpD9SYOCMc5scizU7/BCoS
	a3EqPaG52lyt2k01WEXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY0Bf-0003BG-Nc; Tue, 04 Jun 2019 03:32:35 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY0BY-0003Af-38
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 03:32:30 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x543WBmF024823;
 Mon, 3 Jun 2019 22:32:12 -0500
Message-ID: <960c94eb151ba1d066090774621cf6ca6566d135.camel@kernel.crashing.org>
Subject: Re: [RFC] ARM64 PCI resource survey issue(s)
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Date: Tue, 04 Jun 2019 13:32:11 +1000
In-Reply-To: <20190604014945.GE189360@google.com>
References: <56715377f941f1953be43b488c2203ec090079a1.camel@kernel.crashing.org>
 <20190604014945.GE189360@google.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_203228_361269_3336C785 
X-CRM114-Status: GOOD (  42.40  )
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

On Mon, 2019-06-03 at 20:49 -0500, Bjorn Helgaas wrote:
> On Tue, Jun 04, 2019 at 09:41:16AM +1000, Benjamin Herrenschmidt wrote:
> > Hi Folks !
> > 
> > I'd like to revive the discussion around Ard's old patch:
> > 
> > https://patchwork.kernel.org/patch/9675707/
> > 
> > We (Amazon) need that sorted one way or another ASAP since we have
> > setups coming where we must not let Linux change the FW assignments
> > under some host bridges.
> > 
> > In fact it's a reasonable thing to require for other reasons. The EFI
> > framebuffer is an example, there can be others where FW/ACPI/EL3 etc...
> > might have assumptions based on where some system devices were located
> > by the boot FW and will break if we move them (such things are common
> > on x86 and powerpc).
> 
> I would like to handle these individual devices that cannot be moved
> the same way we handle legacy (IDE, VGA) devices, i.e., mark the BARs
> with IORESOURCE_IO_FIXED.

A bit more messy but doable. However....

> This could be done with either Enhanced Allocation capabilities or
via
> ACPI _DSM function #5.  My preference would be to do this at the
> lowest possible level of the PCI hierarchy.
>  IIRC, EA can do it for
> individual BARs, and _DSM can be supplied for any individual device
> (or bridge, but I'd prefer to do it on the device because that gives
> us more information about exactly what needs to be preserved).

_DSM #5 seems to be working the other way around, it tells us to ignore
the FW setting. So the "intent" here is that unless that things is
present and says "1", we should just leave things alone as long as they
don't conflict.

What you seem to want to do is to go a step beyond and if present and
0, force everything to be fixed. I'm not completely comfortable with
that approach. Let's see what others think.

As fas as bridges vs. individual endpoints, It might have to handle
both cases. For example in our case, the security policies will prevent
changing the switch windows completely.

> Of course, _DSM *can* be higher, e.g., at the host bridge, but then we
> lose the information about what specifically must be immutable, and
> that means the OS cannot ever move *anything*, even if it becomes
> capable of moving things around to accommodate hot-added devices.

Well, in our case at least this is a non-issue, we don't want the OS to
move anything or change anything and there is no hotplug.

That said, the two aren't exclusive. The presence at the host bridge
level can be honored, and if absent, we can also honor at a finer
granularity.

However, as I said above, I'm not completely comfortable with treating
_DSM #5 = 0 as meaning "must be fixed". This is not what it means.

> I'm not aware of anything in DT that would correspond to DSM #5, but
> it could be added.

Yes, we could. On DT what we tend to do in those cases on powerpc and
sparc is to "manufacture" the pci_dev structures based on the info in
the DT, and only use config space to fill the remaining blanks. Let's
look at the ACPI issue for now though, we can handle DT later.

> > Taking a step back I think (and I suspect we generally agree based on
> > followup discussions I've seen) that the "right" thing to do is to have
> > our default behaviour be:
> > 
> >    - Claim what the FW established if it's not obviously broken
> > 
> >    - Call pci_assign_unassigned_resources() to assign what the FW
> > didn't assign
> > 
> > Which is more or less what powerpc and x86 do today, but using a
> > different mechanism than what's in pci_bus_claim_resources() (they are
> > similar to each other, I wrote the current powerpc one loosely based on
> > the x86 one at the time). That leads to a side question (which we
> > should probably discuss in a separate thread) of whether we want to
> > consolidate all that.
> > 
> > That said, we also know this is going to break *some* existing
> > platforms that have known broken FW assignment. The question is then
> > can we sufficiently detect the breakage and re-assign in those cases
> > (like x86 does fairly successfully in a number of cases), or do we need
> > to add some board/platform quirks to force the full re-assigment on
> > known broken platforms ?
> 
> I don't know how to parse this.  What does "known broken FW
> assignment" mean?  Are you saying the assignment from FW *looks* valid
> (all BARs contain valid addresses and are inside windows of upstream
> bridges), but it doesn't work for some reason? 

Yes... I am not personally aware of such a case but I was led to
believe based on prior conversations that such setups do exist,
especially in the non-ACPI ARM64 world. Which is why I would suggest
initially changing the default only on ACPI, at least until we have a
bit better visibility.

>  If that's the case,
> how would full reassignment by Linux fix anything?  Linux has no idea
> how to change a valid-looking assignment to make an actually-valid
> assignment.

Isn't it exactly what happens today though on arm64 ? We ignore
whatever the FW set, and assign everything anew... This is also what we
do on powerpc when the corresponding flag is set by the platform.

IE. Currently arm64 does:

	pci_bus_size_bridges(bus);
	pci_bus_assign_resources(bus);

Unconditionally... Or am I missing something ? That code is headache
inducing :)

There is no attempt at leaving things where they are. There is code to
avoid messing with IORESOURCE_IO_FIXED in there but I'm not sure how
well that works when it comes to dealing with bridge windows.

In comparison, x86 and powerpc have a different mechanism that first
surveys existing stuff, blasts away what looks bad/conflicting, and
then does something like pci_assign_unassigned_resources() to assign
whaetver's left.

If we look at Ard's patch, he wants to use pci_bus_claim_resources()
instead when the FW doesn't explicitely tells us to leave things alone.
I think that needs pci_assign_unassigned_resources() as well, though I
am not yet completely familiar with how pci_bus_claim_resources()
differs from the x86 and powerpc resource survey.

I think pci_bus_claim_resources() is intended for the "PROBE_ONLY" case
which is the extreme opposite: we *must* trust everything the FW did
and not try to touch anything at all. It would work for us too mind you
but we don't have a way to convey that via ACPI since, as I said above,
it's not really what _DSM #5 is intended to be.

We seem to enjoy creating mostly-duplicate ways of doing things over
and over again in PCI land :)

> > Even if all arm64 platforms are found to be broken today, I would still
> > like to have our default be to use the FW setup, if anything as an
> > incentive for newer platforms to get it right. At the very least on
> > ACPI.
> 
> I agree that Linux should not change anything unless it needs to.  Of
> course, reasons it "needs to" might include allocating more space for
> hot-added devices, either because Linux discovered an open slot or
> because a user requested more space with a kernel parameter.

Right and I'm fine with that. It's not an issue for us.

> > We can use DSM#5 when it exists to force one way or another (ideally on
> > a per bus basis but that's harder, so let's start with host bridges
> > maybe ?)
> 
> I'd prefer starting with endpoints, but I think it will all work out
> the same in the end.  When enumerating X, we look for a local _DSM #5
> and mark X's BARs/windows accordingly and set a pdev->fixed_resources
> bit.  If there's no local _DSM #5, act based on X's parent's
> fixed_resources bit.

Lorenzo, Zeev, have you already started looking at doing something this
way ? Does it work ?

Bjorn, we could do both, I don't see any problem there.

Do you see any reason why we shouldn't change the arm64 logic today, at
least when ACPI is present, to claim existing resources & assign
unassigned one instead of reallocating everything ?

And followup question, if the above is yes, will the sequence:

	pci_bus_claim_resources(b);
	if (!pci_has_flag(PCI_PROBE_ONLY))
		pci_assign_unassigned_resources(b);

Do what we want or do we need to replace pci_bus_claim_resources() with
something a bit more like what we have on x86 with the 2 pass
allocation mechanism ?

Finally what about pci_host_probe() ? It seems to also miss
pci_assign_unassigned_resources() and will unconditionally reassign
everything if PCI_PROBE_ONLY is not set, so it's yet another different
logic used by some archs.

Cheers,
Ben.




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
