Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCAEC1BCCA4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 21:46:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=svS8j9j1UZykOUwVzFmG2BZNcoxKM2pu4+vbVxg1Kdo=; b=akgKmdt/YAT2rQ
	ClLkMz5akkfu8m27OkEkOrEy2/ndlGMx4amNzqP4hVeFRwEbBUVcrbef7zpmKOt6XxBm15k8Qv8P5
	dl+chh2DhpP8OpAYgd43aWHN+gzBqWGwylIrB+Np8xi8Cxk01cejOlWmVQdRw//dg6UrsKCavVvaW
	8aBKIRRLvcN+chXiVEAtXZ5Wa5Met9fN9HJXL2Rc8pvH0ZWFOsTe2bvnicMpq8y6PhE/oCNVz+d9V
	pE7FA7tt5EwQN/81k3loEiRnMSyJGcxlj7JmQ5YCpjeNABUpjxb7iV3hO3H5uv2VblYES749GoVs7
	990fzox1OY6Lzm+lW+zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTWBq-0001Ma-Pv; Tue, 28 Apr 2020 19:46:46 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jTW9y-0005uN-SM; Tue, 28 Apr 2020 19:44:50 +0000
From: Matthew Wilcox <willy@infradead.org>
To: linux-mm@kvack.org
Subject: [PATCH 0/7] Record the mm_struct in the page table pages
Date: Tue, 28 Apr 2020 12:44:42 -0700
Message-Id: <20200428194449.22615-1-willy@infradead.org>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Russell King <linux@armlinux.org.uk>, linux-m68k@lists.linux-m68k.org,
 Geert Uytterhoeven <geert@linux-m68k.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Matthew Wilcox (Oracle)" <willy@infradead.org>

Pages which are in use as page tables have some space unused in struct
page.  It would be handy to have a pointer to the struct mm_struct that
they belong to so that we can handle uncorrectable errors in page tables
more gracefully.  There are a few other things we could use it for too,
such as checking that the page table entry actually belongs to the task
we think it ought to.  This patch series does none of that, but does
lay the groundwork for it.

Matthew Wilcox (Oracle) (7):
  mm: Document x86 uses a linked list of pgds
  mm: Move pt_mm within struct page
  arm: Thread mm_struct throughout page table allocation
  arm64: Thread mm_struct throughout page table allocation
  m68k: Thread mm_struct throughout page table allocation
  mm: Set pt_mm in PTE constructor
  mm: Set pt_mm in PMD constructor

 arch/arc/include/asm/pgalloc.h           |  2 +-
 arch/arm/mm/mmu.c                        | 66 ++++++++---------
 arch/arm64/include/asm/pgalloc.h         |  2 +-
 arch/arm64/mm/mmu.c                      | 93 ++++++++++++------------
 arch/m68k/include/asm/mcf_pgalloc.h      |  2 +-
 arch/m68k/include/asm/motorola_pgalloc.h | 10 +--
 arch/m68k/mm/motorola.c                  |  4 +-
 arch/openrisc/include/asm/pgalloc.h      |  2 +-
 arch/powerpc/mm/book3s64/pgtable.c       |  2 +-
 arch/powerpc/mm/pgtable-frag.c           |  2 +-
 arch/s390/include/asm/pgalloc.h          |  2 +-
 arch/s390/mm/pgalloc.c                   |  2 +-
 arch/sparc/mm/init_64.c                  |  2 +-
 arch/sparc/mm/srmmu.c                    |  2 +-
 arch/x86/include/asm/pgalloc.h           |  2 +-
 arch/x86/mm/pgtable.c                    |  3 +-
 arch/xtensa/include/asm/pgalloc.h        |  2 +-
 include/asm-generic/pgalloc.h            |  2 +-
 include/linux/mm.h                       | 18 ++++-
 include/linux/mm_types.h                 | 12 +--
 20 files changed, 122 insertions(+), 110 deletions(-)


base-commit: 6a8b55ed4056ea5559ebe4f6a4b247f627870d4c
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
