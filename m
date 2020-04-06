Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 555E819F6BD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 15:19:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Q2nI/LJhi2I/KzMHbAlskPegrnN587d9bpJa7vj+IU=; b=fRVUFVXWotwlb8
	/Im9Yev6ZMNHq68pJ2q1OfXldE5BiezP9+wuD11IvmGQNw9tEc5wVvdw9yiE9fVYYYU+beGL8+ppQ
	7Zw4fplpECtMUa1tY+hb3+c/PXI/awE6CVYaVZyvhSbDCIMNFRXyDR5hHE1G+5xsuTmxRXc1ZAz0/
	N/ouWE7f/12tjXB9XExCIMQOBccrp+JAAkEUcpvHS6SPNoENkfy+ZzZAGV3rnNbaMmzXI0BddN0J3
	6Hk18PNN7C1a40oZYob3bxjJUmrqmbbCTTEZmQQW7RThSYZYodLlyyaJ3Jm8UazqLePicRSQL7Vwq
	k11Z3Pl/Jga7Stsi3IKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLRfE-0006QF-HB; Mon, 06 Apr 2020 13:19:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLRf5-0006PY-BZ
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 13:19:37 +0000
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com
 [209.85.166.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E03232075E
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  6 Apr 2020 13:19:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586179175;
 bh=aQlLp2GRdhJae5APdFd2UrJ8I3luWcE/l38Qp6OtoUA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Q6YLUqFmYuqJkMm2o/9wzN7C/rV1IXagW3JUrfQPCwlropyyE/d0LLimN3pLxEtwy
 49N1FcBtw6sd+KDTODyyK7Ke+1esLXhPbZFCNlutWT4S+m0gUv/KnoBzGerxL/r0Je
 TH1MPe8zpcVTX0uSN0hNjBrSHnzuy/w3VCzK1AsE=
Received: by mail-il1-f174.google.com with SMTP id r5so14611668ilq.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 06:19:34 -0700 (PDT)
X-Gm-Message-State: AGi0PuYjXfuJcmKv5uNzv6FrO6XxkTWih48VvuG1Ifh4rOXXI51vgTBh
 rs8cfjlpsDO9recJQuECMkYkREy2jFPRRE1dS6c=
X-Google-Smtp-Source: APiQypJwtWz3t9FRlvFCsbwtq/yJiy9UxNW0+oJpmLjT+U2hjev92ruEZHrufM6r/4PdQuIss+ZRKD3uaz25Da8QpKs=
X-Received: by 2002:a05:6e02:4c:: with SMTP id
 i12mr21133267ilr.211.1586179174327; 
 Mon, 06 Apr 2020 06:19:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200404073047.17898-1-ardb@kernel.org>
 <20200406110401.GA4650@red-moon.cambridge.arm.com>
 <CAMj1kXEsROAg5T_qhk4DY7B0y3nXLFzyoT08SSztGWOa+e2kmQ@mail.gmail.com>
 <20200406113235.GB4650@red-moon.cambridge.arm.com>
 <CAMj1kXHt0yhnFE=fVZm0p3iyC20s=j=8Z4Gzcmp_cqx3P3N5Dw@mail.gmail.com>
 <20200406131432.GC4650@red-moon.cambridge.arm.com>
In-Reply-To: <20200406131432.GC4650@red-moon.cambridge.arm.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 6 Apr 2020 15:19:22 +0200
X-Gmail-Original-Message-ID: <CAMj1kXFVzeDyj=Nabq8QgcUnyiJWRSVRyHR6c+YSit_7uZUKmQ@mail.gmail.com>
Message-ID: <CAMj1kXFVzeDyj=Nabq8QgcUnyiJWRSVRyHR6c+YSit_7uZUKmQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: iort: take _DMA methods into account for named
 components
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_061935_441104_7A83CD9F 
X-CRM114-Status: GOOD (  20.47  )
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

On Mon, 6 Apr 2020 at 15:14, Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Mon, Apr 06, 2020 at 01:59:07PM +0200, Ard Biesheuvel wrote:
> > On Mon, 6 Apr 2020 at 13:32, Lorenzo Pieralisi
> > <lorenzo.pieralisi@arm.com> wrote:
> > >
> > > On Mon, Apr 06, 2020 at 01:16:15PM +0200, Ard Biesheuvel wrote:
> > > > On Mon, 6 Apr 2020 at 13:04, Lorenzo Pieralisi
> > > > <lorenzo.pieralisi@arm.com> wrote:
> > > > >
> > > > > On Sat, Apr 04, 2020 at 09:30:47AM +0200, Ard Biesheuvel wrote:
> > > > > > Where IORT nodes for named components can describe simple DMA limits
> > > > > > expressed as the number of address bits a device can driver, _DMA methods
> > > > > > in AML can express more complex topologies, involving DMA translation in
> > > > > > particular.
> > > > > >
> > > > > > Currently, we only take this _DMA method into account if it appears on a
> > > > > > ACPI device node describing a PCIe root complex, but it is perfectly
> > > > > > acceptable to attach them to named components as well, so let's ensure
> > > > > > we take them into account in those cases too.
> > > > >
> > > > > ACPI spec v6.3, 6.2.4 _DMA:
> > > > >
> > > > > "_DMA is only defined under devices that represent buses"
> > > > >
> > > >
> > > > Sure. But ACPI0004 module devices are also bus nodes, so that
> > > > statement does not exclude named components that are defined under
> > > > such a module device.
> > >
> > > Yes. _DMA is valid only if a _CRS is present, ACPI0004 does not seem
> > > to _require_ a _CRS to be considered valid.
> > >
> >
> > How is that relevant? Any node that has a _DMA must have a _CRS as
> > well. Some nodes that don't have a _DMA may not have a _CRS either.
> > But that does not disqualify a ACPI0004 that *does* have both from
> > being considered a bus node, no? Or is that not what you are saying?
>
> I am just trying to prevent firmware developers from adding ACPI0004
> nodes with *just* a _DMA object (because the _CRS is optional) which
> will become unusable in OS context (where we do check the _CRS
> presence), that's all I am saying.
>
> Just trying to make specs foolproof :)
>

Ah ok, fair enough.

Note that acpi_dma_get_range() already checks this, but on the
firmware validation side, adding a rule like this would certainly help
as well.

I think the window for new ACPI material is closing atm - I'll check
internally whether we can get someone to slip this in (i.e., a
clarification added to '9.12 Module Device' that _DMA methods are
permitted but only if _CRS is defined as well)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
