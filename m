Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D78585061
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 17:56:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fgNWg1D1gDuk+Z9qsx627cydpUXGGw+w4w3LEDoKGRs=; b=OH9eJyWzoMAl4r
	7Z5/RXAQZ4HB//MfTspj0dJONUz48na9f65aqVBpNeN0xR2lCk1kZ5yefCm0+OR/Sc89ImbLPgJVg
	kJ3h6ZsElVq2CvlrvzTbt85YuDppKCepfbORHi3QbJ4QH6oqGw7397mYOR3GRjmxQoShe9ME9DFrT
	BGr1Bkj0tzomf3PFHIEki1C0a88tGVjnquS7ftjXFO/XtLOg0iXVB++aHsbVrZ1YJ8b6xuSB70YIR
	QY8eBpI4anwAUEfTXcU9x/qtY+j6b9ybgV90j1c5HEI8hAswTjxeFe+oWI+w31IFkMyqZtN0V3/rh
	BWPz3fs1um40C/+2O+XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvOIF-0006Om-9M; Wed, 07 Aug 2019 15:56:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvOHz-0006Na-Ff
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 15:55:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 739FF344;
 Wed,  7 Aug 2019 08:55:45 -0700 (PDT)
Received: from capper-ampere.manchester.arm.com
 (capper-ampere.manchester.arm.com [10.32.98.74])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3C3F43F706;
 Wed,  7 Aug 2019 08:55:44 -0700 (PDT)
From: Steve Capper <steve.capper@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V5 00/12] 52-bit kernel + user VAs
Date: Wed,  7 Aug 2019 16:55:12 +0100
Message-Id: <20190807155524.5112-1-steve.capper@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_085547_614706_87FE9A61 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, catalin.marinas@arm.com,
 bhsharma@redhat.com, Steve Capper <steve.capper@arm.com>, maz@kernel.org,
 will@kernel.org
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

In V5 of this series the, now redundant, vabits_user was removed by an
extra patch.

In V4 of this series, an extra documentation patch is added to explain
both the layout of the memory and the implementation of 52-bit support.
Also added is a guard region after VMEMMAP to avoid ambiguity with
IS_ERR style pointers. Finally the bitmask optimisations for VMEMMAP and
PAGE_OFFSET are replaced with addition/subtraction in a new first patch
for the series.

In V3 of this series, the 52-bit user/48-bit kernel option is removed
and we are left with a single 52-bit VA option instead. The offset_ttbr1
conditional logic has been re-worked to directly read a system register
rather than rely on the alternative framework (I couldn't actually see a
hotpath calling offset_ttbr1 and some parts of the early boot relied on
offset_ttbr1 before the alternatives framework was called). Also some
spurious de-constifying changes have been removed.

In V2 of this series (apologies for the long delay from V1), the major
change is that PAGE_OFFSET is retained as a constant. This allows for
much faster virt_to_page computations. This is achieved by expanding the
size of the VMEMMAP region to accommodate a disjoint 52-bit/48-bit
direct linear map. This has been found to work well in my testing, but I
would appreciate any feedback on this if it needs changing. To aid with
git bisect, this logic is broken down into a few smaller patches

Steve Capper (12):
  arm64: mm: Remove bit-masking optimisations for PAGE_OFFSET and
    VMEMMAP_START
  arm64: mm: Flip kernel VA space
  arm64: kasan: Switch to using KASAN_SHADOW_OFFSET
  arm64: dump: De-constify VA_START and KASAN_SHADOW_START
  arm64: mm: Introduce VA_BITS_MIN
  arm64: mm: Introduce vabits_actual
  arm64: mm: Logic to make offset_ttbr1 conditional
  arm64: mm: Separate out vmemmap
  arm64: mm: Modify calculation of VMEMMAP_SIZE
  arm64: mm: Introduce 52-bit Kernel VAs
  arm64: mm: Remove vabits_user
  docs: arm64: Add layout and 52-bit info to memory document

 Documentation/arm64/kasan-offsets.sh   |  27 ++++++
 Documentation/arm64/memory.rst         | 123 +++++++++++++++++++------
 arch/arm64/Kconfig                     |  31 +++++--
 arch/arm64/Makefile                    |   8 --
 arch/arm64/include/asm/assembler.h     |  17 +++-
 arch/arm64/include/asm/efi.h           |   4 +-
 arch/arm64/include/asm/kasan.h         |  11 +--
 arch/arm64/include/asm/memory.h        |  58 +++++++-----
 arch/arm64/include/asm/mmu_context.h   |   4 +-
 arch/arm64/include/asm/pgtable-hwdef.h |   2 +-
 arch/arm64/include/asm/pgtable.h       |   6 +-
 arch/arm64/include/asm/pointer_auth.h  |   2 +-
 arch/arm64/include/asm/processor.h     |   4 +-
 arch/arm64/kernel/head.S               |  12 +--
 arch/arm64/kernel/hibernate-asm.S      |   8 +-
 arch/arm64/kernel/hibernate.c          |   2 +-
 arch/arm64/kernel/kaslr.c              |   6 +-
 arch/arm64/kvm/va_layout.c             |  14 +--
 arch/arm64/mm/dump.c                   |  22 ++++-
 arch/arm64/mm/fault.c                  |   5 +-
 arch/arm64/mm/init.c                   |  29 ++++--
 arch/arm64/mm/kasan_init.c             |   9 +-
 arch/arm64/mm/mmu.c                    |   9 +-
 arch/arm64/mm/proc.S                   |  11 ++-
 24 files changed, 289 insertions(+), 135 deletions(-)
 create mode 100644 Documentation/arm64/kasan-offsets.sh

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
