Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DDBAB7176
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 04:17:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YywWuJ6etBQ7Ufn+jImjgrS+iPTUPfj+jju8WkdGsSU=; b=Mtz7LEZhhUH1Tf/JRsqGJifIw
	0miA3j8+TzuODKaFid3a8Z0GIbjz19kpn4c/oIbajIRxwiCxoC91dgFRdp0BdLIwWCw3yqCXe3Qhk
	CEr7WEro2uyFqkoHMYEZB3vkwaA1fl+27n/gKtnCPctSXlCPoy1vWDyTONE2GDRir/5TxS6AJ+muB
	9bN9dxWC/GP1Sif5Ed0eEVUDu1YUMedF1pTGO/hp5OM7HDiIAmEhfQBFik3I/FGrZMVUPg4FrGwtL
	tf/eX+iQvBPMFO6r2SYyNT/D6OIHnG0zmYyiFQ9Ag+QKh08euCqclIEiP/H2Hx+jYUc8jhaZirThm
	a1Pl2HtKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAm0M-0007kw-4R; Thu, 19 Sep 2019 02:17:10 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAm09-0007kX-As
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 02:16:58 +0000
Received: by mail-pf1-x441.google.com with SMTP id h195so1201964pfe.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 19:16:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding;
 bh=v8j+KKtmRVgMXlvD0CNN4PMpgxJdXZjDz2rJhuUyCXk=;
 b=HOgLAhQlZVOSPHKYoDkAVD3oL1lCw1GE1ZHBOF2nQQIdMqGoTCHK4zJ4hjAcCbHwth
 0+Y43Ifzp50k4DuSGywzI5fGgz0Zz4nBLdqJzK/n4l7DoKyRyrjyS96/QtCjKoswlzE+
 nbWD/skOa3B5bs5MB6VP04wPKrGvVCiFmp/1uaHGlU7WgWbe6dK9tuAJjloMhL5mFAZo
 KuJkdAvWs0L875tb9h1ARdEkmGJv0t/QgMoaAyVGFRrL0GBfbuvcSR5SNsqOKgJFf6wy
 IiSKa/IC/WSC1njRHr+BebkeMwE363WpPVOkUYFAZjaunXzKUCOkVDDcu/rTdUPKnkYQ
 v5aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding;
 bh=v8j+KKtmRVgMXlvD0CNN4PMpgxJdXZjDz2rJhuUyCXk=;
 b=JBdBcKUoLX4b3Ur8SKYFGRDgqSzeB3nCfKmlz8a1b2Wc4ebJQZYvNcf5lRwjuAK4vT
 zx8CV8uAhLTaiCCiJ5gRSdC9r32ybV0fzoendXdQdnpTTEo/OtgSnwmoXiVE5Gzw40zK
 K9pFWNcvLy6moEMorWJuhXrlJZhHkJoHxR1Hx0XpbjRzp4ylqNEqlEfgc/yNeLVWj8Xd
 GKiZyutQeRdbpY5IzcTEvP3aJAS+MZ4v/vhtWN+UXStEHBfbsK9ipQBL9Rj6s/Fzm6ZW
 NqLPTAP6ffKHN2GbEMpr6pPPQSgFnl3bfRpXlHAOqfBTJELVNRJ1+rl4qoX7PgxofYf1
 z0/Q==
X-Gm-Message-State: APjAAAWQq9aSqxAFIdoqFRre6TcCfrNnOeocByZ+aCTNupGD3ime6xgG
 Tp3k+2D7NYqyFLiuMM2Fhp4=
X-Google-Smtp-Source: APXvYqyekBZ5hZ8KIt+X8yfqNbL6YgnRIcVS2ZkbCmmFIyM+ir8QRC6om0PvBn39Wzt+1iBsGgw1iQ==
X-Received: by 2002:a62:7d81:: with SMTP id y123mr7630365pfc.133.1568859416096; 
 Wed, 18 Sep 2019 19:16:56 -0700 (PDT)
