Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1801C1AA45F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 15:27:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xWXeqL0ubSeF4LAnGiFPlI/fF0TdidsDhR55Gpn1CKo=; b=dk1eE7VVgo5AbAvLCS3tUfikv
	OWRpJoUxRsJXHOS7aqc47FSqZ3vNSeNkEKTgmvYSMDmjdZ14x/PlD/yawdcdds+VG6r9ySJjNeIBT
	nPUNWnA+l6caTGJ5Rv2/tnW+ohKz27KqA2OyB4TNz8jqTb6brylUQxpryE4CiFpVXeIfUpJ+AEaAW
	1WNKKeQ3CqZSLDn55Xf+0otr7QywA6h8bwzwwsTYVuMc/q/Gx8TfqTjoOFpXlOlCSK55BjCxd0bQk
	mpFG3x3JNj0WK0xj5xb2s26iWGueSzaN+qBwLzuwbd55eu8rY2NuGS/bB8Gldf/Zd/UtNA0yRrSxF
	174EkX68A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOi4j-0006DO-Bh; Wed, 15 Apr 2020 13:27:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOi4Z-0006D3-Lx
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 13:27:25 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4123120575;
 Wed, 15 Apr 2020 13:27:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586957243;
 bh=nu0zhwK3O3WL827GPYiUQRD9DU9/FqJbgDVCwstEBdU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=yOPu9FhTgupWBGSfd2gsYbyj9oQOwVK/uGMgIR/2NuiD7gmneRJUM5ZEkmRkpYzQX
 58Bc1zMC1IBIwLacgGc2H2bX4DsrLS1m7y1j7Fljz5gjn888++E7BJdpqvqicjkQBL
 cCJaqrwtTO5b1pzjPB5atE1SomNqDS1y4f9E/X20=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jOi4X-003Xfd-JJ; Wed, 15 Apr 2020 14:27:21 +0100
MIME-Version: 1.0
Date: Wed, 15 Apr 2020 14:27:21 +0100
From: Marc Zyngier <maz@kernel.org>
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: [PATCH 1/3] KVM: arm: vgic: Synchronize the whole guest on
 GIC{D,R}_I{S,C}ACTIVER read
In-Reply-To: <190b57e6-0ac5-63bb-57d8-5bab2aea0b2c@huawei.com>
References: <20200414103517.2824071-1-maz@kernel.org>
 <20200414103517.2824071-2-maz@kernel.org>
 <190b57e6-0ac5-63bb-57d8-5bab2aea0b2c@huawei.com>
Message-ID: <de0b9e06fe77238f18ffd8f1bf2f870e@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: yuzenghui@huawei.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, eric.auger@redhat.com,
 Andre.Przywara@arm.com, julien@xen.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_062723_754818_00F77336 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Julien Grall <julien@xen.org>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <Andre.Przywara@arm.com>, Eric Auger <eric.auger@redhat.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Zenghui,

On 2020-04-15 14:15, Zenghui Yu wrote:
> Hi Marc,
> 
> On 2020/4/14 18:35, Marc Zyngier wrote:
>> When a guest tries to read the active state of its interrupts,
>> we currently just return whatever state we have in memory. This
>> means that if such an interrupt lives in a List Register on another
>> CPU, we fail to obsertve the latest active state for this interrupt.
>> 
>> In order to remedy this, stop all the other vcpus so that they exit
>> and we can observe the most recent value for the state.
>> 
>> Reported-by: Julien Grall <julien@xen.org>
>> Signed-off-by: Marc Zyngier <maz@kernel.org>
>> ---
>>   virt/kvm/arm/vgic/vgic-mmio-v2.c |   4 +-
>>   virt/kvm/arm/vgic/vgic-mmio-v3.c |   4 +-
>>   virt/kvm/arm/vgic/vgic-mmio.c    | 100 
>> ++++++++++++++++++++-----------
>>   virt/kvm/arm/vgic/vgic-mmio.h    |   3 +
>>   4 files changed, 71 insertions(+), 40 deletions(-)
>> 
>> diff --git a/virt/kvm/arm/vgic/vgic-mmio-v2.c 
>> b/virt/kvm/arm/vgic/vgic-mmio-v2.c
>> index 5945f062d749..d63881f60e1a 100644
>> --- a/virt/kvm/arm/vgic/vgic-mmio-v2.c
>> +++ b/virt/kvm/arm/vgic/vgic-mmio-v2.c
>> @@ -422,11 +422,11 @@ static const struct vgic_register_region 
>> vgic_v2_dist_registers[] = {
>>   		VGIC_ACCESS_32bit),
>>   	REGISTER_DESC_WITH_BITS_PER_IRQ(GIC_DIST_ACTIVE_SET,
>>   		vgic_mmio_read_active, vgic_mmio_write_sactive,
>> -		NULL, vgic_mmio_uaccess_write_sactive, 1,
>> +		vgic_uaccess_read_active, vgic_mmio_uaccess_write_sactive, 1,
>>   		VGIC_ACCESS_32bit),
>>   	REGISTER_DESC_WITH_BITS_PER_IRQ(GIC_DIST_ACTIVE_CLEAR,
>>   		vgic_mmio_read_active, vgic_mmio_write_cactive,
>> -		NULL, vgic_mmio_uaccess_write_cactive, 1,
>> +		vgic_uaccess_read_active, vgic_mmio_uaccess_write_cactive, 1,
>>   		VGIC_ACCESS_32bit),
>>   	REGISTER_DESC_WITH_BITS_PER_IRQ(GIC_DIST_PRI,
>>   		vgic_mmio_read_priority, vgic_mmio_write_priority, NULL, NULL,
>> diff --git a/virt/kvm/arm/vgic/vgic-mmio-v3.c 
>> b/virt/kvm/arm/vgic/vgic-mmio-v3.c
>> index e72dcc454247..77c8ba1a2535 100644
>> --- a/virt/kvm/arm/vgic/vgic-mmio-v3.c
>> +++ b/virt/kvm/arm/vgic/vgic-mmio-v3.c
>> @@ -553,11 +553,11 @@ static const struct vgic_register_region 
>> vgic_v3_dist_registers[] = {
>>   		VGIC_ACCESS_32bit),
>>   	REGISTER_DESC_WITH_BITS_PER_IRQ_SHARED(GICD_ISACTIVER,
>>   		vgic_mmio_read_active, vgic_mmio_write_sactive,
>> -		NULL, vgic_mmio_uaccess_write_sactive, 1,
>> +		vgic_uaccess_read_active, vgic_mmio_uaccess_write_sactive, 1,
>>   		VGIC_ACCESS_32bit),
>>   	REGISTER_DESC_WITH_BITS_PER_IRQ_SHARED(GICD_ICACTIVER,
>>   		vgic_mmio_read_active, vgic_mmio_write_cactive,
>> -		NULL, vgic_mmio_uaccess_write_cactive,
>> +		vgic_uaccess_read_active, vgic_mmio_uaccess_write_cactive,
>>   		1, VGIC_ACCESS_32bit),
>>   	REGISTER_DESC_WITH_BITS_PER_IRQ_SHARED(GICD_IPRIORITYR,
>>   		vgic_mmio_read_priority, vgic_mmio_write_priority, NULL, NULL,
> 
> Shouldn't we also set this uaccess_read cb for GICR_I{S,C}ACTIVER0?

Duh. Yes, of course...

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
