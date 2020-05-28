Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C65411E59A1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 09:46:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uoFfeWTOPRXdS6fl64dRHOsS0MnLrYPZB6XnfYdpjBk=; b=L9cPy3vJJsjOsa
	x71nfhg1/RiHbYtPK8mS1GiNJ57z8+rVLJnDAvqvjgxrLxLVo/xxaM8vj8823O6i9/PMSrvm8zgHp
	ZNrVWnnHWdaNKlgfYJ6/RXVePX1X6vxADXSjnnb7yf6QMvy3jDrGD+2Dbvy6BvusqTBtaMPve/xyG
	sff7SLbegEIxvXde2D/gHaKMci6/tnywkPFLNnBqk40K7yNGK9fI5fRHVDxlPGVg+bETfJAsnQmZ3
	mIdBFMqSxUiVADgT6pP96blkUa8a6Ywtjfj9AfCYokgNOCUJ23EqsbPqeLUwMbHhqXsNrXEbqPr7k
	tbCi4vPIUzGYfi/213rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeDFQ-0007BE-UN; Thu, 28 May 2020 07:46:40 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeDCw-0002R6-6w
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 07:44:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590651843;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=z7gq34X5+FDApO6RZCSsyS3w0y0KfODq2sN2I24ixnw=;
 b=Wc1u2gs1AQ+eILQgqEREbzCvY0xte2aSNU4qYPxnUEWEFLm2rNPavEghIva64Qk7fvufhc
 nzP3nu/rmPVTRrXsY5kV6Oz8BkFcP9vUWBYJplj776Ihisx6ry3qDrT7xpEk+FcNlKe9OP
 C1hyloQbqd2HHDFX7Mf2zRgB4WM1cvo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-303-4WhxdBjLP32hekYeZl9eLA-1; Thu, 28 May 2020 03:43:55 -0400
X-MC-Unique: 4WhxdBjLP32hekYeZl9eLA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CBD061005510;
 Thu, 28 May 2020 07:43:53 +0000 (UTC)
Received: from [10.36.113.56] (ovpn-113-56.ams2.redhat.com [10.36.113.56])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8EBB162932;
 Thu, 28 May 2020 07:43:48 +0000 (UTC)
Subject: Re: [RFC PATCH] iommu/arm-smmu: Add module parameter to set msi iova
 address
To: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Srinath Mannam <srinath.mannam@broadcom.com>
References: <1590595398-4217-1-git-send-email-srinath.mannam@broadcom.com>
 <f9b221cf-1c7f-9f95-133b-dca65197b6c2@arm.com>
 <CABe79T7WwD2AyWp2e5pAi8TO2r5=-v5gPb2Gjtf8EhHOn3dogQ@mail.gmail.com>
 <20200528072308.GA414784@myrica>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <527f25a4-ca5a-10da-150f-0b4ea3839635@redhat.com>
