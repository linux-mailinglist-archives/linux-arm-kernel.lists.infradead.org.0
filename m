Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99BD56669B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 07:47:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q73zw9YU8wrIdcOEapWNL3FLhWeC0vtvWpSaF0Id5Wg=; b=rIcP5ecrShKp5f
	uhoUEl5YHn0HHfhG/d9dfsZyWhBdx7DOuQcr/76BA1GOqWaJTjpgUnxjh2Bh8q6ER4KnN6X4pkzbD
	NZ2BHE3hW9nBAfFEYoqrv+B13r63nVlw8XPbTYcjjVSpNUxjVqLVzVLn7khOnMOrN0U7B/YCzrKD2
	xvyfOT9/IdVdKh3JUn+gpkvb74zMDBi9Mkz1sv3pcUijGC54ZWPWuIpPKK/APOOjO+zDRg5+YIKyy
	N6VVsliM4Z1yxUWhyZ5/XqgCbMS/1vcQ7LviFCH2rYN+E3Y5McZXGPrluveCzaFjvyXrTtZIuuwaC
	DnAepqFtXDuAxa2Uvfag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hloPR-0007oR-K9; Fri, 12 Jul 2019 05:47:53 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlo8y-0002qk-N3
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 05:30:56 +0000
Received: by mail-pf1-x442.google.com with SMTP id t16so3780547pfe.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 22:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TheFOcfsNrP/iCpBXsyGMi/69Bi3Htfiid5k4ekGSX4=;
 b=S8LXzzvbI4rWMCXL7mWrFYvVfsews0FiJkZ2UXCAhQNQUjpLk9GU7zgejZMVjgH9iV
 htjoAr+3aupsFge2hy/0Ua2bROlHQTKyDR2UzFxqQGhxwUdLHi5TMnwo8h7GnfS1gO6g
 1tdisu+r2I8jF43Vz5pX8v5en24zOq+xhFg9ffc91JvR4iUdAyg6fULVG9DqRx2E95/c
 bx06kZxy7ORzT8nPxeatSFSe1p3Mdav2Kv1aQbPgVAlbm2hMp5qf8q3PIbbydwx+EIC3
 svzlMq16thEQxT1mlh2lSd2//A5bWlupAEeGZW7/jQTGiX4WaItDLULAvDbfc07dT1CZ
 3EqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TheFOcfsNrP/iCpBXsyGMi/69Bi3Htfiid5k4ekGSX4=;
 b=WN36yOVZ4d+K3jrnQ6tHPNb7PqMLM/KcgiA7ZwVkGX767+cSlQDsescVwAaagQ4wGQ
 7/nwMRHN/q3a9W+5Gcc87pQLzvkPMQZsEdBYboxwF3LInzG+gpbisbBvEoDj1my2ztRb
 8+notIVgCXydrAwgsg9TApN3WyPg46USTjDHj7793egGZDAQnaJ2i9JzopxZ67RmtlFO
 mg2ZHXySG3ue/U67gh71ClSxQizEIt+2dWBhmZv4LPcMKPPLlLpwxeDZ06OdQl0R/8oI
 nw4AAIvziyRdeGW3AiK18kmWoiALvmGdmZ/Ta41DBH4B4PbWwpqYYou2zgMbqnLvgjba
 HcOA==
X-Gm-Message-State: APjAAAUFXnP1XAl2Mw+uFRkwbQ8i5XuB2PxLk6v9IBoEs9gX06zL+uaT
 AM0R1HiyjROR2PNF3XstN3bxxg==
X-Google-Smtp-Source: APXvYqynTgjG5jrTrFdm24BnWVQTnLj/8zTYo8O5YIArivs9WOSENZ5D9TiehV4+zqv/AWcxAXOBfg==
X-Received: by 2002:a63:4c19:: with SMTP id z25mr8804010pga.47.1562909451445; 
 Thu, 11 Jul 2019 22:30:51 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id l124sm7218418pgl.54.2019.07.11.22.30.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 22:30:50 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org,
	Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 V2 41/43] arm64: Add ARM_SMCCC_ARCH_WORKAROUND_1 BP
 hardening support
Date: Fri, 12 Jul 2019 10:58:29 +0530
Message-Id: <a09bb6e7e7eb204003dea9832b10ef4cc70889a7.1562908075.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1562908074.git.viresh.kumar@linaro.org>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_223052_802317_D769571E 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Will Deacon <will.deacon@arm.com>,
 mark.brown@arm.com, Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marc Zyngier <marc.zyngier@arm.com>

commit b092201e0020614127f495c092e0a12d26a2116e upstream.

Add the detection and runtime code for ARM_SMCCC_ARCH_WORKAROUND_1.
It is lovely. Really.

Tested-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/kernel/bpi.S        | 20 ++++++++++
 arch/arm64/kernel/cpu_errata.c | 68 +++++++++++++++++++++++++++++++++-
 2 files changed, 87 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/bpi.S b/arch/arm64/kernel/bpi.S
index dec95bd82e31..c72f261f4b64 100644
--- a/arch/arm64/kernel/bpi.S
+++ b/arch/arm64/kernel/bpi.S
@@ -17,6 +17,7 @@
  */
 
 #include <linux/linkage.h>
