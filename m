Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0164A1ACBD4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 17:56:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NjjmBj96DM4LfHLoAkHUGXzsgaN8qt5gKPyjMFCvnZM=; b=C+YUd1DAkSWavk
	Fm2B08Ris9XkbEQ3h4KizC6Efe6U0bqeaMaVuss+RfT77sodASxnBHFW9h5XfQ0+ZMqnSnlcTm5/O
	WzVL/F9PzBM23lMEYG2HZzFp0q5sqYF28tfNUCCCkpb3TIsibD/gQ9TPs0jrPTwU0GGdyfwDQ4bYE
	ZZi9YZxae9hHMsvh1HeMjBoKihpZ2mYOrNF2piNF/F4tKfgdKE8dBXuBYGAxrl/37oD/Hwk3Y5/V1
	T9Z2efmZbK57rp4y03AZo41XmBLU1UBc/pkxOzao4xs9nJIOSHWtZurRVz4TQb8Ijp6nr/KzaCwAy
	vUN/gTq04mYewWkLZXMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP6sC-0006vV-Jp; Thu, 16 Apr 2020 15:56:16 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP6rz-0006qx-W3
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 15:56:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1587052561;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nvu+MW6oZUAc4Rt+d0KHMjWiSPVqXx7NpVhFclBCSuA=;
 b=ID5DZtvH9sTXEpFaffj3HRg4lfpKkzt5Eql5S3WZluccUKLn/MODDhQWE18HIm5N2+o4W6
 asQly0N2VAinsyOyxwMOkrAU2pfROdRYIjOTof9z9sYOK4B87LKnuPmwemuOcnsvGp8xcS
 DnzXGw1KxO02JWd4zJwfczZdXbSCFPY=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-116-VDYw7LyUPqacJzKDNObaaw-1; Thu, 16 Apr 2020 11:55:59 -0400
X-MC-Unique: VDYw7LyUPqacJzKDNObaaw-1
Received: by mail-wr1-f69.google.com with SMTP id a3so1949585wro.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 08:55:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nvu+MW6oZUAc4Rt+d0KHMjWiSPVqXx7NpVhFclBCSuA=;
 b=BNInXGlH+4wkareVZgrKlfHsT3QDuGEuhQhtYOhifvovktMV6K79fZ4lZKcws9XsPZ
 7YREOXcA21CzIwDe929kvmBQSEjG/PZrXF1v866mMG1XdNQADjECBy1hCEK3Z/iukCAL
 uYR/8/VTpmVNMgJsilTeE97FSiNpA2sxsodS0DEFfy087FStcCca3HgIglbHxL+JV612
 Cf/QE8W228Vl2v837963ZHXfKldct1Dv+8XJS588JX2HnkCM5IziFX/GB50KgTUly/e0
 4aomwGG/WBxdxA4igEX1kFcM7+E20eIBhU1Sc3uQv6PoryvjgDnw8S5o2AdLtMgsv1Dq
 M2ow==
X-Gm-Message-State: AGi0PuYS0r9OkGoJIc6n3u8i+US4jRlyHjgL1f69doDfYrEYVZdHaE1k
 v05iqYdm3Q/Z3rVp8NO2niM3rxNXX26EW4vllX6y0CvqHEpmSgzSe7TYT25hdiZBksZWn64vKBL
 ax53RqBc0et87vKmBiI2X7sJChZ7dGeRL6es=
X-Received: by 2002:a5d:4442:: with SMTP id x2mr18151638wrr.101.1587052558413; 
 Thu, 16 Apr 2020 08:55:58 -0700 (PDT)
X-Google-Smtp-Source: APiQypIL1Ng21KPZXq7/mqYvYnYksD3lb24Jyd1BsaIZ28zHv5VGpa6h6z5Fa+Khf5lPYqGvRQv9/g==
X-Received: by 2002:a5d:4442:: with SMTP id x2mr18151609wrr.101.1587052558056; 
 Thu, 16 Apr 2020 08:55:58 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:399d:3ef7:647c:b12d?
 ([2001:b07:6468:f312:399d:3ef7:647c:b12d])
 by smtp.gmail.com with ESMTPSA id 5sm4231405wmg.34.2020.04.16.08.55.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Apr 2020 08:55:57 -0700 (PDT)
Subject: Re: [PATCH v2] KVM/arm64: Support enabling dirty log gradually in
 small chunks
To: Marc Zyngier <maz@kernel.org>
References: <20200413122023.52583-1-zhukeqian1@huawei.com>
 <be45ec89-2bdb-454b-d20a-c08898e26024@redhat.com>
 <20200416160939.7e9c1621@why>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <442f288e-2934-120c-4994-5357e3e9216b@redhat.com>
