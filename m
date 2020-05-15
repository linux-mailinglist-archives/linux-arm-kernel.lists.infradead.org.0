Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA0B1D56EB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 18:58:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+mdrRa757WNsirGuK4vHsK9We/OH5z+4R9EY+R1nwRQ=; b=MyVqC3q1NscjAh
	2PIbrAIttlIELftux66DorPzOT858WCbRjCaKQ58WdK02HTPlF3IEKYJ4y3KmLMkUHT+aE+2ZDNa3
	Ff54LjIPl8Nl+IRn73q4F08aqnFca8bxl3ZnGeRsWks2jXW6Jek5BjB4pTeaqAH0JWaa7cBLjWkzJ
	zUmfI5GXV8Qjj6SRs4saqsmAIzAqkCe6envMykNGf2A2jU8NZ3qh9zk+f2u0PL9EW1jwlAw7ea3gI
	RDzgd+fLYbq+7UETH5VSBNDE3U9ZqYsQEr2ihU6z3jvJCnCBgEBw/D/nVNWO/vG6J9WLPePzyfIce
	PX1QYcjAfTlNXdNCe1Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZdfc-0005Ie-2t; Fri, 15 May 2020 16:58:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZdeu-0004sI-Hv
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 16:58:06 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 272412073E;
 Fri, 15 May 2020 16:58:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589561884;
 bh=WyzQ92ApewIu4RHvp2WXU8VIKb29Z5HwrMixhKJyzeo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=LLvAaYdIIa038jexo8NsziT2hNt4ezFnW1s7SbDhdgbkMIvqzR5+Bvp344d53SwIq
 NUJnawybcvFTmcRS95ffIr/UOR6Y8EMVipN3OfPFXFnt01Hk2JFDMiU6Wna69KmZyq
 nQU58ZQido6x5Ff3xfF0/uD2hXMVN/AnjEE61QvE=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jZdes-00Cdec-HO; Fri, 15 May 2020 17:58:02 +0100
From: Marc Zyngier <maz@kernel.org>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 2/2] irqchip/gic-v3-its: Balance initial LPI affinity
 across CPUs
Date: Fri, 15 May 2020 17:57:52 +0100
Message-Id: <20200515165752.121296-3-maz@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200515165752.121296-1-maz@kernel.org>
References: <20200515165752.121296-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, john.garry@huawei.com,
 chenxiang66@hisilicon.com, wangzhou1@hisilicon.com, ming.lei@redhat.com,
 jason@lakedaemon.net, tglx@linutronix.de, kernel-team@android.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_095804_628599_0119347E 
X-CRM114-Status: GOOD (  21.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Jason Cooper <jason@lakedaemon.net>, chenxiang <chenxiang66@hisilicon.com>,
 John Garry <john.garry@huawei.com>, Ming Lei <ming.lei@redhat.com>,
 Zhou Wang <wangzhou1@hisilicon.com>, Thomas Gleixner <tglx@linutronix.de>,
 kernel-team@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When mapping a LPI, the ITS driver picks the first possible
affinity, which is in most cases CPU0, assuming that if
that's not suitable, someone will come and set the affinity
to something more interesting.

It apparently isn't the case, and people complain of poor
performance when many interrupts are glued to the same CPU.
So let's place the interrupts by finding the "least loaded"
CPU (that is, the one that has the fewer LPIs mapped to it).
So called 'managed' interrupts are an interesting case where
the affinity is actually dictated by the kernel itself, and
we should honor this.

Reported-by: John Garry <john.garry@huawei.com>
Link: https://lore.kernel.org/r/1575642904-58295-1-git-send-email-john.garry@huawei.com
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 drivers/irqchip/irq-gic-v3-its.c | 127 ++++++++++++++++++++++++-------
 1 file changed, 100 insertions(+), 27 deletions(-)

diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
index 4eb8441d0c2b..2aaf1e6bdc89 100644
--- a/drivers/irqchip/irq-gic-v3-its.c
+++ b/drivers/irqchip/irq-gic-v3-its.c
@@ -1541,15 +1541,104 @@ static void its_dec_lpi_count(struct irq_data *d, int cpu)
 		atomic_dec(&per_cpu_ptr(&cpu_lpi_count, cpu)->unmanaged);
 }
 
