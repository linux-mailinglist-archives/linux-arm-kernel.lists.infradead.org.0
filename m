Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E62B9E27
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Sep 2019 15:51:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=hdgwTFx0wCxJ4a2oNI4YV63psm+ItMRiPWf8OCRqEaM=; b=K/j
	zR9JkGHrzKuqzWOMZhMepRlYN0bXfpjAlaHfn077HLmpEBwxqphzozGNQKxQeIQONT5+JuvTBEbrD
	nYVPuDNfhYT8/6SqsC7B1Bx9Riz7yA8wONS99g1g7cjr5LEOb4A3zMOSRfRMUtO1yifHWZNHcGXdx
	ds+hbNoHsSzHa6T8Rj1uYh6Hs4DTGSMD7aPdc6cOpGBG8oaFLGSBa5IaEoVlzZpzhMwQQeFPyglxY
	4N0dvoyW/cbTdovr8S73KXnx84qO+CO5KvLLjIYPgO3FoBQJWux8igqKrIgClXKft1V7VkNzwRd86
	nJpPGXjlTJsNxtz3EYlQQcBHu54pREQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBfnI-0006J3-Bz; Sat, 21 Sep 2019 13:51:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBfn4-0006IO-4S
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Sep 2019 13:51:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0419A1570;
 Sat, 21 Sep 2019 06:51:07 -0700 (PDT)
Received: from localhost.localdomain (entos-thunderx2-02.shanghai.arm.com
 [10.169.40.54])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id C57413F67D;
 Sat, 21 Sep 2019 06:51:01 -0700 (PDT)
From: Jia He <justin.he@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, James Morse <james.morse@arm.com>,
 Marc Zyngier <maz@kernel.org>, Matthew Wilcox <willy@infradead.org>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Suzuki Poulose <Suzuki.Poulose@arm.com>
Subject: [PATCH v8 0/3] fix double page fault on arm64
Date: Sat, 21 Sep 2019 21:50:51 +0800
Message-Id: <20190921135054.142360-1-justin.he@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_065110_221356_51436DFB 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Ralph Campbell <rcampbell@nvidia.com>, Jia He <justin.he@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Alex Van Brunt <avanbrunt@nvidia.com>, Kaly Xin <Kaly.Xin@arm.com>,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 Punit Agrawal <punitagrawal@gmail.com>, hejianet@gmail.com,
 Andrew Morton <akpm@linux-foundation.org>, nd@arm.com,
 Robin Murphy <robin.murphy@arm.com>, Thomas Gleixner <tglx@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When we tested pmdk unit test vmmalloc_fork TEST1 in arm64 guest, there
will be a double page fault in __copy_from_user_inatomic of cow_user_page.

As told by Catalin: "On arm64 without hardware Access Flag, copying from
user will fail because the pte is old and cannot be marked young. So we
always end up with zeroed page after fork() + CoW for pfn mappings. we
don't always have a hardware-managed access flag on arm64."

Changes
v8: change cow_user_page's return type (Matthew)
v7: s/pte_spinlock/pte_offset_map_lock (Kirill)
v6: fix error case of returning with spinlock taken (Catalin)
    move kmap_atomic to avoid handling kunmap_atomic
v5: handle the case correctly when !pte_same
    fix kbuild test failed
v4: introduce cpu_has_hw_af (Suzuki)
    bail out if !pte_same (Kirill)
v3: add vmf->ptl lock/unlock (Kirill A. Shutemov)
    add arch_faults_on_old_pte (Matthew, Catalin)
v2: remove FAULT_FLAG_WRITE when setting pte access flag (Catalin)

Jia He (3):
  arm64: cpufeature: introduce helper cpu_has_hw_af()
  arm64: mm: implement arch_faults_on_old_pte() on arm64
  mm: fix double page fault on arm64 if PTE_AF is cleared

 arch/arm64/include/asm/cpufeature.h | 10 +++++
 arch/arm64/include/asm/pgtable.h    | 12 ++++++
 mm/memory.c                         | 67 ++++++++++++++++++++++++++---
 3 files changed, 83 insertions(+), 6 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
