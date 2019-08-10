Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E58428891D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 10 Aug 2019 09:22:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DYebp7/M3l0Jvr/7fqkkWqibj4PHFwczA6HszkmRH7o=; b=UCwp6SuwCB6v5e7YvqK2cM7GvW
	ZFmA8yODo5jm/LRJ2gKB3H2TTmstil28HQGGRi5RJEr9SSeeRGmnmNBXwlpCbSBB35CeET0XaJdO/
	S4GC8MmLrBdqbVqivpA175hspBc51IAM18427n9NFRyfjiNiObVxM2iHJVAs1A/JIdRaGSjwQQSEF
	q5M8p1xHgN7M+tehhYilaioKodxIDEoFf3+9bGw3aYMbLjgdfgjgTf5X8C/zc1QX1dkem0MvS51Ah
	OYC+PMEK0rbKHWAbAWVkPHy2PiFLnXRGVlmwJ/BThQ2QbNNw0k9K6wcOgSGyNGh7uV7z7+smGo+ox
	rxNpyonw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwLi0-0008IW-Jn; Sat, 10 Aug 2019 07:22:36 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwLhl-0008Hf-0I
 for linux-arm-kernel@lists.infradead.org; Sat, 10 Aug 2019 07:22:22 +0000
Received: by mail-pg1-x544.google.com with SMTP id i18so46942279pgl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 10 Aug 2019 00:22:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=910+jA2CCo8T9/juoYypHUZPc1nu2oE10wZ3w1PIFww=;
 b=JUllOmyelcml2fbv0psniUaXJxuBW7cOyTv7VROwRN6J/dznwqPYuP79xNKOXex5//
 wVfM8gpHaL5+zAlbF4R+IG9Ark3NBqFknH07y8vGIHiKWIhbzKBQujPL2gjym2yRi2bj
 X/e7XrNBwyLTW/2/nE5oYWJQ40ZsnI25P9JKtkAWwX+FE+WIiJZKj5sND7eFLJOKFs5/
 pbRT5Vi9fT42TiEouZee2mLn2OZBjeiaJAnz1Bf6Xi6BjNBjDt7DTumVnI4ocB/WdIhL
 +y/ZClPgYqOXvTvq7N4lfI+VQ3Z1UFgEZJf/TXGBYMcO3chS2nOlHpcX/SGMzwtaOi6+
 k1sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=910+jA2CCo8T9/juoYypHUZPc1nu2oE10wZ3w1PIFww=;
 b=m5Gw+cl+JGC9m9gTNukDrv0c5kzYk0MgvTG+rtqiVJYY+cqSoYHKNcw+cvKHCJ77QN
 VMER5Ogr2HitUScYznesxFGbZkQKxryVgaoXSyQAUietw/2Of5wYM8e2cUc0eQk+ud8I
 V9lb81vjSezDM+fS/W1aapJUTx95E+bbfK/8GvxKvZj6oFHThJXRdZIjxBPTbVOznQcH
 DizsGl0LLYc6wqxy4F+obJYKvPGMPEqTrTQF1NDqmSNSbkheDtFhPmRIWMmzwF6yWPY7
 2cz7EL6hA9s7nfAtFs73lvEojj9Ig6fTn/z9buTyNOXYz4Z7hQxblS+JgQu3LylfqIK/
 7UwQ==
X-Gm-Message-State: APjAAAXQ+dRCfgXUHxttASb/jXer0CJT5tD8olpItw0RPsF7DT7hqM+x
 d5fbhiRUFcSn0HIEYt4wtY8kEg==
X-Google-Smtp-Source: APXvYqzpjvY4BjDadYCMqHrv1MJzz0JDe+YRk/7XW3b9rbhquZ9IcNOaVCNZ1MOjgi3GDQDP+DHzFw==
X-Received: by 2002:a62:174a:: with SMTP id 71mr26588503pfx.140.1565421738783; 
 Sat, 10 Aug 2019 00:22:18 -0700 (PDT)
