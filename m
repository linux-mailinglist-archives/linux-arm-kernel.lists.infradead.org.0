Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0516CA85EF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 17:08:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sIpaHRQIc85ppcIF8WIj86fsfWFD4dCiaQMSikEd6XM=; b=hL28CO+eOc+lWX
	A3cLikr6oesKj2PbSW4PUgW7MxNlL/mE5GS3YBL6eTXG8snYy0bYCTX0l+t+kv0sy0J1awswswZuW
	3oBshutRlJjD1AY+yKnxT8YJfSBSe061agyp8g1ckdAVvQxFmzMVnTmwlX85NTFHG9ktF5qQ6rI7G
	agBjgAFZd4Nc1OFwk8n9XnDPlkjI2NPtr1J4b6yNtZ9w563bPnqISYsAn5QjXFeY9LKfKc+R0JPmD
	jvNee19dfypcAlTxnZBFGpg2npNiGNTHSaMZPYkhY6R14KfI8DVddWkIjvrtWUuuzsUDmgq7GylQt
	Zm4oj6+QyhSDIeafh4kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Wt5-0006v7-Kf; Wed, 04 Sep 2019 15:07:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Wsp-0006uL-80
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 15:07:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9ED8628;
 Wed,  4 Sep 2019 08:07:42 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6B2783F246;
 Wed,  4 Sep 2019 08:07:40 -0700 (PDT)
Subject: Re: [PATCH v4 01/10] KVM: arm64: Document PV-time interface
To: Andrew Jones <drjones@redhat.com>
References: <20190830084255.55113-1-steven.price@arm.com>
 <20190830084255.55113-2-steven.price@arm.com>
 <20190830144734.kvj4dvt32qzmhw32@kamzik.brq.redhat.com>
 <7f459290-9c39-cfba-c514-a07469ff120f@arm.com>
 <20190902125254.3w6lnvcbs7sfhjz7@kamzik.brq.redhat.com>
 <118ceeea-5501-05b6-7232-e66a175d5fae@arm.com>
 <20190904142250.ohnkunb5ocwbnx6z@kamzik.brq.redhat.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <9ebbfde3-d592-b9c5-4456-a28a2f6e9125@arm.com>
Date: Wed, 4 Sep 2019 16:07:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190904142250.ohnkunb5ocwbnx6z@kamzik.brq.redhat.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_080743_379481_715A1129 
X-CRM114-Status: GOOD (  22.71  )
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

On 04/09/2019 15:22, Andrew Jones wrote:
> On Wed, Sep 04, 2019 at 02:55:15PM +0100, Steven Price wrote:
>> On 02/09/2019 13:52, Andrew Jones wrote:
>>> On Fri, Aug 30, 2019 at 04:25:08PM +0100, Steven Price wrote:
>>>> On 30/08/2019 15:47, Andrew Jones wrote:
>>>>> On Fri, Aug 30, 2019 at 09:42:46AM +0100, Steven Price wrote:
>> [...]
>>>>>> +    Return value: (int32)   : NOT_SUPPORTED (-1) or SUCCESS (0) if the relevant
>>>>>> +                              PV-time feature is supported by the hypervisor.
>>>>>> +
>>>>>> +PV_TIME_ST
>>>>>> +    Function ID:  (uint32)  : 0xC5000022
>>>>>> +    Return value: (int64)   : IPA of the stolen time data structure for this
>>>>>> +                              VCPU. On failure:
>>>>>> +                              NOT_SUPPORTED (-1)
>>>>>> +
>>>>>> +The IPA returned by PV_TIME_ST should be mapped by the guest as normal memory
>>>>>> +with inner and outer write back caching attributes, in the inner shareable
>>>>>> +domain. A total of 16 bytes from the IPA returned are guaranteed to be
>>>>>> +meaningfully filled by the hypervisor (see structure below).
>>>>>> +
>>>>>> +PV_TIME_ST returns the structure for the calling VCPU.
>>>>>> +
>>>>>> +Stolen Time
>>>>>> +-----------
>>>>>> +
>>>>>> +The structure pointed to by the PV_TIME_ST hypercall is as follows:
>>>>>> +
>>>>>> +  Field       | Byte Length | Byte Offset | Description
>>>>>> +  ----------- | ----------- | ----------- | --------------------------
>>>>>> +  Revision    |      4      |      0      | Must be 0 for version 0.1
>>>>>> +  Attributes  |      4      |      4      | Must be 0
>>>>>
>>>>> The above fields don't appear to be exposed to userspace in anyway. How
>>>>> will we handle migration from one KVM with one version of the structure
>>>>> to another?
>>>>
>>>> Interesting question. User space does have access to them now it is
>>>> providing the memory, but it's not exactly an easy method. In particular
>>>> user space has no (simple) way of probing the kernel's supported version.
>>>>
>>>> I guess one solution would be to add an extra attribute on the VCPU
>>>> which would provide the revision information. The current kernel would
>>>> then reject any revision other than 0, but this could then be extended
>>>> to support other revision numbers in the future.
>>>>
>>>> Although there's some logic in saying we could add the extra attribute
>>>> when(/if) there is a new version. Future kernels would then be expected
>>>> to use the current version unless user space explicitly set the new
>>>> attribute.
>>>>
>>>> Do you feel this is something that needs to be addressed now, or can it
>>>> be deferred until another version is proposed?
>>>
>>> Assuming we'll want userspace to have the option of choosing version=0,
>>> and that we're fine with version=0 being the implicit choice, when nothing
>>> is selected, then I guess it can be left as is for now. If, OTOH, we just
>>> want migration to fail when attempting to migrate to another host with
>>> an incompatible stolen-time structure (i.e. version=0 is not selectable
>>> on hosts that implement later versions), then we should expose the version
>>> in some way now. Perhaps a VCPU's "PV config" should be described in a
>>> set of pseudo registers?
>>
>> I wouldn't have thought making migration fail if/when the host upgrades
>> to a new version would be particularly helpful - we'd want to provide
>> backwards compatibility. In particular for the suspend/resume case (I
>> want to be able to save my VM to disk, upgrade the host kernel and then
>> resume the VM).
>>
>> The only potential issue I see is the implicit "version=0 if not
>> specified". That seems solvable by rejecting setting the stolen time
>> base address if no version has been specified and the host kernel
>> doesn't support version=0.
> 
> I think that's the same failure I was trying avoid by failing the
> migration instead. Maybe it's equivalent to fail at this vcpu-ioctl
> time though?

Yes this is effectively the same failure. But since we require the
vcpu-ioctl to enable stolen time this gives an appropriate place to
fail. Indeed this is the failure if migrating from a host with these
patches to one running an existing kernel with no stolen time support.

Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
