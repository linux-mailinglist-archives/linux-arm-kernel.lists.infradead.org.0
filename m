Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E274F199A51
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 17:52:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ypz5vrEk1T5OQj2t2kqJG2TGchRGNF6/BVsy+loJi4A=; b=NqtSbbN9F/yYBM
	U6i37viZL1QJsxeZoM4SggnPNHiNRtk+877yPIfUtgDqGooO2zzXcbUm2egqsNfQW8p08hIM8fU+x
	7sdZnqIEXrbh0SUkY3dytCZbFBiGdRWVca3606w2N2eVZcLW3cFbhx4T88XMulnUtQ/1DfgdeCL8c
	LfkIfCEL2goQ62vqSyEbU/HNcoPDFi88PWxqYPlqAw/AJ1hSv8rQ0FjKzWY/PrVE/wnzKOfngu0HM
	j7vqyp26Ge1ZA7ZBWsYtZrRu3hGYs7N13GGbmSMlSEJfAqUfhuzOai3c6On/VFZcbhnr6NZDhAFMO
	A2a/TQzeZGt6LB/nNBAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJC0-00039I-SD; Tue, 31 Mar 2020 15:52:44 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJB7-0002jc-DO
 for linux-arm-kernel@bombadil.infradead.org; Tue, 31 Mar 2020 15:51:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=8VjvwYyeaRSrqI9TWfVu/eaMzGgyeMMGgN20Is7nGJM=; b=alba5j8XKDSKPagHuVmASR/gB1
 ZOnxF8M4VVsJPJ86CLhOaNi8SoF8KBeHoctjNv5Dfl/xLiS5fa/PaBW7NXfqB9IQ6N4iBHjXoBkN1
 rb1WGs8QyZXwE0D52sPI3LpyoHJhEjek3ydiAVqdn90jxO22rqwdXOLJXhJkNOxJ6XD/DPyVw/Qx1
 +WYDjPPb+TxbOFgEVRF2OLesl+f4LjjkzeCKUPdTz6rWbY9nWBIBU2t0rw3qj07V2TT1qtWUWIWL1
 ONx+KyDGLfI4OukQGexe2lUfW9Jj86h9ptMoSc3oK0ZnXKwFvZWZw27h3n/Okzt46iPysJoYhHsJo
 9ZN+fHsg==;
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJHu9-0003YJ-Ok
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 14:30:17 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 112F5A18324581DE4AB4;
 Tue, 31 Mar 2020 22:29:53 +0800 (CST)
Received: from DESKTOP-KKJBAGG.china.huawei.com (10.173.220.25) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.487.0; Tue, 31 Mar 2020 22:29:44 +0800
From: Zhenyu Ye <yezhenyu2@huawei.com>
To: <peterz@infradead.org>, <mark.rutland@arm.com>, <will@kernel.org>,
 <catalin.marinas@arm.com>, <aneesh.kumar@linux.ibm.com>,
 <akpm@linux-foundation.org>, <npiggin@gmail.com>, <arnd@arndb.de>,
 <rostedt@goodmis.org>, <maz@kernel.org>, <suzuki.poulose@arm.com>,
 <tglx@linutronix.de>, <yuzhao@google.com>, <Dave.Martin@arm.com>,
 <steven.price@arm.com>, <broonie@kernel.org>, <guohanjun@huawei.com>,
 <corbet@lwn.net>, <vgupta@synopsys.com>, <tony.luck@intel.com>
Subject: [RFC PATCH v5 0/8] arm64: tlb: add support for TTL feature
Date: Tue, 31 Mar 2020 22:29:19 +0800
Message-ID: <20200331142927.1237-1-yezhenyu2@huawei.com>
X-Mailer: git-send-email 2.22.0.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_153014_217586_FD453766 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -4.2 (----)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-4.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
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
Cc: linux-arch@vger.kernel.org, yezhenyu2@huawei.com,
 linux-kernel@vger.kernel.org, xiexiangyou@huawei.com,
 zhangshaokun@hisilicon.com, linux-mm@kvack.org, arm@kernel.org,
 prime.zeng@hisilicon.com, kuhn.chenqun@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to reduce the cost of TLB invalidation, the ARMv8.4 TTL
feature allows TLBs to be issued with a level allowing for quicker
invalidation.  This series provide support for this feature.

Patch 1 and Patch 2 was provided by Marc on his NV series[1] patches,
which detect the TTL feature and add __tlbi_level interface.
Patch 4-7 passes struct mmu_gather to flush_tlb_range, which can pass
the level of tlbi invalidations.  Arm64 and power9 can benefit from this.
Patch 8 set the TTL field in arm64 by using the cleared_* values in
struct mmu_gather.

See patches for details, Thanks.

[1] https://lore.kernel.org/linux-arm-kernel/20200211174938.27809-1-maz@kernel.org/
[2] https://lore.kernel.org/linux-arm-kernel/7859561b-78b4-4a12-2642-3741d7d3e7b8@huawei.com/

--
ChangeList:
v1:
add support for TTL feature in arm64.

v2:
build the patch on Marc's NV series[1].

v3:
use vma->vm_flags to replace mm->context.flags.

v4:
add Marc's patches into my series.

v5:
pass struct mmu_gather to flush_tlb_range, then set the
TTL field by using infos in struct mmu_gather.


