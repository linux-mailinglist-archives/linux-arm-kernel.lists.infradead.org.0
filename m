Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 680861911B5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 14:47:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NopTsUtuR7vHMDwPHAJmnEfaGoO175qmjMSx5S3n6P4=; b=RZnSoZELRkS6BN
	TtQ65XQgrlZWg2rat7md7sR30EOfNVaSWHaHMnA2VEiMDCea12EuA3wlhB+iwwj1IsRIJ3g3u3qPO
	67EhfMVvvZquaMTFnQ3+Sr8v1bO4pVm0YzcK/K/+UJfR9lt7IgbODBlEeqf8ofnzDcXRub2QW2lBP
	yrBjNXV428O3qikgHvWrygo++ZrjHEJhBeEIKcpdi5mahKN0pIDlrFk/ZEbZ2+CPAVqFRnN3vqXRQ
	ufQSW7PQst/IeZQQvUEi9WziKKb/+kuYmVfRssAsPuVwuw5p8r3KsPx3IWQBecSSQp1Uwo7gP7sYy
	unN3ApyiWdySMZbVt5vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGjtu-0007TW-9x; Tue, 24 Mar 2020 13:47:26 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGjsm-0006cV-U4
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 13:46:19 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 40A58CD4E978E9934518;
 Tue, 24 Mar 2020 21:46:06 +0800 (CST)
Received: from DESKTOP-KKJBAGG.china.huawei.com (10.173.220.25) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.487.0; Tue, 24 Mar 2020 21:45:59 +0800
From: Zhenyu Ye <yezhenyu2@huawei.com>
To: <will@kernel.org>, <mark.rutland@arm.com>, <catalin.marinas@arm.com>,
 <aneesh.kumar@linux.ibm.com>, <akpm@linux-foundation.org>,
 <npiggin@gmail.com>, <peterz@infradead.org>, <arnd@arndb.de>,
 <rostedt@goodmis.org>, <maz@kernel.org>, <suzuki.poulose@arm.com>,
 <tglx@linutronix.de>, <yuzhao@google.com>, <Dave.Martin@arm.com>,
 <steven.price@arm.com>, <broonie@kernel.org>, <guohanjun@huawei.com>
Subject: [RFC PATCH v4 0/6] arm64: tlb: add support for TTL feature
Date: Tue, 24 Mar 2020 21:45:28 +0800
Message-ID: <20200324134534.1570-1-yezhenyu2@huawei.com>
X-Mailer: git-send-email 2.22.0.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_064617_564708_CC3D60C6 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-arch@vger.kernel.org, yezhenyu2@huawei.com,
 linux-kernel@vger.kernel.org, xiexiangyou@huawei.com,
 zhangshaokun@hisilicon.com, linux-mm@kvack.org, arm@kernel.org,
 prime.zeng@hisilicon.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to reduce the cost of TLB invalidation, the ARMv8.4 TTL
feature allows TLBs to be issued with a level allowing for quicker
invalidation.  This series provide support for this feature. 

Patch 1 and Patch 2 was provided by Marc on his NV series[1] patches,
which detect the TTL feature and add __tlbi_level interface.

See patches for details, Thanks.

[1] https://lore.kernel.org/linux-arm-kernel/20200211174938.27809-1-maz@kernel.org/


ChangeList:
v1:
add support for TTL feature in arm64.

v2:
build the patch on Marc's NV series[1].

v3:
use vma->vm_flags to replace mm->context.flags.

v4:
add Marc's patches into my series.


Marc Zyngier (2):
  arm64: Detect the ARMv8.4 TTL feature
  arm64: Add level-hinted TLB invalidation helper

Zhenyu Ye (4):
  arm64: Add level-hinted TLB invalidation helper to tlbi_user
  mm: Add page table level flags to vm_flags
  arm64: tlb: Use translation level hint in vm_flags
  mm: Set VM_LEVEL flags in some tlb_flush functions

 arch/arm64/include/asm/cpucaps.h  |  3 +-
 arch/arm64/include/asm/mmu.h      |  2 +
 arch/arm64/include/asm/sysreg.h   |  1 +
 arch/arm64/include/asm/tlb.h      | 12 +++++
 arch/arm64/include/asm/tlbflush.h | 74 ++++++++++++++++++++++++++++---
 arch/arm64/kernel/cpufeature.c    | 11 +++++
 arch/arm64/mm/hugetlbpage.c       |  4 +-
 arch/arm64/mm/mmu.c               | 14 ++++++
 include/asm-generic/pgtable.h     | 16 ++++++-
 include/linux/mm.h                | 10 +++++
 include/trace/events/mmflags.h    | 15 ++++++-
 mm/huge_memory.c                  |  8 +++-
 12 files changed, 157 insertions(+), 13 deletions(-)

-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
