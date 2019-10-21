Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3025DF330
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 18:35:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=r+5YzMrnzxYqSkXWiLHwrlXJBIttOHLVA3BVB/SqK8I=; b=bWE
	nuu/dyp7BZMY3Rs1KosFw7vYfb8pKd2g5vEMUhJU1cFam+GLqjdsMHH5xkVyqJt+MK0AOep6eDRUj
	I73wRCUu1lCAK+3qGYYMTgvJOuukWFi11XIZsUASYfFqRBpAF1HBCgfD4kluneL1dzS7NtQS5vKYd
	MgLq391FwG+FMYjaR9/s/IAlhWKHHMXqpJz16vyM4AwOH3EMuknN0V8gPcO/Nus5zeuUJran9xwHd
	88V7kxNTuJtI+8o0kzhdGg8lILdOar6yybt13yN82kAZZBiJHX1Xjnyfhi43aWm9p9YGvLdc7kW9z
	wKL2MiHaABjnA9f3rh5+iFr37+Cyt3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMaez-0004jY-Mh; Mon, 21 Oct 2019 16:35:57 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMadp-0002el-4A
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 16:34:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D6A8E46A;
 Mon, 21 Oct 2019 09:34:33 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 99E3E3F71F;
 Mon, 21 Oct 2019 09:34:31 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/8] arm64: ftrace cleanup + FTRACE_WITH_REGS
Date: Mon, 21 Oct 2019 17:34:18 +0100
Message-Id: <20191021163426.9408-1-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_093445_215792_AC9B6C85 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: mark.rutland@arm.com, jthierry@redhat.com, will@kernel.org,
 ard.biesheuvel@linaro.org, peterz@infradead.org, catalin.marinas@arm.com,
 deller@gmx.de, jpoimboe@redhat.com, rostedt@goodmis.org,
 takahiro.akashi@linaro.org, mingo@redhat.com, james.morse@arm.com,
 jeyu@kernel.org, amit.kachhap@arm.com, svens@stackframe.org, duwe@suse.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This series is a reworked version of Torsten's v8 FTRACE_WITH_REGS
series [1]. I've tried to rework the existing code in preparatory
patches so that the patchable-function-entry bits slot in with fewer
surprises. This version is based on v5.4-rc3, and can be found in my
arm64/ftrace-with-regs branch [2].

I've added an (optional) ftrace_init_nop(), which the core code uses to
initialize callsites. This allows us to avoid a synthetic MCOUNT_ADDR
symbol, and more cleanly separates the one-time initialization of the
callsite from dynamic NOP<->CALL modification. Architectures which don't
implement this get the existing ftrace_make_nop() with MCOUNT_ADDR.

I've moved the module PLT initialization to module load time, which
simplifies runtime callsite modification. This also means that we don't
transitently mark the module text RW, and will allow for the removal of
module_disable_ro().

Since the last posting, parisc gained ftrace support using
patchable-function-entry. I've made the handling of module callsite
locations common in kernel/module.c with a new FTRACE_CALLSITE_SECTION
definition, and removed the newly redundant bits from arch/parisc.

Thanks,
Mark.

[1] https://lore.kernel.org/r/20190208150826.44EBC68DD2@newverein.lst.de
[2] git://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git arm64/ftrace-with-regs

Mark Rutland (7):
  ftrace: add ftrace_init_nop()
  module/ftrace: handle patchable-function-entry
  arm64: module: rework special section handling
  arm64: module/ftrace: intialize PLT at load time
  arm64: insn: add encoder for MOV (register)
  arm64: asm-offsets: add S_FP
  arm64: ftrace: minimize ifdeffery

Torsten Duwe (1):
  arm64: implement ftrace with regs

 arch/arm64/Kconfig               |   2 +
 arch/arm64/Makefile              |   5 ++
 arch/arm64/include/asm/ftrace.h  |  23 +++++++
 arch/arm64/include/asm/insn.h    |   3 +
 arch/arm64/include/asm/module.h  |   2 +-
 arch/arm64/kernel/asm-offsets.c  |   1 +
 arch/arm64/kernel/entry-ftrace.S | 140 +++++++++++++++++++++++++++++++++++++--
 arch/arm64/kernel/ftrace.c       | 123 ++++++++++++++++++++--------------
 arch/arm64/kernel/insn.c         |  13 ++++
 arch/arm64/kernel/module-plts.c  |   3 +-
 arch/arm64/kernel/module.c       |  57 +++++++++++++---
 arch/parisc/Makefile             |   1 -
 arch/parisc/kernel/module.c      |  10 ++-
 arch/parisc/kernel/module.lds    |   7 --
 include/linux/ftrace.h           |   5 ++
 kernel/module.c                  |   2 +-
 kernel/trace/ftrace.c            |  13 +++-
 17 files changed, 330 insertions(+), 80 deletions(-)
 delete mode 100644 arch/parisc/kernel/module.lds

-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
