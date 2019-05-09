Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A30EE184A3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 06:47:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=59GIqWNNanXC9HKz0cxmmjq3WNtBw2u9kD0n+JPj2q8=; b=oUt
	3IBHhJYluzFE15CE/sSS/8TFsaJxTOM2ZAaXWv+zonZUOe8ZEylIVElqcCpYXmu9Z245vtfIgtNXa
	cUtP6eJ71vOch5Tvtm6cuICSH8PGskCloLrbHKkIs0Nb6x87wmsVnv9HBY3WCMppeKiJ4Gafl5rQ2
	rivJ6gpuT4dBcKtEhR8fjjJYWF0ZI7Q96ikvgsV6fWJvynDcz7VjCo3d8DB5FB9v9xftJD5JiWNBj
	iqBey7LzREa7nc+yLkrKLGvu5SzSz6JCuI6eNVD43AvTiEjHnDje1nUGiRJYQTZUpEgDf+V+ClYU9
	WNyanTAI/INQa2Emiwv2dyTPK0tA1Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOaxW-0004rI-3v; Thu, 09 May 2019 04:47:06 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOaxO-0004q5-ET
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 04:46:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DF70C374;
 Wed,  8 May 2019 21:46:54 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.1.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id BB8733F575;
 Wed,  8 May 2019 21:46:47 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH V3 0/2] mm/ioremap: Check virtual address alignment
Date: Thu,  9 May 2019 10:16:15 +0530
Message-Id: <1557377177-20695-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_214658_492565_A887C65E 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Toshi Kani <toshi.kani@hpe.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 James Morse <james.morse@arm.com>, Chintan Pandya <cpandya@codeaurora.org>,
 Andrew Morton <akpm@linux-foundation.org>, Laura Abbott <labbott@redhat.com>,
 Robin Murphy <robin.murphy@arm.com>, Thomas Gleixner <tglx@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series makes sure that ioremap_page_range()'s input virtual address
alignment is checked along with physical address before creating huge page
kernel mappings to avoid problems related to random freeing of PMD or PTE
pgtable pages potentially with existing valid entries. It also cleans up
arm64 pgtable page address offset in [pud|pmd]_free_[pmd|pte]_page().

Changes in V3:

- Added virtual address alignment check in ioremap_page_range()
- Dropped VM_WARN_ONCE() as input virtual addresses are aligned for sure

Changes in V2: (https://patchwork.kernel.org/patch/10922795/)

- Replaced WARN_ON_ONCE() with VM_WARN_ONCE() as per Catalin

Changes in V1: (https://patchwork.kernel.org/patch/10921135/)

Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Toshi Kani <toshi.kani@hpe.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Chintan Pandya <cpandya@codeaurora.org>
Cc: Robin Murphy <robin.murphy@arm.com>
Cc: Laura Abbott <labbott@redhat.com>

Anshuman Khandual (2):
  mm/ioremap: Check virtual address alignment while creating huge mappings
  arm64/mm: Change offset base address in [pud|pmd]_free_[pmd|pte]_page()

 arch/arm64/mm/mmu.c | 6 +++---
 lib/ioremap.c       | 6 ++++++
 2 files changed, 9 insertions(+), 3 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
