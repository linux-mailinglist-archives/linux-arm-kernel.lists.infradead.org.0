Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C4C92D955
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 11:46:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D85VcPgt8/wsBe7rhNNWWhRRh8niI7s8ESEX6au5vV8=; b=VVDFwYqveVYtbC
	unsaWpnSCQ3mg3HzaLZTwu0FaiZd0FiXW9xqBZDRku3J87K7rrQDZZhzsFMHZEgLpq3ckf4Ld2sga
	65z++LUdl/ubDrsSj4+KdzTPHPe0xtE3GK855KcoI3GLowL7KCC70eJPo4PoraQ7uGuzZOge53bgX
	fkXZuC/ds56AUytTXrcJT4e6EptZPKF5nq+oeuaoaujicerkHvZDL1tcUFz74PztisY0EL0kA8Q7q
	l/heUGIl44OEGElN69J1VMkoIIFFYtXNvtxmYzDaTkpskpS9Vbxt2KhS3cZjAvLwGhWxmbaomw4/r
	B5QBkllzXF2OBhnazfig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVv9q-0006Cr-0s; Wed, 29 May 2019 09:46:06 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVv9j-0006BG-4Q; Wed, 29 May 2019 09:45:59 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id D0D30201A7E42; Wed, 29 May 2019 11:45:56 +0200 (CEST)
Date: Wed, 29 May 2019 11:45:56 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Raphael Gault <raphael.gault@arm.com>
Subject: Re: [RFC 5/7] arm64: pmu: Add hook to handle pmu-related undefined
 instructions
Message-ID: <20190529094556.GJ2623@hirez.programming.kicks-ass.net>
References: <20190528150320.25953-1-raphael.gault@arm.com>
 <20190528150320.25953-6-raphael.gault@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190528150320.25953-6-raphael.gault@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, acme@kernel.org, mingo@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 04:03:18PM +0100, Raphael Gault wrote:
> +static int emulate_pmu(struct pt_regs *regs, u32 insn)
> +{
> +	u32 sys_reg, rt;
> +	u32 pmuserenr;
> +
> +	sys_reg = (u32)aarch64_insn_decode_immediate(AARCH64_INSN_IMM_16, insn) << 5;
> +	rt = aarch64_insn_decode_register(AARCH64_INSN_REGTYPE_RT, insn);
> +	pmuserenr = read_sysreg(pmuserenr_el0);
> +
> +	if ((pmuserenr & (ARMV8_PMU_USERENR_ER|ARMV8_PMU_USERENR_CR)) !=
> +	    (ARMV8_PMU_USERENR_ER|ARMV8_PMU_USERENR_CR))
> +		return -EINVAL;
> +

I would really prefer there to be a comment here that explain how the
'0' value works. Maybe something like:

	/*
	 * Userspace is expected to only use this in the context of the
	 * scheme described in the struct perf_event_mmap_page comments.
	 *
	 * Given that context, we can only get here if we got migrated
	 * between getting the register index and doing the MSR read.
	 * This in turn implies we'll fail the sequence and retry, so
	 * any value returned is 'good', all we need is to be non-fatal.
	 */

> +	pt_regs_write_reg(regs, rt, 0);

And given the above, we don't even need to do this, we can simply
preserve whatever garbage was in the register and return to userspace.

The only thing we really need is for the trap to be non-fatal.

> +
> +	arm64_skip_faulting_instruction(regs, 4);
> +	return 0;
> +}
> +
> +/*
> + * This hook will only be triggered by mrs
> + * instructions on PMU registers. This is mandatory
> + * in order to have a consistent behaviour even on
> + * big.LITTLE systems.
> + */
> +static struct undef_hook pmu_hook = {
> +	.instr_mask = 0xffff8800,
> +	.instr_val  = 0xd53b8800,
> +	.fn = emulate_pmu,
> +};
> +
> +static int __init enable_pmu_emulation(void)
> +{
> +	register_undef_hook(&pmu_hook);
> +	return 0;
> +}
> +
> +core_initcall(enable_pmu_emulation);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
