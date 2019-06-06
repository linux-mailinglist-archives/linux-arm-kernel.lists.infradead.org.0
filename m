Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 716A137979
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 18:26:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gWRyMvKxx3q45UUuTdE7lLxaYcocK37ZPyheof2SJh0=; b=R+qNLC6Mk7rjGD
	HVVFV/cI5FwwUe2UETK52u2VaN6LlEHheIOs8JADngKXJ3y6J8L3lAP0r5vnE1r2ZdiYUhnYWMwF/
	Mnl7hyREkuQZAi5Y+NmCOhjqe6KMotHN0dFBMF/uPF1IyxFRNcinJVkbmbqYJ38YDPXxvYna7AGZE
	2R9OToo16tiPrnKDP8U6+yP5p3UChdENVYXVDJZVuRSk54+rQiBmF2oNeREu6Km1xy/kvapAuO3YI
	uS3rBLhbFkGnZs8Jw3I1dvvhtfi0a0dffKhXC35Y9b8tkKRhvBiyLI8sDop4sdkmp2MeZ+wokOi1s
	LfuNnGD2W4qVJ/XwvJ+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYvE6-0004e1-42; Thu, 06 Jun 2019 16:26:54 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYvDz-0004df-7d
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 16:26:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9A8D3A78;
 Thu,  6 Jun 2019 09:26:46 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 CD0353F690; Thu,  6 Jun 2019 09:26:44 -0700 (PDT)
Date: Thu, 6 Jun 2019 17:26:42 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Kristina Martsenko <kristina.martsenko@arm.com>
Subject: Re: [RFC v2 2/7] arm64: install user ptrauth keys at kernel exit time
Message-ID: <20190606162642.GG56860@arrakis.emea.arm.com>
References: <20190529190332.29753-1-kristina.martsenko@arm.com>
 <20190529190332.29753-3-kristina.martsenko@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529190332.29753-3-kristina.martsenko@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_092647_282475_89FFDA67 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Will Deacon <will.deacon@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Kachhap <Amit.Kachhap@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 08:03:27PM +0100, Kristina Martsenko wrote:
> diff --git a/arch/arm64/include/asm/asm_pointer_auth.h b/arch/arm64/include/asm/asm_pointer_auth.h
> new file mode 100644
> index 000000000000..e3bfddfe80b6
> --- /dev/null
> +++ b/arch/arm64/include/asm/asm_pointer_auth.h
> @@ -0,0 +1,43 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef __ASM_ASM_POINTER_AUTH_H
> +#define __ASM_ASM_POINTER_AUTH_H
> +
> +#include <asm/alternative.h>
> +#include <asm/asm-offsets.h>
> +#include <asm/cpufeature.h>
> +#include <asm/sysreg.h>
> +
> +#ifdef CONFIG_ARM64_PTR_AUTH
> +
> +	.macro ptrauth_keys_install_user tsk, tmp1, tmp2, tmp3
> +	mov	\tmp1, #THREAD_KEYS_USER
> +	add	\tmp1, \tsk, \tmp1
> +alternative_if ARM64_HAS_ADDRESS_AUTH
> +	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_KEY_APIA]
> +	msr_s	SYS_APIAKEYLO_EL1, \tmp2
> +	msr_s	SYS_APIAKEYHI_EL1, \tmp3
> +	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_KEY_APIB]
> +	msr_s	SYS_APIBKEYLO_EL1, \tmp2
> +	msr_s	SYS_APIBKEYHI_EL1, \tmp3
> +	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_KEY_APDA]
> +	msr_s	SYS_APDAKEYLO_EL1, \tmp2
> +	msr_s	SYS_APDAKEYHI_EL1, \tmp3
> +	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_KEY_APDB]
> +	msr_s	SYS_APDBKEYLO_EL1, \tmp2
> +	msr_s	SYS_APDBKEYHI_EL1, \tmp3
> +alternative_else_nop_endif

I wonder whether it's better to have a branch here over this sequence
with alternative_if_not than 12 nops.

> +alternative_if ARM64_HAS_GENERIC_AUTH
> +	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_KEY_APGA]
> +	msr_s	SYS_APGAKEYLO_EL1, \tmp2
> +	msr_s	SYS_APGAKEYHI_EL1, \tmp3
> +alternative_else_nop_endif

That's small enough with 3 nops.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
