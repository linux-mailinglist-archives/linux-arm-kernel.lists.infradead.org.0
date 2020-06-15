Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 515411F93F1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 11:52:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=53DVVDcokutBHGqe/j1IrBXrziV8nsgdeswg6RT4ixk=; b=VKhngSf+60FU9/
	pKJ0cocYk/8xFpk8OgGG+oApbCBTfC+WaPxGfy6t4vnSbJfDUXBaXskdm9Gv87GZFmuQC/24cA35S
	wDlf9ciSpH958RweQqMTyl8UfNNHUPU+PwnPmPH+UoJ8TcImHKlajQTtXAuOuZsJJnl9Q0vmEeDRg
	TRaBqgZZnCT6ORwPDpuW7yUpVrTS2XzqruqjfNOImdDkGcutb089w0LX7jBT5XfbFV4va1jBUpMOP
	HlUOZehc9x5I7lxubPCceTXpJtfO82T8+bPZcdvFllmIzeIbde9/J+lWPOHrf+QJNn61dAFVQxHL0
	M9wZeQJG6TWFv986bRUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jklmk-0004WC-0R; Mon, 15 Jun 2020 09:52:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jklmT-0004TC-Lo
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 09:51:55 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 38CDC2068E;
 Mon, 15 Jun 2020 09:51:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592214713;
 bh=phkrEHjmPpuGjJgRFgwT+/kfQGB6sH8MmdjzhoGRAhg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HnkeUuIey7EKjSxJhqTGp7kaqrb91z/tOVsM2Yo/GMAGeQlrHo2IJhvNgVNo0++zF
 ZPlqTy47UNDNwmEm2QBXl/5oMJAgFn4Tr/A6BQ6ZaCi15sp+ejN2w34XCzaIXQmOpu
 AB6EEFZO7sZIRPNKFtXWbu2+deRxd9Z4m8ZHAITE=
Date: Mon, 15 Jun 2020 10:51:49 +0100
From: Will Deacon <will@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH v2] arm64: warn on incorrect placement of the kernel by
 the bootloader
Message-ID: <20200615095148.GB2477@willie-the-truck>
References: <20200611124330.252163-1-ardb@kernel.org>
 <159188119408.197277.6500663041357704124.b4-ty@kernel.org>
 <CAMj1kXENVduZAWOqkSE3ZvW=u=vyVjXBCe-1+i3h1oi1RjW_JA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMj1kXENVduZAWOqkSE3ZvW=u=vyVjXBCe-1+i3h1oi1RjW_JA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_025153_737619_6056B47C 
X-CRM114-Status: GOOD (  18.76  )
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

On Sat, Jun 13, 2020 at 10:45:10AM +0200, Ard Biesheuvel wrote:
> On Thu, 11 Jun 2020 at 15:23, Will Deacon <will@kernel.org> wrote:
> >
> > On Thu, 11 Jun 2020 14:43:30 +0200, Ard Biesheuvel wrote:
> > > Commit cfa7ede20f133c ("arm64: set TEXT_OFFSET to 0x0 in preparation for
> > > removing it entirely") results in boot failures when booting kernels that
> > > are built without KASLR support on broken bootloaders that ignore the
> > > TEXT_OFFSET value passed via the header, and use the default of 0x80000
> > > instead.
> > >
> > > To work around this, turn CONFIG_RELOCATABLE on by default, even if KASLR
> > > itself (CONFIG_RANDOMIZE_BASE) is turned off, and require CONFIG_EXPERT
> > > to be enabled to deviate from this. Then, emit a warning into the kernel
> > > log if we are not booting via the EFI stub (which is permitted to deviate
> > > from the placement restrictions) and the kernel base address is not placed
> > > according to the rules as laid out in Documentation/arm64/booting.rst.
> >
> > Applied to arm64 (for-next/core), thanks!
> >
> > [1/1] arm64: warn on incorrect placement of the kernel by the bootloader
> >       https://git.kernel.org/arm64/c/dd4bc6076587
> >
> 
> This test
> 
> ((u64)_text % MIN_KIMG_ALIGN) != 0
> 
> should have been written as
> 
> ((u64)_text % MIN_KIMG_ALIGN) != TEXT_OFFSET
> 
> because now, we are throwing the warning when
> CONFIG_ARM64_RANDOMIZE_TEXT_OFFSET is enabled :-(
> 
> I was reluctant to add another Makefile rule to add a
> -DTEXT_OFFSET=... GCC option when compiling this source file, but it
> appears we need it after all.

FWIW, I'd be in favour of removing CONFIG_ARM64_RANDOMIZE_TEXT_OFFSET at
this stage as I don't really see the point in it, especially now that
TEXT_OFFSET is on the way out and we've practically forced the use of a
relocatable image.

What do you think?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
