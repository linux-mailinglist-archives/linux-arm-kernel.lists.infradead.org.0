Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB911B1BF5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 04:36:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4EgEqkK/ONCaRPoQzr0YE38pWpkn04Nylw637pCYje4=; b=NLz
	wZKATeOtzcq+lpkunSpd1l0tdue/qk6Vd3bXqxaidfcsXGroHoXtM1lzxfxhw5cA4S/3BjhLSxVWd
	rrw8KzO/2mPzerO9GNTl9P2MFHClZi6YBvjao2ONgCkhqwcGqQ9fWx++63x3q1dCmSB9AjTXf1x5c
	/eb+SQeOXsmN8bTms2Smre1A4LT5GCsElO1wxYoNaXzsYs3HeIRi2gd/pB1fn+RyVEUnvmaz/m5Zz
	r5IrAf5D+OYVXAEYQLFVYcZsWhQNzWNs/fyIxTHoE9CtSi3ujMtJMV4XBJpHLNkHMsqRj62Qo3aI9
	7m4ba8FMt7040qxDpqY1OY90j3uRh4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQilB-0002ZO-Uq; Tue, 21 Apr 2020 02:35:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQil0-0002Y9-Nl; Tue, 21 Apr 2020 02:35:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 86EE431B;
 Mon, 20 Apr 2020 19:35:29 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.1.9])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 705353F73D;
 Mon, 20 Apr 2020 19:35:21 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org
Subject: [PATCH V17 0/2] mm/debug: Add tests validating architecture page
 table helpers
