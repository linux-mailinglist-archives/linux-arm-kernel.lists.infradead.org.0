Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0251219F441
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 13:16:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jM/w0r1O+OMCHe+fBV5jVplnpoPPUgCc5h2KFBsvkxg=; b=jU+Z0rH+taC3h1
	o2vcED6S2Il10xumCxBrvGRRs+tZLllkCoFg1QDTd1DH0wSotX9xtR/9/mx58JQRhSGXhtK/jo4oM
	roNFm5GDmuyYTnjdPIhufWS7tHQuUgjgDz8OilZOC8/Xie1PY8YcgjyDqRNkmMtPs+cwatCD+ewlw
	R9Z19SbpUYoLrktHZYbPM8mfhX/OHibwxfXt7JLMDMMijpgTuIMZQ93Ck8gCq0ipV02wQ36dSEsBR
	z4HJok8OUOJ2uU6ERYtwFZT3N/olBpEjjSJZz3zVOG+PAVQm8cmH/sdjDTh2JCQSvUuoFTwJ9mFy+
	rli7zr4YjOPTTmZTbMBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLPk3-0006vw-4L; Mon, 06 Apr 2020 11:16:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLPjw-0006vV-6n
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 11:16:29 +0000
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com
 [209.85.166.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5A62B2072A
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  6 Apr 2020 11:16:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586171787;
 bh=Ni3hDYPZz+MENQCch24bJYc0CvATNDq73oyfvYY/33I=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=kyPcHoE7j5NEoVU0WLPYM8OSQ57iqvYN2BNhlLHIudLb0oRr/B2xLQfSss5Y8NeWf
 ausVcf4UObHdzGHMNWH4QWRzUI7qyleNysGqnMv6+XnNQ1jfPna5Rqp2Hf2Khj1TYN
 yU6Ac6IGAR814PoaoRgMKBBssDd3Ire+5qhdaOBw=
Received: by mail-il1-f178.google.com with SMTP id f16so14216131ilj.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 04:16:27 -0700 (PDT)
X-Gm-Message-State: AGi0PubXT5yX3cN15j5qkoF15WxANEPIcZ/gcBLog15Q7iQ7Vfmpd9um
 raIjt9mYfs5aFU+C0zPz12YC60LzbJ7U/wH8wLQ=
X-Google-Smtp-Source: APiQypITnml4uw5Bo2Dl06jSoenirNs5+mpO7QBVx1fKJR101jrHWwwGnbC+r7Oa+PGUqkg9YfUDaNohTwbzcU5CTSM=
X-Received: by 2002:a92:dcd1:: with SMTP id b17mr20603697ilr.80.1586171786685; 
 Mon, 06 Apr 2020 04:16:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200404073047.17898-1-ardb@kernel.org>
 <20200406110401.GA4650@red-moon.cambridge.arm.com>
In-Reply-To: <20200406110401.GA4650@red-moon.cambridge.arm.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 6 Apr 2020 13:16:15 +0200
X-Gmail-Original-Message-ID: <CAMj1kXEsROAg5T_qhk4DY7B0y3nXLFzyoT08SSztGWOa+e2kmQ@mail.gmail.com>
Message-ID: <CAMj1kXEsROAg5T_qhk4DY7B0y3nXLFzyoT08SSztGWOa+e2kmQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: iort: take _DMA methods into account for named
 components
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_041628_268172_3AB516A5 
X-CRM114-Status: GOOD (  13.74  )
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

On Mon, 6 Apr 2020 at 13:04, Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Sat, Apr 04, 2020 at 09:30:47AM +0200, Ard Biesheuvel wrote:
> > Where IORT nodes for named components can describe simple DMA limits
> > expressed as the number of address bits a device can driver, _DMA methods
> > in AML can express more complex topologies, involving DMA translation in
> > particular.
> >
> > Currently, we only take this _DMA method into account if it appears on a
> > ACPI device node describing a PCIe root complex, but it is perfectly
> > acceptable to attach them to named components as well, so let's ensure
> > we take them into account in those cases too.
>
> ACPI spec v6.3, 6.2.4 _DMA:
>
> "_DMA is only defined under devices that represent buses"
>

Sure. But ACPI0004 module devices are also bus nodes, so that
statement does not exclude named components that are defined under
such a module device.

> This should probably be updated and _DMA usage clarified - we can't
> leave it open to interpretation.
>

Clarification is always better.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
