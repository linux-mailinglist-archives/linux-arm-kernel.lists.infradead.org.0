Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC5E7FF65
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 19:18:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TU4Koke8uRZ4saMj5VleifSu61rYOC+J9mIiLCwKvJU=; b=AjDxa5b1JB8zdm
	PZYj025kWxRaRdEo2CExfq5DWT77h0kCFSE/zULcKmyb50kk1tLBV2NpNRj5Pl/9La/nGBRy8nt1l
	d3Qk6d6eoDRKwQOmH3W3K6EOse5B0B6qIk24UcmYly3+Uu8WbIxl8IiMoOwNcX9azVdQppd1PJF6g
	CnYUV9zMjVdx95xVT2LlcinbocqJABQzeGWXhO1BhbMmrlH3crbqHKf8K13Un5p9gAw6XymgDGbw9
	eawV3a+4PNNlsZSQ7EehU11A81VKT9Dzw2VmknjaJOw7TS4FcRHGG6ZwWXpUfXz7Jpt5ioFxxQ14a
	4f/LEJ2k29Zz3PieHscw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htbBu-0001FH-8M; Fri, 02 Aug 2019 17:18:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htbBm-0001D8-Tm
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 17:18:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 18322344;
 Fri,  2 Aug 2019 10:17:58 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 4B6AB3F575; Fri,  2 Aug 2019 10:17:57 -0700 (PDT)
Date: Fri, 2 Aug 2019 18:17:55 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: [GIT PULL] arm64 fixes for 5.3-rc3
Message-ID: <20190802171753.GA56033@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_101759_062238_6934067F 
X-CRM114-Status: GOOD (  12.98  )
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
Cc: will@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

Please pull the arm64 fixes below. Thanks.

The following changes since commit 609488bc979f99f805f34e9a32c1e3b71179d10b:

  Linux 5.3-rc2 (2019-07-28 12:47:02 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-fixes

for you to fetch changes up to d8bb6718c4db9bcd075dde7ff55d46091ccfae15:

  arm64: Make debug exception handlers visible from RCU (2019-08-02 11:56:01 +0100)

----------------------------------------------------------------
arm64 fixes:

- Update the compat layer to allow single-byte watchpoints on all
  addresses (similar to the native support)

- arm_pmu: fix the restoration of the counters on the
  CPU_PM_ENTER_FAILED path

- Fix build regression with vDSO and Makefile not stripping
  CROSS_COMPILE_COMPAT

- Fix the CTR_EL0 (cache type register) sanitisation on heterogeneous
  machines (e.g. big.LITTLE)

- Fix the interrupt controller priority mask value when pseudo-NMIs are
  enabled

- arm64 kprobes fixes: recovering of the PSTATE.D flag in the
  single-step exception handler, NOKPROBE annotations for unwind_frame()
  and walk_stackframe(), remove unneeded rcu_read_lock/unlock from debug
  handlers

- Several gcc fall-through warnings

- Unused variable warnings

----------------------------------------------------------------
Anders Roxell (2):
      arm64: smp: Mark expected switch fall-through
      arm64: module: Mark expected switch fall-through

Julien Thierry (1):
      arm64: Lower priority mask for GIC_PRIO_IRQON

Masami Hiramatsu (4):
      arm64: unwind: Prohibit probing on return_address()
      arm64: Remove unneeded rcu_read_lock from debug handlers
      arm64: kprobes: Recover pstate.D in single-step exception handler
      arm64: Make debug exception handlers visible from RCU

Qian Cai (3):
      arm64/efi: fix variable 'si' set but not used
      arm64/mm: fix variable 'pud' set but not used
      arm64/mm: fix variable 'tag' set but not used

Vincenzo Frascino (1):
      arm64: vdso: Fix Makefile regression

Will Deacon (4):
      arm64: compat: Allow single-byte watchpoints on all addresses
      drivers/perf: arm_pmu: Fix failure path in PM notifier
      arm64: hw_breakpoint: Fix warnings about implicit fallthrough
      arm64: cpufeature: Fix feature comparison for CTR_EL0.{CWG,ERG}

 arch/arm64/Makefile                 |  2 +-
 arch/arm64/include/asm/arch_gicv3.h |  6 ++++
 arch/arm64/include/asm/cpufeature.h |  7 +++--
 arch/arm64/include/asm/daifflags.h  |  2 ++
 arch/arm64/include/asm/efi.h        |  6 +++-
 arch/arm64/include/asm/memory.h     | 10 +++++--
 arch/arm64/include/asm/pgtable.h    |  4 +--
 arch/arm64/include/asm/ptrace.h     |  2 +-
 arch/arm64/kernel/cpufeature.c      |  8 ++++--
 arch/arm64/kernel/debug-monitors.c  | 14 +++++----
 arch/arm64/kernel/hw_breakpoint.c   | 11 +++++--
 arch/arm64/kernel/module.c          |  4 +++
 arch/arm64/kernel/probes/kprobes.c  | 40 ++++----------------------
 arch/arm64/kernel/return_address.c  |  3 ++
 arch/arm64/kernel/smp.c             |  2 +-
 arch/arm64/kernel/stacktrace.c      |  3 ++
 arch/arm64/mm/fault.c               | 57 +++++++++++++++++++++++++++++++------
 drivers/perf/arm_pmu.c              |  2 +-
 18 files changed, 117 insertions(+), 66 deletions(-)

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
