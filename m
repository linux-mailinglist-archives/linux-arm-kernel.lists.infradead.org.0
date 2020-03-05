Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37E6117A037
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 07:50:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6vcCiX6zpMOnjX8KK4Wi8czea2geBS/Hk38Sfskjk1w=; b=KJV
	wTJXIX9W4gG9Sq6OZev43URNexhPvwIS2k/uDu7zDjJtYSMhO5q9i8KBgp06KM/n6PIsyR+pJ7vh5
	1s4Euj6CCzlURaZPurOg9S/hwbyPtPXM9hQhK1oBlBSdmOdvccZL5UfANf7gbsb9p63CsSNG8RQNf
	R0YTg3GJHNjQQ+qVeTWYBgyyTwmTQA0/ipQ297K0Fo+rYZ1FqP/BcDH6ern7aHlvmRNZTUlVuD5bi
	4/GRRKV1UvBu1MuzHOxeZR+kQJEqkBHutZROIf9xumYyb+Ane/+ycr8v7lcvAtA+btMBTzzUzqPV4
	KGUL1++RzR/9nB/nGmsMvClPTtwSsoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9kLE-000804-2G; Thu, 05 Mar 2020 06:50:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9kL7-0007zS-1p; Thu, 05 Mar 2020 06:50:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0A9561FB;
 Wed,  4 Mar 2020 22:50:36 -0800 (PST)
Received: from p8cg001049571a15.arm.com (unknown [10.163.1.88])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E134A3F534;
 Wed,  4 Mar 2020 22:54:23 -0800 (PST)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org
Subject: [PATCH 0/2]  mm/vma: some new flags
Date: Thu,  5 Mar 2020 12:20:12 +0530
Message-Id: <1583391014-8170-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_225037_446236_57826403 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-mips@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-s390@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, linux-hexagon@vger.kernel.org, hughd@google.com,
 vbabka@suse.cz, linux-snps-arc@lists.infradead.org,
 uclinux-h8-devel@lists.sourceforge.jp, linux-xtensa@linux-xtensa.org,
 Anshuman Khandual <anshuman.khandual@arm.com>, linux-um@lists.infradead.org,
 linux-m68k@lists.linux-m68k.org, openrisc@lists.librecores.org,
 linux-arm-kernel@lists.infradead.org, linux-parisc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-alpha@vger.kernel.org,
 nios2-dev@lists.rocketboards.org, linuxppc-dev@lists.ozlabs.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The motivation here is to consolidate VMA flag combinations commonly used
across platforms and reduce code duplication while making it uncluttered
in general.

This first introduces a default VM_DATA_DEFAULT_FLAGS which platforms can
easily fall back on without requiring to define any similar data flag
combinations as they currently do. This also adds some more common data
flag combinations which are generally used when the platforms decide to
override the default.

The second patch consolidates VM_READ, VM_WRITE, VM_EXEC as VM_ACCESS_FLAGS
extending the existing VMA accessibility concept via vma_is_accessibility().
VM_ACCESS_FLAGS replaces many other instances which used check all three
VMA access flags simultaneously.

This series is based on v5.6-rc4 after applying these.

1. https://patchwork.kernel.org/cover/11399319/
2. https://patchwork.kernel.org/patch/11399379/

Changes in V1:

- Dropped the [PATCH 3/3] which was adding more vma_is_* wrappers
- Used VM_DATA_FLAGS_EXEC for VM_DATA_DEFAULT_FLAGS instead per Vlastimil
- Dropped init use cases for VM_ACCESS_FLAGS as suggested by Vlastimil

Changes in RFC: (https://patchwork.kernel.org/project/linux-mm/list/?series=249733)

Cc: linux-alpha@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-snps-arc@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-c6x-dev@linux-c6x.org
Cc: uclinux-h8-devel@lists.sourceforge.jp
Cc: linux-hexagon@vger.kernel.org
Cc: linux-ia64@vger.kernel.org
Cc: linux-m68k@lists.linux-m68k.org
Cc: linux-mips@vger.kernel.org
Cc: nios2-dev@lists.rocketboards.org
Cc: openrisc@lists.librecores.org
Cc: linux-parisc@vger.kernel.org
Cc: linuxppc-dev@lists.ozlabs.org
Cc: linux-riscv@lists.infradead.org
Cc: linux-s390@vger.kernel.org
Cc: linux-sh@vger.kernel.org
Cc: sparclinux@vger.kernel.org
Cc: linux-um@lists.infradead.org
Cc: linux-xtensa@linux-xtensa.org
Cc: linux-mm@kvack.org

Anshuman Khandual (2):
  mm/vma: Define a default value for VM_DATA_DEFAULT_FLAGS
  mm/vma: Introduce VM_ACCESS_FLAGS

 arch/alpha/include/asm/page.h        |  3 ---
 arch/arc/include/asm/page.h          |  2 +-
 arch/arm/include/asm/page.h          |  4 +---
 arch/arm/mm/fault.c                  |  2 +-
 arch/arm64/include/asm/page.h        |  4 +---
 arch/arm64/mm/fault.c                |  2 +-
 arch/c6x/include/asm/page.h          |  5 +----
 arch/csky/include/asm/page.h         |  3 ---
 arch/h8300/include/asm/page.h        |  2 --
 arch/hexagon/include/asm/page.h      |  3 +--
 arch/ia64/include/asm/page.h         |  5 +----
 arch/m68k/include/asm/page.h         |  3 ---
 arch/microblaze/include/asm/page.h   |  2 --
 arch/mips/include/asm/page.h         |  5 +----
 arch/nds32/include/asm/page.h        |  3 ---
 arch/nds32/mm/fault.c                |  2 +-
 arch/nios2/include/asm/page.h        |  3 +--
 arch/openrisc/include/asm/page.h     |  5 -----
 arch/parisc/include/asm/page.h       |  3 ---
 arch/powerpc/include/asm/page.h      |  9 ++-------
 arch/powerpc/include/asm/page_64.h   |  7 ++-----
 arch/powerpc/mm/book3s64/pkeys.c     |  2 +-
 arch/riscv/include/asm/page.h        |  3 +--
 arch/s390/include/asm/page.h         |  3 +--
 arch/s390/mm/fault.c                 |  2 +-
 arch/sh/include/asm/page.h           |  3 ---
 arch/sparc/include/asm/page_32.h     |  3 ---
 arch/sparc/include/asm/page_64.h     |  3 ---
 arch/unicore32/include/asm/page.h    |  3 ---
 arch/unicore32/mm/fault.c            |  2 +-
 arch/x86/include/asm/page_types.h    |  4 +---
 arch/x86/mm/pkeys.c                  |  2 +-
 arch/x86/um/asm/vm-flags.h           | 10 ++--------
 arch/xtensa/include/asm/page.h       |  3 ---
 drivers/staging/gasket/gasket_core.c |  2 +-
 include/linux/mm.h                   | 20 +++++++++++++++++++-
 mm/mmap.c                            |  2 +-
 mm/mprotect.c                        |  4 ++--
 38 files changed, 47 insertions(+), 101 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
