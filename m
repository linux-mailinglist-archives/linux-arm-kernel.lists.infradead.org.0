Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 582F6C9CD5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 13:10:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vEBZNvkRtReeiALaDR36Aotnxpz45qDfpfrDi4HQc00=; b=nqGbIj93s62Kgr
	nbv8ZXuFHVBUBAF+TydNmvUb8xnjWVecrt44Gvc5DLYMNPZaKFGJZIz8o7Rn7evPImEafcTvLlwbj
	mY6vHlfcr8Qyq2sadtj8oZq5iAA/EMmd4RXszzbvaiR00Ive+oqPPD9aE4xhOuRhYgB74xDS8UYOY
	89Stc1r3i/t1Hl1Z4emrkScfcYUXPZk3SwtI7y+XTS4xRgdIXtcf9yT5t3BE4m/Z5oZP0HpMWcteB
	t35oWnYHU8+Bs8j8eaR1y2LLiWTTJ5vUWbuYBnpPSnRihwfv6xaK6vdzwXeUuzo2nxlhrC5a3V6BI
	tgzV77EK6B69L8TUB8dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFyzT-000551-1Y; Thu, 03 Oct 2019 11:09:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFyzM-00054P-AV
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 11:09:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5B4371000;
 Thu,  3 Oct 2019 04:09:34 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 37C223F706;
 Thu,  3 Oct 2019 04:09:33 -0700 (PDT)
Subject: Re: [PATCH 4/5] arm64: KVM: Prevent speculative S1 PTW when restoring
 vcpu context
To: Marc Zyngier <maz@kernel.org>
References: <20190925111941.88103-1-maz@kernel.org>
 <20190925111941.88103-5-maz@kernel.org>
From: James Morse <james.morse@arm.com>
Message-ID: <0d52783d-2cff-0d2e-8421-74f815b90c47@arm.com>
Date: Thu, 3 Oct 2019 12:09:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190925111941.88103-5-maz@kernel.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_040940_449445_6D2325BE 
X-CRM114-Status: GOOD (  20.36  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 25/09/2019 12:19, Marc Zyngier wrote:
> When handling erratum 1319367, we must ensure that the page table
> walker cannot parse the S1 page tables while the guest is in an
> inconsistent state. This is done as follows:
> 
> On guest entry:
> - TCR_EL1.EPD{0,1} are set, ensuring that no PTW can occur
> - all system registers are restored, except for TCR_EL1 and SCTLR_EL1
> - stage-2 is restored
> - SCTLR_EL1 and TCR_EL1 are restored
> 
> On guest exit:
> - SCTLR_EL1.M and TCR_EL1.EPD{0,1} are set, ensuring that no PTW can occur
> - stage-2 is disabled
> - All host system registers are restored

> diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
> index e6adb90c12ae..4df47d013bec 100644
> --- a/arch/arm64/kvm/hyp/switch.c
> +++ b/arch/arm64/kvm/hyp/switch.c
> @@ -156,6 +170,23 @@ static void __hyp_text __deactivate_traps_nvhe(void)
>  {
>  	u64 mdcr_el2 = read_sysreg(mdcr_el2);
>  
> +	if (cpus_have_const_cap(ARM64_WORKAROUND_1319367)) {
> +		u64 val;
> +
> +		/*
> +		 * Set the TCR and SCTLR registers in the exact opposite
> +		 * sequence as __activate_traps_nvhe (first prevent walks,
> +		 * then force the MMU on). A generous sprinkling of isb()
> +		 * ensure that things happen in this exact order.
> +		 */
> +		val = read_sysreg_el1(SYS_TCR);
> +		write_sysreg_el1(val | TCR_EPD1_MASK | TCR_EPD0_MASK, SYS_TCR);
> +		isb();
> +		val = read_sysreg_el1(SYS_SCTLR);
> +		write_sysreg_el1(val | SCTLR_ELx_M, SYS_SCTLR);
> +		isb();
> +	}

We are exiting the guest, and heading back to the host.
This change forces stage-1 off. Stage-2 is still enabled, but its about to be disabled and
have the host VMID restore in __deactivate_vm(). All good so far.

Then we hit __sysreg_restore_state_nvhe() for the host, which calls
__sysreg_restore_el1_state()...


> diff --git a/arch/arm64/kvm/hyp/sysreg-sr.c b/arch/arm64/kvm/hyp/sysreg-sr.c
> index 7ddbc849b580..adabdceacc10 100644
> --- a/arch/arm64/kvm/hyp/sysreg-sr.c
> +++ b/arch/arm64/kvm/hyp/sysreg-sr.c
> @@ -117,12 +117,22 @@ static void __hyp_text __sysreg_restore_el1_state(struct kvm_cpu_context *ctxt)
>  {
>  	write_sysreg(ctxt->sys_regs[MPIDR_EL1],		vmpidr_el2);
>  	write_sysreg(ctxt->sys_regs[CSSELR_EL1],	csselr_el1);
> -	write_sysreg_el1(ctxt->sys_regs[SCTLR_EL1],	SYS_SCTLR);
> +
> +	/* Must only be done for guest registers, hence the context test */
> +	if (cpus_have_const_cap(ARM64_WORKAROUND_1319367) &&
> +	    !ctxt->__hyp_running_vcpu) {
> +		write_sysreg_el1(ctxt->sys_regs[TCR_EL1] |
> +				 TCR_EPD1_MASK | TCR_EPD0_MASK,	SYS_TCR);
> +		isb();
> +	} else {

... which will come in here.

> +		write_sysreg_el1(ctxt->sys_regs[SCTLR_EL1],	SYS_SCTLR);
> +		write_sysreg_el1(ctxt->sys_regs[TCR_EL1],	SYS_TCR);

This reverses what we did in __deactivate_traps_nvhe(), but we haven't restored the host
TTBRs yet. I don't think the vttbr_el2 write has been sync'd either.

A speculative AT at this point could see the TCR EPDx bits clear, but the guest's TTBR
values. It may also see the guest-VMID.


I think the change to this function needs splitting up. Restore of guest state needs to be
as you have it here, before the guest TTBRs are written.

Restore of the host state needs to only clear the EPDx bits after the TTBRs are written,
and sync'd.


Assuming I'm making sense ... with that:
Reviewed-by: James Morse <james.morse@arm.com>

for the series.


> +	}
> +
>  	write_sysreg(ctxt->sys_regs[ACTLR_EL1],		actlr_el1);
>  	write_sysreg_el1(ctxt->sys_regs[CPACR_EL1],	SYS_CPACR);
>  	write_sysreg_el1(ctxt->sys_regs[TTBR0_EL1],	SYS_TTBR0);
>  	write_sysreg_el1(ctxt->sys_regs[TTBR1_EL1],	SYS_TTBR1);
> -	write_sysreg_el1(ctxt->sys_regs[TCR_EL1],	SYS_TCR);
>  	write_sysreg_el1(ctxt->sys_regs[ESR_EL1],	SYS_ESR);
>  	write_sysreg_el1(ctxt->sys_regs[AFSR0_EL1],	SYS_AFSR0);
>  	write_sysreg_el1(ctxt->sys_regs[AFSR1_EL1],	SYS_AFSR1);


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
