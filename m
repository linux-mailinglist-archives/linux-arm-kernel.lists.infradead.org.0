Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA17FF0A90
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 00:56:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MPq2SMIWTMLqqmkFdhVukiXIAzfKbUIH45tl2Blu86A=; b=Bv+c8tEJJFzR3C
	aFmbNu8Svwb9Pijx6w4+X/S30CftE6b44ApaazBG79BY4eb19PNE1RLoo/gwNqbVp3Igf8LJahaNB
	NMEvg7f9IH7i7I5WYbkYxy6mDSMAf02DKAQod2ZjYR/0EDtEID1mH+l+t7nTlrQuTA+2eK+qkv01O
	4u68F+T2g5k/oZe0HubyHwXIIxf2wUDGSIHuUbfeQ4qlVkFphHCyMkExIkW3edMxejOqrvgnsOCcv
	fR0EIdq/TrQwmVEr/MZvgBkGwHcN1ox/mjyjPeZ0EnTBTPolI+7Zuj1Y5TXuqCrB3RTDAZmLzBg/g
	EQ6zs89M/bXCBbBUcl8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS8gS-0007cT-R7; Tue, 05 Nov 2019 23:56:24 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS8gK-0007bc-N7
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 23:56:18 +0000
Received: by mail-pf1-x449.google.com with SMTP id 2so17461784pfv.21
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 15:56:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=K/shn7Sj8cjIAOcXeYGvWEwPxEjEzE6xK48ExW4epXg=;
 b=scmM5jNfsbmI1H0pQPntZXD8LPbBpqRfakltnLei5h9YsMHeXjM/EGk00HpoE6cYTg
 VQf6iXzdwyf+Oy0UVVLceLsds613nQiGW62kKoYvVLXYPW0EksJkPcLWO+XeSxg5b73K
 wo22X8XBXCZFQwLrzrk4tv+wA42+R9fGmYrMvAVb/MRA1841Vf+6qkVw8JXWCpJ11d+k
 yxjNM092v8ZX8aWDYuLn8/I5lfvwBu10uXojn1YEIutgnHZ8/y1ipn7RvJ1xnFuUQGkX
 RVtc4ltq2u0sK97Y6a6qoISgZPreVnLNCQRBhIw6tI/SGtXIIiKZb4OR48PON9w0i386
 p8nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=K/shn7Sj8cjIAOcXeYGvWEwPxEjEzE6xK48ExW4epXg=;
 b=kpWAQIkVyi/QNe6b7LPuPyHevlHeDI3/4Vowd3raomwhgwtR68tVXCXRlCeGnP1hzj
 Ctjjq92IGUl6Kxm+eRpXNXHNPWJc9iUbaW2NharuPnnBJ/ip667CUo519E+gK529JvOj
 vE0rFpuwWy6oO07wXLnYQ6E/82af3y3A3CCzi8DLBQ6NAS6MRR0BSBHJ+cYJQheOmg+V
 +1nbTqFLobN2kdsdEEMC6eQzs7W0komgd9nM45unrtAVSL9BdtJA7Lb/yT2YaRImIqXh
 u2QHWXa1jlVN9P+bfQpCYYfU/KrCKEmc0nUv5AOL5fmiCqwxb8kNZYXKkLCdpuDzJbTT
 8Qew==
X-Gm-Message-State: APjAAAWlPUXoVHtNorIAXcPtb4Z8ESFWnl9/9pW/ANK7YYpcqOLNPQfB
 ziVeT03CbhuYSrprGpAxo1MzHjB1w7IMlylqCQg=
X-Google-Smtp-Source: APXvYqzDvL9Cb+QocxQ8O+qyvISrwwwXj191VtLuOK+ABTmwCtckO5qR2k4WDa2FsTgm/ty6HatvhV0O82L9xTyWK8c=
X-Received: by 2002:a63:5960:: with SMTP id j32mr39727761pgm.281.1572998174570; 
 Tue, 05 Nov 2019 15:56:14 -0800 (PST)
Date: Tue,  5 Nov 2019 15:55:54 -0800
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20191105235608.107702-1-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v5 00/14] add support for Clang's Shadow Call Stack
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_155616_781247_7328B770 
X-CRM114-Status: GOOD (  21.45  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Marc Zyngier <maz@kernel.org>, kernel-hardening@lists.openwall.com,
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

Sami Tolvanen (11):
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

 Makefile                             |   6 +
 arch/Kconfig                         |  33 ++++
 arch/arm64/Kconfig                   |   7 +-
 arch/arm64/Makefile                  |   4 +
 arch/arm64/include/asm/scs.h         |  37 ++++
 arch/arm64/include/asm/stacktrace.h  |   4 +
 arch/arm64/include/asm/suspend.h     |   2 +-
 arch/arm64/include/asm/thread_info.h |   3 +
 arch/arm64/kernel/Makefile           |   1 +
 arch/arm64/kernel/asm-offsets.c      |   3 +
 arch/arm64/kernel/cpu-reset.S        |   4 +-
 arch/arm64/kernel/efi-rt-wrapper.S   |   7 +-
 arch/arm64/kernel/entry.S            |  28 +++
 arch/arm64/kernel/head.S             |   9 +
 arch/arm64/kernel/irq.c              |   2 +
 arch/arm64/kernel/process.c          |   2 +
 arch/arm64/kernel/scs.c              |  39 +++++
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
 36 files changed, 638 insertions(+), 77 deletions(-)
 create mode 100644 arch/arm64/include/asm/scs.h
 create mode 100644 arch/arm64/kernel/scs.c
 create mode 100644 include/linux/scs.h
 create mode 100644 kernel/scs.c


base-commit: 26bc672134241a080a83b2ab9aa8abede8d30e1c
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