+static unsigned int cpumask_pick_least_loaded(struct irq_data *d,
+					      const struct cpumask *cpu_mask)
+{
+	unsigned int cpu = nr_cpu_ids, tmp;
+	int count = S32_MAX;
+
+	for_each_cpu(tmp, cpu_mask) {
+		int this_count = its_read_lpi_count(d, tmp);
+		if (this_count < count) {
+			cpu = tmp;
+		        count = this_count;
+		}
+	}
+
+	return cpu;
+}
+
+/*
+ * As suggested by Thomas Gleixner in:
+ * https://lore.kernel.org/r/87h80q2aoc.fsf@nanos.tec.linutronix.de
+ */
+static int its_select_cpu(struct irq_data *d,
+			  const struct cpumask *aff_mask)
+{
+	struct its_device *its_dev = irq_data_get_irq_chip_data(d);
+	cpumask_var_t tmpmask;
+	int cpu, node;
+
+	if (!alloc_cpumask_var(&tmpmask, GFP_KERNEL))
+		return -ENOMEM;
+
+	node = its_dev->its->numa_node;
+
+	if (!irqd_affinity_is_managed(d)) {
+		/* First try the NUMA node */
+		if (node != NUMA_NO_NODE) {
+			/*
+			 * Try the intersection of the affinity mask and the
+			 * node mask (and the online mask, just to be safe).
+			 */
+			cpumask_and(tmpmask, cpumask_of_node(node), aff_mask);
+			cpumask_and(tmpmask, tmpmask, cpu_online_mask);
+
+			/*
+			 * Ideally, we would check if the mask is empty, and
+			 * try again on the full node here.
+			 *
+			 * But it turns out that the way API describes the
+			 * affinity for ITSs only deals about memory, and
+			 * not target CPUs, so it cannot describe a single
+			 * ITS placed next to two NUMA nodes.
+			 *
+			 * Instead, just fallback on the online mask. This
+			 * diverges from Thomas' suggestion above.
+			 */
+			cpu = cpumask_pick_least_loaded(d, tmpmask);
+			if (cpu < nr_cpu_ids)
+				goto out;
+
+			/* If we can't cross sockets, give up */
+			if ((its_dev->its->flags & ITS_FLAGS_WORKAROUND_CAVIUM_23144))
+				goto out;
+
+			/* If the above failed, expand the search */
+		}
+
+		/* Try the intersection of the affinity and online masks */
+		cpumask_and(tmpmask, aff_mask, cpu_online_mask);
+
+		/* If that doesn't fly, the online mask is the last resort */
+		if (cpumask_empty(tmpmask))
+			cpumask_copy(tmpmask, cpu_online_mask);
+
+		cpu = cpumask_pick_least_loaded(d, tmpmask);
+	} else {
+		cpumask_and(tmpmask, irq_data_get_affinity_mask(d), cpu_online_mask);
+
+		/* If we cannot cross sockets, limit the search to that node */
+		if ((its_dev->its->flags & ITS_FLAGS_WORKAROUND_CAVIUM_23144) &&
+		    node != NUMA_NO_NODE)
+			cpumask_and(tmpmask, tmpmask, cpumask_of_node(node));
+
+		cpu = cpumask_pick_least_loaded(d, tmpmask);
+	}
+out:
+	free_cpumask_var(tmpmask);
+
+	pr_debug("IRQ%d -> %*pbl CPU%d\n", d->irq, cpumask_pr_args(aff_mask), cpu);
+	return cpu;
+}
+
 static int its_set_affinity(struct irq_data *d, const struct cpumask *mask_val,
 			    bool force)
 {
-	unsigned int cpu;
-	const struct cpumask *cpu_mask = cpu_online_mask;
 	struct its_device *its_dev = irq_data_get_irq_chip_data(d);
 	struct its_collection *target_col;
 	u32 id = its_get_event_id(d);
-	int prev_cpu;
+	int cpu, prev_cpu;
 
 	/* A forwarded interrupt should use irq_set_vcpu_affinity */
 	if (irqd_is_forwarded_to_vcpu(d))
@@ -1558,18 +1647,12 @@ static int its_set_affinity(struct irq_data *d, const struct cpumask *mask_val,
 	prev_cpu = its_dev->event_map.col_map[id];
 	its_dec_lpi_count(d, prev_cpu);
 
-       /* lpi cannot be routed to a redistributor that is on a foreign node */
-	if (its_dev->its->flags & ITS_FLAGS_WORKAROUND_CAVIUM_23144) {
-		if (its_dev->its->numa_node >= 0) {
-			cpu_mask = cpumask_of_node(its_dev->its->numa_node);
-			if (!cpumask_intersects(mask_val, cpu_mask))
-				goto err;
-		}
-	}
-
-	cpu = cpumask_any_and(mask_val, cpu_mask);
+	if (!force)
+		cpu = its_select_cpu(d, mask_val);
+	else
+		cpu = cpumask_pick_least_loaded(d, mask_val);
 
-	if (cpu >= nr_cpu_ids)
+	if (cpu < 0 || cpu >= nr_cpu_ids)
 		goto err;
 
 	/* don't set the affinity when the target cpu is same as current one */
@@ -3473,21 +3556,11 @@ static int its_irq_domain_activate(struct irq_domain *domain,
 {
 	struct its_device *its_dev = irq_data_get_irq_chip_data(d);
 	u32 event = its_get_event_id(d);
-	const struct cpumask *cpu_mask = cpu_online_mask;
 	int cpu;
 
-	/* get the cpu_mask of local node */
-	if (its_dev->its->numa_node >= 0)
-		cpu_mask = cpumask_of_node(its_dev->its->numa_node);
-
-	/* Bind the LPI to the first possible CPU */
-	cpu = cpumask_first_and(cpu_mask, cpu_online_mask);
-	if (cpu >= nr_cpu_ids) {
-		if (its_dev->its->flags & ITS_FLAGS_WORKAROUND_CAVIUM_23144)
-			return -EINVAL;
-
-		cpu = cpumask_first(cpu_online_mask);
-	}
+	cpu = its_select_cpu(d, cpu_online_mask);
+	if (cpu < 0 || cpu >= nr_cpu_ids)
+		return -EINVAL;
 
 	its_inc_lpi_count(d, cpu);
 	its_dev->event_map.col_map[event] = cpu;
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
