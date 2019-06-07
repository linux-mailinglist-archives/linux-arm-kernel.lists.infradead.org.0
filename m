Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B36E38EA9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 17:13:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M3zjoQ0AMNTHJ+yjmmB7husWt57Jjaj/MVwBhwfnE1g=; b=Z3JIj5s0pDUao/
	iYJKhOramDRYMe55jVQqvc/Ve02Vro/kyPF7jebreFkE1GhZ8BZdEpZHS7f4Em/vmTuTeNhM6B5nh
	JngALLsE3SW7tV80KHy42VB2+28iqteJxcO+5g6ZZuDgp/pXGPDw/osYY34qy1+d+f66k92XDW7Kg
	9ePutpgMtVKk+K2HaX73Kn1Hemel2U6KbTP1VCbn+aYHtTWjATtDuNa/Xlv3we3NVgPyiuvGaI8UH
	yneTuqTIolxDGhFqueP26BVSFLP5KXLJV+rd2qc5Ez2SzppqrthVulY2ht3UtXDJJtEjigPkew9R4
	lQv1xvauPjLO1o/JS3eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZGYa-0000EX-PR; Fri, 07 Jun 2019 15:13:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hZGYU-0000Dj-2k
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 15:13:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AE6E0C15;
 Fri,  7 Jun 2019 08:13:19 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 081593F718;
 Fri,  7 Jun 2019 08:13:18 -0700 (PDT)
Date: Fri, 7 Jun 2019 16:13:16 +0100
From: Will Deacon <will.deacon@arm.com>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] arm64: fixes for -rc4
Message-ID: <20190607151316.GB19862@fuggles.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_081322_166657_80558C88 
X-CRM114-Status: GOOD (  12.97  )
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

Another round of mostly-benign fixes, the exception being a boot crash on
SVE2-capable CPUs (although I don't know where you'd find such a thing, so
maybe it's benign too). We're in the process of resolving some big-endian
ptrace breakage, so I'll probably have some more for you next week.

Please pull.

Cheers,

Will

--->8

The following changes since commit 1e29ab3186e33c77dbb2d7566172a205b59fa390:

  arm64: use the correct function type for __arm64_sys_ni_syscall (2019-05-29 13:46:00 +0100)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-fixes

for you to fetch changes up to ebcc5928c5d925b1c8d968d9c89cdb0d0186db17:

  arm64: Silence gcc warnings about arch ABI drift (2019-06-06 13:28:45 +0100)

----------------------------------------------------------------
arm64 fixes for -rc4

- Fix boot crash on platforms with SVE2 due to missing register encoding

- Fix architected timer accessors when CONFIG_OPTIMIZE_INLINING=y

- Move cpu_logical_map into smp.h for use by upcoming irqchip drivers

- Trivial typo fix in comment

- Disable some useless, noisy warnings from GCC 9

----------------------------------------------------------------
Anders Roxell (1):
      arm64: arch_timer: mark functions as __always_inline

Dave Martin (2):
      arm64: cpufeature: Fix missing ZFR0 in __read_sysreg_by_encoding()
      arm64: Silence gcc warnings about arch ABI drift

Florian Fainelli (1):
      arm64: smp: Moved cpu_logical_map[] to smp.h

George G. Davis (1):
      ARM64: trivial: s/TIF_SECOMP/TIF_SECCOMP/ comment typo fix

 arch/arm64/Makefile                  | 1 +
 arch/arm64/include/asm/arch_timer.h  | 8 ++++----
 arch/arm64/include/asm/smp.h         | 6 ++++++
 arch/arm64/include/asm/smp_plat.h    | 5 -----
 arch/arm64/include/asm/thread_info.h | 2 +-
 arch/arm64/kernel/cpufeature.c       | 1 +
 6 files changed, 13 insertions(+), 10 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
