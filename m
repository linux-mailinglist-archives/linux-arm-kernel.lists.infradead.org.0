Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A91CF1ADAF8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 12:26:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IGEN91YNnoGeiOQaGvcW4XQnmFkCkzHo25PF0+GUDX0=; b=bsokweiUCOSzvTVr6x1jBhMWT
	No1rZHwqnZl1nJlmqaPhSO5s5fuX6sn4psdYcpDGQF9zmZ78VJA3mO5G0qH3fm5KWPq9LbmWQgvV+
	eG5illdDFCgoQpNalNTyU5DU/gTDyVgKwIEZRdjZ2RZ88T2mPjXKHsk7XJfErX9PNpy1n36tHKU56
	6TlIGIe1cDek/zisutgB6h7hsoFZzM78WviKeAv4EL7ekOLOtKP7vk1yw7hAd8/lL1wKTggYIpdhI
	qPu4Prg6UWBfovQwS6d78Ug4lF9huxj5/XDZrN2H0Fgbq29AY0A0XcxERdJy+fTN8/wEGLdGzRmcV
	tmhvHD+OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPOCn-0003hM-O9; Fri, 17 Apr 2020 10:26:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPOCZ-0003gz-Hk
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 10:26:29 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6961721D95;
 Fri, 17 Apr 2020 10:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587119186;
 bh=oW28VIx5XmqwFX5wQzbrLvIwt9N3aKct2/dyVLRXO8Q=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=KhY03ZlMX29C4p1+Z4vrGH2tV89xCZeDPT21ASW7dZ+xTIY51CNUSLCNvmPxMpul1
 xRcQl5Ju1wrNXoErNfm340O7lam+pLTEPVrsWqIbd1/k+8HZVAeAhWbqtmTEFUMkOm
 BpfF/zWkzSqI79moc1XKO1smVODANyBgYLxay8Fw=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jPOCW-0048tL-G6; Fri, 17 Apr 2020 11:26:24 +0100
MIME-Version: 1.0
Date: Fri, 17 Apr 2020 11:26:24 +0100
From: Marc Zyngier <maz@kernel.org>
To: zhukeqian <zhukeqian1@huawei.com>
Subject: Re: [PATCH v2] KVM/arm64: Support enabling dirty log gradually in
 small chunks
In-Reply-To: <44ce4553-5215-2290-5956-2e6c577d030b@huawei.com>
References: <20200413122023.52583-1-zhukeqian1@huawei.com>
 <20200416160833.728017e9@why>
 <44ce4553-5215-2290-5956-2e6c577d030b@huawei.com>
Message-ID: <f3d4c6963f98b10f78640f0c99f867b6@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: zhukeqian1@huawei.com, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, pbonzini@redhat.com, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, will@kernel.org, suzuki.poulose@arm.com,
 sean.j.christopherson@intel.com, jianjay.zhou@huawei.com,
 wanghaibin.wang@huawei.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_032627_626461_0D7856AF 
