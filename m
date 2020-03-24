Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 502DC190DDC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 13:43:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=blFGk4Y89MbHN/lJ6jvd1jCWXpWxWec8fzMUNK6XZjw=; b=J+01zMmPLhJiOM
	jBU/4K+IoxqGHqm+5olRahxQgVDnbJnuoMC8vJXFy+YutF8LUYfvl1ncsVXohQi4IG9njuxY3jUhB
	v8Pcp8IbhSRV7QaxP88xG6T3WazlUYLroDWFLVjDESBrocYsA0LVxlJGHiqgRQh0F6e0g92g0rP4w
	tf/1uGqVJeKkTxXlZvnaf7iBvn8cd8Pq/+dENP1i5cv+lWvsk17iZHtk7XQGi9lIdt0QwDn0DIX7A
	tTNo2gwOAxpQV39rVwLh61xiMGb4P1mZCyXcppVzrCWz1bm4T5eJadinlVtUgwJM6Gt1FB6Xfe6WF
	/jp9WXasQtmkeKwfmGZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGitI-0008Cv-P5; Tue, 24 Mar 2020 12:42:44 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGit6-00089c-SS
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 12:42:34 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id ED1D1EFA49A6818519B0;
 Tue, 24 Mar 2020 20:42:19 +0800 (CST)
Received: from DESKTOP-KKJBAGG.china.huawei.com (10.173.220.25) by
 DGGEMS414-HUB.china.huawei.com (10.3.19.214) with Microsoft SMTP Server id
 14.3.487.0; Tue, 24 Mar 2020 20:42:13 +0800
From: Zhenyu Ye <yezhenyu2@huawei.com>
To: <yuzenghui@huawei.com>
Subject: Re: [RFC PATCH v3 0/4] arm64: tlb: add support for TTL field
Date: Tue, 24 Mar 2020 20:41:44 +0800
Message-ID: <20200324124144.1492-1-yezhenyu2@huawei.com>
X-Mailer: git-send-email 2.22.0.windows.1
In-Reply-To: <4e3d42d9-7c57-3659-edbe-1e59ca5b04ea@huawei.com>
References: <4e3d42d9-7c57-3659-edbe-1e59ca5b04ea@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_054233_091989_AC971326 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, mark.rutland@arm.com, catalin.marinas@arm.com,
 arm@kernel.org, yezhenyu2@huawei.com, aneesh.kumar@linux.ibm.com,
 linux-kernel@vger.kernel.org, xiexiangyou@huawei.com, steven.price@arm.com,
 zhangshaokun@hisilicon.com, linux-mm@kvack.org, broonie@kernel.org,
 maz@kernel.org, prime.zeng@hisilicon.com, guohanjun@huawei.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Zenghui,

On 2020/3/24 19:31, Zenghui Yu wrote:
>Hi Zhenyu,
>
>On 2020/3/21 20:16, Zhenyu Ye wrote:
>> --
>> ChangeList:
>> v3:
>> use vma->vm_flags to replace mm->context.flags.
>> 
>> v2:
>> build the patch on Marc's NV series[1].
>> 
>> v1:
>> add support for TTL field in arm64.
>> 
>> --
>> ARMv8.4-TTL provides the TTL field in tlbi instruction to indicate
>> the level of translation table walk holding the leaf entry for the
>> address that is being invalidated. Hardware can use this information
>> to determine if there was a risk of splintering.
>> 
>> Marc has provided basic support for ARM64-TTL features on his
>> NV series[1] patches. NV is a large feature, however, only
>> patches 62[2] and 67[3] are need by this patch set.
>> ** You only need read those two patches before review this patch. **
>
>It'd be good if you can put the whole thing into a series, otherwise
>people will have difficulty when reviewing and testing it...
>
>I haven't tracked the previous versions. If Marc is OK to share the
>two patches below [2][3], I'd suggest you to pick them up, add them
>in your series, rebase on top of mainline and resend it.
>
>
>Thanks,
>Zenghui
>

Thanks for your review.  I'd take your suggestion and resend a new set
right now.

Thanks,
Zhenyu

>> 
>> Some of this patch depends on a feature powered by @Will Deacon
>> two years ago, which tracking the level of page tables in mm_gather.
>> See more in commit a6d60245.
>> 
>> [1] git://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git kvm-arm64/nv-5.6-rc1
>> [2] https://lore.kernel.org/linux-arm-kernel/20200211174938.27809-63-maz@kernel.org/
>> [3] https://lore.kernel.org/linux-arm-kernel/20200211174938.27809-68-maz@kernel.org/
>> 
>> Zhenyu Ye (4):
>>    arm64: Add level-hinted TLB invalidation helper to tlbi_user
>>    mm: Add page table level flags to vm_flags
>>    arm64: tlb: Use translation level hint in vm_flags
>>    mm: Set VM_LEVEL flags in some tlb_flush functions
>> 
>>   arch/arm64/include/asm/mmu.h      |  2 ++
>>   arch/arm64/include/asm/tlb.h      | 12 +++++++++
>>   arch/arm64/include/asm/tlbflush.h | 44 ++++++++++++++++++++++++++-----
>>   arch/arm64/mm/hugetlbpage.c       |  4 +--
>>   arch/arm64/mm/mmu.c               | 14 ++++++++++
>>   include/asm-generic/pgtable.h     | 16 +++++++++--
>>   include/linux/mm.h                | 10 +++++++
>>   include/trace/events/mmflags.h    | 15 ++++++++++-
>>   mm/huge_memory.c                  |  8 +++++-
>>   9 files changed, 113 insertions(+), 12 deletions(-)
>> 
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
