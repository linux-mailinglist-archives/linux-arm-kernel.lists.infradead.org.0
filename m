Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E1045ECA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 15:47:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TrO7bajoift9kwSiBJm6Ymo9bPbkTD+nluU/SFGem0c=; b=Bul7C6Y4F+bgAD
	c7aLRaWP7JhLLNlY7BTiKN3RG5faSK0pBKJ0Afbo2jnPuT5uS53OFQ88Qd01i9bHYJ3XAYf2YePaZ
	502i8ooP0lsL62OLkX8ceZu8kyDH+Nt/rAu5DukOIhdl5H+56wU/BCUAcmNgjRSK9wEUhqjmxYujJ
	hwrapwOHkpOc7vJ42jq8gvHlAa1auLngnvPIPPrE0+08DpNBU3Qg3tDi9PzBEi5tLufYlD4SuslvO
	TdgeEppBwe29jBlbgydDp5LUPyAg62r169w88PPEoHt+a4CAfXomP9Xd3V4q6N3CcUx8ZwXinlG4u
	fadaPdgeIEKBbCpiCjtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbmXk-0003tX-Fd; Fri, 14 Jun 2019 13:47:00 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmXb-0003jS-Ag
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 13:46:53 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x5EDkdSP016739;
 Fri, 14 Jun 2019 08:46:40 -0500
Message-ID: <2ac7c362ccc04a7598167cc980c57fb60bc24775.camel@kernel.crashing.org>
Subject: Re: [RFC PATCH v2] arm64: acpi/pci: invoke _DSM whether to preserve
 firmware PCI setup
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Date: Fri, 14 Jun 2019 23:46:39 +1000
In-Reply-To: <20190614130952.GQ13533@google.com>
References: <5783e36561bb77a1deb6ba67e5a9824488cc69c6.camel@kernel.crashing.org>
 <20190613190248.GH13533@google.com>
 <e6c7854ae360be513f6f43729ed6d4052e289376.camel@kernel.crashing.org>
 <CAKv+Gu95pQ7_OfLbEXHZ_bhYnqOgTBKCmTgqUY27un-Y708BgQ@mail.gmail.com>
 <d5d3e7b9553438482854c97e09543afb7de23eaa.camel@kernel.crashing.org>
 <20190614130952.GQ13533@google.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_064651_603150_8CDF6E38 
X-CRM114-Status: GOOD (  26.26  )
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
Cc: linux-pci <linux-pci@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Sinan Kaya <okaya@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-06-14 at 08:09 -0500, Bjorn Helgaas wrote:
> On Fri, Jun 14, 2019 at 06:36:32PM +1000, Benjamin Herrenschmidt wrote:
> > Linux can't change the switch configuration. I may have mentioned
> > earlier it has to do with platform sec policies. But that's not totally
> > relevant, we shoudn't be changing resources anyway since in theory
> > runtime FW might rely on where some system devices were assigned at
> > boot. EFI fb is another example of that.
> 
> "We shouldn't be changing resources anyway" is not really useful
> guidance.  I completely agree that we shouldn't change things
> *unnecessarily*, but it's up to the OS to define what makes it
> necessary -- it might be for rebalancing for hotplug, to make space
> for SR-IOV, to respect user requests to increase alignment, etc.
> 
> IMO the real value of _DSM #5 is as a mechanism to advertise
> dependencies runtime firmware has on devices, e.g., SMM firmware might
> want to log errors to a PCI remote management device.  If the OS moved
> that managment device, the SMM logging would itself cause errors.

This I agree with, though that wasn't specifically why it was created
but this is where it's going yes.

However, I think the resource management code in Linux is some way from
being able to handle that at device granularity. It's actually a very
difficult problem to solve in an optimal way.

For example you could have a bridge that can be moved but a child of
that bridge is fixed. That means that now, the bridge must only be
moved within the constraints that it still contains that child.

This in turn is very tricky to properly define because the bridge can
have other children who aren't fixed, but whose alignment constraints
will also limit where the bridge can go.

I don't think we want to practically create such a mechanism, we have
to be realistic. So that means if something needs to be fixed, all of
its parents need too. Due to how the spec is written, if that _DSM #5
== 0 object is a bridge, then both all of its parents and all of its
descendants are now fixed (except hotplugged descendants), unless said
descendants are themselves tagged with _DSM #5 == 1. But then, as I
explain below, this does more than just "cancel" _DSM #5 == 0 ... what
a mess :-)

