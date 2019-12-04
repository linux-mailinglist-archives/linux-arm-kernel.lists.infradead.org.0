Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBEF11121BC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 04:07:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2RNvEDcWqIELgc/Tl5J7Ahb0AeeSzc2w6mZ+pxuMjBQ=; b=D6KcAo9fz03K9d
	GHKXjT3LS+fG5p10pWeLH6YDq1KWSlkQsTpSkduhp2a6Xv1GJyg8Ccuri/34kKwBfurd+Gj2oXHDI
	rP9JFXWhb4ghQV8iEF9JpPvAgZ0rTWq0si6fphPZvwCuZa4DJeOmW6m9xh/J4Ki7/gXO9KTUXXnDW
	nWb1t2/RBmBfZcS1ID4yiAMh6Kc0CUa97Cke6RmNmkiGdNhAdL87NPsNiNWkzy+CceKLu+ypWefF7
	zHrZURs3989WeF1luBv56RDgpgZOvrQecKEN3OpteQ/k4FUdq1zfz7tLhU+JeYzcT2Qu1kd4x3ZtS
	U5gGkwHSf18lcctzBZ4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icL0r-000585-1j; Wed, 04 Dec 2019 03:07:37 +0000
Received: from pb-smtp20.pobox.com ([173.228.157.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icL0h-00056O-II
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 03:07:31 +0000
Received: from pb-smtp20.pobox.com (unknown [127.0.0.1])
 by pb-smtp20.pobox.com (Postfix) with ESMTP id 6C080B78C0;
 Tue,  3 Dec 2019 22:07:20 -0500 (EST)
 (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=date:from:to
 :cc:subject:in-reply-to:message-id:references:mime-version
 :content-type; s=sasl; bh=IelinpDQbeKXepUMIROrDb1GjTk=; b=CABelT
 WkHNrEvR+2eEnSX0bNqjSWKA/3JG1AUlPYzS6fJN7aDPEtFVeaTyMC9hLgMCYkWj
 n/RZBTvD2362KdETd9+Tar4x+YNjuayDw3VSi+kJ+EmiCjQOE8EYY6xVrHgH2oZt
 CCNveCbXGJ4jOnIVMvoHCWEneo6oVq2bUdVZI=
Received: from pb-smtp20.sea.icgroup.com (unknown [127.0.0.1])
 by pb-smtp20.pobox.com (Postfix) with ESMTP id 52EDEB78BF;
 Tue,  3 Dec 2019 22:07:20 -0500 (EST)
 (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=fluxnic.net;
 h=date:from:to:cc:subject:in-reply-to:message-id:references:mime-version:content-type;
 s=2016-12.pbsmtp; bh=SSmx4RjaKZO1wY+Z9EUeYC3/D32XHteJ5gssCL181wQ=;
 b=ZqUz3GeKbvAUdbHOEM64cq09NdvCTpnNeBNJFHKQbLSQhGyL7K8ZHyTyNWRWPSHSwGq/JO3WEfU+REaO21VPmKO22UWazqPwrza//GVGCYMrgeaxHtdgdhoZ7bGv0GafxgE7FZmSrHq07zyNoTO9y/STkxGTKsvce2DU+W49RYY=
Received: from yoda.home (unknown [24.203.50.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-smtp20.pobox.com (Postfix) with ESMTPSA id 2AFCCB78BE;
 Tue,  3 Dec 2019 22:07:17 -0500 (EST)
 (envelope-from nico@fluxnic.net)
Received: from xanadu.home (xanadu.home [192.168.2.2])
 by yoda.home (Postfix) with ESMTPSA id 521B52DA0206;
 Tue,  3 Dec 2019 22:07:15 -0500 (EST)
Date: Tue, 3 Dec 2019 22:07:15 -0500 (EST)
From: Nicolas Pitre <nico@fluxnic.net>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH] arm: explicitly place .fixup in .text
In-Reply-To: <CAKwvOdmAFp=p=z8bhaRHf8uRhUBKpoAYtissyLTk5DC8f-=BUw@mail.gmail.com>
Message-ID: <nycvar.YSQ.7.76.1912032147340.17114@knanqh.ubzr>
References: <20191122185522.20582-1-ndesaulniers@google.com>
 <nycvar.YSQ.7.76.1911291614480.8537@knanqh.ubzr>
 <CAKwvOdmAFp=p=z8bhaRHf8uRhUBKpoAYtissyLTk5DC8f-=BUw@mail.gmail.com>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
X-Pobox-Relay-ID: 2D9A5A48-1643-11EA-92BA-B0405B776F7B-78420484!pb-smtp20.pobox.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_190727_675141_D3A6AA7E 
X-CRM114-Status: GOOD (  40.01  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [173.228.157.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kees Cook <keescook@chromium.org>,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 "# 3.4.x" <stable@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Manoj Gupta <manojgupta@google.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 3 Dec 2019, Nick Desaulniers wrote:

> On Fri, Nov 29, 2019 at 1:33 PM Nicolas Pitre <nico@fluxnic.net> wrote:
> >
> > On Fri, 22 Nov 2019, Nick Desaulniers wrote:
> >
> > > From: Kees Cook <keescook@chromium.org>
> > >
> > > There's an implicit dependency on the section ordering of the orphaned
> > > section .fixup that can break arm_copy_from_user if the linker places
> > > the .fixup section before the .text section. Since .fixup is not
> > > explicitly placed in the existing ARM linker scripts, the linker is free
> > > to order it anywhere with respect to the rest of the sections.
> > >
> > > Multiple users from different distros (Raspbian, CrOS) reported kernel
> > > panics executing seccomp() syscall with Linux kernels linked with LLD.
> > >
> > > Documentation/x86/exception-tables.rst alludes to the ordering
> > > dependency. The relevant quote:
> > >
> > > ```
> > > NOTE:
> > > Due to the way that the exception table is built and needs to be ordered,
> > > only use exceptions for code in the .text section.  Any other section
> > > will cause the exception table to not be sorted correctly, and the
> > > exceptions will fail.
> > >
> > > Things changed when 64-bit support was added to x86 Linux. Rather than
> > > double the size of the exception table by expanding the two entries
> > > from 32-bits to 64 bits, a clever trick was used to store addresses
> > > as relative offsets from the table itself. The assembly code changed
> > > from::
> > >
> > >     .long 1b,3b
> > >   to:
> > >           .long (from) - .
> > >           .long (to) - .
> > >
> > > and the C-code that uses these values converts back to absolute addresses
> > > like this::
> > >
> > >         ex_insn_addr(const struct exception_table_entry *x)
> > >         {
> > >                 return (unsigned long)&x->insn + x->insn;
> > >         }
> > > ```
> > >
> > > Since the addresses stored in the __ex_table are RELATIVE offsets and
> > > not ABSOLUTE addresses, ordering the fixup anywhere that's not
> > > immediately preceding .text causes the relative offset of the faulting
> > > instruction to be wrong, causing the wrong (or no) address of the fixup
> > > handler to looked up in __ex_table.
> >
> > This explanation makes no sense.
> >
> > The above is valid only when ARCH_HAS_RELATIVE_EXTABLE is defined. On
> > ARM32 it is not, nor would it make sense to be.
> 
> Hmm...I thought that was the smoking gun. From the description in
> Documentation, I thought they meant that exception table entry lookup
> was changed to be homogeneous for 32b AND 64b arch's, but as you point
> out they're not.  Now with the reference to ARCH_HAS_RELATIVE_EXTABLE,
> I know to look through:
> include/asm-generic/extable.h
> include/linux/extable.h
> lib/extable.c
> kernel/extable.c
> arch/arm/mm/extable.c
> arch/arm/mm/fault.c (__do_kernel_fault() calls fixup_exception(),
> which is of interest).
> 
> Looks like the exception table is sorted by address of faulting
> instruction, then binary searched when an exception occurs.  Seems the
> exception table is like an array of pairs of addresses (address of
> faulting instruction from the get_user() call, address of fixup
> handler) (when !ARCH_HAS_RELATIVE_EXTABLE), IIUC.

Exact. And those are absolute addresses.

To save on memory footprint, this table was made into relative addresses 
on 64-bit targets with the restriction that the relative offsets have to 
fit in a 32-bit value and not be negative. On 32-bit targets there is no 
point using relative addresses as the absolute addresses use only 32 
bits already, and then we don't have to compute the absolute address at 
run time.

> Reviewing the logs from the bugreport
> (https://bugs.chromium.org/p/chromium/issues/detail?id=1020633#c44)
> indeed the error string looks like the error message from
> __do_kernel_fault() in arch/arm/mm/fault.c where a call to
> fixup_exceptions() in arch/arm/mm/extable returned 1 because the call
> to search_exception_tables() in kernel/extable.c returned NULL.
> 
> So I was right that `no address of the fixup handler to (be) looked up
> in __ex_table`, but not quite right about *why* it fails to be looked
> up.
> 
> search_exception_tables() in kernel/extable.c calls 3 functions:
> 1. search_kernel_exception_table()
> 2. search_module_extables()
> 3. search_bpf_extables()
> 
> So the next question is which one of the above should have found the
> exception table entry, and why did it not when LLD placed the orphaned
> .fixup section BEFORE .text?  All three of the above do some
> processing on the address but in the end all call search_extable().
> 
> I really don't think kernel modules are involved.
> 
> Since we're observing the fault via a call to seccomp(), which IIUC
> takes a BPF program when setting a filter (SECCOMP_SET_MODE_FILTER),
> I'm curious to look into search_bpf_extables() first.  Maybe
> constructing a BPF program involves insertion of special exception
> handler?  Looks like bpf programs are stored in an rb_tree called
> bpf_tree.  They have an auxiliary field that contains a pointer to an
> exception table entry.  "Auxiliary" makes it sounds optional, and the
> only assignment I can find to this field is in
> arch/x86/net/bpf_jit_comp.c, so I doubt it's relevant for arm.  It
> also just looks like it's zero initialized (bpf_prog_alloc_no_stats()
> in kernel/bpf/core.c) for arch generic code.
> 
> That leaves just search_kernel_exception_table().  I wonder if it
> fails because we put garbage entries in, or sorted it improperly?

Well, if you can reproduce the issue (would be very helpful) then you 
can add some printk to log search_exception_tables() and figure out for 
sure actually which category is involved here. Unlike with user space, 
kernel exceptions are relatively rare events and they shouldn't flood 
your log.

> Oh, and messing around with grep, it looks like entries to the
> exception table can be sorted at build time rather than boot time via
> CONFIG_BUILDTIME_EXTABLE_SORT?
> 
> I don't see the pr_notice from sort_main_extable() (kernel/extable.c
> called from start_kernel() in init/main.c) in the bugreports:
> https://bugs.chromium.org/p/chromium/issues/attachmentText?aid=421842
> https://github.com/ClangBuiltLinux/linux/issues/282
> (But IIRC, the log level may not be set to display these).
> 
> CONFIG_BUILDTIME_EXTABLE_SORT is selected by arch/arm/Kconfig if
> CONFIG_MMU, which I highly suspect is already selected for the above
> two reports. (Would an arm32 based chromebook not have an MMU? I doubt
> it.)
> 
> So there may be an ordering dependency in scripts/sortextable.{c|h}?
> Neither mention `fixup`.
> 
> Will continue debugging more tomorrow or later this week, but please
> stop me if any of the above is also incorrect.  Some ideas for further
> experiments:
> - scripts/check_extable.sh sounds like some kind of validator.
> Manoj/Nathan, I wonder if you linked the problematic kernel with LLD
> than ran `./scripts/check_extable.sh vmlinux` if it would warn? Dunno
> about all those command line flags though.
> - if we apply a similar diff to the patch I posted, but force .fixup
> to be before .text for BFD (as LLD is placing the orphaned section
> currently), relinked with BFD and could reproduce the issue, that
> seems like proof about the implicit section ordering.
> ```
> diff --git a/arch/arm/kernel/vmlinux.lds.S b/arch/arm/kernel/vmlinux.lds.S
> index 319ccb10846a..adfb5297f359 100644
> --- a/arch/arm/kernel/vmlinux.lds.S
> +++ b/arch/arm/kernel/vmlinux.lds.S
> @@ -58,6 +58,7 @@ SECTIONS
>  #ifdef CONFIG_ARM_MPU
>         . = ALIGN(PMSAv8_MINALIGN);
>  #endif
> +       .fixup : { *(.fixup) }
>         .text : {                       /* Real text segment            */
>                 _stext = .;             /* Text and read-only data      */
>                 ARM_TEXT
> ```
> 
> -- 
> Thanks,
> ~Nick Desaulniers
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
