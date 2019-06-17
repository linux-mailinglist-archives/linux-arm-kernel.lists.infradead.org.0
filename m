Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C8549170
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 22:36:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AJV8M/nXjyPQqv7kjrnYfdlGMzePkE+VKKEHH8lyksQ=; b=RmMO1r9jPWO92Y2ahXeDpCrbuS
	ZQ4JDDAdpgavFGZAKzujdJB7TBUfHvjrJXzuvz9GLO3Hy2jIjnP2O4yZdqNSB/z2df0ECwVucz8gF
	O8boHTbgUjyQQmifyRJa8PaKBd/uOq41HaUwirqI0eSsE0ZVxmLZSVVfXRT7s1bb4GJNU0i3t6KRJ
	I/jGonohkrmeZz1efhnXAAKRC6VLg4HW2f+D9c9nmlPTremFuuaICMd5u//VSq2IJIx6OBtRDJjyH
	m8Q/LfEFbDs4wWWTMCkwZuwP6qRgb8OyL+1cyjH70ZAx+fRAuVktoSimEX8nSlUPoJeEJblGxBUCV
	Jo9JlLyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcyMB-0002wP-0e; Mon, 17 Jun 2019 20:35:59 +0000
Received: from emh01.mail.saunalahti.fi ([62.142.5.107])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcyLf-0002lY-NJ
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 20:35:29 +0000
Received: from localhost.localdomain (85-76-83-177-nat.elisa-mobile.fi
 [85.76.83.177])
 by emh01.mail.saunalahti.fi (Postfix) with ESMTP id BF33D20005;
 Mon, 17 Jun 2019 23:35:20 +0300 (EEST)
From: Aaro Koskinen <aaro.koskinen@iki.fi>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, James Morse <james.morse@arm.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>
Subject: [PATCH v2 2/2] arm64: Implement panic_smp_self_stop()
Date: Mon, 17 Jun 2019 23:35:19 +0300
Message-Id: <20190617203519.328-2-aaro.koskinen@iki.fi>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190617203519.328-1-aaro.koskinen@iki.fi>
References: <20190617203519.328-1-aaro.koskinen@iki.fi>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_133527_927556_91E7D1A3 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [62.142.5.107 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
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
Cc: Aaro Koskinen <aaro.koskinen@nokia.com>,
 linux-arm-kernel@lists.infradead.org, Aaro Koskinen <aaro.koskinen@iki.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Aaro Koskinen <aaro.koskinen@nokia.com>

Currently arm64 uses the default implementation of panic_smp_self_stop()
where the CPU runs in a cpu_relax() loop unable to receive IPIs anymore.
As a result, when two CPUs panic() simultaneously we get "SMP: failed to
stop secondary CPUs" warnings and extra delays before a reset, because
smp_send_stop() still tries to stop the other paniced CPU.

Provide an implementation of panic_smp_self_stop() that is identical to
the IPI CPU stop handler, so that the online status of stopped CPUs gets
properly updated.

Signed-off-by: Aaro Koskinen <aaro.koskinen@nokia.com>
---

	v2: Update the commit log
	    Rename ipi_cpu_stop() to local_cpu_stop() and make it void func
	    Add a comment for panic_smp_self_stop()

	v1: https://patchwork.kernel.org/patch/10988103/

 arch/arm64/kernel/smp.c | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index 1a1b96a50245..1ac4aa34ffb6 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -845,18 +845,25 @@ void arch_irq_work_raise(void)
 }
 #endif
 
-/*
- * ipi_cpu_stop - handle IPI from smp_send_stop()
- */
-static void ipi_cpu_stop(unsigned int cpu)
+static void local_cpu_stop(void)
 {
-	set_cpu_online(cpu, false);
+	set_cpu_online(smp_processor_id(), false);
 
 	local_daif_mask();
 	sdei_mask_local_cpu();
 	cpu_park_loop();
 }
 
+/*
+ * We need to implement panic_smp_self_stop() for parallel panic() calls, so
+ * that cpu_online_mask gets correctly updated and smp_send_stop() can skip
+ * CPUs that have already stopped themselves.
+ */
+void panic_smp_self_stop(void)
+{
+	local_cpu_stop();
+}
+
 #ifdef CONFIG_KEXEC_CORE
 static atomic_t waiting_for_crash_ipi = ATOMIC_INIT(0);
 #endif
@@ -907,7 +914,7 @@ void handle_IPI(int ipinr, struct pt_regs *regs)
 
 	case IPI_CPU_STOP:
 		irq_enter();
-		ipi_cpu_stop(cpu);
+		local_cpu_stop();
 		irq_exit();
 		break;
 
-- 
2.17.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
