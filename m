Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C3A112064
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 00:43:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cUxyiF3g8SdDTVtX26HCkAsnrmapqDXT/DI7ly1CUZs=; b=MKFohVyYxC5gBK
	br/hT3BUR92MuyufWudsgIhqvtfC2Ch/1+HXPejxH2HDnl4ZaQetRZEvVAV2x1KyU7OcA3o/1zNcg
	xnqGhpg80dFTzf4E5ogJtL8MnVzKhP1cEp0gILS5BP6qb9R3Ui2LScQQG/gbizGm0gxbVIIk5uJTU
	tIglz8Xgr8caVb9Aoj24f8dt8byaqN/MaHkA9XMjbDSE2mthmFbL0Y+avGzMBen+engfEOel3Akhx
	Cmzur6pqsoddhpRXylDH1OVwU6X9HbnKjZHqVj5iZYmHpp2AOncmKy++LW2t5aZNFgTsH033r5AJQ
	2h7r03q369504uDFPCeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icHp5-0003af-Sv; Tue, 03 Dec 2019 23:43:15 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icHox-0003Zn-KE
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 23:43:11 +0000
Received: by mail-pl1-x642.google.com with SMTP id q16so2315511plr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 15:43:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1OxHtutk6hA28dBcP13TAqzlvKk2lKOdJ3WPlSn/d8Q=;
 b=uBxB61F3xk/UPfo0PM/WCB9wWcWlnn9tx+m5s5ni7sO5yubFDPbYeUwsd1Xr9ZLHXk
 qFffrP2WZ9fTLbOTRJCfW5JrjSTbEGBwKAIBQNV+3vHHKmL8kSBu87Xq2BeT1jOHSLVA
 +f6wqWc/QSIsa+BdofFpZg0vu986rtLubTKRduvc/tWYcIMDwAioR181kAdCURwk3s5c
 /EXNj4O6hQCPYh6Y4QChj1ba+yl2sYnOpUXPjkclbFZB4b/FYvPThE04WBsI0+SQG6qs
 q97LPxZ5HwzxA5J8lR4mn/sRMTztmCgzniV91J0Ku8WOuUmgBK958reThbkupRKeI++P
 H8dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1OxHtutk6hA28dBcP13TAqzlvKk2lKOdJ3WPlSn/d8Q=;
 b=pb+ff1WjiSJmo0/7oyWR0XSvd53LYAxagNUkrb3URZjboFUb7oUFjHIdGSKJlzq2vj
 0PvfjXdMKfs6wF6vc0bOhVFRxmKgSBHYX4jyoufWT1hc7/fGI4BWchCb6qp1yzwNSiw2
 EttOPlDuLHd0vX2x+ynFHSXTwxcB+JBbIwU7lAOdZO7HoS8LDjpNfpxyJtEdft75kkbe
 QFAjlNvvHHfOdXCtdfQeAtHqJ9fgAyQ6QuQkCm+d8uVK2mG35GgWpagd4qm2vBlkXJQZ
 jYFHOlVNiOxG5X5+2mq3nVcUtcV7L752BwLa9VR45uymiRO99FRsE5SxGgQNDgoFSgwJ
 ZarA==
X-Gm-Message-State: APjAAAX5xzQ+HdXl1S46eN62um6nY2TS7aBgITIsOs/gHKUg1+25wmse
 ptIN9+L3v0z6/cAOBtBB39S7PbEqyL3AOt2qc4LiUg==
X-Google-Smtp-Source: APXvYqx74YmiLdGue6ov0CGItqQOhr5aoFMW+ZHNwajbQUlkcMKQiACOe6MPfcXVaEk15NyKto8aP2Tqx74SBbu6mW0=
X-Received: by 2002:a17:902:8ec8:: with SMTP id
 x8mr519623plo.119.1575416581305; 
 Tue, 03 Dec 2019 15:43:01 -0800 (PST)
