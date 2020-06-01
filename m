Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97EC71E9E2D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 08:27:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jsSU8HGijp1cDgZnejIq9w/ctY06uET06DbjoflpEWs=; b=KfH2J28rBGKrpx
	GI77cY6GQN8txa1eO2YSvklDouECqxYQHyh5Y/Sxr9exj4esDsfEIY3O/+OkIx3epKh32jgs459JP
	7u+1+xxTv1jg/EooXPU7IGna4Ehl8o2+QLRqNAa7jhkndMSNcaX9vFZWdBX5OALYlMjRyEqDJsO6+
	T7Hv+jZw/cD734IpHOZpq25feuXILvYmHQ0NodZ59/zl2XJxrjd9cL+UymMKlc4JRTVER7vz1NnN9
	qHanhI0E9X4abgGSN+dgvszftjxiha+1Sb5l48fpWNjJ2mKp8LtS+BCTM0yUDsmrrF5YAj/ISz8rl
	Eqc3S7ghRXo4qi7bfG3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfdvF-0004NK-Ea; Mon, 01 Jun 2020 06:27:45 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfdu5-0003jz-4N
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 06:26:52 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 8D7BD5F8F2CAC077568D;
 Mon,  1 Jun 2020 14:26:22 +0800 (CST)
Received: from [10.173.221.230] (10.173.221.230) by
 DGGEMS411-HUB.china.huawei.com (10.3.19.211) with Microsoft SMTP Server id
 14.3.487.0; Mon, 1 Jun 2020 14:26:15 +0800
Subject: Re: [PATCH RFC] KVM: arm64: Sidestep stage2_unmap_vm() on vcpu reset
 when S2FWB is supported
To: Marc Zyngier <maz@kernel.org>, Alexandru Elisei <alexandru.elisei@arm.com>
References: <20200415072835.1164-1-yuzenghui@huawei.com>
 <e99bc07d-0dd4-055c-808f-fd9cde88d2fc@arm.com>
 <a1a1961a-2eae-b26c-e607-ab5c0c929f37@arm.com>
 <13db879dff56d091f98f7c5416ab1535@kernel.org>
From: zhukeqian <zhukeqian1@huawei.com>
Message-ID: <d72e4299-e9f7-064c-98c7-621721e5671c@huawei.com>
Date: Mon, 1 Jun 2020 14:26:04 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <13db879dff56d091f98f7c5416ab1535@kernel.org>
X-Originating-IP: [10.173.221.230]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_232633_469093_29792AAC 
X-CRM114-Status: GOOD (  26.31  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.191 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Zenghui Yu <yuzenghui@huawei.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 2020/5/31 0:31, Marc Zyngier wrote:
> Hi Alex,
> 
> On 2020-05-30 11:46, Alexandru Elisei wrote:
>> Hi,
> 
> [...]
> 
>>>> diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
>>>> index 48d0ec44ad77..e6378162cdef 100644
>>>> --- a/virt/kvm/arm/arm.c
>>>> +++ b/virt/kvm/arm/arm.c
>>>> @@ -983,8 +983,11 @@ static int kvm_arch_vcpu_ioctl_vcpu_init(struct kvm_vcpu *vcpu,
>>>>      /*
>>>>       * Ensure a rebooted VM will fault in RAM pages and detect if the
>>>>       * guest MMU is turned off and flush the caches as needed.
>>>> +     *
>>>> +     * S2FWB enforces all memory accesses to RAM being cacheable, we
>>>> +     * ensure that the cache is always coherent.
>>>>       */
>>>> -    if (vcpu->arch.has_run_once)
>>>> +    if (vcpu->arch.has_run_once && !cpus_have_const_cap(ARM64_HAS_STAGE2_FWB))
>>> I think userspace does not invalidate the icache when loading a new kernel image,
>>> and if the guest patched instructions, they could potentially still be in the
>>> icache. Should the icache be invalidated if FWB is present?
>>
>> I noticed that this was included in the current pull request and I
>> remembered that
>> I wasn't sure about this part. Did some more digging and it turns out that FWB
>> implies no cache maintenance needed for *data to instruction*
>> coherence. From ARM
>> DDI 0487F.b, page D5-2635:
>>
>> "When ARMv8.4-S2FWB is implemented, the architecture requires that
>> CLIDR_EL1.{LOUU, LOIUS} are zero so that no levels of data cache need to be
>> cleaned in order to manage coherency with instruction fetches".
>>
>> However, there's no mention that I found for instruction to data coherence,
>> meaning that the icache would still need to be invalidated on each vcpu in order
>> to prevent fetching of patched instructions from the icache. Am I
>> missing something?
> 
> I think you are right, and this definitely matches the way we deal with
> the icache on the fault path. For some bizarre reason, I always assume
> that FWB implies DIC, which isn't true at all.
> 
> I'm planning to address it as follows. Please let me know what you think.
> 
> Thanks,
> 
>         M.
> 
> From f7860d1d284f41afea176cc17e5c9d895ae665e9 Mon Sep 17 00:00:00 2001
> From: Marc Zyngier <maz@kernel.org>
> Date: Sat, 30 May 2020 17:22:19 +0100
> Subject: [PATCH] KVM: arm64: Flush the instruction cache if not unmapping the
>  VM on reboot
> 
> On a system with FWB, we don't need to unmap Stage-2 on reboot,
> as even if userspace takes this opportunity to repaint the whole
> of memory, FWB ensures that the data side stays consistent even
> if the guest uses non-cacheable mappings.
> 
> However, the I-side is not necessarily coherent with the D-side
> if CTR_EL0.DIC is 0. In this case, invalidate the i-cache to
> preserve coherency.
> 
> Reported-by: Alexandru Elisei <alexandru.elisei@arm.com>
> Fixes: 892713e97ca1 ("KVM: arm64: Sidestep stage2_unmap_vm() on vcpu reset when S2FWB is supported")
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  arch/arm64/kvm/arm.c | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/kvm/arm.c b/arch/arm64/kvm/arm.c
> index b0b569f2cdd0..d6988401c22a 100644
> --- a/arch/arm64/kvm/arm.c
> +++ b/arch/arm64/kvm/arm.c
> @@ -989,11 +989,17 @@ static int kvm_arch_vcpu_ioctl_vcpu_init(struct kvm_vcpu *vcpu,
>       * Ensure a rebooted VM will fault in RAM pages and detect if the
>       * guest MMU is turned off and flush the caches as needed.
>       *
> -     * S2FWB enforces all memory accesses to RAM being cacheable, we
> -     * ensure that the cache is always coherent.
> +     * S2FWB enforces all memory accesses to RAM being cacheable,
> +     * ensuring that the data side is always coherent. We still
> +     * need to invalidate the I-cache though, as FWB does *not*
> +     * imply CTR_EL0.DIC.
>       */
> -    if (vcpu->arch.has_run_once && !cpus_have_const_cap(ARM64_HAS_STAGE2_FWB))
> -        stage2_unmap_vm(vcpu->kvm);
> +    if (vcpu->arch.has_run_once) {
> +        if (!cpus_have_final_cap(ARM64_HAS_STAGE2_FWB))
> +            stage2_unmap_vm(vcpu->kvm);
> +        else
> +            __flush_icache_all();
After I looking into this function, I think it's OK here. Please ignore
my question :-).
> +    }
> 
>      vcpu_reset_hcr(vcpu);
> 
Thanks,
Keqian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
