Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80167F07B5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 22:07:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zInhvhnFyZtraAFm5+9NU4HYq3qmsxT7S7hqkAaEZbs=; b=d3AfEuo25yuwC4g72mBrA4INmj
	J32D6V3JEI2RFzkoYV0qUL32EToag6DTF7h4FNKRlrAEppRNlQDdmNHywOdwli2a8z3ktECtdL98O
	9So75oLUJ2YYh/JX7mTT+SQospUA/A0lj1jXEJgJuqxUAeE3Lf5K8sUO6R+e/cZUC+qpi8gnscYES
	uNlcmugSDTe1bDj4gPeDV+IKLToot/hm9dwrHbToahIFLSuwMNAjl2OkKKVXvdfBaIG1lVn+FFHUx
	VXWFXQCnMW9v3EEBanqpYbYYZ3CtMrjjcDW/raNmY5F6y0JdVl2PirT5nddrRPkSt3KkgHV9QNvfy
	nORHG/vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS62k-0006gO-PA; Tue, 05 Nov 2019 21:07:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS5w6-0007Zn-3C
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 21:00:24 +0000
Received: from e123331-lin.home (lfbn-mar-1-643-104.w90-118.abo.wanadoo.fr
 [90.118.215.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2E572222C1;
 Tue,  5 Nov 2019 21:00:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572987621;
 bh=u+dEjTmHJVc4yK1I3h1KOIjOxCQdCyc4IWNOAGKk9wQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ZhYW6UL6p53JKdOuvHAavx8sXaJC9u/ce6YbZNMTMcTPSaz/tLikKqeKo4W6nTKSK
 SlVBXXMsRRIRD4VIZR3Gwdl4NICtGENc0WKZBlQf6mKkVx3gtIVTolGDCVQJt21uUS
 HymbpfItd1Vq/GiCoC/tLdQldojOutSYJpFnSiA8=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH for-stable-v4.4 29/53] ARM: spectre-v2: warn about incorrect
 context switching functions
Date: Tue,  5 Nov 2019 21:58:22 +0100
Message-Id: <20191105205846.1394-30-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191105205846.1394-1-ardb@kernel.org>
References: <20191105205846.1394-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_130022_228118_56FE6B45 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tony Lindgren <tony@atomide.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 "David A . Long" <dave.long@linaro.org>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Russell King <rmk+kernel@armlinux.org.uk>

Commit c44f366ea7c85e1be27d08f2f0880f4120698125 upstream.

Warn at error level if the context switching function is not what we
are expecting.  This can happen with big.Little systems, which we
currently do not support.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Boot-tested-by: Tony Lindgren <tony@atomide.com>
Reviewed-by: Tony Lindgren <tony@atomide.com>
Acked-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: David A. Long <dave.long@linaro.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm/mm/proc-v7-bugs.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm/mm/proc-v7-bugs.c b/arch/arm/mm/proc-v7-bugs.c
index da25a38e1897..5544b82a2e7a 100644
--- a/arch/arm/mm/proc-v7-bugs.c
+++ b/arch/arm/mm/proc-v7-bugs.c
@@ -12,6 +12,8 @@
 #ifdef CONFIG_HARDEN_BRANCH_PREDICTOR
 DEFINE_PER_CPU(harden_branch_predictor_fn_t, harden_branch_predictor_fn);
 
+extern void cpu_v7_iciallu_switch_mm(phys_addr_t pgd_phys, struct mm_struct *mm);
+extern void cpu_v7_bpiall_switch_mm(phys_addr_t pgd_phys, struct mm_struct *mm);
 extern void cpu_v7_smc_switch_mm(phys_addr_t pgd_phys, struct mm_struct *mm);
 extern void cpu_v7_hvc_switch_mm(phys_addr_t pgd_phys, struct mm_struct *mm);
 
@@ -50,6 +52,8 @@ static void cpu_v7_spectre_init(void)
 	case ARM_CPU_PART_CORTEX_A17:
 	case ARM_CPU_PART_CORTEX_A73:
 	case ARM_CPU_PART_CORTEX_A75:
+		if (processor.switch_mm != cpu_v7_bpiall_switch_mm)
+			goto bl_error;
 		per_cpu(harden_branch_predictor_fn, cpu) =
 			harden_branch_predictor_bpiall;
 		spectre_v2_method = "BPIALL";
@@ -57,6 +61,8 @@ static void cpu_v7_spectre_init(void)
 
 	case ARM_CPU_PART_CORTEX_A15:
 	case ARM_CPU_PART_BRAHMA_B15:
+		if (processor.switch_mm != cpu_v7_iciallu_switch_mm)
+			goto bl_error;
 		per_cpu(harden_branch_predictor_fn, cpu) =
 			harden_branch_predictor_iciallu;
 		spectre_v2_method = "ICIALLU";
@@ -82,6 +88,8 @@ static void cpu_v7_spectre_init(void)
 					  ARM_SMCCC_ARCH_WORKAROUND_1, &res);
 			if ((int)res.a0 != 0)
 				break;
+			if (processor.switch_mm != cpu_v7_hvc_switch_mm && cpu)
+				goto bl_error;
 			per_cpu(harden_branch_predictor_fn, cpu) =
 				call_hvc_arch_workaround_1;
 			processor.switch_mm = cpu_v7_hvc_switch_mm;
@@ -93,6 +101,8 @@ static void cpu_v7_spectre_init(void)
 					  ARM_SMCCC_ARCH_WORKAROUND_1, &res);
 			if ((int)res.a0 != 0)
 				break;
+			if (processor.switch_mm != cpu_v7_smc_switch_mm && cpu)
+				goto bl_error;
 			per_cpu(harden_branch_predictor_fn, cpu) =
 				call_smc_arch_workaround_1;
 			processor.switch_mm = cpu_v7_smc_switch_mm;
@@ -109,6 +119,11 @@ static void cpu_v7_spectre_init(void)
 	if (spectre_v2_method)
 		pr_info("CPU%u: Spectre v2: using %s workaround\n",
 			smp_processor_id(), spectre_v2_method);
+	return;
+
+bl_error:
+	pr_err("CPU%u: Spectre v2: incorrect context switching function, system vulnerable\n",
+		cpu);
 }
 #else
 static void cpu_v7_spectre_init(void)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
