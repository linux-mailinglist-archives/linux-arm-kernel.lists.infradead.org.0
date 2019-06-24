Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 995C450637
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 11:56:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Z3deDDudvCgZDYxs8bLjZ+lnk9v4wwGKrBmXZwk6gXo=; b=h6x
	PfQiE9BZvkMDsBvlf0g63xxUB7gKhVa9kOP7p6r2iPEvDnZ3BDngelnxpErIJlEXhvo9mZv2x+B3l
	qGDK+GIVAcDUxdGdMNa14XSngdGxdz+0EwxuGiTQSOp4fgk5HqMv0Vp+yeFUULtU+EUAemeh9nRrb
	netOWWXxHIp298za2eUwmJtQ0JzV+H0Gs72gPXIfdv0+pJ98bL5xdi6bHeukikasPHOynWdZL2J5J
	bm5stN8V2jkLb1yG82dhDtO3Epci/tx96Slcfy6rGOZ+6hh7aYbjLTZ0QGEyHJ+SoKh64L0kd/IkF
	sp4WtbGO4PMZi3NUrpiOI8ZazYepKDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfLiZ-0005VQ-DS; Mon, 24 Jun 2019 09:56:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfLhv-0005An-AI
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 09:56:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ED7202B;
 Mon, 24 Jun 2019 02:56:10 -0700 (PDT)
Received: from e121650-lin.cambridge.arm.com (e121650-lin.cambridge.arm.com
 [10.1.196.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CDF733F71E;
 Mon, 24 Jun 2019 02:56:09 -0700 (PDT)
From: Raphael Gault <raphael.gault@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [RFC V3 00/18] objtool: Add support for arm64
Date: Mon, 24 Jun 2019 10:55:30 +0100
Message-Id: <20190624095548.8578-1-raphael.gault@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_025615_445909_2C96AD07 
X-CRM114-Status: GOOD (  14.28  )
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

Changes since previous version:
* Rebased on tip/master: Note that I had to re-expose the
`struct alternative` using check.h because it is now used outside of
check.c.
* Reorder commits for a more coherent progression
* Introduce GCC plugin to help detect switch-tables for arm64
This plugins could be improve: It plugs in after the RTL control flow
graph passes but only extract information about the switch tables. I
originally intended for it to introduce new code_label/note within the
RTL representation in order to reference them and thus get the address
of the branch instruction. However I did not manage to do it properly
using gen_rtx_CODE_LABEL/emit_label_before/after. If anyone has some
experience with RTL plugins I am all ears for advices.

Raphael Gault (18):
  objtool: Add abstraction for computation of symbols offsets
  objtool: orc: Refactor ORC API for other architectures to implement.
  objtool: Move registers and control flow to arch-dependent code
  objtool: arm64: Add required implementation for supporting the aarch64
    architecture in objtool.
  objtool: special: Adapt special section handling
  objtool: arm64: Adapt the stack frame checks for arm architecture
  objtool: Introduce INSN_UNKNOWN type
  objtool: Refactor switch-tables code to support other architectures
  gcc-plugins: objtool: Add plugin to detect switch table on arm64
  objtool: arm64: Implement functions to add switch tables alternatives
  arm64: alternative: Mark .altinstr_replacement as containing
    executable instructions
  arm64: assembler: Add macro to annotate asm function having non
    standard stack-frame.
  arm64: sleep: Prevent stack frame warnings from objtool
  arm64: kvm: Annotate non-standard stack frame functions
  arm64: kernel: Add exception on kuser32 to prevent stack analysis
  arm64: crypto: Add exceptions for crypto object to prevent stack
    analysis
  arm64: kernel: Annotate non-standard stack frame functions
  objtool: arm64: Enable stack validation for arm64

 arch/arm64/Kconfig                            |    1 +
 arch/arm64/crypto/Makefile                    |    3 +
 arch/arm64/include/asm/alternative.h          |    2 +-
 arch/arm64/include/asm/assembler.h            |   13 +
 arch/arm64/kernel/Makefile                    |    3 +
 arch/arm64/kernel/hyp-stub.S                  |    2 +
 arch/arm64/kernel/sleep.S                     |    4 +
 arch/arm64/kvm/hyp-init.S                     |    2 +
 arch/arm64/kvm/hyp/entry.S                    |    2 +
 scripts/Makefile.gcc-plugins                  |    2 +
 scripts/gcc-plugins/Kconfig                   |    9 +
 .../arm64_switch_table_detection_plugin.c     |   58 +
 tools/objtool/Build                           |    2 -
 tools/objtool/arch.h                          |   21 +-
 tools/objtool/arch/arm64/Build                |    8 +
 tools/objtool/arch/arm64/arch_special.c       |  173 +
 tools/objtool/arch/arm64/bit_operations.c     |   67 +
 tools/objtool/arch/arm64/decode.c             | 2809 +++++++++++++++++
 .../objtool/arch/arm64/include/arch_special.h |   52 +
 .../arch/arm64/include/asm/orc_types.h        |   96 +
 .../arch/arm64/include/bit_operations.h       |   24 +
 tools/objtool/arch/arm64/include/cfi.h        |   74 +
 .../objtool/arch/arm64/include/insn_decode.h  |  210 ++
 tools/objtool/arch/arm64/orc_dump.c           |   26 +
 tools/objtool/arch/arm64/orc_gen.c            |   40 +
 tools/objtool/arch/x86/Build                  |    3 +
 tools/objtool/arch/x86/arch_special.c         |  101 +
 tools/objtool/arch/x86/decode.c               |   16 +
 tools/objtool/arch/x86/include/arch_special.h |   45 +
 tools/objtool/{ => arch/x86/include}/cfi.h    |    0
 tools/objtool/{ => arch/x86}/orc_dump.c       |    4 +-
 tools/objtool/{ => arch/x86}/orc_gen.c        |  104 +-
 tools/objtool/check.c                         |  309 +-
 tools/objtool/check.h                         |   10 +
 tools/objtool/elf.c                           |    3 +-
 tools/objtool/orc.h                           |    4 +-
 tools/objtool/special.c                       |   28 +-
 tools/objtool/special.h                       |   13 +-
 38 files changed, 4119 insertions(+), 224 deletions(-)
 create mode 100644 scripts/gcc-plugins/arm64_switch_table_detection_plugin.c
 create mode 100644 tools/objtool/arch/arm64/Build
 create mode 100644 tools/objtool/arch/arm64/arch_special.c
 create mode 100644 tools/objtool/arch/arm64/bit_operations.c
 create mode 100644 tools/objtool/arch/arm64/decode.c
 create mode 100644 tools/objtool/arch/arm64/include/arch_special.h
 create mode 100644 tools/objtool/arch/arm64/include/asm/orc_types.h
 create mode 100644 tools/objtool/arch/arm64/include/bit_operations.h
 create mode 100644 tools/objtool/arch/arm64/include/cfi.h
 create mode 100644 tools/objtool/arch/arm64/include/insn_decode.h
 create mode 100644 tools/objtool/arch/arm64/orc_dump.c
 create mode 100644 tools/objtool/arch/arm64/orc_gen.c
 create mode 100644 tools/objtool/arch/x86/arch_special.c
 create mode 100644 tools/objtool/arch/x86/include/arch_special.h
 rename tools/objtool/{ => arch/x86/include}/cfi.h (100%)
 rename tools/objtool/{ => arch/x86}/orc_dump.c (98%)
 rename tools/objtool/{ => arch/x86}/orc_gen.c (66%)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
