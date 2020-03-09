Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58CA817DEEB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 12:46:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=415JOIZII1SGGA7P44FqJrO14UC2QpPqfsOASPYB6M0=; b=oMcCN9XGOISM6ZJOB1kzsYGqM
	Qzh0W1spQi9lrCPVBuwYLgdngzMCVL2A1R3ZWFYwjqaTS+XI0912Zz79h/xKlqRcQAVjUxMdUOtUq
	TuUw9RCqaagkiVgx/rprhuSa9A9hQBgbODKmJhsTcEcRe0KiMBUr3P2J86W7mH3o5tyvh1OO6VCS6
	AaA64mGL+z7jGYh4abrGVidygbbD1mwWZYmJqVpfuMMqbW3G6H5emgxtWc2y1pEkJdRURvSmcuWxf
	TPn5TJT+cho5973Wz+9J5WjZKqtr6MQm8KkGDE3OKoavF49ZifFfr54uiazmvvS/AlLVoVNJHC6hr
	RQc/EL0qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBGr2-0002s7-6p; Mon, 09 Mar 2020 11:45:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBGqr-0002qN-Rn
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 11:45:43 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 26F7F20675;
 Mon,  9 Mar 2020 11:45:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583754341;
 bh=PcfNfUAlnC8NHw7ToNItaeEPY13GO9PcdycnAWmwYng=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=WzQ/rqpIMevdrzPCise56y+ZmhkTY1k8rn5glvbIgnjctpFnqFCifdDdu5oJgrGzK
 9pxGnT88lMKbJpjdyTulXH5dqSb9jPpZyYhRVFq2cCddkDwA2BDCvUYnsbJJtCVeIX
 RakR0HAZt5m2v+hgzcMjhAje5fVAtI9RMH7PeA8c=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jBGqp-00BEqC-4R; Mon, 09 Mar 2020 11:45:39 +0000
MIME-Version: 1.0
Date: Mon, 09 Mar 2020 11:45:39 +0000
From: Marc Zyngier <maz@kernel.org>
To: Keqian Zhu <zhukeqian1@huawei.com>
Subject: Re: [RFC] KVM: arm64: support enabling dirty log graually in small
 chunks
In-Reply-To: <20200309085727.1106-1-zhukeqian1@huawei.com>
References: <20200309085727.1106-1-zhukeqian1@huawei.com>
Message-ID: <4b85699ec1d354cc73f5302560231f86@misterjones.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: zhukeqian1@huawei.com, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, jianjay.zhou@huawei.com,
 sean.j.christopherson@intel.com, pbonzini@redhat.com, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_044541_945472_19235612 
X-CRM114-Status: GOOD (  25.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 linux-kernel@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jay Zhou <jianjay.zhou@huawei.com>, Paolo Bonzini <pbonzini@redhat.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Kegian,

In the future, please Cc me on  your KVM/arm64 patches, as well as
all the reviewers mentioned in the MAINTAINERS file.

On 2020-03-09 08:57, Keqian Zhu wrote:
> There is already support of enabling dirty log graually

gradually?

> in small chunks for x86. This adds support for arm64.
> 
> Under the Huawei Kunpeng 920 2.6GHz platform, I did some
> tests with a 128G linux VM and counted the time taken of

Linux

> memory_global_dirty_log_start, here is the numbers:
> 
> VM Size        Before    After optimization
> 128G           527ms     4ms

What does this benchmark do? Can you please provide a pointer to it?

> 
> Signed-off-by: Keqian Zhu <zhukeqian1@huawei.com>
> ---
> Cc: Jay Zhou <jianjay.zhou@huawei.com>
> Cc: Paolo Bonzini <pbonzini@redhat.com>
> Cc: Peter Xu <peterx@redhat.com>
> Cc: Sean Christopherson <sean.j.christopherson@intel.com>
> ---
>  Documentation/virt/kvm/api.rst    |  2 +-
>  arch/arm64/include/asm/kvm_host.h |  4 ++++
>  virt/kvm/arm/mmu.c                | 30 ++++++++++++++++++++++--------
>  3 files changed, 27 insertions(+), 9 deletions(-)
> 
> diff --git a/Documentation/virt/kvm/api.rst 
> b/Documentation/virt/kvm/api.rst
> index 0adef66585b1..89d4f2680af1 100644
> --- a/Documentation/virt/kvm/api.rst
> +++ b/Documentation/virt/kvm/api.rst
> @@ -5735,7 +5735,7 @@ will be initialized to 1 when created.  This
> also improves performance because
>  dirty logging can be enabled gradually in small chunks on the first 
> call
>  to KVM_CLEAR_DIRTY_LOG.  KVM_DIRTY_LOG_INITIALLY_SET depends on
>  KVM_DIRTY_LOG_MANUAL_PROTECT_ENABLE (it is also only available on
> -x86 for now).
> +x86 and arm64 for now).

