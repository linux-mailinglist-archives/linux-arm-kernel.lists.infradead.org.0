Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F81B252A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 20:23:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=j1H9bAfK/Whgt/v5klUXYNOwSGXM3J11/apYQHwfR7k=; b=ld5C/ZPc2ThQSIx6Qn5SwwVJZg
	Lb6zBtx4BoeIVHDVrMN6rz4enpwC96lLZh1hmpbgka00vQTpMxcPiaTZitOg7ZWcocv1AmXW1QxEj
	kxwCDYKWE3lvFRngslUp7LP4YBLc7l7ni5H4Co7vpJTw2jvu7+1rR6Duq6qLwKbnQLYXK565wkare
	fIoc3TpPgpY5ZPtsTIk3jlKtnwSmax/Al1ISa/xg7UaxjX5SiyG3nh31DxccACKNMOuARPLZ/+VW3
	m2cJL9JbXAjAkIYjWbpQHKupaxiKi+x5O7FM9wQoybEn3K0wOy7rvWGZRk26wCZuKU6/A+mXq08SA
	zrdaRcuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8qEY-0007UG-C3; Fri, 13 Sep 2019 18:23:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8qC0-0005Ke-8E
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 18:21:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E67231570;
 Fri, 13 Sep 2019 11:21:11 -0700 (PDT)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 78C773F71F;
 Fri, 13 Sep 2019 11:21:09 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org
Subject: [RFC PATCH v2 10/12] arm: smp: use generic SMP stop common code
Date: Fri, 13 Sep 2019 19:19:51 +0100
Message-Id: <20190913181953.45748-11-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190913181953.45748-1-cristian.marussi@arm.com>
References: <20190913181953.45748-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_112112_498008_C0C3A886 
X-CRM114-Status: GOOD (  11.62  )
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

Make arm use the generic SMP-stop logic provided by common code
unified smp_send_stop() function.

Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
 arch/arm/Kconfig      |  1 +
 arch/arm/kernel/smp.c | 18 ++----------------
 2 files changed, 3 insertions(+), 16 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 24360211534a..0a3a9c9a0b2e 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -34,6 +34,7 @@ config ARM
 	select ARCH_SUPPORTS_ATOMIC_RMW
 	select ARCH_USE_BUILTIN_BSWAP
 	select ARCH_USE_CMPXCHG_LOCKREF
+	select ARCH_USE_COMMON_SMP_STOP
 	select ARCH_WANT_IPC_PARSE_VERSION
 	select BINFMT_FLAT_ARGVP_ENVP_ON_STACK
 	select BUILDTIME_EXTABLE_SORT if MMU
diff --git a/arch/arm/kernel/smp.c b/arch/arm/kernel/smp.c
index aab8ba40ce38..bf5c04691fab 100644
--- a/arch/arm/kernel/smp.c
+++ b/arch/arm/kernel/smp.c
@@ -703,23 +703,9 @@ void smp_send_reschedule(int cpu)
 	smp_cross_call(cpumask_of(cpu), IPI_RESCHEDULE);
 }
 
-void smp_send_stop(void)
+void arch_smp_stop_call(cpumask_t *cpus, unsigned int __unused)
 {
-	unsigned long timeout;
-	struct cpumask mask;
-
-	cpumask_copy(&mask, cpu_online_mask);
-	cpumask_clear_cpu(smp_processor_id(), &mask);
-	if (!cpumask_empty(&mask))
-		smp_cross_call(&mask, IPI_CPU_STOP);
-
-	/* Wait up to one second for other CPUs to stop */
-	timeout = USEC_PER_SEC;
-	while (num_online_cpus() > 1 && timeout--)
-		udelay(1);
-
-	if (num_online_cpus() > 1)
-		pr_warn("SMP: failed to stop secondary CPUs\n");
+	smp_cross_call(cpus, IPI_CPU_STOP);
 }
 
 /* In case panic() and panic() called at the same time on CPU1 and CPU2,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
