Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E19D457BB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 10:38:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TpAxp6ePpZvWEUJHxhw/9Mr0c8192FBFtAWNLB2Ol6c=; b=fFGtnOTc/3VeId
	1lqBJXGHsaqcD+tcJae3npZXlNO1vQsz8bRAdFdOE/O0eqq8i0znQUAaR7UAtba8pc/UXpiCkr+iG
	9kUWfT6I2EGUDpFcyu0lcP6I9TZhW2ZAQgcXaw+licEXNH/U7uv9D/lWk1Xucply9zoQO7e5VHv8c
	gWn2UA92rqnPuzVsF6Vk02FNsvte54tuXzRUXTvPd4m10rHWWGQyWh9MEabf5eHNPatRTt9/ChKuQ
	OaP6gi+LVSobJu+d3wodJBXfIvHLz17Ju1M3jk50TRWEO4mehcZ8W6i8CBR/VbQvt5nV8WNmQzvih
	4GSR1pCxsD+ULUShCKRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbhj8-0001ln-63; Fri, 14 Jun 2019 08:38:26 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbhhU-0000ZK-VU
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 08:36:47 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x5E8aWFp002722;
 Fri, 14 Jun 2019 03:36:33 -0500
Message-ID: <d5d3e7b9553438482854c97e09543afb7de23eaa.camel@kernel.crashing.org>
Subject: Re: [RFC PATCH v2] arm64: acpi/pci: invoke _DSM whether to preserve
 firmware PCI setup
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Fri, 14 Jun 2019 18:36:32 +1000
In-Reply-To: <CAKv+Gu95pQ7_OfLbEXHZ_bhYnqOgTBKCmTgqUY27un-Y708BgQ@mail.gmail.com>
References: <5783e36561bb77a1deb6ba67e5a9824488cc69c6.camel@kernel.crashing.org>
 <20190613190248.GH13533@google.com>
 <e6c7854ae360be513f6f43729ed6d4052e289376.camel@kernel.crashing.org>
 <CAKv+Gu95pQ7_OfLbEXHZ_bhYnqOgTBKCmTgqUY27un-Y708BgQ@mail.gmail.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_013645_303339_C24F6BE2 
X-CRM114-Status: GOOD (  23.17  )
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
Cc: Sinan Kaya <okaya@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <helgaas@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-pci <linux-pci@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-06-14 at 09:42 +0200, Ard Biesheuvel wrote:
> The original purpose was for firmware running on 64-bit hosts to not
> create a PCI resource assignment that was incompatible with the OS
> booting in 32-bit mode.
> 
> So the expectation was that a 32-bit OS would reuse whatever config
> the firmware created, and the 64-bit version would be enlightened to
> understand that it could reassign resource assignments to make better
> use of the available resource windows, but this required a mechanism
> to describe which resources should be left alone by the OS.
> 
> So I don't think anybody cares about that use case anymore, and I have
> no idea how widespread its use was when people did.

Ok. At least my thinkpad happily assigns stuff in 64-bit space. AFAIK
even 32-bit distros can deal with it with PAE no ?

> >   - The "probe only" method. This was created independently on powerpc
> > and some other archs afaik. At least for powerpc, the reason for that
> > is some interesting virtualization cases where we just cannot touch or
> > change or move anything. The effect is to not reassign even what we
> > dont like, and not call pci_assign_unassign_resources().
> > 
> >   - The "reassign everything" method. This is used by almost all
> > embedded patforms accross archs. All arm32, all arm64 today (but we
> > agree that's wrong), all embedded powerpc etc... This is basically
> > meant for us not trusting whatever random uboot or other embedded FW,
> > if any, and do a full from-scratch assignment. There are issues in how
> > that is implemented accross the various platforms/archs, some for
> > example still honor existing bus numbers and some don't, but I doubt
> > it's intentional etc... but that method is there to stay.
> > 
> > Now, the questions are two fold
> > 
> >    - How do we map _DSM #5 to these, at least on arm64, maybe in the
> > long run we can also look at affecting x86, but that's less urgent.
> > 
> >    - How do I ensure the above fixes my Amazon platform ? :-)
> > 
> 
> It would help if you could explain what exactly is wrong with your
> Amazon platform :-)

Linux can't change the switch configuration. I may have mentioned
earlier it has to do with platform sec policies. But that's not totally
relevant, we shoudn't be changing resources anyway since in theory
runtime FW might rely on where some system devices were assigned at
boot. EFI fb is another example of that.

The biggest issue for me right now is that the spec says pretty much at
_DSM #5 = 0 is equivalent to _DSM #5 absent, and Bjorn seems keen on
having it this way, but for arm64, we specifically want to distinguish
those 2 cases.

We want to honor _DSM #5 = 0, and at least initially, leave the rest
alone.

Now, we *also* want to look at switching the rest to the "normal" (for
ACPI platforms at least) mechanism of using what FW setup and fixing up
if necessary, but that's not what the code does today, we know just
switching to pci_bus_claim_resources() will break some platforms, and
we need more testing and possibly quirks to get there, so it's material
for a separate patch.

But in the meantime, I need to differenciate.

Also using "probe_only" for _DSM #5 = 0 isn't a good idea, at least as
implemented today in the rest of the kernel, probe_only also means we
shouldn't assign what was left unassigned. However _DSM #5 allows this.

So we'll need to find some more subtle way to convey these.

Bjorn: At this point, because of all the above, I'm keen on going back
to my original patch (slightly modified Ard's patch), possibly
rewording a thing or two and addressing Lorenzo comment.

We can look at a better and more generic implementation of _DSM #5
including for child nodes after I have consolidated more of the
resource management code.

Looking at the spec (and followup discussions for specs updates), I'm
quite keen on treating _DSM #5 = 1 as "wipe out the resource for that
endpoint/bridge and realloc something better. There are reasons for
that, but we can probably discuss that later.

Cheers,
Ben.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
