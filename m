Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D07B1C4B8A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 12:35:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=F9rO75Mk42mfAGCKYkcTWIPY8uxwNL9eoIomTXXYKBU=; b=MeyS0RhO+o0bfL+FtSdPqNtyc
	EHDJRD7Ykm34Xy+Isb/fgvrf+nm4FYh0I/UNw7yANSkAhy93mEmNNovkivCfKT7bSPmDrfshJfE2+
	FEs8PGrWBMaxwMF09kHDWfoKAkIl2GvuFcD5b9tF30juURox1KTED6okBRfS7UBZ9ORfg56Uo2DB/
	OqFo5/3+t+DBSdOLCXXHtFvrhSt3wE1YQ7xyAetWsPfMk3yTybymSftCXZk1KnVPuxReJ3t2KFUsU
	VcT8rJvrEHpoChBhISpVGjmZHqPwj6wjypbT2Ym1jo5S9irjItmUuHWxDq2js1Bas3aeaxXDNs1eI
	S0TFqFpsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFbz1-0002BS-5j; Wed, 02 Oct 2019 10:35:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFbya-0001oG-BH; Wed, 02 Oct 2019 10:35:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 88AA11000;
 Wed,  2 Oct 2019 03:35:19 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2F1FC3F739;
 Wed,  2 Oct 2019 03:35:17 -0700 (PDT)
Subject: Re: [PATCH] iommu/mediatek: Move the tlb_sync into tlb_flush
To: Tomasz Figa <tfiga@chromium.org>, Yong Wu <yong.wu@mediatek.com>
References: <1569822142-14303-1-git-send-email-yong.wu@mediatek.com>
 <CAAFQd5C+FM3n-Ww4C+qDD1QZOGZrqEYw4EvYECfadGcDH0fmew@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <366b0bda-d874-9109-5c83-ff27301f3486@arm.com>
Date: Wed, 2 Oct 2019 11:35:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAAFQd5C+FM3n-Ww4C+qDD1QZOGZrqEYw4EvYECfadGcDH0fmew@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_033520_537860_3F4719F2 
X-CRM114-Status: GOOD (  27.12  )
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
Cc: youlin.pei@mediatek.com, anan.sun@mediatek.com,
 Nicolas Boichat <drinkcat@chromium.org>, cui.zhang@mediatek.com,
 srv_heupstream <srv_heupstream@mediatek.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Evan Green <evgreen@chromium.org>, chao.hao@mediatek.com,
 "list@263.net:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02/10/2019 06:18, Tomasz Figa wrote:
> Hi Yong,
> 
> On Mon, Sep 30, 2019 at 2:42 PM Yong Wu <yong.wu@mediatek.com> wrote:
>>
>> The commit 4d689b619445 ("iommu/io-pgtable-arm-v7s: Convert to IOMMU API
>> TLB sync") help move the tlb_sync of unmap from v7s into the iommu
>> framework. It helps add a new function "mtk_iommu_iotlb_sync", But it
>> lacked the dom->pgtlock, then it will cause the variable
>> "tlb_flush_active" may be changed unexpectedly, we could see this warning
>> log randomly:
>>
> 
> Thanks for the patch! Please see my comments inline.
> 
>> mtk-iommu 10205000.iommu: Partial TLB flush timed out, falling back to
>> full flush
>>
>> To fix this issue, we can add dom->pgtlock in the "mtk_iommu_iotlb_sync".
>> And when checking this issue, we find that __arm_v7s_unmap call
>> io_pgtable_tlb_add_flush consecutively when it is supersection/largepage,
>> this also is potential unsafe for us. There is no tlb flush queue in the
>> MediaTek M4U HW. The HW always expect the tlb_flush/tlb_sync one by one.
>> If v7s don't always gurarantee the sequence, Thus, In this patch I move
>> the tlb_sync into tlb_flush(also rename the function deleting "_nosync").
>> and we don't care if it is leaf, rearrange the callback functions. Also,
>> the tlb flush/sync was already finished in v7s, then iotlb_sync and
>> iotlb_sync_all is unnecessary.
> 
> Performance-wise, we could do much better. Instead of synchronously
> syncing at the end of mtk_iommu_tlb_add_flush(), we could sync at the
> beginning, if there was any previous flush still pending. We would
> also have to keep the .iotlb_sync() callback, to take care of waiting
> for the last flush. That would allow better pipelining with CPU in
> cases like this:
> 
> for (all pages in range) {
>     change page table();
>     flush();
> }
> 
> "change page table()" could execute while the IOMMU is flushing the
> previous change.

FWIW, given that the underlying invalidation mechanism is range-based, 
this driver would be an ideal candidate for making use of the new 
iommu_gather mechanism. As a fix for stable, though, simply ensuring 
that add_flush syncs any pending invalidation before issuing a new one 
sounds like a good idea (and probably a simpler patch too).

[...]
>> @@ -574,8 +539,7 @@ static int mtk_iommu_of_xlate(struct device *dev, struct of_phandle_args *args)
>>          .detach_dev     = mtk_iommu_detach_device,
>>          .map            = mtk_iommu_map,
>>          .unmap          = mtk_iommu_unmap,
>> -       .flush_iotlb_all = mtk_iommu_flush_iotlb_all,
> 
> Don't we still want .flush_iotlb_all()? I think it should be more
> efficient in some cases than doing a big number of single flushes.
> (That said, the previous implementation didn't do any flush at all. It
> just waited for previously queued flushes to happen. Was that
> expected?)

Commit 07fdef34d2be ("iommu/arm-smmu-v3: Implement flush_iotlb_all 
hook") has an explanation of what the deal was there - similarly, it's 
probably worth this driver implementing it properly as well now (but 
that's really a separate patch).

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
