Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E52DB396
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 19:42:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I4wBs9BJmjjvS/spLrUR6VsKGQ9/EIXexC/M59W0eW8=; b=BxbzciipcVMTGY
	u/vfZKJ1kjTG/rHeaCJMxko7XbHYegpG2BWHxu0U3wmixMUDLZ0WCfyW3QVUWtRzhXF+gXKWXmADY
	AkfDsvh8x4/527aqC9GodSvreePpHWh9GOyds7pIU4e3S0J+iJV8vpfd7syJv5Rk0LtiydHV3DKpE
	2svgkm/j8GO9hIsiAMRY0EZYNFQwiQoNnpNRpc1wQTBeEvyPIpr+zToMXN6y3Z3OgfcQS66Oz/SU9
	/gd043aSQ6pIlRR1ynm0jZN9rbe07LTVBliiK8KSGnLIFgYp16d0u5WKIAgROXwNUIspl76dCz92q
	YXnzG00rOFScWQdE9gpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL9mr-0002TR-O5; Thu, 17 Oct 2019 17:42:09 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL9ma-00025k-Fe
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 17:41:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7A68E329;
 Thu, 17 Oct 2019 10:41:38 -0700 (PDT)
Received: from [10.1.196.105] (unknown [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 597AF3F718;
 Thu, 17 Oct 2019 10:41:37 -0700 (PDT)
Subject: Re: [PATCH] arm64: KVM: Invoke compute_layout() before alternatives
 are applied
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
References: <20191016165953.o6ogh4fdmsjmd2sw@linutronix.de>
From: James Morse <james.morse@arm.com>
Message-ID: <ecfbb413-e97e-c3eb-e051-1f218b387edd@arm.com>
Date: Thu, 17 Oct 2019 18:41:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191016165953.o6ogh4fdmsjmd2sw@linutronix.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_104152_607233_1F4AD7DF 
X-CRM114-Status: GOOD (  19.84  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sebastian,

On 16/10/2019 17:59, Sebastian Andrzej Siewior wrote:
> compute_layout() is invoked as part of an alternative fixup under
> stop_machine(). This function invokes get_random_long() which acquires a
> sleeping lock on -RT which can not be acquired in this context.

> Rename compute_layout() to kvm_compute_layout() and invoke it before
> stop_machines() invokes the fixups.

Nit: stop_machine() applies the alternatives.


> Add a __init prefix to
> kvm_compute_layout() because the caller has it, too (and so the code can
> be discarded after boot).


> diff --git a/arch/arm64/include/asm/alternative.h b/arch/arm64/include/asm/alternative.h
> index b9f8d787eea9f..7532f044d713b 100644
> --- a/arch/arm64/include/asm/alternative.h
> +++ b/arch/arm64/include/asm/alternative.h
> @@ -35,6 +35,12 @@ void apply_alternatives_module(void *start, size_t length);
>  static inline void apply_alternatives_module(void *start, size_t length) { }
>  #endif
>  
> +#ifdef CONFIG_KVM_ARM_HOST
> +void kvm_compute_layout(void);
> +#else
> +static inline void kvm_compute_layout(void) { }
> +#endif

I don't think alternative.h is where this belongs... Could you move it to kvm_mmu.h, which
is where the kvm_update_va_mask macro that depends on it lives.

You can avoid the #ifdef if you use if(IS_ENABLED()) in the caller.
This has the advantage that the compiler will catch invalid C regardless of the build
options. (and its easier on the eye)


> diff --git a/arch/arm64/kernel/alternative.c b/arch/arm64/kernel/alternative.c
> index d1757ef1b1e74..c28652ee06f64 100644
> --- a/arch/arm64/kernel/alternative.c
> +++ b/arch/arm64/kernel/alternative.c
> @@ -238,6 +238,7 @@ static int __apply_alternatives_multi_stop(void *unused)
>  void __init apply_alternatives_all(void)
>  {
>  	/* better not try code patching on a live SMP system */
> +	kvm_compute_layout();
>  	stop_machine(__apply_alternatives_multi_stop, NULL, cpu_online_mask);
>  }

This is a funny place to do this kvm check, its not needed to apply the alternatives.

apply_alternatives_all() is only called from smp_cpus_done(), immediately before it calls
hyp_mode_check(), could we move it there to live with the 'started at EL2' message?

(to save you battling the header-jungle: To include asm/kvm_mmu.h, you need to include
linux/kvm_host.h first)


We end up calling it unconditionally, but I don't think that matters, both callers do the
right thing.

With that:
Reviewed-by: James Morse <james.morse@arm.com>


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
