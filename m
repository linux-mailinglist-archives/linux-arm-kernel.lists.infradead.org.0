Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59885135DDA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:12:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WdUQ61CGHYgvEZ/ZrJGj2c2NnIPs8+Xo44Qrn9t+bX8=; b=qJnBxR3GGaSHBf
	ElnJ6HOa2Bo0CZEoxGtroHxXtZCDDptrilVEj3dYmmOXjjK0nrYHBm3+C8ACOLqAUi7nklhAMATcc
	xh2qIxz5f7QH/2LBCw1jxuuLx2Kwh0syG/GtRFSdBd6EZGz5ZTvyZ+YnSGF3AoRQyDZgr11VctR1Y
	jiNFt6xc+hvfcx4nDxOHZOHR00YF4GmdubvUW2vZkwnFkn6+ydtbQptrLkkyOb78O1ko1XndR/n7w
	tDAI4ur50dAetUChe2kkCN/S2e6kgHdsCWimhj62y8Ai3ep+CoQqKAiZWS3z7fe/2NCg4ZOV3ZrWV
	cZy+hRlzixumRBBymqAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaPp-0005t0-PB; Thu, 09 Jan 2020 16:12:09 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaJv-0007eA-ED
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:06:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578585961;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=HjeI03QKpfRp5UjJsPwl4kv/9jVt4x9AwhldtXcTNv0=;
 b=jQCAl5b7IsnLR6hN94Dv7ryoayZfK9ac/WJALNjkZyZmRHG3KLpb6j4ghicXgHiN4OT/z6
 hyyKen1OQuBkAJf1X2B8vdJbABZy+PK6qajuN4R9CCTeEoQtP50rqko4IJ+PCOW2K86b0/
 tYLcVBy3C1MNNWhbOG2e6UaDJnByRAw=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-209-8EyInenHPb-DSJEdxYnT9A-1; Thu, 09 Jan 2020 11:03:12 -0500
Received: by mail-wr1-f72.google.com with SMTP id v17so3033352wrm.17
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:03:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VW/zL9Nc1p9kCjmjcb93gdQ3b+gJDL7b5TfNv3zZBqw=;
 b=JQXwsY/jIl3ZlJhoRE/lM14BnokBZqsS8UKXkE0tXv4hlw0idh01lRvsBiwUvxOQ6z
 LTYalhyQ6/otVwSRkvdL1J75kyqyzNcqixYfPRZMl+P4n/jxQlLpG1oYn9iJXs8PtoEW
 h+vHGFBLp4dGfK45TGChQolEGZaPi6I+Asoxi/s6C302u5rUXQKfqt0W6ylTJgpYxS8x
 U4UcycHkv9dNCaId/oMP1h+Nhzo1yfq1jTbc7i2zdD452Lq7tZ9d9AL3wKwWmBmU5zqI
 E4m5NMNgZuCVwV6yvXEh0Zg1c4vgxqCvDuJZ9pw1EgFnooajfYgY0NUeDIuzhJ/qilZO
 Vw0g==
X-Gm-Message-State: APjAAAVSqPvr0GKrf0P2TSLrNBJDD1q7n8+wVQaMskeclbD12dfDM1aA
 pi4Leb8VZVKsBjuz3NmgiGiN4P7eochg7AL3eiKSRD+uev6MXLv/P1nhlzaTCOOHeFdoaJDGQ1P
 zSQZcKHtzNUCyBlIvalh3tswfia0RuWeU4EU=
X-Received: by 2002:a05:600c:2c50:: with SMTP id
 r16mr5523487wmg.74.1578585791225; 
 Thu, 09 Jan 2020 08:03:11 -0800 (PST)
X-Google-Smtp-Source: APXvYqzDo5C7S2iXtSifPg13KPtjAokYoAFL8RjToMQ4VVqowx6Q06TLwOttaZpaMHLM6vYc8zrTFQ==
X-Received: by 2002:a05:600c:2c50:: with SMTP id
 r16mr5523438wmg.74.1578585790789; 
 Thu, 09 Jan 2020 08:03:10 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id z21sm3258969wml.5.2020.01.09.08.03.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:03:10 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 00/57] objtool: Add support for arm64
