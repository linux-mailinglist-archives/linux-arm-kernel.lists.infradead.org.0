Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4902AD74DD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 13:24:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yig8KrjYHKNVpVNBJHPDrEpkR1pPCLL81puOKimGV0A=; b=P7BK8PcnKzxUJAj1cr+YdYQ+m
	cwVLLCxQsGS6g/33kmflSfjaHGcaIV/dKqn6YbJOTvsxl0/rLPYxPrlnSAfZqmnHrAOTPk1pCKqDm
	Rg4T/DsB/hKsVwN0WPkDuznkKoRNCe+kbbsrD4Yg1XtFEU4V38Ctw6UOUeUmQjKJdDO0StLuXILik
	W0OhKZpD+KRPt9FSE7aXZmSA6vRS7EC3ueO7P35TO0fK1yh7hRQSGWb0p7wpnlSrnph2jUd/a0U46
	jwc4DhwTBfzRQUGD39oafJ0ERDkFjEpkl1GcaMy8j3grHfjyNfdionSETlp+9eJ5ZgDmIDJbUsmLP
	658EiiC4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKKw3-0007iB-1v; Tue, 15 Oct 2019 11:24:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKKvt-0007hm-EA; Tue, 15 Oct 2019 11:24:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EAE3D1000;
 Tue, 15 Oct 2019 04:24:04 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BC9373F68E;
 Tue, 15 Oct 2019 04:24:02 -0700 (PDT)
Subject: Re: [PATCH v3 4/7] iommu/mediatek: Delete the leaf in the tlb flush
To: Yong Wu <yong.wu@mediatek.com>
References: <1571035101-4213-1-git-send-email-yong.wu@mediatek.com>
 <1571035101-4213-5-git-send-email-yong.wu@mediatek.com>
 <20c74c20-864e-88af-3c58-ad3bb7600bcc@arm.com>
 <1571117118.19130.81.camel@mhfsdcap03>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <888d299a-b314-2735-bc73-dd68b92c33af@arm.com>
Date: Tue, 15 Oct 2019 12:24:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1571117118.19130.81.camel@mhfsdcap03>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_042405_562730_85698F3E 
X-CRM114-Status: GOOD (  19.15  )
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
Cc: youlin.pei@mediatek.com, anan.sun@mediatek.com,
 Nicolas Boichat <drinkcat@chromium.org>, cui.zhang@mediatek.com,
 srv_heupstream@mediatek.com, edison.hsieh@mediatek.com,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>,
 chao.hao@mediatek.com, Tomasz Figa <tfiga@google.com>,
 iommu@lists.linux-foundation.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15/10/2019 06:25, Yong Wu wrote:
> On Mon, 2019-10-14 at 15:22 +0100, Robin Murphy wrote:
>> On 14/10/2019 07:38, Yong Wu wrote:
>>> In our tlb range flush, we don't care the "leaf". Remove it to simplify
>>> the code. no functional change.
>>
>> Presumably you don't care about the granule either?
> 
> Yes. I only keep "granule" to satisfy the format of "tlb_flush_walk",
> then it's no need add a new helper function.

Ah, I'd failed to make the connection that it ends up wired in directly 
to the callbacks in patch #5 - indeed there's no point churning the 
mtk_iommu_tlb_add_flush_nosync() callsites here if they're just getting 
removed later anyway. In that case,

Reviewed-by: Robin Murphy <robin.murphy@arm.com>

>>> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
>>> ---
>>>    drivers/iommu/mtk_iommu.c | 16 ++++------------
>>>    1 file changed, 4 insertions(+), 12 deletions(-)
>>>
>>> diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
>>> index 8712afc..19f936c 100644
>>> --- a/drivers/iommu/mtk_iommu.c
>>> +++ b/drivers/iommu/mtk_iommu.c
>>> @@ -174,8 +174,7 @@ static void mtk_iommu_tlb_flush_all(void *cookie)
>>>    }
>>>    
>>>    static void mtk_iommu_tlb_add_flush_nosync(unsigned long iova, size_t size,
>>> -					   size_t granule, bool leaf,
>>> -					   void *cookie)
>>> +					   size_t granule, void *cookie)
>>>    {
>>>    	struct mtk_iommu_data *data = cookie;
>>>    
>>> @@ -219,14 +218,7 @@ static void mtk_iommu_tlb_sync(void *cookie)
>>>    static void mtk_iommu_tlb_flush_walk(unsigned long iova, size_t size,
>>>    				     size_t granule, void *cookie)
>>>    {
>>> -	mtk_iommu_tlb_add_flush_nosync(iova, size, granule, false, cookie);
>>> -	mtk_iommu_tlb_sync(cookie);
>>> -}
>>> -
>>> -static void mtk_iommu_tlb_flush_leaf(unsigned long iova, size_t size,
>>> -				     size_t granule, void *cookie)
>>> -{
>>> -	mtk_iommu_tlb_add_flush_nosync(iova, size, granule, true, cookie);
>>> +	mtk_iommu_tlb_add_flush_nosync(iova, size, granule, cookie);
>>>    	mtk_iommu_tlb_sync(cookie);
>>>    }
>>>    
>>> @@ -245,7 +237,7 @@ static void mtk_iommu_tlb_flush_page_nosync(struct iommu_iotlb_gather *gather,
>>>    static const struct iommu_flush_ops mtk_iommu_flush_ops = {
>>>    	.tlb_flush_all = mtk_iommu_tlb_flush_all,
>>>    	.tlb_flush_walk = mtk_iommu_tlb_flush_walk,
>>> -	.tlb_flush_leaf = mtk_iommu_tlb_flush_leaf,
>>> +	.tlb_flush_leaf = mtk_iommu_tlb_flush_walk,
>>>    	.tlb_add_page = mtk_iommu_tlb_flush_page_nosync,
>>>    };
>>>    
>>> @@ -475,7 +467,7 @@ static void mtk_iommu_iotlb_sync(struct iommu_domain *domain,
>>>    		spin_lock_irqsave(&dom->pgtlock, flags);
>>>    
>>>    	mtk_iommu_tlb_add_flush_nosync(gather->start, length, gather->pgsize,
>>> -				       false, data);
>>> +				       data);
>>>    	mtk_iommu_tlb_sync(data);
>>>    
>>>    	if (!is_in_gather)
>>>
>>
>> _______________________________________________
>> Linux-mediatek mailing list
>> Linux-mediatek@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-mediatek
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
