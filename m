Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 225499AE90
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 13:59:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=48pd9N3487etAUz5R/2BThQzW/45q7iC/Vj9O86nL3o=; b=X1DaITTTfCzmb6JfSEzj2Rb+Re
	GHMFzJ2whXeGpDt2951ecLPmcoWuLSv51aRcUOHXAVk5ZSu1z+06A56aUG4SxFr1NGYoOACdi4akq
	NMADs/ffE6oNr/KK3y3XidYt9AFx7VQO3kDeEyXnUDTzMkCAlUhFe8AgqKpxwIGQg85zbPZRYJpdd
	7XdWxt+YEuaGIRAb0ZmkcDANxrqAET5RfuSjLsxZb9Nl1yad0c/CZvTUkP5IEMRVARDpJaEHqbf3F
	hmg2R3T7kFYx0eYYW8lrQ3CxdebQ4QnY+9JEhF7ivkJ7vwiJq51kdycPt45UpA2tihDi9cKu3HmKv
	jQ9QeKzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i18Dw-0002Zv-Ib; Fri, 23 Aug 2019 11:59:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i18D8-0001iU-QA
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 11:58:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 37C0415AB;
 Fri, 23 Aug 2019 04:58:30 -0700 (PDT)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9DEAC3F246;
 Fri, 23 Aug 2019 04:58:28 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org
Subject: [RFC PATCH 4/7] smp: address races of starting CPUs while stopping
Date: Fri, 23 Aug 2019 12:57:17 +0100
Message-Id: <20190823115720.605-5-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190823115720.605-1-cristian.marussi@arm.com>
References: <20190823115720.605-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_045830_979316_7D7B4F7A 
X-CRM114-Status: GOOD (  14.70  )
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
Cc: linux-arch@vger.kernel.org, mark.rutland@arm.com, peterz@infradead.org,
 catalin.marinas@arm.com, takahiro.akashi@linaro.org, james.morse@arm.com,
 hidehiro.kawai.ez@hitachi.com, tglx@linutronix.de, will@kernel.org,
 dave.martin@arm.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add to SMP stop common code a best-effort retry logic, re-issuing a stop
request when any CPU is detected to be still online after the first
stop request cycle has completed.

Address the case in which some CPUs could be still starting up when the
stop process is started, remaining so undetected and coming fully online
only after the SMP stop procedure was already started: such officially
still offline CPUs would be missed by an ongoing stop procedure.
(not considering here the special case of stuck CPUs)

Using here a best effort approach, though, it is not anyway guaranteed
to be able to stop any CPU that happened to finally come online after
the whole SMP stop retry cycle has completed.
(i.e. the race-window is reduced but not eliminated)

Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
A more deterministic approach has been also attempted in order to catch
any concurrently starting CPUs at the very last moment and make them
kill themselves by:

- adding a new set_cpus_stopping() in cpumask.h used to set a
  __cpus_stopping atomic internal flag

- modifying set_cpu_online() to check on __cpus_stopping only when
  coming online, and force the offending CPU to kill itself in that case

Anyway it has proved tricky and complex (beside faulty) to implement the
above 'kill-myself' phase in a reliable way while remaining architecture
agnostic and still distingushing properly regular stops from crash kexec.

So given that the main idea underlying this patch series was instead of
simplifying and unifying code and the residual races not caught by the
best-effort logic seemed not very likely, this more deterministic approach
has been dropped in favour of the best effort retry logic.
---
 kernel/smp.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/kernel/smp.c b/kernel/smp.c
index ea8a1cc0ec3e..10d3120494f2 100644
--- a/kernel/smp.c
+++ b/kernel/smp.c
@@ -847,6 +847,8 @@ void __weak arch_smp_crash_call(cpumask_t *cpus)
 #define	REASON_STOP	1
 #define	REASON_CRASH	2
 
+#define	MAX_STOP_RETRIES	2
+
 /*
  * This centralizes the common logic to:
  *
@@ -860,7 +862,7 @@ void __weak arch_smp_crash_call(cpumask_t *cpus)
  */
 static inline void __smp_send_stop_all(bool reason_crash)
 {
-	unsigned int this_cpu_id;
+	unsigned int this_cpu_id, retries = MAX_STOP_RETRIES;
 	cpumask_t mask;
 	static atomic_t stopping;
 	int was_reason;
@@ -894,7 +896,7 @@ static inline void __smp_send_stop_all(bool reason_crash)
 			arch_smp_cpu_park();
 		}
 	}
-	if (any_other_cpus_online(&mask, this_cpu_id)) {
+	while (retries-- && any_other_cpus_online(&mask, this_cpu_id)) {
 		unsigned long timeout;
 		unsigned int this_cpu_online = cpu_online(this_cpu_id);
 
@@ -921,9 +923,12 @@ static inline void __smp_send_stop_all(bool reason_crash)
 			udelay(1);
 		/* ensure any stopping-CPUs memory access is made visible */
 		smp_rmb();
-		if (num_online_cpus() > this_cpu_online)
+		if (num_online_cpus() > this_cpu_online) {
 			pr_warn("failed to stop secondary CPUs %*pbl\n",
 				cpumask_pr_args(cpu_online_mask));
+			if (retries)
+				pr_warn("Retrying SMP stop call...\n");
+		}
 	}
 	/* Perform final (possibly arch-specific) work on this CPU */
 	arch_smp_cpus_stop_complete();
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
