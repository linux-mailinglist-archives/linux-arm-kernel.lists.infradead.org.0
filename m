Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5F719F691
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 15:14:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TQ5/5Pqcv4KLmGc0PsSWzMc7nicBW08vP+1s55qqEGY=; b=oUcRm8/XZdFdZF
	LXvFbmimX4BGwrj7K50FiFwgoYuXYhPSrL0UV4utVrrfNc9etNFB7folqgXLTWZp9gJTYa6i/yFTF
	DvZ2bN4CRepVtGmLgYaJMklAo7XLcBD0MH/bAoxVqmkMWfzi0rr4BrtzT6uCPOh+PtFMcxU4VOLKs
	8UDdHMkYI/2T+gQ5IgOSAhT4wUFzypGKILBT/i8U9KTyqLVi4jRUwB+vtKCTAT2d0YjEq/mL2Zx68
	fxAgp1wqEpvXXITkeBT7vzyJahJnraKkdWTbGMi7Z1WtNOC/XGFa1grWeKiLIxF6m4Q3wBFloM+0y
	hw7Xot2TdHCQJ8YnNLQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLRaQ-00039N-7E; Mon, 06 Apr 2020 13:14:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLRaK-00038M-7y
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 13:14:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1707C31B;
 Mon,  6 Apr 2020 06:14:37 -0700 (PDT)
Received: from red-moon.cambridge.arm.com (unknown [10.57.29.239])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EC20F3F52E;
 Mon,  6 Apr 2020 06:14:35 -0700 (PDT)
Date: Mon, 6 Apr 2020 14:14:32 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH] arm64: iort: take _DMA methods into account for named
 components
Message-ID: <20200406131432.GC4650@red-moon.cambridge.arm.com>
References: <20200404073047.17898-1-ardb@kernel.org>
 <20200406110401.GA4650@red-moon.cambridge.arm.com>
 <CAMj1kXEsROAg5T_qhk4DY7B0y3nXLFzyoT08SSztGWOa+e2kmQ@mail.gmail.com>
 <20200406113235.GB4650@red-moon.cambridge.arm.com>
 <CAMj1kXHt0yhnFE=fVZm0p3iyC20s=j=8Z4Gzcmp_cqx3P3N5Dw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMj1kXHt0yhnFE=fVZm0p3iyC20s=j=8Z4Gzcmp_cqx3P3N5Dw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_061440_327319_1B12DFEA 
X-CRM114-Status: GOOD (  16.85  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Mon, Apr 06, 2020 at 01:59:07PM +0200, Ard Biesheuvel wrote:
> On Mon, 6 Apr 2020 at 13:32, Lorenzo Pieralisi
> <lorenzo.pieralisi@arm.com> wrote:
> >
> > On Mon, Apr 06, 2020 at 01:16:15PM +0200, Ard Biesheuvel wrote:
> > > On Mon, 6 Apr 2020 at 13:04, Lorenzo Pieralisi
> > > <lorenzo.pieralisi@arm.com> wrote:
> > > >
> > > > On Sat, Apr 04, 2020 at 09:30:47AM +0200, Ard Biesheuvel wrote:
> > > > > Where IORT nodes for named components can describe simple DMA limits
> > > > > expressed as the number of address bits a device can driver, _DMA methods
> > > > > in AML can express more complex topologies, involving DMA translation in
> > > > > particular.
> > > > >
> > > > > Currently, we only take this _DMA method into account if it appears on a
> > > > > ACPI device node describing a PCIe root complex, but it is perfectly
> > > > > acceptable to attach them to named components as well, so let's ensure
> > > > > we take them into account in those cases too.
> > > >
> > > > ACPI spec v6.3, 6.2.4 _DMA:
> > > >
> > > > "_DMA is only defined under devices that represent buses"
> > > >
> > >
> > > Sure. But ACPI0004 module devices are also bus nodes, so that
> > > statement does not exclude named components that are defined under
> > > such a module device.
> >
> > Yes. _DMA is valid only if a _CRS is present, ACPI0004 does not seem
> > to _require_ a _CRS to be considered valid.
> >
> 
> How is that relevant? Any node that has a _DMA must have a _CRS as
> well. Some nodes that don't have a _DMA may not have a _CRS either.
> But that does not disqualify a ACPI0004 that *does* have both from
> being considered a bus node, no? Or is that not what you are saying?

I am just trying to prevent firmware developers from adding ACPI0004
nodes with *just* a _DMA object (because the _CRS is optional) which
will become unusable in OS context (where we do check the _CRS
presence), that's all I am saying.

Just trying to make specs foolproof :)

Thanks,
Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
