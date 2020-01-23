Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3866C14658C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 11:21:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gb1AL3yaCN29IOh/KnWK9iXbPahTK3Knj3FnV/9dQPE=; b=C9a
	ONtYC6/C/YYP5uVPikJm5EtIZjjyQegUZeGdvBy4qdJs5TZ3bIZAt629OijPtcU8fT/4MA0jGnq8t
	Sd4/+ImfSIVqc62qa2h995guR641wy8mIuKAqQIR/MHFS2UQQUD4L0QHl549SElyabFpCYraO3c3F
	Gaj+swReHF3u4KW7xcXnCM6Q7F8IdCFeYoomX5aFt7gSGjt6NU0BpiIr86HOBRNWBzSMiV46nQJbI
	/VdoECAmRoLLzaZtGEIp8CU0qP2xmMQs1Gb3dQ4HByxgttOOIbaFW+PvolRsj4YeGqMJuWWRZx8yR
	mkDPCVqB7ya8tFe9v1/994OwW0lF5+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuZc4-0005zQ-TD; Thu, 23 Jan 2020 10:21:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuZbj-0005yX-2z
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 10:21:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 40D1E31B;
 Thu, 23 Jan 2020 02:21:00 -0800 (PST)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.17.79])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 8A6273F6C4;
 Thu, 23 Jan 2020 02:20:56 -0800 (PST)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 00/17] arm64: return address signing
Date: Thu, 23 Jan 2020 15:50:22 +0530
Message-Id: <1579774839-19562-1-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_022103_219574_C4F410BE 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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

This series is based on Linux version v5.5-rc7.

High-level changes since v3 [1] (detailed change descriptions are in individual patches):
 - Fixed some clang related compilation issues.
 - Added a new patch "arm64: cpufeature: Fix meta-capability cpufeature check"
 - Dropped the patch "arm64: kprobe: disable probe of ptrauth instruction". This will
   be sent with armv8.6 ptrauth enhanced features patch in future.
 - Several Reviewed-by and Acked-by. 
 - Several fixes suggested by Catalin.

This series do not implement few things:
 - kdump tools may need some rework to work with ptrauth. The kdump
   tools may need the ptrauth information to strip PAC bits. This will
   be sent in a separate patch.
 - Few more ptrauth generic lkdtm tests as requested by Kees Cook.
 - Generate compile time warnings if requested Kconfig feature not 
   supported by compilers.

Feedback welcome!

Thanks,
Amit Daniel

[1]: http://lists.infradead.org/pipermail/linux-arm-kernel/2019-December/700169.html

Amit Daniel Kachhap (8):
  arm64: cpufeature: Fix meta-capability cpufeature check
  arm64: create macro to park cpu in an infinite loop
  arm64: ptrauth: Add bootup/runtime flags for __cpu_setup
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
  arm64: compile the kernel with ptrauth return address signing

Mark Rutland (1):
  arm64: unwind: strip PAC from kernel addresses

Vincenzo Frascino (1):
  kconfig: Add support for 'as-option'

 arch/arm64/Kconfig                        | 27 +++++++++++-
 arch/arm64/Makefile                       | 11 +++++
 arch/arm64/include/asm/asm_pointer_auth.h | 63 ++++++++++++++++++++++++++++
 arch/arm64/include/asm/compiler.h         | 20 +++++++++
 arch/arm64/include/asm/cpucaps.h          |  4 +-
 arch/arm64/include/asm/cpufeature.h       | 34 ++++++++++++---
 arch/arm64/include/asm/pointer_auth.h     | 54 ++++++++++++------------
 arch/arm64/include/asm/processor.h        |  3 +-
 arch/arm64/include/asm/smp.h              | 10 +++++
 arch/arm64/include/asm/stackprotector.h   |  5 +++
 arch/arm64/kernel/asm-offsets.c           | 16 +++++++
 arch/arm64/kernel/cpufeature.c            | 66 +++++++++++++++++++----------
 arch/arm64/kernel/entry.S                 |  6 +++
 arch/arm64/kernel/head.S                  | 28 +++++++------
 arch/arm64/kernel/pointer_auth.c          |  7 +---
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
 26 files changed, 411 insertions(+), 98 deletions(-)
 create mode 100644 arch/arm64/include/asm/asm_pointer_auth.h
 create mode 100644 arch/arm64/include/asm/compiler.h

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
