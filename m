Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBE7085E8D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 11:34:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K7rWtGhQsANZyhZxbJxX3J9rX7iK/aGLbkBIRuZuJsY=; b=SGkKuAaCvooluh
	3/ZNkRuwcxm+JpkR9wSnB4dloI8qLCYs+znf8zEaCCl3IwsKiaT6ysWSNo1khiZL3/kwDrUsMF5pZ
	lKfbK/JT/jcsxXloukAzfXpBwRPGSyb3Xp20Awit2k1zTSmy2WViHNe4WQsHoFvNF3GN7FwoAYD7B
	Rld3smYHddf921zjGC69GVS6bpDQ0YhfmXNVQt3HeJUPRWhmIzDwrnvE4lXOLIh3+vK/bTtZqfC6y
	mRcfOnixnTVM2IRlYt9pjzYMi7hks9bGJvCN1NJI9zFHbYdGtC/w0/MXAsqvQ2kxxy0ylQcdE1F+P
	pp+CG0cr2W7ubX7i4bfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hveot-0005dR-EV; Thu, 08 Aug 2019 09:34:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hveog-0005cn-5r
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 09:34:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1F5F11576;
 Thu,  8 Aug 2019 02:34:37 -0700 (PDT)
Received: from [10.1.196.217] (e121566-lin.cambridge.arm.com [10.1.196.217])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 50FAA3F706;
 Thu,  8 Aug 2019 02:34:36 -0700 (PDT)
Subject: Re: [PATCH 47/59] KVM: arm64: nv: Propagate CNTVOFF_EL2 to the
 virtual EL1 timer
To: Marc Zyngier <marc.zyngier@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
References: <20190621093843.220980-1-marc.zyngier@arm.com>
 <20190621093843.220980-48-marc.zyngier@arm.com>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <95edbe3a-bd6c-11b5-cfa9-6d5252dbb50c@arm.com>
