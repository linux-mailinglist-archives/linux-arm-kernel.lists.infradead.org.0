Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C9691E3617
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 05:02:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D56vsTBhDHWa2yomUS33Xlr7WRvFlVV8gWsthaXi66Y=; b=ntq4L2q47x5yKq
	5m4H4sN4+2+jRBhQRGlaITuEfVUs0XQ/aYpgEpLc67gDfdtCd9ULnGXoWrBQvb7OQnx7EgMfBkTi5
	Evgm6VXmAIHQr0pnfrps+6baMQiE49rf7bEdlDnkQiY/2k5fSPnvhCvRqAe985X3vzPnf7QnFbPXM
	Ze+tJ3CMUdR8Gy+cybQe/4fAT4vbaPjoLLltEPp4R8ZI7mSCqRbscScQeJzQXs3t62U0yrI56y5AQ
	dZo0Fh8EPglG+xJhIYUo4i3Zd9xrStifyLoVumvmjPBqEjTSQLhPQVwJSHn325QKJEKQcB+lNCiv4
	3vju1x60XGhZ/SNtvpPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdmKM-00007B-DG; Wed, 27 May 2020 03:01:58 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdmK9-00006g-Va
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 03:01:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590548505;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Cpbim3FlbcrNy7gJlhAHb6/Vs/A9UAxM9oWCouCSNuc=;
 b=ex4z2G/+5ufStgo8bdAnper+vTCl2n7CNbbZAUKRQlGPFqblHu5nmgGpx52yxPQSrD68nT
 tDAGHFnlQiOaXGq5BSLeMBaLjgIsgCFAhCNQeayiIeWJ3R8xGWGPS5jaLq9h+6bo5Nlels
 VBjCS2OmC6tdOt5BKNEhzKp+c30aSDc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-262-Q6siw2vvNzC2MrlGNtVjmw-1; Tue, 26 May 2020 23:01:40 -0400
X-MC-Unique: Q6siw2vvNzC2MrlGNtVjmw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2DA15801503;
 Wed, 27 May 2020 03:01:39 +0000 (UTC)
Received: from localhost.localdomain (vpn2-54-130.bne.redhat.com
 [10.64.54.130])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 476AE5D9E5;
 Wed, 27 May 2020 03:01:32 +0000 (UTC)
Subject: Re: [PATCH RFCv2 6/9] kvm/arm64: Export kvm_handle_user_mem_abort()
 with prefault mode
To: Mark Rutland <mark.rutland@arm.com>
References: <20200508032919.52147-1-gshan@redhat.com>
 <20200508032919.52147-7-gshan@redhat.com>
 <20200526105807.GE1363@C02TD0UTHF1T.local>
