Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F8A186819
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 10:42:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WAKtqzEH9U+en2sK5uuWZZmaN8VWNrph+PRPQ7pZxJU=; b=KfiMdGN/RLqjtC
	Gsp8GbryH/8S5FCcmeZ09WQ0R8Bkllmk4OqkLJFhS4NtSzxCKJZJbadzlTAhTdY+cwQpfJUTcMCfs
	HnCnu1E22MNcME7SxjSMdwfsVrduHeDyHGsei3ppWZLVwzeUZRs4QgdSfKbI3CwGuTIgx9BXjrpwF
	JN859zvqJl9JtRxAoIG4yYoyEuhP0AGGg86e9s9cBrrddlxp3uDgzkXgDhN2e9BdivvX3CvH/F6mZ
	pqxElR3QL2Ds1dnnpJzCRYwBxFgnvxk2ossFGJsEvW0Rziy6Ds3UKA762NlJkcL7b0cQz0osw1JEP
	VnTdGr1gv38dgtDg0whg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDmGP-0001Lp-EL; Mon, 16 Mar 2020 09:42:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDmGF-0001KO-AO
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 09:42:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0A1361FB;
 Mon, 16 Mar 2020 02:42:10 -0700 (PDT)
Received: from [10.37.9.38] (unknown [10.37.9.38])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E587B3F534;
 Mon, 16 Mar 2020 02:42:04 -0700 (PDT)
Subject: Re: [PATCH v3 18/26] arm64: Introduce asm/vdso/processor.h
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
 <20200313154345.56760-19-vincenzo.frascino@arm.com>
 <20200315182950.GB32205@mbp>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <c2c0157a-107a-debf-100f-0d97781add7c@arm.com>
Date: Mon, 16 Mar 2020 09:42:32 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200315182950.GB32205@mbp>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_024215_404101_7FCB1772 
X-CRM114-Status: GOOD (  15.11  )
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

Hi Catalin,

you should not really work on Sunday ;-) Joking, thanks for reviewing my patches.

On 3/15/20 6:30 PM, Catalin Marinas wrote:
> On Fri, Mar 13, 2020 at 03:43:37PM +0000, Vincenzo Frascino wrote:
>> --- /dev/null
>> +++ b/arch/arm64/include/asm/vdso/processor.h
>> @@ -0,0 +1,31 @@
>> +/* SPDX-License-Identifier: GPL-2.0-only */
>> +/*
>> + * Copyright (C) 2020 ARM Ltd.
>> + */
>> +#ifndef __ASM_VDSO_PROCESSOR_H
>> +#define __ASM_VDSO_PROCESSOR_H
>> +
>> +#ifndef __ASSEMBLY__
>> +
>> +#include <asm/page-def.h>
>> +
>> +#ifdef CONFIG_COMPAT
>> +#if defined(CONFIG_ARM64_64K_PAGES) && defined(CONFIG_KUSER_HELPERS)
>> +/*
>> + * With CONFIG_ARM64_64K_PAGES enabled, the last page is occupied
>> + * by the compat vectors page.
>> + */
>> +#define TASK_SIZE_32		UL(0x100000000)
>> +#else
>> +#define TASK_SIZE_32		(UL(0x100000000) - PAGE_SIZE)
>> +#endif /* CONFIG_ARM64_64K_PAGES */
>> +#endif /* CONFIG_COMPAT */
> 
> Just curious, what's TASK_SIZE_32 used for in the vDSO code? You don't
> seem to move TASK_SIZE.
> 

I tried to fine grain the headers as much as I could in order to avoid
unneeded/unwanted inclusions:
 * TASK_SIZE_32 is used to verify ABI consistency on vdso32 (please refer to
   arch/arm64/kernel/vdso32/vgettimeofday.c).
 * TASK_SIZE is not required by the vdso library hence it is not present in
   these headers.

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