Received: from [0.0.0.0] (104.129.187.94.16clouds.com. [104.129.187.94])
 by smtp.gmail.com with ESMTPSA id z12sm12749012pfj.41.2019.09.18.19.16.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 18 Sep 2019 19:16:55 -0700 (PDT)
Subject: Re: [PATCH v4 3/3] mm: fix double page fault on arm64 if PTE_AF is
 cleared
To: "Kirill A. Shutemov" <kirill@shutemov.name>, Jia He <justin.he@arm.com>
References: <20190918131914.38081-1-justin.he@arm.com>
 <20190918131914.38081-4-justin.he@arm.com>
 <20190918140027.ckj32xnryyyesc23@box>
From: Jia He <hejianet@gmail.com>
Message-ID: <bebe97e1-b1fe-7f36-91c0-7d412f093560@gmail.com>
Date: Thu, 19 Sep 2019 10:16:34 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190918140027.ckj32xnryyyesc23@box>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_191657_385823_6D67FC79 
X-CRM114-Status: GOOD (  24.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hejianet[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kaly Xin <Kaly.Xin@arm.com>,
 Ralph Campbell <rcampbell@nvidia.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, Jun Yao <yaojun8558363@gmail.com>,
 linux-mm@kvack.org, =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Punit Agrawal <punitagrawal@gmail.com>, Marc Zyngier <maz@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Alex Van Brunt <avanbrunt@nvidia.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
 Robin Murphy <robin.murphy@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kirill

[On behalf of justin.he@arm.com because some mails are filted...]

On 2019/9/18 22:00, Kirill A. Shutemov wrote:
> On Wed, Sep 18, 2019 at 09:19:14PM +0800, Jia He wrote:
>> When we tested pmdk unit test [1] vmmalloc_fork TEST1 in arm64 guest, there
>> will be a double page fault in __copy_from_user_inatomic of cow_user_page.
>>
>> Below call trace is from arm64 do_page_fault for debugging purpose
>> [  110.016195] Call trace:
>> [  110.016826]  do_page_fault+0x5a4/0x690
>> [  110.017812]  do_mem_abort+0x50/0xb0
>> [  110.018726]  el1_da+0x20/0xc4
>> [  110.019492]  __arch_copy_from_user+0x180/0x280
>> [  110.020646]  do_wp_page+0xb0/0x860
>> [  110.021517]  __handle_mm_fault+0x994/0x1338
>> [  110.022606]  handle_mm_fault+0xe8/0x180
>> [  110.023584]  do_page_fault+0x240/0x690
>> [  110.024535]  do_mem_abort+0x50/0xb0
>> [  110.025423]  el0_da+0x20/0x24
>>
>> The pte info before __copy_from_user_inatomic is (PTE_AF is cleared):
>> [ffff9b007000] pgd=000000023d4f8003, pud=000000023da9b003, pmd=000000023d4b3003, pte=360000298607bd3
>>
>> As told by Catalin: "On arm64 without hardware Access Flag, copying from
>> user will fail because the pte is old and cannot be marked young. So we
>> always end up with zeroed page after fork() + CoW for pfn mappings. we
>> don't always have a hardware-managed access flag on arm64."
>>
>> This patch fix it by calling pte_mkyoung. Also, the parameter is
>> changed because vmf should be passed to cow_user_page()
>>
>> [1] https://github.com/pmem/pmdk/tree/master/src/test/vmmalloc_fork
>>
>> Reported-by: Yibo Cai <Yibo.Cai@arm.com>
>> Signed-off-by: Jia He <justin.he@arm.com>
>> ---
>>   mm/memory.c | 35 ++++++++++++++++++++++++++++++-----
>>   1 file changed, 30 insertions(+), 5 deletions(-)
>>
>> diff --git a/mm/memory.c b/mm/memory.c
>> index e2bb51b6242e..d2c130a5883b 100644
>> --- a/mm/memory.c
>> +++ b/mm/memory.c
>> @@ -118,6 +118,13 @@ int randomize_va_space __read_mostly =
>>   					2;
>>   #endif
>>   
>> +#ifndef arch_faults_on_old_pte
>> +static inline bool arch_faults_on_old_pte(void)
>> +{
>> +	return false;
>> +}
>> +#endif
>> +
>>   static int __init disable_randmaps(char *s)
>>   {
>>   	randomize_va_space = 0;
>> @@ -2140,8 +2147,12 @@ static inline int pte_unmap_same(struct mm_struct *mm, pmd_t *pmd,
>>   	return same;
>>   }
>>   
>> -static inline void cow_user_page(struct page *dst, struct page *src, unsigned long va, struct vm_area_struct *vma)
>> +static inline void cow_user_page(struct page *dst, struct page *src,
>> +				 struct vm_fault *vmf)
>>   {
>> +	struct vm_area_struct *vma = vmf->vma;
>> +	unsigned long addr = vmf->address;
>> +
>>   	debug_dma_assert_idle(src);
>>   
>>   	/*
>> @@ -2152,20 +2163,34 @@ static inline void cow_user_page(struct page *dst, struct page *src, unsigned lo
>>   	 */
>>   	if (unlikely(!src)) {
>>   		void *kaddr = kmap_atomic(dst);
>> -		void __user *uaddr = (void __user *)(va & PAGE_MASK);
>> +		void __user *uaddr = (void __user *)(addr & PAGE_MASK);
>> +		pte_t entry;
>>   
>>   		/*
>>   		 * This really shouldn't fail, because the page is there
>>   		 * in the page tables. But it might just be unreadable,
>>   		 * in which case we just give up and fill the result with
>> -		 * zeroes.
>> +		 * zeroes. On architectures with software "accessed" bits,
>> +		 * we would take a double page fault here, so mark it
>> +		 * accessed here.
>>   		 */
>> +		if (arch_faults_on_old_pte() && !pte_young(vmf->orig_pte)) {
>> +			spin_lock(vmf->ptl);
>> +			if (likely(pte_same(*vmf->pte, vmf->orig_pte))) {
>> +				entry = pte_mkyoung(vmf->orig_pte);
>> +				if (ptep_set_access_flags(vma, addr,
>> +							  vmf->pte, entry, 0))
>> +					update_mmu_cache(vma, addr, vmf->pte);
>> +			}
> I don't follow.
>
> So if pte has changed under you, you don't set the accessed bit, but never
> the less copy from the user.
>
> What makes you think it will not trigger the same problem?
>
> I think we need to make cow_user_page() fail in this case and caller --
> wp_page_copy() -- return zero. If the fault was solved by other thread, we
> are fine. If not userspace would re-fault on the same address and we will
> handle the fault from the second attempt.

Thanks for the pointing. How about make cow_user_page() be returned

VM_FAULT_RETRY? Then in do_page_fault(), it can retry the page fault?

---
Cheers,
Justin (Jia He)

>
>> +			spin_unlock(vmf->ptl);
>> +		}
>> +
>>   		if (__copy_from_user_inatomic(kaddr, uaddr, PAGE_SIZE))
>>   			clear_page(kaddr);
>>   		kunmap_atomic(kaddr);
>>   		flush_dcache_page(dst);
>>   	} else
>> -		copy_user_highpage(dst, src, va, vma);
>> +		copy_user_highpage(dst, src, addr, vma);
>>   }
>>   
>>   static gfp_t __get_fault_gfp_mask(struct vm_area_struct *vma)
>> @@ -2318,7 +2343,7 @@ static vm_fault_t wp_page_copy(struct vm_fault *vmf)
>>   				vmf->address);
>>   		if (!new_page)
>>   			goto oom;
>> -		cow_user_page(new_page, old_page, vmf->address, vma);
>> +		cow_user_page(new_page, old_page, vmf);
>>   	}
>>   
>>   	if (mem_cgroup_try_charge_delay(new_page, mm, GFP_KERNEL, &memcg, false))
>> -- 
>> 2.17.1
>>
>>
-- 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
