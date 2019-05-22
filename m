Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B66F42645A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 15:11:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u+BP0nOztRE7Sz+9dxxZYSzDoR/W7hICsO9Rb013kwg=; b=MjDwwoNLCdgeWh
	E+dAa4Cog0F6gpAmmt64cJR1XfEZYVrmxRMOZrKgoAsn6BNYEiw+gooHOFxcVGtuGN6MhM5Ey6xOB
	0vPIq6/KactKG71TVTSkOM2YI6T3gemXYPuOj4aw1OveEsn/trr/C0PzvDUoLK4Dwx7uieUJ9kaxV
	pzrb4RhYPgFFTP492JVNdQd9r6YzkXvM91Rov9Ys1txcm4jJQudgXEZlxs96LciC30SBr40Az07jp
	oHcQvvJNI7ndB6ReZ4fyIiwmmwjDxVLNgKEYKxQB4wrH8Dw/Jgvz1zcjgh2Fyl4QGhqAzXzIgbeaA
	vTaMY9AK7G2anoR4vYDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTR1U-0001Ge-GE; Wed, 22 May 2019 13:11:12 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTR1O-0001GF-7U
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 13:11:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B1DB580D;
 Wed, 22 May 2019 06:11:05 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C55F33F575;
 Wed, 22 May 2019 06:11:04 -0700 (PDT)
Date: Wed, 22 May 2019 14:11:02 +0100
From: Will Deacon <will.deacon@arm.com>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] arm64: First round of fixes for -rc2
Message-ID: <20190522131102.GC7876@fuggles.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_061106_275048_51334CF8 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

Please pull these arm64 fixes for -rc2. The summary is in the tag.

I was actually planning to send these in during the merge window, which
is why the branch is based on top of the previous arm64 pull rather than
-rc1. Unfortunately, due to various goings on, my ability to send
external email has been patchy (no pun intended) but here we are anyway.

I'll probably send some more fixes in later this week, but based on -rc1
to avoid conflicts.

Cheers,

Will

--->8

The following changes since commit b33f908811b7627015238e0dee9baf2b4c9d720d:

  Merge branch 'for-next/perf' of git://git.kernel.org/pub/scm/linux/kernel/git/will/linux into for-next/core (2019-05-03 10:18:08 +0100)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

for you to fetch changes up to 7a0a93c51799edc45ee57c6cc1679aa94f1e03d5:

  arm64: vdso: Explicitly add build-id option (2019-05-16 11:45:36 +0100)

----------------------------------------------------------------
First round of arm64 fixes for -rc2

- Fix SPE probe failure when backing auxbuf with high-order pages

- Fix handling of DMA allocations from outside of the vmalloc area

- Fix generation of build-id ELF section for vDSO object

- Disable huge I/O mappings if kernel page table dumping is enabled

- A few other minor fixes (comments, kconfig etc)

----------------------------------------------------------------
Christoph Hellwig (1):
      arm64/iommu: handle non-remapped addresses in ->mmap and ->get_sgtable

Hillf Danton (1):
      arm64: assembler: Update comment above cond_yield_neon() macro

Laura Abbott (1):
      arm64: vdso: Explicitly add build-id option

Mark Rutland (1):
      arm64/mm: Inhibit huge-vmap with ptdump

Will Deacon (2):
      drivers/perf: arm_spe: Don't error on high-order pages for aux buf
      arm64: Print physical address of page table base in show_pte()

Yury Norov (1):
      arm64: don't trash config with compat symbol if COMPAT is disabled

 arch/arm64/Kconfig                 |  2 +-
 arch/arm64/include/asm/assembler.h | 11 +++++------
 arch/arm64/kernel/vdso/Makefile    |  4 ++--
 arch/arm64/mm/dma-mapping.c        | 10 ++++++++++
 arch/arm64/mm/fault.c              |  5 +++--
 arch/arm64/mm/mmu.c                | 11 ++++++++---
 drivers/perf/arm_spe_pmu.c         | 10 +---------
 7 files changed, 30 insertions(+), 23 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
