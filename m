Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6F211B02BA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 09:18:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RG/KvbkwyzIUOlrDN4LeZH6kTidINOlXoPDPjFx0KR0=; b=cMw7bVTgq5ly+pL4Zi4OP9e+v
	LoOZaL1v2z0b559QrlrT+MQFpUYL2utaWcNGjDxF5cAF5M2WursiQkqdPzxiBdbiG1rgvaps8D7k/
	yuMV/a17A4ydbYasGaEwQYSdFz2L6FI7Z5plZGauCHXvxg1dbj0R3kbkaQoQbqep59t+L3ezn1cpq
	TkcDDxLdNGb6MyhIyRv+WsHOK0upepFEqNHb18/4Z24zqa68h4Mq20tcs0jLGhFnYDWECXdJ19FI9
	5OmBBwNBvfzh5Er1K5iZSrm2ZyXnXl39i0/lGLo0cl/xCKXhE9Ij560mpi9BRhp/Co7BsGRnrOGGA
	tJg3+Cv6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQQh3-0000tu-Br; Mon, 20 Apr 2020 07:18:13 +0000
Received: from out30-57.freemail.mail.aliyun.com ([115.124.30.57])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQQgu-0000tR-7h
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 07:18:06 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R171e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04394;
 MF=tianjia.zhang@linux.alibaba.com; NM=1; PH=DS; RN=36; SR=0;
 TI=SMTPD_---0Tw1zGpr_1587367076; 
Received: from 30.27.118.66(mailfrom:tianjia.zhang@linux.alibaba.com
 fp:SMTPD_---0Tw1zGpr_1587367076) by smtp.aliyun-inc.com(127.0.0.1);
 Mon, 20 Apr 2020 15:17:58 +0800
Subject: Re: [PATCH 1/7] KVM: s390: clean up redundant 'kvm_run' parameters
To: Christian Borntraeger <borntraeger@de.ibm.com>, pbonzini@redhat.com,
 tsbogend@alpha.franken.de, paulus@ozlabs.org, mpe@ellerman.id.au,
 benh@kernel.crashing.org, frankja@linux.ibm.com, david@redhat.com,
 cohuck@redhat.com, heiko.carstens@de.ibm.com, gor@linux.ibm.com,
 sean.j.christopherson@intel.com, vkuznets@redhat.com, wanpengli@tencent.com,
 jmattson@google.com, joro@8bytes.org, tglx@linutronix.de, mingo@redhat.com,
 bp@alien8.de, x86@kernel.org, hpa@zytor.com, maz@kernel.org,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 christoffer.dall@arm.com, peterx@redhat.com, thuth@redhat.com
References: <20200419075106.16248-1-tianjia.zhang@linux.alibaba.com>
 <20200419075106.16248-2-tianjia.zhang@linux.alibaba.com>
 <7a783487-2f9b-08a6-0ff6-f57bb90495a1@de.ibm.com>
