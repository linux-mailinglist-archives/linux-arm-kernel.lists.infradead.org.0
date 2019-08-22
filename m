Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4388A999B4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 19:02:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x756qojvTvxjfQtsPDstV6/6fvUWl3rZDROfzUR+azQ=; b=ToGmVi2F2KlS6W
	ZSKr10DVMpu466iP6fh1Z8quHmr+B4RcTQMT0vt43GPjnO1jeynZGGpHfBWuNFh0X1K4DGjA2H4XE
	xPm/1hIVP5E6ajwjfYkP8Nrd+Eu3Mwt3q4dXQI5C6iD6QJEVTVGlTeqM5/5tdxwK3gEZk8TvYhSmv
	VKX/dduSuiLX7XErwhPkwGG7H/ZfVePD7m6R8Pfn6M1S3rJstmAhR/Z8lmYi0/3RGjnoKUNCc5M4v
	jklITX46tU5JJTIJEfqufbstBbp9urht5/vWWDeit7h4d9kf8porH/adCLXNVBKGYCbIt9AgVLMQ0
	qP7fJ8jdK9B9gy6WiURQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0qTV-0002bE-Lw; Thu, 22 Aug 2019 17:02:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0qTI-0002ar-Fb
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 17:02:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CA98328;
 Thu, 22 Aug 2019 10:01:58 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C794C3F718;
 Thu, 22 Aug 2019 10:01:57 -0700 (PDT)
Date: Thu, 22 Aug 2019 18:01:55 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v3 3/5] arm64: atomics: avoid out-of-line ll/sc atomics
Message-ID: <20190822170155.GE33080@lakrids.cambridge.arm.com>
References: <20190812143625.42745-1-andrew.murray@arm.com>
 <20190812143625.42745-4-andrew.murray@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812143625.42745-4-andrew.murray@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_100200_611833_C5FBA55A 
X-CRM114-Status: GOOD (  20.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Boqun Feng <boqun.feng@gmail.com>,
 Will Deacon <will.deacon@arm.com>, Ard.Biesheuvel@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 03:36:23PM +0100, Andrew Murray wrote:
> When building for LSE atomics (CONFIG_ARM64_LSE_ATOMICS), if the hardware
> or toolchain doesn't support it the existing code will fallback to ll/sc
> atomics. It achieves this by branching from inline assembly to a function
> that is built with specical compile flags. Further this results in the
> clobbering of registers even when the fallback isn't used increasing
> register pressure.
> 
> Let's improve this by providing inline implementations of both LSE and
> ll/sc and use a static key to select between them. This allows for the
> compiler to generate better atomics code.
> 
> To improve icache performance for the LL/SC fallback atomics, we put them
> in their own subsection.
> 
> Please note that as atomic_arch.h is included indirectly by kernel.h
> (via bitops.h), we cannot depend on features provided later in the kernel.h
> file. This prevents us from placing the system_uses_lse_atomics function
> in cpu_feature.h due to its dependencies.
> 
> Signed-off-by: Andrew Murray <andrew.murray@arm.com>

[...]

> diff --git a/arch/arm64/include/asm/atomic_arch.h b/arch/arm64/include/asm/atomic_arch.h
> new file mode 100644
> index 000000000000..255a284321c6
> --- /dev/null
> +++ b/arch/arm64/include/asm/atomic_arch.h
> @@ -0,0 +1,154 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Selection between LSE and LL/SC atomics.
> + *
> + * Copyright (C) 2018 ARM Ltd.
> + * Author: Andrew Murray <andrew.murray@arm.com>
> + */
> +
> +#ifndef __ASM_ATOMIC_ARCH_H
> +#define __ASM_ATOMIC_ARCH_H
> +
> +#include <asm/atomic_lse.h>
> +#include <asm/atomic_ll_sc.h>
> +
> +#include <linux/jump_label.h>
> +#include <asm/cpucaps.h>

I'm guessing that we have to include the <asm/atomic_*> headers first
due to the include dependencies. If that's the case, could we please
have a comment here to that effect?

Minor nit, but could we also order those two alphabetically, please?

The general style is to have headers alphabetically, with (for reasons
unknown) the <linux/*> headers before the <asm/*> headers.

[...]

> +#if IS_ENABLED(CONFIG_ARM64_LSE_ATOMICS) && IS_ENABLED(CONFIG_AS_LSE)
> +#define __LL_SC_FALLBACK(asm_ops)					\
> +"	b	3f\n"							\
> +"	.subsection	1\n"						\
> +"3:\n"									\
> +asm_ops "\n"								\
> +"	b	4f\n"							\
> +"	.previous\n"							\
> +"4:\n"
> +#else
> +#define __LL_SC_FALLBACK(asm_ops) asm_ops
>  #endif

Can we instead make the ll/sc functions with the cold attribute (wrapped
by <linux/compiler.h> as __cold)?

IIUC that should have a similar effect, and might allow GCC to do better
(e.g. merging compatible instances of the ll/sc code in the same cold
subsection).

https://gcc.gnu.org/onlinedocs/gcc-9.2.0/gcc/Common-Function-Attributes.html#index-cold-function-attribute

Otherwise, this is looking much nicer!

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
