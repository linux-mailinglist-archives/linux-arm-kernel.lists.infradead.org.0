Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00AE0157FA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 05:16:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P8iFTik1h7rhLfTQWArzX+FnWRr4tBtCzy29OW/c3D4=; b=IOPzNgOg/UbHeQ
	jJHEg3jZSz7TbWWcOtYN9O9Z1eJCn50F+Fazt2UMDMZhBRJlRCMOkrzQd7bvO1xoVUUC3AAw1Gy8n
	R5ozUDZlXNw9sIXS/+CnURKBfGRIqlvNEiYmWqhhEm6qNN3Sd4ZnLEXjbxnus6l6RHznvDIJDOwnN
	Xt8SE67JmiChV5k/Ownc/FvPQedkyd5SFJ/deZ0LdJHYaRD/BoV9y4swjJO6JlhVl+O8kh/jwtBnY
	DS5UH9yB++9JuqDzxtT2RVT0Ribmiz1doqxEUxUyyHAtmQGtwqDCQeUzE3RoX6Vrxyqo2f8AAPw/l
	SzbDFaIt1z4iJ8AcjXyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNqb6-0002Jk-GU; Tue, 07 May 2019 03:16:52 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNqay-0002Ii-Su
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 03:16:46 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 7307ECCD5438F59D00B5;
 Tue,  7 May 2019 11:16:31 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0; Tue, 7 May 2019
 11:16:22 +0800
Subject: Re: [RFC] munmap(64k) is much slower with patch set reduce
 synchronous TLB invalidation on ARM64 merged
To: Will Deacon <will.deacon@arm.com>
References: <3a0e9ffc-315b-079f-bc0b-3ee3dca88905@huawei.com>
 <20190506184714.GE2875@brain-police>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <17eeae5a-dcc0-7e7f-154d-664a8e83ccf5@huawei.com>
Date: Tue, 7 May 2019 11:15:46 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <20190506184714.GE2875@brain-police>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_201645_160964_C9DF8157 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "wangxiongfeng \(C\)" <wangxiongfeng2@huawei.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Linuxarm <linuxarm@huawei.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "Zhouguanghui \(OS Kernel\)" <zhouguanghui1@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/5/7 2:47, Will Deacon wrote:
> On Sat, May 04, 2019 at 07:44:59PM +0800, Hanjun Guo wrote:
>> With patch set "Avoid synchronous TLB invalidation for intermediate
>> page-table entries on arm64" was merged, munmap() for hugepage such as
>> 2M will be much faster, but with following case, munmap(64k) will take
>> much longer time than before:
> 
> I didn't find anything grepping for that subject. Could you provide a commit
> ID instead, please?

Sorry for not clear, this is a patch set:

https://lkml.org/lkml/2018/8/30/751

And for specific commit IDs,
f270ab8 arm64: tlb: Adjust stride and type of TLBI according to mmu_gather
67a902a arm64: tlbflush: Allow stride to be specified for __flush_tlb_range()

> 
>> #define MEM_LEN_TEST			(0x10000UL)
>> #define MEM_ADD_START			(0x8000fffef000UL)
>> #define MEM1_ADD_START			(0x800000090000UL)
>>
>> mem = (unsigned char *)mmap((void *)MEM_ADD_START, MEM_LEN_TEST, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
>>
>> mem1 = (unsigned char *)mmap((void *)MEM1_ADD_START, MEM_LEN_TEST, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
>>
>> munmap(mem, MEM_LEN_TEST); // will take much longer time (from 50us to 230us on A55) than before
>>
>> munmap(mem1, MEM_LEN_TEST);
>>
>> munmap(mem, MEM_LEN_TEST) will finally call unmap_region() in the kernel,
>> and in free_pgtables() will adjust the start and end in mmu_gather, so when
>> running to __flush_tlb_range(), the (end - start) will more that 1G but less
>> than 2G in this case, on the other hand, (MAX_TLBI_OPS * stride) will be 2G
>> as the stride is 2M.
>>
>> So in the end if ((end - start) > (MAX_TLBI_OPS * stride)) will not valid,
>> and will take loops to invalidate the TLB for many times which is time consuming.
>>
>> Can we make the (MAX_TLBI_OPS * stride) as constant such as 4M (which is the
>> value before "Avoid synchronous TLB invalidation for intermediate page-table
>> entries on arm64" merged)? or a smaller value for MAX_TLBI_OPS?
> 
> Changing MAX_TLBI_OPS will hurt the common case when tearing down PMD tables
> with 4k pages, so I'm hesitant to change that again.

It's true, but MAX_TLBI_OPS(1024) seems not an objective value fits all needs.
Is it reasonable to update the algorithm of adjusting the start and end in mmu_gather
in function free_pgtables()?

Thanks
Hanjun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
