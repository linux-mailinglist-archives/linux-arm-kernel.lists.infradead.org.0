Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D60C613984
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 May 2019 13:46:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oCIZhuPE9Cu7mYcruDZkQXDgYgsdBMhfYeL9JJomeZg=; b=SoaTlJG/ngQhTM
	iAf9achMnLomXiQmGoOc964XHfRH12KtrUiEBerO9QiX5XBwbei7g6mWrKRGUSCTWYBf1fW3GBIud
	/oklrP5XDKhOTLNkkU+SG/OEwAZjmcdTEFAWsyyvls8yXI+YU+ZUKqzJ3J5fGWXE1pCtOKSvuPaq1
	KTtAkjRNbsOJRXUSgJOAQ5PKWdFHUFP2erbiyXnT0xHDZAV9g4KcpABGbLv5JHbt4XuGfC3B77jCI
	+isZyYHc9xOq+JR1wqxGn5HakSRvyS08ZnwDeITvdspaOZ/4Cd3+hurqXMFJah0HgW1FqKcRDloxt
	3zjvYXh7bTYZE/iflX0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMt79-0001sh-44; Sat, 04 May 2019 11:45:59 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMt71-0001sC-Vw
 for linux-arm-kernel@lists.infradead.org; Sat, 04 May 2019 11:45:53 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 3B227DD96626D11D6E05;
 Sat,  4 May 2019 19:45:44 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.439.0; Sat, 4 May 2019
 19:45:34 +0800
To: Will Deacon <Will.Deacon@arm.com>
From: Hanjun Guo <guohanjun@huawei.com>
Subject: [RFC] munmap(64k) is much slower with patch set reduce synchronous
 TLB invalidation on ARM64 merged
Message-ID: <3a0e9ffc-315b-079f-bc0b-3ee3dca88905@huawei.com>
Date: Sat, 4 May 2019 19:44:59 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_044552_210012_978216E1 
X-CRM114-Status: UNSURE (   6.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

Hi Will,

With patch set "Avoid synchronous TLB invalidation for intermediate
page-table entries on arm64" was merged, munmap() for hugepage such as
2M will be much faster, but with following case, munmap(64k) will take
much longer time than before:

#define MEM_LEN_TEST			(0x10000UL)
#define MEM_ADD_START			(0x8000fffef000UL)
#define MEM1_ADD_START			(0x800000090000UL)

mem = (unsigned char *)mmap((void *)MEM_ADD_START, MEM_LEN_TEST, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);

mem1 = (unsigned char *)mmap((void *)MEM1_ADD_START, MEM_LEN_TEST, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);

munmap(mem, MEM_LEN_TEST); // will take much longer time (from 50us to 230us on A55) than before

munmap(mem1, MEM_LEN_TEST);

munmap(mem, MEM_LEN_TEST) will finally call unmap_region() in the kernel,
and in free_pgtables() will adjust the start and end in mmu_gather, so when
running to __flush_tlb_range(), the (end - start) will more that 1G but less
than 2G in this case, on the other hand, (MAX_TLBI_OPS * stride) will be 2G
as the stride is 2M.

So in the end if ((end - start) > (MAX_TLBI_OPS * stride)) will not valid,
and will take loops to invalidate the TLB for many times which is time consuming.

Can we make the (MAX_TLBI_OPS * stride) as constant such as 4M (which is the
value before "Avoid synchronous TLB invalidation for intermediate page-table
entries on arm64" merged)? or a smaller value for MAX_TLBI_OPS?

Looking forward your insight on this.

Best regards
Hanjun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
