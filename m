Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60DCF20398
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 12:38:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=VYxvgIOD+44n3TwrO6MH1Ov9IbH3JHnY7l+9tRuGc0U=; b=lf6
	mVIClHIyjGhMMOGheGgF96xkMVH0wFjGyTePLZH7O0YiKAl+hFSpMPkAbwZ+pCPHe0pImcJUP1vk6
	FMh/YIeRqK7RVkb2+qCJ4VdrSEOIADxcFnmu6RPhl5CpIgVLdg+u0FbdoovP/LGHb935tIctQxYyk
	jlIKdZEQt4zrA8OuIrfhxO5tFsVdIAwKxBKAR9sP5DsHdraXir5eaVA/RbHy/JfkxSRwTcmboxg4p
	OIQ/kR12G7P/cmU5arEsZJXLDJyKiqUWoFaTUJ5EiebmPkDx16sD39Isws2tUUustG06hpaoaxnBb
	2n/JhfHOHmNxpimn3wCAf/zgZQ2Hkcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRDm4-0005Vo-Pc; Thu, 16 May 2019 10:38:08 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRDlw-0005Uu-5U
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 10:38:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4CD2419BF;
 Thu, 16 May 2019 03:37:57 -0700 (PDT)
Received: from e121650-lin.cambridge.arm.com (e121650-lin.cambridge.arm.com
 [10.1.196.108])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C4E5B3F703;
 Thu, 16 May 2019 03:37:55 -0700 (PDT)
From: Raphael Gault <raphael.gault@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [RFC V2 00/16] objtool: Add support for Arm64
Date: Thu, 16 May 2019 11:36:39 +0100
Message-Id: <20190516103655.5509-1-raphael.gault@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_033800_221280_44F97D13 
X-CRM114-Status: GOOD (  17.78  )
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
Cc: julien.thierry@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 will.deacon@arm.com, Raphael Gault <raphael.gault@arm.com>,
 jpoimboe@redhat.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As of now, objtool only supports the x86_64 architecture but the
groundwork has already been done in order to add support for other
architectures without too much effort.

This series of patches adds support for the arm64 architecture
based on the Armv8.5 Architecture Reference Manual.

Objtool will be a valuable tool to progress and provide more guarentees
on live patching which is a work in progress for arm64.

Once we have the base of objtool working the next steps will be to
port Peter Z's uaccess validation for arm64.

RFC: In order to differentiate the different uses of the `brk`
instruction on arm64 I intended to use the
`include/generated/asm-offsets.h` header file (copying it to
tools/include/generated/asm-offsets.h). However since in is
generated later than objtool in the build process I wasn't able to do
it. I wanted to use it to have access to the info about the
`struct alt_instr` and `struct bug_entry`.

Noteworthy points:
* I still haven't figured out how to detect switch-tables on arm64. I
have a better understanding of them but still haven't implemented checks
as it doesn't look trivial at all.
* I still use the `arch_is_sibling_call` function to differentiate the
use cases of the `br` instruction on arm64. Even though I updated the
checks, it is still based on going back in the instruction stream, which
as Peter Z. pointed out is not safe. I shall work on an alternative
solution.

Changes from V2:
* Rebase on the -tip tree (which contains the latest objtool features)
* Split into more precise patches in order to highlight the changes
that were made.
* Correct patches coding style to comply with linux's style.
* Refactor some code to avoid generating a fake instruction when
decoding load/store of pairs of registers.
* Make more elegant checks for arch-dependent features (switch-tables,
special sections)
* Include some patches to add exceptions in the kernel to prevent
objtool from checking/warning in particular cases.
* Introduce a new instruction type (INSN_UNKNOWN) to handle the cases
when some data is stored inside a section marked as containing
executable instructions.