From: Gavin Shan <gshan@redhat.com>
Message-ID: <8d758b47-3fb0-ee70-700f-fa8af407c115@redhat.com>
Date: Wed, 27 May 2020 13:01:29 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200526105807.GE1363@C02TD0UTHF1T.local>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_200146_092169_1DD5947D 
X-CRM114-Status: GOOD (  22.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Reply-To: Gavin Shan <gshan@redhat.com>
Cc: aarcange@redhat.com, drjones@redhat.com, suzuki.poulose@arm.com,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org, eric.auger@redhat.com,
 james.morse@arm.com, shan.gavin@gmail.com, maz@kernel.org, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On 5/26/20 8:58 PM, Mark Rutland wrote:
> On Fri, May 08, 2020 at 01:29:16PM +1000, Gavin Shan wrote:
>> This renames user_mem_abort() to kvm_handle_user_mem_abort(), and
>> then export it. The function will be used in asynchronous page fault
>> to populate a page table entry once the corresponding page is populated
>> from the backup device (e.g. swap partition):
>>
>>     * Parameter @fault_status is replace by @esr.
>>     * The parameters are reorder based on their importance.
> 
> It seems like multiple changes are going on here, and it would be
> clearer with separate patches.
> 
> Passing the ESR rather than the extracted fault status seems fine, but
> for clarirty it's be nicer to do this in its own patch.
> 

Ok. I'll have a separate patch to do this.

> Why is it necessary to re-order the function parameters? Does that align
> with other function prototypes?
> 

There are no explicit reasons for it. I can restore the order to what we
had previously if you like.

> What exactly is the `prefault` parameter meant to do? It doesn't do
> anything currently, so it'd be better to introduce it later when logic
> using it is instroduced, or where callers will pass distinct values.
> 

Yes, fair enough. I will merge the logic with PATCH[7] then.

> Thanks,
> Mark.
> 

Thanks,
Gavin

>>
>> This shouldn't cause any functional changes.
>>
>> Signed-off-by: Gavin Shan <gshan@redhat.com>
>> ---
>>   arch/arm64/include/asm/kvm_host.h |  4 ++++
>>   virt/kvm/arm/mmu.c                | 14 ++++++++------
>>   2 files changed, 12 insertions(+), 6 deletions(-)
>>
>> diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
>> index 32c8a675e5a4..f77c706777ec 100644
>> --- a/arch/arm64/include/asm/kvm_host.h
>> +++ b/arch/arm64/include/asm/kvm_host.h
>> @@ -437,6 +437,10 @@ int __kvm_arm_vcpu_set_events(struct kvm_vcpu *vcpu,
>>   			      struct kvm_vcpu_events *events);
>>   
>>   #define KVM_ARCH_WANT_MMU_NOTIFIER
>> +int kvm_handle_user_mem_abort(struct kvm_vcpu *vcpu, unsigned int esr,
>> +			      struct kvm_memory_slot *memslot,
>> +			      phys_addr_t fault_ipa, unsigned long hva,
>> +			      bool prefault);
>>   int kvm_unmap_hva_range(struct kvm *kvm,
>>   			unsigned long start, unsigned long end);
>>   int kvm_set_spte_hva(struct kvm *kvm, unsigned long hva, pte_t pte);
>> diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
>> index e462e0368fd9..95aaabb2b1fc 100644
>> --- a/virt/kvm/arm/mmu.c
>> +++ b/virt/kvm/arm/mmu.c
>> @@ -1656,12 +1656,12 @@ static bool fault_supports_stage2_huge_mapping(struct kvm_memory_slot *memslot,
>>   	       (hva & ~(map_size - 1)) + map_size <= uaddr_end;
>>   }
>>   
>> -static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
>> -			  struct kvm_memory_slot *memslot, unsigned long hva,
>> -			  unsigned long fault_status)
>> +int kvm_handle_user_mem_abort(struct kvm_vcpu *vcpu, unsigned int esr,
>> +			      struct kvm_memory_slot *memslot,
>> +			      phys_addr_t fault_ipa, unsigned long hva,
>> +			      bool prefault)
>>   {
>> -	int ret;
>> -	u32 esr = kvm_vcpu_get_esr(vcpu);
>> +	unsigned int fault_status = kvm_vcpu_trap_get_fault_type(esr);
>>   	bool write_fault, writable, force_pte = false;
>>   	bool exec_fault, needs_exec;
>>   	unsigned long mmu_seq;
>> @@ -1674,6 +1674,7 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
>>   	pgprot_t mem_type = PAGE_S2;
>>   	bool logging_active = memslot_is_logging(memslot);
>>   	unsigned long vma_pagesize, flags = 0;
>> +	int ret;
>>   
>>   	write_fault = kvm_is_write_fault(esr);
>>   	exec_fault = kvm_vcpu_trap_is_iabt(esr);
>> @@ -1995,7 +1996,8 @@ int kvm_handle_guest_abort(struct kvm_vcpu *vcpu, struct kvm_run *run)
>>   		goto out_unlock;
>>   	}
>>   
>> -	ret = user_mem_abort(vcpu, fault_ipa, memslot, hva, fault_status);
>> +	ret = kvm_handle_user_mem_abort(vcpu, esr, memslot,
>> +					fault_ipa, hva, false);
>>   	if (ret == 0)
>>   		ret = 1;
>>   out:
>> -- 
>> 2.23.0
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
