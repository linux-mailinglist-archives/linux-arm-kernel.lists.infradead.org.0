Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D0F18BF19
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 19:10:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qb2bTPHlbjHLYdzWCvWeVzSHdiw01oHddS+XZXIPJaA=; b=Qh/8sAHAdDG/vb
	Xiow7z8iHYv3bkkIDQxZIXCYiGypUlyLdBm8/8hEFTWJETyZ+3a/ZGjBfpSxFcjPDRZraT357AN7T
	0LsjjZdTtLAQSS/9EWlHZ7lf6d+g9DsoITHCn+j9qyF+QpHUAvw/aiB62AOl8EK1lQwk1MENZUpKA
	TKC0XGsTxnhgA58NIK25Z3BJEHxP/3Bk/L5uvqi7xPgfQf9zvSguVMZOkwhArRDqxXhYA/4tvhINP
	fygyvVM63AsnEIRXp5/Fp+bbeglaq7LVuIs1/BfjyOTI5RKItk0ycMF1+TpAPJLlnFYwcD6z10Kv+
	Ir0N+Ozx4qAzqpuiDuew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEzcd-000382-4P; Thu, 19 Mar 2020 18:10:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEzcT-00031z-Rb
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 18:10:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A1FC730E;
 Thu, 19 Mar 2020 11:10:10 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5418C3F305;
 Thu, 19 Mar 2020 11:10:07 -0700 (PDT)
Date: Thu, 19 Mar 2020 18:10:04 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v4 18/26] arm64: vdso32: Replace TASK_SIZE_32 check in
 vgettimeofday
Message-ID: <20200319181004.GA29214@mbp>
References: <20200317122220.30393-1-vincenzo.frascino@arm.com>
 <20200317122220.30393-19-vincenzo.frascino@arm.com>
 <20200317143834.GC632169@arrakis.emea.arm.com>
 <f03a9493-c8c2-e981-f560-b2f437a208e4@arm.com>
 <20200317155031.GD632169@arrakis.emea.arm.com>
 <83aaf9e1-0a8f-4908-577a-23766541b2ba@arm.com>
 <20200317174806.GE632169@arrakis.emea.arm.com>
 <93cfe94a-c2a3-1025-bc9c-e7c3fd891100@arm.com>
 <20200318183603.GF94111@arrakis.emea.arm.com>
 <1bc25a53-7a59-0f60-ecf2-a3cace46b823@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1bc25a53-7a59-0f60-ecf2-a3cace46b823@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_111013_989155_1E055FC9 
X-CRM114-Status: GOOD (  29.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Dmitry Safonov <0x7f454c46@gmail.com>,
 linux-mips@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, clang-built-linux@googlegroups.com,
 Ingo Molnar <mingo@redhat.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Will Deacon <will.deacon@arm.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org, Andrei Vagin <avagin@openvz.org>,
 Stephen Boyd <sboyd@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vincenzo,

On Thu, Mar 19, 2020 at 12:38:42PM +0000, Vincenzo Frascino wrote:
> On 3/18/20 6:36 PM, Catalin Marinas wrote:
> > On Wed, Mar 18, 2020 at 04:14:26PM +0000, Vincenzo Frascino wrote:
> >> On 3/17/20 5:48 PM, Catalin Marinas wrote:
> >>> So clock_gettime() on arm32 always falls back to the syscall?
> >>
> >> This seems not what you asked, and I think I answered accordingly. Anyway, in
> >> the case of arm32 the error code path is handled via syscall fallback.
> >>
> >> Look at the code below as an example (I am using getres because I know this
> >> email will be already too long, and I do not want to add pointless code, but the
> >> concept is the same for gettime and the others):
> >>
> >> static __maybe_unused
> >> int __cvdso_clock_getres(clockid_t clock, struct __kernel_timespec *res)
> >> {
> >> 	int ret = __cvdso_clock_getres_common(clock, res);
> >>
> >> 	if (unlikely(ret))
> >> 		return clock_getres_fallback(clock, res);
> >> 	return 0;
> >> }
> >>
> >> When the return code of the "vdso" internal function returns an error the system
> >> call is triggered.
> > 
> > But when __cvdso_clock_getres_common() does *not* return an error, it
> > means that it handled the clock_getres() call without a fallback to the
> > syscall. I assume this is possible on arm32. When the clock_getres() is
> > handled directly (not as a syscall), why doesn't arm32 need the same
> > (res >= TASK_SIZE) check?
> 
> Ok, I see what you mean.

I'm not sure.

> It does not need to differ when __cvdso_clock_getres_common() does *not* return
> an error, we can move the checks in the fallback and leave the vdso code the
> same. The reason why I put the checks at the beginning of vdso code is because
> since I know such a condition it is going to fail I prefer to bailout
> immediately when it is detected instead of going through a bus error and a
> syscall before I can bailout.

I don't dispute your choice of choosing to bail out early, that's fine
by me. What I'm asking above, and you haven't answered, is why we don't
need exactly the same check on arm32. I.e.:

diff --git a/arch/arm/vdso/vgettimeofday.c b/arch/arm/vdso/vgettimeofday.c
index 1976c6f325a4..17ee5d211228 100644
--- a/arch/arm/vdso/vgettimeofday.c
+++ b/arch/arm/vdso/vgettimeofday.c
@@ -28,6 +28,9 @@ int __vdso_gettimeofday(struct __kernel_old_timeval *tv,
 int __vdso_clock_getres(clockid_t clock_id,
 			struct old_timespec32 *res)
 {
+	if ((u32)res >= TASK_SIZE)
+		return -EFAULT;
+
 	return __cvdso_clock_getres_time32(clock_id, res);
 }
 

(where arch/arm means arm32 ;)).

If the arm32 vdsotest passes, I'd like to know why.

> It is mainly a design choice based on what I explained above but I am open to
> suggestions if you have a better way to proceed.

I suggest just drop the TASK_SIZE_32 test altogether in this series to
get it merged for 5.7-rc1. We'll fix the ABI issues in -rc2/-rc3 once
you confirm that the test fully passes on arm32 when it doesn't fall
back to the syscall handling and we understood why.

> > Furthermore, my assumption is that __cvdso_clock_getres_common() should
> > handle this case already and we don't need it in the arch vdso code.
> > 
> 
> This is not the point I was trying to make, what I was trying to analyze here
> was the check compared to why the test verifies it, not the correctness of the
> check itself.

You should implement it based on what the man page defines, not some
specific test. Tests are rarely exhaustive (unless you do formal
modelling).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