MIME-Version: 1.0
References: <20191122185522.20582-1-ndesaulniers@google.com>
 <nycvar.YSQ.7.76.1911291614480.8537@knanqh.ubzr>
In-Reply-To: <nycvar.YSQ.7.76.1911291614480.8537@knanqh.ubzr>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 3 Dec 2019 15:42:50 -0800
Message-ID: <CAKwvOdmAFp=p=z8bhaRHf8uRhUBKpoAYtissyLTk5DC8f-=BUw@mail.gmail.com>
Subject: Re: [PATCH] arm: explicitly place .fixup in .text
To: Nicolas Pitre <nico@fluxnic.net>, Manoj Gupta <manojgupta@google.com>, 
 Nathan Chancellor <natechancellor@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_154307_693348_6B43D423 
X-CRM114-Status: GOOD (  30.88  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Kees Cook <keescook@chromium.org>, LKML <linux-kernel@vger.kernel.org>,
 "# 3.4.x" <stable@vger.kernel.org>,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 29, 2019 at 1:33 PM Nicolas Pitre <nico@fluxnic.net> wrote:
>
> On Fri, 22 Nov 2019, Nick Desaulniers wrote:
>
> > From: Kees Cook <keescook@chromium.org>
> >
> > There's an implicit dependency on the section ordering of the orphaned
> > section .fixup that can break arm_copy_from_user if the linker places
> > the .fixup section before the .text section. Since .fixup is not
> > explicitly placed in the existing ARM linker scripts, the linker is free
> > to order it anywhere with respect to the rest of the sections.
> >
> > Multiple users from different distros (Raspbian, CrOS) reported kernel
> > panics executing seccomp() syscall with Linux kernels linked with LLD.
> >
> > Documentation/x86/exception-tables.rst alludes to the ordering
> > dependency. The relevant quote:
> >
> > ```
> > NOTE:
> > Due to the way that the exception table is built and needs to be ordered,
> > only use exceptions for code in the .text section.  Any other section
> > will cause the exception table to not be sorted correctly, and the
> > exceptions will fail.
> >
> > Things changed when 64-bit support was added to x86 Linux. Rather than
> > double the size of the exception table by expanding the two entries
> > from 32-bits to 64 bits, a clever trick was used to store addresses
> > as relative offsets from the table itself. The assembly code changed
> > from::
> >
> >     .long 1b,3b
> >   to:
> >           .long (from) - .
> >           .long (to) - .
> >
> > and the C-code that uses these values converts back to absolute addresses
> > like this::
> >
> >         ex_insn_addr(const struct exception_table_entry *x)
> >         {
> >                 return (unsigned long)&x->insn + x->insn;
> >         }
> > ```
> >
> > Since the addresses stored in the __ex_table are RELATIVE offsets and
> > not ABSOLUTE addresses, ordering the fixup anywhere that's not
> > immediately preceding .text causes the relative offset of the faulting
> > instruction to be wrong, causing the wrong (or no) address of the fixup
> > handler to looked up in __ex_table.
>
> This explanation makes no sense.
>
> The above is valid only when ARCH_HAS_RELATIVE_EXTABLE is defined. On
> ARM32 it is not, nor would it make sense to be.

Hmm...I thought that was the smoking gun. From the description in
Documentation, I thought they meant that exception table entry lookup
was changed to be homogeneous for 32b AND 64b arch's, but as you point
out they're not.  Now with the reference to ARCH_HAS_RELATIVE_EXTABLE,
I know to look through:
include/asm-generic/extable.h
include/linux/extable.h
lib/extable.c
kernel/extable.c
arch/arm/mm/extable.c
arch/arm/mm/fault.c (__do_kernel_fault() calls fixup_exception(),
which is of interest).

Looks like the exception table is sorted by address of faulting
instruction, then binary searched when an exception occurs.  Seems the
exception table is like an array of pairs of addresses (address of
faulting instruction from the get_user() call, address of fixup
handler) (when !ARCH_HAS_RELATIVE_EXTABLE), IIUC.

Reviewing the logs from the bugreport
(https://bugs.chromium.org/p/chromium/issues/detail?id=1020633#c44)
indeed the error string looks like the error message from
__do_kernel_fault() in arch/arm/mm/fault.c where a call to
fixup_exceptions() in arch/arm/mm/extable returned 1 because the call
to search_exception_tables() in kernel/extable.c returned NULL.

So I was right that `no address of the fixup handler to (be) looked up
in __ex_table`, but not quite right about *why* it fails to be looked
up.

search_exception_tables() in kernel/extable.c calls 3 functions:
1. search_kernel_exception_table()
2. search_module_extables()
3. search_bpf_extables()

So the next question is which one of the above should have found the
exception table entry, and why did it not when LLD placed the orphaned
.fixup section BEFORE .text?  All three of the above do some
processing on the address but in the end all call search_extable().

I really don't think kernel modules are involved.

Since we're observing the fault via a call to seccomp(), which IIUC
takes a BPF program when setting a filter (SECCOMP_SET_MODE_FILTER),
I'm curious to look into search_bpf_extables() first.  Maybe
constructing a BPF program involves insertion of special exception
handler?  Looks like bpf programs are stored in an rb_tree called
bpf_tree.  They have an auxiliary field that contains a pointer to an
exception table entry.  "Auxiliary" makes it sounds optional, and the
only assignment I can find to this field is in
arch/x86/net/bpf_jit_comp.c, so I doubt it's relevant for arm.  It
also just looks like it's zero initialized (bpf_prog_alloc_no_stats()
in kernel/bpf/core.c) for arch generic code.

That leaves just search_kernel_exception_table().  I wonder if it
fails because we put garbage entries in, or sorted it improperly?

Oh, and messing around with grep, it looks like entries to the
exception table can be sorted at build time rather than boot time via
CONFIG_BUILDTIME_EXTABLE_SORT?

I don't see the pr_notice from sort_main_extable() (kernel/extable.c
called from start_kernel() in init/main.c) in the bugreports:
https://bugs.chromium.org/p/chromium/issues/attachmentText?aid=421842
https://github.com/ClangBuiltLinux/linux/issues/282
(But IIRC, the log level may not be set to display these).

