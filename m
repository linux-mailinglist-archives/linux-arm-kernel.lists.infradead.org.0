Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0500A115900
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 23:14:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y7iS+ibE9lI+5vShFVGnd+YTMG1Q9AiCchWqCVofdTg=; b=A3xH+EXcad9fnC
	tXWG9jma+kOF/MflwScKoTFBEipP2UFKZ+sh7ESODBxHv412hy9vyqONRbmiM8sOjAI7krktx8npF
	yC0+5m6jz7ASYzaBPvWevo08GNVkI1WCYYe9/o0dUZt8YWq12nj7j8mN3HrlHSMRkNpYCVGlf9z6V
	+gZPKksFsFWprTsMGhySnsJAcqLI6xBl94rGPVz2DiL78yH+ceJRuL4Bbxu2cv7NCfVhxsms6hLWY
	ftPaL0/a5x+Q07iWrMsCC454hSt31eKQSHpaKypuvnPrccca+TBPeetPSWeICFltqE6/8VuxCKXNL
	cJxhwstxcGK72i2ly1xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idLrT-0006Om-Ay; Fri, 06 Dec 2019 22:14:07 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idLrJ-0006Ny-7d
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 22:13:59 +0000
Received: by mail-pg1-x54a.google.com with SMTP id z12so4552350pgf.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Dec 2019 14:13:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=P8fbWG/Z5un4zHr4yZo6/sC+j0yFT4/adyKoRQiLZAo=;
 b=d2vclXMhvkI5KWl/YUPT2OHLXSajaMjvdDSQUqXAtDS9t+Ag9FyN5MJyzjwCyaXozX
 0BaHWVMzF7SAOGDlC7bnMnzRTWl0hcMf8wf4fixOpsbThdhNcIowdoF9v23qA3Og7FO5
 VTbgPXRpLqwqLT6RZL/LPV7He/WPROhuEMeWtcJypHvkgdIRrKQLgiLpzv2LV6EBgQE/
 4UMESGsNtitDUeyG30OnbHAAmkmLLiIsDayOsmybbrr0wv4AXFvDq9QM5ODaQkBj6GbP
 l1YfREGTruwMv9+XrHMVx3Plm+oNG0WOxZH91EvfXNzWuvh/hDOsGA6XqzpQunb/yUAn
 WkIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=P8fbWG/Z5un4zHr4yZo6/sC+j0yFT4/adyKoRQiLZAo=;
 b=shPBV/6K9rYcIIWHStkGcVTj9GDyfFnCcfHjmA3xs7lC2HeZ3ObfhduJdDnLTNmxsa
 K3TibOzX63ZwDJaU6QIydwX1BKG0cWeABaE41lkelZ9SqbaYuNHjeHlipFDCXtYLgjTg
 rJjYdqxxjipw823Iic4hgmD+xjJYclNa/akHlGfhh/TWdcxBx02iskOvjv4FkKjA8bCT
 IQi2pvVy8WlN639VMtfIJBAN9NgbWzrwVqjIjtJLCTeDglOeygPZHISUrNiB5j+b0nAz
 5igcExAxwu9GGuQyFEJnj6gEcmUVMb2OMMEwyJXg5kfJyJGEbanSI3n044NTD8cCd3R6
 Dazw==
X-Gm-Message-State: APjAAAU+3qIeuwNd229b9QiKdUWmJCTuek68HtaJZZmnlaCEQ5EtBx7b
 usnT47VkupiEx6HQPf9z2AhRRq125fRxTyOr4zY=
X-Google-Smtp-Source: APXvYqy7Pth8vX0/sAAy5cmvx1ANOEYpEMcHoJMLKZH9d4zWhnvIbRa9j0NpCNl1HzFGSKjsVDxrbgWNXuWwwyf/zIs=
X-Received: by 2002:a65:5cc2:: with SMTP id b2mr5940615pgt.171.1575670436052; 
 Fri, 06 Dec 2019 14:13:56 -0800 (PST)
