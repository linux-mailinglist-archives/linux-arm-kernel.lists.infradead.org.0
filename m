Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A79225CEFC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 14:00:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g9WZkPQLljeij37vrhwaJrrdd4kcUbmO2ilF+5chDyI=; b=Pg8Rj8MOm7QKrQ
	G2KEIiFpBd1sbPCI9e7IHxWzEYzCysZ5SBX+rIoXc9DJ+xj0q7wumeGElWuWxyzJyMUFJ7UwgI9xn
	S+L30yId/JCCCjOi3Pfy+TtW+QwurYlvCIEdQ4HF6DVjKGfnWPNQFrmTxQ1aeMzolyICdYg5uNeqj
	6QECW+4x0Nedk/oLxqJCj1JGaSvia6FXZxdNyh5m6T+mhNQacNjOKUgn5iHeK4ZeIRt4vUKDJ06tF
	V9R4Q2/T4F7uwnK+Pf0EpBOsJk21DCvgu8qFZVKhj2irEniNq7+Jq5a0BO+aTCg0ol9KoW304Bg2/
	baQCjTdM5QA5oq8TZH7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiHSt-0002lw-RO; Tue, 02 Jul 2019 12:00:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hiHSi-0002lE-PC
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 12:00:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8726A344;
 Tue,  2 Jul 2019 05:00:37 -0700 (PDT)
Received: from [10.1.31.185] (unknown [10.1.31.185])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 48EDB3F246;
 Tue,  2 Jul 2019 05:00:36 -0700 (PDT)
Subject: Re: [PATCH 12/59] KVM: arm64: nv: Handle trapped ERET from virtual EL2
To: Marc Zyngier <marc.zyngier@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
References: <20190621093843.220980-1-marc.zyngier@arm.com>
 <20190621093843.220980-13-marc.zyngier@arm.com>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <314172b1-f65c-17b8-10ec-1b2ff58b9bc2@arm.com>
Date: Tue, 2 Jul 2019 13:00:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190621093843.220980-13-marc.zyngier@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_050040_910368_4BC1D51E 
X-CRM114-Status: GOOD (  19.24  )
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
Cc: Andre Przywara <andre.przywara@arm.com>, Dave Martin <Dave.Martin@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 6/21/19 10:37 AM, Marc Zyngier wrote:
> From: Christoffer Dall <christoffer.dall@arm.com>
>
> When a guest hypervisor running virtual EL2 in EL1 executes an ERET
> instruction, we will have set HCR_EL2.NV which traps ERET to EL2, so
> that we can emulate the exception return in software.
>
> Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>
> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
> ---
>  arch/arm64/include/asm/esr.h     | 3 ++-
>  arch/arm64/include/asm/kvm_arm.h | 2 +-
>  arch/arm64/kvm/handle_exit.c     | 8 ++++++++
>  3 files changed, 11 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/include/asm/esr.h b/arch/arm64/include/asm/esr.h
> index 0e27fe91d5ea..f85aa269082c 100644
> --- a/arch/arm64/include/asm/esr.h
> +++ b/arch/arm64/include/asm/esr.h
> @@ -45,7 +45,8 @@
>  #define ESR_ELx_EC_SMC64	(0x17)	/* EL2 and above */
>  #define ESR_ELx_EC_SYS64	(0x18)
>  #define ESR_ELx_EC_SVE		(0x19)
> -/* Unallocated EC: 0x1A - 0x1E */
> +#define ESR_ELx_EC_ERET		(0x1A)  /* EL2 only */

From ARM DDI 0487D.b, about HCR_EL2.NV (page D12-2889):

"The priority of this trap is higher than the priority of the HCR_EL2.API trap.
If both of these bits are set so that EL1 execution of an ERETAA or ERETAB
instruction is trapped to EL2, then the syndrome reported is 0x1A."

I'm not familiar with the pointer authentication code, but it looks like the
HCR_EL2.API bit will trap if userspace sets the pointer authentication vcpu
feature, and I don't see any handling of the ERETAA or ERETAB instructions in
kvm_emulate_nested_eret. Is that pending in the next iteration of the series? Or
are the two features incompatible?

> +/* Unallocated EC: 0x1B - 0x1E */
>  #define ESR_ELx_EC_IMP_DEF	(0x1f)	/* EL3 only */
>  #define ESR_ELx_EC_IABT_LOW	(0x20)
>  #define ESR_ELx_EC_IABT_CUR	(0x21)
> diff --git a/arch/arm64/include/asm/kvm_arm.h b/arch/arm64/include/asm/kvm_arm.h
> index 9d70a5362fbb..b2e363ac624d 100644
> --- a/arch/arm64/include/asm/kvm_arm.h
> +++ b/arch/arm64/include/asm/kvm_arm.h
> @@ -333,7 +333,7 @@
>  	ECN(SP_ALIGN), ECN(FP_EXC32), ECN(FP_EXC64), ECN(SERROR), \
>  	ECN(BREAKPT_LOW), ECN(BREAKPT_CUR), ECN(SOFTSTP_LOW), \
>  	ECN(SOFTSTP_CUR), ECN(WATCHPT_LOW), ECN(WATCHPT_CUR), \
> -	ECN(BKPT32), ECN(VECTOR32), ECN(BRK64)
> +	ECN(BKPT32), ECN(VECTOR32), ECN(BRK64), ECN(ERET)
>  
>  #define CPACR_EL1_FPEN		(3 << 20)
>  #define CPACR_EL1_TTA		(1 << 28)
> diff --git a/arch/arm64/kvm/handle_exit.c b/arch/arm64/kvm/handle_exit.c
> index 6c0ac52b34cc..2517711f034f 100644
> --- a/arch/arm64/kvm/handle_exit.c
> +++ b/arch/arm64/kvm/handle_exit.c
> @@ -177,6 +177,13 @@ static int handle_sve(struct kvm_vcpu *vcpu, struct kvm_run *run)
>  {
>  	/* Until SVE is supported for guests: */
>  	kvm_inject_undefined(vcpu);
> +
> +	return 1;
> +}
> +
> +static int kvm_handle_eret(struct kvm_vcpu *vcpu, struct kvm_run *run)
> +{
> +	kvm_emulate_nested_eret(vcpu);
>  	return 1;
>  }
>  
> @@ -231,6 +238,7 @@ static exit_handle_fn arm_exit_handlers[] = {
>  	[ESR_ELx_EC_SMC64]	= handle_smc,
>  	[ESR_ELx_EC_SYS64]	= kvm_handle_sys_reg,
>  	[ESR_ELx_EC_SVE]	= handle_sve,
> +	[ESR_ELx_EC_ERET]	= kvm_handle_eret,
>  	[ESR_ELx_EC_IABT_LOW]	= kvm_handle_guest_abort,
>  	[ESR_ELx_EC_DABT_LOW]	= kvm_handle_guest_abort,
>  	[ESR_ELx_EC_SOFTSTP_LOW]= kvm_handle_guest_debug,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
