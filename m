Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5805C4BB6E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 16:27:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JIQXB4a77WTeKHyrePWSkHgj/e5FZnZ02I3MTlDJIpc=; b=XJymvhgmqODN1G
	dhOXnE/FgCA2IcO6QmXAwmVe/C6l2rrBU6x8kJN1M5sxO64Hl271YK2dV/oCO653V1olqjSNlEcWT
	kAyyMfwcVTteqWGNTne6QR60MHSMl7cyNXuhqShF1v7Tx88C/SbNmV88Rj0YvZhkWwuLavQErh+GH
	d+zQoqiKc9wd8liWL+eNOyDeVa8xsDlaBgQGD8gFW3lrTR/JmcWu+xKdFuFazyLvotg+Dw0C0Tfx7
	vOeuX5oRT8ud5Nw6W/0Hw1CYGpotb8siL2Z0FC/qM59DMEmHDcggMahLuQhF7gmz8TsuFUPL5Awha
	qVC4gQH7euYMqH6a6DUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdbY7-00020k-H0; Wed, 19 Jun 2019 14:26:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdbXv-0001zt-E3
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 14:26:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DF0F3344;
 Wed, 19 Jun 2019 07:26:40 -0700 (PDT)
Received: from [10.1.196.129] (ostrya.cambridge.arm.com [10.1.196.129])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BED283F246;
 Wed, 19 Jun 2019 07:26:39 -0700 (PDT)
Subject: Re: [PATCH 1/8] iommu: Add I/O ASID allocator
To: Jacob Pan <jacob.jun.pan@linux.intel.com>
References: <20190610184714.6786-1-jean-philippe.brucker@arm.com>
 <20190610184714.6786-2-jean-philippe.brucker@arm.com>
 <20190611103625.00001399@huawei.com>
 <62d1f310-0cba-4d55-0f16-68bba3c64927@arm.com>
 <20190611111333.425ce809@jacob-builder>
 <13e19d8c-8918-a3bb-f398-2ac41c71d307@arm.com>
 <20190618100508.7835780f@jacob-builder>
