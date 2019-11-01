Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47680EBF56
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 09:40:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IBbUmUzxuey3axUwqDawqbw8Zt+CfEUJl2ksNhhOpaU=; b=XUd
	7cvz4wtxWlew3/6y0dBTcOYgBlfXrt9Q0AkTlpRvbTgl0u1p7JQJZG6e7zAjLA1OdMqqbOXIZfiAz
	pAbpOeA5T0+sVO8GJY2ls8D+ipUadP5jpROiC5dMNcPd076R9Yz+3/YI8Qj58Fi8QnXq2j+D77p4a
	XiOyB830GW3y9Np3ijQ+3WfDM/AyW6+1gMjACTMmcnA8/dTR2LSArruSX6jlMk2O/SAn6RbYFStN3
	M9ipm4hJUOHSSllotSEATtnstDMpQigfTUZOxSQcVPL2zCc4eqo5q+4zLzj1nJbow2vdRIbDuIYT1
	qyNApY7OfvVCinsNpCbmRMThICQ2VxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQSTf-0006ZX-UQ; Fri, 01 Nov 2019 08:40:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQSTO-0006Yt-5O; Fri, 01 Nov 2019 08:39:59 +0000
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 453C6204FD;
 Fri,  1 Nov 2019 08:39:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572597597;
 bh=JiXfDuhBekyoqYuliW1AsEEezqJqORNkhPnfcBWhLNA=;
 h=From:To:Cc:Subject:Date:From;
 b=XwzQhtRaq77RNZdSKxQRAZIyZXDe3BLfRf0c2n8EKtRNsa7Xc369V+mOYgiT72xOo
 7I+apK4u5UXS/d8YOCalZuW7seaQgENizuUrEQGp9sAvQLvhPNWfNk03tMvfXBEsi5
 cvwq1ADnFefDA5C5sYM7vHMiBb6Vo3fUr5oFcR8o=
From: Mike Rapoport <rppt@kernel.org>
To: linux-mm@kvack.org
Subject: [PATCH v2 00/13] mm: remove __ARCH_HAS_4LEVEL_HACK
Date: Fri,  1 Nov 2019 10:39:31 +0200
Message-Id: <1572597584-6390-1-git-send-email-rppt@kernel.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_013958_242722_D8DABB56 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 sparclinux@vger.kernel.org, Rolf Eike Beer <eike-kernel@sf-tec.de>,
 Vincent Chen <deanbo422@gmail.com>, Greg Ungerer <gerg@linux-m68k.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>, linux-arch@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, Richard Weinberger <richard@nod.at>,
 Helge Deller <deller@gmx.de>, Russell King <linux@armlinux.org.uk>,
 Mike Rapoport <rppt@linux.ibm.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Mark Salter <msalter@redhat.com>, Matt Turner <mattst88@gmail.com>,
 Jeff Dike <jdike@addtoit.com>, Sam Creasey <sammy@sammy.net>,
 Arnd Bergmann <arnd@arndb.de>, Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 linux-um@lists.infradead.org, linux-m68k@lists.linux-m68k.org,
 Greentime Hu <green.hu@gmail.com>, "Kirill A. Shutemov" <kirill@shutemov.name>,
 linux-arm-kernel@lists.infradead.org, Michal Simek <monstr@monstr.eu>,
 linux-parisc@vger.kernel.org, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, linux-alpha@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Peter Rosin <peda@axentia.se>,
 Mike Rapoport <rppt@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mike Rapoport <rppt@linux.ibm.com>

Hi,

These patches convert several architectures to use page table folding and
remove __ARCH_HAS_4LEVEL_HACK along with include/asm-generic/4level-fixup.h.

For the nommu configurations the folding is already implemented by the
generic code so the only change was to use the appropriate header file.

As for the rest, the changes are mostly about mechanical replacement of
pgd accessors with pud/pmd ones and the addition of higher levels to page
table traversals.

With Vineet's patches from "elide extraneous generated code for folded
p4d/pud/pmd" series [1] there is a small shrink of the kernel size of about
-0.01% for the defconfig build. 

The set is boot-tested on UML, qemu-{alpha,sparc} and aranym.

v2 changes:
* m68k: fixed ifdefs around pmd_t defintion to work with nommu
* parisc: added conversion of hugetlb (thanks, Helge!); lexical fixups in
  comments and changelog
* collected acks

[1] https://lore.kernel.org/lkml/20191016162400.14796-1-vgupta@synopsys.com

Helge Deller (1):
  parisc/hugetlb: use pgtable-nopXd instead of 4level-fixup

