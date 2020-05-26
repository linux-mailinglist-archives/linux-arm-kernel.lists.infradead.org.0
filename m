Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 489F01E2042
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 12:58:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CceL0LvYLPML5VZYOpdbxeCd5y5mB8b72esxNHkdPmc=; b=asXargIGf+pzj9
	03tsFjrHU9mVYTLF3dtNmKkJvVX6cithBHKnEyeNjXwTdtsIHdyLEniaxWxr1sCqVrbcum1rlMShd
	gPd9qemN8lO5ep2l5QzbnRYqy1jHB/ue3tDJlQRFFTcgNO+kMw4e1FkgBdYwVrDVpaVngvQJ75n46
	uH8kZuJntCWMIwM2DFso0gUgB2g2NGcG2xeP362gfmJ7ifwvyqiGJxHM3leNwzIeoXM2+3oio1veL
	xbDmcnAiI8uj1IC8lBXPyn115P6uNFJRuRLMhHsnFnCStD38MzSOlBhoC3uu6KdVVO7k3FSsRQEcm
	wY2w2ChrjqdTEVh4W2vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdXHu-00016K-AT; Tue, 26 May 2020 10:58:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdXHi-00015r-6S
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 10:58:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1942F31B;
 Tue, 26 May 2020 03:58:13 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 358A93F6C4;
 Tue, 26 May 2020 03:58:10 -0700 (PDT)
Date: Tue, 26 May 2020 11:58:07 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Gavin Shan <gshan@redhat.com>
Subject: Re: [PATCH RFCv2 6/9] kvm/arm64: Export kvm_handle_user_mem_abort()
 with prefault mode
Message-ID: <20200526105807.GE1363@C02TD0UTHF1T.local>
References: <20200508032919.52147-1-gshan@redhat.com>
 <20200508032919.52147-7-gshan@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200508032919.52147-7-gshan@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_035814_322564_11924E55 
X-CRM114-Status: GOOD (  18.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: aarcange@redhat.com, drjones@redhat.com, suzuki.poulose@arm.com,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org, eric.auger@redhat.com,
 james.morse@arm.com, shan.gavin@gmail.com, maz@kernel.org, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 08, 2020 at 01:29:16PM +1000, Gavin Shan wrote:
> This renames user_mem_abort() to kvm_handle_user_mem_abort(), and
> then export it. The function will be used in asynchronous page fault
> to populate a page table entry once the corresponding page is populated
> from the backup device (e.g. swap partition):
> 
>    * Parameter @fault_status is replace by @esr.
>    * The parameters are reorder based on their importance.

It seems like multiple changes are going on here, and it would be
clearer with separate patches.

Passing the ESR rather than the extracted fault status seems fine, but
for clarirty it's be nicer to do this in its own patch.

Why is it necessary to re-order the function parameters? Does that align
with other function prototypes?

What exactly is the `prefault` parameter meant to do? It doesn't do
anything currently, so it'd be better to introduce it later when logic
using it is instroduced, or where callers will pass distinct values.

Thanks,
Mark.

> 
> This shouldn't cause any functional changes.
> 
> Signed-off-by: Gavin Shan <gshan@redhat.com>
> ---
>  arch/arm64/include/asm/kvm_host.h |  4 ++++
>  virt/kvm/arm/mmu.c                | 14 ++++++++------
>  2 files changed, 12 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
> index 32c8a675e5a4..f77c706777ec 100644
> --- a/arch/arm64/include/asm/kvm_host.h
> +++ b/arch/arm64/include/asm/kvm_host.h
> @@ -437,6 +437,10 @@ int __kvm_arm_vcpu_set_events(struct kvm_vcpu *vcpu,
>  			      struct kvm_vcpu_events *events);
>  
>  #define KVM_ARCH_WANT_MMU_NOTIFIER
> +int kvm_handle_user_mem_abort(struct kvm_vcpu *vcpu, unsigned int esr,
> +			      struct kvm_memory_slot *memslot,
> +			      phys_addr_t fault_ipa, unsigned long hva,
> +			      bool prefault);
>  int kvm_unmap_hva_range(struct kvm *kvm,
>  			unsigned long start, unsigned long end);
>  int kvm_set_spte_hva(struct kvm *kvm, unsigned long hva, pte_t pte);
> diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
> index e462e0368fd9..95aaabb2b1fc 100644
> --- a/virt/kvm/arm/mmu.c
> +++ b/virt/kvm/arm/mmu.c
> @@ -1656,12 +1656,12 @@ static bool fault_supports_stage2_huge_mapping(struct kvm_memory_slot *memslot,
>  	       (hva & ~(map_size - 1)) + map_size <= uaddr_end;
>  }
>  
> -static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
> -			  struct kvm_memory_slot *memslot, unsigned long hva,
> -			  unsigned long fault_status)
> +int kvm_handle_user_mem_abort(struct kvm_vcpu *vcpu, unsigned int esr,
> +			      struct kvm_memory_slot *memslot,
> +			      phys_addr_t fault_ipa, unsigned long hva,
> +			      bool prefault)
>  {
> -	int ret;
> -	u32 esr = kvm_vcpu_get_esr(vcpu);
> +	unsigned int fault_status = kvm_vcpu_trap_get_fault_type(esr);
>  	bool write_fault, writable, force_pte = false;
>  	bool exec_fault, needs_exec;
>  	unsigned long mmu_seq;
> @@ -1674,6 +1674,7 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
>  	pgprot_t mem_type = PAGE_S2;
>  	bool logging_active = memslot_is_logging(memslot);
>  	unsigned long vma_pagesize, flags = 0;
> +	int ret;
>  
>  	write_fault = kvm_is_write_fault(esr);
>  	exec_fault = kvm_vcpu_trap_is_iabt(esr);
> @@ -1995,7 +1996,8 @@ int kvm_handle_guest_abort(struct kvm_vcpu *vcpu, struct kvm_run *run)
>  		goto out_unlock;
>  	}
>  
> -	ret = user_mem_abort(vcpu, fault_ipa, memslot, hva, fault_status);
> +	ret = kvm_handle_user_mem_abort(vcpu, esr, memslot,
> +					fault_ipa, hva, false);
>  	if (ret == 0)
>  		ret = 1;
>  out:
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