X-CRM114-Status: GOOD (  22.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
 wanghaibin.wang@huawei.com, linux-kernel@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jay Zhou <jianjay.zhou@huawei.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-17 10:46, zhukeqian wrote:
> Hi Marc,
> 
> On 2020/4/16 23:08, Marc Zyngier wrote:
>> On Mon, 13 Apr 2020 20:20:23 +0800
>> Keqian Zhu <zhukeqian1@huawei.com> wrote:
>> 
>>> There is already support of enabling dirty log graually in small 
>>> chunks
>> 
>> gradually
>> 
>>> for x86 in commit 3c9bd4006bfc ("KVM: x86: enable dirty log gradually 
>>> in
>>> small chunks"). This adds support for arm64.
>>> 
>>> x86 still writes protect all huge pages when 
>>> DIRTY_LOG_INITIALLY_ALL_SET
>>> is eanbled. However, for arm64, both huge pages and normal pages can 
>>> be
>> 
>> enabled
>> 
>>> write protected gradually by userspace.
>>> 
>>> Under the Huawei Kunpeng 920 2.6GHz platform, I did some tests on 
>>> 128G
>>> Linux VMs with different page size. The memory pressure is 127G in 
>>> each
>>> case. The time taken of memory_global_dirty_log_start in QEMU is 
>>> listed
>>> below:
>>> 
>>> Page Size      Before    After Optimization
>>>   4K            650ms         1.8ms
>>>   2M             4ms          1.8ms
>>>   1G             2ms          1.8ms
>> 
>> These numbers are different from what you have advertised before. What
>> changed?
> In patch RFC, the numbers is got when memory pressure is 100G, so the 
> number
> is bigger here.

OK.

>> 
>>> 
>>> Besides the time reduction, the biggest income is that we will 
>>> minimize
>> 
>> s/income/improvement/
>> 
>>> the performance side effect (because of dissloving huge pages and 
>>> marking
>> 
>> dissolving
> embarrassed for these misspell :(

No need to be embarrassed. I do a lot worse, at all times. That is why 
you
and I need other people to review our patches and fix things! ;-)

>> 
>>> memslots dirty) on guest after enabling dirty log.
>>> 
>>> Signed-off-by: Keqian Zhu <zhukeqian1@huawei.com>
>>> ---
>>>  Documentation/virt/kvm/api.rst    |  2 +-
>>>  arch/arm64/include/asm/kvm_host.h |  3 +++
>>>  virt/kvm/arm/mmu.c                | 12 ++++++++++--
>>>  3 files changed, 14 insertions(+), 3 deletions(-)
>>> 
>>> diff --git a/Documentation/virt/kvm/api.rst 
>>> b/Documentation/virt/kvm/api.rst
>>> index efbbe570aa9b..0017f63fa44f 100644
>>> --- a/Documentation/virt/kvm/api.rst
>>> +++ b/Documentation/virt/kvm/api.rst
>>> @@ -5777,7 +5777,7 @@ will be initialized to 1 when created.  This 
>>> also improves performance because
>>>  dirty logging can be enabled gradually in small chunks on the first 
>>> call
>>>  to KVM_CLEAR_DIRTY_LOG.  KVM_DIRTY_LOG_INITIALLY_SET depends on
>>>  KVM_DIRTY_LOG_MANUAL_PROTECT_ENABLE (it is also only available on
>>> -x86 for now).
>>> +x86 and arm64 for now).
>>> 
>>>  KVM_CAP_MANUAL_DIRTY_LOG_PROTECT2 was previously available under the 
>>> name
>>>  KVM_CAP_MANUAL_DIRTY_LOG_PROTECT, but the implementation had bugs 
>>> that make
>>> diff --git a/arch/arm64/include/asm/kvm_host.h 
>>> b/arch/arm64/include/asm/kvm_host.h
>>> index 32c8a675e5a4..a723f84fab83 100644
>>> --- a/arch/arm64/include/asm/kvm_host.h
>>> +++ b/arch/arm64/include/asm/kvm_host.h
>>> @@ -46,6 +46,9 @@
>>>  #define KVM_REQ_RECORD_STEAL	KVM_ARCH_REQ(3)
>>>  #define KVM_REQ_RELOAD_GICv4	KVM_ARCH_REQ(4)
>>> 
>>> +#define KVM_DIRTY_LOG_MANUAL_CAPS   
>>> (KVM_DIRTY_LOG_MANUAL_PROTECT_ENABLE | \
>>> +				     KVM_DIRTY_LOG_INITIALLY_SET)
>>> +
>>>  DECLARE_STATIC_KEY_FALSE(userspace_irqchip_in_use);
>>> 
>>>  extern unsigned int kvm_sve_max_vl;
>>> diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
>>> index e3b9ee268823..1077f653a611 100644
>>> --- a/virt/kvm/arm/mmu.c
>>> +++ b/virt/kvm/arm/mmu.c
>>> @@ -2265,8 +2265,16 @@ void kvm_arch_commit_memory_region(struct kvm 
>>> *kvm,
>>>  	 * allocated dirty_bitmap[], dirty pages will be be tracked while 
>>> the
>>>  	 * memory slot is write protected.
>>>  	 */
>>> -	if (change != KVM_MR_DELETE && mem->flags & 
>>> KVM_MEM_LOG_DIRTY_PAGES)
>>> -		kvm_mmu_wp_memory_region(kvm, mem->slot);
>>> +	if (change != KVM_MR_DELETE && mem->flags & 
>>> KVM_MEM_LOG_DIRTY_PAGES) {
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
>> 
>> As it is, it is pretty good. The one thing that isn't clear to me is
>> why we have a difference in behaviour between x86 and arm64. What
>> prevents x86 from having the same behaviour as arm64?
> I am also not very clear about the difference. Maybe there is historic 
> reason.
> 
> Before introducing DIRTY_LOG_INITIALLY_ALL_SET, all pages will be write
> protected when starting dirty log, but only normal pages are needed
> to be write protected again during dirty log sync, because huge pages 
> will
> be dissolved to normal pages.
> 
> For that x86 uses different routine to write protect huge pages and
> normal pages,
> and arm64 uses same routine to do this, so arm64 still write protect 
> all
> pages again during dirty log sync, but x86 didn't.
> 
> So I think that x86 can write protect huge pages gradually too, just 
> need to add
> some code legs in dirty log sync.

Fair enough. It'd be good if you could investigate this as well. In the 
meantime,
I'll queue this patch for a spin in -next.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
