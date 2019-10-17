Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB52DA70C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 10:16:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=GYK0Lj84M4nhNPvMPRwzGKKEmuWBVN+GNsfy6nz5uu0=; b=W5t
	zvmRV5TyC7RGRrUr2+FQ9Q7e0VPhQyCOTuVyFttjqbbh9C12UjnsWduBP2A/ImHeSF6vDgbo5Djnt
	MjeaKWRbof2a8FgY+WQN7dMReYLn2VkWpit6xMONAiE56QtzYDcVpOcDGwbMGHQQ5vrKbwW7njVmU
	v2JDr7Q4/6bSS7YHT65iwfDqhPt/tGjVww//mKDqGw/HZ05iMYz6zmIv6F0e22ef1GNWkiaYnVTBD
	pKyfrKnVXlMueXxWgPOvj1/5awq0uMIBsObER5f8mmS+neRbjnDxxs2hsPJ83CWl10Pr5CUbtwJBv
	nAcR5jr1++ur0pfy9cHxyanL/f8R9+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL0x1-0002pE-Gx; Thu, 17 Oct 2019 08:16:03 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL0vt-0000s9-HQ
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 08:14:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A5C4328;
 Thu, 17 Oct 2019 01:14:40 -0700 (PDT)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.0.144])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 08A103F6C4;
 Thu, 17 Oct 2019 01:14:36 -0700 (PDT)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 00/11] arm64: return address signing
Date: Thu, 17 Oct 2019 13:44:14 +0530
Message-Id: <1571300065-10236-1-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_011453_661530_2A3C1E69 
X-CRM114-Status: GOOD (  13.17  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
compiling the kernel with ARMv8.3 Pointer Authentication instructions (ptrauth
referred hereafter). This should help protect the kernel against attacks using
return-oriented programming.

Patch 9 and 10 are newly added and hence sent as RFC.

This series is based on v5.4-rc2.

High-level changes since RFC v2 [1] (detailed changes are listed in patches):
 - Moved enabling, key setup and context switch to assembly, to avoid using
   the pointer auth compiler attribute which Clang does not support (thanks
   Suzuki for the initial code!).
 - Added code to restore keys after cpu resume.
 - __builtin_return_address will now mask pac bits.
 - Changed gcc compiler options to add ptrauth instructions in all functions
   and not just non-leaf functions. This may be revisited later due to 
   performance concerns.
 - Rebased onto v5.4-rc2.
 - Added Reviewed-by's.

This series do not implement few things or have known limitations:
 - ftrace function tracer does not work with this series. But after using
   the posted series [2] based on -fpatchable-function-entry, it works fine.
 - kprobes/uprobes and other tracing may need some rework with ptrauth.
 - kdump, other debug may need some rework with ptrauth.
 - Generate some randomness for ptrauth keys during kernel early booting.

Feedback welcome!

Thanks,
Amit Daniel

[1] https://lore.kernel.org/linux-arm-kernel/20190529190332.29753-1-kristina.martsenko@arm.com/
[2] https://patchwork.kernel.org/patch/10803279/

Amit Daniel Kachhap (3):
  arm64: create macro to park cpu in infinite loop
  arm64: suspend: restore the kernel ptrauth keys
  arm64: mask PAC bits of __builtin_return_address

Kristina Martsenko (8):
  arm64: cpufeature: add pointer auth meta-capabilities
  arm64: install user ptrauth keys at kernel exit time
  arm64: cpufeature: handle conflicts based on capability
  arm64: enable ptrauth earlier
  arm64: rename ptrauth key structures to be user-specific
  arm64: initialize and switch ptrauth kernel keys
  arm64: unwind: strip PAC from kernel addresses
  arm64: compile the kernel with ptrauth return address signing

 arch/arm64/Kconfig                        | 21 ++++++++-
 arch/arm64/Makefile                       |  6 +++
 arch/arm64/include/asm/asm_pointer_auth.h | 59 +++++++++++++++++++++++
 arch/arm64/include/asm/compiler.h         | 15 ++++++
 arch/arm64/include/asm/cpucaps.h          |  4 +-
 arch/arm64/include/asm/cpufeature.h       | 33 ++++++++++---
 arch/arm64/include/asm/pointer_auth.h     | 50 ++++++++------------
 arch/arm64/include/asm/processor.h        |  3 +-
 arch/arm64/include/asm/smp.h              |  3 ++
 arch/arm64/kernel/asm-offsets.c           | 15 ++++++
 arch/arm64/kernel/cpufeature.c            | 53 ++++++++++++---------
 arch/arm64/kernel/entry.S                 |  6 +++
 arch/arm64/kernel/head.S                  | 78 +++++++++++++++++++++++++++----
 arch/arm64/kernel/pointer_auth.c          |  7 +--
 arch/arm64/kernel/process.c               |  3 +-
 arch/arm64/kernel/ptrace.c                | 16 +++----
 arch/arm64/kernel/sleep.S                 |  6 +++
 arch/arm64/kernel/smp.c                   |  8 ++++
 arch/arm64/kernel/stacktrace.c            |  3 ++
 19 files changed, 306 insertions(+), 83 deletions(-)
 create mode 100644 arch/arm64/include/asm/asm_pointer_auth.h
 create mode 100644 arch/arm64/include/asm/compiler.h

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
