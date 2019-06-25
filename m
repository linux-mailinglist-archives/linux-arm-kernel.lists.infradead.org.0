Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C785537C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 17:34:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rpjGsnJF653v9QJfspyTQBfcE0mBvLgnR0cQxFgCKQk=; b=ffQULEyDyqHPcW
	7sqkk9zMv27xDzKLzAZXbbyhyFGj/EOK7MaqZGnME+f8a1t6HZyn2GU34FAwyJs+6IvaGNC3XiGHL
	9GL6qSL6nRXvqgjwToryyRB7ZhR1TnhBL/aX0HZ02WgtAZidrLTKuoQm1ENg/H+fBvp6JzxcGeMAD
	bF3oPFZVBuLxmtVyf/oHkHQHbKpBP7VNIfjMmE3boOwiWyhhei8m51inpv1KSdqpjcZjrCb+/TG6+
	K0iYw0CsxV6rr6YR5GckSjl5APVL272VBeEE3JrDeJOgGrqBd9lJqRlBpP9fyNK0H3SuzEO4qGacI
	TkfjHoK9uy0/2UOuBKBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfnSI-0000YH-OY; Tue, 25 Jun 2019 15:33:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfnS6-0000XQ-DM
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 15:33:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2AF882B;
 Tue, 25 Jun 2019 08:33:42 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 738EB3F718;
 Tue, 25 Jun 2019 08:33:39 -0700 (PDT)
Date: Tue, 25 Jun 2019 16:33:37 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v7 04/25] arm64: Substitute gettimeofday with C
 implementation
Message-ID: <20190625153336.GZ2790@e103592.cambridge.arm.com>
References: <20190621095252.32307-1-vincenzo.frascino@arm.com>
 <20190621095252.32307-5-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190621095252.32307-5-vincenzo.frascino@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_083346_547154_0402D27A 
X-CRM114-Status: GOOD (  18.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-arch@vger.kernel.org, Shijith Thotton <sthotton@marvell.com>,
 Peter Collingbourne <pcc@google.com>, Arnd Bergmann <arnd@arndb.de>,
 Huw Davies <huw@codeweavers.com>, Andre Przywara <andre.przywara@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 linux-mips@vger.kernel.org, Paul Burton <paul.burton@mips.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kselftest@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <linux@armlinux.org.uk>, Dmitry Safonov <0x7f454c46@gmail.com>,
 Mark Salyzyn <salyzyn@android.com>, Shuah Khan <shuah@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 10:52:31AM +0100, Vincenzo Frascino wrote:
> To take advantage of the commonly defined vdso interface for
> gettimeofday the architectural code requires an adaptation.
> 
> Re-implement the gettimeofday vdso in C in order to use lib/vdso.
> 
> With the new implementation arm64 gains support for CLOCK_BOOTTIME
> and CLOCK_TAI.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> Tested-by: Shijith Thotton <sthotton@marvell.com>
> Tested-by: Andre Przywara <andre.przywara@arm.com>

[...]

> diff --git a/arch/arm64/include/asm/vdso/gettimeofday.h b/arch/arm64/include/asm/vdso/gettimeofday.h
> new file mode 100644
> index 000000000000..bc3cb6738051
> --- /dev/null
> +++ b/arch/arm64/include/asm/vdso/gettimeofday.h
> @@ -0,0 +1,86 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (C) 2018 ARM Limited
> + */
> +#ifndef __ASM_VDSO_GETTIMEOFDAY_H
> +#define __ASM_VDSO_GETTIMEOFDAY_H
> +
> +#ifndef __ASSEMBLY__
> +
> +#include <asm/unistd.h>
> +#include <uapi/linux/time.h>
> +
> +#define VDSO_HAS_CLOCK_GETRES		1
> +
> +static __always_inline int gettimeofday_fallback(
> +					struct __kernel_old_timeval *_tv,
> +					struct timezone *_tz)

Out of interest, does this need to be __always_inline?

> +{
> +	register struct timezone *tz asm("x1") = _tz;
> +	register struct __kernel_old_timeval *tv asm("x0") = _tv;
> +	register long ret asm ("x0");
> +	register long nr asm("x8") = __NR_gettimeofday;
> +
> +	asm volatile(
> +	"       svc #0\n"

Can inlining of this function result in non-trivial expressions being
substituted for _tz or _tv?

A function call can clobber register asm vars that are assigned to the
caller-save registers or that the PCS uses for function arguments, and
the situations where this can happen are poorly defined AFAICT.  There's
also no reliable way to detect at build time whether the compiler has
done this, and no robust way to stop if happening.

(IMHO the compiler is wrong to do this, but it's been that way for ever,
and I think I saw GCC 9 show this behaviour recently when I was
investigating something related.)


To be safe, it's better to put this out of line, or remove the reg asm()
specifiers, mark x0-x18 and lr as clobbered here (so that the compiler
doesn't map arguments to them), and put movs in the asm to move things
into the right registers.  The syscall number can be passed with an "i"
constraint.  (And yes, this sucks.)

If the code this is inlined in is simple enough though, we can be fairly
confident of getting away with it.

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
