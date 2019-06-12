Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD7BA43180
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 23:46:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uZwD4nAKAOwWlEK82azrMZaixkfQwKmkeHQswNZybUE=; b=C9WZfpQk8vsMKM
	qK9JB+UsDp0yXvBhZhSUGqc2gCWTsFVB2UtUvXogNVibyiNGD4tTG/dc6KuSdEWpBJG3R0sbxcKTG
	vW2rEWPHqvsrI+zD8NNAGDrFs527RILjkAZjHfmQcnb1s/NsTLeSIkccwm6nr5myqr+s1YwCx3iNw
	4jm/YN+cnKsv564CirkX9J26l4JEv20AJ6Oe7CAUFNE9otc7fCS99UWMJyOoIo5TRn2v6RG0nj64R
	7OMpuoVcz1jlUmNPBwTbXoDOq6r3bzFL4eM8eWbIDpkLWa2HQh9Z80/0BEGju3bzVscc1pxwemUMX
	GGC0koknDGD6EcbsR05A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbB4j-0007fm-AH; Wed, 12 Jun 2019 21:46:33 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbB4W-0007fC-Ll
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 21:46:22 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x5CLk38d011699;
 Wed, 12 Jun 2019 16:46:04 -0500
Message-ID: <204ad129fa4098b8041e979dc2c2142a4e269802.camel@kernel.crashing.org>
Subject: Re: [PATCH/RESEND] arm64: acpi/pci: invoke _DSM whether to preserve
 firmware PCI setup
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Date: Thu, 13 Jun 2019 07:46:03 +1000
In-Reply-To: <20190612132730.GB13533@google.com>
References: <56715377f941f1953be43b488c2203ec090079a1.camel@kernel.crashing.org>
 <20190604014945.GE189360@google.com>
 <960c94eb151ba1d066090774621cf6ca6566d135.camel@kernel.crashing.org>
 <20190604124959.GF189360@google.com>
 <e520a4269224ac54798314798a80c080832e68b1.camel@kernel.crashing.org>
 <d53fc77e1e754ddbd9af555ed5b344c5fa523154.camel@kernel.crashing.org>
 <20190611233908.GA13533@google.com>
 <97fd2516fdde7f9f01688af426c103806f68dd2c.camel@kernel.crashing.org>
 <20190612132730.GB13533@google.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_144620_866116_55F452F4 
X-CRM114-Status: GOOD (  19.05  )
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-pci@vger.kernel.org,
 Sinan Kaya <okaya@kernel.org>, "Zilberman, Zeev" <zeev@amazon.com>, "Saidi,
 Ali" <alisaidi@amazon.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-06-12 at 08:27 -0500, Bjorn Helgaas wrote:
> On Wed, Jun 12, 2019 at 10:06:06AM +1000, Benjamin Herrenschmidt
> wrote:
> > On Tue, 2019-06-11 at 18:39 -0500, Bjorn Helgaas wrote:
> > > This is fine, but can we make a tiny step toward doing this in
> > > generic
> > > code instead of adding more arch-specific stuff?
> > > 
> > > E.g., evaluate the _DSM in the generic acpi_pci_root_add(), set a
> > > "preserve_config" bit in the struct acpi_pci_root, and test the
> > > bit
> > > here?
> > 
> > I'd rather have the flag in the host bridge no ?
> 
> Oh, of course, that would make more sense.

Thinking of this ... I still believe eventually the default should be
to preseve the BIOS config (see ongoing discussions about converging
everybody toward the x86 model), so the flag should be the other way
around.

I'm thinking moving PROBE_ONLY and REASSIGN_ALL_RSRC/BUS to be host
bridge flags (initially copied from the global flags).

To not break things, ARM64 would start setting that 'reassign all' by
default, then we can flip it.

> > Talking of which, look at the ongoing discussion I have with Lorenzo
> > when it comes to pci_bus_claim_resources vs. what x86 does, I'd love
> > for you to chime in. I'd like to try to consolidate things further
> > accross architectures but there might be reasons I don't see as to why
> > things are different in that area, so ...
> 
> I don't know any reasons why things are different per arch.  In most
> cases I suspect FUD.
>
> Speaking of which, *this* patch looks like FUD because it essentially
> says "Linux shouldn't change the PCI configuration on this system" but
> it offers no explanation of *why* the config needs to be preserved.  I
> would really like some note like "run-time firmware depends on the
> addresses of device X".

Oh there are a number of reasons as to why but yes, that's one of them.
I can improve the comments.

That said, I think everybody tends to agree that reassigning everything
by default isn't a great idea, so while I still need something like
this patch in asap, I'll be working towards making that stuff more
common accross archs.

My logic is that x86 is the most tested arch with the widest range of
PCI devices and broken BIOSes. So what works for x86 should work for
others (minus maybe a handful of quirks). So it doesn't make sense to
have the main resource survey logic stuck in arch/x86 and everybody
else growing different things.

Cheers,
Ben.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
