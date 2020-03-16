Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88EE51868E5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 11:22:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+CWXGgvZgAFR6pL58OKJTyUzVAx1L1OhYbKo/I/fvxk=; b=j+6mycsQ7kWbJ5
	oJpOd2Kq90BGSKpXT6fm6mlnJvS3/8F90GgI+9qvnGFHlxBW4h/vtVGee7AppOJx00tBaqkQyiLfO
	/OQ9EMhU2iBW9TJr3vpbFMDTjemFB4tr3rziEG8IMDMK9Fsnalwk8zezCkyaPbTQ2jPpIoZFaXGup
	lGSQjKiGx5BhsJFGJVG8hhX7L4mdbBtJfK+CaRtjtSMEQ0VJ3yPJKDsJEYS/E5EslndPtgYBvCtRR
	CGkvVZzEb6FI3XHTONr/if0dXlhL7GJeWMPY+jOgmdSF4HbuWSprj9Ap4emqGsqciSVIwdQC9MiGI
	2XCBMXa00Z3UbRIyZrjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDmtM-0002eu-MP; Mon, 16 Mar 2020 10:22:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDmtE-0002dp-Jp
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 10:22:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D70DD1FB;
 Mon, 16 Mar 2020 03:22:27 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DF3333F534;
 Mon, 16 Mar 2020 03:22:24 -0700 (PDT)
Date: Mon, 16 Mar 2020 10:22:15 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v3 18/26] arm64: Introduce asm/vdso/processor.h
Message-ID: <20200316102214.GA5746@lakrids.cambridge.arm.com>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
 <20200313154345.56760-19-vincenzo.frascino@arm.com>
 <20200315182950.GB32205@mbp>
 <c2c0157a-107a-debf-100f-0d97781add7c@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c2c0157a-107a-debf-100f-0d97781add7c@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_032232_699603_B7CA8EAF 
X-CRM114-Status: GOOD (  16.63  )
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

On Mon, Mar 16, 2020 at 09:42:32AM +0000, Vincenzo Frascino wrote:
> On 3/15/20 6:30 PM, Catalin Marinas wrote:
> > On Fri, Mar 13, 2020 at 03:43:37PM +0000, Vincenzo Frascino wrote:
> >> --- /dev/null
> >> +++ b/arch/arm64/include/asm/vdso/processor.h
> >> @@ -0,0 +1,31 @@
> >> +/* SPDX-License-Identifier: GPL-2.0-only */
> >> +/*
> >> + * Copyright (C) 2020 ARM Ltd.
> >> + */
> >> +#ifndef __ASM_VDSO_PROCESSOR_H
> >> +#define __ASM_VDSO_PROCESSOR_H
> >> +
> >> +#ifndef __ASSEMBLY__
> >> +
> >> +#include <asm/page-def.h>
> >> +
> >> +#ifdef CONFIG_COMPAT
> >> +#if defined(CONFIG_ARM64_64K_PAGES) && defined(CONFIG_KUSER_HELPERS)
> >> +/*
> >> + * With CONFIG_ARM64_64K_PAGES enabled, the last page is occupied
> >> + * by the compat vectors page.
> >> + */
> >> +#define TASK_SIZE_32		UL(0x100000000)
> >> +#else
> >> +#define TASK_SIZE_32		(UL(0x100000000) - PAGE_SIZE)
> >> +#endif /* CONFIG_ARM64_64K_PAGES */
> >> +#endif /* CONFIG_COMPAT */
> > 
> > Just curious, what's TASK_SIZE_32 used for in the vDSO code? You don't
> > seem to move TASK_SIZE.
> > 
> 
> I tried to fine grain the headers as much as I could in order to avoid
> unneeded/unwanted inclusions:
>  * TASK_SIZE_32 is used to verify ABI consistency on vdso32 (please refer to
>    arch/arm64/kernel/vdso32/vgettimeofday.c).
>  * TASK_SIZE is not required by the vdso library hence it is not present in
>    these headers.

It would be worth noting the former point in the commit message, since
it can be surprising.

I also think it's worth keeping the definitions together if that's easy,
as it makes it easier to navigate the codebase, even if TASK_SIZE isn't
necessary for the VDSO itself.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
