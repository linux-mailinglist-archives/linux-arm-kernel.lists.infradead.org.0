Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BEE618A27F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 19:36:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=boxvqDF7qkW/n7DdiJuDTOVGJUXHaPsZ3Tn5p/QFwdU=; b=KmYtRmRHmAi2Po
	t4wwJOTELAN/oPUDUB9xsrocrmnPmcKzmYCl3wCi+t7J9lda7J7Z5FL0m+vyeksnOKmiZrib9HioW
	8Olkonxrf+o31AazoaGkLyRkmST8jnCV0eVkN+7FhMWijE2bCR5d2fVTgfbAeINWFPa9NKW3Hq/xT
	7aMdm/cg0OtaTpy3JUWHbvHqqWV/9+8axg6UAZzWwm1MhTPL7que4JINsqonMPmdGjqyG28EM8HSl
	M1zr8Le/taqFOVaN+gvT0RYb3m7QAkPiUzUctxrVBMH5kH7Ep2HmbzY4FNEQiabLer68KAgEgwotY
	Xke/MzbSIUBr1ZIVbdOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEdYR-0004YF-Tw; Wed, 18 Mar 2020 18:36:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEdY2-0004Oq-1p
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 18:36:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F2DA21FB;
 Wed, 18 Mar 2020 11:36:08 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 07E133F67D; Wed, 18 Mar 2020 11:36:05 -0700 (PDT)
Date: Wed, 18 Mar 2020 18:36:03 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v4 18/26] arm64: vdso32: Replace TASK_SIZE_32 check in
 vgettimeofday
Message-ID: <20200318183603.GF94111@arrakis.emea.arm.com>
References: <20200317122220.30393-1-vincenzo.frascino@arm.com>
 <20200317122220.30393-19-vincenzo.frascino@arm.com>
 <20200317143834.GC632169@arrakis.emea.arm.com>
 <f03a9493-c8c2-e981-f560-b2f437a208e4@arm.com>
 <20200317155031.GD632169@arrakis.emea.arm.com>
 <83aaf9e1-0a8f-4908-577a-23766541b2ba@arm.com>
 <20200317174806.GE632169@arrakis.emea.arm.com>
 <93cfe94a-c2a3-1025-bc9c-e7c3fd891100@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <93cfe94a-c2a3-1025-bc9c-e7c3fd891100@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_113610_182071_54891A3D 
