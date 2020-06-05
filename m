Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD661EF8D1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 15:20:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jz7SK2argdgJuOble3nglwQtusHAhk8vEf6mks/WtUc=; b=MZNvMWu+gRHJfo
	w4tu5r2C+mWvzYuSzxOhxMP6tG9n7GzfEM30XgvexQuMYn0k3qamwRfF1EWFTcT04GIWbf9GFR1l8
	Q+ZEtnwDGEbfPWVicS9dt3GgwyVSf2RFdl+MJLBT3s7T82KwvKGXmvdnDksCJgEe+O1MH/I+IhoR4
	dSIImGjT7gEl5IviLxShkgVNC8BCHQwtizr3Duk5OJ+w+kdzR5Q0eCRfDB37fRoUetiWHk4qot0IL
	QPtrWfIQgcIrGGSRrGWzlnsoGmy3vXWDtPFQu0nd3iHZH68WLSLvc0d0oOZJoNGK+b6Axp/IdeuA2
	EEqF5ji/pqLvhGx2mGxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhCGb-0002vo-Rw; Fri, 05 Jun 2020 13:20:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhCFI-00023a-0w
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 13:18:53 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1C2E02067B;
 Fri,  5 Jun 2020 13:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591363131;
 bh=eeLGS2Ob+vqXgTRq2Bp7pW9jTvXCa6SMu6lcPFzwprU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=maFrPBLORDef7L1iOwJbK22plN7z9QKx0chV1sjI41dxZav/kUFiuvZP5AsK8EzQH
 8Q25Yt5egUFg+QVtRvAwhTPddcTvFQFvkcRjdzBeM8S59zKXWx3pjwEpWuWioDnE+r
 rg+MZrqs2Sh4tc1o8qGKJ3ptSeN32tFM9DJ/za3U=
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH 4/5] arm64: vdso: Add getcpu() implementation
Date: Fri,  5 Jun 2020 14:11:30 +0100
Message-Id: <20200605131131.16491-5-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200605131131.16491-1-broonie@kernel.org>
References: <20200605131131.16491-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_061852_193188_65FB3D0C 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Brown <broonie@kernel.org>, Andrei Vagin <avagin@gmail.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some applications, especially trace ones, benefit from avoiding the syscall
overhead on getcpu() calls so provide a vDSO implementation of it.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/kernel/vdso/Makefile   |  2 +-
 arch/arm64/kernel/vdso/vdso.lds.S |  1 +
 arch/arm64/kernel/vdso/vgetcpu.c  | 48 +++++++++++++++++++++++++++++++
 3 files changed, 50 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/kernel/vdso/vgetcpu.c

diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
index 279b1b9fb956..4ba2a159dd7c 100644
--- a/arch/arm64/kernel/vdso/Makefile
+++ b/arch/arm64/kernel/vdso/Makefile
@@ -11,7 +11,7 @@
 ARCH_REL_TYPE_ABS := R_AARCH64_JUMP_SLOT|R_AARCH64_GLOB_DAT|R_AARCH64_ABS64
 include $(srctree)/lib/vdso/Makefile
 
-obj-vdso := vgettimeofday.o note.o sigreturn.o
+obj-vdso := vgettimeofday.o note.o sigreturn.o vgetcpu.o
 
 # Build rules
 targets := $(obj-vdso) vdso.so vdso.so.dbg
diff --git a/arch/arm64/kernel/vdso/vdso.lds.S b/arch/arm64/kernel/vdso/vdso.lds.S
index 7ad2d3a0cd48..c2fd94f14b94 100644
--- a/arch/arm64/kernel/vdso/vdso.lds.S
+++ b/arch/arm64/kernel/vdso/vdso.lds.S
@@ -77,6 +77,7 @@ VERSION
 		__kernel_gettimeofday;
 		__kernel_clock_gettime;
 		__kernel_clock_getres;
+		__kernel_getcpu;
 	local: *;
 	};
 }
diff --git a/arch/arm64/kernel/vdso/vgetcpu.c b/arch/arm64/kernel/vdso/vgetcpu.c
new file mode 100644
index 000000000000..e8972e561e08
--- /dev/null
+++ b/arch/arm64/kernel/vdso/vgetcpu.c
@@ -0,0 +1,48 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * ARM64 userspace implementations of getcpu()
+ *
+ * Copyright (C) 2020 ARM Limited
+ *
+ */
+
+#include <asm/unistd.h>
+#include <asm/vdso/datapage.h>
+
+struct getcpucache;
+
+static __always_inline
+int getcpu_fallback(unsigned int *_cpu, unsigned int *_node,
+		    struct getcpucache *_c)
+{
+	register unsigned int *cpu asm("x0") = _cpu;
+	register unsigned int *node asm("x1") = _node;
+	register struct getcpucache *c asm("x2") = _c;
+	register long ret asm ("x0");
+	register long nr asm("x8") = __NR_getcpu;
+
+	asm volatile(
+	"       svc #0\n"
+	: "=r" (ret)
+	: "r" (cpu), "r" (node), "r" (c), "r" (nr)
+	: "memory");
+
+	return ret;
+}
+
+int __kernel_getcpu(unsigned int *cpu, unsigned int *node,
+		    struct getcpucache *c)
+{
+	struct vdso_cpu_data *cpu_data = __vdso_cpu_data();
+
+	if (cpu_data) {
+		if (cpu)
+			*cpu = cpu_data->cpu;
+		if (node)
+			*node = cpu_data->node;
+
+		return 0;
+	}
+
+	return getcpu_fallback(cpu, node, c);
+}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
