Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 648597D765
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:22:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0dIbpj3Fg6KGUdh6aO5LTriCvmIxQ8OvUE6jtUqKMdw=; b=WmmEC7VCFgkO6v
	bxfwwXXZjhlBcXarGy+fUGmQvXYaEoV3ReEf21S+wZ8mRH5K23BKTuI02JVsLr4stKsvyYhjZwdE5
	bSIauX8g8/nYFXNiY2PH8bEPcaPpchVXsOHpSeBrL64FCqLcdaU2+uBS4RlqmVRpLgISfNVn8RKr4
	mhmh3//H/ufsg5ehzCvu8MkSPzuGD3Z5LlwXxwcGxm+frZUfyt89lER9/f8vKmP4qCO+EeDQDKuv9
	tqw5I5o+HyGRSTk37qE4D1aI4nHREdcA5PPVF+nzYfXdGuq6le/cwZOv+LIMBoBp+jYb4nOul0OdR
	LtZyZZbliqliMfiFQ4nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6MD-0005I7-Uv; Thu, 01 Aug 2019 08:22:42 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6Jp-0001v3-Ez
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:20:18 +0000
Received: by mail-pf1-x443.google.com with SMTP id f17so29613188pfn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:20:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CrIyupKIrKrrK5tgrFteGLmJmhdaioApkHetxHZMz8k=;
 b=K2QIFbnpoc/R2ENh2TKGCsFcdFyStNxdhOUBETp/w3HK5Cr3AJzziEkhY08G5SmFvp
 9DW3KJFxLda1K2NqOTmVrhHWcVX7Ze04pTddVzCrPvT/LjMJgI9Zj+QAL1NwCGr986Hw
 Jnv8rhNqSrjdgMzPo/Y11bwWtyDynsS7bMG0MWIX2uPkaNBEF9AWwmrXuLm8EgLEoV6F
 tvL62G3MoIRCZQ76xXF8OkGAu/X8usgZEp/Wo7RoYEeTeCu8736ZEp54gUg0mPRq41vF
 wmQkV3jXo+j3dt6FdHT0Ei9Jy9jKGJ5bnMtMTsmUa0jSPuqCDiLLkPeWOKIbDFMJt1Y1
 c1Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CrIyupKIrKrrK5tgrFteGLmJmhdaioApkHetxHZMz8k=;
 b=VWLPb2fSix6vUO2S0hAeNGFZGLihjWqk42/q2y3BfE08XvZp8deMjl3C6Um+7t8NlL
 0WlNYZLb+B7ESIW95xxOEah1J5zEkYrT2h63rq2aOL7jLNCkvEc7VYN8vcZhR/dfDyK9
 mGB6hny58CADuhZzGH1lYLIRRIlEvo6oYuolW4wWXsihcFDxOwjAvNsdGlUHL7PTmAI5
 A4eX2llHqYePorNfQTJ0XANLVnTF6AkA+LiTW/DwJqN4o9nqd60Qi7Ioo8CT7xn7w7ij
 6IeVOZ/Lw5SZBKu+816ZhYBHTPySAU9gA92DtdE+a9dwca2oSHv3zbI5r1tLtDC19bsi
 0ycA==
X-Gm-Message-State: APjAAAWhh02BrRddXtyztxBEC4Mh0N3wIe2kwLiSMwM3vR/5yjYXplG1
 H2Sab8yylftDRtLcfFsqELjISg==
X-Google-Smtp-Source: APXvYqw+CzsQ+SZ8hDVlYOUPmmc6b3UUlcGfgnHiWnG0Ovf1Q+L+bVHRTWI6+vzkaXwtkhiU7JIhKA==
X-Received: by 2002:a63:b555:: with SMTP id
 u21mr119771811pgo.222.1564647612337; 
 Thu, 01 Aug 2019 01:20:12 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id i14sm109861236pfk.0.2019.08.01.01.20.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:20:11 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 14/47] ARM: spectre-v2: harden branch predictor
 on context switches
