Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 710351B72C3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 13:12:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aAO4MZJFeohQlZBNVCMB1edGfFQf0Oj+OmeUJaW1Osw=; b=GwcA7aIuy2P25ygvmVtKzuDSak
	pvVr7vhYWh/icYLzpaYEQnI7RN0lfIlq1mwVBcg0DioeKTCE1TkSj6a7n9Z8PtX+URCk0CC9bPI5M
	uSd6ZHBxpB+52sd2eHRdBjda+5ZxSqEPHzdmq3ASxYRgvwfBj0vdSTykHFkJwPfj+gu1fZGInh7aQ
	XGsvilXMC5GF626/IFgTDR6jSBg5nVc4GAnHb+4tlmPFNjqhJ2sSRKyJXLaiuvt+Ziz+IvTrLCBG2
	f1TeLHabmG6dGSxJzcMNJYOiYE7p4R9lmL/zy3BRGbzkm9lOYijoZ43vrF3Uq2oQB8XBbcaW+yxrZ
	ImHtKPsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRwFE-0004gG-OV; Fri, 24 Apr 2020 11:11:44 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRwF1-0004bq-L5
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 11:11:33 +0000
Received: by mail-pl1-x644.google.com with SMTP id g2so3624206plo.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 04:11:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=EKk8wf3cz8RUWzn1IoJAXdPdtXtapZhuXqAKZvlxhk0=;
 b=YVByvnPda4cATjn80837BpLybRu1ueTExKc+WHBVax5RorJ+ZNuwn2MuexnHp4cYo5
 pJSZ9w7zONizNG7Z3GdcKH+Tkhn25h8TR9XHtivZtX1CpbXpXvI867BueiUOFBq9kLNZ
 KvqEdfylxYMdXjK11Cje/hpe6RxW7SkgNCglD4qg+8esQ0DGRN1unACq9B/XSrSjvNe/
 U+Gs2Tw/SQUjHpha+1570GDCr8HtTa+kiYHbNnrfrd8ZE7Tvhm3n3vodJ2Mcm89E3GwA
 /Yg4yBEGGmx3zLlYG2FU4efb942GYE84eO8krDcE4jT0MmEvsksbti+duvjQPCEo+yUl
 fsSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=EKk8wf3cz8RUWzn1IoJAXdPdtXtapZhuXqAKZvlxhk0=;
 b=j+Zfr5f/IWpDz7oOqqeLK/wVZAl+9Tsg5DNxwhDJiq3zSLAbdbT/v2/1OHqc9W30UV
 fuXGqPOdXvIKDPw9e9APnXgu7GgoKpHmZwXXtyJjHeqCztoqxiiLrvTGU0lbOZhGlvyE
 b41gvuYpKnjJatYRpiYDV9x+CjEOwrC7QUbPXOPQs3sRGTvsuNoNv9kqEkKe5pmTa6cy
 lUvPTicCoYQJDdMtRxqQobIrQHItulm1b1jPeNkNnb985pIN8X0cT2w+ZwXp+56mpk3G
 hda/E1ERyEhJH3cQt5cQfdACli47agRzZ/HL6zCi9AMUAADpv/huDaFKaCqXCMym2DAv
 1RLg==
X-Gm-Message-State: AGi0Pub8bfLNfZfu2QqIJHrVfno75vNcp+99zPc47387pEZsezvdS4z3
 JBzQow+e1bSA4sZFWwITyAmPh7ejx3Dejg==
X-Google-Smtp-Source: APiQypJ3GgW9Pqsjfrzr6QtP90j+8rGXoeLfM9QDDeJW24ES89o3cFiti2XOv8eDeWoqo/y4W3Qbew==
X-Received: by 2002:a17:90a:c702:: with SMTP id
 o2mr5618006pjt.196.1587726689928; 
 Fri, 24 Apr 2020 04:11:29 -0700 (PDT)
Received: from localhost.localdomain ([117.252.71.186])
 by smtp.gmail.com with ESMTPSA id o11sm4637628pgd.58.2020.04.24.04.11.22
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Apr 2020 04:11:29 -0700 (PDT)
From: Sumit Garg <sumit.garg@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC Patch v1 1/4] arm64: smp: Introduce a new IPI as
 IPI_CALL_NMI_FUNC
