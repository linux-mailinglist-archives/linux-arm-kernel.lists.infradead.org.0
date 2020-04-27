Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F5A1BA982
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 18:00:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=doUk2zlyHU7mBOvzDAiKo2gWK0Vnzp1VGTKH1G/bYcw=; b=KQ5KPFxv4YFgWl
	MIkH1eMVuuREhYuwyBUuKRr6pDwTpQICyZ7xyPl67Zq56vfyACFSmuBDmdqgz70Yp49hxQ8PcCnz3
	Z2ZLDE260RuzBILWEhTZbCimhff8xdpjqkPVQUIjBNfEz3lsGwdBK3Notr0dMXxGcQRTUnY7tVjyD
	X7Ov+8u7gAAQxcBtTHpTus9XzL9HWoIk5KQ5JtUWFx+kwmXBsEGth7TSC9ru9pUBD5nxdFbIBHQWl
	8MX9ondN8f8ngHJl4J1IvNwscSONPgfYSw/RGDvatLyl+AvSbwpJbMaRZ5fzFSIcMao7SbFKRnjjq
	tJqiR/e/90SNz43MV4WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT6BQ-00023o-Ss; Mon, 27 Apr 2020 16:00:36 +0000
Received: from mail-yb1-xb49.google.com ([2607:f8b0:4864:20::b49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT6BF-0001ht-CH
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 16:00:27 +0000
Received: by mail-yb1-xb49.google.com with SMTP id h1so11907568ybk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 09:00:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=/4Lv0RwdLpBbP8q3ppNzsCXSA3vQogZDo2gd5muLx+Y=;
 b=n9KrHF2mldk7Mz7gH6enPSHcDsT3axVnmACTGqW8hqjoSyGJf+Ov/N1gypzGaPzF5b
 tjH1UqrbHPM3ppck2oAqDpadYWQK3plpcdFVFDR2U7VBiBiYil/ykWh6Ak6uRtLrKKYp
 Mab8sDBlBmubI8WnEoRN6wGVrDVwHOhApQhkyBVirqIeIqMJBIY9RPdpocfTt36V5r4C
 C6Rt+Zh4w+sHpKAq2ucxcfW9XAsYE/j9N86A16uogA56kw9mR5Sk/Q1ayZ++6YnoWz/u
 oD5d2Pu3c9gIg+DD9Dv0P9k5Gm4SdC4VEOYZZFDCeFL2xLNDvg+Rv8NfKypnyO9S54CT
 K+Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=/4Lv0RwdLpBbP8q3ppNzsCXSA3vQogZDo2gd5muLx+Y=;
 b=MsD7S2TPgH0AVTuRvb+oBNZLMulYbgxhaMhu2op/DYyl3HVyZWF2GC7PNkS+vtZS3e
 NgS1WEMa9f2ctclLbkfpD8rqwpitO3y1zf6oFSXDlsV2pFcIGzbIx26PrnISLHiFjlSf
 VbhulXtDTSZ1sChjQEZu698KPzU8klkg/5B9DGs1APm5X7l8IW4XK5Qr6VlwdhilVO4+
 0AoArylrzv/Iu2hKRWAZ2ipw3mv4K712NMdOR6WVd+dXBeerOIEucyxQEsUJEeb/MA8k
 RR/pl5/AtRwjA96gOs1QzxQZowl211GPJaEPas6Z/CsfUNHy9pvOoOHa/jVnO8C/pz9B
 6vJw==
X-Gm-Message-State: AGi0PuYgOax8xY2c4gBj4TUgLCOxmyktjjWgTsemR5SzvgOMkdiSFVQx
 EeZiMUeL8ycBmWg8yNfoqwF/FNm2fPtPrD33E1c=
X-Google-Smtp-Source: APiQypJnnD9EI6KF+/UDyiS/9DnXsuJlM33wVB2skvTGfCVt0jnZVDF2xIHtf5pKsXizHZdOKBi+N7X6MZrXt/R9nRU=
X-Received: by 2002:a5b:345:: with SMTP id q5mr35788916ybp.494.1588003222670; 
 Mon, 27 Apr 2020 09:00:22 -0700 (PDT)
Date: Mon, 27 Apr 2020 09:00:06 -0700
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20200427160018.243569-1-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
Subject: [PATCH v13 00/12] add support for Clang's Shadow Call Stack
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Mark Rutland <mark.rutland@arm.com>, 
 Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>,
 Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
 Juri Lelli <juri.lelli@redhat.com>,
 Vincent Guittot <vincent.guittot@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_090025_451407_892E46D7 
X-CRM114-Status: GOOD (  24.19  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b49 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Marc Zyngier <maz@kernel.org>, kernel-hardening@lists.openwall.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Sami Tolvanen <samitolvanen@google.com>, clang-built-linux@googlegroups.com,
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
shadow stacks in memory, which means an attacker capable of
reading and writing arbitrary memory may be able to locate them
and hijack control flow by modifying the shadow stacks.

SCS is currently supported only on arm64, where the compiler
requires the x18 register to be reserved for holding the current
task's shadow stack pointer.

With -fsanitize=shadow-call-stack, the compiler injects
instructions to all non-leaf C functions to store the return
address to the shadow stack, and unconditionally load it again
before returning. As a result, SCS is incompatible with features
that rely on modifying function return addresses in the kernel
stack to alter control flow. A copy of the return address is
still kept in the kernel stack for compatibility with stack
unwinding, for example.

SCS has a minimal performance overhead, but allocating
shadow stacks increases kernel memory usage. The feature is
therefore mostly useful on hardware that lacks support for PAC
instructions.

Changes in v13:
 - Changed thread_info::shadow_call_stack to a base address and
   an offset instead, and removed the now unneeded __scs_base()
   and scs_save().
 - Removed alignment from the kmem_cache and static allocations.
 - Removed the task_set_scs() helper function.
 - Moved the assembly code for loading and storing the offset in
   thread_info to scs_load/save macros.
 - Added offset checking to scs_corrupted().
 - Switched to cmpxchg_relaxed() in scs_check_usage().

Changes in v12:
 - Removed CONFIG_SHADOW_CALL_STACK_VMAP.
 - Added CC_IS_CLANG as a dependency to CONFIG_SHADOW_CALL_STACK.
 - Changed SCS_END_MAGIC to use POISON_POINTER_DELTA.
 - Removed the unnecessary scs_set_magic() helper function.
 - Moved scs_task_reset() and scs_corrupted() to scs.h, along with
   __scs_magic() and __scs_base().
 - Removed a redundant warning from memory allocation.
 - Removed an unnecessary task_set_scs() call from scs_release().
 - Changed the accounting code to calculate KiB instead of bytes.
 - Replaced the lock in scs_check_usage() with a cmpxchg() loop.

Changes in v11:
 - Rebased, added maintainers for kernel/ changes.

Changes in v10:
 - Removed an unnecessary <asm/scs.h> include from head.S.

Changes in v9:
 - Fixed grammar in the Kconfig help text.
 - Changed Kconfig to allow SCS to be selected with the patchable-
   function-entry graph tracer.
 - Changed the EFI stub patch to not filter out -ffixed-x18, only
   SCS flags.

Changes in v8:
 - Added __noscs to __hyp_text instead of filtering SCS flags from
   the entire arch/arm64/kvm/hyp directory.
 - Added a patch to filter out -ffixed-x18 and SCS flags from the
   EFI stub.

Changes in v7:
 - Changed irq_stack_entry/exit to store the shadow stack pointer
   in x24 instead of x20 as kernel_entry uses x20-x23 to store
   data that can be used later. Updated the comment as well.
 - Changed the Makefile in arch/arm64/kvm/hyp to also filter out
   -ffixed-x18.
 - Changed SHADOW_CALL_STACK to depend on !FUNCTION_GRAPH_TRACER
   instead of not selecting HAVE_FUNCTION_GRAPH_TRACER with SCS.
 - Removed ifdefs from the EFI wrapper and updated the comment to
   explain why we are restoring x18.
 - Rebased as Ard's x18 patches that were part of this series have
   already been merged.

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

Sami Tolvanen (12):
  add support for Clang's Shadow Call Stack (SCS)
  scs: add accounting
  scs: add support for stack usage debugging
  scs: disable when function graph tracing is enabled
  arm64: reserve x18 from general allocation with SCS
  arm64: preserve x18 when CPU is suspended
  arm64: efi: restore x18 if it was corrupted
  arm64: vdso: disable Shadow Call Stack
  arm64: disable SCS for hypervisor code
  arm64: implement Shadow Call Stack
  arm64: scs: add shadow stacks for SDEI
  efi/libstub: disable SCS

 Makefile                              |   6 ++
 arch/Kconfig                          |  25 ++++++
 arch/arm64/Kconfig                    |   5 ++
 arch/arm64/Makefile                   |   4 +
 arch/arm64/include/asm/kvm_hyp.h      |   2 +-
 arch/arm64/include/asm/scs.h          |  46 ++++++++++
 arch/arm64/include/asm/suspend.h      |   2 +-
 arch/arm64/include/asm/thread_info.h  |  13 +++
 arch/arm64/kernel/Makefile            |   1 +
 arch/arm64/kernel/asm-offsets.c       |   4 +
 arch/arm64/kernel/efi-rt-wrapper.S    |  11 ++-
 arch/arm64/kernel/entry.S             |  38 +++++++-
 arch/arm64/kernel/head.S              |   6 ++
 arch/arm64/kernel/process.c           |   2 +
 arch/arm64/kernel/scs.c               |  20 +++++
 arch/arm64/kernel/vdso/Makefile       |   2 +-
 arch/arm64/mm/proc.S                  |  14 +++
 drivers/base/node.c                   |   6 ++
 drivers/firmware/efi/libstub/Makefile |   3 +
 fs/proc/meminfo.c                     |   4 +
 include/linux/compiler-clang.h        |   6 ++
 include/linux/compiler_types.h        |   4 +
 include/linux/mmzone.h                |   3 +
 include/linux/scs.h                   |  72 +++++++++++++++
 init/init_task.c                      |   8 ++
 kernel/Makefile                       |   1 +
 kernel/fork.c                         |   9 ++
 kernel/sched/core.c                   |   2 +
 kernel/scs.c                          | 121 ++++++++++++++++++++++++++
 mm/page_alloc.c                       |   6 ++
 mm/vmstat.c                           |   3 +
 31 files changed, 442 insertions(+), 7 deletions(-)
 create mode 100644 arch/arm64/include/asm/scs.h
 create mode 100644 arch/arm64/kernel/scs.c
 create mode 100644 include/linux/scs.h
 create mode 100644 kernel/scs.c


base-commit: 6a8b55ed4056ea5559ebe4f6a4b247f627870d4c
-- 
2.26.2.303.gf8c07b1a785-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