+#include <linux/arm-smccc.h>
 
 .macro ventry target
 	.rept 31
@@ -77,3 +78,22 @@ ENTRY(__psci_hyp_bp_inval_start)
 	ldp	x0, x1, [sp, #(16 * 8)]
 	add	sp, sp, #(8 * 18)
 ENTRY(__psci_hyp_bp_inval_end)
+
+.macro smccc_workaround_1 inst
+	sub	sp, sp, #(8 * 4)
+	stp	x2, x3, [sp, #(8 * 0)]
+	stp	x0, x1, [sp, #(8 * 2)]
+	mov	w0, #ARM_SMCCC_ARCH_WORKAROUND_1
+	\inst	#0
+	ldp	x2, x3, [sp, #(8 * 0)]
+	ldp	x0, x1, [sp, #(8 * 2)]
+	add	sp, sp, #(8 * 4)
+.endm
+
+ENTRY(__smccc_workaround_1_smc_start)
+	smccc_workaround_1	smc
+ENTRY(__smccc_workaround_1_smc_end)
+
+ENTRY(__smccc_workaround_1_hvc_start)
+	smccc_workaround_1	hvc
+ENTRY(__smccc_workaround_1_hvc_end)
diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index ff22915a2865..d5fd7be563bc 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -51,6 +51,10 @@ DEFINE_PER_CPU_READ_MOSTLY(struct bp_hardening_data, bp_hardening_data);
 
 #ifdef CONFIG_KVM
 extern char __psci_hyp_bp_inval_start[], __psci_hyp_bp_inval_end[];
+extern char __smccc_workaround_1_smc_start[];
+extern char __smccc_workaround_1_smc_end[];
+extern char __smccc_workaround_1_hvc_start[];
+extern char __smccc_workaround_1_hvc_end[];
 
 static void __copy_hyp_vect_bpi(int slot, const char *hyp_vecs_start,
 				const char *hyp_vecs_end)
@@ -95,6 +99,10 @@ static void __install_bp_hardening_cb(bp_hardening_cb_t fn,
 #else
 #define __psci_hyp_bp_inval_start	NULL
 #define __psci_hyp_bp_inval_end		NULL
+#define __smccc_workaround_1_smc_start		NULL
+#define __smccc_workaround_1_smc_end		NULL
+#define __smccc_workaround_1_hvc_start		NULL
+#define __smccc_workaround_1_hvc_end		NULL
 
 static void __install_bp_hardening_cb(bp_hardening_cb_t fn,
 				      const char *hyp_vecs_start,
@@ -121,17 +129,75 @@ static void  install_bp_hardening_cb(const struct arm64_cpu_capabilities *entry,
 	__install_bp_hardening_cb(fn, hyp_vecs_start, hyp_vecs_end);
 }
 
+#include <uapi/linux/psci.h>
+#include <linux/arm-smccc.h>
 #include <linux/psci.h>
 
+static void call_smc_arch_workaround_1(void)
+{
+	arm_smccc_1_1_smc(ARM_SMCCC_ARCH_WORKAROUND_1, NULL);
+}
+
+static void call_hvc_arch_workaround_1(void)
+{
+	arm_smccc_1_1_hvc(ARM_SMCCC_ARCH_WORKAROUND_1, NULL);
+}
+
+static bool check_smccc_arch_workaround_1(const struct arm64_cpu_capabilities *entry)
+{
+	bp_hardening_cb_t cb;
+	void *smccc_start, *smccc_end;
+	struct arm_smccc_res res;
+
+	if (!entry->matches(entry, SCOPE_LOCAL_CPU))
+		return false;
+
+	if (psci_ops.smccc_version == SMCCC_VERSION_1_0)
+		return false;
+
+	switch (psci_ops.conduit) {
+	case PSCI_CONDUIT_HVC:
+		arm_smccc_1_1_hvc(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
+				  ARM_SMCCC_ARCH_WORKAROUND_1, &res);
+		if (res.a0)
+			return false;
+		cb = call_hvc_arch_workaround_1;
+		smccc_start = __smccc_workaround_1_hvc_start;
+		smccc_end = __smccc_workaround_1_hvc_end;
+		break;
+
+	case PSCI_CONDUIT_SMC:
+		arm_smccc_1_1_smc(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
+				  ARM_SMCCC_ARCH_WORKAROUND_1, &res);
+		if (res.a0)
+			return false;
+		cb = call_smc_arch_workaround_1;
+		smccc_start = __smccc_workaround_1_smc_start;
+		smccc_end = __smccc_workaround_1_smc_end;
+		break;
+
+	default:
+		return false;
+	}
+
+	install_bp_hardening_cb(entry, cb, smccc_start, smccc_end);
+
+	return true;
+}
+
 static int enable_psci_bp_hardening(void *data)
 {
 	const struct arm64_cpu_capabilities *entry = data;
 
-	if (psci_ops.get_version)
+	if (psci_ops.get_version) {
+		if (check_smccc_arch_workaround_1(entry))
+			return 0;
+
 		install_bp_hardening_cb(entry,
 				       (bp_hardening_cb_t)psci_ops.get_version,
 				       __psci_hyp_bp_inval_start,
 				       __psci_hyp_bp_inval_end);
+	}
 
 	return 0;
 }
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