Date: Fri, 24 Apr 2020 16:39:11 +0530
Message-Id: <1587726554-32018-2-git-send-email-sumit.garg@linaro.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587726554-32018-1-git-send-email-sumit.garg@linaro.org>
References: <1587726554-32018-1-git-send-email-sumit.garg@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_041131_717092_90313249 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sumit Garg <sumit.garg@linaro.org>, daniel.thompson@linaro.org,
 jason@lakedaemon.net, catalin.marinas@arm.com, jason.wessel@windriver.com,
 dianders@chromium.org, linux-kernel@vger.kernel.org, maz@kernel.org,
 kgdb-bugreport@lists.sourceforge.net, tglx@linutronix.de, will@kernel.org,
 julien.thierry.kdev@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce a new inter processor interrupt as IPI_CALL_NMI_FUNC that
can be invoked to run special handlers in NMI context. One such handler
example is kgdb_nmicallback() which is invoked in order to round up CPUs
to enter kgdb context.

As currently pseudo NMIs are supported on specific arm64 platforms which
incorporates GICv3 or later version of interrupt controller. In case a
particular platform doesn't support pseudo NMIs, IPI_CALL_NMI_FUNC will
act as a normal IPI which can still be used to invoke special handlers.

Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
---
 arch/arm64/include/asm/hardirq.h |  2 +-
 arch/arm64/include/asm/smp.h     |  1 +
 arch/arm64/kernel/smp.c          | 20 +++++++++++++++++++-
 3 files changed, 21 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/hardirq.h b/arch/arm64/include/asm/hardirq.h
index 87ad961..abaa23a 100644
--- a/arch/arm64/include/asm/hardirq.h
+++ b/arch/arm64/include/asm/hardirq.h
@@ -13,7 +13,7 @@
 #include <asm/kvm_arm.h>
 #include <asm/sysreg.h>
 
-#define NR_IPI	7
+#define NR_IPI	8
 
 typedef struct {
 	unsigned int __softirq_pending;
diff --git a/arch/arm64/include/asm/smp.h b/arch/arm64/include/asm/smp.h
index 40d5ba0..cc32776 100644
--- a/arch/arm64/include/asm/smp.h
+++ b/arch/arm64/include/asm/smp.h
@@ -108,6 +108,7 @@ extern void secondary_entry(void);
 
 extern void arch_send_call_function_single_ipi(int cpu);
 extern void arch_send_call_function_ipi_mask(const struct cpumask *mask);
+extern void arch_send_call_nmi_func_ipi_mask(const struct cpumask *mask);
 
 #ifdef CONFIG_ARM64_ACPI_PARKING_PROTOCOL
 extern void arch_send_wakeup_ipi_mask(const struct cpumask *mask);
diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index 061f60f..42fe7bb 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -74,7 +74,8 @@ enum ipi_msg_type {
 	IPI_CPU_CRASH_STOP,
 	IPI_TIMER,
 	IPI_IRQ_WORK,
-	IPI_WAKEUP
+	IPI_WAKEUP,
+	IPI_CALL_NMI_FUNC
 };
 
 #ifdef CONFIG_HOTPLUG_CPU
@@ -798,6 +799,7 @@ static const char *ipi_types[NR_IPI] __tracepoint_string = {
 	S(IPI_TIMER, "Timer broadcast interrupts"),
 	S(IPI_IRQ_WORK, "IRQ work interrupts"),
 	S(IPI_WAKEUP, "CPU wake-up interrupts"),
+	S(IPI_CALL_NMI_FUNC, "NMI function call interrupts"),
 };
 
 static void smp_cross_call(const struct cpumask *target, unsigned int ipinr)
@@ -856,6 +858,11 @@ void arch_irq_work_raise(void)
 }
 #endif
 
+void arch_send_call_nmi_func_ipi_mask(const struct cpumask *mask)
+{
+	smp_cross_call(mask, IPI_CALL_NMI_FUNC);
+}
+
 static void local_cpu_stop(void)
 {
 	set_cpu_online(smp_processor_id(), false);
@@ -960,6 +967,17 @@ void handle_IPI(int ipinr, struct pt_regs *regs)
 		break;
 #endif
 
+	case IPI_CALL_NMI_FUNC:
+		/* Handle it as a normal interrupt if not in NMI context */
+		if (!in_nmi())
+			irq_enter();
+
+		/* nop, IPI handlers for special features can be added here. */
+
+		if (!in_nmi())
+			irq_exit();
+		break;
+
 	default:
 		pr_crit("CPU%u: Unknown IPI message 0x%x\n", cpu, ipinr);
 		break;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
