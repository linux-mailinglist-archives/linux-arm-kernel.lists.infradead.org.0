Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76376E3784
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 18:11:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e+r63xSvFmA+rPV/FEHUkcDMOyk5f2/+GShlXOslIOU=; b=Q5MJF4acKCNukX
	oayyMz6H41vJHz8bHlCP6Bc1ELTMFl7pMGFpp/73FBaTXJzG5ktN4AWjbFn2gENCMZmftGGex+Lp7
	FORKnlegV5HWy4mK4LzFIvT+0AmakfwiEI5vmCySNvcS1upwqqxroR3ZLo+vp9AfpecrdSgaqGCZ6
	Y4YTTlmYTVF3Mtz8xGWKFy6QvGwxfehnelqfcPgXs/Gf9MwnrXRU5hqoJI90MOqJ12JHtEnoNb4vs
	68zR39t4Y7NV5egWmcZtR47/R6n8O+ZvUxopjUqggAkPkjIBGi13dR2ImSl6/+rO1nQzQCCwT2yg/
	rltk1gkQGipghr34bwEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNfhm-00026p-8U; Thu, 24 Oct 2019 16:11:18 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNfhS-0001qc-Po
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 16:11:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2834228;
 Thu, 24 Oct 2019 09:10:47 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 09B8D3F71F;
 Thu, 24 Oct 2019 09:10:45 -0700 (PDT)
Subject: Re: [PATCH v2 4/5] arm64: KVM: Prevent speculative S1 PTW when
 restoring vcpu context
To: Marc Zyngier <maz@kernel.org>
References: <20191019095521.31722-1-maz@kernel.org>
 <20191019095521.31722-5-maz@kernel.org>
From: James Morse <james.morse@arm.com>
Message-ID: <151fc868-6709-3017-e34d-649ec0e1812c@arm.com>
Date: Thu, 24 Oct 2019 17:10:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191019095521.31722-5-maz@kernel.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_091058_905988_A8FEADDF 
X-CRM114-Status: GOOD (  18.89  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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

On 19/10/2019 10:55, Marc Zyngier wrote:
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

Reviewed-by: James Morse <james.morse@arm.com>

(whitespace nit below)


> diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
> index 69e10b29cbd0..5765b17c38c7 100644
> --- a/arch/arm64/kvm/hyp/switch.c
> +++ b/arch/arm64/kvm/hyp/switch.c
> @@ -118,6 +118,20 @@ static void __hyp_text __activate_traps_nvhe(struct kvm_vcpu *vcpu)
>  	}
>  
>  	write_sysreg(val, cptr_el2);
> +
> +	if (cpus_have_const_cap(ARM64_WORKAROUND_1319367)) {
> +		struct kvm_cpu_context *ctxt = &vcpu->arch.ctxt;
> +
> +		isb();
> +		/*
> +		 * At this stage, and thanks to the above isb(), S2 is
> +		 * configured and enabled. We can now restore the guest's S1
> +		 * configuration: SCTLR, and only then TCR.
> +		 */

(note for my future self: because the guest may have had M=0 and rubbish in the TTBRs)

> +		write_sysreg_el1(ctxt->sys_regs[SCTLR_EL1],	SYS_SCTLR);
> +		isb();
> +		write_sysreg_el1(ctxt->sys_regs[TCR_EL1],	SYS_TCR);
> +	}
>  }
>  


> diff --git a/arch/arm64/kvm/hyp/sysreg-sr.c b/arch/arm64/kvm/hyp/sysreg-sr.c
> index 7ddbc849b580..fb97547bfa79 100644
> --- a/arch/arm64/kvm/hyp/sysreg-sr.c
> +++ b/arch/arm64/kvm/hyp/sysreg-sr.c
> @@ -117,12 +117,26 @@ static void __hyp_text __sysreg_restore_el1_state(struct kvm_cpu_context *ctxt)
>  {
>  	write_sysreg(ctxt->sys_regs[MPIDR_EL1],		vmpidr_el2);
>  	write_sysreg(ctxt->sys_regs[CSSELR_EL1],	csselr_el1);
> -	write_sysreg_el1(ctxt->sys_regs[SCTLR_EL1],	SYS_SCTLR);
> +
> +	if (!cpus_have_const_cap(ARM64_WORKAROUND_1319367)) {
> +		write_sysreg_el1(ctxt->sys_regs[SCTLR_EL1],	SYS_SCTLR);
> +		write_sysreg_el1(ctxt->sys_regs[TCR_EL1],	SYS_TCR);
> +	} else	if (!ctxt->__hyp_running_vcpu) {
> +		/*
> +		 * Must only be done for guest registers, hence the context
> +		 * test. We'recoming from the host, so SCTLR.M is already

(Nit: We'recoming?)

> +		 * set. Pairs with __activate_traps_nvhe().
> +		 */
> +		write_sysreg_el1((ctxt->sys_regs[TCR_EL1] |
> +				  TCR_EPD1_MASK | TCR_EPD0_MASK),
> +				 SYS_TCR);
> +		isb();
> +	}



Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
