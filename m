Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F315C131
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 18:36:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uF+JUjayYE0Is4TDrWGfpt9anixrTdo+wZm+VJi+540=; b=chCS7yOanrzSd32CEhacdQdUI
	Rst1uY4MyTQUJTG9tSR663qWUNCDjm0I4kxQMouWnr2BXoSG8Swqs3Lj1xfZqz5jV1H7lx6xMhFgP
	/fjnHH+X6rW2WsGOQQfnJyYhYm/VnvTAshZrn/puu3hLFUGqCa9VPkyDpEBDclVnGe1iMNfo9UNzo
	btiAseLfzZYcW7+R41c8+/E9Tb3nGxvLWTiTl6xtyHY3gZ/jnHq7Ln0bwbkV5f2ktp/kqcrrBCQIH
	3baOM9bBxF8OAsh57cgvrRkAYXVxpyxuAKOfPK0fo4XlBQknaTiWGv1R56uSXA8pVgNptq7AmIPtF
	K7/jCnQnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhzHr-0004YJ-5D; Mon, 01 Jul 2019 16:36:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hhzHi-0004Xg-Od
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 16:36:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 81ED62B;
 Mon,  1 Jul 2019 09:36:05 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (dawn-kernel.cambridge.arm.com
 [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 466FC3F703;
 Mon,  1 Jul 2019 09:36:04 -0700 (PDT)
Subject: Re: [PATCH 07/59] KVM: arm64: nv: Add EL2 system registers to vcpu
 context
To: marc.zyngier@arm.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org
References: <20190621093843.220980-1-marc.zyngier@arm.com>
 <20190621093843.220980-8-marc.zyngier@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <37d056e6-85e1-5d6e-3c1c-e89d00140fdf@arm.com>
Date: Mon, 1 Jul 2019 17:36:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.3.0
MIME-Version: 1.0
In-Reply-To: <20190621093843.220980-8-marc.zyngier@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_093606_894814_CF833B8A 
X-CRM114-Status: GOOD (  22.80  )
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
Cc: julien.thierry@arm.com, andre.przywara@arm.com, christoffer.dall@arm.com,
 dave.martin@arm.com, james.morse@arm.com, jintack@cs.columbia.edu
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 21/06/2019 10:37, Marc Zyngier wrote:
> From: Jintack Lim <jintack.lim@linaro.org>
> 
> ARM v8.3 introduces a new bit in the HCR_EL2, which is the NV bit. When
> this bit is set, accessing EL2 registers in EL1 traps to EL2. In
> addition, executing the following instructions in EL1 will trap to EL2:
> tlbi, at, eret, and msr/mrs instructions to access SP_EL1. Most of the
> instructions that trap to EL2 with the NV bit were undef at EL1 prior to
> ARM v8.3. The only instruction that was not undef is eret.
> 
> This patch sets up a handler for EL2 registers and SP_EL1 register
> accesses at EL1. The host hypervisor keeps those register values in
> memory, and will emulate their behavior.
> 
> This patch doesn't set the NV bit yet. It will be set in a later patch
> once nested virtualization support is completed.
> 
> Signed-off-by: Jintack Lim <jintack.lim@linaro.org>
> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
> ---
>   arch/arm64/include/asm/kvm_host.h | 37 +++++++++++++++-
>   arch/arm64/include/asm/sysreg.h   | 50 ++++++++++++++++++++-
>   arch/arm64/kvm/sys_regs.c         | 74 ++++++++++++++++++++++++++++---
>   3 files changed, 154 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
> index 4bcd9c1291d5..2d4290d2513a 100644
> --- a/arch/arm64/include/asm/kvm_host.h
> +++ b/arch/arm64/include/asm/kvm_host.h
> @@ -173,12 +173,47 @@ enum vcpu_sysreg {
>   	APGAKEYLO_EL1,
>   	APGAKEYHI_EL1,
>   
> -	/* 32bit specific registers. Keep them at the end of the range */
> +	/* 32bit specific registers. */
>   	DACR32_EL2,	/* Domain Access Control Register */
>   	IFSR32_EL2,	/* Instruction Fault Status Register */
>   	FPEXC32_EL2,	/* Floating-Point Exception Control Register */
>   	DBGVCR32_EL2,	/* Debug Vector Catch Register */
>   
> +	/* EL2 registers sorted ascending by Op0, Op1, CRn, CRm, Op2 */
> +	FIRST_EL2_SYSREG,
> +	VPIDR_EL2 = FIRST_EL2_SYSREG,
> +			/* Virtualization Processor ID Register */
> +	VMPIDR_EL2,	/* Virtualization Multiprocessor ID Register */
> +	SCTLR_EL2,	/* System Control Register (EL2) */
> +	ACTLR_EL2,	/* Auxiliary Control Register (EL2) */
> +	HCR_EL2,	/* Hypervisor Configuration Register */
> +	MDCR_EL2,	/* Monitor Debug Configuration Register (EL2) */
> +	CPTR_EL2,	/* Architectural Feature Trap Register (EL2) */
> +	HSTR_EL2,	/* Hypervisor System Trap Register */
> +	HACR_EL2,	/* Hypervisor Auxiliary Control Register */
> +	TTBR0_EL2,	/* Translation Table Base Register 0 (EL2) */
> +	TTBR1_EL2,	/* Translation Table Base Register 1 (EL2) */
> +	TCR_EL2,	/* Translation Control Register (EL2) */
> +	VTTBR_EL2,	/* Virtualization Translation Table Base Register */
> +	VTCR_EL2,	/* Virtualization Translation Control Register */
> +	SPSR_EL2,	/* EL2 saved program status register */
> +	ELR_EL2,	/* EL2 exception link register */
> +	AFSR0_EL2,	/* Auxiliary Fault Status Register 0 (EL2) */
> +	AFSR1_EL2,	/* Auxiliary Fault Status Register 1 (EL2) */
> +	ESR_EL2,	/* Exception Syndrome Register (EL2) */
> +	FAR_EL2,	/* Hypervisor IPA Fault Address Register */
> +	HPFAR_EL2,	/* Hypervisor IPA Fault Address Register */
> +	MAIR_EL2,	/* Memory Attribute Indirection Register (EL2) */
> +	AMAIR_EL2,	/* Auxiliary Memory Attribute Indirection Register (EL2) */
> +	VBAR_EL2,	/* Vector Base Address Register (EL2) */
> +	RVBAR_EL2,	/* Reset Vector Base Address Register */
> +	RMR_EL2,	/* Reset Management Register */
> +	CONTEXTIDR_EL2,	/* Context ID Register (EL2) */
> +	TPIDR_EL2,	/* EL2 Software Thread ID Register */
> +	CNTVOFF_EL2,	/* Counter-timer Virtual Offset register */
> +	CNTHCTL_EL2,	/* Counter-timer Hypervisor Control register */
> +	SP_EL2,		/* EL2 Stack Pointer */

Does it need to include the following registers Counter-timer Hyp Physical timer
registers ? i.e, CNTHP_{CTL,CVAL,TVAL}_EL2. Or do we have some other magic with
NV for the virtual EL2 ?

Cheers
Suzuki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
