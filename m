Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 521C64207D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 11:16:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ft5d1GUgbWVlbtkr5qu5htqQ5zcqsXl1Gx19KC2HE5A=; b=joV8+x5ofrbNRk
	b7IIyimRHHXBYjCcSA+fi+IDuYtXSlvn01vF5dwXNBiSZfXtWlT9yyLsxjp012CWRb2u5fHNrb1m2
	3QcsdU2hyTM897e4WnMcC7ULXd9WI6aM4GRdVXSothjBKGF8zawW8AKv6OF5cYmaCdGuM3VRh46zA
	tyNdrlfKUUV7nyVsnu9IOIxANTcFXYTgv0KdnHPgImnvENn0/yG892SUrvJz/Hz9d4S3C9YPN1u30
	bkjjyGhh4iFuE5wk+f+qLHAKi2xs37BOtA0IVWTKgCQyTEdBUtztxe/fjB7nev0/5TA0U2ikDmncS
	gddESUOdi3KHOx1atK3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hazMQ-0002t5-5a; Wed, 12 Jun 2019 09:16:02 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hazLR-0001CA-76
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 09:15:03 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 12076407B096C334960D;
 Wed, 12 Jun 2019 17:11:56 +0800 (CST)
Received: from HGHY2Y004646261.china.huawei.com (10.184.12.158) by
 DGGEMS409-HUB.china.huawei.com (10.3.19.209) with Microsoft SMTP Server id
 14.3.439.0; Wed, 12 Jun 2019 17:11:47 +0800
From: Zenghui Yu <yuzenghui@huawei.com>
To: <linux-arm-kernel@lists.infradead.org>, <kvmarm@lists.cs.columbia.edu>,
 <kvm@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-perf-users@vger.kernel.org>
Subject: [PATCH v1 4/5] perf,kvm/arm64: Add stat support on arm64
Date: Wed, 12 Jun 2019 09:08:45 +0000
Message-ID: <1560330526-15468-5-git-send-email-yuzenghui@huawei.com>
X-Mailer: git-send-email 2.6.4.windows.1
In-Reply-To: <1560330526-15468-1-git-send-email-yuzenghui@huawei.com>
References: <1560330526-15468-1-git-send-email-yuzenghui@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.184.12.158]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_021501_481913_A9E2EEC9 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, marc.zyngier@arm.com, catalin.marinas@arm.com,
 will.deacon@arm.com, christoffer.dall@arm.com, acme@kernel.org,
 linuxarm@huawei.com, acme@redhat.com, peterz@infradead.org,
 alexander.shishkin@linux.intel.com, mingo@redhat.com,
 wanghaibin.wang@huawei.com, ganapatrao.kulkarni@cavium.com,
 Zenghui Yu <yuzenghui@huawei.com>, namhyung@kernel.org, jolsa@redhat.com,
 xiexiangyou@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

'perf kvm stat report/record' generates a statistical analysis of KVM
events and can be used to analyze guest exit reasons. This patch tries
to add stat support on arm64.

We have a mapping between guest's "exit_code" and "exit_reason" which
already exists under arch/arm64/include/asm/ (kvm_arm_exception_type),
and we've used it to report guest's exit type through trace_kvm_exit().
Copy kvm_arm_exception_type into aarch64_guest_exits.h, thus export it
to userspace.

It records on two available KVM tracepoints for arm64: "kvm:kvm_entry"
and "kvm:kvm_exit", and reports statistical data which includes events
handles time, samples, and so on.

A simple test go below:

 # pgrep qemu
6039
9937

 # ./tools/perf/perf kvm stat record -p 6039
[ perf record: Woken up 3 times to write data ]
[ perf record: Captured and wrote 15.629 MB perf.data.guest (199063 samples) ]

 # ./tools/perf/perf kvm stat report --event=vmexit

Analyze events for all VMs, all VCPUs:

             VM-EXIT    Samples  Samples%     Time%    Min Time    Max Time         Avg time

                TRAP      49040    97.15%   100.00%      2.60us   4072.98us   3431.60us ( +-   0.17% )
                 IRQ       1437     2.85%     0.00%      0.90us     24.56us      2.06us ( +-   1.37% )

Total Samples:50477, Total events handled time:168288630.04us.

Cc: Arnaldo Carvalho de Melo <acme@redhat.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Christoffer Dall <christoffer.dall@arm.com>
Cc: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
---
 tools/perf/arch/arm64/Makefile                   |  2 +
 tools/perf/arch/arm64/util/Build                 |  1 +
 tools/perf/arch/arm64/util/aarch64_guest_exits.h | 23 +++++++++
 tools/perf/arch/arm64/util/kvm-stat.c            | 60 ++++++++++++++++++++++++
 4 files changed, 86 insertions(+)
 create mode 100644 tools/perf/arch/arm64/util/aarch64_guest_exits.h
 create mode 100644 tools/perf/arch/arm64/util/kvm-stat.c