What is this based on? I can't find this in -next, and you provide no
context whatsoever.

I assume this is related to this:
https://lore.kernel.org/kvm/20200227013227.1401-1-jianjay.zhou@huawei.com/

Is there a userspace counterpart to it?

>  KVM_CAP_MANUAL_DIRTY_LOG_PROTECT2 was previously available under the 
> name
>  KVM_CAP_MANUAL_DIRTY_LOG_PROTECT, but the implementation had bugs that 
> make
> diff --git a/arch/arm64/include/asm/kvm_host.h
> b/arch/arm64/include/asm/kvm_host.h
> index d87aa609d2b6..0deb2ac7d091 100644
> --- a/arch/arm64/include/asm/kvm_host.h
> +++ b/arch/arm64/include/asm/kvm_host.h
> @@ -16,6 +16,7 @@
>  #include <linux/jump_label.h>
>  #include <linux/kvm_types.h>
>  #include <linux/percpu.h>
> +#include <linux/kvm.h>
>  #include <asm/arch_gicv3.h>
>  #include <asm/barrier.h>
>  #include <asm/cpufeature.h>
> @@ -45,6 +46,9 @@
>  #define KVM_REQ_VCPU_RESET	KVM_ARCH_REQ(2)
>  #define KVM_REQ_RECORD_STEAL	KVM_ARCH_REQ(3)
> 
> +#define KVM_DIRTY_LOG_MANUAL_CAPS   
> (KVM_DIRTY_LOG_MANUAL_PROTECT_ENABLE | \
> +					KVM_DIRTY_LOG_INITIALLY_SET)
> +
>  DECLARE_STATIC_KEY_FALSE(userspace_irqchip_in_use);
> 
>  extern unsigned int kvm_sve_max_vl;
> diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
> index e3b9ee268823..5c7ca84dec85 100644
> --- a/virt/kvm/arm/mmu.c
> +++ b/virt/kvm/arm/mmu.c
> @@ -1438,9 +1438,11 @@ static void stage2_wp_ptes(pmd_t *pmd,
> phys_addr_t addr, phys_addr_t end)
>   * @pud:	pointer to pud entry
>   * @addr:	range start address
>   * @end:	range end address
> + * @wp_ptes:	write protect ptes or not
>   */
>  static void stage2_wp_pmds(struct kvm *kvm, pud_t *pud,
> -			   phys_addr_t addr, phys_addr_t end)
> +			   phys_addr_t addr, phys_addr_t end,
> +			   bool wp_ptes)

If you are going to pass extra parameters like this, make it at least
extensible (unsigned long flags, for example).

