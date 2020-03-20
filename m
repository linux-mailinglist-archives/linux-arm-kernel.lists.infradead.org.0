Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D1F318C596
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 04:09:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0bo6xREm2ha4Ox7Ub2melS14SRXdko/IwavDEtlQT80=; b=g+XhVT41JDoOEuhVU70lQbZOa
	g596DQvsvSCeoMmZqsHWs26tDGMiN3wN2rBbOOUaC6HSMQf8BuADsBpTeMS7Q3fnspJl579w5ovmJ
	SnfUejJ/Z2AcDMYQO6ckpxzx+mhpkgbI0kIYcvr1AF23Xzpp4ZGnsAcBoiHGuHBKFoYctVZv+yjlY
	q/KQ/ldCKbVHdnl7QGn+5U6lNRe9RBE2oEqUWS9OYJvjxmW2LC3wLJjZLRLCGKCg6hgeSSTZCy/5O
	ZgpoOVC0MdrOgHxiMMJH00a6OFjXrGitaXCsJ5GmjK0P6W7TCLuowaq3+KWCaZIHivibJd/wumyk5
	Bg142AugQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF823-0004U7-3e; Fri, 20 Mar 2020 03:09:11 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF81o-0004Sq-Ka
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 03:09:02 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 7D6D63D2899F173E72D0;
 Fri, 20 Mar 2020 11:08:52 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.487.0; Fri, 20 Mar 2020
 11:08:42 +0800
Subject: Re: [PATCH v5 20/23] KVM: arm64: GICv4.1: Plumb SGI implementation
 selection in the distributor
To: Auger Eric <eric.auger@redhat.com>, Marc Zyngier <maz@kernel.org>
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-21-maz@kernel.org>
 <72832f51-bbde-8502-3e03-189ac20a0143@huawei.com>
 <4a06fae9c93e10351276d173747d17f4@kernel.org>
 <49995ec9-3970-1f62-5dfc-118563ca00fc@redhat.com>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <b98855a1-6300-d323-80f6-82d3b9854290@huawei.com>
Date: Fri, 20 Mar 2020 11:08:39 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <49995ec9-3970-1f62-5dfc-118563ca00fc@redhat.com>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_200856_850722_FA801C0C 
X-CRM114-Status: GOOD (  19.37  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 Robert Richter <rrichter@marvell.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/3/20 4:38, Auger Eric wrote:
> Hi Marc,
> On 3/19/20 1:10 PM, Marc Zyngier wrote:
>> Hi Zenghui,
>>
>> On 2020-03-18 06:34, Zenghui Yu wrote:
>>> Hi Marc,
>>>
>>> On 2020/3/5 4:33, Marc Zyngier wrote:
>>>> The GICv4.1 architecture gives the hypervisor the option to let
>>>> the guest choose whether it wants the good old SGIs with an
>>>> active state, or the new, HW-based ones that do not have one.
>>>>
>>>> For this, plumb the configuration of SGIs into the GICv3 MMIO
>>>> handling, present the GICD_TYPER2.nASSGIcap to the guest,
>>>> and handle the GICD_CTLR.nASSGIreq setting.
>>>>
>>>> In order to be able to deal with the restore of a guest, also
>>>> apply the GICD_CTLR.nASSGIreq setting at first run so that we
>>>> can move the restored SGIs to the HW if that's what the guest
>>>> had selected in a previous life.
>>>
>>> I'm okay with the restore path.=A0 But it seems that we still fail to
>>> save the pending state of vSGI - software pending_latch of HW-based
>>> vSGIs will not be updated (and always be false) because we directly
>>> inject them through ITS, so vgic_v3_uaccess_read_pending() can't
>>> tell the correct pending state to user-space (the correct one should
>>> be latched in HW).
>>>
>>> It would be good if we can sync the hardware state into pending_latch
>>> at an appropriate time (just before save), but not sure if we can...
>>
>> The problem is to find the "appropriate time". It would require to define
>> a point in the save sequence where we transition the state from HW to
>> SW. I'm not keen on adding more state than we already have.
> =

> may be we could use a dedicated device group/attr as we have for the ITS
> save tables? the user space would choose.

It means that userspace will be aware of some form of GICv4.1 details
(e.g., get/set vSGI state at HW level) that KVM has implemented.
Is it something that userspace required to know? I'm open to this ;-)

> =

> Thanks
> =

> Eric
>>
>> But what we can do is to just ask the HW to give us the right state
>> on userspace access, at all times. How about this:
>>
>> diff --git a/virt/kvm/arm/vgic/vgic-mmio-v3.c
>> b/virt/kvm/arm/vgic/vgic-mmio-v3.c
>> index 48fd9fc229a2..281fe7216c59 100644
>> --- a/virt/kvm/arm/vgic/vgic-mmio-v3.c
>> +++ b/virt/kvm/arm/vgic/vgic-mmio-v3.c
>> @@ -305,8 +305,18 @@ static unsigned long
>> vgic_v3_uaccess_read_pending(struct kvm_vcpu *vcpu,
>>  =A0=A0=A0=A0=A0 */
>>  =A0=A0=A0=A0 for (i =3D 0; i < len * 8; i++) {
>>  =A0=A0=A0=A0=A0=A0=A0=A0 struct vgic_irq *irq =3D vgic_get_irq(vcpu->kv=
m, vcpu, intid + i);
>> +=A0=A0=A0=A0=A0=A0=A0 bool state =3D irq->pending_latch;
>>
>> -=A0=A0=A0=A0=A0=A0=A0 if (irq->pending_latch)
>> +=A0=A0=A0=A0=A0=A0=A0 if (irq->hw && vgic_irq_is_sgi(irq->intid)) {
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 int err;
>> +
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 err =3D irq_get_irqchip_state(irq->ho=
st_irq,
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 IRQCHIP_STATE_PENDING,
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 &state);
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 WARN_ON(err);
>> +=A0=A0=A0=A0=A0=A0=A0 }
>> +
>> +=A0=A0=A0=A0=A0=A0=A0 if (state)
>>  =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 value |=3D (1U << i);
>>
>>  =A0=A0=A0=A0=A0=A0=A0=A0 vgic_put_irq(vcpu->kvm, irq);

Anyway this looks good to me and will do the right thing on a userspace
save.

>>
>> I can add this to "KVM: arm64: GICv4.1: Add direct injection capability
>> to SGI registers".

Thanks,
Zenghui


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
