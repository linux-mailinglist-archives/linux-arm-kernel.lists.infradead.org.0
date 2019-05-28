Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D01A2CB37
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 18:10:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bC2jMjcPE6Zu/gkXHVGNKU+acXHzMywkan77mkE29+Y=; b=Rgo6jfwtO7Xbfb
	7PXs1sJVs19I8QhqIKE3oujdbRkv2eflPtpIsZnw3LqsRZpiBAorYAkDFdQ1bSIf4mqSkg6/vK4b0
	gpimC2+YndSkWE6fIE4NYn7jIe5QYOarUNguQsNwqab3xvKIzIF7ITWEI9E7WSrfWlqYn4aq1nQJ7
	oLBHmp48nmca0fiJ4XoXGunWJPOq6D5NVX46jEeoVOuhrBSObjV0Gk7beqCrDMM+9Temg7QiGqzmJ
	qlGtejP0pNvTPoBrqvhQX0G3okNdJRUCQ2wdwg8OV7IxNEVZvRTt5L3qSf51YTXDG0ontA8ij458t
	dy7gN8lhOZbqQeMzB2lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVega-0004I8-Op; Tue, 28 May 2019 16:10:48 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVegT-0004HD-NI
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 16:10:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 98005341;
 Tue, 28 May 2019 09:10:39 -0700 (PDT)
Received: from capper-debian.arm.com (unknown [10.37.12.41])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 27AB03F59C;
 Tue, 28 May 2019 09:10:36 -0700 (PDT)
From: Steve Capper <steve.capper@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 00/12] 52-bit kernel + user VAs
Date: Tue, 28 May 2019 17:10:14 +0100
Message-Id: <20190528161026.13193-1-steve.capper@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_091041_771600_8C73A069 
X-CRM114-Status: GOOD (  17.92  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, marc.zyngier@arm.com,
 catalin.marinas@arm.com, bhsharma@redhat.com, will.deacon@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series adds support for 52-bit kernel VAs using some of the
machinery already introduced by the 52-bit userspace VA code in 5.0.

As 52-bit virtual address support is an optional hardware feature,
software support for 52-bit kernel VAs needs to be deduced at early boot
time. If HW support is not available, the kernel falls back to 48-bit.

A significant proportion of this series focuses on "de-constifying"
VA_BITS related constants.

In order to allow for a KASAN shadow that changes size at boot time, one
must fix the KASAN_SHADOW_END for both 48 & 52-bit VAs and "grow" the
start address. Also, it is highly desirable to maintain the same
function addresses in the kernel .text between VA sizes. Both of these
requirements necessitate us to flip the kernel address space halves s.t.
the direct linear map occupies the lower addresses.

In V2 of this series (apologies for the long delay from V1), the major
change is that PAGE_OFFSET is retained as a constant. This allows for
much faster virt_to_page computations. This is achieved by expanding the
size of the VMEMMAP region to accommodate a disjoint 52-bit/48-bit
direct linear map. This has been found to work well in my testing, but I
would appreciate any feedback on this if it needs changing. To aid with
git bisect, this logic is broken down into a few smaller patches.

As far as I'm aware, there are two outstanding issues with this series
that need to be resolved:
 1) Is the code patching for ttbr1_offset safe? I need to analyse this
    a little more,
 2) How can this memory map be advertised to kdump tools/documentation?
    I was planning on getting the kernel VA structure agreed on, then I
    would add the relevant exports/documentation.

Cheers,
-- 
Steve


Steve Capper (12):
  arm/arm64: KVM: Formalise end of direct linear map
  arm64: mm: Flip kernel VA space
  arm64: kasan: Switch to using KASAN_SHADOW_OFFSET
  arm64: mm: Replace fixed map BUILD_BUG_ON's with BUG_ON's
  arm64: dump: Make kernel page table dumper dynamic again
  arm64: mm: Introduce VA_BITS_MIN
  arm64: mm: Introduce VA_BITS_ACTUAL
  arm64: mm: Logic to make offset_ttbr1 conditional
  arm64: mm: Separate out vmemmap
  arm64: mm: Modify calculation of VMEMMAP_SIZE
  arm64: mm: Tweak PAGE_OFFSET logic
  arm64: mm: Introduce 52-bit Kernel VAs

 Documentation/arm64/kasan-offsets.sh   | 27 ++++++++++++
 arch/arm/include/asm/memory.h          |  1 +
 arch/arm64/Kconfig                     | 46 +++++++++++++++++++-
 arch/arm64/Makefile                    |  8 ----
 arch/arm64/include/asm/assembler.h     | 17 +++++++-
 arch/arm64/include/asm/cpucaps.h       |  3 +-
 arch/arm64/include/asm/efi.h           |  4 +-
 arch/arm64/include/asm/kasan.h         | 11 ++---
 arch/arm64/include/asm/memory.h        | 53 +++++++++++++++--------
 arch/arm64/include/asm/mmu_context.h   |  4 +-
 arch/arm64/include/asm/pgtable-hwdef.h |  2 +-
 arch/arm64/include/asm/pgtable.h       |  6 +--
 arch/arm64/include/asm/processor.h     |  2 +-
 arch/arm64/kernel/cpufeature.c         | 18 ++++++++
 arch/arm64/kernel/head.S               | 25 +++++++++--
 arch/arm64/kernel/hibernate-asm.S      |  1 +
 arch/arm64/kernel/hibernate.c          |  2 +-
 arch/arm64/kernel/kaslr.c              |  6 +--
 arch/arm64/kvm/va_layout.c             | 14 +++----
 arch/arm64/mm/dump.c                   | 58 +++++++++++++++++++++-----
 arch/arm64/mm/fault.c                  |  4 +-
 arch/arm64/mm/init.c                   | 29 +++++++++----
 arch/arm64/mm/kasan_init.c             | 11 +++--
 arch/arm64/mm/mmu.c                    | 13 +++---
 arch/arm64/mm/proc.S                   |  6 ++-
 virt/kvm/arm/mmu.c                     |  4 +-
 26 files changed, 280 insertions(+), 95 deletions(-)
 create mode 100644 Documentation/arm64/kasan-offsets.sh

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
