Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9830C1FD115
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 17:34:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=o5wZZTVsoVE1yCVohSyJU9MUb1ImosSsCUagFkLSu+8=; b=RDZ4r/UwJz6Duy4lasF5KUvqZ
	m+rXCtTal8WCHQsYQtZGsSMKpP2AH0DD1OsPz+ubsozjq7mWIEiMDSa1mnHbbbzlFZLT9Yt3NSKaq
	Smhlxti9x9RfYqAU4VFhmHhNaHmrkA6HceJtZC9g4EzR97VYKRlNuQhTxyFQEIAFHXxbXHg21y8eu
	JAhB840GdAvJN2+GNUzJGDJG7LqUK/+pHiRXmxwuPMmiU5oqzCOZ1IkrrlkO5eFw//oseS0CTwWKQ
	V+e4OOhsA2sb4jYaPpMi8jw36oUs8mIBisTdeNSm2Vi+Qd+oGst+K28nuMlAO5kDqVoPBxUM0alAs
	rxdmSGDdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jla58-0001BL-DT; Wed, 17 Jun 2020 15:34:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jla4z-0001AE-Rr
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 15:34:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 55BD131B;
 Wed, 17 Jun 2020 08:34:20 -0700 (PDT)
Received: from [192.168.1.84] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9374A3F73C;
 Wed, 17 Jun 2020 08:34:18 -0700 (PDT)
Subject: Re: [RFC PATCH 2/2] arm64: kvm: Introduce MTE VCPU feature
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20200617123844.29960-1-steven.price@arm.com>
 <20200617123844.29960-3-steven.price@arm.com> <20200617143809.GF5388@gaia>
From: Steven Price <steven.price@arm.com>
Message-ID: <9d4ef6cf-2333-83b8-c555-e70b99b95b28@arm.com>
Date: Wed, 17 Jun 2020 16:34:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200617143809.GF5388@gaia>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_083421_944479_434963E6 
X-CRM114-Status: GOOD (  16.74  )
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Dave P Martin <Dave.Martin@arm.com>, James Morse <James.Morse@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17/06/2020 15:38, Catalin Marinas wrote:
> On Wed, Jun 17, 2020 at 01:38:44PM +0100, Steven Price wrote:
>> diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
>> index e3b9ee268823..040a7fffaa93 100644
>> --- a/virt/kvm/arm/mmu.c
>> +++ b/virt/kvm/arm/mmu.c
>> @@ -1783,6 +1783,17 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
>>   			vma_pagesize = PMD_SIZE;
>>   	}
>>   
>> +	if (system_supports_mte() && kvm->arch.vcpu_has_mte) {
>> +		/*
>> +		 * VM will be able to see the page's tags, so we must ensure
>> +		 * they have been initialised.
>> +		 */
>> +		struct page *page = pfn_to_page(pfn);
>> +
>> +		if (!test_and_set_bit(PG_mte_tagged, &page->flags))
>> +			mte_clear_page_tags(page_address(page), page_size(page));
>> +	}
> 
> Are all the guest pages always mapped via a Stage 2 fault? It may be
> better if we did that via kvm_set_spte_hva().
> 

I was under the impression that pages are always faulted into the stage 
2, but I have to admit I'm not 100% sure about that.

kvm_set_spte_hva() may be more appropriate, although on first look I 
don't understand how that function deals with huge pages. Is it actually 
called for normal mappings or only for changes due to the likes of KSM?

Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
