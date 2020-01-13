Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFDB713975C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 18:18:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lM6Ktn9z+k4ee4NzXcLxYiaC1e2H3tj0Uss2AV8FSWw=; b=uv/qxZCNo4jdH0
	deLlEVG7rl/lFpH6rfzcpsN3DRt+q0Y33az7pWZj/G0QB/A/FNi1rlC0343UiKtJgwZr2d2XXNx6A
	mp/ZdgEWMsdDUR8E1mJWA/xUOZfUseHfxBpetNvpYL8DQNYy4Hd1JduyuI9nnLDeP8l5eduylkmWH
	Oa63jLxg7hlY/6MFczQyDGfI4zKrxfBDBRl6P6fKUb+DO2dLe6ah+U10AEOAp4GESC05IqY1/Bcr3
	29Uoe21z83w5Lg5S1BYjR6B6FJZlL7uHNQhVhlU3YjeILqMzCwP5IudM5X8/PWP1NSIOmrAaxkC9g
	S3DrgT1lKOIY+hN9k7oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir3MV-0001Uh-F8; Mon, 13 Jan 2020 17:18:47 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir3MJ-0001TN-5b
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 17:18:38 +0000
Received: by mail-pl1-x643.google.com with SMTP id s21so4062462plr.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 09:18:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TD28a6u0dnGnn7QKtj4a6LQSYUO+JsNXo8uuvEXEwPQ=;
 b=ALq+lh8X5xbaIomG56isnqU88GVLMucVxavWrdNYW+i1BnjxomfIkSTLBruO1IZHa1
 MH28sBTEHZU8iCdEzX+dzgDIlTf+O9VXlgs9h/IftlTgcVMdyRVw/2tDM6AUBsXch5GL
 ayJNDACjMi5D7cHnztr/XoPDymGub5LIimEzr+gN0/R+Tpri0PC4QpMwl7BYrUMZuMpo
 jq38aYxRKDLQMpGa+xHwSJDGyD5E2DnaEJiXNUDy4IkK14GRpB6oxqn54Th0ulMvx5yd
 8Jp1JHKW+mmKr9BlIiBqLd7YinScAdiEE09ierFG9fhULDHA0f/Oi2UmjjAEQquaYA15
 Iw/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TD28a6u0dnGnn7QKtj4a6LQSYUO+JsNXo8uuvEXEwPQ=;
 b=QoUYULh+TZ4gZKldL/qifeIHgfGfis4D8AIKx59/i6aoP4wPM8m/KGEsc9/r371B+m
 sHZ+iCB2mg/L6P8kDql7L+2rpvaa58HewieeeAsncMeAj+Invmj2HUjH62fEW4Nrotf7
 GcfvOlNs/I4OKfM7eZ17scOodRwQ4rNWJSXLSEcyjYLDgYfOU3oUOlvjiUKUzugeItCG
 l9vZlAG4rBX6LXzz7DAjOvofV/qvJEv1EIC5ZWlxehW/x0fs7dFW2koYlfFHCYvLkFh7
 ki8T11vs+/Be4Elo2TeM3168wY57iLAeRFJpelXO4pycpxLr9JyaNuL3f5jeurmS1Z/N
 N8qQ==
X-Gm-Message-State: APjAAAU64ZmV/pnQVL1uDIcywxcNmPcGSknClwcbFCKG3vX1yYJiUmxI
 Wg2DvJ2ENc13jnFRafwsk7RLlEvX644NdhMNHnKOPg==
X-Google-Smtp-Source: APXvYqyDEx+nREGLIsE+kdFRznaWFj0JKRGr4SrcdtMQaC1lu0iou6vIcs30b2L43GW4+wfN9neNmYa64ltRXAB/ZOc=
X-Received: by 2002:a17:902:9b91:: with SMTP id
 y17mr173530plp.179.1578935911741; 
 Mon, 13 Jan 2020 09:18:31 -0800 (PST)
MIME-Version: 1.0
References: <20200109160300.26150-1-jthierry@redhat.com>
 <20200112084258.GA44004@ubuntu-x2-xlarge-x86>
