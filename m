Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D251250A2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 19:28:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bPhR+A1QWbXz22wu+88UCBty+QeclJpP/s1exBuJIUk=; b=i8CNEzxAla6BVaEXqZ8KmvinQI
	zdAp6o7L+rlRHSwGQL7HpmS5U7qjJS1oa4Tjlmp6MMHBY6WdKztsJHxOWV58ntd+YaHquAgheWBMl
	5F0T+ffvueT0aXJCDpmbtoyv34INbgiinsc1T51CWJwD3QF2KLE6LPVl+BvzhMu8/bKt8XBjB0lJM
	EplidWsmRf0PwsTvSwv1yVJjYLtdgC0r2/oLajkh4bEmxcnzG5qZBUsDx+aUL9EfR0MPJ7WGhVBfM
	9A6F0sxWvSwjuinXEAShhQjG2u2FnInBaxVfgDZf+7pLismkR3oQ2pRcAZpD4H23Urp+rLvXGMgqp
	Vl50ryvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihe3O-0008Qq-RA; Wed, 18 Dec 2019 18:28:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihe2d-0007yY-HP
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 18:27:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9863931B;
 Wed, 18 Dec 2019 10:27:22 -0800 (PST)
Received: from e108754-lin.cambridge.arm.com (unknown [10.1.198.81])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 9DE453F67D;
 Wed, 18 Dec 2019 10:27:20 -0800 (PST)
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: catalin.marinas@arm.com, will@kernel.org, mark.rutland@arm.com,
 maz@kernel.org, suzuki.poulose@arm.com, sudeep.holla@arm.com,
 dietmar.eggemann@arm.com, ionela.voinescu@arm.com
Subject: [PATCH v2 5/6] TEMP: sched: add interface for counter-based frequency
 invariance
Date: Wed, 18 Dec 2019 18:26:06 +0000
Message-Id: <20191218182607.21607-6-ionela.voinescu@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191218182607.21607-1-ionela.voinescu@arm.com>
References: <20191218182607.21607-1-ionela.voinescu@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_102723_692977_DDA25EB3 
X-CRM114-Status: GOOD (  10.50  )
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
Cc: Juri Lelli <juri.lelli@redhat.com>, linux-doc@vger.kernel.org,
 peterz@infradead.org, linux-kernel@vger.kernel.org, mingo@redhat.com,
 ggherdovich@suse.cz, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To be noted that this patch is a temporary one. It introduces the
interface added by the patches at [1] to allow update of the frequency
invariance scale factor based on counters. If [1] is merged there is
not need for this patch.

For platforms that support counters (x86 - APERF/MPERF, arm64 - AMU
counters) the frequency invariance correction factor can be obtained
using a core counter and a fixed counter to get information on the
performance (frequency based only) obtained in a period of time. This
will more accurately reflect the actual current frequency of the CPU,
compared with the alternative implementation that reflects the request
of a performance level from the OS through the cpufreq framework
(arch_set_freq_scale).

Therefore, introduce an interface - arch_scale_freq_tick, to be
implemented by each architecture and called for each CPU on the tick
to update the scale factor based on the delta in the counter values,
if counter support is present on the CPU.

Either because reading counters is expensive or because reading
counters from remote CPUs is not possible or is expensive, only
update the counter based frequency scale factor on the tick for
now. A tick based update will definitely be necessary either due to
it being the only point of update for certain architectures or in
order to cache the counter values for a particular CPU, if a
further update from that CPU is not possible.

[1]
https://lore.kernel.org/lkml/20191113124654.18122-1-ggherdovich@suse.cz/

Suggested-by: Peter Zijlstra <peterz@infradead.org>
Suggested-by: Giovanni Gherdovich <ggherdovich@suse.cz>
Signed-off-by: Ionela Voinescu <ionela.voinescu@arm.com>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Juri Lelli <juri.lelli@redhat.com>
Cc: Vincent Guittot <vincent.guittot@linaro.org>
Cc: Dietmar Eggemann <dietmar.eggemann@arm.com>
---
 kernel/sched/core.c  | 1 +
 kernel/sched/sched.h | 7 +++++++
 2 files changed, 8 insertions(+)

diff --git a/kernel/sched/core.c b/kernel/sched/core.c
index 90e4b00ace89..e0b70b9fb5cc 100644
--- a/kernel/sched/core.c
+++ b/kernel/sched/core.c
@@ -3594,6 +3594,7 @@ void scheduler_tick(void)
 	struct task_struct *curr = rq->curr;
 	struct rq_flags rf;
 
+	arch_scale_freq_tick();
 	sched_clock_tick();
 
 	rq_lock(rq, &rf);
diff --git a/kernel/sched/sched.h b/kernel/sched/sched.h
index 280a3c735935..afdafcf7f9da 100644
--- a/kernel/sched/sched.h
+++ b/kernel/sched/sched.h
@@ -1771,6 +1771,13 @@ static inline void set_next_task(struct rq *rq, struct task_struct *next)
 	next->sched_class->set_next_task(rq, next, false);
 }
 
+#ifndef arch_scale_freq_tick
+static __always_inline
+void arch_scale_freq_tick(void)
+{
+}
+#endif
+
 #ifdef CONFIG_SMP
 #define sched_class_highest (&stop_sched_class)
 #else
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
