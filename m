Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 434F31DB139
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 13:14:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YQTf2H/H4hjtK5qfuhqaWJbQYsJSsr6UUeSz0Tvy8Cw=; b=I/Y9xz6RDAXyKR9G+HIDvrjaL7
	beUemjwHuZwcs97MwBRHAUYEACoSieCwdqHevVfr0oyQcuEfV/Wl3QWjleuVmLrw0JA4EktmHY3Ik
	5hCNs1sRrEved3WUW+CsZ9mlqqy86iiK1E7cDvfwv7GSrat1j2sDxC9sPtd+cPRTIXQhKw5YEJthn
	4Ig+8Sru6HHmS8qGKQjZ37NscVsYBbda2wtJljta3zX5qTVW0yGRfNpwGs2jHIpP/RnAKSdHXdH6p
	dHeiLd1ZqpUdCz5xCMIJzo1V78cdtsx0YVVfz+yP3x3Fizx+cAVeKqQOrxM70OvePp9/xqfAIXYB3
	zoiJGXwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbMfo-0005C4-Vs; Wed, 20 May 2020 11:14:08 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbMf5-0004kH-S3
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 11:13:26 +0000
Received: by mail-pl1-x644.google.com with SMTP id t7so1198011plr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 04:13:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=yX6L8WE/2wulIJ9zzHwHac/OpN/D9QY9ojqo7Mh/3mw=;
 b=egwaEsnbY6AeyS96dO0hGfkxr/9sazC/TRAuJtiKxLcMasIkKn3431qFi4aKu8PyZy
 zA+K2sbl6vAxNVwL9+KW7XZ6wDYR0TzfCEIX9eF4LrQXw6fMVz9bXjVDFxUoh1Awjccn
 ikb16VFGIwZvdaIOWKt4pgIEZT6ajVQzfP7WI2ZTnNIVJZCp5DG8DKNGNTvC4VTRynVq
 5oD1hCIlADqJ8xlYek0oUenVOv++9LauUwQ9ImiMD6NjhqZAfkNSzAItZBGBgnIpAekq
 GXtOXwG57Y9VE31yfVzj2gBoGkiuh6+l8qxBEZcJ3Ymt5wWomn20SbsZKRngQKiep0rj
 icKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=yX6L8WE/2wulIJ9zzHwHac/OpN/D9QY9ojqo7Mh/3mw=;
 b=MbwzGCRbVhGBLVYI4yfzbfSDhPNtrppHwS4xBiBFGRqICEnU2ajULzvli7OPctNtnW
 kfA2GiBWpToZClcjK3cehLmhA5U6VP+NntGAZdUvHrPSgbl+gW+gzo/zcqjdKHmagALy
 8AWIczg+UWc6yM7DsrozpAv9xRieYCYa1edXn6J7qEkDWqNE4OlOIri0+oKW68u3euL+
 2TCLTR+G3/vbi0Mm7LSYdqNsT2acwJ3fQ+fodurEutY4H5PKJe929A9vjoKroySAb/Pp
 kvZlMhL4sZ/v76kBmuxIaW7qJZN/XiX5GWWsFnVUmOeKgRY8tlw4EvGWElx5NPcOleQ4
 3nCA==
X-Gm-Message-State: AOAM5313xXTocJtArzCWKyn2xSiV1LRglfrNbdt9I4DWMchoSE8szjsj
 bIU2Opw7nb+/TTBVue/qT5XYCetWZOs=
X-Google-Smtp-Source: ABdhPJzUpGV1y7deDtZi57sfC8WyhNh7TcidlxseCMF5t7wpivc/pdczLuxnyS0XLzXoczy4erEZ3Q==
X-Received: by 2002:a17:90b:110d:: with SMTP id
 gi13mr4537270pjb.131.1589973202196; 
 Wed, 20 May 2020 04:13:22 -0700 (PDT)
Received: from localhost.localdomain ([117.252.68.136])
 by smtp.gmail.com with ESMTPSA id q134sm2044974pfc.143.2020.05.20.04.13.15
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 20 May 2020 04:13:21 -0700 (PDT)
From: Sumit Garg <sumit.garg@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 4/4] arm64: kgdb: Round up cpus using IPI_CALL_NMI_FUNC
Date: Wed, 20 May 2020 16:41:55 +0530
Message-Id: <1589973115-14757-5-git-send-email-sumit.garg@linaro.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589973115-14757-1-git-send-email-sumit.garg@linaro.org>
References: <1589973115-14757-1-git-send-email-sumit.garg@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_041323_942547_53883807 
X-CRM114-Status: GOOD (  13.96  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
---
 arch/arm64/include/asm/kgdb.h |  8 ++++++++
 arch/arm64/kernel/kgdb.c      | 21 +++++++++++++++++++++
 arch/arm64/kernel/smp.c       |  3 ++-
 3 files changed, 31 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/kgdb.h b/arch/arm64/include/asm/kgdb.h
index 21fc85e..6f3d3af 100644
--- a/arch/arm64/include/asm/kgdb.h
+++ b/arch/arm64/include/asm/kgdb.h
@@ -24,6 +24,14 @@ static inline void arch_kgdb_breakpoint(void)
 extern void kgdb_handle_bus_error(void);
 extern int kgdb_fault_expected;
 
+#ifdef CONFIG_KGDB
+extern void ipi_kgdb_nmicallback(int cpu, void *regs);
+#else
+static inline void ipi_kgdb_nmicallback(int cpu, void *regs)
+{
+}
+#endif
+
 #endif /* !__ASSEMBLY__ */
 
 /*
diff --git a/arch/arm64/kernel/kgdb.c b/arch/arm64/kernel/kgdb.c
index 4311992..ee932ba 100644
--- a/arch/arm64/kernel/kgdb.c
+++ b/arch/arm64/kernel/kgdb.c
@@ -14,6 +14,7 @@
 #include <linux/kgdb.h>
 #include <linux/kprobes.h>
 #include <linux/sched/task_stack.h>
+#include <linux/smp.h>
 
 #include <asm/debug-monitors.h>
 #include <asm/insn.h>
@@ -353,3 +354,23 @@ int kgdb_arch_remove_breakpoint(struct kgdb_bkpt *bpt)
 	return aarch64_insn_write((void *)bpt->bpt_addr,
 			*(u32 *)bpt->saved_instr);
 }
+
+void ipi_kgdb_nmicallback(int cpu, void *regs)
+{
+	if (atomic_read(&kgdb_active) != -1)
+		kgdb_nmicallback(cpu, regs);
+}
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
index c5e42a1..3baace7 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -31,6 +31,7 @@
 #include <linux/of.h>
 #include <linux/irq_work.h>
 #include <linux/kexec.h>
+#include <linux/kgdb.h>
 #include <linux/kvm_host.h>
 
 #include <asm/alternative.h>
@@ -958,7 +959,7 @@ static void do_handle_IPI(int ipinr)
 #endif
 
 	case IPI_CALL_NMI_FUNC:
-		/* nop, IPI handlers for special features can be added here. */
+		ipi_kgdb_nmicallback(cpu, get_irq_regs());
 		break;
 
 	default:
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