Date: Fri,  6 Dec 2019 14:13:36 -0800
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20191206221351.38241-1-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
Subject: [PATCH v6 00/15] add support for Clang's Shadow Call Stack
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_141357_276127_3FA51729 
X-CRM114-Status: GOOD (  22.23  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:54a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, Marc Zyngier <maz@kernel.org>,
 kernel-hardening@lists.openwall.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series adds support for Clang's Shadow Call Stack
(SCS) mitigation, which uses a separately allocated shadow stack
to protect against return address overwrites. More information
can be found here:

  https://clang.llvm.org/docs/ShadowCallStack.html

SCS provides better protection against traditional buffer
overflows than CONFIG_STACKPROTECTOR_*, but it should be noted
that SCS security guarantees in the kernel differ from the ones
documented for user space. The kernel must store addresses of
shadow stacks used by inactive tasks and interrupt handlers in
memory, which means an attacker capable reading and writing
arbitrary memory may be able to locate them and hijack control
flow by modifying shadow stacks that are not currently in use.

SCS is currently supported only on arm64, where the compiler
requires the x18 register to be reserved for holding the current
task's shadow stack pointer. Because of this, the series includes
patches from Ard to remove x18 usage from assembly code.

With -fsanitize=shadow-call-stack, the compiler injects
instructions to all non-leaf C functions to store the return
address to the shadow stack, and unconditionally load it again
before returning. As a result, SCS is currently incompatible
with features that rely on modifying function return addresses
in the kernel stack to alter control flow, such as function
graph tracing, although it may be possible to later change these
features to modify the shadow stack instead. A copy of the return
address is still kept in the kernel stack for compatibility with
stack unwinding, for example.

SCS has a minimal performance overhead, but allocating
shadow stacks increases kernel memory usage. The feature is
therefore mostly useful on hardware that lacks support for PAC
instructions.

Changes in v6:
 - Updated comment in the EFI RT wrapper to include the
   explanation from the commit message.
 - Fixed the SHADOW_CALL_STACK_VMAP config option and the
   compilation errors in scs_init_irq()
 - Updated the comment in entry.S to Mark's suggestion
 - Fixed the WARN_ON in scs_init() to trip only when the return
   value for cpuhp_setup_state() is < 0.
 - Removed ifdefs from the code in arch/arm64/kernel/scs.c and
   added separate shadow stacks for the SDEI handler

Changes in v5:
 - Updated the comment in __scs_base() to Mark's suggestion
 - Changed all instances of uintptr_t to unsigned long
 - Added allocation poisoning for KASAN to catch unintentional
   shadow stack accesses; moved set_set_magic before poisoning
   and switched scs_used() and scs_corrupted() to access the
   buffer using READ_ONCE_NOCHECK() instead
 - Changed scs_free() to check for NULL instead of zero
 - Renamed SCS_CACHE_SIZE to NR_CACHED_SCS
 - Added a warning if cpuhp_setup_state fails in scs_init()
 - Dropped patches disabling kretprobes after confirming there's
   no functional conflict with SCS instrumentation
 - Added an explanation to the commit message why function graph
   tracing and SCS are incompatible
 - Removed the ifdefs from arch/arm64/mm/proc.S and added
   comments explaining why we are saving and restoring x18
 - Updated scs_check_usage format to include process information

Changes in v4:
 - Fixed authorship for Ard's patches
 - Added missing commit messages
 - Commented code that clears SCS from thread_info
 - Added a comment about SCS_END_MAGIC being non-canonical

Changes in v3:
 - Switched to filter-out for removing SCS flags in Makefiles
 - Changed the __noscs attribute to use __no_sanitize__("...")
   instead of no_sanitize("...")
 - Cleaned up inline function definitions and moved task_scs()
   into a macro
 - Cleaned up scs_free() and scs_magic()
 - Moved SCS initialization into dup_task_struct() and removed
   the now unused scs_task_init()
 - Added comments to __scs_base() and scs_task_reset() to better
   document design choices
 - Changed copy_page to make the offset and bias explicit

Changes in v2:
 - Changed Ard's KVM patch to use x29 instead of x18 for the
   guest context, which makes restore_callee_saved_regs cleaner
 - Updated help text (and commit messages) to point out
   differences in security properties compared to user space SCS
 - Cleaned up config options: removed the ROP protection choice,
   replaced the CC_IS_CLANG dependency with an arch-specific
   cc-option test, and moved disabling of incompatible config
   options to an arch-specific Kconfig
 - Added CC_FLAGS_SCS, which are filtered out where needed
   instead of using DISABLE_SCS
 - Added a __has_feature guard around __noscs for older clang
   versions

Ard Biesheuvel (3):
  arm64/lib: copy_page: avoid x18 register in assembler code
  arm64: kvm: stop treating register x18 as caller save
  arm64: kernel: avoid x18 in __cpu_soft_restart

Sami Tolvanen (12):
  arm64: mm: avoid x18 in idmap_kpti_install_ng_mappings
  add support for Clang's Shadow Call Stack (SCS)
  scs: add accounting
  scs: add support for stack usage debugging
  arm64: disable function graph tracing with SCS
  arm64: reserve x18 from general allocation with SCS
  arm64: preserve x18 when CPU is suspended
  arm64: efi: restore x18 if it was corrupted
  arm64: vdso: disable Shadow Call Stack
  arm64: disable SCS for hypervisor code
  arm64: implement Shadow Call Stack
  arm64: scs: add shadow stacks for SDEI

 Makefile                             |   6 +
 arch/Kconfig                         |  34 ++++
 arch/arm64/Kconfig                   |   7 +-
 arch/arm64/Makefile                  |   4 +
 arch/arm64/include/asm/scs.h         |  39 +++++
 arch/arm64/include/asm/suspend.h     |   2 +-
 arch/arm64/include/asm/thread_info.h |   3 +
 arch/arm64/kernel/Makefile           |   1 +
 arch/arm64/kernel/asm-offsets.c      |   3 +
 arch/arm64/kernel/cpu-reset.S        |   4 +-
 arch/arm64/kernel/efi-rt-wrapper.S   |  11 +-
 arch/arm64/kernel/entry.S            |  45 ++++-
 arch/arm64/kernel/head.S             |   9 +
 arch/arm64/kernel/irq.c              |   2 +
 arch/arm64/kernel/process.c          |   2 +
 arch/arm64/kernel/scs.c              | 114 +++++++++++++
 arch/arm64/kernel/sdei.c             |   7 +
 arch/arm64/kernel/smp.c              |   4 +
 arch/arm64/kernel/vdso/Makefile      |   2 +-
 arch/arm64/kvm/hyp/Makefile          |   3 +
 arch/arm64/kvm/hyp/entry.S           |  45 ++---
 arch/arm64/lib/copy_page.S           |  38 ++---
 arch/arm64/mm/proc.S                 |  77 +++++----
 drivers/base/node.c                  |   6 +
 fs/proc/meminfo.c                    |   4 +
 include/linux/compiler-clang.h       |   6 +
 include/linux/compiler_types.h       |   4 +
 include/linux/mmzone.h               |   3 +
 include/linux/scs.h                  |  57 +++++++
 init/init_task.c                     |   8 +
 kernel/Makefile                      |   1 +
 kernel/fork.c                        |   9 +
 kernel/sched/core.c                  |   2 +
 kernel/scs.c                         | 246 +++++++++++++++++++++++++++
 mm/page_alloc.c                      |   6 +
 mm/vmstat.c                          |   3 +
 36 files changed, 737 insertions(+), 80 deletions(-)
 create mode 100644 arch/arm64/include/asm/scs.h
 create mode 100644 arch/arm64/kernel/scs.c
 create mode 100644 include/linux/scs.h
 create mode 100644 kernel/scs.c


base-commit: 3cf2890f29ab6fe491361761df558ef9191cb468
-- 
2.24.0.393.g34dc348eaf-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
