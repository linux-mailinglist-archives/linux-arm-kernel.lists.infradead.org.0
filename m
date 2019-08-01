Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CE797D769
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:23:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x4uANliL6eKNkW7GxPGozrm3gwieWt5BVzEAkiE9WZY=; b=p5M/sMWYDZ2DP1
	MMGNWBZrEThXu7SqyAUkMtKisQUTCD3is7JFm9zKIRyCBm0qKwWZbv8CRU3wXTxkgjpeyPj8agnxe
	Xi+Qi+9qzFscTzm+y34cwAU0kMyV4uqTWm5p/4Xn2e4GMCix+bVwmK/e+fW/19WX9yb7+dLul+rG2
	GiY4weGvDGE7c9OV4kj7sY/4mL4n0H7OqZUYR9vVJjLA4ECx4fnAdV/6VOg703wVRWpaIEOCpxToG
	eSSRePhEoxr+2NM+mHpfONC1uj1DiCLwsZKyIwMD8M6g0VeL3YCIC9obXo+6ygjmy0WrzUSjALbJ+
	S/xbgI3Szk+zfDDAMnoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6Ms-000671-3U; Thu, 01 Aug 2019 08:23:22 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6Jz-0002Ba-No
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:20:25 +0000
Received: by mail-pg1-x544.google.com with SMTP id i18so33734317pgl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:20:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9VABKBorQUfKeR09TGNvFzk8y3IzwO2qu0Xfufvbef4=;
 b=DQ933P7SMaIFNCoCn0GqwaK/0IZY/MQGe032YpW1qdQHOrKfg4wKeqsXlDQVKZp0cc
 81qb/0UgC76sCT2JV07Le889UA4G/BvPP0vlB2dVbTJQNW1Jh7czJEybCFtWFUPPacTG
 439AI1hpjbQILEDhSvJDccyEBpTNNNiZqDOeRMdrB0xXQVEYu3GYesW+xQ0RKiBDbGLv
 SPH7LTUJrXZ2f1YThMR+WzDzaoLiaDI57SdlpXgEJfRa4nG/ej87gKdtE/SSsq3svfnR
 Kh/fsSvWO5ZqhBj8Hg0Ee44Rx8z7AD6NZx/Izoca3CxQFzSiJeU6vM7DnJnSWFQPFw6o
 pfGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9VABKBorQUfKeR09TGNvFzk8y3IzwO2qu0Xfufvbef4=;
 b=BsmktaJoip/Lji4pn0wQJAMdGD3BIZT4U5hUCqWTU5ZKhBMOacs/TR1gQ1RmZwmzq+
 8o6vHWkoOZKt7MPwG+wXsvdKaD84BnB6YZuo22USRzBs/dK7eQyoOgZf29sKv7bnpJU8
 IqVZkScma0976utAGekg4k4cyHWH/fqQAgE0HrbHxyDW4FfRNsRdO52Yg0parzesUzRD
 FKbpSRYBc1ez4hMQQQMgQe/FERcnKv7m5aBLoAYtBYfKLG3laJZOkWcRZXSbdXGmYYrK
 GC/vkpOmqL6j+POtgUNkpT3TN4tXHtba+5vJtakp07Mh5zXgYBb+Qo5P96yfry0FD9A0
 F1HQ==
X-Gm-Message-State: APjAAAX0VXD85x3msVTAd3F0OAtzT/TL1BSKaFLC4E9k1zQ51O2eNX5V
 N4X4YFryGSld6bGFHdFcwfx9Jg==
X-Google-Smtp-Source: APXvYqw+DyMm0xB//RzNX38fJJ8GmnaUVfpXzbcLL1yA8V1oXi2z/rLKYj8PHIKkXmcxU7xY6RKPXA==
X-Received: by 2002:a65:6546:: with SMTP id a6mr64618724pgw.220.1564647622525; 
 Thu, 01 Aug 2019 01:20:22 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id i14sm109862834pfk.0.2019.08.01.01.20.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:20:22 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 18/47] ARM: spectre-v2: warn about incorrect
 context switching functions
Date: Thu,  1 Aug 2019 13:46:02 +0530
Message-Id: <b3b43e3f06ea7bf416a7d03789c4ecd2050976b3.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012023_845044_A5F5056C 
X-CRM114-Status: GOOD (  11.10  )
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

Commit c44f366ea7c85e1be27d08f2f0880f4120698125 upstream.

Warn at error level if the context switching function is not what we
are expecting.  This can happen with big.Little systems, which we
currently do not support.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Boot-tested-by: Tony Lindgren <tony@atomide.com>
Reviewed-by: Tony Lindgren <tony@atomide.com>
Acked-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: David A. Long <dave.long@linaro.org>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
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
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
