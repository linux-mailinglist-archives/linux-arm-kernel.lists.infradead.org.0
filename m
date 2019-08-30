Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72454A3A4B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 17:25:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EMihGPMmP2hcq8rHHQgftSxgMmeS0KzqGxo0OzNKlYI=; b=OFyxFeHcjBW7Xk
	8L1dr9/4XzuSciZw3xu2HDTsMW8oStfTAhQNY+FmECBZ0zJVyrKnz3FmT+fguWRJyNPXacCV+TzLa
	lIDXJOypT2mxR9/63rMK9XZNUjoFn3QMUtah/Aj5B8HgisGY41fcSBBTdmJiHbnCDAuzBw1ab6nug
	4fOHjzhIJTXr00R0fVmK6RupoZ/8kwq5awR+HbHGOeQZehMtamYoAaxadzNODsh+3xfNHVrdmF0a8
	iCvdBGEVDcLFvXCSh8wWTT9axPDRT45pGpWUCgJkrMDUghpMRIfUARtibPkNS0YRDq7Tmn1BIv4hR
	MfsHjFFeI9i6hYk6n1vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3imI-0004tK-5X; Fri, 30 Aug 2019 15:25:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3im6-0004sD-2r
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 15:25:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A6A8E344;
 Fri, 30 Aug 2019 08:25:12 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7B2653F703;
 Fri, 30 Aug 2019 08:25:10 -0700 (PDT)
Subject: Re: [PATCH v4 01/10] KVM: arm64: Document PV-time interface
To: Andrew Jones <drjones@redhat.com>
References: <20190830084255.55113-1-steven.price@arm.com>
 <20190830084255.55113-2-steven.price@arm.com>
 <20190830144734.kvj4dvt32qzmhw32@kamzik.brq.redhat.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <7f459290-9c39-cfba-c514-a07469ff120f@arm.com>
Date: Fri, 30 Aug 2019 16:25:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190830144734.kvj4dvt32qzmhw32@kamzik.brq.redhat.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_082518_219432_5EFF7FAF 
X-CRM114-Status: GOOD (  32.46  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@redhat.com>, kvm@vger.kernel.org,
 Suzuki K Pouloze <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 linux-doc@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/08/2019 15:47, Andrew Jones wrote:
> On Fri, Aug 30, 2019 at 09:42:46AM +0100, Steven Price wrote:
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
>>  Documentation/virt/kvm/arm/pvtime.txt   | 64 +++++++++++++++++++++++++
>>  Documentation/virt/kvm/devices/vcpu.txt | 14 ++++++
>>  2 files changed, 78 insertions(+)
>>  create mode 100644 Documentation/virt/kvm/arm/pvtime.txt
>>
>> diff --git a/Documentation/virt/kvm/arm/pvtime.txt b/Documentation/virt/kvm/arm/pvtime.txt
>> new file mode 100644
>> index 000000000000..dda3f0f855b9
>> --- /dev/null
>> +++ b/Documentation/virt/kvm/arm/pvtime.txt
>> @@ -0,0 +1,64 @@
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
> 
> PV_TIME_LPT doesn't exist

Thanks, will remove.

>> +    Return value: (int32)   : NOT_SUPPORTED (-1) or SUCCESS (0) if the relevant
>> +                              PV-time feature is supported by the hypervisor.
>> +
>> +PV_TIME_ST
>> +    Function ID:  (uint32)  : 0xC5000022
>> +    Return value: (int64)   : IPA of the stolen time data structure for this
>> +                              VCPU. On failure:
>> +                              NOT_SUPPORTED (-1)
>> +
>> +The IPA returned by PV_TIME_ST should be mapped by the guest as normal memory
>> +with inner and outer write back caching attributes, in the inner shareable
>> +domain. A total of 16 bytes from the IPA returned are guaranteed to be
>> +meaningfully filled by the hypervisor (see structure below).
>> +
>> +PV_TIME_ST returns the structure for the calling VCPU.
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
> 
> The above fields don't appear to be exposed to userspace in anyway. How
> will we handle migration from one KVM with one version of the structure
> to another?

Interesting question. User space does have access to them now it is
providing the memory, but it's not exactly an easy method. In particular
user space has no (simple) way of probing the kernel's supported version.

I guess one solution would be to add an extra attribute on the VCPU
which would provide the revision information. The current kernel would
then reject any revision other than 0, but this could then be extended
to support other revision numbers in the future.

Although there's some logic in saying we could add the extra attribute
when(/if) there is a new version. Future kernels would then be expected
to use the current version unless user space explicitly set the new
attribute.

Do you feel this is something that needs to be addressed now, or can it
be deferred until another version is proposed?

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
> 
> Should we provide a recommendation as to how that reserved memory is
> provided? One memslot divided into NR_VCPUS subregions? Should the
> reserved region be described to the guest kernel with DT/ACPI? Or
> should userspace ensure the region is not within any DT/ACPI described
> regions?

I'm open to providing a recommendation, but I'm not entirely sure I know
enough here to provide one.

There is an obvious efficiency argument for minimizing memslots with the
current code. But if someone has a reason for using multiple memslots
then that's probably a good argument for implementing a memslot-caching
kvm_put_user() rather than to be dis-recommended.

My assumption (and testing) has been with a single memslot divided into
NR_VCPUS (or more accurately the number of VCPUs in the VM) subregions.

For testing DT I've tested both methods: an explicit reserved region or
just ensuring it's not in any DT described region. Both seem reasonable,
but it might be easier to integrate into existing migration mechanisms
if it's simply a reserved region (then the memory block of the guest is
just as it always was).

For ACPI the situation should be similar, but my testing has been with DT.

Thanks,

Steve

>> +
>> +For the user space interface see Documentation/virt/kvm/devices/vcpu.txt
>> +section "3. GROUP: KVM_ARM_VCPU_PVTIME_CTRL".
>> +
>> diff --git a/Documentation/virt/kvm/devices/vcpu.txt b/Documentation/virt/kvm/devices/vcpu.txt
>> index 2b5dab16c4f2..896777f76f36 100644
>> --- a/Documentation/virt/kvm/devices/vcpu.txt
>> +++ b/Documentation/virt/kvm/devices/vcpu.txt
>> @@ -60,3 +60,17 @@ time to use the number provided for a given timer, overwriting any previously
>>  configured values on other VCPUs.  Userspace should configure the interrupt
>>  numbers on at least one VCPU after creating all VCPUs and before running any
>>  VCPUs.
>> +
>> +3. GROUP: KVM_ARM_VCPU_PVTIME_CTRL
>> +Architectures: ARM64
>> +
>> +3.1 ATTRIBUTE: KVM_ARM_VCPU_PVTIME_SET_IPA
>> +Parameters: 64-bit base address
>> +Returns: -ENXIO:  Stolen time not implemented
>> +         -EEXIST: Base address already set for this VCPU
>> +         -EINVAL: Base address not 64 byte aligned
>> +
>> +Specifies the base address of the stolen time structure for this VCPU. The
>> +base address must be 64 byte aligned and exist within a valid guest memory
>> +region. See Documentation/virt/kvm/arm/pvtime.txt for more information
>> +including the layout of the stolen time structure.
>> -- 
>> 2.20.1
>>
> 
> Thanks,
> drew 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
