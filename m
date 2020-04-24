Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB571B72D0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 13:12:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=f8cYvvDWhHXe/m246VODGPWd4kDLZl6BX75p8UFC9OI=; b=rX/740WE/QHgwVtTZ7iBo627MD
	f4CZvE37y1Axt1ZkZoTl1ZEMFBKzhmhwlNelwrhIRo2yPmitbQfKVAV8kEY+3PwdB0i2EJjA5P0/t
	YT9zXOyPnUEdYXc2napfr1Y9BH9n95cZ6Gbew8cmbz3wYL8IBMMLa5C7+of5PpPnRJFKQdMoCUl+s
	aFKuaPLdtFECp4vT4EwZU/hOxRQJR5WDwjMsY84WgFfeyi6ohdgqksTt9+S9u1s5JzTYGxUbGrNL5
	JZiAk0Ylu0OaqCvYBmXbMAVHBqSYVFfBuOoSE4gSSuI0RR6WNxhQTbTCerQ79gT5rDwAMyk4cpR0I
	5xzjcHhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRwG8-0005YH-AK; Fri, 24 Apr 2020 11:12:40 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRwFQ-00055q-GJ
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 11:11:58 +0000
Received: by mail-pj1-x1043.google.com with SMTP id a31so1895913pje.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 04:11:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=mGgPpUWWcJSKxFWk1j0ZpUZcDZ7qWSk+2Ep1V3opjsY=;
 b=RhV+Dgur2THbXVsj1cTu37mw8UPw80MKORypqDq7r/YfZFzDSHI0k79rvvs3kRsL+N
 5X10akzNH/fucZMO2P+Hqo+FCdis++edlXsKCaoPKGeOFZHpR8rNipVNdkPBE7nc1FtL
 JAnQMkVN/9e0A5DGLVeib1jx8kE46Ta4BFi4iS2XnJgWwfNMkyjGivbJIDXz4IO5uVih
 iP/Ss+WpI9mJhxFgwThDtMgqbXhV0bZwV4YtOYbHxLvaiwTwi0YHM57IX3IXb2K6ZmMa
 ZnfIe/U12bZDfeCOntbNTqUd4qRY76VDrfjXvdCam3jgPIhzv9/AA8CqliMBJ94JV9O2
 R7JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=mGgPpUWWcJSKxFWk1j0ZpUZcDZ7qWSk+2Ep1V3opjsY=;
 b=YmzKYT0ccm2ypn71kexvL58e+fHV3TYCbGpF9DpkgLMKrvbt39AHQQrUHLLxcPk1Id
 9jAy1/2brJp00iMZQtafK8ygxCGknXGf96pNQ4l/0O/UrrpBWXDhlx95uTPRmvAkV+0b
 klBBfigFxBPTvMJ1OaFYXfjSSYQ4YojPLDbxR3QSzko/JBgTgo5p5vQsf+65kLaQDDLX
 tWCL4wnrZiLNkwu41gVHWjGJ6mELzpDnQxGrT6DJQTaIixl2I6as+rxSDA66lQPBDQhR
 7d+oIw4p7wgRfJzcLgs/WbmkGW85/g6Ou1W6KL0M+LznqWTKErLi7eS/hzm27xo9Nmqf
 8fqQ==
X-Gm-Message-State: AGi0PuaRWyBW0LNDdWTD1Dcv1ZEMz7OJwAkrUYhxXFDLbeNQjVD2EuvS
 eOW3mS5Cw+7EuTCjOsjCrlW27E1VRlo0dw==
X-Google-Smtp-Source: APiQypL+FHEDBtk6zd1EZND+1rWOLvFjGjy05fIVV+X1HKwQAax28zUwpf9w2/xAFM9nylW0/w1XRg==
X-Received: by 2002:a17:902:8647:: with SMTP id
 y7mr8684677plt.87.1587726714544; 
 Fri, 24 Apr 2020 04:11:54 -0700 (PDT)
