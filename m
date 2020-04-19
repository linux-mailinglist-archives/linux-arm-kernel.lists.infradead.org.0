Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A3A81AF9F3
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 14:22:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zrl5VHaBIu13D3odXmrxAGJAeZRvgZcTWTyA6KYN1hg=; b=gZvzj4pmxUkc+a
	Z6kA8cJMxlUGjVl/deCQ2uFIr2YlwIAU/gz0UTumsaRdhavNCQn4sDGHFHKe8mSZbHbT0ZN+DFZ9o
	UjluX3eeADQSW9mvncw33U+pHmDeepSglT1BfwGUfc0iwrq1Q9YIYFQ4gRhTYc4APplsM3fi0iTTl
	qeb8mGJhaWK2fmAyjdfaeGAj2NfE6BDJJKfaeOfssPWgb5iln8GiSBiAWj1KOYcNdkuyqa9Y5Jw0P
	bIaS7oJfrQLu4O78m3Bty7bmgwz3Wb1THh3hTS2AW+smMvRkhHHHidELxuqHvqaAvRxHoeDkiWTc/
	zIlPTNPFR1qcSMAumAhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ8xr-0001Nb-Jk; Sun, 19 Apr 2020 12:22:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ8xg-0001Mq-2y
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 12:22:13 +0000
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com
 [209.85.166.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C56B9214AF
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 12:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587298930;
 bh=nHuBTW6s4e1ncQQofMRobsPKIZ85bHl4JNJ9SnnOrH0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ZJgo77gqf1NXk06SH8iSeGMLgGL1ydMXXBQPyaoleGeS2d3KcH2JW9NXnUDzbU8xY
 BTt730qnl5rXCzU3RMQoAUiiKNu1nAo4Cy0hHOXhD1q6x5tcOxF5whqVfbla4rGzhb
 igDLm+23ataXEqphqxnD9jHNSSYXRTu0w+8PeGLQ=
Received: by mail-io1-f48.google.com with SMTP id f19so7674771iog.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 05:22:10 -0700 (PDT)
X-Gm-Message-State: AGi0PuaXr4IOWizSQomSVfFIMxgtkaJU8ufZlaz9rP9BQLgC2SbOic0E
 xUl7NbzF+fDnlbxyHFr2OPgF1u9dCBqvHH49SDI=
X-Google-Smtp-Source: APiQypJeIJIqZLS9g0ZnpQrUhHG+pgUY6RBbBTUw4cELJsksitFAkI5fUdUPVDw6sOq9g1xNzovn3tuwVphyLan6CZY=
X-Received: by 2002:a6b:ef03:: with SMTP id k3mr11446593ioh.203.1587298930182; 
 Sun, 19 Apr 2020 05:22:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200404073047.17898-1-ardb@kernel.org>
 <20200406110401.GA4650@red-moon.cambridge.arm.com>
 <CAMj1kXEsROAg5T_qhk4DY7B0y3nXLFzyoT08SSztGWOa+e2kmQ@mail.gmail.com>
 <20200406113235.GB4650@red-moon.cambridge.arm.com>
 <CAMj1kXHt0yhnFE=fVZm0p3iyC20s=j=8Z4Gzcmp_cqx3P3N5Dw@mail.gmail.com>
 <20200406131432.GC4650@red-moon.cambridge.arm.com>
 <CAMj1kXFVzeDyj=Nabq8QgcUnyiJWRSVRyHR6c+YSit_7uZUKmQ@mail.gmail.com>
In-Reply-To: <CAMj1kXFVzeDyj=Nabq8QgcUnyiJWRSVRyHR6c+YSit_7uZUKmQ@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Sun, 19 Apr 2020 14:21:59 +0200
X-Gmail-Original-Message-ID: <CAMj1kXHZTBb7+5MGy-w7jNzq5HeKe-AHADc6uH0sKTEQydLEBQ@mail.gmail.com>
Message-ID: <CAMj1kXHZTBb7+5MGy-w7jNzq5HeKe-AHADc6uH0sKTEQydLEBQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: iort: take _DMA methods into account for named
 components
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_052212_170961_D90BF213 
X-CRM114-Status: GOOD (  23.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

On Mon, 6 Apr 2020 at 15:19, Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Mon, 6 Apr 2020 at 15:14, Lorenzo Pieralisi
> <lorenzo.pieralisi@arm.com> wrote:
> >
> > On Mon, Apr 06, 2020 at 01:59:07PM +0200, Ard Biesheuvel wrote:
> > > On Mon, 6 Apr 2020 at 13:32, Lorenzo Pieralisi
> > > <lorenzo.pieralisi@arm.com> wrote:
> > > >
> > > > On Mon, Apr 06, 2020 at 01:16:15PM +0200, Ard Biesheuvel wrote:
> > > > > On Mon, 6 Apr 2020 at 13:04, Lorenzo Pieralisi
> > > > > <lorenzo.pieralisi@arm.com> wrote:
> > > > > >
> > > > > > On Sat, Apr 04, 2020 at 09:30:47AM +0200, Ard Biesheuvel wrote:
> > > > > > > Where IORT nodes for named components can describe simple DMA limits
> > > > > > > expressed as the number of address bits a device can driver, _DMA methods
> > > > > > > in AML can express more complex topologies, involving DMA translation in
> > > > > > > particular.
> > > > > > >
> > > > > > > Currently, we only take this _DMA method into account if it appears on a
> > > > > > > ACPI device node describing a PCIe root complex, but it is perfectly
> > > > > > > acceptable to attach them to named components as well, so let's ensure
> > > > > > > we take them into account in those cases too.
> > > > > >
> > > > > > ACPI spec v6.3, 6.2.4 _DMA:
> > > > > >
> > > > > > "_DMA is only defined under devices that represent buses"
> > > > > >
> > > > >
> > > > > Sure. But ACPI0004 module devices are also bus nodes, so that
> > > > > statement does not exclude named components that are defined under
> > > > > such a module device.
> > > >
> > > > Yes. _DMA is valid only if a _CRS is present, ACPI0004 does not seem
> > > > to _require_ a _CRS to be considered valid.
> > > >
> > >
> > > How is that relevant? Any node that has a _DMA must have a _CRS as
> > > well. Some nodes that don't have a _DMA may not have a _CRS either.
> > > But that does not disqualify a ACPI0004 that *does* have both from
> > > being considered a bus node, no? Or is that not what you are saying?
> >
> > I am just trying to prevent firmware developers from adding ACPI0004
> > nodes with *just* a _DMA object (because the _CRS is optional) which
> > will become unusable in OS context (where we do check the _CRS
> > presence), that's all I am saying.
> >
> > Just trying to make specs foolproof :)
> >
>
> Ah ok, fair enough.
>
> Note that acpi_dma_get_range() already checks this, but on the
> firmware validation side, adding a rule like this would certainly help
> as well.
>
> I think the window for new ACPI material is closing atm - I'll check
> internally whether we can get someone to slip this in (i.e., a
> clarification added to '9.12 Module Device' that _DMA methods are
> permitted but only if _CRS is defined as well)

So what is the verdict on this patch? We agree that the ACPI spec
permits ACPI0004 containers with _CRS/_DMA method pairs, and child
named components that rely on the described DMA translation to be
honored by the OS. IOW, we should provide guidance to ensure that
firmware providers don't get it wrong, but if they do get it right, we
still need this change in order to take the translation into account.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