Date: Thu,  1 Aug 2019 13:45:58 +0530
Message-Id: <88ddb8ae0ac1c0575d719e609c418b7a79f49853.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012013_563476_B1D99BC2 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

Commit 06c23f5ffe7ad45b908d0fff604dae08a7e334b9 upstream.

Required manual merge of arch/arm/mm/proc-v7.S.

Harden the branch predictor against Spectre v2 attacks on context
switches for ARMv7 and later CPUs.  We do this by:

Cortex A9, A12, A17, A73, A75: invalidating the BTB.
Cortex A15, Brahma B15: invalidating the instruction cache.

Cortex A57 and Cortex A72 are not addressed in this patch.

Cortex R7 and Cortex R8 are also not addressed as we do not enforce
memory protection on these cores.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Boot-tested-by: Tony Lindgren <tony@atomide.com>
Reviewed-by: Tony Lindgren <tony@atomide.com>
Acked-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: David A. Long <dave.long@linaro.org>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm/mm/Kconfig          |  19 ++++++
 arch/arm/mm/proc-v7-2level.S |   6 --
 arch/arm/mm/proc-v7.S        | 125 +++++++++++++++++++++++++++--------
 3 files changed, 115 insertions(+), 35 deletions(-)

diff --git a/arch/arm/mm/Kconfig b/arch/arm/mm/Kconfig
index 7ef92e6692ab..71115afb71a0 100644
--- a/arch/arm/mm/Kconfig
+++ b/arch/arm/mm/Kconfig
@@ -797,6 +797,25 @@ config CPU_BPREDICT_DISABLE
 config CPU_SPECTRE
 	bool
 
+config HARDEN_BRANCH_PREDICTOR
+	bool "Harden the branch predictor against aliasing attacks" if EXPERT
+	depends on CPU_SPECTRE
+	default y
+	help
+	   Speculation attacks against some high-performance processors rely
+	   on being able to manipulate the branch predictor for a victim
+	   context by executing aliasing branches in the attacker context.
+	   Such attacks can be partially mitigated against by clearing
+	   internal branch predictor state and limiting the prediction
+	   logic in some situations.
+
+	   This config option will take CPU-specific actions to harden
+	   the branch predictor against aliasing attacks and may rely on
+	   specific instruction sequences or control bits being set by
+	   the system firmware.
+
+	   If unsure, say Y.
+
 config TLS_REG_EMUL
 	bool
 	select NEED_KUSER_HELPERS
diff --git a/arch/arm/mm/proc-v7-2level.S b/arch/arm/mm/proc-v7-2level.S
index c6141a5435c3..f8d45ad2a515 100644
--- a/arch/arm/mm/proc-v7-2level.S
+++ b/arch/arm/mm/proc-v7-2level.S
@@ -41,11 +41,6 @@
  *	even on Cortex-A8 revisions not affected by 430973.
  *	If IBE is not set, the flush BTAC/BTB won't do anything.
  */
-ENTRY(cpu_ca8_switch_mm)
-#ifdef CONFIG_MMU
-	mov	r2, #0
-	mcr	p15, 0, r2, c7, c5, 6		@ flush BTAC/BTB
-#endif
 ENTRY(cpu_v7_switch_mm)
 #ifdef CONFIG_MMU
 	mmid	r1, r1				@ get mm->context.id
@@ -66,7 +61,6 @@ ENTRY(cpu_v7_switch_mm)
 #endif
 	bx	lr
 ENDPROC(cpu_v7_switch_mm)
