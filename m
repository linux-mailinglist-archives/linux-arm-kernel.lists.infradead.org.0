Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4591D766FF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 15:12:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vj2oOHhzBQb6T2la5UZVuvdtmiO6rnrN7BvG6R3n1c8=; b=RL6bW80GCE/n/R
	Czx7U8hy2FnVjTB4HHGu375m1+kAsniRKC37N99FPQsesRlYiLLPj78Bj4POtoq+Yvk/6Y8JvVVUx
	0ismDhTUCVUl4esF7ul0W5tBGMnSn47cuQ8a04rxJFm00ilq2yswBljnGvGu0TnuKqM9UM7CBc0cp
	IdHro94ZeQDLAOaJ0P/jPoILmwemg6hHJfiI0zjOV/ItZHv/jfvNjx49DwNJkBh6H3qAuAAy4t/gD
	cnPbd5kMKKcLdDaUkYRKA5NvEVOQPyzC+cPl8bPkQ5gmzTOesflfe1ymTLQJpDAY52karziIIgRk9
	z+7xoR8ihQatte/BGt4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr01R-0007O6-Cg; Fri, 26 Jul 2019 13:12:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr01E-0007NY-9t
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 13:12:21 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2AA5F218D4;
 Fri, 26 Jul 2019 13:12:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564146740;
 bh=lS7VU+fYLf9p8y4UAb/u0BkVPuztI5yiv146UfxCQDM=;
 h=Date:From:To:Cc:Subject:From;
 b=HeI8QMV5ptqPEjWImZK/G7ljfbzJwNqBuLFsieHmWMcqdpaYdl2UtrBms5Lh5GX8C
 3X+EuxET8Bu0ofRypSvw5Ag9692Un3I0nSMkS/9nfNLKduqv5rGCu6F7a6VdMxx8i7
 yqIeRc3KFTvVuU3p3DRZQ4yMz+SaUS9WbCopSzhk=
Date: Fri, 26 Jul 2019 14:12:16 +0100
From: Will Deacon <will@kernel.org>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] arm64: fixes for -rc2
Message-ID: <20190726131215.2dqryzjvxfyqefuw@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_061220_374976_DC705BEE 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

Please pull these arm64 fixes for -rc2. There's more here than we usually
have at this stage, but that's mainly down to the stacktrace changes which
came in slightly too late for the merge window.

Summary is in the tag.

Thanks,

Will

--->8

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

for you to fetch changes up to 5a46d3f71d5e5a9f82eabc682f996f1281705ac7:

  ACPI/IORT: Fix off-by-one check in iort_dev_find_its_id() (2019-07-23 15:45:46 +0100)

----------------------------------------------------------------
arm64 fixes for -rc2

- Big bad batch of MAINTAINERS updates

- Fix handling of SP alignment fault exceptions

- Fix PSTATE.SSBS handling on heterogeneous systems

- Fix fallout from moving to the generic vDSO implementation

- Fix stack unwinding in the face of frame corruption

- Fix off-by-one in IORT code

- Minor SVE cleanups

----------------------------------------------------------------
Anshuman Khandual (1):
      arm64: mm: Drop pte_huge()

Dave Martin (4):
      arm64: stacktrace: Constify stacktrace.h functions
      arm64: stacktrace: Factor out backtrace initialisation
      arm64/sve: Factor out FPSIMD to SVE state conversion
      arm64/sve: Fix a couple of magic numbers for the Z-reg count

James Morse (1):
      arm64: entry: SP Alignment Fault doesn't write to FAR_EL1

Jean-Philippe Brucker (1):
      MAINTAINERS: Update my email address

Julien Thierry (1):
      MAINTAINERS: Update my email address

Lorenzo Pieralisi (1):
      ACPI/IORT: Fix off-by-one check in iort_dev_find_its_id()

Marc Zyngier (2):
      MAINTAINERS: Update my email address to @kernel.org
      arm64: Force SSBS on context switch

Mark Rutland (1):
      arm64: stacktrace: Better handle corrupted stacks

Naohiro Aota (1):
      arm64: vdso: fix flip/flop vdso build bug

Suzuki K Poulose (1):
      MAINTAINERS: Fix spelling mistake in my name

Vincenzo Frascino (2):
      arm64: vdso: Fix population of AT_SYSINFO_EHDR for compat vdso
      arm64: vdso: Cleanup Makefiles

 .mailmap                            |  3 ++
 MAINTAINERS                         | 14 +++----
 arch/arm64/include/asm/elf.h        |  2 +-
 arch/arm64/include/asm/pgtable.h    |  1 -
 arch/arm64/include/asm/processor.h  | 14 ++++++-
 arch/arm64/include/asm/stacktrace.h | 78 ++++++++++++++++++++++++++++++-------
 arch/arm64/kernel/entry.S           | 22 ++++++-----
 arch/arm64/kernel/fpsimd.c          | 29 +++++++-------
 arch/arm64/kernel/perf_callchain.c  |  7 +---
 arch/arm64/kernel/process.c         | 36 ++++++++++++++---
 arch/arm64/kernel/return_address.c  |  9 ++---
 arch/arm64/kernel/stacktrace.c      | 59 +++++++++++++++++++++-------
 arch/arm64/kernel/time.c            |  7 +---
 arch/arm64/kernel/traps.c           | 13 +++----
 arch/arm64/kernel/vdso/Makefile     | 13 +++----
 arch/arm64/kernel/vdso32/Makefile   | 14 ++++---
 drivers/acpi/arm64/iort.c           |  4 +-
 17 files changed, 219 insertions(+), 106 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
