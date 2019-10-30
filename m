Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6218AE9F4B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 16:42:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PHvKN1SI7FmoN1Fhw4/wBsUbMIY7CXwt9INMr7oJ4dM=; b=fvppq4VFrddHXqgBxsjLCqwUsX
	jFrknE3JyWEsLqgZiJvat7VnDFMVqMRVHduD+aCTthRNFooX0wcD/rt19PjBTuPoOYTcS0jCb5HmY
	JGy/s51Lx4tWKlvtoVYOtQOwS8Hj53h82lB2QVB/mX9bmsNMVZ6paD/hc/1RkQs0Y0b7LuKUmfCJ0
	fM1oOilJRX30OrUDA/7OoyuUKN8aqiQ+Kx7LYDuSzMvBuek7pJqLigbAKPBgOpWHsBnYKUrX3kpPi
	tG+FTSR+mhaK4a/cYVKUtcNcC0xH10hdv7bWNaKdtian0hvIy339bfLNO5RIbpX54ewUYDSuozX56
	DTjV2l2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPq6y-0006Zl-5U; Wed, 30 Oct 2019 15:42:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPq6o-0006ZK-AV
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 15:42:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BADFF4F5;
 Wed, 30 Oct 2019 08:42:05 -0700 (PDT)
Received: from e107158-lin.cambridge.arm.com (e107158-lin.cambridge.arm.com
 [10.1.195.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 67D883F6C4;
 Wed, 30 Oct 2019 08:42:03 -0700 (PDT)
From: Qais Yousef <qais.yousef@arm.com>
To: Thomas Gleixner <tglx@linutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 01/12] arm64: hibernate.c: create a new function to handle
 cpu_up(sleep_cpu)
Date: Wed, 30 Oct 2019 15:38:26 +0000
Message-Id: <20191030153837.18107-2-qais.yousef@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191030153837.18107-1-qais.yousef@arm.com>
References: <20191030153837.18107-1-qais.yousef@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_084206_446027_86F76FE2 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-kernel@vger.kernel.org,
 Steve Capper <steve.capper@arm.com>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Pavankumar Kondeti <pkondeti@codeaurora.org>,
 Zhenzhong Duan <zhenzhong.duan@oracle.com>,
 Nicholas Piggin <npiggin@gmail.com>, Ingo Molnar <mingo@kernel.org>,
 Richard Fontana <rfontana@redhat.com>, James Morse <james.morse@arm.com>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Jiri Kosina <jkosina@suse.cz>,
 Will Deacon <will@kernel.org>, Qais Yousef <qais.yousef@arm.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In preparation to make cpu_up/down private - move the user in arm64
hibernate.c to use a new generic function that provides what arm64
needs.

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

AFAICT we can't use device_online() directly here because suspend happens via
cpu_down() not device_offline(). If it is actually safe to use device_online()
then that would be simpler than creating the new function. Although the
operation seems generic enough to me and could benefit another arch user in the
future so the new function makes sense.


 arch/arm64/kernel/hibernate.c | 13 +++++--------
 include/linux/cpu.h           |  1 +
 kernel/cpu.c                  | 14 ++++++++++++++
 3 files changed, 20 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index e0a7fce0e01c..3b178055022f 100644
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
+	ret = hibernation_bringup_sleep_cpu(sleep_cpu);
+	if (ret) {
+		sleep_cpu = -EINVAL;
+		return ret;
 	}
 
 	resume_hdr = *hdr;
diff --git a/include/linux/cpu.h b/include/linux/cpu.h
index 88dc0c653925..3b1fbe192989 100644
--- a/include/linux/cpu.h
+++ b/include/linux/cpu.h
@@ -87,6 +87,7 @@ int cpu_up(unsigned int cpu);
 void notify_cpu_starting(unsigned int cpu);
 extern void cpu_maps_update_begin(void);
 extern void cpu_maps_update_done(void);
+extern int hibernation_bringup_sleep_cpu(unsigned int sleep_cpu);
 
 #else	/* CONFIG_SMP */
 #define cpuhp_tasks_frozen	0
diff --git a/kernel/cpu.c b/kernel/cpu.c
index e1967e9eddc2..219f9033f438 100644
--- a/kernel/cpu.c
+++ b/kernel/cpu.c
@@ -1197,6 +1197,20 @@ int cpu_up(unsigned int cpu)
 }
 EXPORT_SYMBOL_GPL(cpu_up);
 
+int hibernation_bringup_sleep_cpu(unsigned int sleep_cpu)
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
