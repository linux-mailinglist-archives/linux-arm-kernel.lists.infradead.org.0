Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77448139D4E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 00:31:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mtKj5Hh4aCziytJd1CUp+z4iXpn5B1oLcIP9Dzd/3KU=; b=Fnp+pkI7kzCXoF
	pX0/B3o10pUOQuQ0ACIXPy6bYRYPv92dBE5v6fxkCtt3HOQtkMQdwt08K+ForG+sWssUeZgBEaXRh
	lWThQLZcWo0kPzFQcpQjEXxWbZRQVGLw8tkGccg79gCTbzu2LBXd01ealLUC9s2ehTwVR1amPng2A
	6SPbPObpA+lWe0CaKNYPI/PZTW0Uc/jRWXVSjPikW6J00Q/bmoJ8lrjIQfDYLAOUStFs+DIBVjKQ8
	CK7tqEiUQLEED4c4OaJiF50wivTECLmKTvtDRVg+Dlr74o2ihYazyGwvSmJGyXPnHol2IeoFs730R
	U4/wJqwbTmpO4z9wjqCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir9Ag-0005HW-Fq; Mon, 13 Jan 2020 23:30:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir9AY-0005GK-Hz
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 23:30:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D562711B3;
 Mon, 13 Jan 2020 15:30:48 -0800 (PST)
Received: from ewhatever.cambridge.arm.com (ewhatever.cambridge.arm.com
 [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id BA11C3F68E;
 Mon, 13 Jan 2020 15:30:47 -0800 (PST)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 0/7] arm64: Fix support for no FP/SIMD
Date: Mon, 13 Jan 2020 23:30:16 +0000
Message-Id: <20200113233023.928028-1-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_153050_682988_4DDCC1CF 
X-CRM114-Status: GOOD (  15.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, ard.biesheuvel@linaro.org, maz@kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 catalin.marinas@arm.com, will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series fixes the support for systems without FP/SIMD unit.

We detect the absence of FP/SIMD after the SMP cpus are brought
online (i.e, SYSTEM scope). This means, we allow a hotplugged
CPU to boot successfully even if it doesn't have the FP/SIMD
when we have decided otherwise at boot and have now advertised
the ELF HWCAP for the userspace. Fix this by turning this to a
BOOT_RESTRICTED_CPU_LOCAL feature to allow the detection of the
feature the very moment a CPU turns up without FP/SIMD and also
prevent a conflict after SMP boot.

The COMPAT ELF_HWCAPs were statically set to indicate the
availability of VFP. Make it dynamic to set the appropriate
bits.

Also, some of the early kernel threads (including init) could run
with their TIF_FOREIGN_FPSTATE flag set which might be inherited
by applications forked by them (e.g, modprobe from initramfs).
Now, if we detect the absence of FP/SIMD we stop clearing the
TIF flag in fpsimd_restore_current_state(). This could cause
the applications stuck in do_notify_resume() looping forever
to clear the flag. Fix this by clearing the TIF flag in
fpsimd_restore_current_state() for the tasks that may
have it set.

This series also categorises the functions dealing with fpsimd
into two :

 - Call permitted with missing FP/SIMD support. But we bail
   out early in the function. This is for functions exposed
   to the generic kernel code.

 - Calls not permitted with missing FP/SIMD support. These
   are functions which deal with the CPU/Task FP/SIMD registers
   and/or meta-data. The callers must check for the support
   before invoking them.

See the last patch in the series for details. 

Also make sure that the SVE is initialised where supported,
before the FP/SIMD is used by the kernel.

Tested with debian armel initramfs and rootfs. The arm64 doesn't
have a soft-float ABI, thus haven't tested it with 64bit userspace.

Applies on linux-aarch64 for-next/core

Changes since v2:
 - Rebase on to for-next/core, resolved conflict with the E0PD
   handling changes
 - Address comments from Catalin
     - Remove warnings from static functions
     - Add WARN_ON in may_use_simd() if called before initializing
       capabilities.
 - Add "active" hook for FP regset
 - Remove dangerous WARN_ON from KVM, replaced with an additional
   check to make sure that the FP/SIMD is always trapped.
 - Added tags from Catalin, Marc

Suzuki K Poulose (7):
  arm64: Introduce system_capabilities_finalized() marker
  arm64: fpsimd: Make sure SVE setup is complete before SIMD is used
  arm64: cpufeature: Fix the type of no FP/SIMD capability
  arm64: cpufeature: Set the FP/SIMD compat HWCAP bits properly
  arm64: ptrace: nofpsimd: Fail FP/SIMD regset operations
  arm64: signal: nofpsimd: Handle fp/simd context for signal frames
  arm64: nofpsmid: Handle TIF_FOREIGN_FPSTATE flag cleanly

 arch/arm64/include/asm/cpufeature.h |  5 +++
 arch/arm64/include/asm/kvm_host.h   |  2 +-
 arch/arm64/include/asm/simd.h       |  8 +++-
 arch/arm64/kernel/cpufeature.c      | 67 +++++++++++++++++++----------
 arch/arm64/kernel/fpsimd.c          | 30 +++++++++++--
 arch/arm64/kernel/process.c         |  2 +-
 arch/arm64/kernel/ptrace.c          | 21 +++++++++
 arch/arm64/kernel/signal.c          |  6 ++-
 arch/arm64/kernel/signal32.c        |  4 +-
 arch/arm64/kvm/hyp/switch.c         | 10 ++++-
 10 files changed, 121 insertions(+), 34 deletions(-)

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