Date: Thu, 28 May 2020 09:43:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20200528072308.GA414784@myrica>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_004406_378996_F5BE6782 
X-CRM114-Status: GOOD (  28.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Will Deacon <will@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 iommu@lists.linux-foundation.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 5/28/20 9:23 AM, Jean-Philippe Brucker wrote:
> On Thu, May 28, 2020 at 10:45:14AM +0530, Srinath Mannam wrote:
>> On Wed, May 27, 2020 at 11:00 PM Robin Murphy <robin.murphy@arm.com> wrote:
>>>
>> Thanks Robin for your quick response.
>>> On 2020-05-27 17:03, Srinath Mannam wrote:
>>>> This patch gives the provision to change default value of MSI IOVA base
>>>> to platform's suitable IOVA using module parameter. The present
>>>> hardcoded MSI IOVA base may not be the accessible IOVA ranges of platform.
>>>
>>> That in itself doesn't seem entirely unreasonable; IIRC the current
>>> address is just an arbitrary choice to fit nicely into Qemu's memory
>>> map, and there was always the possibility that it wouldn't suit everything.
>>>
>>>> Since commit aadad097cd46 ("iommu/dma: Reserve IOVA for PCIe inaccessible
>>>> DMA address"), inaccessible IOVA address ranges parsed from dma-ranges
>>>> property are reserved.
> 
> I don't understand why we only reserve the PCIe windows for DMA domains.
> Shouldn't VFIO also prevent userspace from mapping them?

VFIO prevents userspace from DMA mapping iovas within reserved regions:
9b77e5c79840  vfio/type1: check dma map request is within a valid iova range

but it does not prevent the SW MSI region chosen by the kernel from
colliding with other reserved regions (esp. PCIe host bridge windows).

  If they were
> part of the common reserved regions then we could have VFIO choose a
> SW_MSI region among the remaining free space.
As Robin said this was the initial chosen approach
[PATCH 10/10] vfio: allow the user to register reserved iova range for
MSI mapping
https://patchwork.kernel.org/patch/8121641/

Some additional background about why the static SW MSI region chosen by
the kernel was later chosen:
Summary of LPC guest MSI discussion in Santa Fe (was: Re: [RFC 0/8] KVM
PCIe/MSI passthrough on ARM/ARM64 (Alt II))
https://lists.linuxfoundation.org/pipermail/iommu/2016-November/019060.html

Thanks

Eric


 It would just need a
> different way of asking the IOMMU driver if a SW_MSI is needed, for
> example with a domain attribute.
> 
> Thanks,
> Jean
> 
>>>
>>> That, however, doesn't seem to fit here; iommu-dma maps MSI doorbells
>>> dynamically, so they aren't affected by reserved regions any more than
>>> regular DMA pages are. In fact, it explicitly ignores the software MSI
>>> region, since as the comment says, it *is* the software that manages those.
>> Yes you are right, we don't see any issues with kernel drivers(PCI EP) because
>> MSI IOVA allocated dynamically by honouring reserved regions same as DMA pages.
>>>
>>> The MSI_IOVA_BASE region exists for VFIO, precisely because in that case
>>> the kernel *doesn't* control the address space, but still needs some way
>>> to steal a bit of it for MSIs that the guest doesn't necessarily know
>>> about, and give userspace a fighting chance of knowing what it's taken.
>>> I think at the time we discussed the idea of adding something to the
>>> VFIO uapi such that userspace could move this around if it wanted or
>>> needed to, but decided we could live without that initially. Perhaps now
>>> the time has come?
>> Yes, we see issues only with user-space drivers(DPDK) in which MSI_IOVA_BASE
>> region is considered to map MSI registers. This patch helps us to fix the issue.
>>
>> Thanks,
>> Srinath.
>>>
>>> Robin.
>>>
>>>> If any platform has the limitaion to access default MSI IOVA, then it can
>>>> be changed using "arm-smmu.msi_iova_base=0xa0000000" command line argument.
>>>>
>>>> Signed-off-by: Srinath Mannam <srinath.mannam@broadcom.com>
>>>> ---
>>>>   drivers/iommu/arm-smmu.c | 5 ++++-
>>>>   1 file changed, 4 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
>>>> index 4f1a350..5e59c9d 100644
>>>> --- a/drivers/iommu/arm-smmu.c
>>>> +++ b/drivers/iommu/arm-smmu.c
>>>> @@ -72,6 +72,9 @@ static bool disable_bypass =
>>>>   module_param(disable_bypass, bool, S_IRUGO);
>>>>   MODULE_PARM_DESC(disable_bypass,
>>>>       "Disable bypass streams such that incoming transactions from devices that are not attached to an iommu domain will report an abort back to the device and will not be allowed to pass through the SMMU.");
>>>> +static unsigned long msi_iova_base = MSI_IOVA_BASE;
>>>> +module_param(msi_iova_base, ulong, S_IRUGO);
>>>> +MODULE_PARM_DESC(msi_iova_base, "msi iova base address.");
>>>>
>>>>   struct arm_smmu_s2cr {
>>>>       struct iommu_group              *group;
>>>> @@ -1566,7 +1569,7 @@ static void arm_smmu_get_resv_regions(struct device *dev,
>>>>       struct iommu_resv_region *region;
>>>>       int prot = IOMMU_WRITE | IOMMU_NOEXEC | IOMMU_MMIO;
>>>>
>>>> -     region = iommu_alloc_resv_region(MSI_IOVA_BASE, MSI_IOVA_LENGTH,
>>>> +     region = iommu_alloc_resv_region(msi_iova_base, MSI_IOVA_LENGTH,
>>>>                                        prot, IOMMU_RESV_SW_MSI);
>>>>       if (!region)
>>>>               return;
>>>>
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
