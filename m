Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A93834318E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 00:06:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G7hdaLUCuDDkkDYyK8XuiWxdB9LMc80+Zg6lwhlPbFQ=; b=JXQanyC4nOMGM0
	hyQ6sO7U5zqGiK2vVNovzW3IFn/JIHrPFDAaKOO//t6eWzVkmkl6yyYMHQzOm1llDBw3s7afxF/m2
	CJUoyFJJIdgYj3RyqU5lS3EuAvcXbyhEliFk1RHkmEuf5TBPsFTB6nmqcYJwibwa1LwA2bg9JOjk6
	B7npGRgymeE6fuXloXTnTUDlj3Spk7cWsWHhXrE8iTyvWP39bwlNPD0I0bBEv4sc0CROSRHjJl3k1
	IOV29sM8SQh1zXgbUyCKT2lmjb1YZGwWzU9RZ0pe2WhOvs15BmNHkwJTVNfICpvoWSOKh5GT9Ah1t
	vgy80SStVbFC5kfXzf0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbBNk-0006Tm-IR; Wed, 12 Jun 2019 22:06:12 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbBNW-0006TO-21
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 22:05:59 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x5CM5idM012702;
 Wed, 12 Jun 2019 17:05:45 -0500
Message-ID: <6f98047e67d16e791ec955db3bc1bc995ee9f16e.camel@kernel.crashing.org>
Subject: Re: [PATCH/RESEND] arm64: acpi/pci: invoke _DSM whether to preserve
 firmware PCI setup
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Date: Thu, 13 Jun 2019 08:05:44 +1000
In-Reply-To: <20190612102149.GC6506@redmoon>
References: <56715377f941f1953be43b488c2203ec090079a1.camel@kernel.crashing.org>
 <20190604014945.GE189360@google.com>
 <960c94eb151ba1d066090774621cf6ca6566d135.camel@kernel.crashing.org>
 <20190604124959.GF189360@google.com>
 <e520a4269224ac54798314798a80c080832e68b1.camel@kernel.crashing.org>
 <d53fc77e1e754ddbd9af555ed5b344c5fa523154.camel@kernel.crashing.org>
 <CAKv+Gu_3Nb5mPZgRfx+wQSz+eWM+FSbw_14fHm+u=v2EbuYoGQ@mail.gmail.com>
 <4b956e0679b4b4f4d0f0967522590324d15593fb.camel@kernel.crashing.org>
 <20190611143111.GA11736@redmoon>
 <f1d610d79fbb3a98c9cc80210c64cb21679daf33.camel@kernel.crashing.org>
 <20190612102149.GC6506@redmoon>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_150558_259483_604B3C38 
X-CRM114-Status: GOOD (  29.36  )
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 linux-pci <linux-pci@vger.kernel.org>, Sinan Kaya <okaya@kernel.org>,
 "Zilberman, Zeev" <zeev@amazon.com>, "Saidi, Ali" <alisaidi@amazon.com>,
 Bjorn Helgaas <helgaas@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-06-12 at 11:21 +0100, Lorenzo Pieralisi wrote:

> Hrm. We should probably reassign bus numbers if we reassign resources
> > yes, but then I'd like us to not reassign resources unless we have to
> > :-)
> 
> But for that we can use _DSM #5 returning 0, at least we would
> be consistent.

Yes we should be consistent. My personal preference would be to always
honor FW resources by default regardless of DSM, and have DSM = 1 force
a full reassign instead. In a way, by always reassigning we send the
wrong message to FW folks, that it's ok to be broken bcs Linux will fix
it up..

Do you know how Windows deals with this ?

> Current situation is inconsistent and that bothers me I can put
> together a separate patch and send it as an RFT, there are not
> that many ARM64 PCI ACPI platforms to test it on.

Ok.

 ../..

