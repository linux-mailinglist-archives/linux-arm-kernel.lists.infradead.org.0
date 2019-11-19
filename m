Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A7F4102470
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 13:33:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=XK1zUAjzlivY303VMRCxWRI/7gTYm+zu9vAKM5GTQEE=; b=Jbb
	u0KgBFdL0eh8sPp7UtcgPJ7tFq1nBzzH+oaSbr/mpD8gFMAO/VjEiNstE9ZQRzRYe0RZScRafsA8r
	p3TWNyf8MMv7opClryFLCDM3gSShnlAFu+1146LP4Ler+7b2yYDKwJgKin7fMixbzDLkujw+x4wfu
	ocbjYoyqa4iAG1Bpwz3oq+lM470pIq9QWbl/YR5IeRwEojgumY0j/bBsIr4nc+x5TRcdid0F5i03d
	QB0uwudyeNnwk2OpGSUHSLY7ldIHPb+7EWa8esH9L+IzJS1QYmEq82CDU1ulwBcd1yej/++GZAhEt
	qPAxmk8epyKy3OCt+qX1sxFpgx3ASzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX2h1-0006qL-Ni; Tue, 19 Nov 2019 12:33:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX2go-0006pv-QX
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 12:33:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 18E191FB;
 Tue, 19 Nov 2019 04:32:59 -0800 (PST)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.0.144])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 9C87E3F703;
 Tue, 19 Nov 2019 04:32:55 -0800 (PST)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 00/14] arm64: return address signing
Date: Tue, 19 Nov 2019 18:02:12 +0530
Message-Id: <1574166746-27197-1-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_043302_946591_4A3FD66E 
X-CRM114-Status: GOOD (  13.91  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
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

This series is based on v5.4-rc8.

High-level changes since v1 [1] (detailed changes are listed in patches):
 - Dropped patch "arm64: cpufeature: handle conflicts based on capability"
   as pointed by Suzuki.
 - Patch 4, 10, 12 and 14 are added newly added.
 - Patch 12 adds support to block probe of authenticate ptrauth instructions.
 - Patch 14 adds support for lkdtm to test ptrauth.
 - In the last version if secondary cpus do have ptrauth and primary cpu do not
   then the secondary will silently disable ptrauth and keep running. This version
   creates panic in this case as suggested by Suzuki.
 - Many suggestion from James implemented.

This series do not implement few things or have known limitations:
 - kdump tool may need some rework to work with ptrauth.
 - Generate/Get some randomness for ptrauth keys during kernel early booting.

Feedback welcome!

Thanks,
Amit Daniel

[1]: https://www.spinics.net/lists/arm-kernel/msg761991.html

Amit Daniel Kachhap (7):
  arm64: create macro to park cpu in an infinite loop
  arm64: ptrauth: Add bootup/runtime flags for __cpu_setup
  arm64: mask PAC bits of __builtin_return_address
  arm64: __show_regs: strip PAC from lr in printk
  arm64: suspend: restore the kernel ptrauth keys
  arm64: kprobe: disable probe of ptrauth instruction
  lkdtm: arm64: test kernel pointer authentication

Kristina Martsenko (6):
  arm64: cpufeature: add pointer auth meta-capabilities
  arm64: install user ptrauth keys at kernel exit time
  arm64: enable ptrauth earlier
  arm64: rename ptrauth key structures to be user-specific
  arm64: initialize and switch ptrauth kernel keys
  arm64: compile the kernel with ptrauth return address signing

Mark Rutland (1):
  arm64: unwind: strip PAC from kernel addresses

 arch/arm64/Kconfig                        | 22 +++++++++-
 arch/arm64/Makefile                       |  6 +++
 arch/arm64/include/asm/asm_pointer_auth.h | 59 ++++++++++++++++++++++++++
 arch/arm64/include/asm/compiler.h         | 17 ++++++++
 arch/arm64/include/asm/cpucaps.h          |  4 +-
 arch/arm64/include/asm/cpufeature.h       |  6 +--
 arch/arm64/include/asm/insn.h             | 13 +++---
 arch/arm64/include/asm/pointer_auth.h     | 57 +++++++++++--------------
 arch/arm64/include/asm/processor.h        |  3 +-
 arch/arm64/include/asm/smp.h              | 10 +++++
 arch/arm64/kernel/asm-offsets.c           | 16 +++++++
 arch/arm64/kernel/cpufeature.c            | 30 +++++++++----
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
 arch/arm64/mm/proc.S                      | 70 ++++++++++++++++++++++++++-----
 drivers/misc/lkdtm/bugs.c                 | 17 ++++++++
 drivers/misc/lkdtm/core.c                 |  1 +
 drivers/misc/lkdtm/lkdtm.h                |  1 +
 26 files changed, 345 insertions(+), 92 deletions(-)
 create mode 100644 arch/arm64/include/asm/asm_pointer_auth.h
 create mode 100644 arch/arm64/include/asm/compiler.h

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
