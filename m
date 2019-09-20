Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7721B8B19
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 08:33:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=O+JZJj6Uq5lAnYaAzgH1Zc87J3N76qSu0xbSYGFzP+s=; b=FkH
	McYdHQhCZTvFZFLlw7zkM4uBxhoeo/LQbAH71798Bj3ZhM1ZEXICcvNYNedyToYZmEgd6fAbEYgUs
	PKI85dntGpQsyFVore3bAmctwsnkNDy07OxIN5zgi+wej3YkA7PIlMRoPowZaCyzjuiYR8tJ1ktRy
	K9P5/zFXjKewyrF0M/wdzrsctu1sQ/mzZxK9QXwgUMnrMaqvQqugEav4F+deVeAg3ZHD/9HxJnCu4
	3yORQQonm/PRrM2ewGETdy/b73hpXOiIT0TgcR8jGuq4DOI8VDMC8mTzaJ5p1GPjLRmdbKS39NL0/
	jbnBxCFAC5I/xUpLt0l7HZwhVq1qreA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBCUA-0003p1-0G; Fri, 20 Sep 2019 06:33:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBCTw-0003o4-P4; Fri, 20 Sep 2019 06:33:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C5F5328;
 Thu, 19 Sep 2019 23:33:25 -0700 (PDT)
Received: from p8cg001049571a15.blr.arm.com (p8cg001049571a15.blr.arm.com
 [10.162.40.137])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 55D1F3F575;
 Thu, 19 Sep 2019 23:35:44 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org
Subject: [PATCH V3 0/2] mm/debug: Add tests for architecture exported page
 table helpers
Date: Fri, 20 Sep 2019 12:03:21 +0530
Message-Id: <1568961203-18660-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_233328_905228_E2CA89C7 
X-CRM114-Status: GOOD (  16.13  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 Dave Hansen <dave.hansen@intel.com>, Paul Mackerras <paulus@samba.org>,
 sparclinux@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-s390@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-snps-arc@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Kees Cook <keescook@chromium.org>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, "Kirill A . Shutemov" <kirill@shutemov.name>,
 Dan Williams <dan.j.williams@intel.com>, Vlastimil Babka <vbabka@suse.cz>,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>,
 Mike Kravetz <mike.kravetz@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds a test validation for architecture exported page table
helpers. Patch in the series adds basic transformation tests at various
levels of the page table. Before that it exports gigantic page allocation
function from HugeTLB.

This test was originally suggested by Catalin during arm64 THP migration
RFC discussion earlier. Going forward it can include more specific tests
with respect to various generic MM functions like THP, HugeTLB etc and
platform specific tests.

https://lore.kernel.org/linux-mm/20190628102003.GA56463@arrakis.emea.arm.com/

Testing:

Successfully build and boot tested on both arm64 and x86 platforms without
any test failing. Only build tested on some other platforms. Build failed
on some platforms (known) in pud_clear_tests() as there were no available
__pgd() definitions.

- ARM32
- IA64

But I would really appreciate if folks can help validate this test on other
architectures and report back problems. All suggestions, comments and inputs
welcome. Thank you.

Changes in V3:

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
Cc: Vlastimil Babka <vbabka@suse.cz>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Mike Rapoport <rppt@linux.vnet.ibm.com>
Cc: Jason Gunthorpe <jgg@ziepe.ca>
Cc: Dan Williams <dan.j.williams@intel.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Michal Hocko <mhocko@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: Steven Price <Steven.Price@arm.com>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Kees Cook <keescook@chromium.org>
Cc: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Cc: Matthew Wilcox <willy@infradead.org>
Cc: Sri Krishna chowdary <schowdary@nvidia.com>
Cc: Dave Hansen <dave.hansen@intel.com>
Cc: Russell King - ARM Linux <linux@armlinux.org.uk>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Paul Mackerras <paulus@samba.org>
Cc: Martin Schwidefsky <schwidefsky@de.ibm.com>
Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Vineet Gupta <vgupta@synopsys.com>
Cc: James Hogan <jhogan@kernel.org>
Cc: Paul Burton <paul.burton@mips.com>
Cc: Ralf Baechle <ralf@linux-mips.org>
Cc: Kirill A. Shutemov <kirill@shutemov.name>
Cc: Gerald Schaefer <gerald.schaefer@de.ibm.com>
Cc: Christophe Leroy <christophe.leroy@c-s.fr>
Cc: Mike Kravetz <mike.kravetz@oracle.com>
Cc: linux-snps-arc@lists.infradead.org
Cc: linux-mips@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-ia64@vger.kernel.org
Cc: linuxppc-dev@lists.ozlabs.org
Cc: linux-s390@vger.kernel.org
Cc: linux-sh@vger.kernel.org
Cc: sparclinux@vger.kernel.org
Cc: x86@kernel.org
Cc: linux-kernel@vger.kernel.org

Anshuman Khandual (2):
  mm/hugetlb: Make alloc_gigantic_page() available for general use
  mm/pgtable/debug: Add test validating architecture page table helpers

 arch/x86/include/asm/pgtable_64_types.h |   2 +
 include/linux/hugetlb.h                 |   9 +
 mm/Kconfig.debug                        |  14 +
 mm/Makefile                             |   1 +
 mm/arch_pgtable_test.c                  | 440 ++++++++++++++++++++++++++++++++
 mm/hugetlb.c                            |  24 +-
 6 files changed, 488 insertions(+), 2 deletions(-)
 create mode 100644 mm/arch_pgtable_test.c

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
