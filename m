Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A1CA190E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:40:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OFSc/207lImDYVKhf/R+iD86Ir7HFy+4aaGYce5UFOk=; b=aWMZgtrBAfODqr
	Wgrq1aUG0Siof/X+le7h1iau0OO69c9uwaGVujQvL5q6yw/6kvGC4OHfnkWal9XthkwRYgn7R6Lj7
	lSoC/iy1p2pVJtK0Qwzay68UF9352Rbh9m867GI2KCII16HhZ9e2R+mOh0ZLxaoQdvGO/aSsV7j/d
	MRK0bWh98Ne9RPTyGMqK1Rh43fq9X67Q3QxY6OdSX6ebYJyvNnxYfh1AIiRA3wC0tUArOANQg0eYS
	rbOtXRB7pMCGv5Nzz4nnT0fOOgFNOJlpjeYVO44omplhLpicQy8023S9s/QMdM7QxulrWnAoQMJva
	96/kIGPVgUNcKa4+Mrtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Ims-0001bh-6m; Thu, 29 Aug 2019 11:40:22 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3IiF-0006RK-4n
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:35:36 +0000
Received: by mail-pg1-x542.google.com with SMTP id w10so1447740pgj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:35:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=S7tWZ4SSsguq1kKDGe+eHq1QEkjWGUVJOVs6gRGydRo=;
 b=pYRYAxtKgJJnWHVpW0dvFREmu6GDQq9DGA2/QUcdzPieHaQAPryaUQrqmtGboo0fNX
 ucmEoXA9ZB46cMtJGX78GnCicYNC++GJQJkMXz/tGcvUr4BEnOpiN6Vz2J5L77r9x9MM
 4mQWEHQHXhkTW+0xxyaKY8SSwx9IvM6cDDeWRkWv27lPUSj5O/lsYAKmoOvb0p24mbkb
 uWzPPL7Hdcn3bGGsED/RiRw/xRXzqUsF/ikKm4O7mO+iTHJpwDJeEsZ6cq+WYt08USGP
 xjz3Y/E/j9b+UxSntJWH+OukE40S8fXyZaHE7v1zcKaa7ATOWu4OkAXUOH78FOqmgnvz
 qUQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=S7tWZ4SSsguq1kKDGe+eHq1QEkjWGUVJOVs6gRGydRo=;
 b=Yr/41gs+O9VQJCvYt41XK9C5ZVgRUsC5GuQMj3viE2N5CTR1CWalb+2HL6LSkFFlPB
 9vildLYz2PAlObngcQ1PtdSXp/6cGNgJQwA9xmnzk/3vppVOtEHRKHx3X+e7HoEnvZhq
 +byHSgIx70mkJR3JAywD5eWuEgt3nw8lcBXC8nr1Muvq3IFDmVSvRnUuh9EZoZaVd3Pt
 vmIRgBvZHDyxgmfmqyNX9xo43bdgE7TtaDi01L/ZoGfk4nZJ/53LFIi4HO/stt569maW
 7fyqEoeW/LSVVBexHSY3+jlCpvfJzwrUJciPyPC/kdeLYvcDTY5wNZvlCKvZRxjPJTJ7
 Ylew==
X-Gm-Message-State: APjAAAXdiSXQ/Easyi3a4d6yThaMw6CQ/qXknIHpZinGheqJXMviSORr
 ZaeseI/Hwmp4XoZy5Ixekn9Mrw==
X-Google-Smtp-Source: APXvYqx/9bqZ348Ffe/5Oarap714tqQ6mvmVep5ft2QKUKQYOUyza6cxcIayEsdiiZ3jPUhZMrMTJw==
X-Received: by 2002:a17:90a:f485:: with SMTP id
 bx5mr9464169pjb.113.1567078534588; 
 Thu, 29 Aug 2019 04:35:34 -0700 (PDT)
Received: from localhost ([122.167.132.221])
 by smtp.gmail.com with ESMTPSA id e13sm6729834pfl.130.2019.08.29.04.35.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 04:35:33 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org, Julien Thierry <Julien.Thierry@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH ARM64 v4.4 V3 16/44] arm64: Move cpu_die_early to smp.c
Date: Thu, 29 Aug 2019 17:04:01 +0530
Message-Id: <59d2f5d6f0d1e777646712b74e542fdf160c953f.1567077734.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1567077734.git.viresh.kumar@linaro.org>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043535_374412_74A1A67B 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Marc Zyngier <marc.zyngier@arm.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suzuki K Poulose <suzuki.poulose@arm.com>

Commit fce6361fe9b0caeba0c05b7d72ceda406f8780df upstream.

This patch moves cpu_die_early to smp.c, where it fits better.
No functional changes, except for adding the necessary checks
for CONFIG_HOTPLUG_CPU.

Cc: Mark Rutland <mark.rutland@arm.com>
Acked-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/include/asm/smp.h   |  1 +
 arch/arm64/kernel/cpufeature.c | 19 -------------------
 arch/arm64/kernel/smp.c        | 22 ++++++++++++++++++++++
 3 files changed, 23 insertions(+), 19 deletions(-)

diff --git a/arch/arm64/include/asm/smp.h b/arch/arm64/include/asm/smp.h
index 53b53a9b3e5a..32e75ee21d5e 100644
--- a/arch/arm64/include/asm/smp.h
+++ b/arch/arm64/include/asm/smp.h
@@ -68,6 +68,7 @@ extern int __cpu_disable(void);
 
 extern void __cpu_die(unsigned int cpu);
 extern void cpu_die(void);
+extern void cpu_die_early(void);
 
 static inline void cpu_park_loop(void)
 {
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 4adf18307568..a0273cd8be51 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -852,25 +852,6 @@ static inline void set_sys_caps_initialised(void)
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
-	cpu_park_loop();
-}
-
 /*
  * Run through the enabled system capabilities and enable() it on this CPU.
  * The capabilities were decided based on the available CPUs at the boot time.
diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index 03c0946b79d2..23e8ae0c6305 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -312,6 +312,28 @@ void cpu_die(void)
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
+	cpu_park_loop();
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
