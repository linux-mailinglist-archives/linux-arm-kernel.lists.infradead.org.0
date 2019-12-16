Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B03F12002A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 09:48:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=yvmJyzFGf8lHYw3YXoD8hGKI1Lp5OjIIo6yfD47C4dA=; b=X1u
	i1+qg9SaxQDUXYkHKr2HUp8OthTQU4zX+wcemhdqoC7VbGR9hPZkhVDho25l+V6eyOtxY5y1kEPZk
	3jVZentu0S1nJ3HmLLA6y6XRVf1b0/zPV/eVyVNDavFNrwJP3IwPtLChhaDNlovoTDqmKr33Urmx7
	hDfg5YPEtz0NaH23chRDr8X+6mNANos0TJEPOZqnvdFc0TY8xal3YZO5OABPNLOTEQThNr46xamTP
	ukY5V5ZECve8AV47eeOMEv7nf1SLdXc/XW+L+3kyJ769i/LaWt3NFs857ImLAEkQCP0bX6TwZEg9s
	mKA6yyrBs3Idvu39oHaprD9sLa2sjnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igm2h-0004AD-07; Mon, 16 Dec 2019 08:47:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igm2S-00049Q-QF
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 08:47:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CA31B1007;
 Mon, 16 Dec 2019 00:47:33 -0800 (PST)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.0.144])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 138E23F6CF;
 Mon, 16 Dec 2019 00:50:44 -0800 (PST)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 00/16] arm64: return address signing
Date: Mon, 16 Dec 2019 14:17:02 +0530
Message-Id: <1576486038-9899-1-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_004736_941004_60E0C0FE 
X-CRM114-Status: GOOD (  13.31  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, Mark Brown <Mark.Brown@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This series improves function return address protection for the arm64 kernel, by
compiling the kernel with ARMv8.3 Pointer Authentication instructions (referred
ptrauth hereafter). This should help protect the kernel against attacks using
return-oriented programming.

This series is based on v5.5-rc2.

High-level changes since v2 [1] (detailed changes are in individual patches):
 - Added support to generate randomness for ptrauth keys for early booting task
   in primary core as suggested by Ard.
 - Modified lkdtm ptrauth test-case to change keys to cause crash instead of
   modifying the lr in the stack.
 - Resolved a clang compilation issue.
 - Re-positioned "arm64: rename ptrauth key structures to be user-specific" to
   reduce code churnings.

This series do not implement few things or have known limitations:
 - kdump tools may need some rework to work with ptrauth. The kdump
   tools may need the ptrauth information to strip PAC bits.

Feedback welcome!

Thanks,
Amit Daniel

[1]: http://lists.infradead.org/pipermail/linux-arm-kernel/2019-November/695089.html

Amit Daniel Kachhap (8):
  arm64: create macro to park cpu in an infinite loop
  arm64: ptrauth: Add bootup/runtime flags for __cpu_setup
  arm64: initialize ptrauth keys for kernel booting task
  arm64: mask PAC bits of __builtin_return_address
  arm64: __show_regs: strip PAC from lr in printk
  arm64: suspend: restore the kernel ptrauth keys
  arm64: kprobe: disable probe of ptrauth instruction
  lkdtm: arm64: test kernel pointer authentication

Kristina Martsenko (6):
  arm64: cpufeature: add pointer auth meta-capabilities
  arm64: rename ptrauth key structures to be user-specific
  arm64: install user ptrauth keys at kernel exit time
  arm64: enable ptrauth earlier
  arm64: initialize and switch ptrauth kernel keys
  arm64: compile the kernel with ptrauth return address signing

Mark Rutland (1):
  arm64: unwind: strip PAC from kernel addresses

Vincenzo Frascino (1):
  kconfig: Add support for 'as-option'

 arch/arm64/Kconfig                        | 27 +++++++++++-
 arch/arm64/Makefile                       | 11 +++++
 arch/arm64/include/asm/asm_pointer_auth.h | 59 ++++++++++++++++++++++++++
 arch/arm64/include/asm/compiler.h         | 20 +++++++++
 arch/arm64/include/asm/cpucaps.h          |  4 +-
 arch/arm64/include/asm/cpufeature.h       |  6 +--
 arch/arm64/include/asm/insn.h             | 13 +++---
 arch/arm64/include/asm/pointer_auth.h     | 54 ++++++++++++------------
 arch/arm64/include/asm/processor.h        |  3 +-
 arch/arm64/include/asm/smp.h              | 10 +++++
 arch/arm64/include/asm/stackprotector.h   |  5 +++
 arch/arm64/kernel/asm-offsets.c           | 16 +++++++
 arch/arm64/kernel/cpufeature.c            | 30 ++++++++++----
 arch/arm64/kernel/entry.S                 |  6 +++
 arch/arm64/kernel/head.S                  | 47 +++++++++++++++------
 arch/arm64/kernel/insn.c                  |  1 +
 arch/arm64/kernel/pointer_auth.c          |  7 +---
 arch/arm64/kernel/probes/decode-insn.c    |  2 +-
 arch/arm64/kernel/process.c               |  5 ++-
 arch/arm64/kernel/ptrace.c                | 16 +++----
 arch/arm64/kernel/sleep.S                 |  8 ++++
 arch/arm64/kernel/smp.c                   | 10 +++++
 arch/arm64/kernel/stacktrace.c            |  3 ++
 arch/arm64/mm/proc.S                      | 69 ++++++++++++++++++++++++++-----
 drivers/misc/lkdtm/bugs.c                 | 36 ++++++++++++++++
 drivers/misc/lkdtm/core.c                 |  1 +
 drivers/misc/lkdtm/lkdtm.h                |  1 +
 include/linux/stackprotector.h            |  2 +-
 scripts/Kconfig.include                   |  4 ++
 29 files changed, 388 insertions(+), 88 deletions(-)
 create mode 100644 arch/arm64/include/asm/asm_pointer_auth.h
 create mode 100644 arch/arm64/include/asm/compiler.h

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