-ENDPROC(cpu_ca8_switch_mm)
 
 /*
  *	cpu_v7_set_pte_ext(ptep, pte)
diff --git a/arch/arm/mm/proc-v7.S b/arch/arm/mm/proc-v7.S
index 8e1ea433c3f1..c2950317c7c2 100644
--- a/arch/arm/mm/proc-v7.S
+++ b/arch/arm/mm/proc-v7.S
@@ -87,6 +87,17 @@ ENTRY(cpu_v7_dcache_clean_area)
 	ret	lr
 ENDPROC(cpu_v7_dcache_clean_area)
 
+ENTRY(cpu_v7_iciallu_switch_mm)
+	mov	r3, #0
+	mcr	p15, 0, r3, c7, c5, 0		@ ICIALLU
+	b	cpu_v7_switch_mm
+ENDPROC(cpu_v7_iciallu_switch_mm)
+ENTRY(cpu_v7_bpiall_switch_mm)
+	mov	r3, #0
+	mcr	p15, 0, r3, c7, c5, 6		@ flush BTAC/BTB
+	b	cpu_v7_switch_mm
+ENDPROC(cpu_v7_bpiall_switch_mm)
+
 	string	cpu_v7_name, "ARMv7 Processor"
 	.align
 
@@ -152,31 +163,6 @@ ENTRY(cpu_v7_do_resume)
 ENDPROC(cpu_v7_do_resume)
 #endif
 
-/*
- * Cortex-A8
- */
-	globl_equ	cpu_ca8_proc_init,	cpu_v7_proc_init
-	globl_equ	cpu_ca8_proc_fin,	cpu_v7_proc_fin
-	globl_equ	cpu_ca8_reset,		cpu_v7_reset
-	globl_equ	cpu_ca8_do_idle,	cpu_v7_do_idle
-	globl_equ	cpu_ca8_dcache_clean_area, cpu_v7_dcache_clean_area
-	globl_equ	cpu_ca8_set_pte_ext,	cpu_v7_set_pte_ext
-	globl_equ	cpu_ca8_suspend_size,	cpu_v7_suspend_size
-#ifdef CONFIG_ARM_CPU_SUSPEND
-	globl_equ	cpu_ca8_do_suspend,	cpu_v7_do_suspend
-	globl_equ	cpu_ca8_do_resume,	cpu_v7_do_resume
-#endif
-
-/*
- * Cortex-A9 processor functions
- */
-	globl_equ	cpu_ca9mp_proc_init,	cpu_v7_proc_init
-	globl_equ	cpu_ca9mp_proc_fin,	cpu_v7_proc_fin
-	globl_equ	cpu_ca9mp_reset,	cpu_v7_reset
-	globl_equ	cpu_ca9mp_do_idle,	cpu_v7_do_idle
-	globl_equ	cpu_ca9mp_dcache_clean_area, cpu_v7_dcache_clean_area
-	globl_equ	cpu_ca9mp_switch_mm,	cpu_v7_switch_mm
-	globl_equ	cpu_ca9mp_set_pte_ext,	cpu_v7_set_pte_ext
 .globl	cpu_ca9mp_suspend_size
 .equ	cpu_ca9mp_suspend_size, cpu_v7_suspend_size + 4 * 2
 #ifdef CONFIG_ARM_CPU_SUSPEND
@@ -490,10 +476,75 @@ ENDPROC(__v7_setup)
 
 	@ define struct processor (see <asm/proc-fns.h> and proc-macros.S)
 	define_processor_functions v7, dabort=v7_early_abort, pabort=v7_pabort, suspend=1