From: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
Message-ID: <e182050c-c5eb-8c83-df6e-2b46c1f15ca3@linux.alibaba.com>
Date: Mon, 20 Apr 2020 15:17:56 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <7a783487-2f9b-08a6-0ff6-f57bb90495a1@de.ibm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_001804_611781_94A667B5 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.57 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2020/4/20 15:07, Christian Borntraeger wrote:
> 
> 
> On 19.04.20 09:51, Tianjia Zhang wrote:
>> In the current kvm version, 'kvm_run' has been included in the 'kvm_vcpu'
>> structure. Earlier than historical reasons, many kvm-related function
>> parameters retain the 'kvm_run' and 'kvm_vcpu' parameters at the same time.
>> This patch does a unified cleanup of these remaining redundant parameters.
>>
>> Signed-off-by: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
>> ---
>>   arch/s390/kvm/kvm-s390.c | 127 +++++++++++++++++++++------------------
>>   1 file changed, 67 insertions(+), 60 deletions(-)
>>
>> diff --git a/arch/s390/kvm/kvm-s390.c b/arch/s390/kvm/kvm-s390.c
>> index 443af3ead739..cf420d013ba3 100644
>> --- a/arch/s390/kvm/kvm-s390.c
>> +++ b/arch/s390/kvm/kvm-s390.c
>> @@ -4173,24 +4173,25 @@ static int __vcpu_run(struct kvm_vcpu *vcpu)
>>   	return rc;
>>   }
>>   
>> -static void sync_regs_fmt2(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
>> +static void sync_regs_fmt2(struct kvm_vcpu *vcpu)
>>   {
>> +	struct kvm_run *run = vcpu->run;
> 
> Please use kvm_run as variable name. This makes all of the changes below go away.
> 

It's OK, I will fix it in v2 patch.

Thanks,
Tianjia

> 
>>   	struct runtime_instr_cb *riccb;
>>   	struct gs_cb *gscb;
>>   
>> -	riccb = (struct runtime_instr_cb *) &kvm_run->s.regs.riccb;
>> -	gscb = (struct gs_cb *) &kvm_run->s.regs.gscb;
>> -	vcpu->arch.sie_block->gpsw.mask = kvm_run->psw_mask;
>> -	vcpu->arch.sie_block->gpsw.addr = kvm_run->psw_addr;
>> -	if (kvm_run->kvm_dirty_regs & KVM_SYNC_ARCH0) {
>> -		vcpu->arch.sie_block->todpr = kvm_run->s.regs.todpr;
>> -		vcpu->arch.sie_block->pp = kvm_run->s.regs.pp;
>> -		vcpu->arch.sie_block->gbea = kvm_run->s.regs.gbea;
>> -	}
>> -	if (kvm_run->kvm_dirty_regs & KVM_SYNC_PFAULT) {
>> -		vcpu->arch.pfault_token = kvm_run->s.regs.pft;
>> -		vcpu->arch.pfault_select = kvm_run->s.regs.pfs;
>> -		vcpu->arch.pfault_compare = kvm_run->s.regs.pfc;
>> +	riccb = (struct runtime_instr_cb *) &run->s.regs.riccb;
>> +	gscb = (struct gs_cb *) &run->s.regs.gscb;
>> +	vcpu->arch.sie_block->gpsw.mask = run->psw_mask;
>> +	vcpu->arch.sie_block->gpsw.addr = run->psw_addr;
>> +	if (run->kvm_dirty_regs & KVM_SYNC_ARCH0) {
>> +		vcpu->arch.sie_block->todpr = run->s.regs.todpr;
>> +		vcpu->arch.sie_block->pp = run->s.regs.pp;
>> +		vcpu->arch.sie_block->gbea = run->s.regs.gbea;
>> +	}
>> +	if (run->kvm_dirty_regs & KVM_SYNC_PFAULT) {
>> +		vcpu->arch.pfault_token = run->s.regs.pft;
>> +		vcpu->arch.pfault_select = run->s.regs.pfs;
>> +		vcpu->arch.pfault_compare = run->s.regs.pfc;
>>   		if (vcpu->arch.pfault_token == KVM_S390_PFAULT_TOKEN_INVALID)
>>   			kvm_clear_async_pf_completion_queue(vcpu);
>>   	}
>> @@ -4198,7 +4199,7 @@ static void sync_regs_fmt2(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
>>   	 * If userspace sets the riccb (e.g. after migration) to a valid state,
>>   	 * we should enable RI here instead of doing the lazy enablement.
>>   	 */
>> -	if ((kvm_run->kvm_dirty_regs & KVM_SYNC_RICCB) &&
>> +	if ((run->kvm_dirty_regs & KVM_SYNC_RICCB) &&
>>   	    test_kvm_facility(vcpu->kvm, 64) &&
>>   	    riccb->v &&
>>   	    !(vcpu->arch.sie_block->ecb3 & ECB3_RI)) {
>> @@ -4209,7 +4210,7 @@ static void sync_regs_fmt2(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
>>   	 * If userspace sets the gscb (e.g. after migration) to non-zero,
>>   	 * we should enable GS here instead of doing the lazy enablement.
>>   	 */
>> -	if ((kvm_run->kvm_dirty_regs & KVM_SYNC_GSCB) &&
>> +	if ((run->kvm_dirty_regs & KVM_SYNC_GSCB) &&
>>   	    test_kvm_facility(vcpu->kvm, 133) &&
>>   	    gscb->gssm &&
>>   	    !vcpu->arch.gs_enabled) {
>> @@ -4218,10 +4219,10 @@ static void sync_regs_fmt2(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
>>   		vcpu->arch.sie_block->ecd |= ECD_HOSTREGMGMT;
>>   		vcpu->arch.gs_enabled = 1;
>>   	}
>> -	if ((kvm_run->kvm_dirty_regs & KVM_SYNC_BPBC) &&
>> +	if ((run->kvm_dirty_regs & KVM_SYNC_BPBC) &&
>>   	    test_kvm_facility(vcpu->kvm, 82)) {
>>   		vcpu->arch.sie_block->fpf &= ~FPF_BPBC;
>> -		vcpu->arch.sie_block->fpf |= kvm_run->s.regs.bpbc ? FPF_BPBC : 0;
>> +		vcpu->arch.sie_block->fpf |= run->s.regs.bpbc ? FPF_BPBC : 0;
>>   	}
>>   	if (MACHINE_HAS_GS) {
>>   		preempt_disable();
>> @@ -4232,45 +4233,47 @@ static void sync_regs_fmt2(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
>>   		}
>>   		if (vcpu->arch.gs_enabled) {
>>   			current->thread.gs_cb = (struct gs_cb *)
>> -						&vcpu->run->s.regs.gscb;
>> +						&run->s.regs.gscb;
>>   			restore_gs_cb(current->thread.gs_cb);
>>   		}
>>   		preempt_enable();
>>   	}
>> -	/* SIE will load etoken directly from SDNX and therefore kvm_run */
>> +	/* SIE will load etoken directly from SDNX and therefore run */
>>   }
>>   
>> -static void sync_regs(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
>> +static void sync_regs(struct kvm_vcpu *vcpu)
>>   {
>> -	if (kvm_run->kvm_dirty_regs & KVM_SYNC_PREFIX)
>> -		kvm_s390_set_prefix(vcpu, kvm_run->s.regs.prefix);
>> -	if (kvm_run->kvm_dirty_regs & KVM_SYNC_CRS) {
>> -		memcpy(&vcpu->arch.sie_block->gcr, &kvm_run->s.regs.crs, 128);
>> +	struct kvm_run *run = vcpu->run;
>> +
>> +	if (run->kvm_dirty_regs & KVM_SYNC_PREFIX)
>> +		kvm_s390_set_prefix(vcpu, run->s.regs.prefix);
>> +	if (run->kvm_dirty_regs & KVM_SYNC_CRS) {
>> +		memcpy(&vcpu->arch.sie_block->gcr, &run->s.regs.crs, 128);
>>   		/* some control register changes require a tlb flush */
>>   		kvm_make_request(KVM_REQ_TLB_FLUSH, vcpu);
>>   	}
>> -	if (kvm_run->kvm_dirty_regs & KVM_SYNC_ARCH0) {
>> -		kvm_s390_set_cpu_timer(vcpu, kvm_run->s.regs.cputm);
>> -		vcpu->arch.sie_block->ckc = kvm_run->s.regs.ckc;
>> +	if (run->kvm_dirty_regs & KVM_SYNC_ARCH0) {
>> +		kvm_s390_set_cpu_timer(vcpu, run->s.regs.cputm);
>> +		vcpu->arch.sie_block->ckc = run->s.regs.ckc;
>>   	}
>>   	save_access_regs(vcpu->arch.host_acrs);
>> -	restore_access_regs(vcpu->run->s.regs.acrs);
>> +	restore_access_regs(run->s.regs.acrs);
>>   	/* save host (userspace) fprs/vrs */
>>   	save_fpu_regs();
>>   	vcpu->arch.host_fpregs.fpc = current->thread.fpu.fpc;
>>   	vcpu->arch.host_fpregs.regs = current->thread.fpu.regs;
>>   	if (MACHINE_HAS_VX)
>> -		current->thread.fpu.regs = vcpu->run->s.regs.vrs;
>> +		current->thread.fpu.regs = run->s.regs.vrs;
>>   	else
>> -		current->thread.fpu.regs = vcpu->run->s.regs.fprs;
>> -	current->thread.fpu.fpc = vcpu->run->s.regs.fpc;
>> +		current->thread.fpu.regs = run->s.regs.fprs;
>> +	current->thread.fpu.fpc = run->s.regs.fpc;
>>   	if (test_fp_ctl(current->thread.fpu.fpc))
>>   		/* User space provided an invalid FPC, let's clear it */
>>   		current->thread.fpu.fpc = 0;
>>   
>>   	/* Sync fmt2 only data */
>>   	if (likely(!kvm_s390_pv_cpu_is_protected(vcpu))) {
>> -		sync_regs_fmt2(vcpu, kvm_run);
>> +		sync_regs_fmt2(vcpu);
>>   	} else {
>>   		/*
>>   		 * In several places we have to modify our internal view to
>> @@ -4282,19 +4285,21 @@ static void sync_regs(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
>>   		 * do only accept the condition code from userspace.
>>   		 */
>>   		vcpu->arch.sie_block->gpsw.mask &= ~PSW_MASK_CC;
>> -		vcpu->arch.sie_block->gpsw.mask |= kvm_run->psw_mask &
>> +		vcpu->arch.sie_block->gpsw.mask |= run->psw_mask &
>>   						   PSW_MASK_CC;
>>   	}
>>   
>> -	kvm_run->kvm_dirty_regs = 0;
>> +	run->kvm_dirty_regs = 0;
>>   }
>>   
>> -static void store_regs_fmt2(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
>> +static void store_regs_fmt2(struct kvm_vcpu *vcpu)
>>   {
>> -	kvm_run->s.regs.todpr = vcpu->arch.sie_block->todpr;
>> -	kvm_run->s.regs.pp = vcpu->arch.sie_block->pp;
>> -	kvm_run->s.regs.gbea = vcpu->arch.sie_block->gbea;
>> -	kvm_run->s.regs.bpbc = (vcpu->arch.sie_block->fpf & FPF_BPBC) == FPF_BPBC;
>> +	struct kvm_run *run = vcpu->run;
>> +
>> +	run->s.regs.todpr = vcpu->arch.sie_block->todpr;
>> +	run->s.regs.pp = vcpu->arch.sie_block->pp;
>> +	run->s.regs.gbea = vcpu->arch.sie_block->gbea;
>> +	run->s.regs.bpbc = (vcpu->arch.sie_block->fpf & FPF_BPBC) == FPF_BPBC;
>>   	if (MACHINE_HAS_GS) {
>>   		__ctl_set_bit(2, 4);
>>   		if (vcpu->arch.gs_enabled)
>> @@ -4310,39 +4315,41 @@ static void store_regs_fmt2(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
>>   	/* SIE will save etoken directly into SDNX and therefore kvm_run */
>>   }
>>   
>> -static void store_regs(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
>> +static void store_regs(struct kvm_vcpu *vcpu)
>>   {
>> -	kvm_run->psw_mask = vcpu->arch.sie_block->gpsw.mask;
>> -	kvm_run->psw_addr = vcpu->arch.sie_block->gpsw.addr;
>> -	kvm_run->s.regs.prefix = kvm_s390_get_prefix(vcpu);
>> -	memcpy(&kvm_run->s.regs.crs, &vcpu->arch.sie_block->gcr, 128);
>> -	kvm_run->s.regs.cputm = kvm_s390_get_cpu_timer(vcpu);
>> -	kvm_run->s.regs.ckc = vcpu->arch.sie_block->ckc;
>> -	kvm_run->s.regs.pft = vcpu->arch.pfault_token;
>> -	kvm_run->s.regs.pfs = vcpu->arch.pfault_select;
>> -	kvm_run->s.regs.pfc = vcpu->arch.pfault_compare;
>> -	save_access_regs(vcpu->run->s.regs.acrs);
>> +	struct kvm_run *run = vcpu->run;
>> +
>> +	run->psw_mask = vcpu->arch.sie_block->gpsw.mask;
>> +	run->psw_addr = vcpu->arch.sie_block->gpsw.addr;
>> +	run->s.regs.prefix = kvm_s390_get_prefix(vcpu);
>> +	memcpy(&run->s.regs.crs, &vcpu->arch.sie_block->gcr, 128);
>> +	run->s.regs.cputm = kvm_s390_get_cpu_timer(vcpu);
>> +	run->s.regs.ckc = vcpu->arch.sie_block->ckc;
>> +	run->s.regs.pft = vcpu->arch.pfault_token;
>> +	run->s.regs.pfs = vcpu->arch.pfault_select;
>> +	run->s.regs.pfc = vcpu->arch.pfault_compare;
>> +	save_access_regs(run->s.regs.acrs);
>>   	restore_access_regs(vcpu->arch.host_acrs);
>>   	/* Save guest register state */
>>   	save_fpu_regs();
>> -	vcpu->run->s.regs.fpc = current->thread.fpu.fpc;
>> +	run->s.regs.fpc = current->thread.fpu.fpc;
>>   	/* Restore will be done lazily at return */
>>   	current->thread.fpu.fpc = vcpu->arch.host_fpregs.fpc;
>>   	current->thread.fpu.regs = vcpu->arch.host_fpregs.regs;
>>   	if (likely(!kvm_s390_pv_cpu_is_protected(vcpu)))
>> -		store_regs_fmt2(vcpu, kvm_run);
>> +		store_regs_fmt2(vcpu);
>>   }
>>   
>>   int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu)
>>   {
>> -	struct kvm_run *kvm_run = vcpu->run;
>> +	struct kvm_run *run = vcpu->run;
>>   	int rc;
>>   
>> -	if (kvm_run->immediate_exit)
>> +	if (run->immediate_exit)
>>   		return -EINTR;
>>   
>> -	if (kvm_run->kvm_valid_regs & ~KVM_SYNC_S390_VALID_FIELDS ||
>> -	    kvm_run->kvm_dirty_regs & ~KVM_SYNC_S390_VALID_FIELDS)
>> +	if (run->kvm_valid_regs & ~KVM_SYNC_S390_VALID_FIELDS ||
>> +	    run->kvm_dirty_regs & ~KVM_SYNC_S390_VALID_FIELDS)
>>   		return -EINVAL;
>>   
>>   	vcpu_load(vcpu);
>> @@ -4368,14 +4375,14 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu)
>>   		goto out;
>>   	}
>>   
>> -	sync_regs(vcpu, kvm_run);
>> +	sync_regs(vcpu);
>>   	enable_cpu_timer_accounting(vcpu);
>>   
>>   	might_fault();
>>   	rc = __vcpu_run(vcpu);
>>   
>>   	if (signal_pending(current) && !rc) {
>> -		kvm_run->exit_reason = KVM_EXIT_INTR;
>> +		run->exit_reason = KVM_EXIT_INTR;
>>   		rc = -EINTR;
>>   	}
>>   
>> @@ -4390,7 +4397,7 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu)
>>   	}
>>   
>>   	disable_cpu_timer_accounting(vcpu);
>> -	store_regs(vcpu, kvm_run);
>> +	store_regs(vcpu);
>>   
>>   	kvm_sigset_deactivate(vcpu);
>>   
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
