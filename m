Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A91448667
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 17:02:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=50ECudstayzs2cx8xg88Wi/MSUkzQhGaH4BANkkqpuo=; b=N/L
	UmGtEae6rXuIljp0olW+Pu4n6L+r+aWAKfJMizYRZGe/zqBRtRhDQjJIdl7UY1l8OCP5t23wrrtkr
	J2zsodan8J32efM3YEKMz9KlVnN+KqPALI9yOdLdP7FQZsff2ZRa9iengp3NrMoXuhd1ab4pXyKPC
	vmsTOagBydW3x0Yuaw5ovOPhmTJd16TtfgGYu6VNpY0kV8R6BuT81wGk0Ae7Ta0yhC2x03U1Slp8s
	CwXgiMg6UvIbhSURTDIyMITDgzU637juVtEBvCi7UwNKK60VHtJXSj/QdUkjPt5Pog1EqxYu23mM5
	rBhwqk8hG1MhGD7SVoJxIWTSnxIE63w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hct9d-0006KC-Lx; Mon, 17 Jun 2019 15:02:41 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hct8j-0005cP-I4
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 15:01:47 +0000
Received: by mail-wm1-x341.google.com with SMTP id c66so9658170wmf.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 08:01:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=Wqsnkrqxuzj4H7GgqM3V2IbbAn/b8Sl0ywChnZlDzVw=;
 b=rMdY7twpWhnHa4cxiVRG0sqvzqelh8jEW8qKBC9Mh3yio6324k7HmjwwEtXpTvNr2R
 +DFsBk4LHWIuDOoZoyzJCTgdyTygIsC4sdUVAV0qxgi4AMRXiwo8weMPCwLqGJkFVlku
 yaMKp1gJiqKlRPFlNh2gaKeFazEqU/fYwAiafOz36gao+DsYGbEBLFN2p4+AgxOKgoe3
 N+sOGCF4y0CdIDfvSGtFSLeS7kNh2falxhVU2bpft01H2HZWnxsVkgJGhmKQkgihIlOK
 J4vPnksJJNIvaVrpeMy4oNDLffgqqHt+4ikCveP52pi7iuEQQgKmInwtNKyJJANIrgbc
 t6wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Wqsnkrqxuzj4H7GgqM3V2IbbAn/b8Sl0ywChnZlDzVw=;
 b=Jecdm/1bQ7ItzHLsqrt/JPWG2Jts4hgx7cFy4kMGsiJkt2wmiYM8jWwwtQt5Y6y39K
 dl/rwmJpEBQhkPzj5wPLZB51WJQ9ORZlBoxPVrAYDPASwmxPgikLEX2raECaFJ7U4Ivn
 kYi38OSq0FPFCZa45sH8cXLAMVSmPlwoKtSnT+g+/zzsBbxbXUhUyGp/sQLAvYmmg/fC
 h497/E8lcXduKoKH3/D8XIh/IMOrUUlajhv2BTZoI70gZLl5N92kLvPqDjLYtczBSYYY
 9RaivTNZVs4r7G9zTjGLoyZL1BCcYY7BmYAAzS/CaCdUZRuLI1z74qGUSRtOIwqXU/Ok
 JX0g==
X-Gm-Message-State: APjAAAXajM5sFxLJeYoN2Y5YKYwR2T5GmnfHtjJavclTSmgsKMLPOsGM
 bPbwe7rtb2F7YXfWvOI/lkuoYw==
X-Google-Smtp-Source: APXvYqx0Vpq43qQXCS96ZNcRfKpgn1FVlYwTD2lRr7UkryQBhX1Ha0iT13M9dJRgn/4mVsxYWYK73A==
X-Received: by 2002:a1c:407:: with SMTP id 7mr20501193wme.113.1560783702741;
 Mon, 17 Jun 2019 08:01:42 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:f:6020:100d:4d23:a79e:7684])
 by smtp.gmail.com with ESMTPSA id v24sm9045185wmj.26.2019.06.17.08.01.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 17 Jun 2019 08:01:42 -0700 (PDT)
From: Vincent Guittot <vincent.guittot@linaro.org>
To: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux@armlinux.org.uk,
 gregkh@linuxfoundation.org, rafael@kernel.org, viresh.kumar@linaro.org,
 mingo@redhat.com, peterz@infradead.org
Subject: [PATCH] sched/topology: remove unused sd param from
 arch_scale_cpu_capacity()
