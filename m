Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 930056665E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 07:36:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Y+LCdjMjcExmOAIJvkAT02JfaAw/mjQ9+QKCJ4iHrk=; b=ITSm7CB6a+BX2l
	76FGbriIbNOYO4CObkmjj4/9Pv4RL64NhmRuz/TvD14yeRVRun5TmXciMQ2o6WdVFxXLkpEe+7JAz
	NvBcxsR1jatOBKW+ZBW2uuuRjhAg8DL54U4xmGdeWRaKWjrUMBEi+vwZhqMmmxVTFPFYKf4o6kKuS
	cvv2htcMFyErkUiekHmoAjJeas47/hW1VaeLt3/Z3Eh1xEc5SwIs0gPDeMQpIjksR4FgfbfQVX1MO
	hSIJd9pHOXRL2Z2ekmZAdDSxeup3F0B+Ov1lCMlq0drNB7dZZzWhg/FYGIinchFdRxt9Dc4deg3LH
	fTLreXE6Uhh0TzfVSmrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hloEX-0006pI-6O; Fri, 12 Jul 2019 05:36:37 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlo7o-0000jG-8M
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 05:29:42 +0000
Received: by mail-pl1-x643.google.com with SMTP id c14so4198000plo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 22:29:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XsKw19fTFieNWoM6VpeUN2a175ttgnWqs3kt6rmh49I=;
 b=iKPYCzvWW+66Pm/bOsNKrq5P7zLX7Gse55VsuCQJOKsYEXQJgYwZTl6ufTBi8ViuYK
 HVqUasJBncLGzqVq0OTEzoIpb21awZWXmMarGQg9BhWocyAf+boX3+XyZL9aO5fa20VQ
 NF1Qswif37U9oRv/De8zZokR8aXCAren/Vq91hDz3kBpLbpAV5sfYUHeSUrPRQaslkcz
 qVCNFXtFGaxFNIf+YJg1oWWhKMDwoYNEnadjNsjigTvmD1kqDDXndRa3Ktej+sBYoTaK
 /utuZ7pqW9y8QXFOKLw704iIzoo5Qarpys4miw0IMnmfvclAOvlmTL5awCM03/XljFsO
 +zIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XsKw19fTFieNWoM6VpeUN2a175ttgnWqs3kt6rmh49I=;
 b=MCVKO0FnbZPq846nbz9hZUFP5b3rXydWn9h3p40o7Cuq2KgefaKog9D95vlULFgjIw
 SC4fxcKBXsdq9t2bDSF5WS2pJ4D7HzpoBfjv76NpDdeZhkm1C6HfVEY80gfrJ7edLAck
 i7M1a68VFXyGKddIopb5zaHMN2qElGanv165uKy+mrCdseMeTFlKJ+upYvKRuhhjLHbz
 Muy1bv22SAyz1YR5z9kgBHMwI9/7wV0MK1gTNc3BklEx+Qu+gLhWoz9quiJiIyXY5aec
 191tFhguDRPUT5Dh8YiM0apHQq/0J1+i1Ojkn00E9hpqiSe4LRHZNz9036SZqVIIOz5U
 EClA==
X-Gm-Message-State: APjAAAUtNTpqyfklNLxUI3XvycaPzzm+oZkorVnkGjPPyBPUR2dFtYe4
 glCobx3MU3gobJFnHbdJvwSEdA==
X-Google-Smtp-Source: APXvYqxvUAGGZyaOV3mER1kvI8Y7VJk6rQ6uomE1FtsKj4vu6FKLnf2EM2So364aisCPwN6zEMhNOA==
X-Received: by 2002:a17:902:aa09:: with SMTP id
 be9mr8935831plb.52.1562909379536; 
 Thu, 11 Jul 2019 22:29:39 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id 131sm10394940pfx.57.2019.07.11.22.29.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 22:29:39 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org,
	Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 V2 15/43] arm64: Move cpu_die_early to smp.c
Date: Fri, 12 Jul 2019 10:58:03 +0530
Message-Id: <dd031e0851c01a0cfe275c05dc24935580d2fd78.1562908075.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1562908074.git.viresh.kumar@linaro.org>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_222940_360197_0C6C116A 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

From: Suzuki K Poulose <suzuki.poulose@arm.com>

commit fce6361fe9b0caeba0c05b7d72ceda406f8780df upstream.

This patch moves cpu_die_early to smp.c, where it fits better.
No functional changes, except for adding the necessary checks
for CONFIG_HOTPLUG_CPU.

Cc: Mark Rutland <mark.rutland@arm.com>
Acked-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
[ Viresh: Resolved rebase conflict ]
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/include/asm/smp.h   |  1 +
 arch/arm64/kernel/cpufeature.c | 22 ----------------------
 arch/arm64/kernel/smp.c        | 25 +++++++++++++++++++++++++
 3 files changed, 26 insertions(+), 22 deletions(-)

diff --git a/arch/arm64/include/asm/smp.h b/arch/arm64/include/asm/smp.h
index d9c3d6a6100a..13ce01fe6237 100644
--- a/arch/arm64/include/asm/smp.h
+++ b/arch/arm64/include/asm/smp.h
@@ -68,5 +68,6 @@ extern int __cpu_disable(void);
 
 extern void __cpu_die(unsigned int cpu);
 extern void cpu_die(void);
+extern void cpu_die_early(void);
 
 #endif /* ifndef __ASM_SMP_H */
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index b7f01bf47988..a0273cd8be51 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -852,28 +852,6 @@ static inline void set_sys_caps_initialised(void)
 	sys_caps_initialised = true;
 }
 
-/*
- * Kill the calling secondary CPU, early in bringup before it is turned
- * online.
- */
-void cpu_die_early(void)
-{
-	int cpu = smp_processor_id();
-
-	pr_crit("CPU%d: will not boot\n", cpu);
-
-	/* Mark this CPU absent */
-	set_cpu_present(cpu, 0);
-
-	/* Check if we can park ourselves */
-	if (cpu_ops[cpu] && cpu_ops[cpu]->cpu_die)
-		cpu_ops[cpu]->cpu_die(cpu);
-	asm(
-	"1:	wfe\n"
-	"	wfi\n"
-	"	b	1b");
-}
-
 /*
  * Run through the enabled system capabilities and enable() it on this CPU.
  * The capabilities were decided based on the available CPUs at the boot time.
diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index 03c0946b79d2..752b53daac23 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -312,6 +312,31 @@ void cpu_die(void)
 }
 #endif
 
+/*
+ * Kill the calling secondary CPU, early in bringup before it is turned
+ * online.
+ */
+void cpu_die_early(void)
+{
+	int cpu = smp_processor_id();
+
+	pr_crit("CPU%d: will not boot\n", cpu);
+
+	/* Mark this CPU absent */
+	set_cpu_present(cpu, 0);
+
+#ifdef CONFIG_HOTPLUG_CPU
+	/* Check if we can park ourselves */
+	if (cpu_ops[cpu] && cpu_ops[cpu]->cpu_die)
+		cpu_ops[cpu]->cpu_die(cpu);
+#endif
+
+	asm(
+	"1:	wfe\n"
+	"	wfi\n"
+	"	b	1b");
+}
+
 static void __init hyp_mode_check(void)
 {
 	if (is_hyp_mode_available())
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
