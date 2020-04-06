Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC77C19F54D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 13:59:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c2wQXZXcTA2DE/kwngRwEgrVFb+z+wFYC2QyReLV7AI=; b=N22a2c3mfsYS+i
	WvqGCu9MzdZ+weQZD27MNRnXFIJHNnoVjOyNccFg0aGcv45piwEYZwellz7M5+LWEAXAQds2jO01/
	bY0lMIxy4ddx47Z6gS2RYgRSotVSho3g7HqJgqj8j7BrkKB0q67Gvbr4mtM/GejkT51MgSGqQbctD
	d1SvvnEXupOTnkU71lt2bFDE8257oW4NAUGqbqTosTXteP3njkXzEiLkCCvbraQFJLEEGlAuxh3Op
	mDAKYh5QPqRsFEBTDrLbVGe7+VIAUojy/tXNPr9ea1smDTBNWARoN12F+R+exZ+dqf6ncq9wgTSSF
	yUdVmQTdyYTl13aKO3xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLQPV-0000BQ-Ap; Mon, 06 Apr 2020 11:59:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLQPO-0000At-VV
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 11:59:20 +0000
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com
 [209.85.166.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 982492078A
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  6 Apr 2020 11:59:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586174358;
 bh=INBmFqMnPnYwBnmq9fE0qBoQUuyMDJmBTkGmVLR6PgI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=zphtZeZCIVA8+2pfA6cNbxbhgknCgegsb7SA93Mol6axXNNmazarRb7LaVTpZpDya
 sZvynyJMriBIXFWEVUl3O0PZDoAbpurCT5jvdkGnDnV+e1KD0+75yF9nF1EU3uBu9Y
 dQrsMV/2wgAm+M+E4B9NIHFruVHYIHY4SEXblF1o=
Received: by mail-io1-f54.google.com with SMTP id n20so1592601ioa.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 04:59:18 -0700 (PDT)
X-Gm-Message-State: AGi0PuZ4/vkj/vsXu0eVlrN5FrKfl2LF84F5QDpuyzeHp2vyswSQsK3A
 jxs+UVIm7yl7m8bmaPKwSYenkIrDKnTMKXPkk9o=
X-Google-Smtp-Source: APiQypJz0OEtYujbR7iine9xuBKkfeyqVPQ+jUYZluuEMFR3kYewPuo9cQnrkW3MDy1Ob3mb/SNfyjoQ8u1U3xEBTgs=
X-Received: by 2002:a05:6602:1550:: with SMTP id
 h16mr18761797iow.171.1586174358002; 
 Mon, 06 Apr 2020 04:59:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200404073047.17898-1-ardb@kernel.org>
 <20200406110401.GA4650@red-moon.cambridge.arm.com>
 <CAMj1kXEsROAg5T_qhk4DY7B0y3nXLFzyoT08SSztGWOa+e2kmQ@mail.gmail.com>
 <20200406113235.GB4650@red-moon.cambridge.arm.com>
In-Reply-To: <20200406113235.GB4650@red-moon.cambridge.arm.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 6 Apr 2020 13:59:07 +0200
X-Gmail-Original-Message-ID: <CAMj1kXHt0yhnFE=fVZm0p3iyC20s=j=8Z4Gzcmp_cqx3P3N5Dw@mail.gmail.com>
Message-ID: <CAMj1kXHt0yhnFE=fVZm0p3iyC20s=j=8Z4Gzcmp_cqx3P3N5Dw@mail.gmail.com>
Subject: Re: [PATCH] arm64: iort: take _DMA methods into account for named
 components
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_045919_055276_97D41788 
X-CRM114-Status: GOOD (  21.34  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 robin.murphy@arm.com, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 6 Apr 2020 at 13:32, Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Mon, Apr 06, 2020 at 01:16:15PM +0200, Ard Biesheuvel wrote:
> > On Mon, 6 Apr 2020 at 13:04, Lorenzo Pieralisi
> > <lorenzo.pieralisi@arm.com> wrote:
> > >
> > > On Sat, Apr 04, 2020 at 09:30:47AM +0200, Ard Biesheuvel wrote:
> > > > Where IORT nodes for named components can describe simple DMA limits
> > > > expressed as the number of address bits a device can driver, _DMA methods
> > > > in AML can express more complex topologies, involving DMA translation in
> > > > particular.
> > > >
> > > > Currently, we only take this _DMA method into account if it appears on a
> > > > ACPI device node describing a PCIe root complex, but it is perfectly
> > > > acceptable to attach them to named components as well, so let's ensure
> > > > we take them into account in those cases too.
> > >
> > > ACPI spec v6.3, 6.2.4 _DMA:
> > >
> > > "_DMA is only defined under devices that represent buses"
> > >
> >
> > Sure. But ACPI0004 module devices are also bus nodes, so that
> > statement does not exclude named components that are defined under
> > such a module device.
>
> Yes. _DMA is valid only if a _CRS is present, ACPI0004 does not seem
> to _require_ a _CRS to be considered valid.
>

How is that relevant? Any node that has a _DMA must have a _CRS as
well. Some nodes that don't have a _DMA may not have a _CRS either.
But that does not disqualify a ACPI0004 that *does* have both from
being considered a bus node, no? Or is that not what you are saying?

> It is an example. Better to make the _DMA definition more robust
> and linked to ACPI0004, for instance.
>

If there is wording in the spec that says that only APCI0004 or
PNP0A03/PNP0A08 should be considered to be bus nodes, then we should
probably do that. But I wonder if that is really the intent, and
whether vendors could denote bus nodes using their own HID namespace
instead.

> > > This should probably be updated and _DMA usage clarified - we can't
> > > leave it open to interpretation.
> > >
> >
> > Clarification is always better.
>
> Yes, we should be able to get this in as an Errata, better to be clear
> given that it is something that will be used extensively across
> platforms.
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
