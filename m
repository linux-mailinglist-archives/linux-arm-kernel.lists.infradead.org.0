Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B91CC1A7948
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 13:18:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=reEKnCeNuaNxkKYcyDvZiVqhO+o1Sh8j9iAasD9Yr2Q=; b=pwZ/mMoH9CGv4cxSWdIem+Tzr
	2NoRfkRYUCt4brtiHOJd1eH1PonaWGZEDeRpXzr3ZJ001ksYeSCTnJqFBq8FhBoO24FYGdYMVv0hk
	EB8HHx7SAXZQ7ok+xLBfs5e66Ev3w63Oz3ZhuRE/HKns1NmVBAsgG0wqtFn4zXLch07xJ+r/ic1cY
	lsT06gmK40ZPHzErOnYBu+HJbcR1cYYId8I0VVfLZThmiGy5VPMQQ0lbmX6HaKfLg1iVWopJnm5mv
	od3Bma/hss7DU9wiNzhHxrmfgWT8/Hngv5shOQl45/kaa91VjLUuXdA79b9pcIW/sMd6u3xBf/rlQ
	+SsfJtZow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOJa4-0000qE-BA; Tue, 14 Apr 2020 11:18:16 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOJZu-0000op-LC
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 11:18:08 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 1D8E5BC680AC97D09CAD;
 Tue, 14 Apr 2020 19:17:58 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.487.0; Tue, 14 Apr 2020
 19:17:50 +0800
Subject: Re: [PATCH 1/2] KVM: arm64: vgic-v3: Retire all pending LPIs on vcpu
 destroy
To: Marc Zyngier <maz@kernel.org>
References: <20200414030349.625-1-yuzenghui@huawei.com>
 <20200414030349.625-2-yuzenghui@huawei.com> <20200414115417.451f8b66@why>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <a1c67c96-56f0-2976-ba1b-0991972254b3@huawei.com>
Date: Tue, 14 Apr 2020 19:17:49 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200414115417.451f8b66@why>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_041806_909955_166AC4A0 
X-CRM114-Status: GOOD (  17.45  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: suzuki.poulose@arm.com, linux-kernel@vger.kernel.org, yezengruan@huawei.com,
 james.morse@arm.com, linux-arm-kernel@lists.infradead.org,
 wanghaibin.wang@huawei.com, kvmarm@lists.cs.columbia.edu,
 julien.thierry.kdev@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 2020/4/14 18:54, Marc Zyngier wrote:
> On Tue, 14 Apr 2020 11:03:47 +0800
> Zenghui Yu <yuzenghui@huawei.com> wrote:
> 
> Hi Zenghui,
> 
>> It's likely that the vcpu fails to handle all virtual interrupts if
>> userspace decides to destroy it, leaving the pending ones stay in the
>> ap_list. If the un-handled one is a LPI, its vgic_irq structure will
>> be eventually leaked because of an extra refcount increment in
>> vgic_queue_irq_unlock().
>>
>> This was detected by kmemleak on almost every guest destroy, the
>> backtrace is as follows:
>>
>> unreferenced object 0xffff80725aed5500 (size 128):
>> comm "CPU 5/KVM", pid 40711, jiffies 4298024754 (age 166366.512s)
>> hex dump (first 32 bytes):
>> 00 00 00 00 00 00 00 00 08 01 a9 73 6d 80 ff ff ...........sm...
>> c8 61 ee a9 00 20 ff ff 28 1e 55 81 6c 80 ff ff .a... ..(.U.l...
>> backtrace:
>> [<000000004bcaa122>] kmem_cache_alloc_trace+0x2dc/0x418
>> [<0000000069c7dabb>] vgic_add_lpi+0x88/0x418
>> [<00000000bfefd5c5>] vgic_its_cmd_handle_mapi+0x4dc/0x588
>> [<00000000cf993975>] vgic_its_process_commands.part.5+0x484/0x1198
>> [<000000004bd3f8e3>] vgic_its_process_commands+0x50/0x80
>> [<00000000b9a65b2b>] vgic_mmio_write_its_cwriter+0xac/0x108
>> [<0000000009641ebb>] dispatch_mmio_write+0xd0/0x188
>> [<000000008f79d288>] __kvm_io_bus_write+0x134/0x240
>> [<00000000882f39ac>] kvm_io_bus_write+0xe0/0x150
>> [<0000000078197602>] io_mem_abort+0x484/0x7b8
>> [<0000000060954e3c>] kvm_handle_guest_abort+0x4cc/0xa58
>> [<00000000e0d0cd65>] handle_exit+0x24c/0x770
>> [<00000000b44a7fad>] kvm_arch_vcpu_ioctl_run+0x460/0x1988
>> [<0000000025fb897c>] kvm_vcpu_ioctl+0x4f8/0xee0
>> [<000000003271e317>] do_vfs_ioctl+0x160/0xcd8
>> [<00000000e7f39607>] ksys_ioctl+0x98/0xd8
>>
>> Fix it by retiring all pending LPIs in the ap_list on the destroy path.
>>
>> p.s. I can also reproduce it on a normal guest shutdown. It is because
>> userspace still send LPIs to vcpu (through KVM_SIGNAL_MSI ioctl) while
>> the guest is being shutdown and unable to handle it. A little strange
>> though and haven't dig further...
> 
> What userspace are you using? You'd hope that the VMM would stop
> processing I/Os when destroying the guest. But we still need to handle
> it anyway, and I thing this fix makes sense.

I'm using Qemu (master) for debugging. Looks like an interrupt
corresponding to a virtio device configuration change, triggered after
all other devices had freed their irqs. Not sure if it's expected.

>>
>> Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
>> ---
>>   virt/kvm/arm/vgic/vgic-init.c | 6 ++++++
>>   1 file changed, 6 insertions(+)
>>
>> diff --git a/virt/kvm/arm/vgic/vgic-init.c b/virt/kvm/arm/vgic/vgic-init.c
>> index a963b9d766b7..53ec9b9d9bc4 100644
>> --- a/virt/kvm/arm/vgic/vgic-init.c
>> +++ b/virt/kvm/arm/vgic/vgic-init.c
>> @@ -348,6 +348,12 @@ void kvm_vgic_vcpu_destroy(struct kvm_vcpu *vcpu)
>>   {
>>   	struct vgic_cpu *vgic_cpu = &vcpu->arch.vgic_cpu;
>>   
>> +	/*
>> +	 * Retire all pending LPIs on this vcpu anyway as we're
>> +	 * going to destroy it.
>> +	 */
>> +	vgic_flush_pending_lpis(vcpu);
>> +
>>   	INIT_LIST_HEAD(&vgic_cpu->ap_list_head);
>>   }
>>   
> 
> I guess that at this stage, the INIT_LIST_HEAD() is superfluous, right?

I was just thinking that the ap_list_head may not be empty (besides LPI,
with other active or pending interrupts), so leave it unchanged.

> Otherwise, looks good. If you agree with the above, I can fix that
> locally, no need to resend this patch.

Thanks,
Zenghui


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
