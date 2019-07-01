Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D8734746
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 14:50:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j8vxWrPSz40lroIv497y15XONEzP9CLjlv53KZSqZgw=; b=kGQPJAr1ObrgBg
	chOh3YvTL2hyn848+I8ytllkSfGwPYdojE1+KbIiyauvyXkfkJTzjbMLs7aVl4RDDdLjotyWgLJsL
	0LuxVuPliSUrn/2cu183yBOP7PKIdZtsJ6OMwcZe8KCSrTNcKDoegI5V2NsJ0ZavtH4m6IwLMI4vE
	FJXjhBoYlIkF4sCNzzQ2JrRowAMajWFvred6cjHuHr7ZcMto/UYhZt2yrVeWHnWy07Zj8LhOcMlXT
	kT/jzHd7LpCJ8ycdBLyr1ty+gXQzo3V6+QGTELe2d2V2hVChHKhhB4ApQ1yJsqYqQYA43/HSC54AG
	bzbLbv0eK9yaC6G48aZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY8tH-0007rK-3q; Tue, 04 Jun 2019 12:50:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY8t7-0007Mw-9Z
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 12:50:03 +0000
Received: from localhost (173-25-83-245.client.mchsi.com [173.25.83.245])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B0A1524987;
 Tue,  4 Jun 2019 12:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559652600;
 bh=udv/dQ6YJS+atkXMO+YxFcd9zvnACwlkmkV1qGkYerc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=N41MKdUeXCYE20qfwZpokqSq3uqzon5edhhHzH0+qKFECLuscpe18iGcHy/JwVlIn
 ueWfTcL28NpVsTD3yBLNF9+rIFrGaB9qWhAHpuMuIx7Yd7vPhBPFYkSXE5AYLEYZvt
 7oWCDTaY/MD+hldvz2IhrGTH/nq3y8c1qtRq7zS0=
Date: Tue, 4 Jun 2019 07:49:59 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: [RFC] ARM64 PCI resource survey issue(s)
Message-ID: <20190604124959.GF189360@google.com>
References: <56715377f941f1953be43b488c2203ec090079a1.camel@kernel.crashing.org>
 <20190604014945.GE189360@google.com>
 <960c94eb151ba1d066090774621cf6ca6566d135.camel@kernel.crashing.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <960c94eb151ba1d066090774621cf6ca6566d135.camel@kernel.crashing.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_055001_519607_0722D1CB 
X-CRM114-Status: GOOD (  34.83  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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

On Tue, Jun 04, 2019 at 01:32:11PM +1000, Benjamin Herrenschmidt wrote:
> On Mon, 2019-06-03 at 20:49 -0500, Bjorn Helgaas wrote:

> > This could be done with either Enhanced Allocation capabilities or
> > via ACPI _DSM function #5.  My preference would be to do this at
> > the lowest possible level of the PCI hierarchy.  IIRC, EA can do
> > it for individual BARs, and _DSM can be supplied for any
> > individual device (or bridge, but I'd prefer to do it on the
> > device because that gives us more information about exactly what
> > needs to be preserved).
> 
> _DSM #5 seems to be working the other way around, it tells us to ignore
> the FW setting. So the "intent" here is that unless that things is
> present and says "1", we should just leave things alone as long as they
> don't conflict.

I wish you'd been involved in the recent effort to revise the _DSM #5
documentation.  The language in PCI FW r3.2 makes the implicit
assumption that by default, in the absence of _DSM, the OS must
preserve all window and BAR assignments.  But nobody has ever been
able to come up with a spec reference to support that assumption and I
think it is invalid.

The ECN under consideration ("Clarifications to _DSM Function 5",
March 26, 2019, currently posted for member review at
https://members.pcisig.com/wg/PCI-SIG-WG_Members/document/13014)
changes some of that language to basically say "if _DSM #5 exists and
returns 0, the OS must preserve the settings of this device and its
children; otherwise the OS is free to modify things."

> What you seem to want to do is to go a step beyond and if present and
> 0, force everything to be fixed. I'm not completely comfortable with
> that approach. Let's see what others think.

I'm not grasping the distinction you're making here.  What you
describe seems be what _DSM #5 requires.

> > Of course, _DSM *can* be higher, e.g., at the host bridge, but then we
> > lose the information about what specifically must be immutable, and
> > that means the OS cannot ever move *anything*, even if it becomes
> > capable of moving things around to accommodate hot-added devices.
> 
> Well, in our case at least this is a non-issue, we don't want the OS to
> move anything or change anything and there is no hotplug.
> 
> That said, the two aren't exclusive. The presence at the host bridge
> level can be honored, and if absent, we can also honor at a finer
> granularity.
> 
> However, as I said above, I'm not completely comfortable with treating
> _DSM #5 = 0 as meaning "must be fixed". This is not what it means.

The existing language in PCI FW r3.2 is "if _DSM #5 does not exist or
it exists and returns 0, the OS must not ignore PCI configuration done
by firmware."

> > I'm not aware of anything in DT that would correspond to DSM #5, but
> > it could be added.
> 
> Yes, we could. On DT what we tend to do in those cases on powerpc and
> sparc is to "manufacture" the pci_dev structures based on the info in
> the DT, and only use config space to fill the remaining blanks. Let's
> look at the ACPI issue for now though, we can handle DT later.
> 
> > > Taking a step back I think (and I suspect we generally agree based on
> > > followup discussions I've seen) that the "right" thing to do is to have
> > > our default behaviour be:
> > > 
> > >    - Claim what the FW established if it's not obviously broken
> > > 
> > >    - Call pci_assign_unassigned_resources() to assign what the FW
> > > didn't assign
> > > 
> > > Which is more or less what powerpc and x86 do today, but using a
> > > different mechanism than what's in pci_bus_claim_resources() (they are
> > > similar to each other, I wrote the current powerpc one loosely based on
> > > the x86 one at the time). That leads to a side question (which we
> > > should probably discuss in a separate thread) of whether we want to
> > > consolidate all that.
> > > 
> > > That said, we also know this is going to break *some* existing
> > > platforms that have known broken FW assignment. The question is then
> > > can we sufficiently detect the breakage and re-assign in those cases
> > > (like x86 does fairly successfully in a number of cases), or do we need
> > > to add some board/platform quirks to force the full re-assigment on
> > > known broken platforms ?
> > 
> > I don't know how to parse this.  What does "known broken FW
> > assignment" mean?  Are you saying the assignment from FW *looks* valid
> > (all BARs contain valid addresses and are inside windows of upstream
> > bridges), but it doesn't work for some reason? 
> 
> Yes... I am not personally aware of such a case but I was led to
> believe based on prior conversations that such setups do exist,
> especially in the non-ACPI ARM64 world. Which is why I would suggest
> initially changing the default only on ACPI, at least until we have a
> bit better visibility.

If a resource assignment that is valid in terms of all the PCI rules
(BARs are valid, BARs are inside upstream bridge windows, etc) doesn't
work, we would need more information in order to fix anything.  We'd
need to know exactly *what* doesn't work and *why* so we can avoid it.
The current blanket statement of "reassign everything and hope it
works better" is useless.

Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