Raphael Gault (16):
  objtool: Add abstraction for computation of symbols offsets
  objtool: orc: Refactor ORC API for other architectures to implement.
  objtool: Move registers and control flow to arch-dependent code
  objtool: arm64: Add required implementation for supporting the aarch64
    architecture in objtool.
  objtool: arm64: Handle hypercalls as nops
  arm64: alternative: Mark .altinstr_replacement as containing
    executable instructions
  objtool: special: Adapt special section handling
  objtool: arm64: Adapt the stack frame checks for arm architecture
  arm64: assembler: Add macro to annotate asm function having non
    standard stack-frame.
  arm64: sleep: Prevent stack frame warnings from objtool
  objtool: arm64: Enable stack validation for arm64
  arm64: kvm: Annotate non-standard stack frame functions
  arm64: kernel: Add exception on kuser32 to prevent stack analysis
  arm64: crypto: Add exceptions for crypto object to prevent stack
    analysis
  objtool: Introduce INSN_UNKNOWN type
  arm64: kernel: Annotate non-standard stack frame functions

 arch/arm64/Kconfig                            |    1 +
 arch/arm64/crypto/Makefile                    |    3 +
 arch/arm64/include/asm/alternative.h          |    2 +-
 arch/arm64/include/asm/assembler.h            |   13 +
 arch/arm64/kernel/Makefile                    |    3 +
 arch/arm64/kernel/hyp-stub.S                  |    2 +
 arch/arm64/kernel/sleep.S                     |    4 +
 arch/arm64/kvm/hyp-init.S                     |    2 +
 arch/arm64/kvm/hyp/entry.S                    |    2 +
 tools/objtool/Build                           |    2 -
 tools/objtool/arch.h                          |   21 +-
 tools/objtool/arch/arm64/Build                |    8 +
 tools/objtool/arch/arm64/bit_operations.c     |   67 +
 tools/objtool/arch/arm64/decode.c             | 2809 +++++++++++++++++
 .../objtool/arch/arm64/include/arch_special.h |   42 +
 .../arch/arm64/include/asm/orc_types.h        |   96 +
 .../arch/arm64/include/bit_operations.h       |   24 +
 tools/objtool/arch/arm64/include/cfi.h        |   74 +
 .../objtool/arch/arm64/include/insn_decode.h  |  211 ++
 tools/objtool/arch/arm64/orc_dump.c           |   26 +
 tools/objtool/arch/arm64/orc_gen.c            |   40 +
 tools/objtool/arch/x86/Build                  |    3 +
 tools/objtool/arch/x86/decode.c               |   16 +
 tools/objtool/arch/x86/include/arch_special.h |   45 +
 tools/objtool/{ => arch/x86/include}/cfi.h    |    0
 tools/objtool/{ => arch/x86}/orc_dump.c       |    4 +-
 tools/objtool/{ => arch/x86}/orc_gen.c        |  104 +-
 tools/objtool/check.c                         |  239 +-
 tools/objtool/check.h                         |    1 +
 tools/objtool/elf.c                           |    3 +-
 tools/objtool/orc.h                           |    4 +-
 tools/objtool/special.c                       |   28 +-
 tools/objtool/special.h                       |    3 +
 33 files changed, 3753 insertions(+), 149 deletions(-)
 create mode 100644 tools/objtool/arch/arm64/Build
 create mode 100644 tools/objtool/arch/arm64/bit_operations.c
 create mode 100644 tools/objtool/arch/arm64/decode.c
 create mode 100644 tools/objtool/arch/arm64/include/arch_special.h
 create mode 100644 tools/objtool/arch/arm64/include/asm/orc_types.h
 create mode 100644 tools/objtool/arch/arm64/include/bit_operations.h
 create mode 100644 tools/objtool/arch/arm64/include/cfi.h
 create mode 100644 tools/objtool/arch/arm64/include/insn_decode.h
 create mode 100644 tools/objtool/arch/arm64/orc_dump.c
 create mode 100644 tools/objtool/arch/arm64/orc_gen.c
 create mode 100644 tools/objtool/arch/x86/include/arch_special.h
 rename tools/objtool/{ => arch/x86/include}/cfi.h (100%)
 rename tools/objtool/{ => arch/x86}/orc_dump.c (98%)
 rename tools/objtool/{ => arch/x86}/orc_gen.c (69%)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