diff --git a/tools/perf/arch/arm64/Makefile b/tools/perf/arch/arm64/Makefile
index dbef716..172146e 100644
--- a/tools/perf/arch/arm64/Makefile
+++ b/tools/perf/arch/arm64/Makefile
@@ -2,6 +2,8 @@
 ifndef NO_DWARF
 PERF_HAVE_DWARF_REGS := 1
 endif
+
+HAVE_KVM_STAT_SUPPORT := 1
 PERF_HAVE_JITDUMP := 1
 PERF_HAVE_ARCH_REGS_QUERY_REGISTER_OFFSET := 1
 
diff --git a/tools/perf/arch/arm64/util/Build b/tools/perf/arch/arm64/util/Build
index 3cde540..d136674 100644
--- a/tools/perf/arch/arm64/util/Build
+++ b/tools/perf/arch/arm64/util/Build
@@ -1,5 +1,6 @@
 perf-y += header.o
 perf-y += sym-handling.o
+perf-y += kvm-stat.o
 perf-$(CONFIG_DWARF)     += dwarf-regs.o
 perf-$(CONFIG_LOCAL_LIBUNWIND) += unwind-libunwind.o
 perf-$(CONFIG_LIBDW_DWARF_UNWIND) += unwind-libdw.o
diff --git a/tools/perf/arch/arm64/util/aarch64_guest_exits.h b/tools/perf/arch/arm64/util/aarch64_guest_exits.h
new file mode 100644
index 0000000..a8ca4b8
--- /dev/null
+++ b/tools/perf/arch/arm64/util/aarch64_guest_exits.h
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef ARCH_PERF_AARCH64_GUEST_EXITS_H
+#define ARCH_PERF_AARCH64_GUEST_EXITS_H
+
+/* virt.h */
+/* Error returned when an invalid stub number is passed into x0 */
+#define HVC_STUB_ERR	0xbadca11
+
+/* kvm_asm.h */
+#define ARM_EXCEPTION_IRQ         0
+#define ARM_EXCEPTION_EL1_SERROR  1
+#define ARM_EXCEPTION_TRAP        2
+#define ARM_EXCEPTION_IL          3
+/* The hyp-stub will return this for any kvm_call_hyp() call */
+#define ARM_EXCEPTION_HYP_GONE    HVC_STUB_ERR
+
+#define kvm_arm_exception_type					\
+	{ARM_EXCEPTION_IRQ,		"IRQ"		},	\
+	{ARM_EXCEPTION_EL1_SERROR,	"SERROR"	},	\
+	{ARM_EXCEPTION_TRAP,		"TRAP"		},	\
+	{ARM_EXCEPTION_HYP_GONE,	"HYP_GONE"	}
+
+#endif
diff --git a/tools/perf/arch/arm64/util/kvm-stat.c b/tools/perf/arch/arm64/util/kvm-stat.c
new file mode 100644
index 0000000..5804bc2
--- /dev/null
+++ b/tools/perf/arch/arm64/util/kvm-stat.c
@@ -0,0 +1,60 @@
+/*
+ * Arch specific functions for perf kvm stat.
+ *
+ * Copyright (c) 2019 - Huawei Technologies Co., Ltd.
+ * Author(s): Zenghui Yu <yuzenghui@huawei.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License, version 2, as
+ * published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, see <http://www.gnu.org/licenses/>.
+ */
+#include <errno.h>
+#include "../../util/kvm-stat.h"
+#include "../../util/evsel.h"
+#include "aarch64_guest_exits.h"
+
+define_exit_reasons_table(arm64_exit_reasons, kvm_arm_exception_type);
+
+static struct kvm_events_ops exit_events = {
+	.is_begin_event = exit_event_begin,
+	.is_end_event = exit_event_end,
+	.decode_key = exit_event_decode_key,
+	.name = "VM-EXIT"
+};
+
+const char *vcpu_id_str = "vcpu_id";
+const int decode_str_len = 20;
+const char *kvm_exit_reason = "ret";
+const char *kvm_entry_trace = "kvm:kvm_entry";
+const char *kvm_exit_trace = "kvm:kvm_exit";
+
+const char *kvm_events_tp[] = {
+	"kvm:kvm_entry",
+	"kvm:kvm_exit",
+	NULL,
+};
+
+struct kvm_reg_events_ops kvm_reg_events_ops[] = {
+	{ .name = "vmexit", .ops = &exit_events },
+	{ NULL, NULL },
+};
+
+const char * const kvm_skip_events[] = {
+	NULL,
+};
+
+int cpu_isa_init(struct perf_kvm_stat *kvm, const char *cpuid __maybe_unused)
+{
+	kvm->exit_reasons = arm64_exit_reasons;
+	kvm->exit_reasons_isa = "aarch64";
+
+	return 0;
+}
-- 
1.8.3.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