X-CRM114-Status: GOOD (  43.36  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Wed, Mar 18, 2020 at 04:14:26PM +0000, Vincenzo Frascino wrote:
> On 3/17/20 5:48 PM, Catalin Marinas wrote:
> > On Tue, Mar 17, 2020 at 04:40:48PM +0000, Vincenzo Frascino wrote:
> >> On 3/17/20 3:50 PM, Catalin Marinas wrote:
> >>> On Tue, Mar 17, 2020 at 03:04:01PM +0000, Vincenzo Frascino wrote:
> >>>> On 3/17/20 2:38 PM, Catalin Marinas wrote:
> >>>>> On Tue, Mar 17, 2020 at 12:22:12PM +0000, Vincenzo Frascino wrote:
> >>>>
> >>>> Can TASK_SIZE > UINTPTR_MAX on an arm64 system?
> >>>
> >>> TASK_SIZE yes on arm64 but not TASK_SIZE_32. I was asking about the
> >>> arm32 check where TASK_SIZE < UINTPTR_MAX. How does the vdsotest return
> >>> -EFAULT on arm32? Which code path causes this in the user vdso code?
[...]
> > So clock_gettime() on arm32 always falls back to the syscall?
> 
> This seems not what you asked, and I think I answered accordingly. Anyway, in
> the case of arm32 the error code path is handled via syscall fallback.
> 
> Look at the code below as an example (I am using getres because I know this
> email will be already too long, and I do not want to add pointless code, but the
> concept is the same for gettime and the others):
> 
> static __maybe_unused
> int __cvdso_clock_getres(clockid_t clock, struct __kernel_timespec *res)
> {
> 	int ret = __cvdso_clock_getres_common(clock, res);
> 
> 	if (unlikely(ret))
> 		return clock_getres_fallback(clock, res);
> 	return 0;
> }
> 
> When the return code of the "vdso" internal function returns an error the system
> call is triggered.

But when __cvdso_clock_getres_common() does *not* return an error, it
means that it handled the clock_getres() call without a fallback to the
syscall. I assume this is possible on arm32. When the clock_getres() is
handled directly (not as a syscall), why doesn't arm32 need the same
(res >= TASK_SIZE) check?

> In general arm32 has been ported to the unified vDSO library hence it has a
> proper implementation on par with all the other architectures supported by the
> unified library.

And that's what I do not fully understand. When the call doesn't fall
back to a syscall, why does arm32 and arm64 compat need to differ in the
implementation? I may be missing something here.

> >>> My guess is that on arm32 it only fails with -EFAULT in the syscall
> >>> fallback path since a copy_to_user() would fail the access_ok() check.
> >>> Does it always take the fallback path if ts > TASK_SIZE?
> >>
> >> Correct, it goes via fallback. The return codes for these syscalls are specified
> >> by the ABI [1]. Then I agree with you the way on which arm32 achieves it should
> >> be via access_ok() check.
> > 
> > "it should be" or "it is" on arm32?
[...]
> SYSCALL_DEFINE2(clock_gettime, const clockid_t, which_clock,
> 		struct __kernel_timespec __user *, tp)
[...]
> This is the syscall on which we fallback when the "vdso" internal function
> returns an error. The behavior of the vdso has to be exactly the same of the
> syscall otherwise we end up in an ABI breakage.

I agree. I just don't understand why on arm32 the vdso code doesn't need
to check for tp >= TASK_SIZE while the arm64 compat one does when it
does *not* fall back to a syscall. I understand the syscall fallback
case, that's caused by how we handle access_ok(), but this doesn't
explain the vdso-only case.

> >>>>> This last check needs an explanation. If the clock_id is invalid but res
> >>>>> is not NULL, we allow it. I don't see where the compatibility issue is,
> >>>>> arm32 doesn't have such check.
> >>>>
> >>>> The case that you are describing has to return -EPERM per ABI spec. This case
> >>>> has to return -EINVAL.
> >>>>
> >>>> The first case is taken care from the generic code. But if we don't do this
> >>>> check before on arm64 compat we end up returning the wrong error code.
> >>>
> >>> I guess I have the same question as above. Where does the arm32 code
> >>> return -EINVAL for that case? Did it work correctly before you removed
> >>> the TASK_SIZE_32 check?
> >>
> >> I repeated the test and seems that it was failing even before I removed
> >> TASK_SIZE_32. For reasons I can't explain I did not catch it before.
> >>
> >> The getres syscall should return -EINVAL in the cases specified in [1].
> > 
> > It states 'clk_id specified is not supported on this system'. Fair
> > enough but it doesn't say that it returns -EINVAL only if res == NULL.
> 
> Actually it does, the description of getres() starts with:
> 
> 'The function clock_getres() finds the resolution (precision) of the
> specified clock clk_id, and, if res is *non-NULL*, stores it in the
> struct timespec pointed to by res.'
> 
> Please refer to the system call below of which we mimic the behavior in the vdso
> (kernel/time/posix-timers.c):
> 
> SYSCALL_DEFINE2(clock_getres_time32, clockid_t, which_clock,
> 		struct old_timespec32 __user *, tp)
> {
> 	const struct k_clock *kc = clockid_to_kclock(which_clock);
> 	struct timespec64 ts;
> 	int err;
> 
> 	if (!kc)
> 		return -EINVAL;
> 
> 	err = kc->clock_getres(which_clock, &ts);
> 	if (!err && tp && put_old_timespec32(&ts, tp))
> 		return -EFAULT;
> 
> 	return err;
> }
> 
> If the clock is bogus and res == NULL we are supposed to return -EINVAL and not
> -EFAULT or something else.

If the clock is bogus, the above returns 'err' irrespective of the value
of 'tp'. I presume 'err' is -EINVAL in this case. But there is no
condition that tp == NULL above.

What the above tries to achieve is that if there is no error (err == 0)
and tp != NULL, try to write the timespec to the user tp pointer. If
put_old_timespec32() fails, that's when we return -EFAULT.

> This is what the test is trying to verify. If the check below is not
> in place on arm64 compat, I get error report from the test suite.
> 	if (!VALID_CLOCK_ID(clock_id) && res == NULL)
> 		return -EINVAL;

I really don't get where you deduced that you need to check for res ==
NULL. The above should be:

	if (!VALID_CLOCK_ID(clock_id))
		return -EINVAL;

Furthermore, my assumption is that __cvdso_clock_getres_common() should
handle this case already and we don't need it in the arch vdso code.

> > You also don't explain why __cvdso_clock_getres_time32() doesn't already
> > detect an invalid clk_id on arm64 compat (but does it on arm32).
> > 
> 
> Thanks for asking to me this question, if I would not have spent the day trying
> to explain it, I would not have found a bug in the getres() fallback:
> 
> diff --git a/arch/arm64/include/asm/unistd.h b/arch/arm64/include/asm/unistd.h
> index 1dd22da1c3a9..803039d504de 100644
> --- a/arch/arm64/include/asm/unistd.h
> +++ b/arch/arm64/include/asm/unistd.h
> @@ -25,8 +25,8 @@
>  #define __NR_compat_gettimeofday       78
>  #define __NR_compat_sigreturn          119
>  #define __NR_compat_rt_sigreturn       173
> -#define __NR_compat_clock_getres       247
>  #define __NR_compat_clock_gettime      263
> +#define __NR_compat_clock_getres       264
>  #define __NR_compat_clock_gettime64    403
>  #define __NR_compat_clock_getres_time64        406
> 
> In particular compat getres is mis-numbered and that is what causes the issue.
> 
> I am going to add a patch to my v5 that addresses the issue (or probably a
> separate one and cc stable since it fixes a bug) and in this patch I will remove
> the check on VALID_CLOCK_ID.

Please send this as a separate patch that should be merged as a fix, cc
stable.

> I hope that this long email helps you to have a clearer picture of what is going
> on. Please let me know if there is still something missing.

Not entirely. Sorry.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
