Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 275281B06A9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 12:34:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Anicx9cZh54h03h0UdUBfx/0V0PPHvRfKdgso7EBnMw=; b=sv4XWWB75pntCK
	mRdNCaA6xWoyDSliG7f+UMhe4RqWhwGeGcf7qYUdSYCT/2uuagsMelAl0RXHq1i1zVR5C32Bsq2JP
	nmVJSy2EEy6/zkM6R3JB/JmaW/qQT1D0vPV/HEF8Yw+cuJ1hfHRbDxE5eQXfLFK22ynejJ+ZRaGMo
	EC+tA50W1ZvFPxUtiO2BuFl0Aux9pSMT41xh1uDriI9X1MKh7BDX1P5eOcBxgaGy940lV+ckFcX1n
	CXzDGvpYpq0CGJbL8ucSJbX1DJA3drxhza72ZTOq3WGqbNJtYJyad/HheRdjlhcUweHyRMDOkefk4
	sZu3AaakIBZLBFZ2VwsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQTlK-00036m-0N; Mon, 20 Apr 2020 10:34:50 +0000
Received: from mail.loongson.cn ([114.242.206.163] helo=loongson.cn)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQTl8-000340-Tx
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 10:34:43 +0000
Received: from [10.20.42.25] (unknown [10.20.42.25])
 by mail.loongson.cn (Coremail) with SMTP id AQAAf9Dxj9xHep1eHB0qAA--.15S3;
 Mon, 20 Apr 2020 18:32:40 +0800 (CST)
Subject: Re: [PATCH 7/7] KVM: MIPS: clean up redundant kvm_run parameters in
 assembly
To: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>, pbonzini@redhat.com,
 tsbogend@alpha.franken.de, paulus@ozlabs.org, mpe@ellerman.id.au,
 benh@kernel.crashing.org, borntraeger@de.ibm.com, frankja@linux.ibm.com,
 david@redhat.com, cohuck@redhat.com, heiko.carstens@de.ibm.com,
 gor@linux.ibm.com, sean.j.christopherson@intel.com, vkuznets@redhat.com,
 wanpengli@tencent.com, jmattson@google.com, joro@8bytes.org,
 tglx@linutronix.de, mingo@redhat.com, bp@alien8.de, x86@kernel.org,
 hpa@zytor.com, maz@kernel.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 christoffer.dall@arm.com, peterx@redhat.com, thuth@redhat.com
References: <20200419075106.16248-1-tianjia.zhang@linux.alibaba.com>
 <20200419075106.16248-8-tianjia.zhang@linux.alibaba.com>
