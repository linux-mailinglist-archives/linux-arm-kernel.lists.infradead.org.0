Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ACED188C76
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 18:48:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rGHh6X0HUhy6HbfgDJuVAyExq4dMTuiS25A5/NQyZwU=; b=YSkrLN8V5lt58j
	HNxi6OlPqhshQf5kFoMnBaRcPpmHZO+k41MzkA7yNTU2v0iWc8CIdu+Jnqg3A+iCQC3qEWEYwyF+L
	ba/0/Zu6QZqxgRcoCoBvxBLInunf9TkKq0E4x6fOGKUZ3UnCYU+aozHjDXGcHuFn7j7lRpucXT6qx
	aQ4OZpu7aqGt//cPoAb6GT10fTVa2lgN4TEtFC8vnf/3ztDsavdbz2/c3TdcZc000vklPGEpaQeB7
	jkGzav5ad8qM55JR0jw9MGkIDkR3ZXKPyUR0LfV5RWc0UOLYUL2PX0Icfonbw5+lssxRwMDqfIMG3
	yF/SQczkvYgcYC/iNxoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEGKD-0007qm-I6; Tue, 17 Mar 2020 17:48:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEGK5-0007pr-3x
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 17:48:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D8A3A31B;
 Tue, 17 Mar 2020 10:48:11 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 E2EB63F67D; Tue, 17 Mar 2020 10:48:08 -0700 (PDT)
Date: Tue, 17 Mar 2020 17:48:06 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v4 18/26] arm64: vdso32: Replace TASK_SIZE_32 check in
 vgettimeofday
Message-ID: <20200317174806.GE632169@arrakis.emea.arm.com>
References: <20200317122220.30393-1-vincenzo.frascino@arm.com>
 <20200317122220.30393-19-vincenzo.frascino@arm.com>
 <20200317143834.GC632169@arrakis.emea.arm.com>
 <f03a9493-c8c2-e981-f560-b2f437a208e4@arm.com>
 <20200317155031.GD632169@arrakis.emea.arm.com>
 <83aaf9e1-0a8f-4908-577a-23766541b2ba@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <83aaf9e1-0a8f-4908-577a-23766541b2ba@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_104813_249701_D6C1FF75 
X-CRM114-Status: GOOD (  25.21  )
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

On Tue, Mar 17, 2020 at 04:40:48PM +0000, Vincenzo Frascino wrote:
> On 3/17/20 3:50 PM, Catalin Marinas wrote:
> > On Tue, Mar 17, 2020 at 03:04:01PM +0000, Vincenzo Frascino wrote:
> >> On 3/17/20 2:38 PM, Catalin Marinas wrote:
> >>> On Tue, Mar 17, 2020 at 12:22:12PM +0000, Vincenzo Frascino wrote:
> >>
> >> Can TASK_SIZE > UINTPTR_MAX on an arm64 system?
> > 
> > TASK_SIZE yes on arm64 but not TASK_SIZE_32. I was asking about the
> > arm32 check where TASK_SIZE < UINTPTR_MAX. How does the vdsotest return
> > -EFAULT on arm32? Which code path causes this in the user vdso code?
> 
> Sorry I got confused because you referred to arch/arm/vdso/vgettimeofday.c which
> is the arm64 implementation, not the compat one :)

You figured out (in your subsequent reply) that I was indeed talking
about arm32 ;).

> In the case of arm32 everything is handled via syscall fallback.

So clock_gettime() on arm32 always falls back to the syscall?

> > My guess is that on arm32 it only fails with -EFAULT in the syscall
> > fallback path since a copy_to_user() would fail the access_ok() check.
> > Does it always take the fallback path if ts > TASK_SIZE?
> 
> Correct, it goes via fallback. The return codes for these syscalls are specified
> by the ABI [1]. Then I agree with you the way on which arm32 achieves it should
> be via access_ok() check.

"it should be" or "it is" on arm32?

If, on arm32, clock_gettime() is (would be?) handled in the vdso
entirely, who checks for the pointer outside the accessible address
space (as per the clock_gettime man page)?

I'm fine with such check as long as it is consistent across arm32 and
arm64 compat. Or even on arm64 native between syscall fallback and vdso
execution. I haven't figured out yet whether this is the case.

> >>> This last check needs an explanation. If the clock_id is invalid but res
> >>> is not NULL, we allow it. I don't see where the compatibility issue is,
> >>> arm32 doesn't have such check.
> >>
> >> The case that you are describing has to return -EPERM per ABI spec. This case
> >> has to return -EINVAL.
> >>
> >> The first case is taken care from the generic code. But if we don't do this
> >> check before on arm64 compat we end up returning the wrong error code.
> > 
> > I guess I have the same question as above. Where does the arm32 code
> > return -EINVAL for that case? Did it work correctly before you removed
> > the TASK_SIZE_32 check?
> 
> I repeated the test and seems that it was failing even before I removed
> TASK_SIZE_32. For reasons I can't explain I did not catch it before.
> 
> The getres syscall should return -EINVAL in the cases specified in [1].

It states 'clk_id specified is not supported on this system'. Fair
enough but it doesn't say that it returns -EINVAL only if res == NULL.
You also don't explain why __cvdso_clock_getres_time32() doesn't already
detect an invalid clk_id on arm64 compat (but does it on arm32).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
