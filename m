Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A97E317920D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 15:11:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JDk5x1Hev4e7R9QHiQXa+aOykBYIRADGaxQO9q87kM0=; b=fzI
	owJpw/dAHLdFkhXb+7VCCVzZ5JownM85kB6cF1D1Rc3hltzdfRyJ5qVF7/sIR5aqfs1a6I6QloO9i
	OfogWNomRzfuzqbWNWpLwirBKut0HkdVm7q9lg6rZPni5gPFtgiBbDclPk3gvNU0LmcPwPig7NKaV
	TnxOeD//Mqtd8X0DhkvgApcy9vCGtKeNqAL+lrab+qQ80kDNpF7OJOEeJ5X3R/cF5/5XwitMQ3I7b
	bl4/FhR864uKRTcfrDImCupiRLVgRFULtvPVIHsiyhIboduv/wwbaOcAUrvTxin0gNT/NvY/bKMrC
	MKws3cdC6tGSXeBQRtHwYHQX/4KbC5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Uk6-0007m3-HD; Wed, 04 Mar 2020 14:11:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Uje-0007Ya-Rj; Wed, 04 Mar 2020 14:10:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0000A31B;
 Wed,  4 Mar 2020 06:10:51 -0800 (PST)
Received: from p8cg001049571a15.arm.com (unknown [10.163.1.88])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id EDD503F6CF;
 Wed,  4 Mar 2020 06:10:44 -0800 (PST)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org
Subject: [PATCH V2 0/2] arm64: Enable vmemmap mapping from device memory
Date: Wed,  4 Mar 2020 19:40:28 +0530
Message-Id: <1583331030-7335-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_061056_419619_E0607AF6 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, Michal Hocko <mhocko@suse.com>,
 linux-ia64@vger.kernel.org, David Hildenbrand <david@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 x86@kernel.org, "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Fenghua Yu <fenghua.yu@intel.com>, Pavel Tatashin <pasha.tatashin@soleen.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Andy Lutomirski <luto@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 Tony Luck <tony.luck@intel.com>, linux-kernel@vger.kernel.org,
 Palmer Dabbelt <palmer@dabbelt.com>, Andrew Morton <akpm@linux-foundation.org>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series enables vmemmap backing memory allocation from device memory
ranges on arm64. But before that, it enables vmemmap_populate_basepages()
to accommodate struct vmem_altmap based requests.

This series applies after latest (v14) arm64 memory hot remove series
(https://lkml.org/lkml/2020/3/3/1746) on Linux 5.6-rc4.

Changes in V2:

- Rebased on latest hot-remove series (v14) adding P4D page table support

Changes in V1: (https://lkml.org/lkml/2020/1/23/12)

- Added an WARN_ON() in unmap_hotplug_range() when altmap is
  provided without the page table backing memory being freed

Changes in RFC V2: (https://lkml.org/lkml/2019/10/21/11)

- Changed the commit message on 1/2 patch per Will
- Changed the commit message on 2/2 patch as well
- Rebased on arm64 memory hot remove series (v10)

RFC V1: (https://lkml.org/lkml/2019/6/28/32)

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>
Cc: Tony Luck <tony.luck@intel.com>
Cc: Fenghua Yu <fenghua.yu@intel.com>
Cc: Dave Hansen <dave.hansen@linux.intel.com>
Cc: Andy Lutomirski <luto@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: David Hildenbrand <david@redhat.com>
Cc: Mike Rapoport <rppt@linux.ibm.com>
Cc: Michal Hocko <mhocko@suse.com>
Cc: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Cc: "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Dan Williams <dan.j.williams@intel.com>
Cc: Pavel Tatashin <pasha.tatashin@soleen.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-ia64@vger.kernel.org
Cc: linux-riscv@lists.infradead.org
Cc: x86@kernel.org
Cc: linux-kernel@vger.kernel.org

Anshuman Khandual (2):
  mm/sparsemem: Enable vmem_altmap support in vmemmap_populate_basepages()
  arm64/mm: Enable vmem_altmap support for vmemmap mappings

 arch/arm64/mm/mmu.c      | 71 +++++++++++++++++++++++++++++-----------
 arch/ia64/mm/discontig.c |  2 +-
 arch/riscv/mm/init.c     |  2 +-
 arch/x86/mm/init_64.c    |  6 ++--
 include/linux/mm.h       |  5 +--
 mm/sparse-vmemmap.c      | 16 ++++++---
 6 files changed, 70 insertions(+), 32 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
