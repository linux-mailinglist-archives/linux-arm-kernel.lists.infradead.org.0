Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BAFA7A626
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 12:43:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LoH6teQ662uPxNfikQ0goRglz6mTiV/TBgEK9ilCWK8=; b=h+BXrRTCfigt+VVigrD/CbUlm
	t3aTWClxl+6NBHkGpEBGmdmRn3HHJxPoYgBQmdQOcrUEzJBM4VZllWClydpXJW54ts2NPah9/mI81
	6snG2rg3261P/p3C6y/B5cSj2MUIms1EKFyrDUbWNYCnlLP1ZR5aZoufI4J3/w6s8DeILz2fPhjRh
	jvgEEpuVLHX88CebHXDeYLY9Lg+aPMrm26rA+dqGyo5G40cV8L2FPV07GStsVID8RkMz91WnsbnZV
	njCEJTlhU6yM/+09AmnI+RUBJQd4yWNOGZZ+dlAKztV/BGMqfocjlhV88MCrglruk5lUHD5W67BNO
	aEKhEob2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsPbV-0005tC-Pr; Tue, 30 Jul 2019 10:43:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsPbN-0005sR-7p
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 10:43:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 45896344;
 Tue, 30 Jul 2019 03:43:27 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7572F3F575;
 Tue, 30 Jul 2019 03:43:26 -0700 (PDT)
Subject: Re: [PATCH] iommu/dma: Handle MSI mappings separately
To: Christoph Hellwig <hch@infradead.org>
References: <2b2595de703c60a772ebcffe248d0cf036143e6a.1564414114.git.robin.murphy@arm.com>
 <20190730062843.GA1400@infradead.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <90566814-ed36-2eb9-49e2-98a4a949c9f6@arm.com>
Date: Tue, 30 Jul 2019 11:43:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190730062843.GA1400@infradead.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_034329_394349_7F7F22CD 
X-CRM114-Status: GOOD (  19.18  )
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
Cc: maz@kernel.org, joro@8bytes.org, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, Andre Przywara <andre.przywara@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/07/2019 07:28, Christoph Hellwig wrote:
> On Mon, Jul 29, 2019 at 04:32:38PM +0100, Robin Murphy wrote:
>> MSI pages must always be mapped into a device's *current* domain, which
>> *might* be the default DMA domain, but might instead be a VFIO domain
>> with its own MSI cookie. This subtlety got accidentally lost in the
>> streamlining of __iommu_dma_map(), but rather than reintroduce more
>> complexity and/or special-casing, it turns out neater to just split this
>> path out entirely.
>>
>> Since iommu_dma_get_msi_page() already duplicates much of what
>> __iommu_dma_map() does, it can easily just make the allocation and
>> mapping calls directly as well. That way we can further streamline the
>> helper back to exclusively operating on DMA domains.
>>
>> Fixes: b61d271e59d7 ("iommu/dma: Move domain lookup into __iommu_dma_{map,unmap}")
>> Reported-by: Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>
>> Reported-by: Andre Przywara <andre.przywara@arm.com>
>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> 
> Hmm.  I remember proposing this patch and you didn't like it because
> we could also have msis for a !IOMMU_DMA_IOVA_COOKIE cookie type.
> Or did we talk past each other?

Do you have a pointer? That sparks the vaguest of memories, but I can't 
seem to turn anything up in my inbox. If that was my objection, though, 
it sounds like your patch was probably trying to go a step or two 
further than this one.

> Note that if this change turns out to be valid we should also
> clean up the iommu_dma_free_iova() side.

We're not touching the iommu_dma_{alloc,free}_iova() path here; those 
are designed to cope with both types of cookie, and I think that's a 
reasonable abstraction to keep. This is just getting rid of the 
asymmetry - and now bug - caused by trying to keep the MSI page flow 
going through a special case in __iommu_dma_map() despite that having 
evolved into a more specific DMA domain fastpath (there's no 
corresponding unmap special case since MSI mappings just persist and get 
recycled until the domain is destroyed).

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
