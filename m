Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66725188976
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 16:50:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RDdo4kBNdXRGMSCZOWRDRlFUspUiIeXVANVVMBIMiWQ=; b=uMxLKtLjytddig
	CgHomDzdLx1M9TX2D9UDTwyVafU4/Pj+nqGaF4n9ekLFrs0O3GkoKqEf6rh0wT5xZUwshTJ/87IEW
	/V6p8mV4Myund8jzpwg7ve9gbev/JOlM4SwjmOD1BG5/7FoLlisr17zL8sVIidcAjKwiu/ugj6vvs
	OVxvD9UmPOmOvvP40HxtLPtEd2tmoYtpWbWGzHkxe/mWNxuwEH3VYI7og4KJQiLXs01ZbReJJNzoL
	IEdaNOkK8oDZCuihgYcMAdIlFyEfa/FCWAejFk/X8IuIltbJ/Vq23fgG7gvEC/UnBHCqCDEyuEX2p
	+rvUKP6kvqAXFVelhkeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEEUQ-0001OJ-Cn; Tue, 17 Mar 2020 15:50:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEEUI-0001N6-Lb
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 15:50:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C3B86FEC;
 Tue, 17 Mar 2020 08:50:36 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 CECC83F7B4; Tue, 17 Mar 2020 08:50:33 -0700 (PDT)
Date: Tue, 17 Mar 2020 15:50:31 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v4 18/26] arm64: vdso32: Replace TASK_SIZE_32 check in
 vgettimeofday
Message-ID: <20200317155031.GD632169@arrakis.emea.arm.com>
References: <20200317122220.30393-1-vincenzo.frascino@arm.com>
 <20200317122220.30393-19-vincenzo.frascino@arm.com>
 <20200317143834.GC632169@arrakis.emea.arm.com>
 <f03a9493-c8c2-e981-f560-b2f437a208e4@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f03a9493-c8c2-e981-f560-b2f437a208e4@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_085038_794106_4DB653FA 
X-CRM114-Status: GOOD (  25.81  )
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

On Tue, Mar 17, 2020 at 03:04:01PM +0000, Vincenzo Frascino wrote:
> On 3/17/20 2:38 PM, Catalin Marinas wrote:
> > On Tue, Mar 17, 2020 at 12:22:12PM +0000, Vincenzo Frascino wrote:
> >> diff --git a/arch/arm64/kernel/vdso32/vgettimeofday.c b/arch/arm64/kernel/vdso32/vgettimeofday.c
> >> index 54fc1c2ce93f..91138077b073 100644
> >> --- a/arch/arm64/kernel/vdso32/vgettimeofday.c
> >> +++ b/arch/arm64/kernel/vdso32/vgettimeofday.c
> >> @@ -8,11 +8,14 @@
> >>  #include <linux/time.h>
> >>  #include <linux/types.h>
> >>  
> >> +#define VALID_CLOCK_ID(x) \
> >> +	((x >= 0) && (x < VDSO_BASES))
> >> +
> >>  int __vdso_clock_gettime(clockid_t clock,
> >>  			 struct old_timespec32 *ts)
> >>  {
> >>  	/* The checks below are required for ABI consistency with arm */
> >> -	if ((u32)ts >= TASK_SIZE_32)
> >> +	if ((u32)ts > UINTPTR_MAX - sizeof(*ts) + 1)
> >>  		return -EFAULT;
> >>  
> >>  	return __cvdso_clock_gettime32(clock, ts);
> > 
> > I probably miss something but I can't find the TASK_SIZE check in the
> > arch/arm/vdso/vgettimeofday.c code. Is this done elsewhere?
> 
> Can TASK_SIZE > UINTPTR_MAX on an arm64 system?

TASK_SIZE yes on arm64 but not TASK_SIZE_32. I was asking about the
arm32 check where TASK_SIZE < UINTPTR_MAX. How does the vdsotest return
-EFAULT on arm32? Which code path causes this in the user vdso code?

My guess is that on arm32 it only fails with -EFAULT in the syscall
fallback path since a copy_to_user() would fail the access_ok() check.
Does it always take the fallback path if ts > TASK_SIZE?

On arm64, while we have a similar access_ok() check, USER_DS is (1 <<
VA_BITS) even for compat tasks (52-bit maximum), so it doesn't detect
the end of the user address space for 32-bit tasks.

Is this an issue for other syscalls expecting EFAULT at UINTPTR_MAX and
instead getting a signal? The vdsotest seems to be the only one assuming
this. I don't have a simple solution here since USER_DS currently needs
to be a constant (used in entry.S).

I could as well argue that this is not a valid ABI test, no real-world
program relying on this behaviour ;).

> >> @@ -22,7 +25,7 @@ int __vdso_clock_gettime64(clockid_t clock,
> >>  			   struct __kernel_timespec *ts)
> >>  {
> >>  	/* The checks below are required for ABI consistency with arm */
> >> -	if ((u32)ts >= TASK_SIZE_32)
> >> +	if ((u32)ts > UINTPTR_MAX - sizeof(*ts) + 1)
> >>  		return -EFAULT;
> >>  
> >>  	return __cvdso_clock_gettime(clock, ts);
> >> @@ -38,9 +41,12 @@ int __vdso_clock_getres(clockid_t clock_id,
> >>  			struct old_timespec32 *res)
> >>  {
> >>  	/* The checks below are required for ABI consistency with arm */
> >> -	if ((u32)res >= TASK_SIZE_32)
> >> +	if ((u32)res > UINTPTR_MAX - sizeof(res) + 1)
> >>  		return -EFAULT;
> >>  
> >> +	if (!VALID_CLOCK_ID(clock_id) && res == NULL)
> >> +		return -EINVAL;
> > 
> > This last check needs an explanation. If the clock_id is invalid but res
> > is not NULL, we allow it. I don't see where the compatibility issue is,
> > arm32 doesn't have such check.
> 
> The case that you are describing has to return -EPERM per ABI spec. This case
> has to return -EINVAL.
> 
> The first case is taken care from the generic code. But if we don't do this
> check before on arm64 compat we end up returning the wrong error code.

I guess I have the same question as above. Where does the arm32 code
return -EINVAL for that case? Did it work correctly before you removed
the TASK_SIZE_32 check?

Sorry, just trying to figure out where the compatibility aspect is and
that we don't add some artificial checks only to satisfy a vdsotest case
that may or may not have relevance to any other user program.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
