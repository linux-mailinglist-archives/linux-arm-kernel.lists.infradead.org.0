Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03EFFDCA71
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:11:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mTT+JiEqH5uyX5axuk8FDFPxGq4EUrGVA6BqrcAKZPQ=; b=g+fSJL/tdOKgGR
	IUXhEztZPv+Erv8eGJ7ArcKjkSvlu4NtW/OL1wdh/1/PHJHuBggwC7UZ+mg6pXLzek0Bn7F7+va42
	ro8aZpHzdNh0KaEmBzHWtTn0KMp0cQeEqa1owHpB8J2XsMP1GSapA2rCZpvVgRplOoLGEpcbuU4LR
	kJMJU5pw7Sw8tXgoaign0bsW9ZB20EplFqV4hf27GCvuGhd8E5fPZX087nXCUnHTLtImUeMyFCYsy
	szl1pHEEQ4BggbJPBvgHLAtq6iJJPcuL1QUMaQhdPMftPMwZeUJU0jXOxtAQqGQFMrSigj+s+baCl
	SWF0SuUWK+OCoxza482Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUqR-0001Tj-Mi; Fri, 18 Oct 2019 16:11:15 +0000
Received: from mail-yw1-xc4a.google.com ([2607:f8b0:4864:20::c4a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUpz-0001Se-0j
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 16:10:48 +0000
Received: by mail-yw1-xc4a.google.com with SMTP id y70so4764262ywd.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 09:10:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=t+DRDqz67Twe6Iyofi8RQAeNodEvIc7fNPUNsIrBR+w=;
 b=qgbEQaGzHqaPH3cxTJE6CGTvZ+cRjHUHTkYr1B9DStapni7EFSvFnUDWSGPFTm7gwQ
 BQRlnzPOMPn4q93e238qrgFaMvCQf9Spzz7SINiIlVpuYks/Wu8Nwa1QmimiSJxpH3pA
 zXtHmrE7MTXaAB6BLpC8vL3pFXfn9A40pGj+qHFCNXTwD0ywpccoB55v3hYAWCkjkCgv
 t4a0qzeiaiVD3qeEEiRLETv6os7mi6JMjFcZQ7HZ3TsPYfuCCRN07OVVFEBv060hDwM0
 Oe2+l3QRysVBZMWOYZ/v2Sou4QvuVNVoxWjAknk7l6ulOzhXQHgz5ej8/LwC2yX3JfcO
 auvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=t+DRDqz67Twe6Iyofi8RQAeNodEvIc7fNPUNsIrBR+w=;
 b=BR8dc3tjF2qnzx6W6zK0KaFNEhLMsUPWVCF5Bu6TpilC/4eGy4SMksJ+SBVJ0qeSGR
 4knn0BsYllA0mKM4MGPJQO4raDvVZykYWK6U6c40waOmgm1FJk2ZFnHxYFgHcQRTbsov
 H6V4pMBosRNHMpmsouQuld8q1tHoQ/zimrJ2RSuAJqWHyzD9CjUqtCD3cwXPCpC4jGZs
 9JJ0pA0hlaqXJh2zJvSdvLLlWvLp48yadaQ2dQcfpnOF6J8Hw/NIuwXNmCCaAppNuQbK
 QKojYhY1V9dyN5Ft3OszaORHD/hDdDPDdT4VbO4D1r0g+09kG1LVUflW8PuHnkIowpyC
 99lQ==
X-Gm-Message-State: APjAAAVDxUobNsH8+5mpb88p3/L+OWgCi8Vrda4cNG8E3U2iNaYXfuvw
 60bXW4++WDrZrnPlMZFzOrvuizXSEh00mYqfOM8=
X-Google-Smtp-Source: APXvYqyvgW1/nPqoxtlaKdWfjDEG7KEXwdtGVI7DdMRD1tlwHR6z5N+W9oDyStEa7Ea2uqFWOqGCG100k3GuhoDibZE=
X-Received: by 2002:a25:a324:: with SMTP id d33mr6752834ybi.58.1571415044349; 
 Fri, 18 Oct 2019 09:10:44 -0700 (PDT)
Date: Fri, 18 Oct 2019 09:10:15 -0700
Message-Id: <20191018161033.261971-1-samitolvanen@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH 00/18] add support for Clang's Shadow Call Stack
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_091047_090398_0CD19A4A 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c4a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 kernel-hardening@lists.openwall.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series adds support for Clang's Shadow Call Stack (SCS)
mitigation, which uses a separately allocated shadow stack to protect
against return address overwrites. More information can be found here:

  https://clang.llvm.org/docs/ShadowCallStack.html

SCS is currently supported only on arm64, where the compiler requires
the x18 register to be reserved for holding the current task's shadow
stack pointer. Because of this, the series includes four patches from
Ard to remove x18 usage from assembly code and to reserve the register
from general allocation.

With -fsanitize=shadow-call-stack, the compiler injects instructions
to all non-leaf C functions to store the return address to the shadow
stack and unconditionally load it again before returning. As a result,
SCS is incompatible with features that rely on modifying function
return addresses to alter control flow, such as function graph tracing
and kretprobes. A copy of the return address is still kept in the
kernel stack for compatibility with stack unwinding, for example.

SCS has a minimal performance overhead, but allocating shadow stacks
increases kernel memory usage. The feature is therefore mostly useful
on hardware that lacks support for PAC instructions. This series adds
a ROP protection choice to the kernel configuration, where other
return address protection options can be selected as they are added to
the kernel.


Ard Biesheuvel (4):
  arm64/lib: copy_page: avoid x18 register in assembler code
  arm64: kvm: stop treating register x18 as caller save
  arm64: kernel: avoid x18 as an arbitrary temp register
  arm64: kbuild: reserve reg x18 from general allocation by the compiler

Sami Tolvanen (14):
  arm64: mm: don't use x18 in idmap_kpti_install_ng_mappings
  add support for Clang's Shadow Call Stack (SCS)
  scs: add accounting
  scs: add support for stack usage debugging
  trace: disable function graph tracing with SCS
  kprobes: fix compilation without CONFIG_KRETPROBES
  kprobes: disable kretprobes with SCS
  arm64: reserve x18 only with Shadow Call Stack
  arm64: preserve x18 when CPU is suspended
  arm64: efi: restore x18 if it was corrupted
  arm64: vdso: disable Shadow Call Stack
  arm64: kprobes: fix kprobes without CONFIG_KRETPROBES
  arm64: disable SCS for hypervisor code
  arm64: implement Shadow Call Stack

 Makefile                             |   6 +
 arch/Kconfig                         |  41 ++++-
 arch/arm64/Kconfig                   |   1 +
 arch/arm64/Makefile                  |   4 +
 arch/arm64/include/asm/scs.h         |  60 ++++++++
 arch/arm64/include/asm/stacktrace.h  |   4 +
 arch/arm64/include/asm/thread_info.h |   3 +
 arch/arm64/kernel/Makefile           |   1 +
 arch/arm64/kernel/asm-offsets.c      |   3 +
 arch/arm64/kernel/cpu-reset.S        |   4 +-
 arch/arm64/kernel/efi-rt-wrapper.S   |   7 +-
 arch/arm64/kernel/entry.S            |  23 +++
 arch/arm64/kernel/head.S             |   9 ++
 arch/arm64/kernel/irq.c              |   2 +
 arch/arm64/kernel/probes/kprobes.c   |   2 +
 arch/arm64/kernel/process.c          |   3 +
 arch/arm64/kernel/scs.c              |  39 +++++
 arch/arm64/kernel/smp.c              |   4 +
 arch/arm64/kernel/vdso/Makefile      |   2 +-
 arch/arm64/kvm/hyp/Makefile          |   3 +-
 arch/arm64/kvm/hyp/entry.S           |  12 +-
 arch/arm64/lib/copy_page.S           |  38 ++---
 arch/arm64/mm/proc.S                 |  69 +++++----
 drivers/base/node.c                  |   6 +
 fs/proc/meminfo.c                    |   4 +
 include/linux/compiler-clang.h       |   2 +
 include/linux/compiler_types.h       |   4 +
 include/linux/mmzone.h               |   3 +
 include/linux/scs.h                  |  88 +++++++++++
 init/init_task.c                     |   6 +
 init/main.c                          |   3 +
 kernel/Makefile                      |   1 +
 kernel/fork.c                        |   9 ++
 kernel/kprobes.c                     |  38 ++---
 kernel/sched/core.c                  |   2 +
 kernel/sched/sched.h                 |   1 +
 kernel/scs.c                         | 221 +++++++++++++++++++++++++++
 kernel/trace/Kconfig                 |   1 +
 mm/page_alloc.c                      |   6 +
 mm/vmstat.c                          |   3 +
 40 files changed, 656 insertions(+), 82 deletions(-)
 create mode 100644 arch/arm64/include/asm/scs.h
 create mode 100644 arch/arm64/kernel/scs.c
 create mode 100644 include/linux/scs.h
 create mode 100644 kernel/scs.c

-- 
2.23.0.866.gb869b98d4c-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