Date: Mon, 17 Jun 2019 17:00:17 +0200
Message-Id: <1560783617-5827-1-git-send-email-vincent.guittot@linaro.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_080145_641479_7CB7CB0C 
X-CRM114-Status: GOOD (  17.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: quentin.perret@arm.com, Vincent Guittot <vincent.guittot@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

struct sched_domain *sd parameter is not used anymore in
arch_scale_cpu_capacity() so we can remove it.

Signed-off-by: Vincent Guittot <vincent.guittot@linaro.org>
---
 arch/arm/kernel/topology.c       |  2 +-
 drivers/base/arch_topology.c     |  6 +++---
 include/linux/arch_topology.h    |  2 +-
 include/linux/energy_model.h     |  2 +-
 include/linux/sched/topology.h   | 14 +++-----------
 kernel/power/energy_model.c      |  2 +-
 kernel/sched/cpufreq_schedutil.c |  2 +-
 kernel/sched/deadline.c          |  2 +-
 kernel/sched/fair.c              |  6 +++---
 kernel/sched/pelt.c              |  2 +-
 kernel/sched/pelt.h              |  2 +-
 kernel/sched/sched.h             |  2 +-
 kernel/sched/topology.c          |  8 ++++----
 13 files changed, 22 insertions(+), 30 deletions(-)

diff --git a/arch/arm/kernel/topology.c b/arch/arm/kernel/topology.c
index 60e375c..d17cb1e 100644
--- a/arch/arm/kernel/topology.c
+++ b/arch/arm/kernel/topology.c
@@ -169,7 +169,7 @@ static void update_cpu_capacity(unsigned int cpu)
 	topology_set_cpu_scale(cpu, cpu_capacity(cpu) / middle_capacity);
 
 	pr_info("CPU%u: update cpu_capacity %lu\n",
-		cpu, topology_get_cpu_scale(NULL, cpu));
+		cpu, topology_get_cpu_scale(cpu));
 }
 
 #else
diff --git a/drivers/base/arch_topology.c b/drivers/base/arch_topology.c
index 1739d7e..9b09e31 100644
--- a/drivers/base/arch_topology.c
+++ b/drivers/base/arch_topology.c
@@ -43,7 +43,7 @@ static ssize_t cpu_capacity_show(struct device *dev,
 {
 	struct cpu *cpu = container_of(dev, struct cpu, dev);
 
-	return sprintf(buf, "%lu\n", topology_get_cpu_scale(NULL, cpu->dev.id));
+	return sprintf(buf, "%lu\n", topology_get_cpu_scale(cpu->dev.id));
 }
 
 static void update_topology_flags_workfn(struct work_struct *work);
@@ -116,7 +116,7 @@ void topology_normalize_cpu_scale(void)
 			/ capacity_scale;
 		topology_set_cpu_scale(cpu, capacity);
 		pr_debug("cpu_capacity: CPU%d cpu_capacity=%lu\n",
-			cpu, topology_get_cpu_scale(NULL, cpu));
+			cpu, topology_get_cpu_scale(cpu));
 	}
 }
 
