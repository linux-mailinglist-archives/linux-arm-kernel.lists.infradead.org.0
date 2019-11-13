Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A840CFB5F6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 18:08:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cQ7dFknI4lk8W6iQAbb+B+zuXedIGIpMQk1ODdv1c3Q=; b=FEMhdRdTCB4fJD
	wkyqTZFB5dIJWhWxxGOdOhkQ4A2Kk6vA+F4LWGYXTeo3/3zApdLxIqykcGsoKxbyOUj0BPwyKyyLw
	FXwi/rCcWew0zeTTpUdtITUO1qYVYi4l0y91s/NpWFEIWv+KakjmTfFDzVT5Kcnb9ol5hXm9emuRE
	bX/CFKTGwsH2IZPH12RN4cN+yqRCz1eGJul8KhqVJTbA1Wd7rMtQc4heWzHEiEJxcPSfJLmixrBEq
	nnKrQQr3ehnXasB931/tSgYr6dNjfw7lrNrftkC5Rc/TuCJ6kc6sDWwXYQKqJqqgs5pbLiudZuwNV
	YW6kGgUWjKXo7MOthplA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUw84-0005fQ-Kt; Wed, 13 Nov 2019 17:08:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUw7x-0005el-18
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 17:08:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3005130E;
 Wed, 13 Nov 2019 09:08:18 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7CCCA3F534;
 Wed, 13 Nov 2019 09:08:17 -0800 (PST)
Date: Wed, 13 Nov 2019 17:08:15 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: richard.henderson@linaro.org
Subject: Re: [PATCH v6 1/1] arm64: Implement archrandom.h for ARMv8.5-RNG
Message-ID: <20191113170814.GB35227@lakrids.cambridge.arm.com>
References: <20191113101151.13389-1-richard.henderson@linaro.org>
 <20191113101151.13389-2-richard.henderson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191113101151.13389-2-richard.henderson@linaro.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_090821_156075_513C081A 
X-CRM114-Status: GOOD (  18.25  )
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
Cc: linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 ard.biesheuvel@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 13, 2019 at 11:11:51AM +0100, richard.henderson@linaro.org wrote:
> From: Richard Henderson <richard.henderson@linaro.org>
> 
> Expose the ID_AA64ISAR0.RNDR field to userspace, as the
> RNG system registers are always available at EL0.

This patch does more than just that (e.g. implementing
arch_get_random_*()). Please write a more complete commit message.
That's where you should call out any gotchas.

[...]

> +/*
> + * The ALTERNATIVE infrastructure leads GCC to believe that the
> + * inline assembly is quite large, rather than two insns, which
> + * leads to the function being considered not profitable to inline.
> + * Override this decision with __always_inline.
> + */
> +static __always_inline __must_check
> +bool arch_get_random_seed_long(unsigned long *v)
> +{
> +	register unsigned long x0 __asm__("x0");
> +	unsigned long ok;
> +
> +	asm volatile(ALTERNATIVE_CB("bl boot_get_random_seed_long\n",
> +				    arm64_update_get_random_seed_long)
> +		     "cset %1, ne\n"
> +		     : "=r" (x0), "=r" (ok) : : "cc");
> +
> +	*v = x0;
> +	return ok;
> +}

> +/*
> + * Before alternatives are finalized, arch_get_random_seed_long calls
> + * this function.  The abi is as if
> + *
> + *     msr x0, rndr
> + *
> + * Preserve all other call-clobbered regs.
> + */
> +
> +asm(".globl	boot_get_random_seed_long\n"
> +".type	boot_get_random_seed_long, @function\n"
> +"boot_get_random_seed_long:\n"
> +"	stp	x29, x30, [sp, -160]!\n"
> +"	stp	x1, x2, [sp, 16]\n"
> +"	stp	x3, x4, [sp, 32]\n"
> +"	stp	x5, x6, [sp, 48]\n"
> +"	stp	x7, x8, [sp, 64]\n"
> +"	stp	x9, x10, [sp, 80]\n"
> +"	stp	x11, x12, [sp, 96]\n"
> +"	stp	x13, x14, [sp, 112]\n"
> +"	stp	x15, x16, [sp, 128]\n"
> +"	stp	x17, x18, [sp, 144]\n"
> +"	mov	x0, " __stringify(ARM64_HAS_RNG) "\n"
> +"	bl	this_cpu_has_cap\n"
> +"	ldp	x1, x2, [sp, 16]\n"
> +"	ldp	x3, x4, [sp, 32]\n"
> +"	ldp	x5, x6, [sp, 48]\n"
> +"	ldp	x7, x8, [sp, 64]\n"
> +"	ldp	x9, x10, [sp, 80]\n"
> +"	ldp	x11, x12, [sp, 96]\n"
> +"	ldp	x13, x14, [sp, 112]\n"
> +"	ldp	x15, x16, [sp, 128]\n"
> +"	ldp	x17, x18, [sp, 144]\n"
> +"	ldp	x29, x30, [sp], 160\n"
> +/* Test this_cpu_has_cap result, clearing x0 and setting Z if false. */
> +"	ands	w0, w0, #0xff\n"
> +"	beq	1f\n"
> +	__mrs_s("x0", SYS_RNDR_EL0) "\n"
> +"1:	ret\n"
> +".size boot_get_random_seed_long, . - boot_get_random_seed_long\n");
> +
> +
> +void arm64_update_get_random_seed_long(struct alt_instr *alt,
> +				       __le32 *origptr, __le32 *updptr,
> +				       int nr_inst)
> +{
> +	u32 insn;
> +
> +	BUG_ON(nr_inst != 1);
> +
> +	if (cpus_have_cap(ARM64_HAS_RNG))
> +		insn = 0xd53b2400;	/* mrs	x0, rndr */
> +	else
> +		insn = 0xea1f03e0;	/* ands	x0, xzr, xzr */
> +	updptr[0] = cpu_to_le32(insn);
> +}

Sorry if I wasn't sufficiently clear on this before, but I really want
this to be as braindead simple as possible, and so I don't think the
above is the right approach.

Rather than being clever, as above, please let's do this in a simpler
way. If we need to do something early on the boot CPU, we should either:

 * Have the common random init code (running on the boot CPU) use 
   specific early_arch_get_random_*() helpers; and have the arm64
   version of this check this_cpu_has_cap() to determine whether the
   boot CPU has the instruction.

 * Have the arm64 setup_arch() code call something that checks
   this_cpu_has_cap(), and have that explicitly feed entropy to the core
   code somehow.

The common case should just check the system cap, then use the
instruction. In either case the only patching should be for the cap.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