CONFIG_BUILDTIME_EXTABLE_SORT is selected by arch/arm/Kconfig if
CONFIG_MMU, which I highly suspect is already selected for the above
two reports. (Would an arm32 based chromebook not have an MMU? I doubt
it.)

So there may be an ordering dependency in scripts/sortextable.{c|h}?
Neither mention `fixup`.

Will continue debugging more tomorrow or later this week, but please
stop me if any of the above is also incorrect.  Some ideas for further
experiments:
- scripts/check_extable.sh sounds like some kind of validator.
Manoj/Nathan, I wonder if you linked the problematic kernel with LLD
than ran `./scripts/check_extable.sh vmlinux` if it would warn? Dunno
about all those command line flags though.
- if we apply a similar diff to the patch I posted, but force .fixup
to be before .text for BFD (as LLD is placing the orphaned section
currently), relinked with BFD and could reproduce the issue, that
seems like proof about the implicit section ordering.
```
diff --git a/arch/arm/kernel/vmlinux.lds.S b/arch/arm/kernel/vmlinux.lds.S
index 319ccb10846a..adfb5297f359 100644
--- a/arch/arm/kernel/vmlinux.lds.S
+++ b/arch/arm/kernel/vmlinux.lds.S
@@ -58,6 +58,7 @@ SECTIONS
 #ifdef CONFIG_ARM_MPU
        . = ALIGN(PMSAv8_MINALIGN);
 #endif
+       .fixup : { *(.fixup) }
        .text : {                       /* Real text segment            */
                _stext = .;             /* Text and read-only data      */
                ARM_TEXT
```

-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