@@ -185,7 +185,7 @@ init_cpu_capacity_callback(struct notifier_block *nb,
 	cpumask_andnot(cpus_to_visit, cpus_to_visit, policy->related_cpus);
 
 	for_each_cpu(cpu, policy->related_cpus) {
-		raw_capacity[cpu] = topology_get_cpu_scale(NULL, cpu) *
+		raw_capacity[cpu] = topology_get_cpu_scale(cpu) *
 				    policy->cpuinfo.max_freq / 1000UL;
 		capacity_scale = max(raw_capacity[cpu], capacity_scale);
 	}
diff --git a/include/linux/arch_topology.h b/include/linux/arch_topology.h
index d9bdc1a..1cfe05e 100644
--- a/include/linux/arch_topology.h
+++ b/include/linux/arch_topology.h
@@ -18,7 +18,7 @@ DECLARE_PER_CPU(unsigned long, cpu_scale);
 
 struct sched_domain;
 static inline
-unsigned long topology_get_cpu_scale(struct sched_domain *sd, int cpu)
+unsigned long topology_get_cpu_scale(int cpu)
 {
 	return per_cpu(cpu_scale, cpu);
 }
diff --git a/include/linux/energy_model.h b/include/linux/energy_model.h
index aa027f7..73f8c3c 100644
--- a/include/linux/energy_model.h
+++ b/include/linux/energy_model.h
@@ -89,7 +89,7 @@ static inline unsigned long em_pd_energy(struct em_perf_domain *pd,
 	 * like schedutil.
 	 */
 	cpu = cpumask_first(to_cpumask(pd->cpus));
-	scale_cpu = arch_scale_cpu_capacity(NULL, cpu);
+	scale_cpu = arch_scale_cpu_capacity(cpu);
 	cs = &pd->table[pd->nr_cap_states - 1];
 	freq = map_util_freq(max_util, cs->frequency, scale_cpu);
 
diff --git a/include/linux/sched/topology.h b/include/linux/sched/topology.h
index 53afbe0..e445d37 100644
--- a/include/linux/sched/topology.h
+++ b/include/linux/sched/topology.h
@@ -196,14 +196,6 @@ extern void set_sched_topology(struct sched_domain_topology_level *tl);
 # define SD_INIT_NAME(type)
 #endif
 
-#ifndef arch_scale_cpu_capacity
-static __always_inline
-unsigned long arch_scale_cpu_capacity(struct sched_domain *sd, int cpu)
-{
-	return SCHED_CAPACITY_SCALE;
-}
-#endif
-
 #else /* CONFIG_SMP */
 
 struct sched_domain_attr;
@@ -219,16 +211,16 @@ static inline bool cpus_share_cache(int this_cpu, int that_cpu)
 	return true;
 }
 
+#endif	/* !CONFIG_SMP */
+
 #ifndef arch_scale_cpu_capacity
 static __always_inline
-unsigned long arch_scale_cpu_capacity(void __always_unused *sd, int cpu)
+unsigned long arch_scale_cpu_capacity(int cpu)
 {
 	return SCHED_CAPACITY_SCALE;
 }
 #endif
 
-#endif	/* !CONFIG_SMP */
-
 static inline int task_node(const struct task_struct *p)
 {
 	return cpu_to_node(task_cpu(p));
diff --git a/kernel/power/energy_model.c b/kernel/power/energy_model.c
index 7d66ee6..0a9326f 100644
--- a/kernel/power/energy_model.c
+++ b/kernel/power/energy_model.c
@@ -223,7 +223,7 @@ int em_register_perf_domain(cpumask_t *span, unsigned int nr_states,
 		 * All CPUs of a domain must have the same micro-architecture
 		 * since they all share the same table.
 		 */
-		cap = arch_scale_cpu_capacity(NULL, cpu);
+		cap = arch_scale_cpu_capacity(cpu);
 		if (prev_cap && prev_cap != cap) {
 			pr_err("CPUs of %*pbl must have the same capacity\n",
 							cpumask_pr_args(span));
diff --git a/kernel/sched/cpufreq_schedutil.c b/kernel/sched/cpufreq_schedutil.c
index 962cf343..7c4ce69 100644
--- a/kernel/sched/cpufreq_schedutil.c
+++ b/kernel/sched/cpufreq_schedutil.c
@@ -276,7 +276,7 @@ static unsigned long sugov_get_util(struct sugov_cpu *sg_cpu)
 {
 	struct rq *rq = cpu_rq(sg_cpu->cpu);
 	unsigned long util = cpu_util_cfs(rq);
-	unsigned long max = arch_scale_cpu_capacity(NULL, sg_cpu->cpu);
+	unsigned long max = arch_scale_cpu_capacity(sg_cpu->cpu);
 
 	sg_cpu->max = max;
 	sg_cpu->bw_dl = cpu_bw_dl(rq);
diff --git a/kernel/sched/deadline.c b/kernel/sched/deadline.c
index c1ef308..8b5bb2a 100644
--- a/kernel/sched/deadline.c
+++ b/kernel/sched/deadline.c
@@ -1195,7 +1195,7 @@ static void update_curr_dl(struct rq *rq)
 						 &curr->dl);
 	} else {
 		unsigned long scale_freq = arch_scale_freq_capacity(cpu);
-		unsigned long scale_cpu = arch_scale_cpu_capacity(NULL, cpu);
+		unsigned long scale_cpu = arch_scale_cpu_capacity(cpu);
 
 		scaled_delta_exec = cap_scale(delta_exec, scale_freq);
 		scaled_delta_exec = cap_scale(scaled_delta_exec, scale_cpu);
diff --git a/kernel/sched/fair.c b/kernel/sched/fair.c
index 7f8d477..1c151a7 100644
--- a/kernel/sched/fair.c
+++ b/kernel/sched/fair.c
@@ -764,7 +764,7 @@ void post_init_entity_util_avg(struct task_struct *p)
 	struct sched_entity *se = &p->se;
 	struct cfs_rq *cfs_rq = cfs_rq_of(se);
 	struct sched_avg *sa = &se->avg;
-	long cpu_scale = arch_scale_cpu_capacity(NULL, cpu_of(rq_of(cfs_rq)));
+	long cpu_scale = arch_scale_cpu_capacity(cpu_of(rq_of(cfs_rq)));
 	long cap = (long)(cpu_scale - cfs_rq->avg.util_avg) / 2;
 
 	if (cap > 0) {
@@ -7633,7 +7633,7 @@ static inline void init_sd_lb_stats(struct sd_lb_stats *sds)
 static unsigned long scale_rt_capacity(struct sched_domain *sd, int cpu)
 {
 	struct rq *rq = cpu_rq(cpu);
-	unsigned long max = arch_scale_cpu_capacity(sd, cpu);
+	unsigned long max = arch_scale_cpu_capacity(cpu);
 	unsigned long used, free;
 	unsigned long irq;
 
@@ -7658,7 +7658,7 @@ static void update_cpu_capacity(struct sched_domain *sd, int cpu)
 	unsigned long capacity = scale_rt_capacity(sd, cpu);
 	struct sched_group *sdg = sd->groups;
 
-	cpu_rq(cpu)->cpu_capacity_orig = arch_scale_cpu_capacity(sd, cpu);
+	cpu_rq(cpu)->cpu_capacity_orig = arch_scale_cpu_capacity(cpu);
 
 	if (!capacity)
 		capacity = 1;
diff --git a/kernel/sched/pelt.c b/kernel/sched/pelt.c
index befce29..42ea66b 100644
--- a/kernel/sched/pelt.c
+++ b/kernel/sched/pelt.c
@@ -366,7 +366,7 @@ int update_irq_load_avg(struct rq *rq, u64 running)
 	 * reflect the real amount of computation
 	 */
 	running = cap_scale(running, arch_scale_freq_capacity(cpu_of(rq)));
-	running = cap_scale(running, arch_scale_cpu_capacity(NULL, cpu_of(rq)));
+	running = cap_scale(running, arch_scale_cpu_capacity(cpu_of(rq)));
 
 	/*
 	 * We know the time that has been used by interrupt since last update
diff --git a/kernel/sched/pelt.h b/kernel/sched/pelt.h
index 7489d5f..afff644 100644
--- a/kernel/sched/pelt.h
+++ b/kernel/sched/pelt.h
@@ -79,7 +79,7 @@ static inline void update_rq_clock_pelt(struct rq *rq, s64 delta)
 	 * Scale the elapsed time to reflect the real amount of
 	 * computation
 	 */
-	delta = cap_scale(delta, arch_scale_cpu_capacity(NULL, cpu_of(rq)));
+	delta = cap_scale(delta, arch_scale_cpu_capacity(cpu_of(rq)));
 	delta = cap_scale(delta, arch_scale_freq_capacity(cpu_of(rq)));
 
 	rq->clock_pelt += delta;
diff --git a/kernel/sched/sched.h b/kernel/sched/sched.h
index 607859a..7a50391 100644
--- a/kernel/sched/sched.h
+++ b/kernel/sched/sched.h
@@ -2248,7 +2248,7 @@ unsigned long schedutil_freq_util(int cpu, unsigned long util_cfs,
 
 static inline unsigned long schedutil_energy_util(int cpu, unsigned long cfs)
 {
-	unsigned long max = arch_scale_cpu_capacity(NULL, cpu);
+	unsigned long max = arch_scale_cpu_capacity(cpu);
 
 	return schedutil_freq_util(cpu, cfs, max, ENERGY_UTIL);
 }
diff --git a/kernel/sched/topology.c b/kernel/sched/topology.c
index 63184cf..f751ce0 100644
--- a/kernel/sched/topology.c
+++ b/kernel/sched/topology.c
@@ -1874,10 +1874,10 @@ static struct sched_domain_topology_level
 	unsigned long cap;
 
 	/* Is there any asymmetry? */
-	cap = arch_scale_cpu_capacity(NULL, cpumask_first(cpu_map));
+	cap = arch_scale_cpu_capacity(cpumask_first(cpu_map));
 
 	for_each_cpu(i, cpu_map) {
-		if (arch_scale_cpu_capacity(NULL, i) != cap) {
+		if (arch_scale_cpu_capacity(i) != cap) {
 			asym = true;
 			break;
 		}
@@ -1892,7 +1892,7 @@ static struct sched_domain_topology_level
 	 * to everyone.
 	 */
 	for_each_cpu(i, cpu_map) {
-		unsigned long max_capacity = arch_scale_cpu_capacity(NULL, i);
+		unsigned long max_capacity = arch_scale_cpu_capacity(i);
 		int tl_id = 0;
 
 		for_each_sd_topology(tl) {
@@ -1902,7 +1902,7 @@ static struct sched_domain_topology_level
 			for_each_cpu_and(j, tl->mask(i), cpu_map) {
 				unsigned long capacity;
 
-				capacity = arch_scale_cpu_capacity(NULL, j);
+				capacity = arch_scale_cpu_capacity(j);
 
 				if (capacity <= max_capacity)
 					continue;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
