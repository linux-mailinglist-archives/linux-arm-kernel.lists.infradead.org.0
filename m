Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7905F51B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 11:05:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U8voF479mEQc6ys5CiftFMcZqbn1VIdR2uFNrsb+y4Q=; b=TfRxdql8M6cNPL
	RuxtChKZkkW8csKIJCB1mNDU8cug4I6crJDAcjrFPw8lPzvDnEZvzZVAiaLcwVyxm2R/LXl9G5bHr
	l5OGfGnuRF2s34x15C0vIiIdhhhJoaJ3mgWD1ND19nZX74EaMFLHDYl6LjcMAQoYijCKJgjvDb2Fv
	HdWUP7vS3UvYkKwJxs7vM95Zw0X2MqPhT7aEM9fQJmuk/Kd2cN0EElHtzaMfXcSnz3yGeA43bKWkF
	N6SKd8KXpgqnNhVz+aL3y6GvJW4uKFTYhbEYFBjsNy7FUVcL7Z4YU/GSPXkiTGmnyvevZa4ilIRbX
	K5uQb0Bf2FSNJ+McXqTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hixgH-00073O-5C; Thu, 04 Jul 2019 09:05:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hixfn-0006n0-O2
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 09:05:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F3024344;
 Thu,  4 Jul 2019 02:04:58 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 875E33F703;
 Thu,  4 Jul 2019 02:04:57 -0700 (PDT)
Subject: Re: [PATCH 52/59] KVM: arm64: nv: vgic: Allow userland to set VGIC
 maintenance IRQ
To: Andre Przywara <andre.przywara@arm.com>
References: <20190621093843.220980-1-marc.zyngier@arm.com>
 <20190621093843.220980-53-marc.zyngier@arm.com>
 <23223923-125c-4d9b-eee9-071a4cf3de2a@arm.com>
 <20190704100117.7bba090b@donnerap.cambridge.arm.com>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <a49b9148-ea4f-124e-9ea8-12a0bf733157@arm.com>
Date: Thu, 4 Jul 2019 10:04:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190704100117.7bba090b@donnerap.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_020459_838172_A2195CF5 
X-CRM114-Status: GOOD (  18.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, kvmarm@lists.cs.columbia.edu,
 James Morse <james.morse@arm.com>, Jintack Lim <jintack@cs.columbia.edu>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 04/07/2019 10:01, Andre Przywara wrote:
> On Thu, 4 Jul 2019 08:38:20 +0100
> Julien Thierry <julien.thierry@arm.com> wrote:
> 
>> On 21/06/2019 10:38, Marc Zyngier wrote:
>>> From: Andre Przywara <andre.przywara@arm.com>
>>>
>>> The VGIC maintenance IRQ signals various conditions about the LRs, when
>>> the GIC's virtualization extension is used.
>>> So far we didn't need it, but nested virtualization needs to know about
>>> this interrupt, so add a userland interface to setup the IRQ number.
>>> The architecture mandates that it must be a PPI, on top of that this code
>>> only exports a per-device option, so the PPI is the same on all VCPUs.
>>>
>>> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
>>> [added some bits of documentation]
>>> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
>>> ---
>>>  .../virtual/kvm/devices/arm-vgic-v3.txt       |  9 ++++++++
>>>  arch/arm/include/uapi/asm/kvm.h               |  1 +
>>>  arch/arm64/include/uapi/asm/kvm.h             |  1 +
>>>  include/kvm/arm_vgic.h                        |  3 +++
>>>  virt/kvm/arm/vgic/vgic-kvm-device.c           | 22 +++++++++++++++++++
>>>  5 files changed, 36 insertions(+)
>>>
>>> diff --git a/Documentation/virtual/kvm/devices/arm-vgic-v3.txt b/Documentation/virtual/kvm/devices/arm-vgic-v3.txt
>>> index ff290b43c8e5..c70e8f2e0c9c 100644
>>> --- a/Documentation/virtual/kvm/devices/arm-vgic-v3.txt
>>> +++ b/Documentation/virtual/kvm/devices/arm-vgic-v3.txt
>>> @@ -249,3 +249,12 @@ Groups:
>>>    Errors:
>>>      -EINVAL: vINTID is not multiple of 32 or
>>>       info field is not VGIC_LEVEL_INFO_LINE_LEVEL
>>> +
>>> +  KVM_DEV_ARM_VGIC_GRP_MAINT_IRQ
>>> +    The attr field of kvm_device_attr encodes the following values:
>>> +    bits:     | 31   ....    5 | 4  ....  0 |
>>> +    values:   |      RES0      |   vINTID   |
>>> +
>>> +    The vINTID specifies which interrupt is generated when the vGIC
>>> +    must generate a maintenance interrupt. This must be a PPI.
>>> +  
>>
>> Something seems off. The documentation suggests that the value of the
>> attribute will be between 0-15 (and other values will be masked down to
>> a value between 0 and 15).
> 
> Where does that happen? The mask is [4:0], so 5 bits, that should be enough for PPIs as well.
> We could add a line to the documentation to stress that this is an interrupt ID as seen by the virtual GIC, if that helps.
> 

You're right, I misread the length of the vINTID field.

Nevermind then!

Thanks,

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
