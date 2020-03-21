Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F38D18E11A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 13:18:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T4WQxoKmRPoHrDOt4YQ6rMo7ZWKgEcQP70xyzKlQUgA=; b=VExMnMlXqek1mn
	9oEltLuNx2UMGoKVEjmR4r32/qHiahlQTkdh2XOUt7ALyh3Gb4kdmVq9Gf3h9zyyyvgDZXrtY2cyD
	wpfe8gtc5TtzQATv71zkAN/wfwzOA4MkqU32sA1M9lvKvkqAiyjfWoVmsO1q7ieSEF19YKsQ3u5wT
	iiNpCiEsyE2k0ZYJU5IG0Bm6pRw8iTA/OrQJz+0p1BdSDvmoiwTv0Uv3xCccLTQJRgrISzldfZAex
	oym7er4aAj0QGPPUM4BlPl7ZkOMMRk+ymAAOWKtlqQ1Ji4CXpLYzSJBlMq+bNgxfHVn4Tg3KCcnQ/
	9GSseA1IZO8VwwoFrKJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFd4f-0002qy-Hk; Sat, 21 Mar 2020 12:17:57 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFd3d-0001ws-Hl
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Mar 2020 12:16:55 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 4E3BAB000FCFC12C27AE;
 Sat, 21 Mar 2020 20:16:37 +0800 (CST)
Received: from DESKTOP-KKJBAGG.china.huawei.com (10.173.220.25) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.487.0; Sat, 21 Mar 2020 20:16:29 +0800
From: Zhenyu Ye <yezhenyu2@huawei.com>
To: <will@kernel.org>, <mark.rutland@arm.com>, <catalin.marinas@arm.com>,
 <aneesh.kumar@linux.ibm.com>, <maz@kernel.org>, <steven.price@arm.com>,
 <broonie@kernel.org>, <guohanjun@huawei.com>
Subject: [RFC PATCH v3 0/4] arm64: tlb: add support for TTL field
Date: Sat, 21 Mar 2020 20:16:17 +0800
Message-ID: <20200321121621.1600-1-yezhenyu2@huawei.com>
X-Mailer: git-send-email 2.22.0.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200321_051653_786596_8C9D9CF4 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-arch@vger.kernel.org, yezhenyu2@huawei.com,
 linux-kernel@vger.kernel.org, xiexiangyou@huawei.com,
 zhangshaokun@hisilicon.com, linux-mm@kvack.org, arm@kernel.org,
 prime.zeng@hisilicon.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--
ChangeList:
v3:
use vma->vm_flags to replace mm->context.flags.

v2:
build the patch on Marc's NV series[1].

v1:
add support for TTL field in arm64.

--
ARMv8.4-TTL provides the TTL field in tlbi instruction to indicate
the level of translation table walk holding the leaf entry for the
address that is being invalidated. Hardware can use this information
to determine if there was a risk of splintering.

Marc has provided basic support for ARM64-TTL features on his
NV series[1] patches. NV is a large feature, however, only
patches 62[2] and 67[3] are need by this patch set. 
** You only need read those two patches before review this patch. **

Some of this patch depends on a feature powered by @Will Deacon
two years ago, which tracking the level of page tables in mm_gather.
See more in commit a6d60245.

[1] git://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git kvm-arm64/nv-5.6-rc1
[2] https://lore.kernel.org/linux-arm-kernel/20200211174938.27809-63-maz@kernel.org/
[3] https://lore.kernel.org/linux-arm-kernel/20200211174938.27809-68-maz@kernel.org/

Zhenyu Ye (4):
  arm64: Add level-hinted TLB invalidation helper to tlbi_user
  mm: Add page table level flags to vm_flags
  arm64: tlb: Use translation level hint in vm_flags
  mm: Set VM_LEVEL flags in some tlb_flush functions

 arch/arm64/include/asm/mmu.h      |  2 ++
 arch/arm64/include/asm/tlb.h      | 12 +++++++++
 arch/arm64/include/asm/tlbflush.h | 44 ++++++++++++++++++++++++++-----
 arch/arm64/mm/hugetlbpage.c       |  4 +--
 arch/arm64/mm/mmu.c               | 14 ++++++++++
 include/asm-generic/pgtable.h     | 16 +++++++++--
 include/linux/mm.h                | 10 +++++++
 include/trace/events/mmflags.h    | 15 ++++++++++-
 mm/huge_memory.c                  |  8 +++++-
 9 files changed, 113 insertions(+), 12 deletions(-)

-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
