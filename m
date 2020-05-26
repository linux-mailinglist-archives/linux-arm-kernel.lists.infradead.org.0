Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04BE11E213B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 13:49:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qbzIEyrXeb5802HkgoaQ5Z0cnPqT4WmdhsPJPvbTnDM=; b=lsgOl1xh9uU+zT
	RY4wwz/mpLQMUb3wBWmFza3n5wM5xvY0EBXmjj++bpdSJvB+3zNwEyoQVP7GGwMYjozl+rVbSAtqt
	oB9ee7qw86gfomKRMpxNwBjvTupF6R/9izQZaLw7e2tweZGxan60kiSqOXACs5CyhFWWf8s9X+r5E
	75quosuTup6eRAj7YcjKRnLqPc1LDnVnjlxXJY7JS27PVbi7OIuD4t/QW6A7NRTGEk7OtYGG3rIXk
	Wlea3IptFvWvWJWvdTeMjEpAA16FYPE6ufQcV89MD7h1xYhRidScPiuFHwMJ4xfwqGQS9rHynA/Kj
	O5mn5SuBRe++L2OHGs4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdY5a-0001AH-Sg; Tue, 26 May 2020 11:49:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdY5O-000198-VM
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 11:49:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 16B8630E;
 Tue, 26 May 2020 04:49:32 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B510E3F6C4;
 Tue, 26 May 2020 04:49:29 -0700 (PDT)
Date: Tue, 26 May 2020 12:49:27 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Keqian Zhu <zhukeqian1@huawei.com>
Subject: Re: [RFC PATCH 2/7] KVM: arm64: Set DBM bit of PTEs if hw DBM enabled
Message-ID: <20200526114926.GD17051@gaia>
References: <20200525112406.28224-1-zhukeqian1@huawei.com>
 <20200525112406.28224-3-zhukeqian1@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200525112406.28224-3-zhukeqian1@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_044935_096664_CAFFA42E 
X-CRM114-Status: GOOD (  16.30  )
X-Spam-Score: -1.1 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Andrew Morton <akpm@linux-foundation.org>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 linux-kernel@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 Peng Liang <liangpeng10@huawei.com>, Alexios Zavras <alexios.zavras@intel.com>,
 zhengxiang9@huawei.com, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, wanghaibin.wang@huawei.com,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 25, 2020 at 07:24:01PM +0800, Keqian Zhu wrote:
> diff --git a/arch/arm64/include/asm/pgtable-prot.h b/arch/arm64/include/asm/pgtable-prot.h
> index 1305e28225fc..f9910ba2afd8 100644
> --- a/arch/arm64/include/asm/pgtable-prot.h
> +++ b/arch/arm64/include/asm/pgtable-prot.h
> @@ -79,6 +79,7 @@ extern bool arm64_use_ng_mappings;
>  	})
>  
>  #define PAGE_S2			__pgprot(_PROT_DEFAULT | PAGE_S2_MEMATTR(NORMAL) | PTE_S2_RDONLY | PAGE_S2_XN)
> +#define PAGE_S2_DBM		__pgprot(_PROT_DEFAULT | PAGE_S2_MEMATTR(NORMAL) | PTE_S2_RDONLY | PAGE_S2_XN | PTE_DBM)

You don't need a new page permission (see below).

>  #define PAGE_S2_DEVICE		__pgprot(_PROT_DEFAULT | PAGE_S2_MEMATTR(DEVICE_nGnRE) | PTE_S2_RDONLY | PTE_S2_XN)
>  
>  #define PAGE_NONE		__pgprot(((_PAGE_DEFAULT) & ~PTE_VALID) | PTE_PROT_NONE | PTE_RDONLY | PTE_NG | PTE_PXN | PTE_UXN)
> diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
> index e3b9ee268823..dc97988eb2e0 100644
> --- a/virt/kvm/arm/mmu.c
> +++ b/virt/kvm/arm/mmu.c
> @@ -1426,6 +1426,10 @@ static void stage2_wp_ptes(pmd_t *pmd, phys_addr_t addr, phys_addr_t end)
>  	pte = pte_offset_kernel(pmd, addr);
>  	do {
>  		if (!pte_none(*pte)) {
> +#ifdef CONFIG_ARM64_HW_AFDBM
> +			if (kvm_hw_dbm_enabled() && !kvm_s2pte_dbm(pte))
> +				kvm_set_s2pte_dbm(pte);
> +#endif
>  			if (!kvm_s2pte_readonly(pte))
>  				kvm_set_s2pte_readonly(pte);
>  		}

Setting the DBM bit is equivalent to marking the page writable. The
actual writable pte bit (S2AP[1] or HAP[2] as we call them in Linux for
legacy reasons) tells you whether the page has been dirtied but it is
still writable if you set DBM. Doing this in stage2_wp_ptes()
practically means that you no longer have read-only pages at S2. There
are several good reasons why you don't want to break this. For example,
the S2 pte may already be read-only for other reasons (CoW).

I think you should only set the DBM bit if the pte was previously
writable. In addition, any permission change to the S2 pte must take
into account the DBM bit and clear it while transferring the dirty
status to the underlying page. I'm not deeply familiar with all these
callbacks into KVM but two such paths are kvm_unmap_hva_range() and the
kvm_mmu_notifier_change_pte().


> @@ -1827,7 +1831,15 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
>  
>  		ret = stage2_set_pmd_huge(kvm, memcache, fault_ipa, &new_pmd);
>  	} else {
> -		pte_t new_pte = kvm_pfn_pte(pfn, mem_type);
> +		pte_t new_pte;
> +
> +#ifdef CONFIG_ARM64_HW_AFDBM
> +		if (kvm_hw_dbm_enabled() &&
> +		    pgprot_val(mem_type) == pgprot_val(PAGE_S2)) {
> +			mem_type = PAGE_S2_DBM;
> +		}
> +#endif
> +		new_pte = kvm_pfn_pte(pfn, mem_type);
>  
>  		if (writable) {
>  			new_pte = kvm_s2pte_mkwrite(new_pte);

That's wrong here. Basically for any fault you get, you just turn the S2
page writable. The point of DBM is that you don't get write faults at
all if you have a writable page. So, as I said above, only set the DBM
bit if you stored a writable S2 pte (kvm_s2pte_mkwrite()).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
