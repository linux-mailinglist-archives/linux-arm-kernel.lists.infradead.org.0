Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 752F79A9F2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 10:16:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3jV6LkgtDmgZBHvZfvV7RjB6WK2ciY3nAl67w/93dlE=; b=XiobjaZPJl2zkzdKnIJBSN6kPz
	LprSUBm1tTaQ88edhsWGvNBhxz1o+FmS1z4cde+9vI7GOOhRUkmur6bTVFlWWeQWRtizwH4qc0pto
	TNLpF0tUL76PXw5fadp7tX8dJmFYgMniI3cT4Br45/EFhBxH+TbkXgIksAnBsikcM5Av/pXgsb4mL
	NLvR4mKMa6sg0yqNRf7tBWvdOcvkim7hpvT/ZHHit2djoL6lCOTzFSC2mJ/AYn7xecoFds+15SpjR
	0I3dRdOQPsO0pAnD3rXGJNST+t1RG8UbiXI1MIPRORAWkxakNXrC1lh4Srhtaj81vKjTu0OQ4mLdz
	NdC2a5/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i14k7-0002Ii-Jy; Fri, 23 Aug 2019 08:16:19 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i14j5-0001fx-9U
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 08:15:17 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 9B9376584E140FA06078;
 Fri, 23 Aug 2019 16:15:12 +0800 (CST)
Received: from [127.0.0.1] (10.133.215.186) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.439.0;
 Fri, 23 Aug 2019 16:15:02 +0800
Subject: Re: [PATCH v2 0/2] iommu/iova: enhance the rcache optimization
To: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>, "Jean-Philippe
 Brucker" <jean-philippe@linaro.org>, John Garry <john.garry@huawei.com>,
 "Robin Murphy" <robin.murphy@arm.com>, Will Deacon <will@kernel.org>, Joerg
 Roedel <joro@8bytes.org>, iommu <iommu@lists.linux-foundation.org>, Omer
 Peleg <omer@cs.technion.ac.il>, Adam Morrison <mad@cs.technion.ac.il>,
 Shaohua Li <shli@fb.com>, Ben Serebrin <serebrin@google.com>, David Woodhouse
 <David.Woodhouse@intel.com>, linux-arm-kernel
 <linux-arm-kernel@lists.infradead.org>, linux-kernel
 <linux-kernel@vger.kernel.org>
References: <20190815121104.29140-1-thunder.leizhen@huawei.com>
From: "Leizhen (ThunderTown)" <thunder.leizhen@huawei.com>
Message-ID: <297e3718-eb31-d92a-1eb9-d4999fcd20c5@huawei.com>
Date: Fri, 23 Aug 2019 16:15:00 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190815121104.29140-1-thunder.leizhen@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.133.215.186]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_011515_712673_069818A8 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,
  Can anyone help review it?


On 2019/8/15 20:11, Zhen Lei wrote:
> v1 --> v2
> 1. I did not chagne the patches but added this cover-letter.
> 2. Add a batch of reviewers base on
>    9257b4a206fc ("iommu/iova: introduce per-cpu caching to iova allocation")
> 3. I described the problem I met in patch 2, but I hope below brief description
>    can help people to quickly understand.
>    Suppose there are six rcache sizes, each size can maximum hold 10000 IOVAs.
>    --------------------------------------------
>    |  4K   |  8K  | 16K  |  32K | 64K  | 128K |
>    --------------------------------------------
>    | 10000 | 9000 | 8500 | 8600 | 9200 | 7000 |
>    --------------------------------------------
>    As the above map displayed, the whole rcache buffered too many IOVAs. Now, the
>    worst case can be coming, suppose we need 20000 4K IOVAs at one time. That means
>    10000 IOVAs can be allocated from rcache, but another 10000 IOVAs should be 
>    allocated from RB tree base on alloc_iova() function. But the RB tree currently
>    have at least (9000 + 8500 + 8600 + 9200 + 7000) = 42300 nodes. The average speed
>    of RB tree traverse will be very slow. For my test scenario, the 4K size IOVAs are
>    frequently used, but others are not. So similarly, when the 20000 4K IOVAs are
>    continuous freed, the first 10000 IOVAs can be quickly buffered, but the other
>    10000 IOVAs can not.
> 
> Zhen Lei (2):
>   iommu/iova: introduce iova_magazine_compact_pfns()
>   iommu/iova: enhance the rcache optimization
> 
>  drivers/iommu/iova.c | 100 +++++++++++++++++++++++++++++++++++++++++++++++----
>  include/linux/iova.h |   1 +
>  2 files changed, 95 insertions(+), 6 deletions(-)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