That said, I have been thinking about ways we could better honor that
_DSM #5 at various levels of the tree, and I think it's doable. There's
going to still be some arguments to sort out about policy details as
above, and we might end up trying to get the SIG to clarify things
further but I think we can get somewhere reasonably sane in practice
once we've changed arm64 to use an x86-style allocation rather than
trying to do everything from scratch. Working on it ...

> > The biggest issue for me right now is that the spec says pretty much at
> > _DSM #5 = 0 is equivalent to _DSM #5 absent, and Bjorn seems keen on
> > having it this way, but for arm64, we specifically want to distinguish
> > those 2 cases.
> 
> Nope, my opinion is exactly the opposite.  Sorry that I'm not
> communicating this clearly.
> 
> It's true that the r3.2 spec *does* say _DSM #5 = 0 is equivalent to
> the situation where it's absent, but that's based on the assumption
> that the OS is never allowed to change PCI configuration.  I think
> that assumption is complete nonsense and should be disregarded.
> 
>   _DSM #5 = 0: OS must preserve this device's BARs
> 	       (current spec says "OS must not ignore")
> 
>   _DSM #5 = 1: OS *may* change this device's BARs
> 	       (current spec says "OS may ignore")
> 
> Other than _DSM #5, there's no spec I'm aware of that restricts the
> OS's ability to change BARs.  Therefore I think "_DSM #5 = 1" is
> equivalent to _DSM #5 being absent, and in both cases the OS is free
> to change BARs as it sees fit.

I think we are conflating too many different things together here, it's
not binary.

If you look at the reasons why DSM#5 was created in the first place, it
had to do with firmwares setting up a 32-bit compatible layout which is
suboptimal for 64-bit, and thus marking with DSM #1 things that could
(and probably should) be reallocated elsewhere.

Based on that pattern, it's tempting (and I'm tempted...) to handle
_DSM #5 == 1, at least at a non-root-bridge level, by wiping the
resources (or setting IORESOURCE_UNSET), to force Linux to create a
potentially more optimal allocation.

However, that shouldn't be our default either :-)

So my personal opinion is that DSM #5 0, 1 and absent are actually 3
different things.

> > Looking at the spec (and followup discussions for specs updates), I'm
> > quite keen on treating _DSM #5 = 1 as "wipe out the resource for that
> > endpoint/bridge and realloc something better. There are reasons for
> > that, but we can probably discuss that later.
> 
> I disagree on the "wipe out all resources" part of this because we
> have no idea how to realloc something better.  We should of course
> look for problems (overlapping devices, etc) and fix them.  But
> starting from scratch and reallocating won't reliably produce anything
> different from the original, supposedly broken, configuration.

Well, again, it depends *why* _DSM #5 was set to 1 in the first place.
As I said above, there are actually more than 2 cases here and _DSM is
trying to convey too much with too little information. We lack the
firmware intent, it's not being conveyed well.

From my understanding of the spec history, _DSM #5 == 1 was
specifically created because the FW knew it was setting up some
resources in a sub optimal way. The 32-bit example is spelled out. I
can imagine others, such as FW whacking a fixed BAR value on a boot
device to get going knowing full well it's sub optimal.

Now unless we start building some pretty serious smarts into our
allocation scheme to "decide" whether a valid resource could be done
better elsewhere or not, which we aren't near being able to do I
suspect, that case will not work *unless* we just wipe such resources
and let Linux do what it thinks is best with it.

All those interpretations are valid on either the current or the
"proposed" spec, and it still leaves us in a bind because there is not
enough intent being conveyed. It needs to be more than a binary choice
ideally.

That said, I'm not in a hurry to deal with the _DSM #5 == 1 case, so we
can defer that conversation. Maybe we can create a mechanism where we
do a "dummy run" of our allocation code on a snapshot of resources with
the assumption that _DSM #5 == 1 ones get wiped, and create some
metrics to decide whether the end result is "better" than what's
already there, and based on that chose what to apply, but it sounds
really really messy.

Cheers,
Ben.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
