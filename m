Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F8CB295A4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 12:25:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=WDv2ySBp/cL11VGpQi0MjV6mgKjfNhjna3gbJbeogHk=; b=bhK
	uRGgrz0rYb/AitYSmrmjs621V3ro1KUnMxEaGtbHl1vDRrIlNPUOVYBt9gx0KXdW9OGmDDDGdMfNu
	tXN22oNIPEtFQcIE8AAquul76BT2LnxzAExwR8Vc6DrAggUmYvnt1IZJUwnAQwgQ7TP/JZHdaHh6C
	rqutQJQ/5nYUXCH9ntEQi7RBWhEA0PzWPmLlUoid43jCvYj2VhJ9mUeNS6nnJ8D7516zRENK7rJWL
	mCbIpZsBSBI0OjNfWGbs+GEQg94h6yb1/6ROPpTwSMP3gCKkTOu5P4aZ6Zpw4oOJcQY5mJo+1SMZd
	EaXttIe6NbW9DD8G/r92v1Xjp4fP6BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU7OY-0000Aw-HC; Fri, 24 May 2019 10:25:50 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU7OR-00009c-Vs
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 10:25:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3DD1B15A2;
 Fri, 24 May 2019 03:25:41 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D6EB33F703;
 Fri, 24 May 2019 03:25:38 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/8] arm64: ARMv8.5-A: Branch Target Identification support
Date: Fri, 24 May 2019 11:25:25 +0100
Message-Id: <1558693533-13465-1-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_032544_038077_83F424E3 
X-CRM114-Status: GOOD (  16.61  )
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
Cc: linux-arch@vger.kernel.org, "H.J. Lu" <hjl.tools@gmail.com>,
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Andrew Jones <drjones@redhat.com>,
 Paul Elliott <paul.elliott@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 Richard Henderson <richard.henderson@linaro.org>, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Kristina=20Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Sudakshina Das <sudi.das@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch implements support for ARMv8.5-A Branch Target Identification
(BTI), which is a control flow integrity protection feature introduced
as part of the ARMv8.5-A extensions [1].

The series is based on v5.2-rc1.

Patch 1 is from Yu-Cheng Yu of Intel, providing generic support
for parsing the ELF NT_GNU_PROPERTY_TYPE_0 note.  It makes sense to
share this mechanism with x86 rather than reinventing it.


Various things need nailing down before this can be upstreamable:

 * Not tested with hugepages yet.  (If anyone has any suggestions about
   how best to do that, please shout!)

 * The NT_GNU_PROPERTY_TYPE_0 ELF note parsing support is not upstream
   yet and may be subject to further change.

Todo:

 * Add BTI protection in the vDSO, so that user code can no longer
   jump to random locations in there.  Lack of this protection doesn't
   break anything, however.


Tested on the ARM Fast Model.

Notes:

 * GCC 9 can compile backwards-compatible BTI-enabled code with
   -mbranch-protection=bti or -mbranch-protection=standard.

 * Binutils trunk supports the new ELF note, but this isn't in a release
   yet.

   Creation of a BTI-enabled binary requires _everything_ linked in to
   be BTI-enabled.  For now ld --force-bti can be used to override this,
   but some things may break until the required C library support is in
   place.

   There is no straightforward way to mark a .s file as BTI-enabled:
   scraping the output from gcc -S works as a quick hack for now.

   readelf -n can be used to examing the program properties in an ELF
   file.

 * Runtime mmap() and mprotect() can be used to enable BTI on a
   page-by-page basis using the new PROT_BTI_GUARDED, but the code in
   the affected pages still needs to be written or compiled to contain
   the appopriate BTI landing pads.


Dave Martin (7):
  mm: Reserve asm-generic prot flag 0x10 for arch use
  arm64: docs: cpu-feature-registers: Document ID_AA64PFR1_EL1
  arm64: Basic Branch Target Identification support
  elf: Parse program properties before destroying the old process
  elf: Allow arch to tweak initial mmap prot flags
  arm64: elf: Enable BTI at exec based on ELF program properties
  arm64: BTI: Decode BYTPE bits when printing PSTATE

Yu-cheng Yu (1):
  binfmt_elf: Extract .note.gnu.property from an ELF file

 Documentation/arm64/cpu-feature-registers.txt |  18 +-
 Documentation/arm64/elf_hwcaps.txt            |   4 +
 arch/arm64/Kconfig                            |  26 ++
 arch/arm64/include/asm/cpucaps.h              |   3 +-
 arch/arm64/include/asm/cpufeature.h           |   6 +
 arch/arm64/include/asm/elf.h                  |  28 ++
 arch/arm64/include/asm/esr.h                  |   2 +-
 arch/arm64/include/asm/hwcap.h                |   1 +
 arch/arm64/include/asm/mman.h                 |  33 +++
 arch/arm64/include/asm/pgtable-hwdef.h        |   1 +
 arch/arm64/include/asm/pgtable.h              |   2 +-
 arch/arm64/include/asm/ptrace.h               |   3 +
 arch/arm64/include/asm/sysreg.h               |   2 +
 arch/arm64/include/uapi/asm/hwcap.h           |   1 +
 arch/arm64/include/uapi/asm/mman.h            |   9 +
 arch/arm64/include/uapi/asm/ptrace.h          |   1 +
 arch/arm64/kernel/cpufeature.c                |  17 ++
 arch/arm64/kernel/cpuinfo.c                   |   1 +
 arch/arm64/kernel/entry.S                     |  11 +
 arch/arm64/kernel/process.c                   |  64 ++++-
 arch/arm64/kernel/ptrace.c                    |   2 +-
 arch/arm64/kernel/signal.c                    |   5 +
 arch/arm64/kernel/syscall.c                   |   1 +
 arch/arm64/kernel/traps.c                     |   7 +
 fs/Kconfig.binfmt                             |   7 +
 fs/Makefile                                   |   1 +
 fs/binfmt_elf.c                               |  31 ++-
 fs/gnu_property.c                             | 363 ++++++++++++++++++++++++++
 include/linux/elf.h                           |  32 +++
 include/linux/mm.h                            |   3 +
 include/uapi/asm-generic/mman-common.h        |   1 +
 include/uapi/linux/elf.h                      |  14 +
 32 files changed, 684 insertions(+), 16 deletions(-)
 create mode 100644 arch/arm64/include/asm/mman.h
 create mode 100644 arch/arm64/include/uapi/asm/mman.h
 create mode 100644 fs/gnu_property.c

-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
