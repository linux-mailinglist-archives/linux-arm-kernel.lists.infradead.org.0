Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 040D52FF2D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 17:16:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PaJbz45h6WuU/sNwx3ytWZFGUj2c6USnnfGwY/EDlzk=; b=XWaSEq5s9WaVKFNjVP7szl/sLy
	BDwYu9zIEdhclU2m0RW2SsW65uSpjTdINoqn1V28LJjBn36jT9U0ujCuz/pkxq0oD6LHGdpNonAwh
	UYpVDL0vyxDxl5eFEeRQI1PZsU5utI5yvU1rLvwjA1nRZqryk3DhXmYpou7qEPJTcS6DRk0qqyUDe
	dVoN8Sc8rZ/jfBd4cwm50rURRCdkrzO81q49Wq2Rstz6ZP57I9gmlQvrp4jP9ztHUzGUCPqd8eKiP
	gLoYmxgN92zrioDYymTp+SE5P+huGFYQZRNXC8rRcNcrRHOS3UH5aGSdLJcNRTjlG1bWCmlQ0QHq6
	57mCEL8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWMn7-00058T-6q; Thu, 30 May 2019 15:16:29 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWMl2-0002I1-Nn
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 15:14:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 74780341;
 Thu, 30 May 2019 08:14:20 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id CA8013F59C;
 Thu, 30 May 2019 08:14:18 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: kvmarm@lists.cs.columbia.edu
Subject: [PATCH kvmtool v3 9/9] arm64: Select SVE vector lengths via the
 command line
Date: Thu, 30 May 2019 16:13:14 +0100
Message-Id: <1559229194-3036-10-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1559229194-3036-1-git-send-email-Dave.Martin@arm.com>
References: <1559229194-3036-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_081420_820611_CD4BC646 
X-CRM114-Status: GOOD (  19.85  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Christoffer Dall <cdall@kernel.org>, Marc Zyngier <marc.zyngier@arm.com>,
 Andre Przywara <andre.przywara@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Zhang Lei <zhang.lei@jp.fujitsu.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 =?UTF-8?q?Alex=20Benn=C3=A9e?= <alex.bennee@linaro.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to support use cases such as migration, it may be
important in some situations to restrict the set of SVE vector
lengths available to the guest.  It can also be useful to observe
the behaviour of guest OSes with different vector lengths.

To enable testing and experimentation for such configurations, this
patch adds a command-line option to allow setting of the set of
vector lengths to be made available to the guest.

For now, the setting is global: no means is offered to configure
individual guest vcpus independently of each other.

By default all vector lengths that the host can support are given
to the guest, as before.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
---
 arm/aarch64/include/kvm/kvm-config-arch.h |  8 +++-
 arm/aarch64/kvm-cpu.c                     | 80 ++++++++++++++++++++++++++++++-
 arm/include/arm-common/kvm-config-arch.h  |  1 +
 3 files changed, 87 insertions(+), 2 deletions(-)

diff --git a/arm/aarch64/include/kvm/kvm-config-arch.h b/arm/aarch64/include/kvm/kvm-config-arch.h
index 41e9d05..a996612 100644
--- a/arm/aarch64/include/kvm/kvm-config-arch.h
+++ b/arm/aarch64/include/kvm/kvm-config-arch.h
@@ -1,6 +1,8 @@
 #ifndef KVM__KVM_CONFIG_ARCH_H
 #define KVM__KVM_CONFIG_ARCH_H
 
+int sve_vls_parser(const struct option *opt, const char *arg, int unset);
+
 #define ARM_OPT_ARCH_RUN(cfg)						\
 	OPT_BOOLEAN('\0', "aarch32", &(cfg)->aarch32_guest,		\
 			"Run AArch32 guest"),				\
@@ -16,7 +18,11 @@
 	OPT_BOOLEAN('\0', "enable-sve", &(cfg)->enable_sve,		\
 			"Enable SVE for the guest"),			\
 	OPT_BOOLEAN('\0', "disable-sve", &(cfg)->disable_sve,		\
-			"Disable SVE for the guest"),
+			"Disable SVE for the guest"),			\
+	OPT_CALLBACK('\0', "sve-vls", &(cfg)->sve_vqs,			\
+		     "comma-separated list of vector lengths, in 128-bit units", \
+		     "Set of vector lengths to enable for the guest",	\
+		     sve_vls_parser, NULL),
 
 #include "arm-common/kvm-config-arch.h"
 
diff --git a/arm/aarch64/kvm-cpu.c b/arm/aarch64/kvm-cpu.c
index cdfb22e..2c624c3 100644
--- a/arm/aarch64/kvm-cpu.c
+++ b/arm/aarch64/kvm-cpu.c
@@ -1,8 +1,13 @@
+#include <errno.h>
+#include <stdio.h>
+#include <string.h>
+
 #include "kvm/kvm-cpu.h"
 #include "kvm/kvm.h"
 #include "kvm/virtio.h"
 
 #include <asm/ptrace.h>
