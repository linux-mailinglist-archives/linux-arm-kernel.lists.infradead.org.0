Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C802E4F3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 21:04:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=VX0iyhoqI4igGp3dAYQoBfD0ns5EkaprKXy0nGAXlyU=; b=TjA
	sR/b8KOMUer+BbV3KGswalB9pNZ9M+NPC1PDO9uzDbrpFDNkYkQMeB6jaxfMGx7q0osUmhCcvpfkC
	SkWaE1YUSPsDQu4n/lL8rTAS8leaQb9g+sDKe3JHDl+X1ZVpAkaYLnzYLBCfNzs7SuH7gXIdvlBAB
	LYV19itsIKnEvSEw+gYhP7o74LbCzCiSn1iY1x7yN3maM0WFVrE+aZd9RjPXE55dWgxCm8Ui9/sLT
	j3T+Jr/kEVEBgGHWZ8j1Jlb327HcqEUojdU6ZvK+ys+hpvRniaXf7BnYu696xJH0L3rX8m6wikw+J
	UUzYyXaR8PbhXliWWl7CrDbdIXO3sHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW3sa-0007ZR-Hn; Wed, 29 May 2019 19:04:52 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW3sT-0007YF-43
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 19:04:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D4542A78;
 Wed, 29 May 2019 12:04:36 -0700 (PDT)
Received: from moonbear.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 10D083F59C;
 Wed, 29 May 2019 12:04:34 -0700 (PDT)
From: Kristina Martsenko <kristina.martsenko@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC v2 0/7] arm64: return address signing
Date: Wed, 29 May 2019 20:03:25 +0100
Message-Id: <20190529190332.29753-1-kristina.martsenko@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_120445_179538_95AB36EC 
X-CRM114-Status: GOOD (  19.57  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Will Deacon <will.deacon@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Kachhap <Amit.Kachhap@arm.com>, Dave Martin <Dave.Martin@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This series improves function return address protection for the arm64 kernel, by
compiling the kernel with ARMv8.3 Pointer Authentication instructions. This
should help protect the kernel against attacks using return-oriented
programming.

This series is based on v5.1-rc7.

These patches were previously posted as [RFC] as part of the series to enable
pointer authentication for userspace [1].

High-level changes since RFC v1 [1] (detailed changes are listed in patches):
 - Rebased onto v5.1-rc7
 - Updated the series to handle all 5 keys, as the current kernel exposes all 5
   to userspace (previously only APIAKey)
 - Fixed support for compilers without ptrauth
 - Added support for the new -mbranch-protection option
 - Switched to only protecting non-leaf functions
 - Dropped the patch that moved keys to thread_info, as that is already done in
   commit 750319756256 (and superseded by 84931327a807)

Questions / notes:

 - The patches make use of the sign-return-address/branch-protection compiler
   options and function attributes. GCC supports both, but Clang/LLVM appears
   to only support the compiler option, not the function attribute, so with
   these patches (and CONFIG_ARM64_PTR_AUTH=y) an LLVM-built kernel will fail
   to boot on ARMv8.3 CPUs. I don't yet know why LLVM does not support it, or
   whether support can be added. This series may need to be rewritten to not
   use the attribute, and instead move the functionality to assembly, or to
   disable return address signing when building with LLVM.

 - Each task has its own pointer authentication key for use in the kernel,
   initialized during fork. On systems without much entropy during early boot,
   the earlier keys are not random. Ideally the kernel should get early
   randomness from firmware. Currently, this should be possible on UEFI systems
   that support EFI_RNG_PROTOCOL (via LINUX_EFI_RANDOM_SEED_TABLE_GUID). A
   device tree based scheme is also under discussion [2]. Another option might
   be to generate some randomness for pointer auth during kernel build time.

This series is still an RFC as there are a number of things to still look at:
 - rebase onto v5.2-rcX and the KVM guest ptrauth support
 - suspend/resume/hibernate
 - comparison of compiler options pac-ret vs pac-ret+leaf
 - ftrace, kprobes, other tracing
 - __builtin_return_address(n), kdump, other debug
 - other smaller things
 - more testing

Feedback welcome!

Thanks,
Kristina

[1] https://lore.kernel.org/linux-arm-kernel/20181005084754.20950-1-kristina.martsenko@arm.com/
[2] https://lore.kernel.org/linux-arm-kernel/20190527043336.112854-2-hsinyi@chromium.org/


Kristina Martsenko (6):
  arm64: cpufeature: add pointer auth meta-capabilities
  arm64: install user ptrauth keys at kernel exit time
  arm64: cpufeature: handle conflicts based on capability
  arm64: enable ptrauth earlier
  arm64: initialize and switch ptrauth kernel keys
  arm64: compile the kernel with ptrauth return address signing

Mark Rutland (1):
  arm64: unwind: strip PAC from kernel addresses

 arch/arm64/Kconfig                        | 16 ++++++-
 arch/arm64/Makefile                       |  6 +++
 arch/arm64/include/asm/asm_pointer_auth.h | 59 +++++++++++++++++++++++
 arch/arm64/include/asm/cpucaps.h          |  4 +-
 arch/arm64/include/asm/cpufeature.h       | 30 ++++++++++--
 arch/arm64/include/asm/pointer_auth.h     | 79 +++++++++++++++++++------------
 arch/arm64/include/asm/processor.h        |  1 +
 arch/arm64/kernel/asm-offsets.c           | 12 +++++
 arch/arm64/kernel/cpufeature.c            | 53 +++++++++++++--------
 arch/arm64/kernel/entry.S                 |  4 ++
 arch/arm64/kernel/pointer_auth.c          |  5 +-
 arch/arm64/kernel/process.c               |  2 +
 arch/arm64/kernel/smp.c                   | 10 +++-
 arch/arm64/kernel/stacktrace.c            |  3 ++
 14 files changed, 222 insertions(+), 62 deletions(-)
 create mode 100644 arch/arm64/include/asm/asm_pointer_auth.h

-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
