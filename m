Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A808E1C8C6E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 15:33:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rjsVOxkXN5G9znSafshK7/WAb69DakxHSsf2imo3Kck=; b=ooDpe/PN/8efP+
	rLIRrBYQU8DiuJmc5nZJbxgPopPP0a8U1hHxnaOS3sqQ1i1uiqH6IvM3w9cggDbdrcYBoBKTHUdmm
	SvUsDz4FqBQjAQ3wUviYFvQkyHk7c4T2JyUtpJ41WTES1Uvqpy++qWWn52Tbsl0weUPRMNj3lVTgW
	Fja4ilIFOFRZ0B1ZsMsTljWo97VIrDlQq1ezDtcblolAp/c8PDnwqRfKC4vWJJh97YD2KYkslcyRL
	4jryHxlyPuPlY9m5gcJ8tqmPWhPeF5QHgbO65+fFitVY/BfjQw3b1Xng3U4J0LxgXgcROYErQVvwE
	f72Qr1bkakUHnibLvn1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWgee-00084O-Iq; Thu, 07 May 2020 13:33:36 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWgeX-00083Z-2d
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 13:33:30 +0000
Received: by mail-wr1-x444.google.com with SMTP id y3so6450002wrt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 06:33:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=lavJtxKaYcyNLFyKsKYMDkQAHQjwXkcemrxVw4KhSys=;
 b=q8ihiDFWmxPihIUKThUImZ9SqPSGicCB/LUIH7G13GZkNXJykWaCALUvcVkKcfb+OT
 ISMslonAmpBXwKqoCaUXy/3GAeLnAN+2rqT8xag1XdqPbGIC/XX2bVX+EpLC3xHfPwMq
 KgjlZFMT3IBwk6c2lkgefiShIR70gBlf8h9NAwp9ezfG0Y7090yvadbR7daceiHVTn+J
 bLkajrwF3S3sjXshSRI3ocfRGRVetfg+zTEhDD5lrongAN8L8NiUnCeLUxp/NmVDcRV0
 uKQirezMvpbWE1Y5O75qcGmYMuC1EGZt31E/QKZfCRDuKPvxZ5+3aG84W79Zrh/wDhMO
 WXOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=lavJtxKaYcyNLFyKsKYMDkQAHQjwXkcemrxVw4KhSys=;
 b=klC54/2HrHr345YQ3Dcp1Z+PF0VhIrvWkzEDqqCxTiicCwgSN7+h47EpIZHWnZTtP7
 F55olXLX867bq+e3q8lWtLZmNG7wgfFvIgowOM952cZX3PraE2P7+HUN3iOOH8A+HF8J
 rZffF9x2+u0luhbpPuIAaDk51wSJUEN6QN694m1PKgYpr4a7TPZNuhIAroGxdaoCGe9V
 dS4hu1hRVw6HZZIDfl3M12H7hYTxhyQ5NBJplL+KxbGJIaH+P4rFp666gWn2W14awCjX
 XblmKsqgZ8ztchGTUhlb/ZrFGR7UScT85W5Ft8E5Y8uARhUV1TLdj1gNREKg5QncaltZ
 JCwQ==
X-Gm-Message-State: AGi0Pub8D4nKIf/Sa3AxeYKr9rJaXGlo7pHtQNUrJM/BOzbKszW1bdKQ
 RtxdEvEidOBPkP963zj8v4kizA==
X-Google-Smtp-Source: APiQypK1mliJvEiy6KkK4NSYKEudXyeC7ljs0Mrh3EMKeWBt76IU1uAhJMUGJmPyzwky1z5OheEEAA==
X-Received: by 2002:adf:ec09:: with SMTP id x9mr15388355wrn.21.1588858404386; 
 Thu, 07 May 2020 06:33:24 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:110:d6cc:2030:37c1:9964])
 by smtp.gmail.com with ESMTPSA id n6sm8458850wrs.81.2020.05.07.06.33.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2020 06:33:23 -0700 (PDT)
Date: Thu, 7 May 2020 14:33:20 +0100
From: Quentin Perret <qperret@google.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 02/15] arm64: kvm: Formalize host-hyp hypcall ABI
Message-ID: <20200507133320.GA16899@google.com>
References: <20200430144831.59194-1-dbrazdil@google.com>
 <20200430144831.59194-3-dbrazdil@google.com>
 <87d07fj3g9.wl-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87d07fj3g9.wl-maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_063329_143767_9114A75E 
