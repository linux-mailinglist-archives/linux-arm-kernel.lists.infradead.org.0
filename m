Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 228DE134B03
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 19:57:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ZsL8YK0UI4xqVGFog+91MzORke/4ZNMTAOCcg9PYPaY=; b=BrW
	RH1x6/CbaRq0da85gSnZ39Oo+zA75ImPHn7Jh38F98/3WlcSEc24d9R729jlxT4MKxW1ntOEmV0xn
	YQkyotY3hVhknoVjlfdIUa+0AJ/2K3suNspGHxeMt2C5xNnWG7/pXrJgzNnOyeIOWCrsQC/37jmyj
	CLg2QRH+r7NG4A3CSoTBQsOCfL+6MeRm0InxHp4zBtMyN/K4VenOQGsBQuljMTqtsMZCOC5httrTk
	cDU8mpi+pg9yfyAodsBzo6kwjMhQniO04pCgmXcwM1FhG7t3KCVytQfTfzQEH0UMqieG2CsbnXxlU
	lvzXIVi45j5i0+zCY9whL8nxBGhlY5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipGVo-0007J4-H9; Wed, 08 Jan 2020 18:57:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipGVf-0007I0-9o
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 18:56:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0C0921FB;
 Wed,  8 Jan 2020 10:56:50 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 7BB3B3F534;
 Wed,  8 Jan 2020 10:56:48 -0800 (PST)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org, catalin.marinas@arm.com,
 will@kernel.org, james.morse@arm.com
Subject: [PATCH 00/17] arm64: entry deasmification and cleanup
Date: Wed,  8 Jan 2020 18:56:17 +0000
Message-Id: <20200108185634.1163-1-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_105651_427709_760BB082 
X-CRM114-Status: GOOD (  11.92  )
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
Cc: mark.rutland@arm.com, keescook@chromium.org, maz@kernel.org,
 broonie@kernel.org, labbott@redhat.com, robin.murphy@arm.com,
 julien.thierry.kdev@gmail.com, alex.popov@linux.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series aims to make the arm64 exception handling code easier to
maintain and update, primarily by converting from assembly to C wherever
reasonably possible. This allows us to remove infrastructure we had to
duplicate for C and assembly, and leaves less assembly behind that may
require special treatment (e.g. for BTI).

Previous patches converted syscall management to C, along with the rest
of the synchronous exception vectors. This series converts the remaining
IRQ and error paths, before factoring out the common EL0 exception
entry/return work. Some parts of the existing assembly were somewhat
arcane, and for these I've added more extensive comments than were
present in the assembly.

After converting the bulk of the logic to C, it was clear that a few
structural inconsistencies had crept in over the years, so I've tried to
clean those up and make the remaining assembly simpler and clearer.

There are a couple more things which could be factored out, notably the
SW PAN logic and the GIC prio masking entry/exit work. I've left those
as-is for now.

The series has seen some basic testing, and is I'm currently fuzzing it
with a local Syzkaller instance.

I've pushed the patches to my arm64/entry-deasm branch [1,2], based on
v5.5-rc3.

Thanks,
Mark.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git/log/?h=arm64/entry-deasm
[2] git://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git arm64/entry-deasm

Mark Rutland (17):
  arm64: entry: mark all entry code as notrace
  arm64: entry: cleanup el0 svc handler naming
  arm64: entry: move arm64_preempt_schedule_irq to entry-common.c
  arm64: entry: move preempt logic to C
  arm64: entry: add a call_on_stack helper
  arm64: entry: convert irq entry to C
  arm64: entry: convert error entry to C
  arm64: entry: Split el0_sync_compat from el0_sync
  arm64: entry: organise handler stubs consistently
  arm64: entry: consolidate EL1 return paths
  stackleak: allow C to call stackleak_erase()
  arm64: debug-monitors: refactor MDSCR manipulation
  arm64: entry: move common el0 entry/return work to C
  arm64: entry: move NO_SYSCALL setup to C
  arm64: entry: move ARM64_ERRATUM_845719 workaround to C
  arm64: entry: move ARM64_ERRATUM_1418040 workaround to C
  arm64: entry: cleanup sp_el0 manipulation

 arch/arm64/include/asm/assembler.h      |  18 --
 arch/arm64/include/asm/debug-monitors.h |  10 +
 arch/arm64/include/asm/exception.h      |   8 +-
 arch/arm64/kernel/asm-offsets.c         |   1 -
 arch/arm64/kernel/debug-monitors.c      |  32 +--
 arch/arm64/kernel/entry-common.c        | 245 ++++++++++++++++++++++-
 arch/arm64/kernel/entry.S               | 333 +++++++-------------------------
 arch/arm64/kernel/irq.c                 |  15 --
 arch/arm64/kernel/process.c             |  17 --
 arch/arm64/kernel/signal.c              |   3 +-
 arch/arm64/kernel/syscall.c             |   4 +-
 arch/arm64/kernel/traps.c               |   2 +-
 arch/arm64/mm/fault.c                   |   7 -
 include/linux/stackleak.h               |   3 +
 14 files changed, 338 insertions(+), 360 deletions(-)

-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