Date: Thu,  9 Jan 2020 16:02:03 +0000
Message-Id: <20200109160300.26150-1-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-MC-Unique: 8EyInenHPb-DSJEdxYnT9A-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080603_670257_F6DF7A87 
X-CRM114-Status: GOOD (  25.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Julien Thierry <jthierry@redhat.com>, peterz@infradead.org,
 catalin.marinas@arm.com, raphael.gault@arm.com, jpoimboe@redhat.com,
 will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This patch series is the continuation of Raphael's work [1]. All the
patches can be retrieved from:
git clone -b arm64-objtool-v5 https://github.com/julien-thierry/linux.git

There still are some outstanding issues but the series is starting to
get pretty big so it is probably good to start having some discussions
on the current state of things.

It felt necessary to split some of the patches (especially the arm64
decoder). In order to give Raphael credit for his work I used the
"Suggested-by" tag. If this is not the right way to give credit or if
it should be present on more patches do let me know.

There still are some shortcomings. On defconfig here are the remaining
warnings:
* arch/arm64/crypto/crct10dif-ce-core.o: warning: objtool: crc_t10dif_pmull_p8()+0xf0: unsupported intra-function call
* arch/arm64/kernel/cpu_errata.o: warning: objtool: qcom_link_stack_sanitization()+0x4: unsupported intra-function call
Objtool currently does not support bl from a procedure to itself. This
is also an issue with retpolines. I need to investigate more to figure
out whether something can be done for this or if this file should not be
validated by objtool.

* arch/arm64/kernel/efi-entry.o: warning: objtool: entry()+0xb0: sibling call from callable instruction with modified stack frame
The EFI entry jumps to code mapped by EFI. Objtool cannot know statically where the code flow is going.

* arch/arm64/kernel/entry.o: warning: objtool: .entry.tramp.text+0x404: unsupported intra-function call
Need to figure out what is needed to handle aarch64 trampolines. x86
explicitly annotates theirs with ANNOTATE_NOSPEC_ALTERNATIVE and
patching them as alternatives.

* arch/arm64/kernel/head.o: warning: objtool: .head.text+0x58: can't find jump dest instruction at .head.text+0x80884
This is actually a constant that turns out to be a valid branch opcode.
A possible solution could be to introduce a marco that explicitly
annotates constants placed in code sections.

* arch/arm64/kernel/hibernate-asm.o: warning: objtool: el1_sync()+0x4: unsupported instruction in callable function
Symbols el<x>_* shouldn't be considered as callable functions. Should we
use SYM_CODE_END instead of PROC_END?

* arch/arm64/kvm/hyp/hyp-entry.o: warning: objtool: .hyp.text: empty alternative at end of section
This is due to the arm64 alternative_cb. Currently, the feature
corresponding to the alternative_cb is defined as the current number of
features supported by the kernel, meaning the identifier is not fixed
accross kernel versions. This makes it a bit hard to detect these
alternative_cb for external tools.

Would it be acceptable to set a fixed identifier for alternative_cb?
(probably 0xFF so it is always higher than the number of real features)

* drivers/ata/libata-scsi.o: warning: objtool: ata_sas_queuecmd() falls through to next function ata_scsi_scan_host()
This is due to a limitation in the switch table metadata interpretation.
The compiler might create a table of unsigned offsets and then
compute the final offset as follows:

	ldrb    offset_reg, [<offset_table>, <offset_idx>, uxtw]
	adr     base_reg, <base_addr>
	add     res_addr, base_reg, offset_reg, sxtb #2

Effectively using the loaded offset as a signed value.
I don't have a simple way to solve this at the moment, I'd like to
avoid decoding the instructions to check which ones might sign extend
the loaded offset.

* kernel/bpf/core.o: warning: objtool: ___bpf_prog_run()+0x44: sibling call from callable instruction with modified stack frame
This is because the function uses a C jump table which differ from
basic jump tables. Also, the code generated for C jump tables on arm64
does not follow the same form as the one for x86. So the existing x86 objtool
code handling C jump tables can't be used.

I'll focus on understanding the arm64 pattern so objtool can handle them.


In the mean time, any feedback on the current state is appreciated.

* Patches 1 to 18 adapts the current objtool code to make it easier to
  support new architectures.
* Patches 19 to 45 add the support for arm64 architecture to objtool.
* Patches 46 to 57 fix warnings reported by objtool on the existing
  arm64 code.

Changes since RFCv4[1]:
* Rebase on v5.5-rc5
* Misc cleanup/bug fixes
* Fix some new objtool warnings reported on arm64 objects
* Make ORC subcommand optional since arm64 does not currently support it
* Support branch instructions in alternative sections when they jump
  within the same set of alternative instructions
* Replace the "extra" stack_op with a list of stack_op
* Split the decoder into multiple patches to ease review
* Mark constants generated by load literal instructions as bytes that
  should not be reached by execution flow
* Rework the switch table handling

[1] https://lkml.org/lkml/2019/8/16/400

Thanks,

Julien

-->

Julien Thierry (43):
  objtool: check: Remove redundant checks on operand type
  objtool: check: Clean instruction state before each function
    validation
  objtool: check: Use arch specific values in restore_reg()
  objtool: check: Ignore empty alternative groups
  objtool: Give ORC functions consistent name
  objtool: Make ORC support optional
  objtool: Split generic and arch specific CFI definitions
  objtool: Abstract alternative special case handling
  objtool: check: Allow jumps from an alternative group to itself
  objtool: Do not look for STT_NOTYPE symbols
  objtool: Support addition to set frame pointer
  objtool: Support restoring BP from the stack without POP
  objtool: Make stack validation more generic
  objtool: Support multiple stack_op per instruction
  objtool: arm64: Decode unknown instructions
  objtool: arm64: Decode simple data processing instructions
  objtool: arm64: Decode add/sub immediate instructions
  objtool: arm64: Decode logical data processing instructions
  objtool: arm64: Decode system instructions not affecting the flow
  objtool: arm64: Decode calls to higher EL
  objtool: arm64: Decode brk instruction
  objtool: arm64: Decode instruction triggering context switch
  objtool: arm64: Decode branch instructions with PC relative immediates
  objtool: arm64: Decode branch to register instruction
  objtool: arm64: Decode basic load/stores
  objtool: arm64: Decode load/store with register offset
  objtool: arm64: Decode load/store register pair instructions
  objtool: arm64: Decode FP/SIMD load/store instructions
  objtool: arm64: Decode load/store exclusive
  objtool: arm64: Decode atomic load/store
  objtool: arm64: Decode pointer auth load instructions
  objtool: arm64: Decode load acquire/store release
  objtool: arm64: Decode load/store with memory tag
  objtool: arm64: Decode load literal
  objtool: arm64: Decode register data processing instructions
  objtool: arm64: Decode FP/SIMD data processing instructions
  objtool: arm64: Decode SVE instructions
  objtool: arm64: Implement functions to add switch tables alternatives
  arm64: Generate no-ops to pad executable section
  arm64: Move constant to rodata
  arm64: Mark sigreturn32.o as containing non standard code
  arm64: entry: Avoid empty alternatives entries
  arm64: crypto: Remove redundant branch

Raphael Gault (14):
  objtool: Add abstraction for computation of symbols offsets
  objtool: orc: Refactor ORC API for other architectures to implement.
  objtool: Move registers and control flow to arch-dependent code
  objtool: Refactor switch-tables code to support other architectures
  objtool: arm64: Add required implementation for supporting the aarch64
    architecture in objtool.
  gcc-plugins: objtool: Add plugin to detect switch table on arm64
  objtool: arm64: Enable stack validation for arm64
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

 arch/arm64/Kconfig                            |    2 +
 arch/arm64/crypto/Makefile                    |    3 +
 arch/arm64/crypto/sha1-ce-core.S              |    3 +-
 arch/arm64/crypto/sha2-ce-core.S              |    3 +-
 arch/arm64/crypto/sha3-ce-core.S              |    3 +-
 arch/arm64/crypto/sha512-ce-core.S            |    3 +-
 arch/arm64/include/asm/alternative.h          |    2 +-
 arch/arm64/kernel/Makefile                    |    4 +
 arch/arm64/kernel/entry.S                     |    4 +-
 arch/arm64/kernel/hyp-stub.S                  |    3 +
 arch/arm64/kernel/relocate_kernel.S           |    5 +
 arch/arm64/kernel/sleep.S                     |    5 +
 arch/arm64/kvm/hyp-init.S                     |    3 +
 arch/arm64/kvm/hyp/entry.S                    |    3 +
 include/linux/frame.h                         |   19 +-
 scripts/Makefile.gcc-plugins                  |    2 +
 scripts/gcc-plugins/Kconfig                   |    4 +
 .../arm64_switch_table_detection_plugin.c     |   94 +
 tools/objtool/Build                           |    4 +-
 tools/objtool/Makefile                        |   13 +-
 tools/objtool/arch.h                          |   14 +-
 tools/objtool/arch/arm64/Build                |    5 +
 tools/objtool/arch/arm64/arch_special.c       |  262 ++
 tools/objtool/arch/arm64/bit_operations.c     |   69 +
 tools/objtool/arch/arm64/decode.c             | 2866 +++++++++++++++++
 .../objtool/arch/arm64/include/arch_special.h |   23 +
 .../arch/arm64/include/bit_operations.h       |   31 +
 tools/objtool/arch/arm64/include/cfi_regs.h   |   44 +
 .../objtool/arch/arm64/include/insn_decode.h  |  206 ++
 tools/objtool/arch/x86/Build                  |    3 +
 tools/objtool/arch/x86/arch_special.c         |  182 ++
 tools/objtool/arch/x86/decode.c               |   29 +-
 tools/objtool/arch/x86/include/arch_special.h |   28 +
 tools/objtool/arch/x86/include/cfi_regs.h     |   25 +
 tools/objtool/{ => arch/x86}/orc_dump.c       |    4 +-
 tools/objtool/{ => arch/x86}/orc_gen.c        |  114 +-
 tools/objtool/cfi.h                           |   21 +-
 tools/objtool/check.c                         |  461 +--
 tools/objtool/check.h                         |   13 +-
 tools/objtool/elf.c                           |    3 +-
 tools/objtool/objtool.c                       |    2 +
 tools/objtool/orc.h                           |   38 +-
 tools/objtool/special.c                       |   44 +-
 tools/objtool/special.h                       |   13 +
 44 files changed, 4282 insertions(+), 400 deletions(-)
 create mode 100644 scripts/gcc-plugins/arm64_switch_table_detection_plugin.c
 create mode 100644 tools/objtool/arch/arm64/Build
 create mode 100644 tools/objtool/arch/arm64/arch_special.c
 create mode 100644 tools/objtool/arch/arm64/bit_operations.c
 create mode 100644 tools/objtool/arch/arm64/decode.c
 create mode 100644 tools/objtool/arch/arm64/include/arch_special.h
 create mode 100644 tools/objtool/arch/arm64/include/bit_operations.h
 create mode 100644 tools/objtool/arch/arm64/include/cfi_regs.h
 create mode 100644 tools/objtool/arch/arm64/include/insn_decode.h
 create mode 100644 tools/objtool/arch/x86/arch_special.c
 create mode 100644 tools/objtool/arch/x86/include/arch_special.h
 create mode 100644 tools/objtool/arch/x86/include/cfi_regs.h
 rename tools/objtool/{ => arch/x86}/orc_dump.c (98%)
 rename tools/objtool/{ => arch/x86}/orc_gen.c (62%)

--
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
