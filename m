Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99257CB6C6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 11:00:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rFVDfP8qQSnOx8/BlvfGZbzwfqpgyc6kZ4Pug8F5BsU=; b=qk1fhgDGkX37rx
	QCVvGvyYeTYEjHktmMrnNYf+sL+LjuouJeYWlJ0Kpl6/Tm6hkBfjdKxn9312xkkay7Xiuq4deLFU3
	3r1A3X1dGW/ysDug9OZsywAjrdCb5hIyUJCFpSPHhGQO9Uz+DjUA4HGsHrggp3AiqNZSa1ZR4SN8o
	ABgiolwWna8HroW/mv21fxqu0mZZzp77Nz2ItSS7KKIJT3jfw9B68nV56YkT3s5mBJzLRfWXdlxLZ
	FuR24yGUwitEoNfNTBSraI7ljaH75aqPYRrZvQpg4Sh03epFO0y5hjXpnT0X9QkWFmEWU8qbeZrOY
	7VxrSjCgvEREe59SwLkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGJRt-000092-46; Fri, 04 Oct 2019 09:00:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGJRk-00007p-P9
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 09:00:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6DBED1597;
 Fri,  4 Oct 2019 02:00:18 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 80D243F739;
 Fri,  4 Oct 2019 02:00:16 -0700 (PDT)
Subject: Re: [PATCH v5 01/10] KVM: arm64: Document PV-time interface
To: Andrew Jones <drjones@redhat.com>
References: <20191002145037.51630-1-steven.price@arm.com>
 <20191002145037.51630-2-steven.price@arm.com>
 <20191003121903.vty3gikjrqxffgch@kamzik.brq.redhat.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <666d133c-031d-efe0-9f7d-1711dcf576ef@arm.com>
Date: Fri, 4 Oct 2019 10:00:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191003121903.vty3gikjrqxffgch@kamzik.brq.redhat.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_020020_906733_CBF73240 
X-CRM114-Status: GOOD (  30.11  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 Marc Zyngier <maz@kernel.org>, Suzuki K Pouloze <suzuki.poulose@arm.com>,
 linux-doc@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03/10/2019 13:19, Andrew Jones wrote:
> On Wed, Oct 02, 2019 at 03:50:28PM +0100, Steven Price wrote:
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
>>  Documentation/virt/kvm/arm/pvtime.txt   | 65 +++++++++++++++++++++++++
>>  Documentation/virt/kvm/devices/vcpu.txt | 14 ++++++
>>  2 files changed, 79 insertions(+)
>>  create mode 100644 Documentation/virt/kvm/arm/pvtime.txt
>>
>> diff --git a/Documentation/virt/kvm/arm/pvtime.txt b/Documentation/virt/kvm/arm/pvtime.txt
>> new file mode 100644
>> index 000000000000..fa15c12eec91
>> --- /dev/null
>> +++ b/Documentation/virt/kvm/arm/pvtime.txt
> 
> Maybe use .rst instead of .txt?

Fair point - I guess .rst is the way of the future!

>> @@ -0,0 +1,65 @@
>> +Paravirtualized time support for arm64
>> +======================================
>> +
>> +Arm specification DEN0057/A defined a standard for paravirtualised time
> 
> s/defined/defines/ ?
> 
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
> 
> The spec calls this PV_TIME_FEATURES.
> 
>> +PV_TIME_ST  0xC5000022
> 
> This is 0xC5000021 in the spec.

This is somewhat embarrassing. Apparently when I was reviewing the new
specification I didn't notice these (subtle) changes. Thanks for
pointing it out to me! I'll update the code to match.

>> +
>> +These are only available in the SMC64/HVC64 calling convention as
>> +paravirtualized time is not available to 32 bit Arm guests. The existence of
>> +the PV_FEATURES hypercall should be probed using the SMCCC 1.1 ARCH_FEATURES
>> +mechanism before calling it.
>> +
>> +PV_FEATURES
>> +    Function ID:  (uint32)  : 0xC5000020
>> +    PV_func_id:   (uint32)  : The function to query for support.
>> +                              Currently only PV_TIME_ST is supported.
> 
> The spec calls this PV_call_id, but maybe PV_func_id would have been better.

I guess they are generally called "hypercalls" not "hyperfunctions" - so
I'll match the spec here.

>> +    Return value: (int32)   : NOT_SUPPORTED (-1) or SUCCESS (0) if the relevant
>> +                              PV-time feature is supported by the hypervisor.
> 
> This is an int64 in the spec.

True - although the values easily fit in int32 too! But I'll update to
be consistent with the spec.

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
> 
> The spec version is 1.0 and Table 1 says "For implementations compliant
> with this revision of the specification...". So I think this description
> should be "Must be 0 for version 1.0".

Will update.

Thanks,

Steve

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
>> +For the user space interface see Documentation/virt/kvm/devices/vcpu.txt
>> +section "3. GROUP: KVM_ARM_VCPU_PVTIME_CTRL".
>> +
>> diff --git a/Documentation/virt/kvm/devices/vcpu.txt b/Documentation/virt/kvm/devices/vcpu.txt
>> index 2b5dab16c4f2..6f3bd64a05b0 100644
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
>> +3.1 ATTRIBUTE: KVM_ARM_VCPU_PVTIME_IPA
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


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
