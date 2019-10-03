Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B564FCA816
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 19:17:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BxNxW+AG6gzLsEGHU18CB/VBVzhu4zq53oKwOw2HmsM=; b=Z9H0UFQNqPzldL
	frkPi/DWFyDud2QdP0oEZNSQjHkkuiXGD177SyMGbL/9c+Q4PWoV+V8ZqT4VYKNdR2usz/sPeiUal
	4xdTvSnJ6RrpbaZfEVzl2xDiq10ysGiKpyVhRIvjXb+WISRpWYoMEU9Dyr7rE4PIuMNZTHha0vQqG
	noOJqviV47G9q7da/OzpV1zvhF6HIAzQtMZ9s5+UeDSbPy3nQNGTBqRStq4JiNDXVdWB2NV5+E9LZ
	Hyaj/WxNG1dPLKl5mRWvudsqNAiRLTys6aYRQBcTle/9Ove9+0qFnoNyTEGYd032HCXoAWzebw/N/
	fwK9qH0jLJ3j5Ah8Ww2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG4j3-0007eb-3L; Thu, 03 Oct 2019 17:17:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG4iu-0007dv-TM
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 17:17:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 433C11570;
 Thu,  3 Oct 2019 10:17:04 -0700 (PDT)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3E98F3F739;
 Thu,  3 Oct 2019 10:17:03 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/8] arm64: Convert entry.S synchronous exception handling to C
Date: Thu,  3 Oct 2019 18:16:34 +0100
Message-Id: <20191003171642.135652-1-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_101704_992595_8EACBF5E 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Will Deacon <will@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi folks,

This series is based on Mark Rutland's 'deasm' series here[0]. This is
just the parts that related to Synchronous Exceptions.

To handle v8.2 RAS errors directly in the kernel, we need to read from
some CPU system registers immediately after taking a synchronous external
abort.
Just to be awkward, the entry assembly calls 'inherit_daif', so if we
took an external abort from a pre-emptible context, we become pre-emptible
again before calling C code. If we moved to another CPU, we can't read the
the system registers.

Ideally, for an external abort, the entry code would increase the
preempt count. Doing this in assembly isn't going to improve entry.S
readability.


Bite the bullet, and move the synchronous exception paths into C.


This series can be retrieved from:
git://linux-arm.org/linux-jm.git deasm_sync_only/v1

(which has been force-pushed since the end of the merge-window...)

Patch one has already been posted as a fix here:
https://lore.kernel.org/linux-arm-kernel/20191003170127.127278-1-james.morse@arm.com/


Bugs welcome.


Thanks,

James


[0] https://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git/log/?h=arm64/entry-deasm
[1] https://lore.kernel.org/linux-acpi/1562086280-5351-1-git-send-email-baicar@os.amperecomputing.com/


James Morse (5):
  arm64: Fix incorrect irqflag restore for priority masking for compat
  arm64: remove __exception annotations
  arm64: Add prototypes for functions called by entry.S
  arm64: Remove asmlinkage from updated functions
  arm64: entry-common: don't touch daif before bp-hardening

Mark Rutland (3):
  arm64: add local_daif_inherit()
  arm64: entry: convert el1_sync to C
  arm64: entry: convert el0_sync to C

 arch/arm64/include/asm/asm-uaccess.h |  10 -
 arch/arm64/include/asm/daifflags.h   |  16 ++
 arch/arm64/include/asm/exception.h   |  22 +-
 arch/arm64/include/asm/processor.h   |   7 +
 arch/arm64/include/asm/traps.h       |  10 -
 arch/arm64/kernel/Makefile           |   6 +-
 arch/arm64/kernel/entry-common.c     | 331 +++++++++++++++++++++++++++
 arch/arm64/kernel/entry.S            | 274 +---------------------
 arch/arm64/kernel/fpsimd.c           |   6 +-
 arch/arm64/kernel/probes/kprobes.c   |   4 -
 arch/arm64/kernel/syscall.c          |   4 +-
 arch/arm64/kernel/traps.c            |  12 +-
 arch/arm64/kernel/vmlinux.lds.S      |   3 -
 arch/arm64/mm/fault.c                |  55 ++---
 14 files changed, 409 insertions(+), 351 deletions(-)
 create mode 100644 arch/arm64/kernel/entry-common.c

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
