Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5AA3E8828
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 13:28:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DwV4QI4Mb0mEve9z7LSb36PqGI3Xx4yBOswJP/XDiCc=; b=koUzzzTTDxZnCHu6m/fhBVsoW
	++r0dzJvoGVkb1Rtto1m2tgcdvvxm/fnNi0CFqjcBhgNidTNeeDlS9USKVEgDYlKogLAitB73B3qn
	BRRiIEgfezKIobE4MVanM/hAX+WdOkCXHpLcfPXTKBT+7KtOdcAYlRVz4Tff4QidF0VbkHJjxkhXW
	BIAQzEPLnhETx3l4InL+N2uQT7PtWxrjvVnQE+nOB+GlfGiLWf6NwB2oyK7bivzBgmVpl6KnFWzRr
	y08mN3Umtri2+zmNeGE8/GbSlHb2HoNp1MoJbm2epiEkXUqcmAAucItUsWx/UsW32J6erNJaW03y0
	ceN4QaA6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPQbl-00040Q-6R; Tue, 29 Oct 2019 12:28:21 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPQbb-0003yz-NF
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 12:28:13 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 41C96AAB6D429E4EEA23;
 Tue, 29 Oct 2019 20:28:06 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0; Tue, 29 Oct 2019
 20:27:58 +0800
Subject: Re: [PATCH 3/3] KVM: arm/arm64: vgic: Don't rely on the wrong pending
 table
To: Marc Zyngier <maz@kernel.org>
References: <20191029071919.177-1-yuzenghui@huawei.com>
 <20191029071919.177-4-yuzenghui@huawei.com> <86mudjykfa.wl-maz@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <f8a30e65-7077-301a-1558-7fc504b5e891@huawei.com>
Date: Tue, 29 Oct 2019 20:27:56 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <86mudjykfa.wl-maz@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_052811_932790_49D8EE59 
X-CRM114-Status: GOOD (  21.20  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: suzuki.poulose@arm.com, linux-kernel@vger.kernel.org, eric.auger@redhat.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, wanghaibin.wang@huawei.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 2019/10/29 17:23, Marc Zyngier wrote:
> On Tue, 29 Oct 2019 07:19:19 +0000,
> Zenghui Yu <yuzenghui@huawei.com> wrote:
>>
>> It's possible that two LPIs locate in the same "byte_offset" but target
>> two different vcpus, where their pending status are indicated by two
>> different pending tables.  In such a scenario, using last_byte_offset
>> optimization will lead KVM relying on the wrong pending table entry.
>> Let us use last_ptr instead, which can be treated as a byte index into
>> a pending table and also, can be vcpu specific.
>>
>> Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
>> ---
>>
>> If this patch has done the right thing, we can even add the:
>>
>> Fixes: 280771252c1b ("KVM: arm64: vgic-v3: KVM_DEV_ARM_VGIC_SAVE_PENDING_TABLES")
>>
>> But to be honest, I'm not clear about what has this patch actually fixed.
>> Pending tables should contain all zeros before we flush vgic_irq's pending
>> status into guest's RAM (thinking that guest should never write anything
>> into it). So the pending table entry we've read from the guest memory
>> seems always be zero. And we will always do the right thing even if we
>> rely on the wrong pending table entry.
>>
>> I think I must have some misunderstanding here... Please fix me.
> 
> I think you're spot on, and it is the code needs fixing, not you! The
> problem is that we only read a byte once, irrespective of the vcpu the
> interrupts is routed to. If we switch to another vcpu for the same
> byte offset, we must reload it.
> 
> This can be done by either checking the vcpu, or by tracking the guest
> address that we read from (just like you do here).

okay, the remaining question is that in vgic_v3_save_pending_tables():

	stored = val & (1U << bit_nr);
	if (stored == irq->pending_latch)
		continue;

	if (irq->pending_latch)
		val |= 1 << bit_nr;
	else
		val &= ~(1 << bit_nr);

Do we really have a scenario where irq->pending_latch==false and
stored==true (corresponds to the above "else") and then we clear
pending status of this LPI in guest memory?
I can not think out one now.

> 
> A small comment below:
> 
>>   virt/kvm/arm/vgic/vgic-v3.c | 6 +++---
>>   1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/virt/kvm/arm/vgic/vgic-v3.c b/virt/kvm/arm/vgic/vgic-v3.c
>> index 5ef93e5041e1..7cd2e2f81513 100644
>> --- a/virt/kvm/arm/vgic/vgic-v3.c
>> +++ b/virt/kvm/arm/vgic/vgic-v3.c
>> @@ -363,8 +363,8 @@ int vgic_v3_lpi_sync_pending_status(struct kvm *kvm, struct vgic_irq *irq)
>>   int vgic_v3_save_pending_tables(struct kvm *kvm)
>>   {
>>   	struct vgic_dist *dist = &kvm->arch.vgic;
>> -	int last_byte_offset = -1;
>>   	struct vgic_irq *irq;
>> +	gpa_t last_ptr = -1;
> 
> This should be written as
> 
>       gpa_t last_ptr = ~(gpa_t)0;

Thanks for pointing it out.

> 
>>   	int ret;
>>   	u8 val;
>>   
>> @@ -384,11 +384,11 @@ int vgic_v3_save_pending_tables(struct kvm *kvm)
>>   		bit_nr = irq->intid % BITS_PER_BYTE;
>>   		ptr = pendbase + byte_offset;
>>   
>> -		if (byte_offset != last_byte_offset) {
>> +		if (ptr != last_ptr) {
>>   			ret = kvm_read_guest_lock(kvm, ptr, &val, 1);
>>   			if (ret)
>>   				return ret;
>> -			last_byte_offset = byte_offset;
>> +			last_ptr = ptr;
>>   		}
>>   
>>   		stored = val & (1U << bit_nr);
> 
> Otherwise, this looks good to me (no need to respin for the above
> nit).

Thanks,

Zenghui


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
