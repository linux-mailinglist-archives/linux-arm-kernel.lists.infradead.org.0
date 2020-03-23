Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7FD18F65A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 14:53:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PlpQ+jT7xbpogJuRZObAUUs660XQxMTykCiyTtigBso=; b=dzqKMObeLAGL/2S2pn/SMqVWCe
	aEWG6F1xTMdlITJNBKlEkmUZbWAbAjdfK4lLKrKsrSwNW3IbFOH4edAhHI0SrTjRR5kxfW2e0Owl8
	7NHicQqq+qFoI4hfHa2gtKP+/LkN1tYpr5jEWDE2XdOsWKysNjNpv7fyzQskaP0EYefRBb4CjLYWW
	muW+tYgthnJ6Dk8AbFUahy4R+Wyys10/C7oBCZh83zB+Q9Jm/gAFrgNvEx2+tuYz3/niebIH9zDS3
	xsnUrN5O6TNEAZYZGa50aNHKqT+YnKt+2ZxzFuIRI3o/Y8J5+t+hnTuKOYtGQUImE5xupAPuIaC67
	Zgi1zIEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGNW9-0003pm-O6; Mon, 23 Mar 2020 13:53:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGNUP-0002IF-90
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 13:51:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9FFD013FD;
 Mon, 23 Mar 2020 06:51:36 -0700 (PDT)
Received: from e107158-lin.cambridge.arm.com (e107158-lin.cambridge.arm.com
 [10.1.195.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6E5963F52E;
 Mon, 23 Mar 2020 06:51:34 -0700 (PDT)
From: Qais Yousef <qais.yousef@arm.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH v4 08/17] arm64: hibernate.c: Create a new function to handle
 cpu_up(sleep_cpu)
Date: Mon, 23 Mar 2020 13:51:01 +0000
Message-Id: <20200323135110.30522-9-qais.yousef@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200323135110.30522-1-qais.yousef@arm.com>
References: <20200323135110.30522-1-qais.yousef@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_065137_511888_6019FEB4 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Steve Capper <steve.capper@arm.com>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Pavankumar Kondeti <pkondeti@codeaurora.org>, linux-kernel@vger.kernel.org,
 Nicholas Piggin <npiggin@gmail.com>, Ingo Molnar <mingo@kernel.org>,
 Richard Fontana <rfontana@redhat.com>, James Morse <james.morse@arm.com>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Jiri Kosina <jkosina@suse.cz>,
 Will Deacon <will@kernel.org>, Qais Yousef <qais.yousef@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Zhenzhong Duan <zhenzhong.duan@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In preparation to make cpu_up/down private - move the user in arm64
hibernate.c to use a new generic function that provides what arm64
needs.

Acked-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Qais Yousef <qais.yousef@arm.com>
CC: Catalin Marinas <catalin.marinas@arm.com>
CC: Will Deacon <will@kernel.org>
CC: Steve Capper <steve.capper@arm.com>
CC: Richard Fontana <rfontana@redhat.com>
CC: James Morse <james.morse@arm.com>
CC: Mark Rutland <mark.rutland@arm.com>
CC: Thomas Gleixner <tglx@linutronix.de>
CC: Josh Poimboeuf <jpoimboe@redhat.com>
CC: Ingo Molnar <mingo@kernel.org>
CC: "Peter Zijlstra (Intel)" <peterz@infradead.org>
CC: Nicholas Piggin <npiggin@gmail.com>
CC: Daniel Lezcano <daniel.lezcano@linaro.org>
CC: Jiri Kosina <jkosina@suse.cz>
CC: Pavankumar Kondeti <pkondeti@codeaurora.org>
CC: Zhenzhong Duan <zhenzhong.duan@oracle.com>
CC: linux-arm-kernel@lists.infradead.org
CC: linux-kernel@vger.kernel.org
---
 arch/arm64/kernel/hibernate.c | 13 +++++--------
 include/linux/cpu.h           |  1 +
 kernel/cpu.c                  | 24 ++++++++++++++++++++++++
 3 files changed, 30 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index 590963c9c609..5b73e92c99e3 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -166,14 +166,11 @@ int arch_hibernation_header_restore(void *addr)
 		sleep_cpu = -EINVAL;
 		return -EINVAL;
 	}
-	if (!cpu_online(sleep_cpu)) {
-		pr_info("Hibernated on a CPU that is offline! Bringing CPU up.\n");
-		ret = cpu_up(sleep_cpu);
-		if (ret) {
-			pr_err("Failed to bring hibernate-CPU up!\n");
-			sleep_cpu = -EINVAL;
-			return ret;
-		}
+
+	ret = bringup_hibernate_cpu(sleep_cpu);
+	if (ret) {
+		sleep_cpu = -EINVAL;
+		return ret;
 	}
 
 	resume_hdr = *hdr;
diff --git a/include/linux/cpu.h b/include/linux/cpu.h
index 64a246e9c8db..aebe8186cb07 100644
--- a/include/linux/cpu.h
+++ b/include/linux/cpu.h
@@ -93,6 +93,7 @@ int add_cpu(unsigned int cpu);
 void notify_cpu_starting(unsigned int cpu);
 extern void cpu_maps_update_begin(void);
 extern void cpu_maps_update_done(void);
+extern int bringup_hibernate_cpu(unsigned int sleep_cpu);
 
 #else	/* CONFIG_SMP */
 #define cpuhp_tasks_frozen	0
diff --git a/kernel/cpu.c b/kernel/cpu.c
index 03c727195b65..bf39c5bfb6d9 100644
--- a/kernel/cpu.c
+++ b/kernel/cpu.c
@@ -1275,6 +1275,30 @@ int add_cpu(unsigned int cpu)
 }
 EXPORT_SYMBOL_GPL(add_cpu);
 
+/**
+ * bringup_hibernate_cpu - Bring up the CPU that we hibernated on
+ * @sleep_cpu: The cpu we hibernated on and should be brought up.
+ *
+ * On some archs like arm64, we can hibernate on any CPU, but on wake up the
+ * CPU we hibernated on might be offline as a side effect of using maxcpus= for
+ * example.
+ */
+int bringup_hibernate_cpu(unsigned int sleep_cpu)
+{
+	int ret;
+
+	if (!cpu_online(sleep_cpu)) {
+		pr_info("Hibernated on a CPU that is offline! Bringing CPU up.\n");
+		ret = cpu_up(sleep_cpu);
+		if (ret) {
+			pr_err("Failed to bring hibernate-CPU up!\n");
+			return ret;
+		}
+	}
+
+	return 0;
+}
+
 #ifdef CONFIG_PM_SLEEP_SMP
 static cpumask_var_t frozen_cpus;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