Date: Thu, 16 Apr 2020 17:55:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200416160939.7e9c1621@why>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_085604_106627_C6A46C4F 
X-CRM114-Status: GOOD (  19.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jay Zhou <jianjay.zhou@huawei.com>, wanghaibin.wang@huawei.com,
 Keqian Zhu <zhukeqian1@huawei.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16/04/20 17:09, Marc Zyngier wrote:
> On Wed, 15 Apr 2020 18:13:56 +0200
> Paolo Bonzini <pbonzini@redhat.com> wrote:
> 
>> On 13/04/20 14:20, Keqian Zhu wrote:
>>> There is already support of enabling dirty log graually in small chunks
>>> for x86 in commit 3c9bd4006bfc ("KVM: x86: enable dirty log gradually in
>>> small chunks"). This adds support for arm64.
>>>
>>> x86 still writes protect all huge pages when DIRTY_LOG_INITIALLY_ALL_SET
>>> is eanbled. However, for arm64, both huge pages and normal pages can be
>>> write protected gradually by userspace.
>>>
>>> Under the Huawei Kunpeng 920 2.6GHz platform, I did some tests on 128G
>>> Linux VMs with different page size. The memory pressure is 127G in each
>>> case. The time taken of memory_global_dirty_log_start in QEMU is listed
>>> below:
>>>
>>> Page Size      Before    After Optimization
>>>   4K            650ms         1.8ms
>>>   2M             4ms          1.8ms
>>>   1G             2ms          1.8ms
>>>
>>> Besides the time reduction, the biggest income is that we will minimize
>>> the performance side effect (because of dissloving huge pages and marking
>>> memslots dirty) on guest after enabling dirty log.
>>>
>>> Signed-off-by: Keqian Zhu <zhukeqian1@huawei.com>
>>> ---
>>>  Documentation/virt/kvm/api.rst    |  2 +-
>>>  arch/arm64/include/asm/kvm_host.h |  3 +++
>>>  virt/kvm/arm/mmu.c                | 12 ++++++++++--
>>>  3 files changed, 14 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/Documentation/virt/kvm/api.rst b/Documentation/virt/kvm/api.rst
>>> index efbbe570aa9b..0017f63fa44f 100644
>>> --- a/Documentation/virt/kvm/api.rst
>>> +++ b/Documentation/virt/kvm/api.rst
>>> @@ -5777,7 +5777,7 @@ will be initialized to 1 when created.  This also improves performance because
>>>  dirty logging can be enabled gradually in small chunks on the first call
>>>  to KVM_CLEAR_DIRTY_LOG.  KVM_DIRTY_LOG_INITIALLY_SET depends on
>>>  KVM_DIRTY_LOG_MANUAL_PROTECT_ENABLE (it is also only available on
>>> -x86 for now).
>>> +x86 and arm64 for now).
>>>  
>>>  KVM_CAP_MANUAL_DIRTY_LOG_PROTECT2 was previously available under the name
>>>  KVM_CAP_MANUAL_DIRTY_LOG_PROTECT, but the implementation had bugs that make
>>> diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
>>> index 32c8a675e5a4..a723f84fab83 100644
>>> --- a/arch/arm64/include/asm/kvm_host.h
>>> +++ b/arch/arm64/include/asm/kvm_host.h
>>> @@ -46,6 +46,9 @@
>>>  #define KVM_REQ_RECORD_STEAL	KVM_ARCH_REQ(3)
>>>  #define KVM_REQ_RELOAD_GICv4	KVM_ARCH_REQ(4)
>>>  
>>> +#define KVM_DIRTY_LOG_MANUAL_CAPS   (KVM_DIRTY_LOG_MANUAL_PROTECT_ENABLE | \
>>> +				     KVM_DIRTY_LOG_INITIALLY_SET)
>>> +
>>>  DECLARE_STATIC_KEY_FALSE(userspace_irqchip_in_use);
>>>  
>>>  extern unsigned int kvm_sve_max_vl;
>>> diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
>>> index e3b9ee268823..1077f653a611 100644
>>> --- a/virt/kvm/arm/mmu.c
>>> +++ b/virt/kvm/arm/mmu.c
>>> @@ -2265,8 +2265,16 @@ void kvm_arch_commit_memory_region(struct kvm *kvm,
>>>  	 * allocated dirty_bitmap[], dirty pages will be be tracked while the
>>>  	 * memory slot is write protected.
>>>  	 */
>>> -	if (change != KVM_MR_DELETE && mem->flags & KVM_MEM_LOG_DIRTY_PAGES)
>>> -		kvm_mmu_wp_memory_region(kvm, mem->slot);
>>> +	if (change != KVM_MR_DELETE && mem->flags & KVM_MEM_LOG_DIRTY_PAGES) {
>>> +		/*
>>> +		 * If we're with initial-all-set, we don't need to write
>>> +		 * protect any pages because they're all reported as dirty.
>>> +		 * Huge pages and normal pages will be write protect gradually.
>>> +		 */
>>> +		if (!kvm_dirty_log_manual_protect_and_init_set(kvm)) {
>>> +			kvm_mmu_wp_memory_region(kvm, mem->slot);
>>> +		}
>>> +	}
>>>  }
>>>  
>>>  int kvm_arch_prepare_memory_region(struct kvm *kvm,
>>>   
>>
>> Marc, what is the status of this patch?
> 
> I just had a look at it. Is there any urgency for merging it?

No, I thought I was still replying to the v1.

Paolo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
