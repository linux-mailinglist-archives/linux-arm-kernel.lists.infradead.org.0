Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0483817B6C8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 07:36:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=yYTIu1qt2zmONM4dWV0YkbGiE4ZtEeBmUZT5L86P9oo=; b=JSE
	0KT0Prfak89WvLWgNdF+iYLW1SqXlwMY8mWLJjpSyi6YZYdA/5SliesORpIR66kB6jnzKevx6X9/r
	ZyaS0hXd8Vlon6Ci82wqra9tCvVKNUzPADqBL+xxW2RWKOevYDdP0Fm4HIHv1ERj+NMmW4/hV3sHK
	cAMTNbfmsaFzWPDn7w9obg2aHnc/X4fnCMewE8aLTOkiK+QJbdVCg7WPkHA/w+320y79wQkIRYcVf
	LuhaS7oJBQXwaCSfD7il6wWMPSll/y6yz/kqsd2nrcnmX6ZO7C2zv0Gyn9+9/UDU/jqNsWvNDq/hG
	0VSaap90eVUyvn8k7clHhbrC10oTmCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA6aQ-0004dP-PV; Fri, 06 Mar 2020 06:35:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA6aF-0004cV-Vn
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 06:35:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A5A1330E;
 Thu,  5 Mar 2020 22:35:38 -0800 (PST)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.17.32])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A2BF73F6CF;
 Thu,  5 Mar 2020 22:39:30 -0800 (PST)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v6 00/18] arm64: return address signing
Date: Fri,  6 Mar 2020 12:05:07 +0530
Message-Id: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_223544_112805_49DB4D22 
X-CRM114-Status: GOOD (  15.34  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>
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

Changes since v5 [1]:
 - Added a new patch(arm64: cpufeature: Move cpu capability..) to move cpucapability
   type helpers in cpufeature.c file. This makes adding new cpucapability easier.
 - Moved kernel key restore to function __cpu_setup(proc.S) as suggested by Catalin.
 - More comments for as-option Kconfig option for concerns raised by Masahiro.
 - Clarified comments for -march=armv8.3-a non-integrated assembler option.

Changes since v4 [2]:
 - Rebased the patch series to v5.6-rc2.
 - Patch "arm64: cpufeature: Fix meta-capability" updated as per Suzuki's
   review comments.

Some additional work not implemented below will be taken up separately:
 - kdump tools may need some rework to work with ptrauth. The kdump
   tools may need the ptrauth information to strip PAC bits. This will
   be sent in a separate patch.
 - Few more ptrauth generic lkdtm tests as requested by Kees Cook.
 - Generate compile time warnings if requested Kconfig feature not 
   supported by compilers.

This series is based on Linux version v5.6-rc4. This complete series can be
found at (git://linux-arm.org/linux-ak.git PAC_mainline_v6) for reference.

Feedback welcome!

Thanks,
Amit Daniel

[1]: http://lists.infradead.org/pipermail/linux-arm-kernel/2020-February/711699.html 
[2]: http://lists.infradead.org/pipermail/linux-arm-kernel/2020-January/707567.html

Amit Daniel Kachhap (9):
  arm64: cpufeature: Fix meta-capability cpufeature check
  arm64: create macro to park cpu in an infinite loop
  arm64: ptrauth: Add bootup/runtime flags for __cpu_setup
  arm64: cpufeature: Move cpu capability helpers inside C file
  arm64: initialize ptrauth keys for kernel booting task
  arm64: mask PAC bits of __builtin_return_address
  arm64: __show_regs: strip PAC from lr in printk
  arm64: suspend: restore the kernel ptrauth keys
  lkdtm: arm64: test kernel pointer authentication

Kristina Martsenko (7):
  arm64: cpufeature: add pointer auth meta-capabilities
  arm64: rename ptrauth key structures to be user-specific
  arm64: install user ptrauth keys at kernel exit time
  arm64: cpufeature: handle conflicts based on capability
  arm64: enable ptrauth earlier
  arm64: initialize and switch ptrauth kernel keys
  arm64: compile the kernel with ptrauth return address 
Mark Rutland (1):
  arm64: unwind: strip PAC from kernel addresses

Vincenzo Frascino (1):
  kconfig: Add support for 'as-option'

 arch/arm64/Kconfig                        | 27 +++++++++-
 arch/arm64/Makefile                       | 11 ++++
 arch/arm64/include/asm/asm_pointer_auth.h | 65 +++++++++++++++++++++++
 arch/arm64/include/asm/compiler.h         | 20 +++++++
 arch/arm64/include/asm/cpucaps.h          |  4 +-
 arch/arm64/include/asm/cpufeature.h       | 39 +++++++-------
 arch/arm64/include/asm/pointer_auth.h     | 54 +++++++++----------
 arch/arm64/include/asm/processor.h        |  3 +-
 arch/arm64/include/asm/smp.h              | 10 ++++
 arch/arm64/include/asm/stackprotector.h   |  5 ++
 arch/arm64/kernel/asm-offsets.c           | 16 ++++++
 arch/arm64/kernel/cpufeature.c            | 87 +++++++++++++++++++++++--------
 arch/arm64/kernel/entry.S                 |  6 +++
 arch/arm64/kernel/head.S                  | 27 +++++-----
 arch/arm64/kernel/pointer_auth.c          |  7 +--
 arch/arm64/kernel/process.c               |  5 +-
 arch/arm64/kernel/ptrace.c                | 16 +++---
 arch/arm64/kernel/sleep.S                 |  2 +
 arch/arm64/kernel/smp.c                   | 10 ++++
 arch/arm64/kernel/stacktrace.c            |  3 ++
 arch/arm64/mm/proc.S                      | 71 +++++++++++++++++++++----
 drivers/misc/lkdtm/bugs.c                 | 36 +++++++++++++
 drivers/misc/lkdtm/core.c                 |  1 +
 drivers/misc/lkdtm/lkdtm.h                |  1 +
 include/linux/stackprotector.h            |  2 +-
 scripts/Kconfig.include                   |  6 +++
 26 files changed, 424 insertions(+), 110 deletions(-)
 create mode 100644 arch/arm64/include/asm/asm_pointer_auth.h
 create mode 100644 arch/arm64/include/asm/compiler.h

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