Date: Tue, 21 Apr 2020 08:04:53 +0530
Message-Id: <1587436495-22033-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_193530_862739_CBDE0393 
X-CRM114-Status: GOOD (  18.68  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-snps-arc@lists.infradead.org,
 Vasily Gorbik <gor@linux.ibm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>, Borislav Petkov <bp@alien8.de>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Vineet Gupta <vgupta@synopsys.com>, linux-kernel@vger.kernel.org,
 Palmer Dabbelt <palmer@dabbelt.com>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds a test validation for architecture exported page table helpers.
Patch adds basic transformation tests at various levels of the page table.

This test was originally suggested by Catalin during arm64 THP migration
RFC discussion earlier. Going forward it can include more specific tests
with respect to various generic MM functions like THP, HugeTLB etc and
platform specific tests.

https://lore.kernel.org/linux-mm/20190628102003.GA56463@arrakis.emea.arm.com/

Needs to be applied on linux V5.7-rc2

Changes in V17:

- debug_vm_pgtable() is now called from late_initcall() per Linus
- Explicitly enable DEBUG_VM_PGTABLE when ARCH_HAS_DEBUG_VM_PGTABLE and DEBUG_VM
- Added #ifdef documentation per Gerald
- Dropped page table helper semantics documentation (will be added via later patches)
- Split the X86 changes defining mm_p4d_folded() into a new prerequisite patch

Changes in V16: (https://patchwork.kernel.org/patch/11431277/)

- Replaced WRITE_ONCE() with set_pte_at() with a new barrier() in pte_clear_tests() per Qian
- Enabled all powerpc platforms and updated the feature list

Changes in V15: (https://patchwork.kernel.org/patch/11422803/)

- Replaced __pa() with __pa_symbol() (https://patchwork.kernel.org/patch/11407715/) 
- Replaced pte_alloc_map() with pte_alloc_map_lock() per Qian
- Replaced pte_unmap() with pte_unmap_unlock() per Qian
- Added address to pte_clear_tests() and passed it down till pte_clear() per Qian

Changes in V14: (https://patchwork.kernel.org/project/linux-mm/list/?series=242305)

- Disabled DEBUG_VM_PGTABLE for IA64 and ARM (32 Bit) per Andrew and Christophe
- Updated DEBUG_VM_PGTABLE documentation wrt EXPERT and disabled platforms
- Updated RANDOM_[OR|NZ]VALUE open encodings with GENMASK() per Catalin
- Updated s390 constraint bits from 12 to 4 (S390_MASK_BITS) per Gerald
- Updated in-code documentation for RANDOM_ORVALUE per Gerald
- Updated pxx_basic_tests() to use invert functions first per Catalin
- Dropped ARCH_HAS_4LEVEL_HACK check from pud_basic_tests()
- Replaced __ARCH_HAS_[4|5]LEVEL_HACK with __PAGETABLE_[PUD|P4D]_FOLDED per Catalin
- Trimmed the CC list on the commit message per Catalin

Changes in V13: (https://patchwork.kernel.org/project/linux-mm/list/?series=237125)

- Subscribed s390 platform and updated debug-vm-pgtable/arch-support.txt per Gerald
- Dropped keyword 'extern' from debug_vm_pgtable() declaration per Christophe
- Moved debug_vm_pgtable() declarations to <linux/mmdebug.h> per Christophe
- Moved debug_vm_pgtable() call site into kernel_init() per Christophe
- Changed CONFIG_DEBUG_VM_PGTABLE rules per Christophe
- Updated commit to include new supported platforms and changed config selection

Changes in V12: (https://patchwork.kernel.org/project/linux-mm/list/?series=233905)

- Replaced __mmdrop() with mmdrop()
- Enable ARCH_HAS_DEBUG_VM_PGTABLE on X86 for non CONFIG_X86_PAE platforms as the
  test procedure interfere with pre-allocated PMDs attached to the PGD resulting
  in runtime failures with VM_BUG_ON()

Changes in V11: (https://patchwork.kernel.org/project/linux-mm/list/?series=221135)

- Rebased the patch on V5.4

Changes in V10: (https://patchwork.kernel.org/project/linux-mm/list/?series=205529)

- Always enable DEBUG_VM_PGTABLE when DEBUG_VM is enabled per Ingo
- Added tags from Ingo

Changes in V9: (https://patchwork.kernel.org/project/linux-mm/list/?series=201429)

- Changed feature support enumeration for powerpc platforms per Christophe
- Changed config wrapper for basic_[pmd|pud]_tests() to enable ARC platform
- Enabled the test on ARC platform

Changes in V8: (https://patchwork.kernel.org/project/linux-mm/list/?series=194297)

- Enabled ARCH_HAS_DEBUG_VM_PGTABLE on PPC32 platform per Christophe
- Updated feature documentation as DEBUG_VM_PGTABLE is now enabled on PPC32 platform
- Moved ARCH_HAS_DEBUG_VM_PGTABLE earlier to indent it with DEBUG_VM per Christophe
- Added an information message in debug_vm_pgtable() per Christophe
- Dropped random_vaddr boundary condition checks per Christophe and Qian
- Replaced virt_addr_valid() check with pfn_valid() check in debug_vm_pgtable()
- Slightly changed pr_fmt(fmt) information

Changes in V7: (https://patchwork.kernel.org/project/linux-mm/list/?series=193051)

- Memory allocation and free routines for mapped pages have been droped
- Mapped pfns are derived from standard kernel text symbol per Matthew
- Moved debug_vm_pgtaable() after page_alloc_init_late() per Michal and Qian 
- Updated the commit message per Michal
- Updated W=1 GCC warning problem on x86 per Qian Cai
- Addition of new alloc_contig_pages() helper has been submitted separately

Changes in V6: (https://patchwork.kernel.org/project/linux-mm/list/?series=187589)

- Moved alloc_gigantic_page_order() into mm/page_alloc.c per Michal
- Moved alloc_gigantic_page_order() within CONFIG_CONTIG_ALLOC in the test
- Folded Andrew's include/asm-generic/pgtable.h fix into the test patch 2/2

Changes in V5: (https://patchwork.kernel.org/project/linux-mm/list/?series=185991)

- Redefined and moved X86 mm_p4d_folded() into a different header per Kirill/Ingo
- Updated the config option comment per Ingo and dropped 'kernel module' reference
- Updated the commit message and dropped 'kernel module' reference
- Changed DEBUG_ARCH_PGTABLE_TEST into DEBUG_VM_PGTABLE per Ingo
- Moved config option from mm/Kconfig.debug into lib/Kconfig.debug
- Renamed core test function arch_pgtable_tests() as debug_vm_pgtable()
- Renamed mm/arch_pgtable_test.c as mm/debug_vm_pgtable.c
- debug_vm_pgtable() gets called from kernel_init_freeable() after init_mm_internals()
- Added an entry in Documentation/features/debug/ per Ingo
- Enabled the test on arm64 and x86 platforms for now

Changes in V4: (https://patchwork.kernel.org/project/linux-mm/list/?series=183465)

- Disable DEBUG_ARCH_PGTABLE_TEST for ARM and IA64 platforms

Changes in V3: (https://lore.kernel.org/patchwork/project/lkml/list/?series=411216)

- Changed test trigger from module format into late_initcall()
- Marked all functions with __init to be freed after completion
- Changed all __PGTABLE_PXX_FOLDED checks as mm_pxx_folded()
- Folded in PPC32 fixes from Christophe

Changes in V2:

https://lore.kernel.org/linux-mm/1568268173-31302-1-git-send-email-anshuman.khandual@arm.com/T/#t

- Fixed small typo error in MODULE_DESCRIPTION()
- Fixed m64k build problems for lvalue concerns in pmd_xxx_tests()
- Fixed dynamic page table level folding problems on x86 as per Kirril
- Fixed second pointers during pxx_populate_tests() per Kirill and Gerald
- Allocate and free pte table with pte_alloc_one/pte_free per Kirill
- Modified pxx_clear_tests() to accommodate s390 lower 12 bits situation
- Changed RANDOM_NZVALUE value from 0xbe to 0xff
- Changed allocation, usage, free sequence for saved_ptep
- Renamed VMA_FLAGS as VMFLAGS
- Implemented a new method for random vaddr generation
- Implemented some other cleanups
- Dropped extern reference to mm_alloc()
- Created and exported new alloc_gigantic_page_order()
- Dropped the custom allocator and used new alloc_gigantic_page_order()

Changes in V1:

https://lore.kernel.org/linux-mm/1567497706-8649-1-git-send-email-anshuman.khandual@arm.com/

- Added fallback mechanism for PMD aligned memory allocation failure

Changes in RFC V2:

https://lore.kernel.org/linux-mm/1565335998-22553-1-git-send-email-anshuman.khandual@arm.com/T/#u

- Moved test module and it's config from lib/ to mm/
- Renamed config TEST_ARCH_PGTABLE as DEBUG_ARCH_PGTABLE_TEST
- Renamed file from test_arch_pgtable.c to arch_pgtable_test.c
- Added relevant MODULE_DESCRIPTION() and MODULE_AUTHOR() details
- Dropped loadable module config option
- Basic tests now use memory blocks with required size and alignment
- PUD aligned memory block gets allocated with alloc_contig_range()
- If PUD aligned memory could not be allocated it falls back on PMD aligned
  memory block from page allocator and pud_* tests are skipped
- Clear and populate tests now operate on real in memory page table entries
- Dummy mm_struct gets allocated with mm_alloc()
- Dummy page table entries get allocated with [pud|pmd|pte]_alloc_[map]()
- Simplified [p4d|pgd]_basic_tests(), now has random values in the entries

Original RFC V1:

https://lore.kernel.org/linux-mm/1564037723-26676-1-git-send-email-anshuman.khandual@arm.com/

Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Mike Rapoport <rppt@linux.ibm.com>
Cc: Vineet Gupta <vgupta@synopsys.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: Paul Mackerras <paulus@samba.org>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
Cc: Vasily Gorbik <gor@linux.ibm.com>
Cc: Christian Borntraeger <borntraeger@de.ibm.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Borislav Petkov <bp@alien8.de>
Cc: "H. Peter Anvin" <hpa@zytor.com>
Cc: Kirill A. Shutemov <kirill@shutemov.name>
Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>
Cc: linux-snps-arc@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linuxppc-dev@lists.ozlabs.org
Cc: linux-s390@vger.kernel.org
Cc: linux-riscv@lists.infradead.org
Cc: x86@kernel.org
Cc: linux-arch@vger.kernel.org
Cc: linux-kernel@vger.kernel.org

Anshuman Khandual (2):
  x86/mm: Define mm_p4d_folded()
  mm/debug: Add tests validating architecture page table helpers

 .../debug/debug-vm-pgtable/arch-support.txt   |  34 ++
 arch/arc/Kconfig                              |   1 +
 arch/arm64/Kconfig                            |   1 +
 arch/powerpc/Kconfig                          |   1 +
 arch/s390/Kconfig                             |   1 +
 arch/x86/Kconfig                              |   1 +
 arch/x86/include/asm/pgtable_64.h             |   6 +
 lib/Kconfig.debug                             |  25 ++
 mm/Makefile                                   |   1 +
 mm/debug_vm_pgtable.c                         | 382 ++++++++++++++++++
 10 files changed, 453 insertions(+)
 create mode 100644 Documentation/features/debug/debug-vm-pgtable/arch-support.txt
 create mode 100644 mm/debug_vm_pgtable.c

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