Received: from localhost.localdomain ([117.252.71.186])
 by smtp.gmail.com with ESMTPSA id o11sm4637628pgd.58.2020.04.24.04.11.47
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Apr 2020 04:11:53 -0700 (PDT)
From: Sumit Garg <sumit.garg@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC Patch v1 4/4] arm64: kgdb: Round up cpus using IPI_CALL_NMI_FUNC
Date: Fri, 24 Apr 2020 16:39:14 +0530
Message-Id: <1587726554-32018-5-git-send-email-sumit.garg@linaro.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587726554-32018-1-git-send-email-sumit.garg@linaro.org>
References: <1587726554-32018-1-git-send-email-sumit.garg@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_041156_553951_20407EDF 
X-CRM114-Status: GOOD (  14.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
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

arm64 platforms with GICv3 or later supports pseudo NMIs which can be
leveraged to round up CPUs which are stuck in hard lockup state with
interrupts disabled that wouldn't be possible with a normal IPI.

So instead switch to round up CPUs using IPI_CALL_NMI_FUNC. And in
case a particular arm64 platform doesn't supports pseudo NMIs,
IPI_CALL_NMI_FUNC will act as a normal IPI which maintains existing
kgdb functionality.

Also, one thing to note here is that with CPUs running in NMI context,
kernel has special handling for printk() which involves CPU specific
buffers and defering printk() until exit from NMI context. But with kgdb
we don't want to defer printk() especially backtrace on corresponding
CPUs. So switch to normal printk() context instead prior to entering
kgdb context.

Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
---
 arch/arm64/kernel/kgdb.c | 15 +++++++++++++++
 arch/arm64/kernel/smp.c  | 17 ++++++++++++++---
 2 files changed, 29 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kernel/kgdb.c b/arch/arm64/kernel/kgdb.c
index 4311992..0851ead 100644
--- a/arch/arm64/kernel/kgdb.c
+++ b/arch/arm64/kernel/kgdb.c
@@ -14,6 +14,7 @@
 #include <linux/kgdb.h>
 #include <linux/kprobes.h>
 #include <linux/sched/task_stack.h>
+#include <linux/smp.h>
 
 #include <asm/debug-monitors.h>
 #include <asm/insn.h>
@@ -353,3 +354,17 @@ int kgdb_arch_remove_breakpoint(struct kgdb_bkpt *bpt)
 	return aarch64_insn_write((void *)bpt->bpt_addr,
 			*(u32 *)bpt->saved_instr);
 }
+
+#ifdef CONFIG_SMP
+void kgdb_roundup_cpus(void)
+{
+	struct cpumask mask;
+
+	cpumask_copy(&mask, cpu_online_mask);
+	cpumask_clear_cpu(raw_smp_processor_id(), &mask);
+	if (cpumask_empty(&mask))
+		return;
+
+	arch_send_call_nmi_func_ipi_mask(&mask);
+}
+#endif
diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index 27c8ee1..c7158f6e8 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -31,6 +31,7 @@
 #include <linux/of.h>
 #include <linux/irq_work.h>
 #include <linux/kexec.h>
+#include <linux/kgdb.h>
 #include <linux/kvm_host.h>
 
 #include <asm/alternative.h>
@@ -976,9 +977,19 @@ void handle_IPI(int ipinr, struct pt_regs *regs)
 		/* Handle it as a normal interrupt if not in NMI context */
 		if (!in_nmi())
 			irq_enter();
-
-		/* nop, IPI handlers for special features can be added here. */
-
+#ifdef CONFIG_KGDB
+		if (atomic_read(&kgdb_active) != -1) {
+			/*
+			 * For kgdb to work properly, we need printk to operate
+			 * in normal context.
+			 */
+			if (in_nmi())
+				printk_nmi_exit();
+			kgdb_nmicallback(raw_smp_processor_id(), regs);
+			if (in_nmi())
+				printk_nmi_enter();
+		}
+#endif
 		if (!in_nmi())
 			irq_exit();
 		break;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
