Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E3319F4A3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 13:33:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E9t9gFXAsoDCp7POoS2Uz1Nsy0E0NBAi21wG6KLfHrs=; b=iZU89QrFhydmZb
	YUaTPrNqtBTJga+vzQ2kNSvaY3ibN6Z4ZS5zBYQqR7kkGqUC9wPu7z47b2GeypCfGkyTiDC3Y8IKP
	aNyd/wPsod7no1CoTCKZiHGmyFTSnBKgZPG56KQPmjV83kamiPJI7WFa7Jw67O1AZMh3/Mrj6wOV1
	L2sfyF6TtNSm/2PH3xdLVQCcqfzy+djmwIjHUYISBA948ns5qemMOoLQFyB6qebdOqmYjTVihg5aD
	2p9DD8Sly6fu7DiUERvtOM+mGKcImwGSdEGKkL5KMcV8dtA/B79JDkeoqnS9vMkPA3/KSAoYInUBF
	3gJCQ8XuomZTnhVMpdyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLQ0O-00083x-Mn; Mon, 06 Apr 2020 11:33:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLPzb-0007RQ-HM
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 11:32:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AAAD630E;
 Mon,  6 Apr 2020 04:32:38 -0700 (PDT)
Received: from red-moon.cambridge.arm.com (unknown [10.57.29.239])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D22EA3F52E;
 Mon,  6 Apr 2020 04:32:37 -0700 (PDT)
Date: Mon, 6 Apr 2020 12:32:35 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH] arm64: iort: take _DMA methods into account for named
 components
Message-ID: <20200406113235.GB4650@red-moon.cambridge.arm.com>
References: <20200404073047.17898-1-ardb@kernel.org>
 <20200406110401.GA4650@red-moon.cambridge.arm.com>
 <CAMj1kXEsROAg5T_qhk4DY7B0y3nXLFzyoT08SSztGWOa+e2kmQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMj1kXEsROAg5T_qhk4DY7B0y3nXLFzyoT08SSztGWOa+e2kmQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_043239_626466_DCBF8525 
X-CRM114-Status: GOOD (  15.98  )
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

On Mon, Apr 06, 2020 at 01:16:15PM +0200, Ard Biesheuvel wrote:
> On Mon, 6 Apr 2020 at 13:04, Lorenzo Pieralisi
> <lorenzo.pieralisi@arm.com> wrote:
> >
> > On Sat, Apr 04, 2020 at 09:30:47AM +0200, Ard Biesheuvel wrote:
> > > Where IORT nodes for named components can describe simple DMA limits
> > > expressed as the number of address bits a device can driver, _DMA methods
> > > in AML can express more complex topologies, involving DMA translation in
> > > particular.
> > >
> > > Currently, we only take this _DMA method into account if it appears on a
> > > ACPI device node describing a PCIe root complex, but it is perfectly
> > > acceptable to attach them to named components as well, so let's ensure
> > > we take them into account in those cases too.
> >
> > ACPI spec v6.3, 6.2.4 _DMA:
> >
> > "_DMA is only defined under devices that represent buses"
> >
> 
> Sure. But ACPI0004 module devices are also bus nodes, so that
> statement does not exclude named components that are defined under
> such a module device.

Yes. _DMA is valid only if a _CRS is present, ACPI0004 does not seem
to _require_ a _CRS to be considered valid.

It is an example. Better to make the _DMA definition more robust
and linked to ACPI0004, for instance.

> > This should probably be updated and _DMA usage clarified - we can't
> > leave it open to interpretation.
> >
> 
> Clarification is always better.

Yes, we should be able to get this in as an Errata, better to be clear
given that it is something that will be used extensively across
platforms.

Thanks !
Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
