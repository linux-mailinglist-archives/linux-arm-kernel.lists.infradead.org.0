Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D92454A3CF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 16:23:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rTG467LBtt6v71HmEu0PxAuMc1njRrDTsaWazepvw+Q=; b=jr+hogE9hWVPwk
	reSbBuaCIwq7WpIlEUAUcAjy9Noi+sy4p3U5vYRVYp40khb1mmKrKqIwCxSWr/S6NYrIrWNuouHMM
	J7knEt7b/lICBo0LfG8oCDwBcRrjV6k944J6Iucyq+ufv0WXN9qQurZvBgEYVeb/HSUbDXMZnxm6T
	g35OtUoHjjt6CiMEVQO0b9AF4oKE+eSRtYplBUFSv7UVO4yUhScfabM98m83UQWPgvE7Elr3Emhii
	xOw/Uihc6dsyi2R53TqSV75/N+iygaJLjdA/PIa4YJvL8szFvK9E84V52BXkvG60s/1OqkvbcRmBu
	aYOunYEOeQOxNFT4DUGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdF0s-0004Z9-1E; Tue, 18 Jun 2019 14:23:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdF0e-0004Ws-KH
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 14:22:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EC3BD2B;
 Tue, 18 Jun 2019 07:22:49 -0700 (PDT)
Received: from [10.1.196.129] (ostrya.cambridge.arm.com [10.1.196.129])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AC35F3F718;
 Tue, 18 Jun 2019 07:22:48 -0700 (PDT)
Subject: Re: [PATCH 1/8] iommu: Add I/O ASID allocator
To: Jacob Pan <jacob.jun.pan@linux.intel.com>
References: <20190610184714.6786-1-jean-philippe.brucker@arm.com>
 <20190610184714.6786-2-jean-philippe.brucker@arm.com>
 <20190611103625.00001399@huawei.com>
 <62d1f310-0cba-4d55-0f16-68bba3c64927@arm.com>
 <20190611111333.425ce809@jacob-builder>
From: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
Message-ID: <13e19d8c-8918-a3bb-f398-2ac41c71d307@arm.com>
Date: Tue, 18 Jun 2019 15:22:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190611111333.425ce809@jacob-builder>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_072252_717393_A33E15B2 
X-CRM114-Status: GOOD (  19.41  )
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
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 Jonathan Cameron <jonathan.cameron@huawei.com>,
 Robin Murphy <Robin.Murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/06/2019 19:13, Jacob Pan wrote:
>>>> +/**
>>>> + * ioasid_find - Find IOASID data
>>>> + * @set: the IOASID set
>>>> + * @ioasid: the IOASID to find
>>>> + * @getter: function to call on the found object
>>>> + *
>>>> + * The optional getter function allows to take a reference to the
>>>> found object
>>>> + * under the rcu lock. The function can also check if the object
>>>> is still valid:
>>>> + * if @getter returns false, then the object is invalid and NULL
>>>> is returned.
>>>> + *
>>>> + * If the IOASID has been allocated for this set, return the
>>>> private pointer
>>>> + * passed to ioasid_alloc. Private data can be NULL if not set.
>>>> Return an error
>>>> + * if the IOASID is not found or does not belong to the set.  
>>>
>>> Perhaps should make it clear that @set can be null.  
>>
>> Indeed. But I'm not sure allowing @set to be NULL is such a good idea,
>> because the data type associated to an ioasid depends on its set. For
>> example SVA will put an mm_struct in there, and auxiliary domains use
>> some structure private to the IOMMU domain.
>>
> I am not sure we need to count on @set to decipher data type. Whoever
> does the allocation and owns the IOASID should knows its own data type.
> My thought was that @set is only used to group IDs, permission check
> etc.
> 
>> Jacob, could me make @set mandatory, or do you see a use for a global
>> search? If @set is NULL, then callers can check if the return pointer
>> is NULL, but will run into trouble if they try to dereference it.
>>
> A global search use case can be for PRQ. IOMMU driver gets a IOASID
> (first interrupt then retrieve from a queue), it has no idea which
> @set it belongs to. But the data types are the same for all IOASIDs
> used by the IOMMU.

They aren't when we use a generic SVA handler. Following a call to
iommu_sva_bind_device(), iommu-sva.c allocates an IOASID and store an
mm_struct. If auxiliary domains are also enabled for the device,
following a call to iommu_aux_attach_device() the IOMMU driver allocates
an IOASID and stores some private object.

Now for example the IOMMU driver receives a PPR and calls ioasid_find()
with @set = NULL. ioasid_find() may return either an mm_struct or a
private object, and the driver cannot know which it is so the returned
value is unusable.

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
