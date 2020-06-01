Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA5721EA65D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 16:58:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EGYTMidVLAZxMuylG6myTL3Q0J56lvOi0Ctx5F4A5Bg=; b=i1ICkOOTGoj3O+
	PaNIPGxPzn6oc0MCIx3zqfP/fUqTo2rVaAwaqoqxm41fGI/k9dJNAZ7oxPznQyjUhpglwO+qMJh39
	dO8jhgOo4cGELl60ESw/TeUEH45ew2ZeqSYXgQAwHkch+cd7d4Yzt/T8CjwGSBts776Pq33Cnk9+j
	AHdVstsQd1gPyah/Fm8EbmtKPVuPCgGlvJqmIU93t6dWRLTauo2ca9wYvv4V+g14OhAn7wkILd/Hh
	LEcDYC03tX05OznbVNplc3TanbrAl93pI3k6rMF1sAUAlnTsSykbclHk7VAvMIiGV3apJW/n+uWA0
	3wr68vX2yJMedvwRc+gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jflt5-0008D6-Uq; Mon, 01 Jun 2020 14:58:03 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jflsz-0008C6-R2
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 14:57:59 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 1D32A44F0A1957BAB3EB;
 Mon,  1 Jun 2020 22:57:46 +0800 (CST)
Received: from [127.0.0.1] (10.173.220.25) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.487.0; Mon, 1 Jun 2020
 22:57:36 +0800
Subject: Re: [RFC PATCH v3 2/2] arm64: tlb: Use the TLBI RANGE feature in arm64
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20200414112835.1121-1-yezhenyu2@huawei.com>
 <20200414112835.1121-3-yezhenyu2@huawei.com> <20200514152840.GC1907@gaia>
 <54468aae-dbb1-66bd-c633-82fc75936206@huawei.com>
 <20200520170759.GE18302@gaia>
From: Zhenyu Ye <yezhenyu2@huawei.com>
Message-ID: <a159dd5a-7189-308f-9ebc-98f0eadca852@huawei.com>
Date: Mon, 1 Jun 2020 22:57:35 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200520170759.GE18302@gaia>
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_075758_040219_371FC6F8 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.191 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arch@vger.kernel.org, suzuki.poulose@arm.com, maz@kernel.org,
 linux-kernel@vger.kernel.org, xiexiangyou@huawei.com, steven.price@arm.com,
 zhangshaokun@hisilicon.com, linux-mm@kvack.org, arm@kernel.org,
 prime.zeng@hisilicon.com, guohanjun@huawei.com, olof@lixom.net,
 kuhn.chenqun@huawei.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Catalin,

I have sent the v4 of this series [1] and combine the two function with
a single loop.  See codes for details.

[1] https://lore.kernel.org/linux-arm-kernel/20200601144713.2222-1-yezhenyu2@huawei.com/

On 2020/5/21 1:08, Catalin Marinas wrote:
>> This optimization is only effective when the range is a multiple of 256KB
>> (when the page size is 4KB), and I'm worried about the performance
>> of ilog2().  I traced the __flush_tlb_range() last year and found that in
>> most cases the range is less than 256K (see details in [1]).
> 
> THP or hugetlbfs would exercise bigger strides but I guess it depends on
> the use-case. ilog2() should be reduced to a few instructions on arm64
> AFAICT (haven't tried but it should use the CLZ instruction).
> 

Not bigger than 256K, but the range must be a integer multiple of 256KB,
so I still start from scale 0.

Thanks,
Zhenyu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
