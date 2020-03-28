Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD320196390
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 05:31:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/5cqV7CkVCIew8+AnSE0rGw+3+J419ZjEqmUZWESD0o=; b=kwAi5FaE3iVqYh
	xCtjTIlqps112DsJ7QCz7ORPPJ2odDMpGfNqGDrOjrcQgw1knWsYXIUTee2iGaQsGqImvyKV2AmM9
	suVj4xoCUME1kriZ9YmtZkt3vJkgMJkuBf9hjoaDsZkgDJPfS7Ew3JSCireJGZDsZH2vmQeV65/Bz
	ymdSAzfNhNcKRX6yuFuxyUZYS049uv/fLHzE+re4QfdMWM1jQWuTEn7MHqqwewq4OeuAKrkQY3HZy
	Kfki57S9H1/ERWPf70ps6IceLyLL56dCT5TvKK1IrVnJkFCXXv+sBN5SwRN6kXSGTJmQETIeHUFxy
	uVn2O/CrtcN9Jb9LSVmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jI380-0007hC-V5; Sat, 28 Mar 2020 04:31:24 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jI37r-0007fU-Ig
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 04:31:17 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 7A61A296AB1C88EDC8D1;
 Sat, 28 Mar 2020 12:30:59 +0800 (CST)
Received: from [127.0.0.1] (10.173.220.25) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.487.0; Sat, 28 Mar 2020
 12:30:52 +0800
From: Zhenyu Ye <yezhenyu2@huawei.com>
To: Peter Zijlstra <peterz@infradead.org>, <npiggin@gmail.com>,
 <will.deacon@arm.com>, <mingo@kernel.org>, <torvalds@linux-foundation.org>,
 <schwidefsky@de.ibm.com>, <akpm@linux-foundation.org>, <luto@kernel.org>,
 <bp@alien8.de>, Marc Zyngier <maz@kernel.org>
Subject: [RFC][Qusetion] the value of cleared_(ptes|pmds|puds|p4ds) in struct
 mmu_gather
Message-ID: <fbb00ac0-9104-8d25-f225-7b3d1b17a01f@huawei.com>
Date: Sat, 28 Mar 2020 12:30:50 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_213115_785669_21F78CB6 
X-CRM114-Status: UNSURE (   5.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, yezhenyu2@huawei.com,
 linux-kernel@vger.kernel.org, xiexiangyou@huawei.com, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

commit a6d60245 "Track which levels of the page tables have been cleared"
added cleared_(ptes|pmds|puds|p4ds) in struct mmu_gather, and the values
of them are set in some places. For example:

In include/asm-generic/tlb.h, pte_free_tlb() set the tlb->cleared_pmds:
---8<---
#ifndef pte_free_tlb
#define pte_free_tlb(tlb, ptep, address)			\
	do {							\
		__tlb_adjust_range(tlb, address, PAGE_SIZE);	\
		tlb->freed_tables = 1;				\
		tlb->cleared_pmds = 1;				\
		__pte_free_tlb(tlb, ptep, address);		\
	} while (0)
#endif
---8<---


However, in arch/s390/include/asm/tlb.h, pte_free_tlb() set the tlb->cleared_ptes:
---8<---
static inline void pte_free_tlb(struct mmu_gather *tlb, pgtable_t pte,
                                unsigned long address)
{
	__tlb_adjust_range(tlb, address, PAGE_SIZE);
	tlb->mm->context.flush_mm = 1;
	tlb->freed_tables = 1;
	tlb->cleared_ptes = 1;
	/*
	 * page_table_free_rcu takes care of the allocation bit masks
	 * of the 2K table fragments in the 4K page table page,
	 * then calls tlb_remove_table.
	 */
	page_table_free_rcu(tlb, (unsigned long *) pte, address);
}
---8<---


In my view, the cleared_(ptes|pmds|puds) and (pte|pmd|pud)_free_tlb
correspond one-to-one.  So we should set cleared_ptes in pte_free_tlb(),
then use it when needed.

I'm very confused about this. Which is wrong? Or is there something
I understand wrong?


Thanks,
Zhenyu



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