In-Reply-To: <20200112084258.GA44004@ubuntu-x2-xlarge-x86>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 13 Jan 2020 09:18:20 -0800
Message-ID: <CAKwvOd=dghEqa-qn5XB3RD3h4hOzUNd4St-kbzsO3nNxHBtiGw@mail.gmail.com>
Subject: Re: [RFC v5 00/57] objtool: Add support for arm64
To: Julien Thierry <jthierry@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_091835_240881_A3A9D827 
X-CRM114-Status: GOOD (  40.25  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Tom Stellard <tstellar@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>, raphael.gault@arm.com,
 Josh Poimboeuf <jpoimboe@redhat.com>,
 Nathan Chancellor <natechancellor@gmail.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jan 12, 2020 at 12:43 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Thu, Jan 09, 2020 at 04:02:03PM +0000, Julien Thierry wrote:
> > Hi,
> >
> > This patch series is the continuation of Raphael's work [1]. All the
> > patches can be retrieved from:
> > git clone -b arm64-objtool-v5 https://github.com/julien-thierry/linux.git
> >
> > There still are some outstanding issues but the series is starting to
> > get pretty big so it is probably good to start having some discussions
> > on the current state of things.
> >
> > It felt necessary to split some of the patches (especially the arm64
> > decoder). In order to give Raphael credit for his work I used the
> > "Suggested-by" tag. If this is not the right way to give credit or if
> > it should be present on more patches do let me know.
> >
> > There still are some shortcomings. On defconfig here are the remaining
> > warnings:
> > * arch/arm64/crypto/crct10dif-ce-core.o: warning: objtool: crc_t10dif_pmull_p8()+0xf0: unsupported intra-function call
> > * arch/arm64/kernel/cpu_errata.o: warning: objtool: qcom_link_stack_sanitization()+0x4: unsupported intra-function call
> > Objtool currently does not support bl from a procedure to itself. This
> > is also an issue with retpolines. I need to investigate more to figure
> > out whether something can be done for this or if this file should not be
> > validated by objtool.
> >
> > * arch/arm64/kernel/efi-entry.o: warning: objtool: entry()+0xb0: sibling call from callable instruction with modified stack frame
> > The EFI entry jumps to code mapped by EFI. Objtool cannot know statically where the code flow is going.
> >
> > * arch/arm64/kernel/entry.o: warning: objtool: .entry.tramp.text+0x404: unsupported intra-function call
> > Need to figure out what is needed to handle aarch64 trampolines. x86
> > explicitly annotates theirs with ANNOTATE_NOSPEC_ALTERNATIVE and
> > patching them as alternatives.
> >
> > * arch/arm64/kernel/head.o: warning: objtool: .head.text+0x58: can't find jump dest instruction at .head.text+0x80884
> > This is actually a constant that turns out to be a valid branch opcode.
> > A possible solution could be to introduce a marco that explicitly
> > annotates constants placed in code sections.
> >
> > * arch/arm64/kernel/hibernate-asm.o: warning: objtool: el1_sync()+0x4: unsupported instruction in callable function
> > Symbols el<x>_* shouldn't be considered as callable functions. Should we
> > use SYM_CODE_END instead of PROC_END?
> >
> > * arch/arm64/kvm/hyp/hyp-entry.o: warning: objtool: .hyp.text: empty alternative at end of section
> > This is due to the arm64 alternative_cb. Currently, the feature
> > corresponding to the alternative_cb is defined as the current number of
> > features supported by the kernel, meaning the identifier is not fixed
> > accross kernel versions. This makes it a bit hard to detect these
> > alternative_cb for external tools.
> >
> > Would it be acceptable to set a fixed identifier for alternative_cb?
> > (probably 0xFF so it is always higher than the number of real features)
> >
> > * drivers/ata/libata-scsi.o: warning: objtool: ata_sas_queuecmd() falls through to next function ata_scsi_scan_host()
> > This is due to a limitation in the switch table metadata interpretation.
> > The compiler might create a table of unsigned offsets and then
> > compute the final offset as follows:
> >
> >       ldrb    offset_reg, [<offset_table>, <offset_idx>, uxtw]
> >       adr     base_reg, <base_addr>
> >       add     res_addr, base_reg, offset_reg, sxtb #2
> >
> > Effectively using the loaded offset as a signed value.
> > I don't have a simple way to solve this at the moment, I'd like to
> > avoid decoding the instructions to check which ones might sign extend
> > the loaded offset.
> >
> > * kernel/bpf/core.o: warning: objtool: ___bpf_prog_run()+0x44: sibling call from callable instruction with modified stack frame
> > This is because the function uses a C jump table which differ from
> > basic jump tables. Also, the code generated for C jump tables on arm64
> > does not follow the same form as the one for x86. So the existing x86 objtool
> > code handling C jump tables can't be used.
> >
> > I'll focus on understanding the arm64 pattern so objtool can handle them.
> >
> >
> > In the mean time, any feedback on the current state is appreciated.
> >
> > * Patches 1 to 18 adapts the current objtool code to make it easier to
> >   support new architectures.
> > * Patches 19 to 45 add the support for arm64 architecture to objtool.
> > * Patches 46 to 57 fix warnings reported by objtool on the existing
> >   arm64 code.
> >
> > Changes since RFCv4[1]:
> > * Rebase on v5.5-rc5
> > * Misc cleanup/bug fixes
> > * Fix some new objtool warnings reported on arm64 objects
> > * Make ORC subcommand optional since arm64 does not currently support it
> > * Support branch instructions in alternative sections when they jump
> >   within the same set of alternative instructions
> > * Replace the "extra" stack_op with a list of stack_op
> > * Split the decoder into multiple patches to ease review
> > * Mark constants generated by load literal instructions as bytes that
> >   should not be reached by execution flow
> > * Rework the switch table handling
> >
> > [1] https://lkml.org/lkml/2019/8/16/400
> >
> > Thanks,
> >
> > Julien
> >
> > -->
> >
> > Julien Thierry (43):
> >   objtool: check: Remove redundant checks on operand type
> >   objtool: check: Clean instruction state before each function
> >     validation
> >   objtool: check: Use arch specific values in restore_reg()
> >   objtool: check: Ignore empty alternative groups
> >   objtool: Give ORC functions consistent name
> >   objtool: Make ORC support optional
> >   objtool: Split generic and arch specific CFI definitions
> >   objtool: Abstract alternative special case handling
> >   objtool: check: Allow jumps from an alternative group to itself
> >   objtool: Do not look for STT_NOTYPE symbols
> >   objtool: Support addition to set frame pointer
> >   objtool: Support restoring BP from the stack without POP
> >   objtool: Make stack validation more generic
> >   objtool: Support multiple stack_op per instruction
> >   objtool: arm64: Decode unknown instructions
> >   objtool: arm64: Decode simple data processing instructions
> >   objtool: arm64: Decode add/sub immediate instructions
> >   objtool: arm64: Decode logical data processing instructions
> >   objtool: arm64: Decode system instructions not affecting the flow
> >   objtool: arm64: Decode calls to higher EL
> >   objtool: arm64: Decode brk instruction
> >   objtool: arm64: Decode instruction triggering context switch
> >   objtool: arm64: Decode branch instructions with PC relative immediates
> >   objtool: arm64: Decode branch to register instruction
> >   objtool: arm64: Decode basic load/stores
> >   objtool: arm64: Decode load/store with register offset
> >   objtool: arm64: Decode load/store register pair instructions
> >   objtool: arm64: Decode FP/SIMD load/store instructions
> >   objtool: arm64: Decode load/store exclusive
> >   objtool: arm64: Decode atomic load/store
> >   objtool: arm64: Decode pointer auth load instructions
> >   objtool: arm64: Decode load acquire/store release
> >   objtool: arm64: Decode load/store with memory tag
> >   objtool: arm64: Decode load literal
> >   objtool: arm64: Decode register data processing instructions
> >   objtool: arm64: Decode FP/SIMD data processing instructions
> >   objtool: arm64: Decode SVE instructions
> >   objtool: arm64: Implement functions to add switch tables alternatives
> >   arm64: Generate no-ops to pad executable section
> >   arm64: Move constant to rodata
> >   arm64: Mark sigreturn32.o as containing non standard code
> >   arm64: entry: Avoid empty alternatives entries
> >   arm64: crypto: Remove redundant branch
> >
> > Raphael Gault (14):
> >   objtool: Add abstraction for computation of symbols offsets
> >   objtool: orc: Refactor ORC API for other architectures to implement.
> >   objtool: Move registers and control flow to arch-dependent code
> >   objtool: Refactor switch-tables code to support other architectures
> >   objtool: arm64: Add required implementation for supporting the aarch64
> >     architecture in objtool.
> >   gcc-plugins: objtool: Add plugin to detect switch table on arm64
> >   objtool: arm64: Enable stack validation for arm64
> >   arm64: alternative: Mark .altinstr_replacement as containing
> >     executable instructions
> >   arm64: assembler: Add macro to annotate asm function having non
> >     standard stack-frame.
> >   arm64: sleep: Prevent stack frame warnings from objtool
> >   arm64: kvm: Annotate non-standard stack frame functions
> >   arm64: kernel: Add exception on kuser32 to prevent stack analysis
> >   arm64: crypto: Add exceptions for crypto object to prevent stack
> >     analysis
> >   arm64: kernel: Annotate non-standard stack frame functions
> >
> >  arch/arm64/Kconfig                            |    2 +
> >  arch/arm64/crypto/Makefile                    |    3 +
> >  arch/arm64/crypto/sha1-ce-core.S              |    3 +-
> >  arch/arm64/crypto/sha2-ce-core.S              |    3 +-
> >  arch/arm64/crypto/sha3-ce-core.S              |    3 +-
> >  arch/arm64/crypto/sha512-ce-core.S            |    3 +-
> >  arch/arm64/include/asm/alternative.h          |    2 +-
> >  arch/arm64/kernel/Makefile                    |    4 +
> >  arch/arm64/kernel/entry.S                     |    4 +-
> >  arch/arm64/kernel/hyp-stub.S                  |    3 +
> >  arch/arm64/kernel/relocate_kernel.S           |    5 +
> >  arch/arm64/kernel/sleep.S                     |    5 +
> >  arch/arm64/kvm/hyp-init.S                     |    3 +
> >  arch/arm64/kvm/hyp/entry.S                    |    3 +
> >  include/linux/frame.h                         |   19 +-
> >  scripts/Makefile.gcc-plugins                  |    2 +
> >  scripts/gcc-plugins/Kconfig                   |    4 +
> >  .../arm64_switch_table_detection_plugin.c     |   94 +
> >  tools/objtool/Build                           |    4 +-
> >  tools/objtool/Makefile                        |   13 +-
> >  tools/objtool/arch.h                          |   14 +-
> >  tools/objtool/arch/arm64/Build                |    5 +
> >  tools/objtool/arch/arm64/arch_special.c       |  262 ++
> >  tools/objtool/arch/arm64/bit_operations.c     |   69 +
> >  tools/objtool/arch/arm64/decode.c             | 2866 +++++++++++++++++
> >  .../objtool/arch/arm64/include/arch_special.h |   23 +
> >  .../arch/arm64/include/bit_operations.h       |   31 +
> >  tools/objtool/arch/arm64/include/cfi_regs.h   |   44 +
> >  .../objtool/arch/arm64/include/insn_decode.h  |  206 ++
> >  tools/objtool/arch/x86/Build                  |    3 +
> >  tools/objtool/arch/x86/arch_special.c         |  182 ++
> >  tools/objtool/arch/x86/decode.c               |   29 +-
> >  tools/objtool/arch/x86/include/arch_special.h |   28 +
> >  tools/objtool/arch/x86/include/cfi_regs.h     |   25 +
> >  tools/objtool/{ => arch/x86}/orc_dump.c       |    4 +-
> >  tools/objtool/{ => arch/x86}/orc_gen.c        |  114 +-
> >  tools/objtool/cfi.h                           |   21 +-
> >  tools/objtool/check.c                         |  461 +--
> >  tools/objtool/check.h                         |   13 +-
> >  tools/objtool/elf.c                           |    3 +-
> >  tools/objtool/objtool.c                       |    2 +
> >  tools/objtool/orc.h                           |   38 +-
> >  tools/objtool/special.c                       |   44 +-
> >  tools/objtool/special.h                       |   13 +
> >  44 files changed, 4282 insertions(+), 400 deletions(-)
> >  create mode 100644 scripts/gcc-plugins/arm64_switch_table_detection_plugin.c
> >  create mode 100644 tools/objtool/arch/arm64/Build
> >  create mode 100644 tools/objtool/arch/arm64/arch_special.c
> >  create mode 100644 tools/objtool/arch/arm64/bit_operations.c
> >  create mode 100644 tools/objtool/arch/arm64/decode.c
> >  create mode 100644 tools/objtool/arch/arm64/include/arch_special.h
> >  create mode 100644 tools/objtool/arch/arm64/include/bit_operations.h
> >  create mode 100644 tools/objtool/arch/arm64/include/cfi_regs.h
> >  create mode 100644 tools/objtool/arch/arm64/include/insn_decode.h
> >  create mode 100644 tools/objtool/arch/x86/arch_special.c
> >  create mode 100644 tools/objtool/arch/x86/include/arch_special.h
> >  create mode 100644 tools/objtool/arch/x86/include/cfi_regs.h
> >  rename tools/objtool/{ => arch/x86}/orc_dump.c (98%)
> >  rename tools/objtool/{ => arch/x86}/orc_gen.c (62%)
> >
> > --
> > 2.21.0
> >
>
> Hi Julien,
>
> The 0day bot reported a couple of issues with clang with this series;
> the full report is available here (clang reports are only sent to our
> mailing lists for manual triage for the time being):
>
> https://groups.google.com/d/msg/clang-built-linux/MJbl_xPxawg/mWjgDgZgBwAJ
>
> The first obvious issue is that this series appears to depend on a GCC
> plugin? I'll be quite honest, objtool and everything it does is rather
> over my head but I see this warning during configuration (allyesconfig):
>
> WARNING: unmet direct dependencies detected for GCC_PLUGIN_SWITCH_TABLES
>   Depends on [n]: GCC_PLUGINS [=n] && ARM64 [=y]
>     Selected by [y]:
>       - ARM64 [=y] && STACK_VALIDATION [=y]
>
> Followed by the actual error:
>
> error: unable to load plugin
> './scripts/gcc-plugins/arm64_switch_table_detection_plugin.so':
> './scripts/gcc-plugins/arm64_switch_table_detection_plugin.so: cannot
> open shared object file: No such file or directory'
>
> If this plugin is absolutely necessary and can't be implemented in
> another way so that clang can be used, seems like STACK_VALIDATION
> should only be selected on ARM64 when CONFIG_CC_IS_GCC is not zero.

Ah, cool. I look forward to having objtool check additional
architectures.  It's found legitimate codegen bugs in Clang before.
We should make sure this series doesn't regress Clang builds. Can you
please help ensure it doesn't?
$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang
We're happy to help take a look at anything that looks suspicious, but
some code sequences may be quite different than GCC.  We can't be
adding hard dependencies on GCC plugins.

>
> The second issue I see is the -Wenum-conversion warnings; they are
> pretty trivial to fix (see commit e7e83dd3ff1d ("objtool: Fix Clang
> enum conversion warning") upstream and the below diff).
>
> Would you mind addressing these in a v6 if you happen to do one?
>
> Cheers,
> Nathan
>
> diff --git a/tools/objtool/arch/arm64/decode.c b/tools/objtool/arch/arm64/decode.c
> index 5a5f82b5cb81..1ed6bf0c85ce 100644
> --- a/tools/objtool/arch/arm64/decode.c
> +++ b/tools/objtool/arch/arm64/decode.c
> @@ -1518,7 +1518,7 @@ int arm_decode_ld_st_regs_unsc_imm(u32 instr, enum insn_type *type,
>                 op->dest.type = OP_DEST_REG_INDIRECT;
>                 op->dest.reg = rn;
>                 op->dest.offset = SIGN_EXTEND(imm9, 9);
> -               op->src.type = OP_DEST_REG;
> +               op->src.type = OP_SRC_REG;
>                 op->src.reg = rt;
>                 op->src.offset = 0;
>                 break;
> @@ -1605,7 +1605,7 @@ int arm_decode_ld_st_regs_unsigned(u32 instr, enum insn_type *type,
>                 op->dest.type = OP_DEST_REG_INDIRECT;
>                 op->dest.reg = rn;
>                 op->dest.offset = imm12;
> -               op->src.type = OP_DEST_REG;
> +               op->src.type = OP_SRC_REG;
>                 op->src.reg = rt;
>                 op->src.offset = 0;
>         }
> @@ -1772,7 +1772,7 @@ int arm_decode_ld_st_imm_unpriv(u32 instr, enum insn_type *type,
>                 op->dest.type = OP_DEST_REG_INDIRECT;
>                 op->dest.reg = rn;
>                 op->dest.offset = SIGN_EXTEND(imm9, 9);
> -               op->src.type = OP_DEST_REG;
> +               op->src.type = OP_SRC_REG;
>                 op->src.reg = rt;
>                 op->src.offset = 0;
>                 break;
> @@ -1852,7 +1852,7 @@ int arm_decode_atomic(u32 instr, enum insn_type *type,
>         list_add_tail(&op->list, ops_list);
>
>         op->src.reg = rn;
> -       op->src.type = OP_DEST_REG_INDIRECT;
> +       op->src.type = OP_SRC_REG_INDIRECT;
>         op->src.offset = 0;
>         op->dest.type = OP_DEST_REG;
>         op->dest.reg = rt;
> @@ -2187,7 +2187,7 @@ int arm_decode_ldapr_stlr_unsc_imm(u32 instr, enum insn_type *type,
>                 break;
>         default:
>                 /* store */
> -               op->dest.type = OP_SRC_REG_INDIRECT;
> +               op->dest.type = OP_DEST_REG_INDIRECT;
>                 op->dest.reg = rn;
>                 op->dest.offset = SIGN_EXTEND(imm9, 9);
>                 op->src.type = OP_SRC_REG;
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200112084258.GA44004%40ubuntu-x2-xlarge-x86.



-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