Marc Zyngier (2):
  arm64: Detect the ARMv8.4 TTL feature
  arm64: Add level-hinted TLB invalidation helper

Zhenyu Ye (6):
  arm64: Add tlbi_user_level TLB invalidation helper
  mm: tlb: Pass struct mmu_gather to flush_pmd_tlb_range
  mm: tlb: Pass struct mmu_gather to flush_pud_tlb_range
  mm: tlb: Pass struct mmu_gather to flush_hugetlb_tlb_range
  mm: tlb: Pass struct mmu_gather to flush_tlb_range
  arm64: tlb: Set the TTL field in flush_tlb_range

 Documentation/core-api/cachetlb.rst           |  8 ++-
 arch/alpha/include/asm/tlbflush.h             |  8 +--
 arch/alpha/kernel/smp.c                       |  3 +-
 arch/arc/include/asm/hugepage.h               |  4 +-
 arch/arc/include/asm/tlbflush.h               | 11 ++--
 arch/arc/mm/tlb.c                             |  8 +--
 arch/arm/include/asm/tlbflush.h               | 12 ++--
 arch/arm/kernel/smp_tlb.c                     |  4 +-
 arch/arm/mach-rpc/ecard.c                     |  8 ++-
 arch/arm64/crypto/aes-glue.c                  |  1 -
 arch/arm64/include/asm/cpucaps.h              |  3 +-
 arch/arm64/include/asm/sysreg.h               |  1 +
 arch/arm64/include/asm/tlb.h                  | 39 +++++++++++-
 arch/arm64/include/asm/tlbflush.h             | 63 +++++++++++++------
 arch/arm64/kernel/cpufeature.c                | 11 ++++
 arch/arm64/mm/hugetlbpage.c                   | 10 ++-
 arch/csky/include/asm/tlb.h                   |  2 +-
 arch/csky/include/asm/tlbflush.h              |  6 +-
 arch/csky/mm/tlb.c                            |  4 +-
 arch/hexagon/include/asm/tlbflush.h           |  2 +-
 arch/hexagon/mm/vm_tlb.c                      |  4 +-
 arch/ia64/include/asm/tlbflush.h              |  6 +-
 arch/ia64/mm/tlb.c                            |  5 +-
 arch/m68k/include/asm/tlbflush.h              | 10 +--
 arch/microblaze/include/asm/tlbflush.h        |  5 +-
 arch/mips/include/asm/hugetlb.h               |  6 +-
 arch/mips/include/asm/tlbflush.h              |  9 +--
 arch/mips/kernel/smp.c                        |  3 +-
 arch/nds32/include/asm/tlbflush.h             |  3 +-
 arch/nios2/include/asm/tlbflush.h             |  9 +--
 arch/nios2/mm/tlb.c                           |  8 ++-
 arch/openrisc/include/asm/tlbflush.h          | 10 +--
 arch/openrisc/kernel/smp.c                    |  2 +-
 arch/parisc/include/asm/tlbflush.h            |  2 +-
 arch/parisc/kernel/cache.c                    | 13 +++-
 arch/powerpc/include/asm/book3s/32/tlbflush.h |  4 +-
 arch/powerpc/include/asm/book3s/64/tlbflush.h |  9 ++-
 arch/powerpc/include/asm/nohash/tlbflush.h    |  7 ++-
 arch/powerpc/mm/book3s32/tlb.c                |  6 +-
 arch/powerpc/mm/book3s64/pgtable.c            |  8 ++-
 arch/powerpc/mm/book3s64/radix_tlb.c          |  2 +-
 arch/powerpc/mm/nohash/tlb.c                  |  6 +-
 arch/riscv/include/asm/tlbflush.h             |  7 ++-
 arch/riscv/mm/tlbflush.c                      |  4 +-
 arch/s390/include/asm/tlbflush.h              |  5 +-
 arch/sh/include/asm/tlbflush.h                |  8 +--
 arch/sh/kernel/smp.c                          |  2 +-
 arch/sparc/include/asm/tlbflush_32.h          |  2 +-
 arch/sparc/include/asm/tlbflush_64.h          |  3 +-
 arch/sparc/mm/tlb.c                           |  5 +-
 arch/um/include/asm/tlbflush.h                |  6 +-
 arch/um/kernel/tlb.c                          |  4 +-
 arch/unicore32/include/asm/tlbflush.h         |  5 +-
 arch/x86/include/asm/tlbflush.h               |  4 +-
 arch/x86/mm/pgtable.c                         | 10 ++-
 arch/xtensa/include/asm/tlbflush.h            | 10 +--
 arch/xtensa/kernel/smp.c                      |  2 +-
 include/asm-generic/pgtable.h                 | 10 +--
 include/asm-generic/tlb.h                     |  2 +-
 mm/huge_memory.c                              | 19 +++++-
 mm/hugetlb.c                                  | 17 +++--
 mm/mapping_dirty_helpers.c                    | 23 ++++---
 mm/migrate.c                                  |  8 ++-
 mm/mprotect.c                                 |  8 ++-
 mm/mremap.c                                   | 17 ++++-
 mm/pgtable-generic.c                          | 51 ++++++++++++---
 mm/rmap.c                                     |  6 +-
 67 files changed, 409 insertions(+), 174 deletions(-)

-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
