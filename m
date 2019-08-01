Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44CD97D768
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:23:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LmqyFnmIw+JGpTkJn+hx6TmEufbugWhDO0uENFM32Do=; b=YGPGHCI9BVWfRl
	tM+ygPO+9u/AVeOpO/OzfaOM9s42eMwQPpGNsbaUlqrFXqsGwtTaM4QN4Kbnt+hPLeX7ScKUDb1AQ
	Gt3lfttEKArqCPBG+T+2RzR/E7wmc6q3+kBDarO5lWQkWNe2L8m1P+mxeoSQC5W2Vgo9gWITUVKeC
	8+M7V7rZt3sdSUTUPUXT/yyFH3yJtu+InxfEKW3ifOGukq6rOK7E9T/q3Ed474hDgl58wCLg67a13
	wWkL3ffYE394DMm+OY4uhFYdDAWFGb/Be+CNz71tvmbKh4m8x1n6VQzhRssQ8Whvc4qNt7DylrTg3
	M1LmOO8/5AJiLlBIMqSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6Ma-0005pz-Sj; Thu, 01 Aug 2019 08:23:04 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6Jw-00027W-QR
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:20:22 +0000
Received: by mail-pl1-x644.google.com with SMTP id t14so31834054plr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:20:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=T4YEDbPBCBlX8lcfFrAFFzcqkBiIDW1BWpR/22wpzUw=;
 b=j+wIxaf24e0CpzIKK/5HFWFDaO9nWV4kFtijIqRGeIL2oUs1CUsdiqkS5A/yCZlznp
 FBWXMrdDWPL9t6x5kGS+637YjSCJIFmH2M72EazCBWjyx8chTwT7jj3ddbDQ8xoytiap
 Xyixz9QuVGvPDPLbaW1FkXwVDuJntjk6ZKja8N9BLyW//7ds0FSvKwUU8GrlQod9JtCd
 V2FPQDGImA2xcsiMbnY+qvK98JbLFurgS2qomwRcBgbnvyeKNObnco6sauHu+jDF9KWs
 ZkVqY0ZwfH9K9Rlt+sWgf2ri0qT3m+PebuXwU8wXimcvBHKDa8+C8rfE0c3IxdVXmjk2
 vADg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=T4YEDbPBCBlX8lcfFrAFFzcqkBiIDW1BWpR/22wpzUw=;
 b=MtHlf3MTnjtWxnLxPrhba6kTvoFan97rBpTBTyMzG2Mw/RAFx+zeCVqny7NlfXnwp4
 Uc+ndmfvnsXEBWFiLBA+GHiopLxcXyztfppXRD1JCy4y8/swxq7MZ/1ksL4HVsLBPrlx
 /Zz0IHx7H4NyQs40lNEHu82SiEvJmZuIUGQF5bnQr3wGtCLKQYLx2XYpScCDUfaE5oai
 lU15LUmzHjwjcRlFNoFr2DgztDd8cqlcTZsmsRpzGj1KErZiPsyfgIRCTSev2wlIePRR
 uNSujTSTE8vKeM+1UyMnfD8gDrGF4Iu2KGnh0DVvStbXv+NmJ36O5pz+qiFhsRx8xI/A
 ct8w==
X-Gm-Message-State: APjAAAV7AbYKnaexsKiN/eK1e0XFp1lRudID0NntaCArp69Bl8QklrWP
 VIuSnZz/Jlzp7XvIuO4P2uR8fw==
X-Google-Smtp-Source: APXvYqyaDMWnJL02FD2X1zz40Bno2tCIMohJgbzKMFoWBZQF5MuGor1DLTLPD9pXq/pUZnEilZYUyQ==
X-Received: by 2002:a17:902:4222:: with SMTP id
 g31mr50424956pld.41.1564647620067; 
 Thu, 01 Aug 2019 01:20:20 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id 135sm73497554pfb.137.2019.08.01.01.20.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:20:19 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 17/47] ARM: spectre-v2: add firmware based
 hardening
Date: Thu,  1 Aug 2019 13:46:01 +0530
Message-Id: <b5f0eee5d3e81f75f7c4f71b3126f18884aaa55a.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012020_948692_5C8E8FD5 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Julien Thierry <Julien.Thierry@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, guohanjun@huawei.com,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Russell King <rmk+kernel@armlinux.org.uk>

Commit 10115105cb3aa17b5da1cb726ae8dd5f6854bd93 upstream.

Add firmware based hardening for cores that require more complex
handling in firmware.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Boot-tested-by: Tony Lindgren <tony@atomide.com>
Reviewed-by: Tony Lindgren <tony@atomide.com>
Reviewed-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: David A. Long <dave.long@linaro.org>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm/mm/proc-v7-bugs.c | 60 ++++++++++++++++++++++++++++++++++++++
 arch/arm/mm/proc-v7.S      | 21 +++++++++++++
 2 files changed, 81 insertions(+)

diff --git a/arch/arm/mm/proc-v7-bugs.c b/arch/arm/mm/proc-v7-bugs.c
index 85a2e3d6263c..da25a38e1897 100644
--- a/arch/arm/mm/proc-v7-bugs.c
+++ b/arch/arm/mm/proc-v7-bugs.c
@@ -1,14 +1,20 @@
 // SPDX-License-Identifier: GPL-2.0
+#include <linux/arm-smccc.h>
 #include <linux/kernel.h>
