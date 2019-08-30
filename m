Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12CAAA32BA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 10:35:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rwqMxGRtHAY11gxXgLnXHdUZ2dvfhWn3vbDBf+jQBxI=; b=Y3+b9eSpgfc9bg
	YCb6XnNCDGga0NIVwGrylukS3OSlYr91DxtccDAVUtL1CyY/XIlMoJGo06LXC1YfQez0kIlQZhwyr
	Qe2MLiwLlFpy76XKn6goOfSEfIZAsIxfoapPrq26TeJTm+jhXCU6w1oozTrDeSBuJZ53x8j40Ya3X
	I3mGxGLzK1s7k4h8ugZDtwWHhBWYFXT5cIs1g6oX9RvV3L8bi3Ca8e7C9TPS9QRqfYykj6IEyBlYG
	jXX4JahpMbAX7Y5hFptQz8RvnrRcoD0VeCFIFIfgELyTT92VU6EGnFwEwBgU5P1ruvDxx2E76EX2e
	i7mbW7wpeFDHs3IHNNkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3cNZ-0004OB-PX; Fri, 30 Aug 2019 08:35:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3cNK-0004NP-UY
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 08:35:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BE18D344;
 Fri, 30 Aug 2019 01:35:17 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 689183F718;
 Fri, 30 Aug 2019 01:35:16 -0700 (PDT)
Subject: Re: [PATCH v3 01/10] KVM: arm64: Document PV-time interface
To: Andrew Jones <drjones@redhat.com>
References: <20190821153656.33429-1-steven.price@arm.com>
 <20190821153656.33429-2-steven.price@arm.com>
 <20190829171548.xfk7i2bwnwl4w2po@kamzik.brq.redhat.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <22fc60f0-e3d5-900d-c067-007c39485ba9@arm.com>
