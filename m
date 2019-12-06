Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D9CE115487
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 16:46:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UQyrejc7A2xa6CyILmHryuKWK4/ZDSr4szFYy/DnRGU=; b=TMJRrw/dfFXgxs
	Tz9se3l606F0E4kENbEZg3s9OnyI28viGUXGMz7cZoFHeRodNG6j8gLRYsJQpWqx3hzqcRLm2848v
	Z1Wug17qSw+Af6R0J1PD29qZ1g8VM9P49m1aDlxfRQbscu5e6wFhtquerlspH06HK9/Eh4Ru8YTqW
	vZwqmynB6m2lTBIBtasiaUdGru54OTrbWyqa9LCQQcIOO3veSHC1zdsUuopJguDLDuRC3uGlIrfkZ
	JvgAz/1KpTOsu/UDwyFKZchMLYR0nOPruPE6ahiT0hhlJRTN5uFriAmujoCV/BPMWoRvaLXH3el2H
	j/zkG10Qbn1Vs+JSmhpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idFo9-0007Tl-Gr; Fri, 06 Dec 2019 15:46:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idFo0-0007T5-Cr
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 15:46:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C95C531B;
 Fri,  6 Dec 2019 07:46:06 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 25AB03F718; Fri,  6 Dec 2019 07:46:06 -0800 (PST)
Date: Fri, 6 Dec 2019 15:46:04 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: [GIT PULL] arm64 fixes for 5.5-rc1
Message-ID: <20191206154602.GA53116@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_074608_479382_E77B4745 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

Please pull the arm64 fixes below. Thanks.

The following changes since commit d8e85e144bbe12e8d82c6b05d690a34da62cc991:

  arm64: Kconfig: add a choice for endianness (2019-11-14 14:39:03 +0000)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-upstream

for you to fetch changes up to de858040ee80e6f41bf0b40090f1c71f966a61b3:

  arm64: entry: refine comment of stack overflow check (2019-12-06 14:11:31 +0000)

----------------------------------------------------------------
arm64 updates for 5.5:

- ZONE_DMA32 initialisation fix when memblocks fall entirely within the
  first GB (used by ZONE_DMA in 5.5 for Raspberry Pi 4).

- Couple of ftrace fixes following the FTRACE_WITH_REGS patchset.

- access_ok() fix for the Tagged Address ABI when called from from a
  kernel thread (asynchronous I/O): the kthread does not have the TIF
  flags of the mm owner, so untag the user address unconditionally.

- KVM compute_layout() called before the alternatives code patching.

- Minor clean-ups.

----------------------------------------------------------------
Catalin Marinas (1):
      arm64: Validate tagged addresses in access_ok() called from kernel threads

Heyi Guo (1):
      arm64: entry: refine comment of stack overflow check

Mark Brown (1):
      arm64: mm: Fix column alignment for UXN in kernel_page_tables

Mark Rutland (2):
      arm64: insn: consistently handle exit text
      arm64: ftrace: fix ifdeffery

Sebastian Andrzej Siewior (1):
      arm64: KVM: Invoke compute_layout() before alternatives are applied

Will Deacon (1):
      arm64: mm: Fix initialisation of DMA zones on non-NUMA systems

 arch/arm64/include/asm/kvm_mmu.h  |  1 +
 arch/arm64/include/asm/sections.h |  1 +
 arch/arm64/include/asm/uaccess.h  |  7 ++++++-
 arch/arm64/kernel/entry-ftrace.S  |  3 +--
 arch/arm64/kernel/entry.S         |  3 ++-
 arch/arm64/kernel/insn.c          | 22 ++++++++++++++++++----
 arch/arm64/kernel/smp.c           |  4 ++++
 arch/arm64/kernel/vmlinux.lds.S   |  3 +++
 arch/arm64/kvm/va_layout.c        |  8 +-------
 arch/arm64/mm/dump.c              |  1 +
 arch/arm64/mm/init.c              | 25 +++++++++++--------------
 11 files changed, 49 insertions(+), 29 deletions(-)

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