Date: Thu, 8 Aug 2019 10:34:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190621093843.220980-48-marc.zyngier@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_023438_309026_EE44F2F2 
X-CRM114-Status: GOOD (  19.35  )
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
Cc: Andre Przywara <andre.przywara@arm.com>, Dave Martin <Dave.Martin@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/21/19 10:38 AM, Marc Zyngier wrote:
> We need to allow a guest hypervisor to virtualize the virtual timer.
> FOr that, let's propagate CNTVOFF_EL2 to the guest's view of that
> timer.
>
> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
> ---
>  arch/arm64/include/asm/kvm_host.h |  1 -
>  arch/arm64/kvm/sys_regs.c         |  8 ++++++--
>  include/kvm/arm_arch_timer.h      |  1 +
>  virt/kvm/arm/arch_timer.c         | 12 ++++++++++++
>  4 files changed, 19 insertions(+), 3 deletions(-)
>
> diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
> index b7c44adcdbf3..e0fe9acb46bf 100644
> --- a/arch/arm64/include/asm/kvm_host.h
> +++ b/arch/arm64/include/asm/kvm_host.h
> @@ -252,7 +252,6 @@ enum vcpu_sysreg {
>  	RMR_EL2,	/* Reset Management Register */
>  	CONTEXTIDR_EL2,	/* Context ID Register (EL2) */
>  	TPIDR_EL2,	/* EL2 Software Thread ID Register */
> -	CNTVOFF_EL2,	/* Counter-timer Virtual Offset register */
>  	CNTHCTL_EL2,	/* Counter-timer Hypervisor Control register */
>  	SP_EL2,		/* EL2 Stack Pointer */
>  
> diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
> index 1b8016330a19..2031a59fcf49 100644
> --- a/arch/arm64/kvm/sys_regs.c
> +++ b/arch/arm64/kvm/sys_regs.c
> @@ -150,7 +150,6 @@ struct el2_sysreg_map {
>  	PURE_EL2_SYSREG( RVBAR_EL2 ),
>  	PURE_EL2_SYSREG( RMR_EL2 ),
>  	PURE_EL2_SYSREG( TPIDR_EL2 ),
> -	PURE_EL2_SYSREG( CNTVOFF_EL2 ),
>  	PURE_EL2_SYSREG( CNTHCTL_EL2 ),
>  	PURE_EL2_SYSREG( HPFAR_EL2 ),
>  	EL2_SYSREG(      SCTLR_EL2,  SCTLR_EL1,      translate_sctlr ),
> @@ -1351,6 +1350,11 @@ static bool access_arch_timer(struct kvm_vcpu *vcpu,
>  		tmr = TIMER_PTIMER;
>  		treg = TIMER_REG_CVAL;
>  		break;
> +	case SYS_CNTVOFF_EL2:
> +		tmr = TIMER_VTIMER;
> +		treg = TIMER_REG_VOFF;
> +		break;
> +
>  	default:
>  		BUG();
>  	}
> @@ -2122,7 +2126,7 @@ static const struct sys_reg_desc sys_reg_descs[] = {
>  	{ SYS_DESC(SYS_CONTEXTIDR_EL2), access_rw, reset_val, CONTEXTIDR_EL2, 0 },
>  	{ SYS_DESC(SYS_TPIDR_EL2), access_rw, reset_val, TPIDR_EL2, 0 },
>  
> -	{ SYS_DESC(SYS_CNTVOFF_EL2), access_rw, reset_val, CNTVOFF_EL2, 0 },
> +	{ SYS_DESC(SYS_CNTVOFF_EL2), access_arch_timer },
>  	{ SYS_DESC(SYS_CNTHCTL_EL2), access_rw, reset_val, CNTHCTL_EL2, 0 },
>  
>  	{ SYS_DESC(SYS_CNTHP_TVAL_EL2), access_arch_timer },
> diff --git a/include/kvm/arm_arch_timer.h b/include/kvm/arm_arch_timer.h
> index 3a5d9255120e..3389606f3029 100644
> --- a/include/kvm/arm_arch_timer.h
> +++ b/include/kvm/arm_arch_timer.h
> @@ -23,6 +23,7 @@ enum kvm_arch_timer_regs {
>  	TIMER_REG_CVAL,
>  	TIMER_REG_TVAL,
>  	TIMER_REG_CTL,
> +	TIMER_REG_VOFF,
>  };
>  
>  struct arch_timer_context {
> diff --git a/virt/kvm/arm/arch_timer.c b/virt/kvm/arm/arch_timer.c
> index 3d84c240071d..1d53352c7d97 100644
> --- a/virt/kvm/arm/arch_timer.c
> +++ b/virt/kvm/arm/arch_timer.c
> @@ -913,6 +913,10 @@ static u64 kvm_arm_timer_read(struct kvm_vcpu *vcpu,
>  		val = kvm_phys_timer_read() - timer->cntvoff;
>  		break;
>  
> +	case TIMER_REG_VOFF:
> +		val = timer->cntvoff;
> +		break;
> +
>  	default:
>  		BUG();
>  	}
> @@ -955,6 +959,10 @@ static void kvm_arm_timer_write(struct kvm_vcpu *vcpu,
>  		timer->cnt_cval = val;
>  		break;
>  
> +	case TIMER_REG_VOFF:
> +		timer->cntvoff = val;
> +		break;
> +
>  	default:
>  		BUG();
>  	}
> @@ -1166,6 +1174,10 @@ int kvm_timer_enable(struct kvm_vcpu *vcpu)
>  		return -EINVAL;
>  	}
>  
> +	/* Nested virtualization requires zero offset for virtual EL2 */
> +	if (nested_virt_in_use(vcpu))
> +		vcpu_vtimer(vcpu)->cntvoff = 0;

I think this is related to the fact that the virtual offset is treated as 0 when
reading CNTVCT_EL0 from EL2, or from from EL2 and EL0 if E2H, TGE are set
(please correct me if I'm wrong).

However, when the guest runs in virtual EL2, the direct_vtimer is the hvtimer,
so the value that ends up in CNTVOFF_EL2 is vcpu_hvtimer(vcpu)->cntvoff.

Thanks,
Alex
> +
>  	get_timer_map(vcpu, &map);
>  
>  	ret = kvm_vgic_map_phys_irq(vcpu,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
