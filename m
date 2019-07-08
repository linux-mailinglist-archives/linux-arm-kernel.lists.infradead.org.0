Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C22F661C6B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 11:29:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XGWCunND6Q4ET9UE+fCr4qH1mpZrIhI7/2jEvBzuy4Q=; b=AW7DoVWQMRIGJ8
	CXZ79uUaXBGtzofwlXa6eA5hBnL9/itOVqptfuxOruggSvq/mb9OFy+zkKPLjcePoi4eEfxai+Qlj
	o0LbMs5jOVxLWcvsfHivtDTxvlfcCQL4SJ31ufC7F+8gMeXG2H+PIpFAqxzRCHEGt8m7YGUwpvXM+
	d9kjQ9NCR2nlGvTj+iTvJ1ARPt1b0a5rqOsSB1KZvQc6UCPXxJNXB+hV1pteB2wSMt8U9TCTDo/BP
	rbuPCMPKGYHD7QpPFHeLL1Ryt8J6Vsz6KpqV55dlLQHxvAc+/TTh5iIMrTM1QVxVMN7mbTA6K3RMl
	BVDEQEt07+xt0zQyPagg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkPx8-0006tY-HH; Mon, 08 Jul 2019 09:28:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkPwm-0006sd-IG
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 09:28:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 29858360;
 Mon,  8 Jul 2019 02:28:28 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 18C103F246;
 Mon,  8 Jul 2019 02:28:26 -0700 (PDT)
Date: Mon, 8 Jul 2019 10:28:24 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: [PATCH] KVM: arm/arm64: Initialise host's MPIDRs by reading the
 actual register
Message-ID: <20190708102824.01670aed@donnerap.cambridge.arm.com>
In-Reply-To: <20190706101311.15500-1-marc.zyngier@arm.com>
References: <20190706101311.15500-1-marc.zyngier@arm.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_022832_694270_73FB99AB 
X-CRM114-Status: GOOD (  22.03  )
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
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, James Morse <james.morse@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 6 Jul 2019 11:13:11 +0100
Marc Zyngier <marc.zyngier@arm.com> wrote:

Hi,

> As part of setting up the host context, we populate its
> MPIDR by using cpu_logical_map(). It turns out that contrary
> to arm64, cpu_logical_map() on 32bit ARM doesn't return the
> *full* MPIDR, but a truncated version.
> 
> This leaves the host MPIDR slightly corrupted after the first
> run of a VM, since we won't correctly restore the MPIDR on
> exit. Oops.
> 
> Since we cannot trust cpu_logical_map(), let's adopt a different
> strategy. We move the initialization of the host CPU context as
> part of the per-CPU initialization (which, in retrospect, makes
> a lot of sense), and directly read the MPIDR from the HW. This
> is guaranteed to work on both arm and arm64.

Many thanks for the quick patch, it indeed fixes it for me on the Midway.
Also briefly tested on arm64, still works.

Patch looks good to me, but I think we can loose the inclusion of
smp_plat.h, which the original patch introduced.
We might want to replace it with asm/cputype.h, the provider of
read_cpuid_mpidr(). It worked without it, though, as one of the headers
pulled it in.

> Reported-by: Andre Przywara <Andre.Przywara@arm.com>

Tested-by: Andre Przywara <andre.przywara@arm.com>

Cheers,
Andre.

> Fixes: 32f139551954 ("arm/arm64: KVM: Statically configure the host's view of MPIDR")
> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
> ---
>  arch/arm/include/asm/kvm_host.h   | 5 ++---
>  arch/arm64/include/asm/kvm_host.h | 5 ++---
>  virt/kvm/arm/arm.c                | 3 ++-
>  3 files changed, 6 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm/include/asm/kvm_host.h b/arch/arm/include/asm/kvm_host.h
> index e74e8f408987..df515dff536d 100644
> --- a/arch/arm/include/asm/kvm_host.h
> +++ b/arch/arm/include/asm/kvm_host.h
> @@ -147,11 +147,10 @@ struct kvm_host_data {
>  
>  typedef struct kvm_host_data kvm_host_data_t;
>  
> -static inline void kvm_init_host_cpu_context(struct kvm_cpu_context *cpu_ctxt,
> -					     int cpu)
> +static inline void kvm_init_host_cpu_context(struct kvm_cpu_context *cpu_ctxt)
>  {
>  	/* The host's MPIDR is immutable, so let's set it up at boot time */
> -	cpu_ctxt->cp15[c0_MPIDR] = cpu_logical_map(cpu);
> +	cpu_ctxt->cp15[c0_MPIDR] = read_cpuid_mpidr();
>  }
>  
>  struct vcpu_reset_state {
> diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
> index d9770daf3d7d..d1167fe71f9a 100644
> --- a/arch/arm64/include/asm/kvm_host.h
> +++ b/arch/arm64/include/asm/kvm_host.h
> @@ -484,11 +484,10 @@ struct kvm_vcpu *kvm_mpidr_to_vcpu(struct kvm *kvm, unsigned long mpidr);
>  
>  DECLARE_PER_CPU(kvm_host_data_t, kvm_host_data);
>  
> -static inline void kvm_init_host_cpu_context(struct kvm_cpu_context *cpu_ctxt,
> -					     int cpu)
> +static inline void kvm_init_host_cpu_context(struct kvm_cpu_context *cpu_ctxt)
>  {
>  	/* The host's MPIDR is immutable, so let's set it up at boot time */
> -	cpu_ctxt->sys_regs[MPIDR_EL1] = cpu_logical_map(cpu);
> +	cpu_ctxt->sys_regs[MPIDR_EL1] = read_cpuid_mpidr();
>  }
>  
>  void __kvm_enable_ssbs(void);
> diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
> index bd5c55916d0d..f149c79fd6ef 100644
> --- a/virt/kvm/arm/arm.c
> +++ b/virt/kvm/arm/arm.c
> @@ -1332,6 +1332,8 @@ static void cpu_hyp_reset(void)
>  
>  static void cpu_hyp_reinit(void)
>  {
> +	kvm_init_host_cpu_context(&this_cpu_ptr(&kvm_host_data)->host_ctxt);
> +
>  	cpu_hyp_reset();
>  
>  	if (is_kernel_in_hyp_mode())
> @@ -1569,7 +1571,6 @@ static int init_hyp_mode(void)
>  		kvm_host_data_t *cpu_data;
>  
>  		cpu_data = per_cpu_ptr(&kvm_host_data, cpu);
> -		kvm_init_host_cpu_context(&cpu_data->host_ctxt, cpu);
>  		err = create_hyp_mappings(cpu_data, cpu_data + 1, PAGE_HYP);
>  
>  		if (err) {


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
