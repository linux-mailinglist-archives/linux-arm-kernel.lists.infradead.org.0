Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 410C11407B7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 11:15:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+T8/nfg/4HLu3++3Xvv2w25dX18bEDyqD9CEaIi059I=; b=uBA+wqikk6I8r5
	VJoXQjAPt/L3t9nu2vIEWAGIAXCQ6HciSGxJoxJoZyzmV7D/HvslYcuY1M/NnIuchvni5kwzWmgG6
	8CNUR0Wevr5P0JGxK1rz0jJqJEcjlVSZkEakO9zxyydenHIUsxiaiF93zy3IeZdxvMHFa+pT4kJgE
	bgM0Ze5L+YcruNSUmElKbMV1yT/ZaLqB2yxK4ShYBkqXsafivfacb1vMsG1CNKIzEZXtftKlL20l5
	VNjo6JfHCzaUGufCwHGNF7jsnTX/TC44H07IavZp6Iy0Su1dNbc0B6qbW9p2e5RTplnzEiNC37hMA
	K0h9s1gWDnXqvPSY43xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isOes-0000OH-4p; Fri, 17 Jan 2020 10:15:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isOeE-0000Fb-Hb
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 10:14:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CFA8E11D4;
 Fri, 17 Jan 2020 02:14:35 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 14F113F68E; Fri, 17 Jan 2020 02:14:33 -0800 (PST)
Date: Fri, 17 Jan 2020 10:14:32 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Amit Daniel Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH v3 09/16] arm64: mask PAC bits of __builtin_return_address
Message-ID: <20200117101432.GA26090@arrakis.emea.arm.com>
References: <1576486038-9899-1-git-send-email-amit.kachhap@arm.com>
 <1576486038-9899-10-git-send-email-amit.kachhap@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576486038-9899-10-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_021438_623156_3FDFC948 
X-CRM114-Status: GOOD (  14.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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

On Mon, Dec 16, 2019 at 02:17:11PM +0530, Amit Daniel Kachhap wrote:
> diff --git a/arch/arm64/include/asm/compiler.h b/arch/arm64/include/asm/compiler.h
> new file mode 100644
> index 0000000..3cb06f9
> --- /dev/null
> +++ b/arch/arm64/include/asm/compiler.h
> @@ -0,0 +1,20 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef __ASM_COMPILER_H
> +#define __ASM_COMPILER_H
> +
> +#if defined(CONFIG_ARM64_PTR_AUTH)
> +
> +/*
> + * The EL0/EL1 pointer bits used by a pointer authentication code.
> + * This is dependent on TBI0/TBI1 being enabled, or bits 63:56 would also apply.
> + */
> +#define ptrauth_user_pac_mask()		GENMASK_ULL(54, vabits_actual)

That's the current behaviour but I guess we could extend the mask to 63
here without breaking anything since we don't expect instruction
addresses to be tagged. I also think we should turn TCR_EL1.TBID0 on
when we have PAC present (in a separate patch for both the mask change
and the TCR_EL1 bit as this may be slightly more controversial, a
theoretical ABI change).

> +#define ptrauth_kernel_pac_mask()	(GENMASK_ULL(63, 56) | GENMASK_ULL(54, VA_BITS))

I think the kernel mask should be GENMASK_ULL(63, vabits_actual), no
need to skip bit 55 since it's 1 already.

With regards to VA_BITS (a constant), I'm not sure that's correct.
ARMv8.2-LVA (52-bit VA) is an optional feature and I don't think PAC in
8.3 mandates it.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