From: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
Message-ID: <1d62b2e1-fe8c-066d-34e0-f7929f6a78e2@arm.com>
Date: Wed, 19 Jun 2019 15:26:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190618100508.7835780f@jacob-builder>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_072643_567217_4EABB6FE 
X-CRM114-Status: GOOD (  30.53  )
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Will Deacon <Will.Deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Robin Murphy <Robin.Murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/06/2019 18:05, Jacob Pan wrote:
> On Tue, 18 Jun 2019 15:22:20 +0100
> Jean-Philippe Brucker <jean-philippe.brucker@arm.com> wrote:
> 
>> On 11/06/2019 19:13, Jacob Pan wrote:
>>>>>> +/**
>>>>>> + * ioasid_find - Find IOASID data
>>>>>> + * @set: the IOASID set
>>>>>> + * @ioasid: the IOASID to find
>>>>>> + * @getter: function to call on the found object
>>>>>> + *
>>>>>> + * The optional getter function allows to take a reference to
>>>>>> the found object
>>>>>> + * under the rcu lock. The function can also check if the object
>>>>>> is still valid:
>>>>>> + * if @getter returns false, then the object is invalid and NULL
>>>>>> is returned.
>>>>>> + *
>>>>>> + * If the IOASID has been allocated for this set, return the
>>>>>> private pointer
>>>>>> + * passed to ioasid_alloc. Private data can be NULL if not set.
>>>>>> Return an error
>>>>>> + * if the IOASID is not found or does not belong to the set.    
>>>>>
>>>>> Perhaps should make it clear that @set can be null.    
>>>>
>>>> Indeed. But I'm not sure allowing @set to be NULL is such a good
>>>> idea, because the data type associated to an ioasid depends on its
>>>> set. For example SVA will put an mm_struct in there, and auxiliary
>>>> domains use some structure private to the IOMMU domain.
>>>>  
>>> I am not sure we need to count on @set to decipher data type.
>>> Whoever does the allocation and owns the IOASID should knows its
>>> own data type. My thought was that @set is only used to group IDs,
>>> permission check etc.
>>>   
>>>> Jacob, could me make @set mandatory, or do you see a use for a
>>>> global search? If @set is NULL, then callers can check if the
>>>> return pointer is NULL, but will run into trouble if they try to
>>>> dereference it. 
>>> A global search use case can be for PRQ. IOMMU driver gets a IOASID
>>> (first interrupt then retrieve from a queue), it has no idea which
>>> @set it belongs to. But the data types are the same for all IOASIDs
>>> used by the IOMMU.  
>>
>> They aren't when we use a generic SVA handler. Following a call to
>> iommu_sva_bind_device(), iommu-sva.c allocates an IOASID and store an
>> mm_struct. If auxiliary domains are also enabled for the device,
>> following a call to iommu_aux_attach_device() the IOMMU driver
>> allocates an IOASID and stores some private object.
>>
>> Now for example the IOMMU driver receives a PPR and calls
>> ioasid_find() with @set = NULL. ioasid_find() may return either an
>> mm_struct or a private object, and the driver cannot know which it is
>> so the returned value is unusable.
> I think we might have a misunderstanding of what ioasid_set is. Or i
> have misused your original intention for it:) So my understanding of an
> ioasid_set is to identify a sub set of IOASIDs that
> 1. shares the same data type
> 2. belongs to the same permission group, owner.

In my case it's mostly #1. The two IOASID sets (SVA and AUX) are managed
by different modules (iommu-sva and arm-smmu-v3). Since we don't do
scalable IOV, the two sets are shared_ioasid and private_ioasid, with
either an mm or NULL as private data (but we might need to store a
domain for private IOASIDs at some point). So at the moment passing a
NULL set to ioasid_find() would work for us as well.

However in a non-virtualization scenario, a device driver could define
its own set and allocate an IOASID for its own use, associating some
private structure with it. If it somehow causes a PRQ on that IOASID,
the IOMMU driver shouldn't attempt to access the device driver's private
structure. So I do think we need to be careful with global
ioasid_find(). Given that any driver in the system can use the
allocator, we won't be able to keep assuming that all objects stored in
there are of one type.

> Our usage is #2., we put a mm_struct as the set to do permission
> check. E.g VFIO can check guest PASID ownership based on QEMU process
> mm. This will make sure IOASID allocated by one guest can only be used
> by the same guest.
> 
> For IOASID used for sva bind, let it be native or guest sva, we always
> have the same data type. Therefore, when page request handler gets
> called to search with ioasid_find(), it knows its data type. An
> additional flag will tell if it is a guest bind or native bind.
> 
> I was under the assumption that aux domain and its IOASID is a 1:1
> mapping, there is no need for a search. Or even it needs to search, it
> will be searched by the same caller that did the allocation, therefore
> it knows what private data type is.
>
> In addition, aux domain is used for request w/o PASID. And PPR for
> request w/o PASID is not to be supported. So there would not be a need
> to search from page request handler.
> 
> Now if we take the above assumption away, and use ioasid_set strictly
> to differentiate the data types (Usage #1). Then I agree we can get
> rid of NULL set and global search.
> 
> That would require we converge on the generic sva_bind for both
> native and guest. The additional implication is that VFIO layer has to
> be SVA struct aware in order to sanitize the mm_struct for guest bind.
> i.e. check guest ownership by using QEMU process mm. Whereas we have
> today, VFIO just use IOASID set as mm to check ownership, no need to
> know the type.

Thanks for the explanation, I think I understand a little better after
taking a closer look at your v4.

> Can we keep the NULL set for now and remove it __after__ we converge on
> the sva bind flows?

Sure, let's revisit this later

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
