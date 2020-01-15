Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF64813CA2A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 18:03:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u8JLlm8TsFxHrS9VMVzumOIUBb6/Z/n/bwpca+GwRFM=; b=rUZyNVzX7OcDqf
	uLp31zuXWBpTjsgMiQEwIBNct4jvJbkHocnTc74uanwGqfTOYZHXlL07KolluZDJiyKM2Q28nFmpE
	AY3BD0hG4RD21cQDgH6cdETWQKNsG5DV0yra9ldDHhq7Axz4hDXT2hV4ASQryuwGAp41QJgpcTHhg
	mpTvIWgTmsxyf7V78kwqUKvQMnJXSvG1rSEw5ZPXcL/96oU7mZX/ovT2SXTsTOsfM4ZFUGJEYOh5U
	viTwalEcDHm06w+MpC+ABD+c1cl/QxZvuzDxJXgccUAu2m6FBc7WNrmNCLu+YSEp4XUPkSYOrdbFu
	YqkVTsNvOHUYMzcxagdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irm4F-0003Mx-Rt; Wed, 15 Jan 2020 17:02:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irm43-0003Ld-If
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 17:02:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 23BB4328;
 Wed, 15 Jan 2020 09:02:42 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 58A3D3F6C4; Wed, 15 Jan 2020 09:02:40 -0800 (PST)
Date: Wed, 15 Jan 2020 17:02:38 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Amit Daniel Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH v3 03/16] arm64: install user ptrauth keys at kernel exit
 time
Message-ID: <20200115170238.GH3429@arrakis.emea.arm.com>
References: <1576486038-9899-1-git-send-email-amit.kachhap@arm.com>
 <1576486038-9899-4-git-send-email-amit.kachhap@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576486038-9899-4-git-send-email-amit.kachhap@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_090243_702141_942831E6 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Mark Brown <Mark.Brown@arm.com>, Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 02:17:05PM +0530, Amit Daniel Kachhap wrote:
> diff --git a/arch/arm64/include/asm/asm_pointer_auth.h b/arch/arm64/include/asm/asm_pointer_auth.h
> new file mode 100644
> index 0000000..3d39788
> --- /dev/null
> +++ b/arch/arm64/include/asm/asm_pointer_auth.h
> @@ -0,0 +1,45 @@
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

I think we can remove these instructions (assuming that the ldp #imm
range is sufficient),

> +alternative_if_not ARM64_HAS_ADDRESS_AUTH
> +	b	.Laddr_auth_skip_\@
> +alternative_else_nop_endif
> +	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_USER_KEY_APIA]

use \tsk directly here (see below)

> +	msr_s	SYS_APIAKEYLO_EL1, \tmp2
> +	msr_s	SYS_APIAKEYHI_EL1, \tmp3
> +	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_USER_KEY_APIB]
> +	msr_s	SYS_APIBKEYLO_EL1, \tmp2
> +	msr_s	SYS_APIBKEYHI_EL1, \tmp3
> +	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_USER_KEY_APDA]
> +	msr_s	SYS_APDAKEYLO_EL1, \tmp2
> +	msr_s	SYS_APDAKEYHI_EL1, \tmp3
> +	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_USER_KEY_APDB]
> +	msr_s	SYS_APDBKEYLO_EL1, \tmp2
> +	msr_s	SYS_APDBKEYHI_EL1, \tmp3
> +.Laddr_auth_skip_\@:
> +alternative_if ARM64_HAS_GENERIC_AUTH
> +	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_USER_KEY_APGA]
> +	msr_s	SYS_APGAKEYLO_EL1, \tmp2
> +	msr_s	SYS_APGAKEYHI_EL1, \tmp3
> +alternative_else_nop_endif
> +	.endm
[...]
> diff --git a/arch/arm64/kernel/asm-offsets.c b/arch/arm64/kernel/asm-offsets.c
> index a5bdce8..7b1ea2a 100644
> --- a/arch/arm64/kernel/asm-offsets.c
> +++ b/arch/arm64/kernel/asm-offsets.c
> @@ -40,6 +40,9 @@ int main(void)
>  #endif
>    BLANK();
>    DEFINE(THREAD_CPU_CONTEXT,	offsetof(struct task_struct, thread.cpu_context));
> +#ifdef CONFIG_ARM64_PTR_AUTH
> +  DEFINE(THREAD_KEYS_USER,	offsetof(struct task_struct, thread.keys_user));
> +#endif
>    BLANK();
>    DEFINE(S_X0,			offsetof(struct pt_regs, regs[0]));
>    DEFINE(S_X2,			offsetof(struct pt_regs, regs[2]));
> @@ -128,5 +131,13 @@ int main(void)
>    DEFINE(SDEI_EVENT_INTREGS,	offsetof(struct sdei_registered_event, interrupted_regs));
>    DEFINE(SDEI_EVENT_PRIORITY,	offsetof(struct sdei_registered_event, priority));
>  #endif
> +#ifdef CONFIG_ARM64_PTR_AUTH
> +  DEFINE(PTRAUTH_USER_KEY_APIA,		offsetof(struct ptrauth_keys_user, apia));
> +  DEFINE(PTRAUTH_USER_KEY_APIB,		offsetof(struct ptrauth_keys_user, apib));
> +  DEFINE(PTRAUTH_USER_KEY_APDA,		offsetof(struct ptrauth_keys_user, apda));
> +  DEFINE(PTRAUTH_USER_KEY_APDB,		offsetof(struct ptrauth_keys_user, apdb));
> +  DEFINE(PTRAUTH_USER_KEY_APGA,		offsetof(struct ptrauth_keys_user, apga));
> +  BLANK();
> +#endif

and define the above as

	offsetof(struct task_struct, thread.keys_user.apia)

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