+
+#ifdef CONFIG_HARDEN_BRANCH_PREDICTOR
+	@ generic v7 bpiall on context switch
+	globl_equ	cpu_v7_bpiall_proc_init,	cpu_v7_proc_init
+	globl_equ	cpu_v7_bpiall_proc_fin,		cpu_v7_proc_fin
+	globl_equ	cpu_v7_bpiall_reset,		cpu_v7_reset
+	globl_equ	cpu_v7_bpiall_do_idle,		cpu_v7_do_idle
+	globl_equ	cpu_v7_bpiall_dcache_clean_area, cpu_v7_dcache_clean_area
+	globl_equ	cpu_v7_bpiall_set_pte_ext,	cpu_v7_set_pte_ext
+	globl_equ	cpu_v7_bpiall_suspend_size,	cpu_v7_suspend_size
+#ifdef CONFIG_ARM_CPU_SUSPEND
+	globl_equ	cpu_v7_bpiall_do_suspend,	cpu_v7_do_suspend
+	globl_equ	cpu_v7_bpiall_do_resume,	cpu_v7_do_resume
+#endif
+	define_processor_functions v7_bpiall, dabort=v7_early_abort, pabort=v7_pabort, suspend=1
+
+#define HARDENED_BPIALL_PROCESSOR_FUNCTIONS v7_bpiall_processor_functions
+#else
+#define HARDENED_BPIALL_PROCESSOR_FUNCTIONS v7_processor_functions
+#endif
+
 #ifndef CONFIG_ARM_LPAE
+	@ Cortex-A8 - always needs bpiall switch_mm implementation
+	globl_equ	cpu_ca8_proc_init,	cpu_v7_proc_init
+	globl_equ	cpu_ca8_proc_fin,	cpu_v7_proc_fin
+	globl_equ	cpu_ca8_reset,		cpu_v7_reset
+	globl_equ	cpu_ca8_do_idle,	cpu_v7_do_idle
+	globl_equ	cpu_ca8_dcache_clean_area, cpu_v7_dcache_clean_area
+	globl_equ	cpu_ca8_set_pte_ext,	cpu_v7_set_pte_ext
+	globl_equ	cpu_ca8_switch_mm,	cpu_v7_bpiall_switch_mm
+	globl_equ	cpu_ca8_suspend_size,	cpu_v7_suspend_size
+#ifdef CONFIG_ARM_CPU_SUSPEND
+	globl_equ	cpu_ca8_do_suspend,	cpu_v7_do_suspend
+	globl_equ	cpu_ca8_do_resume,	cpu_v7_do_resume
+#endif
 	define_processor_functions ca8, dabort=v7_early_abort, pabort=v7_pabort, suspend=1
+
+	@ Cortex-A9 - needs more registers preserved across suspend/resume
+	@ and bpiall switch_mm for hardening
+	globl_equ	cpu_ca9mp_proc_init,	cpu_v7_proc_init
+	globl_equ	cpu_ca9mp_proc_fin,	cpu_v7_proc_fin
+	globl_equ	cpu_ca9mp_reset,	cpu_v7_reset
+	globl_equ	cpu_ca9mp_do_idle,	cpu_v7_do_idle
+	globl_equ	cpu_ca9mp_dcache_clean_area, cpu_v7_dcache_clean_area
+#ifdef CONFIG_HARDEN_BRANCH_PREDICTOR
+	globl_equ	cpu_ca9mp_switch_mm,	cpu_v7_bpiall_switch_mm
+#else
+	globl_equ	cpu_ca9mp_switch_mm,	cpu_v7_switch_mm
+#endif
+	globl_equ	cpu_ca9mp_set_pte_ext,	cpu_v7_set_pte_ext
 	define_processor_functions ca9mp, dabort=v7_early_abort, pabort=v7_pabort, suspend=1
 #endif
+
+	@ Cortex-A15 - needs iciallu switch_mm for hardening
+	globl_equ	cpu_ca15_proc_init,	cpu_v7_proc_init
+	globl_equ	cpu_ca15_proc_fin,	cpu_v7_proc_fin
+	globl_equ	cpu_ca15_reset,		cpu_v7_reset
+	globl_equ	cpu_ca15_do_idle,	cpu_v7_do_idle
+	globl_equ	cpu_ca15_dcache_clean_area, cpu_v7_dcache_clean_area
+#ifdef CONFIG_HARDEN_BRANCH_PREDICTOR
+	globl_equ	cpu_ca15_switch_mm,	cpu_v7_iciallu_switch_mm
+#else
+	globl_equ	cpu_ca15_switch_mm,	cpu_v7_switch_mm
+#endif
+	globl_equ	cpu_ca15_set_pte_ext,	cpu_v7_set_pte_ext
+	globl_equ	cpu_ca15_suspend_size,	cpu_v7_suspend_size
+	globl_equ	cpu_ca15_do_suspend,	cpu_v7_do_suspend
+	globl_equ	cpu_ca15_do_resume,	cpu_v7_do_resume
+	define_processor_functions ca15, dabort=v7_early_abort, pabort=v7_pabort, suspend=1
 #ifdef CONFIG_CPU_PJ4B
 	define_processor_functions pj4b, dabort=v7_early_abort, pabort=v7_pabort, suspend=1
 #endif
