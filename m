Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FED81E3D96
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 11:29:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YJMOcHWFS4iqvcZANKrrWc0hngtIdCJ+B9lI3BaDikw=; b=ITCS9RKWQZxqL3
	f0noBAdM35g/zqfDljuiifFV8S4OVbf9t+KkiOh4zgNYRhW7wi1/+LRAP1sntAsm5eOsk6wiDjfF8
	7OCD3UPceEximn2M25Uia2VWLnQfd7NdgFXT5lD3TGvPhmLuq5tE8xk0W2FeNqWWI8A3cuFzPaOFd
	75QDSWxfg8qTBogcnGNPNYKTN4QxT3j51cfWi8oUsofRfQE0ovsW0+o0w8+8f5UJ9zDr5SFHstOOT
	ogxhMBzwCGR+x3fnIuhkCf9e08Fq7g53mpudbapAQ0QGZcAG1JaxP2SqC9dLehv9MClkDJSTyxszo
	Xe17YDCCCHOw0DQKjtbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdsNI-0007Ij-8w; Wed, 27 May 2020 09:29:24 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdsN6-0007G6-Su
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 09:29:15 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 0B8E0E4858C83D8465D0;
 Wed, 27 May 2020 17:28:58 +0800 (CST)
Received: from [10.173.221.230] (10.173.221.230) by
 DGGEMS401-HUB.china.huawei.com (10.3.19.201) with Microsoft SMTP Server id
 14.3.487.0; Wed, 27 May 2020 17:28:51 +0800
Subject: Re: [RFC PATCH 2/7] KVM: arm64: Set DBM bit of PTEs if hw DBM enabled
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20200525112406.28224-1-zhukeqian1@huawei.com>
 <20200525112406.28224-3-zhukeqian1@huawei.com> <20200526114926.GD17051@gaia>
From: zhukeqian <zhukeqian1@huawei.com>
Message-ID: <01147c57-b45e-0a40-da9a-4a0e56aac78d@huawei.com>
Date: Wed, 27 May 2020 17:28:39 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <20200526114926.GD17051@gaia>
X-Originating-IP: [10.173.221.230]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_022913_104639_0DA4F207 
X-CRM114-Status: GOOD (  17.16  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.191 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 linux-kernel@vger.kernel.org, Sean
 Christopherson <sean.j.christopherson@intel.com>,
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

Hi Catalin,

On 2020/5/26 19:49, Catalin Marinas wrote:
> On Mon, May 25, 2020 at 07:24:01PM +0800, Keqian Zhu wrote:
>> diff --git a/arch/arm64/include/asm/pgtable-prot.h b/arch/arm64/include/asm/pgtable-prot.h
>> index 1305e28225fc..f9910ba2afd8 100644
>> --- a/arch/arm64/include/asm/pgtable-prot.h
>> +++ b/arch/arm64/include/asm/pgtable-prot.h
>> @@ -79,6 +79,7 @@ extern bool arm64_use_ng_mappings;
>>  	})
>>  
>>  #define PAGE_S2			__pgprot(_PROT_DEFAULT | PAGE_S2_MEMATTR(NORMAL) | PTE_S2_RDONLY | PAGE_S2_XN)
>> +#define PAGE_S2_DBM		__pgprot(_PROT_DEFAULT | PAGE_S2_MEMATTR(NORMAL) | PTE_S2_RDONLY | PAGE_S2_XN | PTE_DBM)
> 
> You don't need a new page permission (see below).
> 
>>  #define PAGE_S2_DEVICE		__pgprot(_PROT_DEFAULT | PAGE_S2_MEMATTR(DEVICE_nGnRE) | PTE_S2_RDONLY | PTE_S2_XN)
>>  
>>  #define PAGE_NONE		__pgprot(((_PAGE_DEFAULT) & ~PTE_VALID) | PTE_PROT_NONE | PTE_RDONLY | PTE_NG | PTE_PXN | PTE_UXN)
>> diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
>> index e3b9ee268823..dc97988eb2e0 100644
>> --- a/virt/kvm/arm/mmu.c
>> +++ b/virt/kvm/arm/mmu.c
>> @@ -1426,6 +1426,10 @@ static void stage2_wp_ptes(pmd_t *pmd, phys_addr_t addr, phys_addr_t end)
>>  	pte = pte_offset_kernel(pmd, addr);
>>  	do {
>>  		if (!pte_none(*pte)) {
>> +#ifdef CONFIG_ARM64_HW_AFDBM
>> +			if (kvm_hw_dbm_enabled() && !kvm_s2pte_dbm(pte))
>> +				kvm_set_s2pte_dbm(pte);
>> +#endif
>>  			if (!kvm_s2pte_readonly(pte))
>>  				kvm_set_s2pte_readonly(pte);
>>  		}
> 
> Setting the DBM bit is equivalent to marking the page writable. The
> actual writable pte bit (S2AP[1] or HAP[2] as we call them in Linux for
> legacy reasons) tells you whether the page has been dirtied but it is
> still writable if you set DBM. Doing this in stage2_wp_ptes()
> practically means that you no longer have read-only pages at S2. There
> are several good reasons why you don't want to break this. For example,
> the S2 pte may already be read-only for other reasons (CoW).
> 
Thanks, your comments help to solve the first problem in cover letter.

> I think you should only set the DBM bit if the pte was previously
> writable. In addition, any permission change to the S2 pte must take
> into account the DBM bit and clear it while transferring the dirty
> status to the underlying page. I'm not deeply familiar with all these
> callbacks into KVM but two such paths are kvm_unmap_hva_range() and the
> kvm_mmu_notifier_change_pte().
Yes, I agree.
> 
> 
>> @@ -1827,7 +1831,15 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
>>  
>>  		ret = stage2_set_pmd_huge(kvm, memcache, fault_ipa, &new_pmd);
>>  	} else {
>> -		pte_t new_pte = kvm_pfn_pte(pfn, mem_type);
>> +		pte_t new_pte;
>> +
>> +#ifdef CONFIG_ARM64_HW_AFDBM
>> +		if (kvm_hw_dbm_enabled() &&
>> +		    pgprot_val(mem_type) == pgprot_val(PAGE_S2)) {
>> +			mem_type = PAGE_S2_DBM;
>> +		}
>> +#endif
>> +		new_pte = kvm_pfn_pte(pfn, mem_type);
>>  
>>  		if (writable) {
>>  			new_pte = kvm_s2pte_mkwrite(new_pte);
> 
> That's wrong here. Basically for any fault you get, you just turn the S2
> page writable. The point of DBM is that you don't get write faults at
> all if you have a writable page. So, as I said above, only set the DBM
> bit if you stored a writable S2 pte (kvm_s2pte_mkwrite()).
Yeah, you are right. I will correct it in Patch v1.
> 

Thanks,
Keqian


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