X-CRM114-Status: GOOD (  32.29  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 David Brazdil <dbrazdil@google.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hey Marc,

On Thursday 07 May 2020 at 14:10:30 (+0100), Marc Zyngier wrote:
> Hi David, Quentin,
> 
> On Thu, 30 Apr 2020 15:48:18 +0100,
> David Brazdil <dbrazdil@google.com> wrote:
> > 
> > From: Quentin Perret <qperret@google.com>
> > 
> > In preparation for removing the hyp code from the TCB, convert the current
> 
> nit: Unless we have a different interpretation of the TCB acronym, I
> think you want to remove anything *but* the EL2 code from the TCB.

Argh! Right... This should have been 'removing the /host/ code' :-)

<snip>
> > diff --git a/arch/arm64/include/asm/kvm_host_hypercalls.h b/arch/arm64/include/asm/kvm_host_hypercalls.h
> > new file mode 100644
> > index 000000000000..af8ad505d816
> > --- /dev/null
> > +++ b/arch/arm64/include/asm/kvm_host_hypercalls.h
> > @@ -0,0 +1,62 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +/*
> > + * Copyright (C) 2020 Google, inc
> > + */
> > +
> > +#ifndef __KVM_HOST_HCALL
> > +#define __KVM_HOST_HCALL(x)
> > +#endif
> > +
> > +#define __KVM_HOST_HCALL_TABLE_IDX___kvm_enable_ssbs		0
> > +__KVM_HOST_HCALL(__kvm_enable_ssbs)
> > +
> > +#define __KVM_HOST_HCALL_TABLE_IDX___kvm_get_mdcr_el2		1
> > +__KVM_HOST_HCALL(__kvm_get_mdcr_el2)
> > +
> > +#define __KVM_HOST_HCALL_TABLE_IDX___kvm_timer_set_cntvoff	2
> > +__KVM_HOST_HCALL(__kvm_timer_set_cntvoff)
> > +
> > +#define __KVM_HOST_HCALL_TABLE_IDX___kvm_tlb_flush_local_vmid	3
> > +__KVM_HOST_HCALL(__kvm_tlb_flush_local_vmid)
> > +
> > +#define __KVM_HOST_HCALL_TABLE_IDX___kvm_flush_vm_context	4
> > +__KVM_HOST_HCALL(__kvm_flush_vm_context)
> > +
> > +#define __KVM_HOST_HCALL_TABLE_IDX___kvm_vcpu_run_nvhe		5
> > +__KVM_HOST_HCALL(__kvm_vcpu_run_nvhe)
> > +
> > +#define __KVM_HOST_HCALL_TABLE_IDX___kvm_tlb_flush_vmid		6
> > +__KVM_HOST_HCALL(__kvm_tlb_flush_vmid)
> > +
> > +#define __KVM_HOST_HCALL_TABLE_IDX___kvm_tlb_flush_vmid_ipa	7
> > +__KVM_HOST_HCALL(__kvm_tlb_flush_vmid_ipa)
> > +
> > +#define __KVM_HOST_HCALL_TABLE_IDX___vgic_v3_init_lrs		8
> > +__KVM_HOST_HCALL(__vgic_v3_init_lrs)
> > +
> > +#define __KVM_HOST_HCALL_TABLE_IDX___vgic_v3_get_ich_vtr_el2	9
> > +__KVM_HOST_HCALL(__vgic_v3_get_ich_vtr_el2)
> > +
> > +#define __KVM_HOST_HCALL_TABLE_IDX___vgic_v3_write_vmcr		10
> > +__KVM_HOST_HCALL(__vgic_v3_write_vmcr)
> > +
> > +#define __KVM_HOST_HCALL_TABLE_IDX___vgic_v3_restore_aprs	11
> > +__KVM_HOST_HCALL(__vgic_v3_restore_aprs)
> > +
> > +#define __KVM_HOST_HCALL_TABLE_IDX___vgic_v3_read_vmcr		12
> > +__KVM_HOST_HCALL(__vgic_v3_read_vmcr)
> > +
> > +#define __KVM_HOST_HCALL_TABLE_IDX___vgic_v3_save_aprs		13
> > +__KVM_HOST_HCALL(__vgic_v3_save_aprs)
> > +
> > +#define __KVM_HOST_HCALL_TABLE_IDX_SIZE				14
> 
> This whole thing screams "enum" into my ears. Having to maintain these
> as #defines feels like a pain, specially if the numbers are never used
> in assembly code. (and for that, we have asm-offset.h).

