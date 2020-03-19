Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3150E18BF6D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 19:33:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/MIpa5e1JW0vIIO/vT5a5UVgI6vbZSvWqTnk7kolddQ=; b=pPyPgdkvnY/RwW
	pfyQuB0+dGKafoLR4GEJU7NAqgbLDdSz00YtRQepnPf+/Zj+3x8ELlqkct/t0kqCVbBbYmoohjIbP
	A47lWDGvQY4opGDFhGtQOgsu+wUO556euZWyV5QT7apVuTroFkUnqwSFUGvy02J4yhADcZYi8qPtx
	7A7CnxBZ9hEZzbInCapKq7/WLAMR4AS7WrthAfqFzgb2AwHhEiPIctQtUnYLX0WkjLcHazD3hrgAQ
	sTwStGIX8wo/AD33nCSMgvtmBX9WCtqT56/0F4URxmVnToCodGmlOPb8d2Z1wQoW/K8jLAyukbqil
	NVJDB+ovy9qRaLuLExfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEzyf-0004Ip-7g; Thu, 19 Mar 2020 18:33:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEzyV-0004IV-Q2
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 18:33:01 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8D66020787;
 Thu, 19 Mar 2020 18:32:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584642779;
 bh=vWC53xuIwbcvlZtUjvLtXkAFlLvKIaP8Wi2Wi740fjk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sEmiPLH8nJ/EiqLkDJJok7EXoTzk4Hbjcn4KHPM4rD/IjInM0z0WlYNhLDgYF8a0l
 gM3dC3mrKg9Z8S/KQ4+wB0n5zHHA0TB70S3WmQMS+bHF+SntJgBQxlIse07gKfzYDi
 nMTNWWhWpYOF1oZG7xFkI7Bi//YMYz15t7NPGEPA=
Date: Thu, 19 Mar 2020 18:32:52 +0000
From: Will Deacon <will@kernel.org>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v4 18/26] arm64: vdso32: Replace TASK_SIZE_32 check in
 vgettimeofday
Message-ID: <20200319183251.GA27141@willie-the-truck>
References: <20200317122220.30393-1-vincenzo.frascino@arm.com>
 <20200317122220.30393-19-vincenzo.frascino@arm.com>
 <20200317143834.GC632169@arrakis.emea.arm.com>
 <CALCETrVWPNaJMbYoXbnWsALXKrhHMaePOUvY0DmXpvte8Zz9Zw@mail.gmail.com>
 <78109f4e-c9c7-57b6-079b-c911b6090aa0@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <78109f4e-c9c7-57b6-079b-c911b6090aa0@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_113259_885490_7150977A 
X-CRM114-Status: GOOD (  23.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 linux-arch <linux-arch@vger.kernel.org>, Marc Zyngier <maz@kernel.org>,
 X86 ML <x86@kernel.org>, Russell King <linux@armlinux.org.uk>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Ingo Molnar <mingo@redhat.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Will Deacon <will.deacon@arm.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Andrei Vagin <avagin@openvz.org>, Stephen Boyd <sboyd@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 19, 2020 at 04:58:00PM +0000, Vincenzo Frascino wrote:
> On 3/19/20 3:49 PM, Andy Lutomirski wrote:
> > On Tue, Mar 17, 2020 at 7:38 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
> >>
> >> On Tue, Mar 17, 2020 at 12:22:12PM +0000, Vincenzo Frascino wrote:
> >>> diff --git a/arch/arm64/kernel/vdso32/vgettimeofday.c b/arch/arm64/kernel/vdso32/vgettimeofday.c
> >>> index 54fc1c2ce93f..91138077b073 100644
> >>> --- a/arch/arm64/kernel/vdso32/vgettimeofday.c
> >>> +++ b/arch/arm64/kernel/vdso32/vgettimeofday.c
> >>> @@ -8,11 +8,14 @@
> >>>  #include <linux/time.h>
> >>>  #include <linux/types.h>
> >>>
> >>> +#define VALID_CLOCK_ID(x) \
> >>> +     ((x >= 0) && (x < VDSO_BASES))
> >>> +
> >>>  int __vdso_clock_gettime(clockid_t clock,
> >>>                        struct old_timespec32 *ts)
> >>>  {
> >>>       /* The checks below are required for ABI consistency with arm */
> >>> -     if ((u32)ts >= TASK_SIZE_32)
> >>> +     if ((u32)ts > UINTPTR_MAX - sizeof(*ts) + 1)
> >>>               return -EFAULT;
> >>>
> >>>       return __cvdso_clock_gettime32(clock, ts);
> >>
> >> I probably miss something but I can't find the TASK_SIZE check in the
> >> arch/arm/vdso/vgettimeofday.c code. Is this done elsewhere?
> >>
> > 
> > Can you not just remove the TASK_SIZE_32 check entirely?  If you pass
> > a garbage address to the vDSO, you are quite likely to get SIGSEGV.
> > Why does this particular type of error need special handling?
> > 
> 
> In this particular case the system call and the vDSO library as it stands
> returns -EFAULT on all the architectures that support the vdso library except on
> arm64 compat. The reason why it does not return the correct error code, as I was
> discussing with Catalin, it is because arm64 uses USER_DS (addr_limit set
> happens in arch/arm64/kernel/entry.S), which is defined as (1 << VA_BITS), as
> access_ok() validation even on compat tasks and since arm64 supports up to 52bit
> VA, this does not detect the end of the user address space for a 32 bit task.
> Hence when we fall back on the system call we get the wrong error code out of it.
> 
> According to me to have ABI consistency we need this check, but if we say that
> we can make an ABI exception in this case, I am fine with that either if it has
> enough consensus.
> 
> Please let me know your thoughts.

I don't agree with your reasoning -- letting the thing SEGV is perfectly
fine and we don't need to perform additional checking in userspace here.
If you treat the vDSO more as being part of libc then part of the kernel
then I think it makes perfect sense.

There are other system calls that will SEGV in libc if they are passed dodgy
pointers before the kernel has a chance to return -EFAULT.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