Received: from localhost.localdomain (li456-16.members.linode.com.
 [50.116.10.16])
 by smtp.gmail.com with ESMTPSA id l17sm24872660pgj.44.2019.08.10.00.22.12
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 10 Aug 2019 00:22:18 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>,
 Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>,
 David Miller <davem@davemloft.net>, Milian Wolff <milian.wolff@kdab.com>,
 Donald Yandt <donald.yandt@gmail.com>, Davidlohr Bueso <dave@stgolabs.net>,
 Wei Li <liwei391@huawei.com>, Adrian Hunter <adrian.hunter@intel.com>,
 Mark Drayton <mbd@fb.com>,
 "Tzvetomir Stoyanov (VMware)" <tz.stoyanov@gmail.com>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, bpf@vger.kernel.org,
 clang-built-linux@googlegroups.com,
 Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: [PATCH v4 2/2] perf machine: arm/arm64: Improve completeness for
 kernel address space
Date: Sat, 10 Aug 2019 15:21:35 +0800
Message-Id: <20190810072135.27072-3-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190810072135.27072-1-leo.yan@linaro.org>
References: <20190810072135.27072-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_002221_054813_08A23EED 
X-CRM114-Status: GOOD (  20.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Peter Zijlstra <peterz@infradead.org>, coresight@lists.linaro.org,
 Suzuki Poulouse <suzuki.poulose@arm.com>, linux-arm-kernel@lists.infradead.org,
 Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Arm and arm64 architecture reserve some memory regions prior to the
symbol '_stext' and these memory regions later will be used by device
module and BPF jit.  The current code misses to consider these memory
regions thus any address in the regions will be taken as user space
mode, but perf cannot find the corresponding dso with the wrong CPU
mode so we misses to generate samples for device module and BPF
related trace data.

This patch parse the link scripts to get the memory size prior to start
address and reduce this size from 'machine>->kernel_start', then can
get a fixed up kernel start address which contain memory regions for
device module and BPF.  Finally, machine__get_kernel_start() can reflect
more complete kernel memory regions and perf can successfully generate
samples.

The reason for parsing the link scripts is Arm architecture changes text
offset dependent on different platforms, which define multiple text
offsets in $kernel/arch/arm/Makefile.  This offset is decided when build
kernel and the final value is extended in the link script, so we can
extract the used value from the link script.  We use the same way to
parse arm64 link script as well.  If fail to find the link script, the
pre start memory size is assumed as zero, in this case it has no any
change caused with this patch.

Below is detailed info for testing this patch:

- Install or build LLVM/Clang;

- Configure perf with ~/.perfconfig:

  root@debian:~# cat ~/.perfconfig
  # this file is auto-generated.
  [llvm]
          clang-path = /mnt/build/llvm-build/build/install/bin/clang
          kbuild-dir = /mnt/linux-kernel/linux-cs-dev/
          clang-opt = "-g"
          dump-obj = true

  [trace]
          show_zeros = yes
          show_duration = no
          no_inherit = yes
          show_timestamp = no
          show_arg_names = no
          args_alignment = 40
          show_prefix = yes

- Run 'perf trace' command with eBPF event:

  root@debian:~# perf trace -e string \
      -e $kernel/tools/perf/examples/bpf/augmented_raw_syscalls.c

- Read eBPF program memory mapping in kernel:

  root@debian:~# echo 1 > /proc/sys/net/core/bpf_jit_kallsyms
  root@debian:~# cat /proc/kallsyms | grep -E "bpf_prog_.+_sys_[enter|exit]"
  ffff00000008a0d0 t bpf_prog_e470211b846088d5_sys_enter  [bpf]
  ffff00000008c6a4 t bpf_prog_29c7ae234d79bd5c_sys_exit   [bpf]

- Launch any program which accesses file system frequently so can hit
  the system calls trace flow with eBPF event;

- Capture CoreSight trace data with filtering eBPF program:

  root@debian:~# perf record -e cs_etm/@tmc_etr0/ \
	--filter 'filter 0xffff00000008a0d0/0x800' -a sleep 5s

- Decode the eBPF program symbol 'bpf_prog_f173133dc38ccf87_sys_enter':

  root@debian:~# perf script -F,ip,sym
  Frame deformatter: Found 4 FSYNCS
                  0 [unknown]
   ffff00000008a1ac bpf_prog_e470211b846088d5_sys_enter
   ffff00000008a250 bpf_prog_e470211b846088d5_sys_enter
                  0 [unknown]
   ffff00000008a124 bpf_prog_e470211b846088d5_sys_enter
                  0 [unknown]
   ffff00000008a14c bpf_prog_e470211b846088d5_sys_enter
   ffff00000008a13c bpf_prog_e470211b846088d5_sys_enter
   ffff00000008a14c bpf_prog_e470211b846088d5_sys_enter
                  0 [unknown]
   ffff00000008a180 bpf_prog_e470211b846088d5_sys_enter
                  0 [unknown]
   ffff00000008a1ac bpf_prog_e470211b846088d5_sys_enter
   ffff00000008a190 bpf_prog_e470211b846088d5_sys_enter
   ffff00000008a1ac bpf_prog_e470211b846088d5_sys_enter
   ffff00000008a250 bpf_prog_e470211b846088d5_sys_enter
                  0 [unknown]
   ffff00000008a124 bpf_prog_e470211b846088d5_sys_enter
                  0 [unknown]
   ffff00000008a14c bpf_prog_e470211b846088d5_sys_enter
                  0 [unknown]
   ffff00000008a180 bpf_prog_e470211b846088d5_sys_enter
   [...]

Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Suzuki Poulouse <suzuki.poulose@arm.com>
Cc: coresight@lists.linaro.org
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/Makefile.config           | 22 ++++++++++++++++++++++
 tools/perf/arch/arm/util/Build       |  2 ++
 tools/perf/arch/arm/util/machine.c   | 17 +++++++++++++++++
 tools/perf/arch/arm64/util/Build     |  1 +
 tools/perf/arch/arm64/util/machine.c | 17 +++++++++++++++++
 5 files changed, 59 insertions(+)
 create mode 100644 tools/perf/arch/arm/util/machine.c
 create mode 100644 tools/perf/arch/arm64/util/machine.c

diff --git a/tools/perf/Makefile.config b/tools/perf/Makefile.config
index e4988f49ea79..76e0ad0b4fd2 100644
--- a/tools/perf/Makefile.config
+++ b/tools/perf/Makefile.config
@@ -51,6 +51,17 @@ endif
 ifeq ($(SRCARCH),arm)
   NO_PERF_REGS := 0
   LIBUNWIND_LIBS = -lunwind -lunwind-arm
+  PRE_START_SIZE := 0
+  ifneq ($(wildcard $(srctree)/arch/$(SRCARCH)/kernel/vmlinux.lds),)
+    # Extract info from lds:
+    #   . = ((0xC0000000)) + 0x00208000;
+    # PRE_START_SIZE := 0x00208000
+    PRE_START_SIZE := $(shell egrep ' \. \= \({2}0x[0-9a-fA-F]+\){2}' \
+      $(srctree)/arch/$(SRCARCH)/kernel/vmlinux.lds | \
+      sed -e 's/[(|)|.|=|+|<|;|-]//g' -e 's/ \+/ /g' -e 's/^[ \t]*//' | \
+      awk -F' ' '{printf "0x%x", $$2}' 2>/dev/null)
+  endif
+  CFLAGS += -DARM_PRE_START_SIZE=$(PRE_START_SIZE)
 endif
 
 ifeq ($(SRCARCH),arm64)
@@ -58,6 +69,17 @@ ifeq ($(SRCARCH),arm64)
   NO_SYSCALL_TABLE := 0
   CFLAGS += -I$(OUTPUT)arch/arm64/include/generated
   LIBUNWIND_LIBS = -lunwind -lunwind-aarch64
+  PRE_START_SIZE := 0
+  ifneq ($(wildcard $(srctree)/arch/$(SRCARCH)/kernel/vmlinux.lds),)
+    # Extract info from lds:
+    #  . = ((((((((0xffffffffffffffff)) - (((1)) << (48)) + 1) + (0)) + (0x08000000))) + (0x08000000))) + 0x00080000;
+    # PRE_START_SIZE := (0x08000000 + 0x08000000 + 0x00080000) = 0x10080000
+    PRE_START_SIZE := $(shell egrep ' \. \= \({8}0x[0-9a-fA-F]+\){2}' \
+      $(srctree)/arch/$(SRCARCH)/kernel/vmlinux.lds | \
+      sed -e 's/[(|)|.|=|+|<|;|-]//g' -e 's/ \+/ /g' -e 's/^[ \t]*//' | \
+      awk -F' ' '{printf "0x%x", $$6+$$7+$$8}' 2>/dev/null)
+  endif
+  CFLAGS += -DARM_PRE_START_SIZE=$(PRE_START_SIZE)
 endif
 
 ifeq ($(SRCARCH),csky)
diff --git a/tools/perf/arch/arm/util/Build b/tools/perf/arch/arm/util/Build
index 296f0eac5e18..efa6b768218a 100644
--- a/tools/perf/arch/arm/util/Build
+++ b/tools/perf/arch/arm/util/Build
@@ -1,3 +1,5 @@
+perf-y += machine.o
+
 perf-$(CONFIG_DWARF) += dwarf-regs.o
 
 perf-$(CONFIG_LOCAL_LIBUNWIND)    += unwind-libunwind.o
diff --git a/tools/perf/arch/arm/util/machine.c b/tools/perf/arch/arm/util/machine.c
new file mode 100644
index 000000000000..db172894e4ea
--- /dev/null
+++ b/tools/perf/arch/arm/util/machine.c
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <linux/types.h>
+#include <linux/string.h>
+#include <stdlib.h>
+
+#include "../../util/machine.h"
+
+void arch__fix_kernel_text_start(u64 *start)
+{
+	/*
+	 * On arm, the 16MB virtual memory space prior to 'kernel_start' is
+	 * allocated to device modules, a PMD table if CONFIG_HIGHMEM is
+	 * enabled and a PGD table.  To reflect the complete kernel address
+	 * space, compensate the pre-defined regions for kernel start address.
+	 */
+	*start = *start - ARM_PRE_START_SIZE;
+}
diff --git a/tools/perf/arch/arm64/util/Build b/tools/perf/arch/arm64/util/Build
index 3cde540d2fcf..8081fb8a7b3d 100644
--- a/tools/perf/arch/arm64/util/Build
+++ b/tools/perf/arch/arm64/util/Build
@@ -1,4 +1,5 @@
 perf-y += header.o
+perf-y += machine.o
 perf-y += sym-handling.o
 perf-$(CONFIG_DWARF)     += dwarf-regs.o
 perf-$(CONFIG_LOCAL_LIBUNWIND) += unwind-libunwind.o
diff --git a/tools/perf/arch/arm64/util/machine.c b/tools/perf/arch/arm64/util/machine.c
new file mode 100644
index 000000000000..61058dca8c5a
--- /dev/null
+++ b/tools/perf/arch/arm64/util/machine.c
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <linux/types.h>
+#include <linux/string.h>
+#include <stdlib.h>
+
+#include "../../util/machine.h"
+
+void arch__fix_kernel_text_start(u64 *start)
+{
+	/*
+	 * On arm64, the root PGD table, device module memory region and
+	 * BPF jit region are prior to 'kernel_start'.  To reflect the
+	 * complete kernel address space, compensate these pre-defined
+	 * regions for kernel start address.
+	 */
+	*start = *start - ARM_PRE_START_SIZE;
+}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