Mike Rapoport (12):
  alpha: use pgtable-nop4d instead of 4level-fixup
  arm: nommu: use pgtable-nopud instead of 4level-fixup
  c6x: use pgtable-nopud instead of 4level-fixup
  m68k: nommu: use pgtable-nopud instead of 4level-fixup
  m68k: mm: use pgtable-nopXd instead of 4level-fixup
  microblaze: use pgtable-nopmd instead of 4level-fixup
  nds32: use pgtable-nopmd instead of 4level-fixup
  parisc: use pgtable-nopXd instead of 4level-fixup
  sparc32: use pgtable-nopud instead of 4level-fixup
  um: remove unused pxx_offset_proc() and addr_pte() functions
  um: add support for folded p4d page tables
  mm: remove __ARCH_HAS_4LEVEL_HACK and
    include/asm-generic/4level-fixup.h

 arch/alpha/include/asm/pgalloc.h         |  4 +-
 arch/alpha/include/asm/pgtable.h         | 24 ++++-----
 arch/alpha/mm/init.c                     | 12 +++--
 arch/arm/include/asm/pgtable.h           |  2 +-
 arch/c6x/include/asm/pgtable.h           |  2 +-
 arch/m68k/include/asm/mcf_pgalloc.h      |  7 ---
 arch/m68k/include/asm/mcf_pgtable.h      | 28 ++++-------
 arch/m68k/include/asm/mmu_context.h      | 12 ++++-
 arch/m68k/include/asm/motorola_pgalloc.h |  4 +-
 arch/m68k/include/asm/motorola_pgtable.h | 32 +++++++-----
 arch/m68k/include/asm/page.h             |  9 ++--
 arch/m68k/include/asm/pgtable_mm.h       | 11 +++--
 arch/m68k/include/asm/pgtable_no.h       |  2 +-
 arch/m68k/include/asm/sun3_pgalloc.h     |  5 --
 arch/m68k/include/asm/sun3_pgtable.h     | 18 -------
 arch/m68k/kernel/sys_m68k.c              | 10 +++-
 arch/m68k/mm/init.c                      |  6 ++-
 arch/m68k/mm/kmap.c                      | 36 ++++++++++----
 arch/m68k/mm/mcfmmu.c                    | 16 +++++-
 arch/m68k/mm/motorola.c                  | 17 ++++---
 arch/microblaze/include/asm/page.h       |  3 --
 arch/microblaze/include/asm/pgalloc.h    | 16 ------
 arch/microblaze/include/asm/pgtable.h    | 32 +-----------
 arch/microblaze/kernel/signal.c          | 10 ++--
 arch/microblaze/mm/init.c                |  7 ++-
 arch/microblaze/mm/pgtable.c             | 13 ++++-
 arch/nds32/include/asm/page.h            |  3 --
 arch/nds32/include/asm/pgalloc.h         |  3 --
 arch/nds32/include/asm/pgtable.h         | 12 +----
 arch/nds32/include/asm/tlb.h             |  1 -
 arch/nds32/kernel/pm.c                   |  4 +-
 arch/nds32/mm/fault.c                    | 16 ++++--
 arch/nds32/mm/init.c                     | 11 +++--
 arch/nds32/mm/mm-nds32.c                 |  6 ++-
 arch/nds32/mm/proc.c                     | 26 ++++++----
 arch/parisc/include/asm/page.h           | 30 ++++++-----
 arch/parisc/include/asm/pgalloc.h        | 41 ++++++---------
 arch/parisc/include/asm/pgtable.h        | 52 ++++++++++---------
 arch/parisc/include/asm/tlb.h            |  2 +
 arch/parisc/kernel/cache.c               | 13 +++--
 arch/parisc/kernel/pci-dma.c             |  9 +++-
 arch/parisc/mm/fixmap.c                  | 10 ++--
 arch/parisc/mm/hugetlbpage.c             | 18 ++++---
 arch/sparc/include/asm/pgalloc_32.h      |  6 +--
 arch/sparc/include/asm/pgtable_32.h      | 28 +++++------
 arch/sparc/mm/fault_32.c                 | 11 ++++-
 arch/sparc/mm/highmem.c                  |  6 ++-
 arch/sparc/mm/io-unit.c                  |  6 ++-
 arch/sparc/mm/iommu.c                    |  6 ++-
 arch/sparc/mm/srmmu.c                    | 51 ++++++++++++++-----
 arch/um/include/asm/pgtable-2level.h     |  1 -
 arch/um/include/asm/pgtable-3level.h     |  1 -
 arch/um/include/asm/pgtable.h            |  3 ++
 arch/um/kernel/mem.c                     | 25 +++++++++-
 arch/um/kernel/skas/mmu.c                | 12 ++++-
 arch/um/kernel/skas/uaccess.c            |  7 ++-
 arch/um/kernel/tlb.c                     | 85 +++++++++++++++++++-------------
 arch/um/kernel/trap.c                    |  4 +-
 include/asm-generic/4level-fixup.h       | 40 ---------------
 include/asm-generic/tlb.h                |  2 -
 include/linux/mm.h                       | 10 ++--
 mm/memory.c                              |  8 ---
 62 files changed, 493 insertions(+), 414 deletions(-)
 delete mode 100644 include/asm-generic/4level-fixup.h

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