This is essentially inspired from the various 'unistd.h' files we have
in the kernel, e.g. include/uapi/asm-generic/unistd.h, which have
exactly this type of construct. So, this was really just for consistency,
but no strong opinion from me.

> 
> > +
> > +/* XXX - Arbitrary offset for KVM-related hypercalls */
> > +#define __KVM_HOST_HCALL_BASE_SHIFT 8
> > +#define __KVM_HOST_HCALL_BASE (1ULL << __KVM_HOST_HCALL_BASE_SHIFT)
> > +#define __KVM_HOST_HCALL_END (__KVM_HOST_HCALL_BASE + \
> > +			      __KVM_HOST_HCALL_TABLE_IDX_SIZE)
> 
> I don't really get what is this offset for. It is too small to be used
> to skip the stub hypercalls (you'd need to start at 0x1000).

Oh, OK. I assumed anything above HVC_STUB_HCALL_NR would be fine. But
yes, this offset is really arbitrary, so if 0x1000 is better then that
totally works. For my education, where is that 0x1000 coming from ?

> Given
> that you store the whole thing in an array, you're wasting some
> memory. I'm sure you have a good story for it though! ;-)

Note that the array's length is __KVM_HOST_HCALL_TABLE_IDX_SIZE, which
doesn't include the offset, so we shouldn't be wasting memory here.

> > +
> > +/* Hypercall number = kvm offset + table idx */
> > +#define KVM_HOST_HCALL_NR(name) (__KVM_HOST_HCALL_TABLE_IDX_##name + \
> > +				 __KVM_HOST_HCALL_BASE)
> > diff --git a/arch/arm64/kvm/hyp/Makefile b/arch/arm64/kvm/hyp/Makefile
> > index 8c9880783839..29e2b2cd2fbc 100644
> > --- a/arch/arm64/kvm/hyp/Makefile
> > +++ b/arch/arm64/kvm/hyp/Makefile
> > @@ -9,7 +9,7 @@ ccflags-y += -fno-stack-protector -DDISABLE_BRANCH_PROFILING \
> >  obj-$(CONFIG_KVM) += hyp.o
> >  
> >  hyp-y := vgic-v3-sr.o timer-sr.o aarch32.o vgic-v2-cpuif-proxy.o sysreg-sr.o \
> > -	 debug-sr.o entry.o switch.o fpsimd.o tlb.o hyp-entry.o
> > +	 debug-sr.o entry.o switch.o fpsimd.o tlb.o host_hypercall.o hyp-entry.o
> >  
> >  # KVM code is run at a different exception code with a different map, so
> >  # compiler instrumentation that inserts callbacks or checks into the code may
> > diff --git a/arch/arm64/kvm/hyp/host_hypercall.c b/arch/arm64/kvm/hyp/host_hypercall.c
> > new file mode 100644
> > index 000000000000..6b31310f36a8
> > --- /dev/null
> > +++ b/arch/arm64/kvm/hyp/host_hypercall.c
> > @@ -0,0 +1,22 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * Copyright (C) 2020 Google, inc
> > + */
> > +
> > +#include <asm/kvm_hyp.h>
> > +
> > +typedef long (*kvm_hcall_fn_t)(void);
> > +
> > +static long __hyp_text kvm_hc_ni(void)
> > +{
> > +       return -ENOSYS;
> > +}
> > +
> > +#undef __KVM_HOST_HCALL
> > +#define __KVM_HOST_HCALL(name) \
> > +	[__KVM_HOST_HCALL_TABLE_IDX_##name] = (long (*)(void))name,
> > +
> > +const kvm_hcall_fn_t kvm_hcall_table[__KVM_HOST_HCALL_TABLE_IDX_SIZE] = {
> > +	[0 ... __KVM_HOST_HCALL_TABLE_IDX_SIZE-1] = kvm_hc_ni,
> > +#include <asm/kvm_host_hypercalls.h>
> > +};
> 
> Cunning. At the same time, if you can do this once, you can do it
> twice, and generating the __KVM_HOST_HCALL_TABLE_IDX_* as an enum
> should be pretty easy, and could live in its own include file.

Right, and that again is inspired from the arm64 syscall table (see
arch/arm64/kernel/sys.c). So the first intention was to keep things
consistent. But again, no strong opinion :)