>  {
>  	pmd_t *pmd;
>  	phys_addr_t next;
> @@ -1453,7 +1455,7 @@ static void stage2_wp_pmds(struct kvm *kvm, pud_t 
> *pud,
>  			if (pmd_thp_or_huge(*pmd)) {
>  				if (!kvm_s2pmd_readonly(pmd))
>  					kvm_set_s2pmd_readonly(pmd);
> -			} else {
> +			} else if (wp_ptes) {
>  				stage2_wp_ptes(pmd, addr, next);
>  			}
>  		}
> @@ -1465,9 +1467,11 @@ static void stage2_wp_pmds(struct kvm *kvm, 
> pud_t *pud,
>   * @pgd:	pointer to pgd entry
>   * @addr:	range start address
>   * @end:	range end address
> + * @wp_ptes:	write protect ptes or not
>   */
>  static void  stage2_wp_puds(struct kvm *kvm, pgd_t *pgd,
> -			    phys_addr_t addr, phys_addr_t end)
> +			    phys_addr_t addr, phys_addr_t end,
> +			    bool wp_ptes)
>  {
>  	pud_t *pud;
>  	phys_addr_t next;
> @@ -1480,7 +1484,7 @@ static void  stage2_wp_puds(struct kvm *kvm, 
> pgd_t *pgd,
>  				if (!kvm_s2pud_readonly(pud))
>  					kvm_set_s2pud_readonly(pud);
>  			} else {
> -				stage2_wp_pmds(kvm, pud, addr, next);
> +				stage2_wp_pmds(kvm, pud, addr, next, wp_ptes);
>  			}
>  		}
>  	} while (pud++, addr = next, addr != end);
> @@ -1491,8 +1495,10 @@ static void  stage2_wp_puds(struct kvm *kvm, 
> pgd_t *pgd,
>   * @kvm:	The KVM pointer
>   * @addr:	Start address of range
>   * @end:	End address of range
> + * @wp_ptes:	Write protect ptes or not
>   */
> -static void stage2_wp_range(struct kvm *kvm, phys_addr_t addr, 
> phys_addr_t end)
> +static void stage2_wp_range(struct kvm *kvm, phys_addr_t addr,
> +			    phys_addr_t end, bool wp_ptes)
>  {
>  	pgd_t *pgd;
>  	phys_addr_t next;
> @@ -1513,7 +1519,7 @@ static void stage2_wp_range(struct kvm *kvm,
> phys_addr_t addr, phys_addr_t end)
>  			break;
>  		next = stage2_pgd_addr_end(kvm, addr, end);
>  		if (stage2_pgd_present(kvm, *pgd))
> -			stage2_wp_puds(kvm, pgd, addr, next);
> +			stage2_wp_puds(kvm, pgd, addr, next, wp_ptes);
>  	} while (pgd++, addr = next, addr != end);
>  }
> 
> @@ -1535,6 +1541,7 @@ void kvm_mmu_wp_memory_region(struct kvm *kvm, 
> int slot)
>  	struct kvm_memslots *slots = kvm_memslots(kvm);
>  	struct kvm_memory_slot *memslot = id_to_memslot(slots, slot);
>  	phys_addr_t start, end;
> +	bool wp_ptes;
> 
>  	if (WARN_ON_ONCE(!memslot))
>  		return;
> @@ -1543,7 +1550,14 @@ void kvm_mmu_wp_memory_region(struct kvm *kvm, 
> int slot)
>  	end = (memslot->base_gfn + memslot->npages) << PAGE_SHIFT;
> 
>  	spin_lock(&kvm->mmu_lock);
> -	stage2_wp_range(kvm, start, end);
> +	/*
> +	 * If we're with initial-all-set, we don't need to write protect
> +	 * any small page because they're reported as dirty already.
> +	 * However we still need to write-protect huge pages so that the
> +	 * page split can happen lazily on the first write to the huge page.
> +	 */
> +	wp_ptes = !kvm_dirty_log_manual_protect_and_init_set(kvm);
> +	stage2_wp_range(kvm, start, end, wp_ptes);
>  	spin_unlock(&kvm->mmu_lock);
>  	kvm_flush_remote_tlbs(kvm);
>  }
> @@ -1567,7 +1581,7 @@ static void
> kvm_mmu_write_protect_pt_masked(struct kvm *kvm,
>  	phys_addr_t start = (base_gfn +  __ffs(mask)) << PAGE_SHIFT;
>  	phys_addr_t end = (base_gfn + __fls(mask) + 1) << PAGE_SHIFT;
> 
> -	stage2_wp_range(kvm, start, end);
> +	stage2_wp_range(kvm, start, end, true);
>  }
> 
>  /*

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