Date: Fri, 30 Aug 2019 09:35:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190829171548.xfk7i2bwnwl4w2po@kamzik.brq.redhat.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_013519_077846_9639ECF6 
X-CRM114-Status: GOOD (  30.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kvm@vger.kernel.org, linux-doc@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29/08/2019 18:15, Andrew Jones wrote:
> On Wed, Aug 21, 2019 at 04:36:47PM +0100, Steven Price wrote:
>> Introduce a paravirtualization interface for KVM/arm64 based on the
>> "Arm Paravirtualized Time for Arm-Base Systems" specification DEN 0057A.
>>
>> This only adds the details about "Stolen Time" as the details of "Live
>> Physical Time" have not been fully agreed.
>>
>> User space can specify a reserved area of memory for the guest and
>> inform KVM to populate the memory with information on time that the host
>> kernel has stolen from the guest.
>>
>> A hypercall interface is provided for the guest to interrogate the
>> hypervisor's support for this interface and the location of the shared
>> memory structures.
>>
>> Signed-off-by: Steven Price <steven.price@arm.com>
>> ---
>>  Documentation/virt/kvm/arm/pvtime.txt | 100 ++++++++++++++++++++++++++
>>  1 file changed, 100 insertions(+)
>>  create mode 100644 Documentation/virt/kvm/arm/pvtime.txt
>>
>> diff --git a/Documentation/virt/kvm/arm/pvtime.txt b/Documentation/virt/kvm/arm/pvtime.txt
>> new file mode 100644
>> index 000000000000..1ceb118694e7
>> --- /dev/null
>> +++ b/Documentation/virt/kvm/arm/pvtime.txt
>> @@ -0,0 +1,100 @@
>> +Paravirtualized time support for arm64
>> +======================================
>> +
>> +Arm specification DEN0057/A defined a standard for paravirtualised time
>> +support for AArch64 guests:
>> +
>> +https://developer.arm.com/docs/den0057/a
>> +
>> +KVM/arm64 implements the stolen time part of this specification by providing
>> +some hypervisor service calls to support a paravirtualized guest obtaining a
>> +view of the amount of time stolen from its execution.
>> +
>> +Two new SMCCC compatible hypercalls are defined:
>> +
>> +PV_FEATURES 0xC5000020
>> +PV_TIME_ST  0xC5000022
>> +
>> +These are only available in the SMC64/HVC64 calling convention as
>> +paravirtualized time is not available to 32 bit Arm guests. The existence of
>> +the PV_FEATURES hypercall should be probed using the SMCCC 1.1 ARCH_FEATURES
>> +mechanism before calling it.
>> +
>> +PV_FEATURES
>> +    Function ID:  (uint32)  : 0xC5000020
>> +    PV_func_id:   (uint32)  : Either PV_TIME_LPT or PV_TIME_ST
>> +    Return value: (int32)   : NOT_SUPPORTED (-1) or SUCCESS (0) if the relevant
>> +                              PV-time feature is supported by the hypervisor.
>> +
>> +PV_TIME_ST
>> +    Function ID:  (uint32)  : 0xC5000022
>> +    Return value: (int64)   : IPA of the stolen time data structure for this
>> +                              (V)CPU. On failure:
> 
> Why the () around the V in VCPU?

There's nothing preventing the same mechanism being used without the
virtualisation of CPUs. For example a hypervisor like Jailhouse could
implement this interface even though there the CPU isn't being
virtualised but is being handed over to the guest. Equally it is
possible for firmware to provide the same mechanism (using the SMC64
calling convention).

Admittedly that's a little confusing here because the rest of this
document is talking about KVM's implementation and normal hypervisors.
So I'll drop the brackets.

>> +                              NOT_SUPPORTED (-1)
>> +
>> +The IPA returned by PV_TIME_ST should be mapped by the guest as normal memory
>> +with inner and outer write back caching attributes, in the inner shareable
>> +domain. A total of 16 bytes from the IPA returned are guaranteed to be
>> +meaningfully filled by the hypervisor (see structure below).
>> +
>> +PV_TIME_ST returns the structure for the calling VCPU.
> 
> The above sentence seems redundant here.

It is an important detail that each VCPU must use PV_TIME_ST to fetch
the address of the structure for that VCPU. E.g. It could have been
implemented so that the hypercall took a VCPU number. So while redundant
I do feel it's worth pointing this out explicitly.

>> +
>> +Stolen Time
>> +-----------
>> +
>> +The structure pointed to by the PV_TIME_ST hypercall is as follows:
>> +
>> +  Field       | Byte Length | Byte Offset | Description
>> +  ----------- | ----------- | ----------- | --------------------------
>> +  Revision    |      4      |      0      | Must be 0 for version 0.1
>> +  Attributes  |      4      |      4      | Must be 0
>> +  Stolen time |      8      |      8      | Stolen time in unsigned
>> +              |             |             | nanoseconds indicating how
>> +              |             |             | much time this VCPU thread
>> +              |             |             | was involuntarily not
>> +              |             |             | running on a physical CPU.
>> +
>> +The structure will be updated by the hypervisor prior to scheduling a VCPU. It
>> +will be present within a reserved region of the normal memory given to the
>> +guest. The guest should not attempt to write into this memory. There is a
>> +structure per VCPU of the guest.
>> +
>> +User space interface
>> +====================
>> +
>> +User space can request that KVM provide the paravirtualized time interface to
>> +a guest by creating a KVM_DEV_TYPE_ARM_PV_TIME device, for example:
>> +
>> +    struct kvm_create_device pvtime_device = {
>> +            .type = KVM_DEV_TYPE_ARM_PV_TIME,
>> +            .attr = 0,
>> +            .flags = 0,
>> +    };
>> +
>> +    pvtime_fd = ioctl(vm_fd, KVM_CREATE_DEVICE, &pvtime_device);
> 
> The ioctl doesn't return the fd. If the ioctl returns zero the fd will be
> in pvtime_device.fd.

Good catch - I'm not sure quite why I wrote that. Anyway I've agreed to
change the interface to operate on the VCPU device instead so this text
is rewritten completely.

>> +
>> +Creation of the device should be done after creating the vCPUs of the virtual
>> +machine.
> 
> Or else what? Will an error be reported in that case?

This is now enforced by calling the ioctl on the VCPU device, so it's
impossible to do in the wrong order.

>> +
>> +The IPA of the structures must be given to KVM. This is the base address
>> +of an array of stolen time structures (one for each VCPU). The base address
>> +must be page aligned. The size must be at least 64 * number of VCPUs and be a
>> +multiple of PAGE_SIZE.
>> +
>> +The memory for these structures should be added to the guest in the usual
>> +manner (e.g. using KVM_SET_USER_MEMORY_REGION).
> 
> Above it says the guest shouldn't attempt to write the memory. Should
> KVM_MEM_READONLY be used with KVM_SET_USER_MEMORY_REGION for it?

That is optional - the specification states the guest must not attempt
to write to it - so marking it read-only for the guest should work fine
with a conforming guest. But it's not required.

>> +
>> +For example:
>> +
>> +    struct kvm_dev_arm_st_region region = {
>> +            .gpa = <IPA of guest base address>,
>> +            .size = <size in bytes>
>> +    };
>> +
>> +    struct kvm_device_attr st_base = {
>> +            .group = KVM_DEV_ARM_PV_TIME_PADDR,
> 
> This is KVM_DEV_ARM_PV_TIME_REGION in the code.

Gah - I obviously missed that when I refactored to define the region
rather than just the base address. Anyway this has all changed (again)
because each VCPU has its own base address so the size is no longer
necessary.

Thanks for the review,

Steve

>> +            .attr = KVM_DEV_ARM_PV_TIME_ST,
>> +            .addr = (u64)&region
>> +    };
>> +
>> +    ioctl(pvtime_fd, KVM_SET_DEVICE_ATTR, &st_base);
>> -- 
>> 2.20.1
>>
> 
> Thanks,
> drew 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