From: maobibo <maobibo@loongson.cn>
Message-ID: <0b110e7f-9d08-496e-158e-8c3ff7307423@loongson.cn>
Date: Mon, 20 Apr 2020 18:32:39 +0800
User-Agent: Mozilla/5.0 (X11; Linux mips64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <20200419075106.16248-8-tianjia.zhang@linux.alibaba.com>
X-CM-TRANSID: AQAAf9Dxj9xHep1eHB0qAA--.15S3
X-Coremail-Antispam: 1UD129KBjvJXoW3WrWrJr1kWw4ruF1kArW7twb_yoW7CFWUpF
 n7C3WDua1IqrWUK34xArsY9F4aqrs8Kr17ua4UJFWYqw1YqF1rtFs2krZ8Ar98Cr1F93Wf
 ZF9YqFn8Crs2ywUanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDU0xBIdaVrnRJUUU9jb7Iv0xC_Kw4lb4IE77IF4wAFF20E14v26rWj6s0DM7CY07I2
 0VC2zVCF04k26cxKx2IYs7xG6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rw
 A2F7IY1VAKz4vEj48ve4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Xr0_Ar1l84ACjcxK6xII
 jxv20xvEc7CjxVAFwI0_Gr1j6F4UJwA2z4x0Y4vEx4A2jsIE14v26F4UJVW0owA2z4x0Y4
 vEx4A2jsIEc7CjxVAFwI0_GcCE3s1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xv
 F2IEw4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_Jr0_Jr4lYx0Ex4A2jsIE14v26r1j6r
 4UMcvjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvEwIxGrwACI402YVCY1x02628vn2kIc2xK
 xwCYjI0SjxkI62AI1cAE67vIY487MxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r
 1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CE
 b7AF67AKxVWrXVW8Jr1lIxkGc2Ij64vIr41lIxAIcVC0I7IYx2IY67AKxVWUJVWUCwCI42
 IY6xIIjxv20xvEc7CjxVAFwI0_Gr0_Cr1lIxAIcVCF04k26cxKx2IYs7xG6rW3Jr0E3s1l
 IxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxVW8JVW8JrUvcSsGvf
 C2KfnxnUUI43ZEXa7IU56KZtUUUUU==
X-CM-SenderInfo: xpdruxter6z05rqj20fqof0/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_033439_311982_9448ACBF 
X-CRM114-Status: GOOD (  21.35  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-s390@vger.kernel.org, kvm@vger.kernel.org, linux-mips@vger.kernel.org,
 kvm-ppc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 04/19/2020 03:51 PM, Tianjia Zhang wrote:
> In the current kvm version, 'kvm_run' has been included in the 'kvm_vcpu'
> structure. Earlier than historical reasons, many kvm-related function
> parameters retain the 'kvm_run' and 'kvm_vcpu' parameters at the same time.
> This patch does a unified cleanup of these remaining redundant parameters.
> 
> Signed-off-by: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
> ---
>  arch/mips/include/asm/kvm_host.h |  4 ++--
>  arch/mips/kvm/entry.c            | 15 +++++----------
>  arch/mips/kvm/mips.c             |  3 ++-
>  arch/mips/kvm/trap_emul.c        |  2 +-
>  arch/mips/kvm/vz.c               |  2 +-
>  5 files changed, 11 insertions(+), 15 deletions(-)
> 
> diff --git a/arch/mips/include/asm/kvm_host.h b/arch/mips/include/asm/kvm_host.h
> index 971439297cea..db915c55166d 100644
> --- a/arch/mips/include/asm/kvm_host.h
> +++ b/arch/mips/include/asm/kvm_host.h
> @@ -310,7 +310,7 @@ struct kvm_mmu_memory_cache {
>  #define KVM_MIPS_GUEST_TLB_SIZE	64
>  struct kvm_vcpu_arch {
>  	void *guest_ebase;
> -	int (*vcpu_run)(struct kvm_run *run, struct kvm_vcpu *vcpu);
> +	int (*vcpu_run)(struct kvm_vcpu *vcpu);
>  
>  	/* Host registers preserved across guest mode execution */
>  	unsigned long host_stack;
> @@ -821,7 +821,7 @@ int kvm_mips_emulation_init(struct kvm_mips_callbacks **install_callbacks);
>  /* Debug: dump vcpu state */
>  int kvm_arch_vcpu_dump_regs(struct kvm_vcpu *vcpu);
>  
> -extern int kvm_mips_handle_exit(struct kvm_run *run, struct kvm_vcpu *vcpu);
> +extern int kvm_mips_handle_exit(struct kvm_vcpu *vcpu);
>  
>  /* Building of entry/exception code */
>  int kvm_mips_entry_setup(void);
> diff --git a/arch/mips/kvm/entry.c b/arch/mips/kvm/entry.c
> index 16e1c93b484f..e3f29af3b6cd 100644
> --- a/arch/mips/kvm/entry.c
> +++ b/arch/mips/kvm/entry.c
> @@ -204,7 +204,7 @@ static inline void build_set_exc_base(u32 **p, unsigned int reg)
>   * Assemble the start of the vcpu_run function to run a guest VCPU. The function
>   * conforms to the following prototype:
>   *
> - * int vcpu_run(struct kvm_run *run, struct kvm_vcpu *vcpu);
> + * int vcpu_run(struct kvm_vcpu *vcpu);
>   *
>   * The exit from the guest and return to the caller is handled by the code
>   * generated by kvm_mips_build_ret_to_host().
> @@ -217,8 +217,7 @@ void *kvm_mips_build_vcpu_run(void *addr)
>  	unsigned int i;
>  
>  	/*
> -	 * A0: run
> -	 * A1: vcpu
> +	 * A0: vcpu
>  	 */
>  
>  	/* k0/k1 not being used in host kernel context */
> @@ -237,10 +236,10 @@ void *kvm_mips_build_vcpu_run(void *addr)
>  	kvm_mips_build_save_scratch(&p, V1, K1);
>  
>  	/* VCPU scratch register has pointer to vcpu */
> -	UASM_i_MTC0(&p, A1, scratch_vcpu[0], scratch_vcpu[1]);
> +	UASM_i_MTC0(&p, A0, scratch_vcpu[0], scratch_vcpu[1]);
>  
>  	/* Offset into vcpu->arch */
> -	UASM_i_ADDIU(&p, K1, A1, offsetof(struct kvm_vcpu, arch));
> +	UASM_i_ADDIU(&p, K1, A0, offsetof(struct kvm_vcpu, arch));
>  
>  	/*
>  	 * Save the host stack to VCPU, used for exception processing
> @@ -628,10 +627,7 @@ void *kvm_mips_build_exit(void *addr)
>  	/* Now that context has been saved, we can use other registers */
>  
>  	/* Restore vcpu */
> -	UASM_i_MFC0(&p, S1, scratch_vcpu[0], scratch_vcpu[1]);
> -
> -	/* Restore run (vcpu->run) */
> -	UASM_i_LW(&p, S0, offsetof(struct kvm_vcpu, run), S1);
> +	UASM_i_MFC0(&p, S0, scratch_vcpu[0], scratch_vcpu[1]);
>  
>  	/*
>  	 * Save Host level EPC, BadVaddr and Cause to VCPU, useful to process
> @@ -793,7 +789,6 @@ void *kvm_mips_build_exit(void *addr)
>  	 * with this in the kernel
>  	 */
>  	uasm_i_move(&p, A0, S0);
> -	uasm_i_move(&p, A1, S1);
>  	UASM_i_LA(&p, T9, (unsigned long)kvm_mips_handle_exit);
>  	uasm_i_jalr(&p, RA, T9);
>  	 UASM_i_ADDIU(&p, SP, SP, -CALLFRAME_SIZ);

I suggest keeping asm code untouched, the change for c code is much easier to understand, however I do not see obvious advantage to remove one redundant function parameter :) 


regards
bibo,mao


> diff --git a/arch/mips/kvm/mips.c b/arch/mips/kvm/mips.c
> index 9710477a9827..32850470c037 100644
> --- a/arch/mips/kvm/mips.c
> +++ b/arch/mips/kvm/mips.c
> @@ -1186,8 +1186,9 @@ static void kvm_mips_set_c0_status(void)
>  /*
>   * Return value is in the form (errcode<<2 | RESUME_FLAG_HOST | RESUME_FLAG_NV)
>   */
> -int kvm_mips_handle_exit(struct kvm_run *run, struct kvm_vcpu *vcpu)
> +int kvm_mips_handle_exit(struct kvm_vcpu *vcpu)
>  {
> +	struct kvm_run *run = vcpu->run;
>  	u32 cause = vcpu->arch.host_cp0_cause;
>  	u32 exccode = (cause >> CAUSEB_EXCCODE) & 0x1f;
>  	u32 __user *opc = (u32 __user *) vcpu->arch.pc;
> diff --git a/arch/mips/kvm/trap_emul.c b/arch/mips/kvm/trap_emul.c
> index d822f3aee3dc..04c864cc356a 100644
> --- a/arch/mips/kvm/trap_emul.c
> +++ b/arch/mips/kvm/trap_emul.c
> @@ -1238,7 +1238,7 @@ static int kvm_trap_emul_vcpu_run(struct kvm_vcpu *vcpu)
>  	 */
>  	kvm_mips_suspend_mm(cpu);
>  
> -	r = vcpu->arch.vcpu_run(vcpu->run, vcpu);
> +	r = vcpu->arch.vcpu_run(vcpu);
>  
>  	/* We may have migrated while handling guest exits */
>  	cpu = smp_processor_id();
> diff --git a/arch/mips/kvm/vz.c b/arch/mips/kvm/vz.c
> index 94f1d23828e3..c5878fa0636d 100644
> --- a/arch/mips/kvm/vz.c
> +++ b/arch/mips/kvm/vz.c
> @@ -3152,7 +3152,7 @@ static int kvm_vz_vcpu_run(struct kvm_vcpu *vcpu)
>  	kvm_vz_vcpu_load_tlb(vcpu, cpu);
>  	kvm_vz_vcpu_load_wired(vcpu);
>  
> -	r = vcpu->arch.vcpu_run(vcpu->run, vcpu);
> +	r = vcpu->arch.vcpu_run(vcpu);
>  
>  	kvm_vz_vcpu_save_wired(vcpu);
>  
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