+#include <asm/sigcontext.h>
 
 #define COMPAT_PSR_F_BIT	0x00000040
 #define COMPAT_PSR_I_BIT	0x00000080
@@ -12,6 +17,65 @@
 #define SCTLR_EL1_E0E_MASK	(1 << 24)
 #define SCTLR_EL1_EE_MASK	(1 << 25)
 
+/*
+ * Work around old kernel headers that lack these definitions in
+ * <asm/sigcontext.h>:
+ */
+#ifndef SVE_VQ_MIN
+#define SVE_VQ_MIN 1
+#endif
+
+#ifndef SVE_VQ_MAX
+#define SVE_VQ_MAX 512
+#endif
+
+int sve_vls_parser(const struct option *opt, const char *arg, int unset)
+{
+	size_t offset = 0;
+	int vq, n, t;
+	u64 (*vqs)[(SVE_VQ_MAX + 1 - SVE_VQ_MIN + 63) / 64];
+	u64 **cfg_vqs = opt->value;
+
+	if (*cfg_vqs) {
+		pr_err("sve-vls: SVE vector lengths set may only be specified once");
+		return -1;
+	}
+
+	vqs = calloc(1, sizeof *vqs);
+	if (!vqs)
+		die("%s", strerror(ENOMEM));
+
+	offset = 0;
+	while (arg[offset]) {
+		n = -1;
+
+		t = sscanf(arg + offset,
+			   offset == 0 ? "%i%n" : ",%i%n",
+			   &vq, &n);
+		if (t == EOF || t < 1 || n <= 0) {
+			pr_err("sve-vls: Comma-separated list of vector lengths required");
+			goto error;
+		}
+
+		if (vq < SVE_VQ_MIN || vq > SVE_VQ_MAX) {
+			pr_err("sve-vls: Invalid vector length %d", vq);
+			goto error;
+		}
+
+		vq -= SVE_VQ_MIN;
+		(*vqs)[vq / 64] |= (u64)1 << (vq % 64);
+
+		offset += n;
+	}
+
+	*cfg_vqs = *vqs;
+	return 0;
+
+error:
+	free(vqs);
+	return -1;
+}
+
 static __u64 __core_reg_id(__u64 offset)
 {
 	__u64 id = KVM_REG_ARM64 | KVM_REG_ARM_CORE | offset;
@@ -180,6 +244,16 @@ void kvm_cpu__select_features(struct kvm *kvm, struct kvm_vcpu_init *init)
 static int configure_sve(struct kvm_cpu *vcpu)
 {
 	int feature = KVM_ARM_VCPU_SVE;
+	struct kvm_one_reg r = {
+		.id = KVM_REG_ARM64_SVE_VLS,
+		.addr = (u64)vcpu->kvm->cfg.arch.sve_vqs,
+	};
+
+	if (vcpu->kvm->cfg.arch.sve_vqs)
+		if (ioctl(vcpu->vcpu_fd, KVM_SET_ONE_REG, &r)) {
+			pr_err("Cannot set requested SVE vector lengths");
+			return -1;
+		}
 
 	if (ioctl(vcpu->vcpu_fd, KVM_ARM_VCPU_FINALIZE, &feature)) {
 		pr_err("KVM_ARM_VCPU_FINALIZE: %s", strerror(errno));
@@ -191,9 +265,13 @@ static int configure_sve(struct kvm_cpu *vcpu)
 
 int kvm_cpu__configure_features(struct kvm_cpu *vcpu)
 {
-	if (vcpu->kvm->cfg.arch.enable_sve)
+	if (vcpu->kvm->cfg.arch.enable_sve) {
 		if (configure_sve(vcpu))
 			return -1;
+	} else {
+		if (vcpu->kvm->cfg.arch.sve_vqs)
+			pr_warning("SVE vector lengths ignored");
+	}
 
 	return 0;
 }
diff --git a/arm/include/arm-common/kvm-config-arch.h b/arm/include/arm-common/kvm-config-arch.h
index 40e3d1f..b45201f 100644
--- a/arm/include/arm-common/kvm-config-arch.h
+++ b/arm/include/arm-common/kvm-config-arch.h
@@ -12,6 +12,7 @@ struct kvm_config_arch {
 	u64		kaslr_seed;
 	bool		enable_sve;
 	bool		disable_sve;
+	u64		*sve_vqs;
 	bool		enable_ptrauth;
 	bool		disable_ptrauth;
 	enum irqchip_type irqchip;
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
