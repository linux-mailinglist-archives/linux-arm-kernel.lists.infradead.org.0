Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BA421CF3F6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 14:04:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gS/zZ8drceq/yzgb/0YydAO4cy8Ge6DfKYssm4uZfmY=; b=I4uWAHMKOMiBNG
	UWv0q2cQPYdLBp7BK5HViSMacKF9okXEArVGjn6sELgn8DZfC/S9riSJnHp3S94RRNsKm2KUbwwOQ
	KvqwyyL41LoDFasgPcv9gkiORbWKDJE49wXM4I1sEt/tZ8h86QX9KcXOeDYSC6T/nNKRwqjlNFz+q
	GBSCOzoLUC62TuFdxU+XlmL1ul0XPTgIVyBpYw5S55utADQbaaiXOJ/JXbCT+KOydfyDlaKxyKdzB
	3t9fPvPJN/xYWAN/7DFW9MfA75iofkgrUGhHAdEFmdUny3O3wLiFTGkHpRNaNdUVOYRWINGrxLUzF
	7oxi4X+Q8PbR47JF8k9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYTeU-0001gp-Rp; Tue, 12 May 2020 12:04:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYTeK-0001fs-1b
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 12:04:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 073B130E;
 Tue, 12 May 2020 05:04:38 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9F7063F71E;
 Tue, 12 May 2020 05:04:36 -0700 (PDT)
Subject: Re: [PATCH 08/26] KVM: arm64: Use TTL hint in when invalidating
 stage-2 translations
To: Andrew Scull <ascull@google.com>
References: <20200422120050.3693593-1-maz@kernel.org>
 <20200422120050.3693593-9-maz@kernel.org>
 <20200507151321.GH237572@google.com>
From: James Morse <james.morse@arm.com>
Message-ID: <63e16fdd-fe1b-07d3-23b7-cd99170fdd59@arm.com>
Date: Tue, 12 May 2020 13:04:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200507151321.GH237572@google.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_050440_522583_4659A6B3 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, kvm@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 George Cherian <gcherian@marvell.com>,
 "Zengtao \(B\)" <prime.zeng@hisilicon.com>,
 Andre Przywara <andre.przywara@arm.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

On 07/05/2020 16:13, Andrew Scull wrote:
>> @@ -176,7 +177,7 @@ static void clear_stage2_pud_entry(struct kvm_s2_mmu *mmu, pud_t *pud, phys_addr
>>  	pmd_t *pmd_table __maybe_unused = stage2_pmd_offset(kvm, pud, 0);
>>  	VM_BUG_ON(stage2_pud_huge(kvm, *pud));
>>  	stage2_pud_clear(kvm, pud);
>> -	kvm_tlb_flush_vmid_ipa(mmu, addr);
>> +	kvm_tlb_flush_vmid_ipa(mmu, addr, S2_NO_LEVEL_HINT);
>>  	stage2_pmd_free(kvm, pmd_table);
>>  	put_page(virt_to_page(pud));
>>  }
>> @@ -186,7 +187,7 @@ static void clear_stage2_pmd_entry(struct kvm_s2_mmu *mmu, pmd_t *pmd, phys_addr
>>  	pte_t *pte_table = pte_offset_kernel(pmd, 0);
>>  	VM_BUG_ON(pmd_thp_or_huge(*pmd));
>>  	pmd_clear(pmd);
>> -	kvm_tlb_flush_vmid_ipa(mmu, addr);
>> +	kvm_tlb_flush_vmid_ipa(mmu, addr, S2_NO_LEVEL_HINT);
>>  	free_page((unsigned long)pte_table);
>>  	put_page(virt_to_page(pmd));
>>  }
> 
> Going by the names, is it possible to give a better level hint for these
> cases?

There is no leaf entry being invalidated here. After clearing the range, we found we'd
emptied (and invalidated) a whole page of mappings:
|	if (stage2_pmd_table_empty(kvm, start_pmd))
|		clear_stage2_pud_entry(mmu, pud, start_addr);

Now we want to remove the link to the empty page so we can free it. We are changing the
structure of the tables, not what gets mapped.

I think this is why we need the un-hinted behaviour, to invalidate "any level of the
translation table walk required to translate the specified IPA". Otherwise the hardware
can look for a leaf at the indicated level, find none, and do nothing.


This is sufficiently horrible, its possible I've got it completely wrong! (does it make
sense?)


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
