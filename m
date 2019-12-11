Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC56511B388
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 16:43:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UAFJ4gZUpE8W6Sq+VEKtCNHJds1AIbupHEBP7zb7SDo=; b=Qiy/mZHhXoOGaX
	YNLCzRIB0Vm8Bxfb1Pr97rn15XeCoRN2EIH8e04vkzLWmLqsPvkUEjts/xoo4SY74604nih4ruIMi
	f7Q8gTpCL3DhU9X8a+DbLf1RAgSc5YFEG1JsRiWLYZCr4Tt63H9jUu6SVVQ6Y/p1Fo4B81tm1iq/o
	GaFCrUDwA0SvO314nFK/DseyUQDogyjG1z+C0WnFVkFDC+rtmM0ljkGVIeQ0quCOkLnpO4crv7+4x
	q/EiK3JMaQFtoXv6UGHHBitfZtTeD2rjeN+3ns6nWcu93tgyjkV0x34Q9Hf/3WRcyeUsfftCuj8uf
	svrYafMFZ6K2njHGp+2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if48u-0005ls-RM; Wed, 11 Dec 2019 15:43:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if48Y-0005kw-Rv
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 15:42:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B055430E;
 Wed, 11 Dec 2019 07:42:49 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 094183F52E;
 Wed, 11 Dec 2019 07:42:49 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v4 00/12] arm64: ARMv8.5-A: Branch Target Identification
 support
Date: Wed, 11 Dec 2019 15:41:54 +0000
Message-Id: <20191211154206.46260-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_074250_993020_EB045A97 
X-CRM114-Status: GOOD (  14.97  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Andrew Jones <drjones@redhat.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-arch@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, Eugene Syromiatnikov <esyr@redhat.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, "H.J. Lu" <hjl.tools@gmail.com>,
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 =?UTF-8?q?Kristina=20Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch implements support for ARMv8.5-A Branch Target Identification
(BTI), which is a control flow integrity protection feature introduced
as part of the ARMv8.5-A extensions.

This is mainly a repost based on v5.5-rc1.

Changes:

v4:
 - Dropped patch fixing existing documentation as it has already been merged.
 - Convert WARN_ON() to WARN_ON_ONCE() in "ELF: Add ELF program property
   parsing support".
 - Added display of guarded pages to ptdump.
 - Updated for conversion of exception handling from assembler to C.

Notes:

 * GCC 9 can compile backwards-compatible BTI-enabled code with
   -mbranch-protection=bti or -mbranch-protection=standard.

 * Binutils trunk supports the new ELF note, but this wasn't in a release
   the last time I posted this series.  (The situation _might_ have changed
   in the meantime...)

   Creation of a BTI-enabled binary requires _everything_ linked in to
   be BTI-enabled.  For now ld --force-bti can be used to override this,
   but some things may break until the required C library support is in
   place.

   There is no straightforward way to mark a .s file as BTI-enabled:
   scraping the output from gcc -S works as a quick hack for now.

   readelf -n can be used to examing the program properties in an ELF
   file.

 * Runtime mmap() and mprotect() can be used to enable BTI on a
   page-by-page basis using the new PROT_BTI, but the code in the
   affected pages still needs to be written or compiled to contain the
   appopriate BTI landing pads.

Dave Martin (11):
  ELF: UAPI and Kconfig additions for ELF program properties
  ELF: Add ELF program property parsing support
  mm: Reserve asm-generic prot flag 0x10 for arch use
  arm64: Basic Branch Target Identification support
  elf: Allow arch to tweak initial mmap prot flags
  arm64: elf: Enable BTI at exec based on ELF program properties
  arm64: BTI: Decode BYTPE bits when printing PSTATE
  arm64: unify native/compat instruction skipping
  arm64: traps: Shuffle code to eliminate forward declarations
  arm64: BTI: Reset BTYPE when skipping emulated instructions
  KVM: arm64: BTI: Reset BTYPE when skipping emulated instructions

Mark Brown (1):
  arm64: mm: Display guarded pages in ptdump

 Documentation/arm64/cpu-feature-registers.rst |   2 +
 Documentation/arm64/elf_hwcaps.rst            |   4 +
 arch/arm64/Kconfig                            |  29 ++++
 arch/arm64/include/asm/cpucaps.h              |   3 +-
 arch/arm64/include/asm/cpufeature.h           |   6 +
 arch/arm64/include/asm/elf.h                  |  50 ++++++
 arch/arm64/include/asm/esr.h                  |   2 +-
 arch/arm64/include/asm/exception.h            |   1 +
 arch/arm64/include/asm/hwcap.h                |   1 +
 arch/arm64/include/asm/kvm_emulate.h          |   6 +-
 arch/arm64/include/asm/mman.h                 |  37 +++++
 arch/arm64/include/asm/pgtable-hwdef.h        |   1 +
 arch/arm64/include/asm/pgtable.h              |   2 +-
 arch/arm64/include/asm/ptrace.h               |   8 +
 arch/arm64/include/asm/sysreg.h               |   4 +
 arch/arm64/include/uapi/asm/hwcap.h           |   1 +
 arch/arm64/include/uapi/asm/mman.h            |   9 ++
 arch/arm64/include/uapi/asm/ptrace.h          |   1 +
 arch/arm64/kernel/cpufeature.c                |  33 ++++
 arch/arm64/kernel/cpuinfo.c                   |   1 +
 arch/arm64/kernel/entry-common.c              |  11 ++
 arch/arm64/kernel/process.c                   |  36 ++++-
 arch/arm64/kernel/ptrace.c                    |   2 +-
 arch/arm64/kernel/signal.c                    |  16 ++
 arch/arm64/kernel/syscall.c                   |  18 +++
 arch/arm64/kernel/traps.c                     | 127 +++++++--------
 arch/arm64/mm/dump.c                          |   5 +
 fs/Kconfig.binfmt                             |   6 +
 fs/binfmt_elf.c                               | 145 +++++++++++++++++-
 fs/compat_binfmt_elf.c                        |   4 +
 include/linux/elf.h                           |  43 ++++++
 include/linux/mm.h                            |   3 +
 include/uapi/asm-generic/mman-common.h        |   1 +
 include/uapi/linux/elf.h                      |  11 ++
 34 files changed, 554 insertions(+), 75 deletions(-)
 create mode 100644 arch/arm64/include/asm/mman.h
 create mode 100644 arch/arm64/include/uapi/asm/mman.h

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
