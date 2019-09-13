Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF192B252F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 20:24:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yC1rEYIfUBKGOxXkve+zcbmjz+PAGcfuQ/YX238WGeg=; b=uUICvAeQNxXAXY5BRwaxHKSn1T
	MOspfa3a3n+1rqidn7kaVQO8GLcuWTxT1TIFlpp2SVJGz75jbpVnJ9fsp+0JLrdbaDq/MKbpekFbD
	0nBcSj30viWvC0nhF+tZ88PaKF9x1HR5/wstDK8MqPYzfd09RYefwHQJuErdZyiNxC4gANL3y9rZY
	IC7h+mHOMUrYyKR3FZMbL9xq7oGer3AviDGV/sWmpji13eNP16LBRP4hFUNbY9jAzAZf8S0xcB9HM
	sVY5u9TW7aEHIXAIifY4nHBGSooEdByJX38RNM+c55kL8iD0Rm6mdINKUCtuXlU9bGFxpSPQrNify
	GalWGTBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8qF6-00081N-AH; Fri, 13 Sep 2019 18:24:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8qC5-0005QS-HY
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 18:21:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 455AC28;
 Fri, 13 Sep 2019 11:21:17 -0700 (PDT)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CBF3B3F71F;
 Fri, 13 Sep 2019 11:21:14 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org
Subject: [RFC PATCH v2 12/12] sparc64: smp: use generic SMP stop common code
Date: Fri, 13 Sep 2019 19:19:53 +0100
Message-Id: <20190913181953.45748-13-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190913181953.45748-1-cristian.marussi@arm.com>
References: <20190913181953.45748-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_112117_801070_DF20ED65 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arch@vger.kernel.org, mark.rutland@arm.com,
 sparclinux@vger.kernel.org, dzickus@redhat.com, ehabkost@redhat.com,
 peterz@infradead.org, catalin.marinas@arm.com, x86@kernel.org,
 linux@armlinux.org.uk, davem@davemloft.net, hch@infradead.org,
 takahiro.akashi@linaro.org, mingo@redhat.com, james.morse@arm.com,
 hidehiro.kawai.ez@hitachi.com, tglx@linutronix.de, will@kernel.org,
 dave.martin@arm.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make sparc64 use the generic SMP-stop logic provided by common code
unified smp_send_stop() function.

Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
 arch/sparc/Kconfig         |  1 +
 arch/sparc/kernel/smp_64.c | 15 ++++++++-------
 2 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/arch/sparc/Kconfig b/arch/sparc/Kconfig
index 7926a2e11bdc..67d8bb741378 100644
--- a/arch/sparc/Kconfig
+++ b/arch/sparc/Kconfig
@@ -95,6 +95,7 @@ config SPARC64
 	select ARCH_HAS_PTE_SPECIAL
 	select PCI_DOMAINS if PCI
 	select ARCH_HAS_GIGANTIC_PAGE
+	select ARCH_USE_COMMON_SMP_STOP
 
 config ARCH_DEFCONFIG
 	string
diff --git a/arch/sparc/kernel/smp_64.c b/arch/sparc/kernel/smp_64.c
index a8275fea4b70..759e5fd867c5 100644
--- a/arch/sparc/kernel/smp_64.c
+++ b/arch/sparc/kernel/smp_64.c
@@ -1537,7 +1537,12 @@ static void stop_this_cpu(void *dummy)
 	prom_stopself();
 }
 
-void smp_send_stop(void)
+void arch_smp_cpus_stop_complete(void)
+{
+	smp_call_function(stop_this_cpu, NULL, 0);
+}
+
+void arch_smp_stop_call(cpumask_t *cpus, unsigned int __unused)
 {
 	int cpu;
 
@@ -1546,10 +1551,7 @@ void smp_send_stop(void)
 #ifdef CONFIG_SERIAL_SUNHV
 		sunhv_migrate_hvcons_irq(this_cpu);
 #endif
-		for_each_online_cpu(cpu) {
-			if (cpu == this_cpu)
-				continue;
-
+		for_each_cpu(cpu, cpus) {
 			set_cpu_online(cpu, false);
 #ifdef CONFIG_SUN_LDOMS
 			if (ldom_domaining_enabled) {
@@ -1562,8 +1564,7 @@ void smp_send_stop(void)
 #endif
 				prom_stopcpu_cpuid(cpu);
 		}
-	} else
-		smp_call_function(stop_this_cpu, NULL, 0);
+	}
 }
 
 /**
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
