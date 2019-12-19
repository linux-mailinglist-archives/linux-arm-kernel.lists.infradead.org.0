Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C436126216
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 13:23:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RnAMkFLxa8MJW4qoh91vUTjeth1hjI5+pfs3fiZbnoI=; b=GW1ESJpKvxucth//cpLlr9UUFD
	cCRVKTqHnmxY9L338Y8SAGrxjPo1EAr0GtPPjzONRMzP6+cx7RhtxVpJTbZNCY3UnO9FDGKBSlPad
	eL50NjNEhTRyxxW5GPT+DZ0WoabY1byeevzuwkVxaVp+TPcbKnKAYIGe+ebkFjNcT+Z87JXRMZjp/
	+hg802XuEehpwRJk+CXaZ2DcMTVp+Eg/6fgZGO++gaIYAtlWjXfNZJRABjN6T8LESdGoD+XbPXCnY
	Q1lHBFtsetidTb3s/WUJrH+om21omWP6CmmJfUNx+VAF4vWVZrvs9szBxvkgi7vBJegHoV8e9aPkp
	bVesUr1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihupf-0006F1-Kl; Thu, 19 Dec 2019 12:23:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihumW-0002R1-G8
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 12:19:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ACF31DA7;
 Thu, 19 Dec 2019 04:19:51 -0800 (PST)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6295E3F719;
 Thu, 19 Dec 2019 04:19:49 -0800 (PST)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org
Subject: [RFC PATCH v3 11/12] arm: smp: use SMP crash-stop common code
Date: Thu, 19 Dec 2019 12:19:04 +0000
Message-Id: <20191219121905.26905-12-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191219121905.26905-1-cristian.marussi@arm.com>
References: <20191219121905.26905-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_041952_598235_78BF07BD 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
 linux@armlinux.org.uk, hch@infradead.org, takahiro.akashi@linaro.org,
 mingo@redhat.com, james.morse@arm.com, hidehiro.kawai.ez@hitachi.com,
 tglx@linutronix.de, will@kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make arm use the SMP common implementation of crash_smp_send_stop() and
its generic logic, by removing the arm crash_smp_send_stop() definition
and providing the needed arch specific helpers.

Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
 arch/arm/kernel/machine_kexec.c | 29 ++++++++---------------------
 1 file changed, 8 insertions(+), 21 deletions(-)

diff --git a/arch/arm/kernel/machine_kexec.c b/arch/arm/kernel/machine_kexec.c
index 76300f3813e8..5289984e3941 100644
--- a/arch/arm/kernel/machine_kexec.c
+++ b/arch/arm/kernel/machine_kexec.c
@@ -29,8 +29,6 @@ extern unsigned long kexec_indirection_page;
 extern unsigned long kexec_mach_type;
 extern unsigned long kexec_boot_atags;
 
-static atomic_t waiting_for_crash_ipi;
-
 /*
  * Provide a dummy crash_notes definition while crash dump arrives to arm.
  * This prevents breakage of crash_notes attribute in kernel/ksysfs.c.
@@ -89,34 +87,23 @@ void machine_crash_nonpanic_core(void *unused)
 	crash_save_cpu(&regs, smp_processor_id());
 	flush_cache_all();
 
+	/* ensure saved regs writes are visible before going offline */
+	smp_wmb();
 	set_cpu_online(smp_processor_id(), false);
-	atomic_dec(&waiting_for_crash_ipi);
 
+	/* ensure all writes visible before parking */
+	wmb();
 	while (1) {
 		cpu_relax();
 		wfe();
 	}
 }
 
-void crash_smp_send_stop(void)
+void arch_smp_crash_call(cpumask_t *cpus, unsigned int __unused)
 {
-	static int cpus_stopped;
-	unsigned long msecs;
-
-	if (cpus_stopped)
-		return;
-
-	atomic_set(&waiting_for_crash_ipi, num_online_cpus() - 1);
-	smp_call_function(machine_crash_nonpanic_core, NULL, false);
-	msecs = 1000; /* Wait at most a second for the other cpus to stop */
-	while ((atomic_read(&waiting_for_crash_ipi) > 0) && msecs) {
-		mdelay(1);
-		msecs--;
-	}
-	if (atomic_read(&waiting_for_crash_ipi) > 0)
-		pr_warn("Non-crashing CPUs did not react to IPI\n");
-
-	cpus_stopped = 1;
+	preempt_disable();
+	smp_call_function_many(cpus, machine_crash_nonpanic_core, NULL, false);
+	preempt_enable();
 }
 
 static void machine_kexec_mask_interrupts(void)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
