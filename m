Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 883F21F93F6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 11:54:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/w7oO0J1EarGpGKRM+QfBEQod+NFx3XWcQngQ65WJwE=; b=mJj62JyskjjACQ
	HDNgJk8weTrtGMQuSoTWhi7m7aWnWWGp6crbOoRnmVSKElus5Pmd2PpRKyGuNBqE+z3jF+BRuzklC
	sR8B1emTIrzO1o6jjVYELehRvgGphFJTYLi+q16kP/GhLVatfnokbjQNu4RpYjHeJaIp8ng/Kimxb
	DbyLscaCI+MTlaehepv7045NQN0MSjAzjmRB2asxQlXHpwN6hqWSHXXeWyrhj7S7NuQLpHKRjC87B
	ADfzulEFsh69LJjR1iqwq46tLvkMrc6i15NNDe8z1gAy/Afb4EpPR2aSv5+S9db39K8OLDQSr5Sii
	ECYYEX7rjFLLLDFaUaqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jklof-0004tZ-Vn; Mon, 15 Jun 2020 09:54:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkloW-0004tD-L5
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 09:54:02 +0000
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com
 [209.85.210.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 101D02068E
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 09:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592214840;
 bh=oUTEr6+TU+MvN+avZ3D9q+ohJMs5le+F12v1UhFXbxI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=LbMGXUnei+fi3smahC9TAd4SZmkrGmpVhPoEngwL0iLuLs4ngumMG4+CRxyiaHFRS
 8Er4k4IOtOIXq6vNfaIJ6QFBRzpm3L3E8p7ZulK7cjvF4dtZw3qZ3XXn/sZUgtzP5p
 UYgN1R9X5NovslaKJY5Zr1Ono2RBQ75CAo+HXJ90=
Received: by mail-ot1-f43.google.com with SMTP id n70so12636216ota.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 02:54:00 -0700 (PDT)
X-Gm-Message-State: AOAM530zILGyb1IdLyUMPlWs8r8/wQ/TQ5LiMO9ez535brp/HCMrhn+w
 JNWpjmYyMzMvilFWs0J95l/TVeCqMzRxAIhjR44=
X-Google-Smtp-Source: ABdhPJwWVx+6sMDt8dpcqRVvdc226SATwd4zCU/GHGgbpvC8q1qkCI6Q+8izv37UPeXGYZiyVlkcSsBH93+WrqtO+Jk=
X-Received: by 2002:a9d:5a12:: with SMTP id v18mr2845065oth.90.1592214839415; 
 Mon, 15 Jun 2020 02:53:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200611124330.252163-1-ardb@kernel.org>
 <159188119408.197277.6500663041357704124.b4-ty@kernel.org>
 <CAMj1kXENVduZAWOqkSE3ZvW=u=vyVjXBCe-1+i3h1oi1RjW_JA@mail.gmail.com>
 <20200615095148.GB2477@willie-the-truck>
In-Reply-To: <20200615095148.GB2477@willie-the-truck>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 15 Jun 2020 11:53:48 +0200
X-Gmail-Original-Message-ID: <CAMj1kXH+r2LR1DUuOPcg5o4Amu7wDPUZHwgn89F5Uqv7wQhaQA@mail.gmail.com>
Message-ID: <CAMj1kXH+r2LR1DUuOPcg5o4Amu7wDPUZHwgn89F5Uqv7wQhaQA@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: warn on incorrect placement of the kernel by
 the bootloader
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_025400_731799_50404F67 
X-CRM114-Status: GOOD (  22.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jonathan Marek <jonathan@marek.ca>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marc Zyngier <maz@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 15 Jun 2020 at 11:51, Will Deacon <will@kernel.org> wrote:
>
> On Sat, Jun 13, 2020 at 10:45:10AM +0200, Ard Biesheuvel wrote:
> > On Thu, 11 Jun 2020 at 15:23, Will Deacon <will@kernel.org> wrote:
> > >
> > > On Thu, 11 Jun 2020 14:43:30 +0200, Ard Biesheuvel wrote:
> > > > Commit cfa7ede20f133c ("arm64: set TEXT_OFFSET to 0x0 in preparation for
> > > > removing it entirely") results in boot failures when booting kernels that
> > > > are built without KASLR support on broken bootloaders that ignore the
> > > > TEXT_OFFSET value passed via the header, and use the default of 0x80000
> > > > instead.
> > > >
> > > > To work around this, turn CONFIG_RELOCATABLE on by default, even if KASLR
> > > > itself (CONFIG_RANDOMIZE_BASE) is turned off, and require CONFIG_EXPERT
> > > > to be enabled to deviate from this. Then, emit a warning into the kernel
> > > > log if we are not booting via the EFI stub (which is permitted to deviate
> > > > from the placement restrictions) and the kernel base address is not placed
> > > > according to the rules as laid out in Documentation/arm64/booting.rst.
> > >
> > > Applied to arm64 (for-next/core), thanks!
> > >
> > > [1/1] arm64: warn on incorrect placement of the kernel by the bootloader
> > >       https://git.kernel.org/arm64/c/dd4bc6076587
> > >
> >
> > This test
> >
> > ((u64)_text % MIN_KIMG_ALIGN) != 0
> >
> > should have been written as
> >
> > ((u64)_text % MIN_KIMG_ALIGN) != TEXT_OFFSET
> >
> > because now, we are throwing the warning when
> > CONFIG_ARM64_RANDOMIZE_TEXT_OFFSET is enabled :-(
> >
> > I was reluctant to add another Makefile rule to add a
> > -DTEXT_OFFSET=... GCC option when compiling this source file, but it
> > appears we need it after all.
>
> FWIW, I'd be in favour of removing CONFIG_ARM64_RANDOMIZE_TEXT_OFFSET at
> this stage as I don't really see the point in it, especially now that
> TEXT_OFFSET is on the way out and we've practically forced the use of a
> relocatable image.
>
> What do you think?
>

I agree. TEXT_OFFSET now always deviates from the default value of
0x80000, and we are only now catching issues that
CONFIG_ARM64_RANDOMIZE_TEXT_OFFSET was intended to catch.

I'll prepare a patch.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