> > diff --git a/arch/arm64/kvm/hyp/hyp-entry.S b/arch/arm64/kvm/hyp/hyp-entry.S
> > index c2a13ab3c471..1a51a0958504 100644
> > --- a/arch/arm64/kvm/hyp/hyp-entry.S
> > +++ b/arch/arm64/kvm/hyp/hyp-entry.S
> > @@ -13,6 +13,7 @@
> >  #include <asm/kvm_arm.h>
> >  #include <asm/kvm_asm.h>
> >  #include <asm/kvm_mmu.h>
> > +#include <asm/kvm_host_hypercalls.h>
> >  #include <asm/mmu.h>
> >  
> >  	.text
> > @@ -21,17 +22,26 @@
> >  .macro do_el2_call
> >  	/*
> >  	 * Shuffle the parameters before calling the function
> > -	 * pointed to in x0. Assumes parameters in x[1,2,3].
> > +	 * pointed to in x0. Assumes parameters in x[1,2,3,4,5,6].
> >  	 */
> >  	str	lr, [sp, #-16]!
> >  	mov	lr, x0
> >  	mov	x0, x1
> >  	mov	x1, x2
> >  	mov	x2, x3
> > +	mov	x3, x4
> > +	mov	x4, x5
> > +	mov	x5, x6
> 
> Has any function changed prototype as part of this patch that they'd
> require this change? It doesn't look like it. I guess this should be
> part of another patch.

Ack, this isn't needed just yet so we should split that out.

> 
> >  	blr	lr
> >  	ldr	lr, [sp], #16
> >  .endm
> >  
> > +/* kern_hyp_va(lm_alias(ksym)) */
> > +.macro ksym_hyp_va ksym, lm_offset
> > +	sub	\ksym, \ksym, \lm_offset
> > +	kern_hyp_va	\ksym
> > +.endm
> > +
> >  el1_sync:				// Guest trapped into EL2
> >  
> >  	mrs	x0, esr_el2
> > @@ -66,10 +76,32 @@ el1_sync:				// Guest trapped into EL2
> >  	br	x5
> >  
> >  1:
> > +	/* Check if the hcall number is valid */
> > +	cmp	x0, #__KVM_HOST_HCALL_BASE
> > +	b.lt	2f
> > +	cmp	x0, #__KVM_HOST_HCALL_END
> > +	b.lt	3f
> > +2:
> > +	mov	x0, -ENOSYS
> > +	eret
> > +
> > +3:
> > +	/* Compute lm_alias() offset in x9 */
> > +	ldr_l	x9, kimage_voffset
> > +	ldr_l	x10, physvirt_offset
> > +	add	x9, x9, x10
> > +
> > +	/* Find hcall function pointer in the table */
> > +	ldr	x10, =kvm_hcall_table
> > +	ksym_hyp_va	x10, x9
> 
> Can't kvm_hcall_table be referenced with adr or adr_l? It'd certainly
> be nice to avoid the extra load for something that is essentially a
> build-time constant.

In fact David already has a nice patch that transforms the whole thing
in a jump table, which is much nicer. I'll let him share the details :)

> Another thing that could be improved is to keep the lm_alias offset
> somewhere, saving one load per entry. Not a huge deal.

Ack.

> > +	sub	x0, x0, #__KVM_HOST_HCALL_BASE
> > +	add	x0, x10, x0, lsl 3
> 
> The usual convention for immediate is to prefix them with #.

Noted, thanks.

> > +	ldr	x0, [x0]
> > +	ksym_hyp_va	x0, x9
> > +
> >  	/*
> >  	 * Perform the EL2 call
> >  	 */
> > -	kern_hyp_va	x0
> >  	do_el2_call
> >  
> >  	eret
> > -- 
> > 2.26.1
> > 
> > 

Thanks for the review!
Quentin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
