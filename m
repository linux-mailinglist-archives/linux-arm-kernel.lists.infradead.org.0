Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 338B1186909
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 11:29:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ls3dnNC8i/8g5w7ZTQ/NGuW7AtHNRzD6M9woGHPReM=; b=F5FvoMxOWSQG74
	gtM1kgMoTqwiVfiB9vUwmeejTO42lpPRPSW/WzwSor9uvEF4w4XwhXmSM7AGYBr9GmzsJ64hFi5IC
	Pr2I00a8S0973Ku0PRm8Nq4cduZHPvooaFimi5CoMnJ/+DMAzm9g7tBGYdn9O3NvcWNZgOTrwcz/f
	hCogKz+cqtnSC9kF5HX+mXaAKIbLpYRiXd3JH/Qo3tG85O8M0o7thP83mzXWxs+G72VVu4Q20CQqx
	rLuLfeh8z++Mk1/fUfft+JhNkuzBJBJ0DEZpwTDFVzZEOH8u9tVxwPnEkOfIjQfVedPBOG69KzAEr
	/nkzSqihyjgcbOD9zeCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDmzf-0006CS-9D; Mon, 16 Mar 2020 10:29:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDmzM-00064c-BX
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 10:28:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 82B61FEC;
 Mon, 16 Mar 2020 03:28:51 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8D1143F85E;
 Mon, 16 Mar 2020 03:28:48 -0700 (PDT)
Date: Mon, 16 Mar 2020 10:28:46 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v3 21/26] arm64: Introduce asm/vdso/arch_timer.h
Message-ID: <20200316102845.GB5746@lakrids.cambridge.arm.com>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
 <20200313154345.56760-22-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200313154345.56760-22-vincenzo.frascino@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_032852_436632_BB065465 
X-CRM114-Status: GOOD (  25.29  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>, linux-mips@vger.kernel.org,
 Will Deacon <will@kernel.org>, linux-arch@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, x86@kernel.org,
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

On Fri, Mar 13, 2020 at 03:43:40PM +0000, Vincenzo Frascino wrote:
> The vDSO library should only include the necessary headers required for
> a userspace library (UAPI and a minimal set of kernel headers). To make
> this possible it is necessary to isolate from the kernel headers the
> common parts that are strictly necessary to build the library.
> 
> Introduce asm/vdso/arch_timer.h to contain all the arm64 specific
> code. This allows to replace the second isb() in __arch_get_hw_counter()
> with a fake dependent stack read of the counter which improves the vdso
> library peformances of ~4.5%. Below the results of vdsotest [1] ran for
> 100 iterations.
> 
> Before the patch:
> =================
> clock-gettime-monotonic: syscall: 771 nsec/call
> clock-gettime-monotonic:    libc: 130 nsec/call
> clock-gettime-monotonic:    vdso: 111 nsec/call
> ...
> clock-gettime-realtime: syscall: 762 nsec/call
> clock-gettime-realtime:    libc: 130 nsec/call
> clock-gettime-realtime:    vdso: 111 nsec/call
> 
> After the patch:
> ================
> clock-gettime-monotonic: syscall: 792 nsec/call
> clock-gettime-monotonic:    libc: 124 nsec/call
> clock-gettime-monotonic:    vdso: 106 nsec/call
> ...
> clock-gettime-realtime: syscall: 776 nsec/call
> clock-gettime-realtime:    libc: 124 nsec/call
> clock-gettime-realtime:    vdso: 106 nsec/call
> 
> [1] https://github.com/nathanlynch/vdsotest
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Marc Zyngier <maz@kernel.org>
> Cc: Mark Rutland <Mark.Rutland@arm.com>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> ---
>  arch/arm64/include/asm/arch_timer.h        | 29 ++++---------------
>  arch/arm64/include/asm/vdso/arch_timer.h   | 33 ++++++++++++++++++++++
>  arch/arm64/include/asm/vdso/gettimeofday.h |  7 +++--
>  3 files changed, 42 insertions(+), 27 deletions(-)
>  create mode 100644 arch/arm64/include/asm/vdso/arch_timer.h
> 
> diff --git a/arch/arm64/include/asm/arch_timer.h b/arch/arm64/include/asm/arch_timer.h
> index 7ae54d7d333a..7f22cd00ad45 100644
> --- a/arch/arm64/include/asm/arch_timer.h
> +++ b/arch/arm64/include/asm/arch_timer.h
> @@ -164,24 +164,7 @@ static inline void arch_timer_set_cntkctl(u32 cntkctl)
>  	isb();
>  }
>  
> -/*
> - * Ensure that reads of the counter are treated the same as memory reads
> - * for the purposes of ordering by subsequent memory barriers.
> - *
> - * This insanity brought to you by speculative system register reads,
> - * out-of-order memory accesses, sequence locks and Thomas Gleixner.
> - *
> - * http://lists.infradead.org/pipermail/linux-arm-kernel/2019-February/631195.html
> - */
> -#define arch_counter_enforce_ordering(val) do {				\
> -	u64 tmp, _val = (val);						\
> -									\
> -	asm volatile(							\
> -	"	eor	%0, %1, %1\n"					\
> -	"	add	%0, sp, %0\n"					\
> -	"	ldr	xzr, [%0]"					\
> -	: "=r" (tmp) : "r" (_val));					\
> -} while (0)
> +#include <asm/vdso/arch_timer.h>
>  
>  static __always_inline u64 __arch_counter_get_cntpct_stable(void)
>  {
> @@ -189,7 +172,7 @@ static __always_inline u64 __arch_counter_get_cntpct_stable(void)
>  
>  	isb();
>  	cnt = arch_timer_reg_read_stable(cntpct_el0);
> -	arch_counter_enforce_ordering(cnt);
> +	cnt = arch_counter_enforce_ordering(cnt);
>  	return cnt;

Why have you changed the structure of arch_counter_enforce_ordering() to
return a value? The commit message has no rationale for that.

If there is a reason to change that, I'd prefer the driver change as one
patch, before moving the definition.

[...]

> +/*
> + * Ensure that reads of the counter are treated the same as memory reads
> + * for the purposes of ordering by subsequent memory barriers.
> + *
> + * This insanity brought to you by speculative system register reads,
> + * out-of-order memory accesses, sequence locks and Thomas Gleixner.
> + *
> + * http://lists.infradead.org/pipermail/linux-arm-kernel/2019-February/631195.html
> + *
> + */
> +static u64 arch_counter_enforce_ordering(u64 val)
> +{
> +	u64 tmp, _val = (val);
> +
> +	asm volatile(
> +	"	eor	%0, %1, %1\n"
> +	"	add	%0, sp, %0\n"
> +	"	ldr	xzr, [%0]"
> +	: "=r" (tmp) : "r" (_val));
> +
> +	return _val;
> +}

This change has no functional effect. Since `_val` is only passed in as
an input parameter, the compiler can assume the assembly has no effect
on it.

As above, what is the rationale for changing this?

> @@ -82,10 +83,10 @@ static __always_inline u64 __arch_get_hw_counter(s32 clock_mode)
>  	isb();
>  	asm volatile("mrs %0, cntvct_el0" : "=r" (res) :: "memory");
>  	/*
> -	 * This isb() is required to prevent that the seq lock is
> -	 * speculated.#
> +	 * arch_counter_enforce_ordering() is required to prevent that
> +	 * the seq lock is speculated.
>  	 */
> -	isb();
> +	res = arch_counter_enforce_ordering(res);

Can we delete the comment entirely? We don't bother in <asm/arch_timer.h>.

Even better, can we factor out __arch_counter_get_cntvct(), and use
that?

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