@@ -600,7 +651,7 @@ ENDPROC(__v7_setup)
 __v7_ca12mp_proc_info:
 	.long	0x410fc0d0
 	.long	0xff0ffff0
-	__v7_proc __v7_ca12mp_proc_info, __v7_ca12mp_setup
+	__v7_proc __v7_ca12mp_proc_info, __v7_ca12mp_setup, proc_fns = HARDENED_BPIALL_PROCESSOR_FUNCTIONS
 	.size	__v7_ca12mp_proc_info, . - __v7_ca12mp_proc_info
 
 	/*
@@ -610,7 +661,7 @@ ENDPROC(__v7_setup)
 __v7_ca15mp_proc_info:
 	.long	0x410fc0f0
 	.long	0xff0ffff0
-	__v7_proc __v7_ca15mp_proc_info, __v7_ca15mp_setup
+	__v7_proc __v7_ca15mp_proc_info, __v7_ca15mp_setup, proc_fns = ca15_processor_functions
 	.size	__v7_ca15mp_proc_info, . - __v7_ca15mp_proc_info
 
 	/*
@@ -620,7 +671,7 @@ ENDPROC(__v7_setup)
 __v7_b15mp_proc_info:
 	.long	0x420f00f0
 	.long	0xff0ffff0
-	__v7_proc __v7_b15mp_proc_info, __v7_b15mp_setup
+	__v7_proc __v7_b15mp_proc_info, __v7_b15mp_setup, proc_fns = ca15_processor_functions
 	.size	__v7_b15mp_proc_info, . - __v7_b15mp_proc_info
 
 	/*
@@ -630,9 +681,25 @@ ENDPROC(__v7_setup)
 __v7_ca17mp_proc_info:
 	.long	0x410fc0e0
 	.long	0xff0ffff0
-	__v7_proc __v7_ca17mp_proc_info, __v7_ca17mp_setup
+	__v7_proc __v7_ca17mp_proc_info, __v7_ca17mp_setup, proc_fns = HARDENED_BPIALL_PROCESSOR_FUNCTIONS
 	.size	__v7_ca17mp_proc_info, . - __v7_ca17mp_proc_info
 
+	/* ARM Ltd. Cortex A73 processor */
+	.type	__v7_ca73_proc_info, #object
+__v7_ca73_proc_info:
+	.long	0x410fd090
+	.long	0xff0ffff0
+	__v7_proc __v7_ca73_proc_info, __v7_setup, proc_fns = HARDENED_BPIALL_PROCESSOR_FUNCTIONS
+	.size	__v7_ca73_proc_info, . - __v7_ca73_proc_info
+
+	/* ARM Ltd. Cortex A75 processor */
+	.type	__v7_ca75_proc_info, #object
+__v7_ca75_proc_info:
+	.long	0x410fd0a0
+	.long	0xff0ffff0
+	__v7_proc __v7_ca75_proc_info, __v7_setup, proc_fns = HARDENED_BPIALL_PROCESSOR_FUNCTIONS
+	.size	__v7_ca75_proc_info, . - __v7_ca75_proc_info
+
 	/*
 	 * Qualcomm Inc. Krait processors.
 	 */
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