> >  - pci_read_bridge_bases() is done by pci_bus_claim_resources(), while
> > x86 (and powerpc and others) do it in their pcibios_fixup_bus. That one
> > is interesting... Any reason why we shouldn't unconditionally read the
> > bridges while probing ? Bjorn ?
> 
> I tried and failed miserably:
> 
> https://lore.kernel.org/linux-pci/20150916085850.GA17510@red-moon/

Yes, I see... I think we can revive this if we key it off not
reassigning all resources.

There's a PCI flag PCI_REASSIGN_ALL_RSRC that's currently only use on
powerpc, but it wouldn't be hard to make sure it's set on archs that do
a full reassign. We could then have the generic code key off that.

That said, I'd rather have this be a host bridge flag. I'll look into
it later.

> >  - When allocating bridge resources, there are interesting differences:
> > 
> >   * x86 (and powerpc to some extent): If one has a 0 start or we fail
> > to claim it, x86 will wipe out the resource struct (including flags). I
> > assume that pci_assign_unassign_* will restore bridges when needed but
> > I haven't verified. 
> > 
> >   * pci_bus_claim_resources() is dumber in that regard. It will call
> > pci_claim_bridge_resources() blindly try to claim whatever is there
> > even if res->start is 0. This could be a problem with partially
> > assigned trees. It also doesn't wipe the resource in case of failure to
> > claim which could be a problem going down the tree and letting children
> > attach to the non-claimed resource, thus potentially causing the
> > reassign pass to fail.
> > 
> > The r->start == 0 test is interesting ... the generic claim code will
> > honor IORESOURCE_UNSET but we don't seem to set that generically unless
> > we hit some of the specific pass for explicit resource alignment, or
> > during the reassignment phases.
> > 
> >  - When allocating device resources, the main difference other than the
> > 2 passes is that x86 will "0 base" the resource (r->end -= r->start; r-
> > > start = 0) for later reassignment. The claim path we use won't do
> > 
> > that. Note: none sets IORESOURCE_UNSET... Additionally x86 has some
> > oddball code to save the original FW values and restore them if
> > assignment later fails, which is somewhat odd since there's a conflict
> > but probably helps really broken setups.
> > 
> >  - x86 will not claim ROMs in that pass, it does a 3rd pass just for
> > them (it's common I think to not have room for all the ROMs). It also
> > disables them in config space during the survey.
> > pci_bus_claim_resources() will claim everything and leave ROMs enabled.
> > 
> > So as a somewhat temprary conclusion, I think the main difference here
> > is what happens when claim fails (also the res->start = 0 case which we
> > need to look at more closely) and whether we should make the generic
> > code also "0-base" the resource.
> 
> Oh my, res->start == 0, another can of worms. Honestly I do not know
> what to do on that one mostly because we need to figure out how it
> plays with resource assignment code (and legacy stuff, you know the
> drill).

Yes. We have that funny pcibios_uninitialized_bridge_resource() in
arch/powerpc/kernel/pci-common.c which tries to "guess" whether a
bridge with a 0 res->start means that it's uninitialized or has a
"valid" 0 based resource. Among others, we check if memory decoding is
enabled, etc... If we decide it's really uninitialized we set
IORESOURCE_UNSET, and we rely on that later on.

In an idea world, nobody should create valid 0 based resources, it's
best to stay off the first 1MB of PCI space due to various legacy
concerns anyways but ...

> > The question for me really is, do we want to just "upgrade" (if
> > necessary) pci_bus_claim_resources() and continue having x86 do its own
> > thing for ever, or do we want to consolidate around what is probably
> > the most tested platform when it comes to PCI :-)
> 
> Consolidating is the right thing to do, with the caveats above, there
> are many but you have all my support.
> 
> > And if we consolidate, I think that won't be by changing what x86 does,
> > that code is the result of decades of fiddling to get things right with
> > all sorts of broken BIOSes...
> 
> There is 0 chance to change x86 code (and there is 0 chance to change
> core PCI code with x86 assumptions in it).

I wouldn't say 0 but the bar is high yes.

Cheers,
Ben.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
