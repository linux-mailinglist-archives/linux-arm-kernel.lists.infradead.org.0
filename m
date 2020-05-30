Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D30DE1E90A6
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 May 2020 12:46:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+HBB6ggFABkamdcA9hjdRFe7JMCsef0WHXcop2P4MSI=; b=ApsV/zPwyJDPZl
	9k2e8H2iyvLXfNvse4z3BV3soj5rvFd0JUUX1pR0X/V+gDDBK9nuxVZXAIWieAGb+KMoROtcLbJXa
	5dAwn72/gNr6ap079Ne0fkifps6YiXoq8n2+wUtHldTlWbDlENIGvX5fQQ49ajIY6wj84VmgNocbG
	wfha35T4vBd1a+jrLS5jKtNXWBhPwXfb3ynqjHavTD4peVSQMdxOH0P6XtFeE1u1eIxhvo5c8KD7j
	BYKabpSdx6bnfWvk/c5Pcd1pRqI2oroIehsLmFfEJcWh3kyfmE4iwSzkbC5L8OG2zs1Hyl5xFNcHa
	B0h/MLkg1J/PkhuGVnAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeyzw-0001uz-KL; Sat, 30 May 2020 10:45:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeyzm-0001tZ-1M
 for linux-arm-kernel@lists.infradead.org; Sat, 30 May 2020 10:45:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 665131042;
 Sat, 30 May 2020 03:45:38 -0700 (PDT)
Received: from [192.168.0.110] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AC74B3F6C4;
 Sat, 30 May 2020 03:45:37 -0700 (PDT)
Subject: Re: [PATCH RFC] KVM: arm64: Sidestep stage2_unmap_vm() on vcpu reset
 when S2FWB is supported
From: Alexandru Elisei <alexandru.elisei@arm.com>
To: Zenghui Yu <yuzenghui@huawei.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20200415072835.1164-1-yuzenghui@huawei.com>
 <e99bc07d-0dd4-055c-808f-fd9cde88d2fc@arm.com>
Message-ID: <a1a1961a-2eae-b26c-e607-ab5c0c929f37@arm.com>
Date: Sat, 30 May 2020 11:46:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <e99bc07d-0dd4-055c-808f-fd9cde88d2fc@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_034542_172884_ABE00BD0 
X-CRM114-Status: GOOD (  25.44  )
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
Cc: Marc Zyngier <maz@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 4/20/20 5:10 PM, Alexandru Elisei wrote:
> Hi,
>
> On 4/15/20 8:28 AM, Zenghui Yu wrote:
>> stage2_unmap_vm() was introduced to unmap user RAM region in the stage2
>> page table to make the caches coherent. E.g., a guest reboot with stage1
>> MMU disabled will access memory using non-cacheable attributes. If the
>> RAM and caches are not coherent at this stage, some evicted dirty cache
>> line may go and corrupt guest data in RAM.
>>
>> Since ARMv8.4, S2FWB feature is mandatory and KVM will take advantage
>> of it to configure the stage2 page table and the attributes of memory
>> access. So we ensure that guests always access memory using cacheable
>> attributes and thus, the caches always be coherent.
>>
>> So on CPUs that support S2FWB, we can safely reset the vcpu without a
>> heavy stage2 unmapping.
>>
>> Cc: Marc Zyngier <maz@kernel.org>
>> Cc: Christoffer Dall <christoffer.dall@arm.com>
>> Cc: James Morse <james.morse@arm.com>
>> Cc: Julien Thierry <julien.thierry.kdev@gmail.com>
>> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
>> Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
>> ---
>>
>> If this is correct, there should be a great performance improvement on
>> a guest reboot (or reset) on systems support S2FWB. But I'm afraid that
>> I've missed some points here, so please comment!
>>
>> The commit 957db105c997 ("arm/arm64: KVM: Introduce stage2_unmap_vm")
>> was merged about six years ago and I failed to track its histroy and
>> intention. Instead of a whole stage2 unmapping, something like
>> stage2_flush_vm() looks enough to me. But again, I'm unsure...
>>
>> Thanks for having a look!
> I had a chat with Christoffer about stage2_unmap_vm, and as I understood it, the
> purpose was to make sure that any changes made by userspace were seen by the guest
> while the MMU is off. When a stage 2 fault happens, we do clean+inval on the
> dcache, or inval on the icache if it was an exec fault. This means that whatever
> the host userspace writes while the guest is shut down and is still in the cache,
> the guest will be able to read/execute.
>
> This can be relevant if the guest relocates the kernel and overwrites the original
> image location, and userspace copies the original kernel image back in before
> restarting the vm.
>
>>  virt/kvm/arm/arm.c | 5 ++++-
>>  1 file changed, 4 insertions(+), 1 deletion(-)
>>
>> diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
>> index 48d0ec44ad77..e6378162cdef 100644
>> --- a/virt/kvm/arm/arm.c
>> +++ b/virt/kvm/arm/arm.c
>> @@ -983,8 +983,11 @@ static int kvm_arch_vcpu_ioctl_vcpu_init(struct kvm_vcpu *vcpu,
>>  	/*
>>  	 * Ensure a rebooted VM will fault in RAM pages and detect if the
>>  	 * guest MMU is turned off and flush the caches as needed.
>> +	 *
>> +	 * S2FWB enforces all memory accesses to RAM being cacheable, we
>> +	 * ensure that the cache is always coherent.
>>  	 */
>> -	if (vcpu->arch.has_run_once)
>> +	if (vcpu->arch.has_run_once && !cpus_have_const_cap(ARM64_HAS_STAGE2_FWB))
> I think userspace does not invalidate the icache when loading a new kernel image,
> and if the guest patched instructions, they could potentially still be in the
> icache. Should the icache be invalidated if FWB is present?

I noticed that this was included in the current pull request and I remembered that
I wasn't sure about this part. Did some more digging and it turns out that FWB
implies no cache maintenance needed for *data to instruction* coherence. From ARM
DDI 0487F.b, page D5-2635:

"When ARMv8.4-S2FWB is implemented, the architecture requires that
CLIDR_EL1.{LOUU, LOIUS} are zero so that no levels of data cache need to be
cleaned in order to manage coherency with instruction fetches".

However, there's no mention that I found for instruction to data coherence,
meaning that the icache would still need to be invalidated on each vcpu in order
to prevent fetching of patched instructions from the icache. Am I missing something?

Thanks,
Alex
>
> Thanks,
> Alex
>>  		stage2_unmap_vm(vcpu->kvm);
>>  
>>  	vcpu_reset_hcr(vcpu);
> _______________________________________________
> kvmarm mailing list
> kvmarm@lists.cs.columbia.edu
> https://lists.cs.columbia.edu/mailman/listinfo/kvmarm

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
