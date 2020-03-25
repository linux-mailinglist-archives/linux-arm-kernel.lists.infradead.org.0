Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F158E192039
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 05:50:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DhSag02VNk29qqocJ7w/DXAtylujIiEs/h1svwmfHQE=; b=Y71jfi+lKyiShp
	F2RhLhWGHvNoG8/mCDsXLwSVdggylrKx5jwf+U9qax8xUUKNZ1h2ykIrDVyDWasOY/n0mMM7rdS3V
	HdwT67KFLUyw86yhdKCsnUG43sKuOyfGmaKuEqeZ3aNOASjtG5VZpCdgW67iR9QpESHEb5aMpgHNv
	7GV8k0sxfF2qMAYB8IOkAcclvsD/MATX36egDVJCz66yi2ZOOBtxV/aY/9FmpzkVBQXaPyrVvA2yv
	RByOkJEnrskM990NKkM7v6XxcZziPSVZ98/q9HrHIYs7/4OwR+KpCTrqtbjXOZ2jgtvBDar6U5omi
	0bYZuKmdAmlJ47ceCT6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGxzs-0001KJ-6e; Wed, 25 Mar 2020 04:50:32 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGxzi-0001Jl-5V
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 04:50:24 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id C4DF99AFB04254F4AEF3;
 Wed, 25 Mar 2020 12:50:16 +0800 (CST)
Received: from [127.0.0.1] (10.173.220.25) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.487.0; Wed, 25 Mar 2020
 12:49:47 +0800
Subject: Re: Re: [RFC PATCH v4 0/6] arm64: tlb: add support for TTL feature
To: Peter Zijlstra <peterz@infradead.org>
References: <20200324134534.1570-1-yezhenyu2@huawei.com>
 <20200324150155.GH20713@hirez.programming.kicks-ass.net>
From: Zhenyu Ye <yezhenyu2@huawei.com>
Message-ID: <fb06ba92-a3ce-6925-e914-167a85837f27@huawei.com>
Date: Wed, 25 Mar 2020 12:49:45 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200324150155.GH20713@hirez.programming.kicks-ass.net>
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_215022_783557_0F612B0D 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, linux-mm@kvack.org,
 guohanjun@huawei.com, will@kernel.org, linux-arch@vger.kernel.org,
 yuzhao@google.com, maz@kernel.org, steven.price@arm.com, arm@kernel.org,
 Dave.Martin@arm.com, arnd@arndb.de, suzuki.poulose@arm.com, npiggin@gmail.com,
 zhangshaokun@hisilicon.com, broonie@kernel.org, rostedt@goodmis.org,
 prime.zeng@hisilicon.com, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, xiexiangyou@huawei.com,
 linux-kernel@vger.kernel.org, aneesh.kumar@linux.ibm.com,
 akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peter,

On 2020/3/24 23:01, Peter Zijlstra wrote:
> On Tue, Mar 24, 2020 at 09:45:28PM +0800, Zhenyu Ye wrote:
>> In order to reduce the cost of TLB invalidation, the ARMv8.4 TTL
>> feature allows TLBs to be issued with a level allowing for quicker
>> invalidation.  This series provide support for this feature. 
>>
>> Patch 1 and Patch 2 was provided by Marc on his NV series[1] patches,
>> which detect the TTL feature and add __tlbi_level interface.
> 
> I realy hate how it makes vma->vm_flags more important for tlbi.
> 

Thanks for your review.

The tlbi interfaces only have two parameters: vma and addr. If we
try to not use vma->vm_flags, we may should have to add a parameter
to some of these interfaces(such as flush_tlb_range), which are
common to all architectures.

I'm not sure if this is feasible, because this feature is only
supported by ARM64 currently.


Thanks,
Zhenyu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