+#include <linux/psci.h>
 #include <linux/smp.h>
 
 #include <asm/cp15.h>
 #include <asm/cputype.h>
+#include <asm/proc-fns.h>
 #include <asm/system_misc.h>
 
 #ifdef CONFIG_HARDEN_BRANCH_PREDICTOR
 DEFINE_PER_CPU(harden_branch_predictor_fn_t, harden_branch_predictor_fn);
 
+extern void cpu_v7_smc_switch_mm(phys_addr_t pgd_phys, struct mm_struct *mm);
+extern void cpu_v7_hvc_switch_mm(phys_addr_t pgd_phys, struct mm_struct *mm);
+
 static void harden_branch_predictor_bpiall(void)
 {
 	write_sysreg(0, BPIALL);
@@ -19,6 +25,16 @@ static void harden_branch_predictor_iciallu(void)
 	write_sysreg(0, ICIALLU);
 }
 
+static void __maybe_unused call_smc_arch_workaround_1(void)
+{
+	arm_smccc_1_1_smc(ARM_SMCCC_ARCH_WORKAROUND_1, NULL);
+}
+
+static void __maybe_unused call_hvc_arch_workaround_1(void)
+{
+	arm_smccc_1_1_hvc(ARM_SMCCC_ARCH_WORKAROUND_1, NULL);
+}
+
 static void cpu_v7_spectre_init(void)
 {
 	const char *spectre_v2_method = NULL;
@@ -45,7 +61,51 @@ static void cpu_v7_spectre_init(void)
 			harden_branch_predictor_iciallu;
 		spectre_v2_method = "ICIALLU";
 		break;
+
+#ifdef CONFIG_ARM_PSCI
+	default:
+		/* Other ARM CPUs require no workaround */
+		if (read_cpuid_implementor() == ARM_CPU_IMP_ARM)
+			break;
+		/* fallthrough */
+		/* Cortex A57/A72 require firmware workaround */
+	case ARM_CPU_PART_CORTEX_A57:
+	case ARM_CPU_PART_CORTEX_A72: {
+		struct arm_smccc_res res;
+
+		if (psci_ops.smccc_version == SMCCC_VERSION_1_0)
+			break;
+
+		switch (psci_ops.conduit) {
+		case PSCI_CONDUIT_HVC:
+			arm_smccc_1_1_hvc(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
+					  ARM_SMCCC_ARCH_WORKAROUND_1, &res);
+			if ((int)res.a0 != 0)
+				break;
+			per_cpu(harden_branch_predictor_fn, cpu) =
+				call_hvc_arch_workaround_1;
+			processor.switch_mm = cpu_v7_hvc_switch_mm;
+			spectre_v2_method = "hypervisor";
+			break;
+
+		case PSCI_CONDUIT_SMC:
+			arm_smccc_1_1_smc(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
+					  ARM_SMCCC_ARCH_WORKAROUND_1, &res);
+			if ((int)res.a0 != 0)
+				break;
+			per_cpu(harden_branch_predictor_fn, cpu) =
+				call_smc_arch_workaround_1;
+			processor.switch_mm = cpu_v7_smc_switch_mm;
+			spectre_v2_method = "firmware";
+			break;
+
+		default:
+			break;
+		}
 	}
+#endif
+	}
+
 	if (spectre_v2_method)
 		pr_info("CPU%u: Spectre v2: using %s workaround\n",
 			smp_processor_id(), spectre_v2_method);
diff --git a/arch/arm/mm/proc-v7.S b/arch/arm/mm/proc-v7.S
index f6a4589b4fd2..b6359ce39fa7 100644
--- a/arch/arm/mm/proc-v7.S
+++ b/arch/arm/mm/proc-v7.S
@@ -9,6 +9,7 @@
  *
  *  This is the "shell" of the ARMv7 processor support.
  */
+#include <linux/arm-smccc.h>
 #include <linux/init.h>
 #include <linux/linkage.h>
 #include <asm/assembler.h>
@@ -87,6 +88,26 @@ ENTRY(cpu_v7_dcache_clean_area)
 	ret	lr
 ENDPROC(cpu_v7_dcache_clean_area)
 
+#ifdef CONFIG_ARM_PSCI
+	.arch_extension sec
+ENTRY(cpu_v7_smc_switch_mm)
+	stmfd	sp!, {r0 - r3}
+	movw	r0, #:lower16:ARM_SMCCC_ARCH_WORKAROUND_1
+	movt	r0, #:upper16:ARM_SMCCC_ARCH_WORKAROUND_1
+	smc	#0
+	ldmfd	sp!, {r0 - r3}
+	b	cpu_v7_switch_mm
+ENDPROC(cpu_v7_smc_switch_mm)
+	.arch_extension virt
+ENTRY(cpu_v7_hvc_switch_mm)
+	stmfd	sp!, {r0 - r3}
+	movw	r0, #:lower16:ARM_SMCCC_ARCH_WORKAROUND_1
+	movt	r0, #:upper16:ARM_SMCCC_ARCH_WORKAROUND_1
+	hvc	#0
+	ldmfd	sp!, {r0 - r3}
+	b	cpu_v7_switch_mm
+ENDPROC(cpu_v7_smc_switch_mm)
+#endif
 ENTRY(cpu_v7_iciallu_switch_mm)
 	mov	r3, #0
 	mcr	p15, 0, r3, c7, c5, 0		@ ICIALLU
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
