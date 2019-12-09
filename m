Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0DC0117552
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 20:14:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HEMK2L53sFRKJo+4PuTDpZ/UCZfl8QuCg4CwCsFUIH8=; b=o0etUrIBuxZioj
	cFn3V5NHR2VAesZDE4A3EbYgFDnW9lvFPthUCKPbnHPZ1VjdF9hP7CKrP+WHhsU2EDUH8Jvbr6AX+
	uMzW9JIHFv2WhLCMlboLJfRjgDRFvPu+szMj8oUCo/M1Yo69CnqUtiabBdE5dvgII6GA7QMNTlXCy
	8sTK7kMsAFkmi5piXT+NZNSs3d4/BMB589QcpL7uID0hUP4+Y1y6D/iPKwntRrsMhPnGYD9pr1Gri
	CTmgu/HRLxBVRC1JHxXegpT9ayii5OA27qKBSZS8gI8ZDfQEsSEfeArAyyGKg3p09Djb+Zj0qAjgj
	2vrwbOyZU7rj1lWY7n2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieOTx-0007Sa-TI; Mon, 09 Dec 2019 19:14:09 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieOTp-0007RH-69
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 19:14:02 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <gunthorp@deltatee.com>)
 id 1ieOTk-00025k-Lg; Mon, 09 Dec 2019 12:13:57 -0700
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.92)
 (envelope-from <gunthorp@deltatee.com>)
 id 1ieOTd-0001Me-0k; Mon, 09 Dec 2019 12:13:49 -0700
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-ia64@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-s390@vger.kernel.org, linux-sh@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, linux-mm@kvack.org,
 Christoph Hellwig <hch@lst.de>, Dan Williams <dan.j.williams@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>
Date: Mon,  9 Dec 2019 12:13:40 -0700
Message-Id: <20191209191346.5197-1-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-ia64@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-sh@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 linux-mm@kvack.org, hch@lst.de, dan.j.williams@intel.com,
 akpm@linux-foundation.org, catalin.marinas@arm.com, benh@kernel.crashing.org,
 tglx@linutronix.de, mingo@redhat.com, bp@alien8.de,
 dave.hansen@linux.intel.com, will@kernel.org, luto@kernel.org,
 peterz@infradead.org, logang@deltatee.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-6.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 MYRULES_NO_TEXT autolearn=no autolearn_force=no version=3.4.2
Subject: [PATCH 0/6] Allow setting caching mode in arch_add_memory() for P2PDMA
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_111401_225152_C5467CDA 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Logan Gunthorpe <logang@deltatee.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Currently, the page tables created using memremap_pages() are always
created with the PAGE_KERNEL cacheing mode. However, the P2PDMA code
is creating pages for PCI BAR memory which should never be accessed
through the cache and instead use either WC or UC. This still works in
most cases, on x86, because the MTRR registers typically override the
caching settings in the page tables for all of the IO memory to be
UC-. However, this tends not to work so well on other arches or
some rare x86 machines that have firmware which does not setup the
MTRR registers in this way.

Instead of this, this series proposes a change to arch_add_memory()
to take the pgprot required by the mapping which allows us to
explicitly set pagetable entries for P2PDMA memory to WC.

This changes is pretty routine for most of the arches: x86_64, s390, arm64
and powerpc simply need to thread the pgprot through to where the page tables
are setup. x86_32 unfortunately sets up the page tables at boot so
must use _set_memory_prot() to change their caching mode. ia64 and sh
don't appear to have an easy way to change the page tables so, for now
at least, we just return -EINVAL on such mappings and thus they will
not support P2PDMA memory until the work for this is done.

Thanks,

Logan

--

Logan Gunthorpe (6):
  x86/mm: Thread pgprot_t through init_memory_mapping()
  x86/mm: Introduce _set_memory_prot()
  powerpc/mm: Thread pgprot_t through create_section_mapping()
  s390/mm: Thread pgprot_t through vmem_add_mapping()
  mm, memory_hotplug: Provide argument for the pgprot_t in
    arch_add_memory()
  mm/memremap: Set caching mode for PCI P2PDMA memory to WC

 arch/arm64/mm/mmu.c                        |  4 +--
 arch/ia64/mm/init.c                        |  5 +++-
 arch/powerpc/include/asm/book3s/64/hash.h  |  3 +-
 arch/powerpc/include/asm/book3s/64/radix.h |  3 +-
 arch/powerpc/include/asm/sparsemem.h       |  3 +-
 arch/powerpc/mm/book3s64/hash_utils.c      |  5 ++--
 arch/powerpc/mm/book3s64/pgtable.c         |  7 +++--
 arch/powerpc/mm/book3s64/radix_pgtable.c   | 18 +++++++-----
 arch/powerpc/mm/mem.c                      |  7 +++--
 arch/s390/include/asm/pgtable.h            |  3 +-
 arch/s390/mm/extmem.c                      |  3 +-
 arch/s390/mm/init.c                        |  4 +--
 arch/s390/mm/vmem.c                        | 10 +++----
 arch/sh/mm/init.c                          |  5 +++-
 arch/x86/include/asm/page_types.h          |  3 --
 arch/x86/include/asm/pgtable.h             |  3 ++
 arch/x86/include/asm/set_memory.h          |  1 +
 arch/x86/kernel/amd_gart_64.c              |  3 +-
 arch/x86/mm/init.c                         |  9 +++---
 arch/x86/mm/init_32.c                      | 10 +++++--
 arch/x86/mm/init_64.c                      | 34 ++++++++++++----------
 arch/x86/mm/mm_internal.h                  |  3 +-
 arch/x86/mm/pageattr.c                     |  7 +++++
 arch/x86/platform/efi/efi_64.c             |  3 +-
 include/linux/memory_hotplug.h             |  2 +-
 mm/memory_hotplug.c                        |  2 +-
 mm/memremap.c                              |  5 +++-
 27 files changed, 104 insertions(+), 61 deletions(-)

--
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
