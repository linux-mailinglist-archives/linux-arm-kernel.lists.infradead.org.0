Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C91F186A72
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 12:55:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C+KMuBMSxD+eo99iR5Qir/giYEoUNubsfMrBPtKHhkw=; b=bxe9yLiwVS4oRo
	lpEPbMv2K6AmI9m5/gmFx8i++rin6+++IQdQPlK2fg6XVCxiEIyeKktQSbPNGT1pSQ8A3Ed1LEveI
	z4Li51sv1KbfFOgW9b3rfptgU7otwuQz+c/J5exYpfiuXK4wYOMxagWmUmEvGZJiZ+1TPMZ0qjfUa
	jGXmJKVmsAf60wcuMwejnNpEoCRgq80E83JeYnaHMiprr0hFgh5smv1PpCcnbiUtFI1Qu7vjhFuA0
	PlcRIK/AzZQ9HjmzOSqda+JZVb1AJJFiHW3u3qMLh6ju4VtWGTAGYces3320cWUhmQbkLqx+v4glA
	o4VavG2EgHBu0Nj7Q71A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDoKy-0007Bu-3p; Mon, 16 Mar 2020 11:55:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDoKX-00074c-KH
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 11:54:50 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 22EB720658;
 Mon, 16 Mar 2020 11:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584359689;
 bh=NfI3BjyZqVwwcNacOp4j+tGpjFbDZD6NEsPfxkTzkwY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=p3i7qJ13JPDAH0/GwCgIZgYbxdEf7Hdpka8RFgsc777HhcNa+JHbxRKtjLa0ZMNBr
 MRI28OMFcagjEEAsAyVwiJ8nUHCdH5tlTIN9xzCwu7ZKaXPvqwPtJWZcTyrDSdRmpl
 lQ+JOg7dJFhoGLDDDhHgJA2R4/AqJiijEkpSfcLw=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jDoKV-00D45x-E6; Mon, 16 Mar 2020 11:54:47 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 1/2] irqchip/gic-v3-its: Track LPI distribution on a per
 CPU basis
Date: Mon, 16 Mar 2020 11:54:32 +0000
Message-Id: <20200316115433.9017-2-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200316115433.9017-1-maz@kernel.org>
References: <20200316115433.9017-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, john.garry@huawei.com,
 chenxiang66@hisilicon.com, wangzhou1@hisilicon.com, ming.lei@redhat.com,
 jason@lakedaemon.net, tglx@linutronix.de
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_045449_702463_C7C65D3C 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Zhou Wang <wangzhou1@hisilicon.com>, Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to improve the distribution of LPIs among CPUs, let start by
tracking the number of LPIs assigned to CPUs, both for managed and
non-managed interrupts (as separate counters).

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 drivers/irqchip/irq-gic-v3-its.c | 35 ++++++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
index 34e5a06ec874..941786e1e8f7 100644
--- a/drivers/irqchip/irq-gic-v3-its.c
+++ b/drivers/irqchip/irq-gic-v3-its.c
@@ -173,6 +173,13 @@ static struct {
 	int			next_victim;
 } vpe_proxy;
 
+struct cpu_lpi_count {
+	atomic_t	managed;
+	atomic_t	unmanaged;
+};
+
+static DEFINE_PER_CPU(struct cpu_lpi_count, cpu_lpi_count);
+
 static LIST_HEAD(its_nodes);
 static DEFINE_RAW_SPINLOCK(its_lock);
 static struct rdists *gic_rdists;
@@ -1500,6 +1507,30 @@ static void its_unmask_irq(struct irq_data *d)
 	lpi_update_config(d, 0, LPI_PROP_ENABLED);
 }
 
+static u32 its_read_lpi_count(struct irq_data *d, int cpu)
+{
+	if (irqd_affinity_is_managed(d))
+		return atomic_read(&per_cpu_ptr(&cpu_lpi_count, cpu)->managed);
+
+	return atomic_read(&per_cpu_ptr(&cpu_lpi_count, cpu)->unmanaged);
+}
+
+static void its_inc_lpi_count(struct irq_data *d, int cpu)
+{
+	if (irqd_affinity_is_managed(d))
+		atomic_inc(&per_cpu_ptr(&cpu_lpi_count, cpu)->managed);
+	else
+		atomic_inc(&per_cpu_ptr(&cpu_lpi_count, cpu)->unmanaged);
+}
+
+static void its_dec_lpi_count(struct irq_data *d, int cpu)
+{
+	if (irqd_affinity_is_managed(d))
+		atomic_dec(&per_cpu_ptr(&cpu_lpi_count, cpu)->managed);
+	else
+		atomic_dec(&per_cpu_ptr(&cpu_lpi_count, cpu)->unmanaged);
+}
+
 static int its_set_affinity(struct irq_data *d, const struct cpumask *mask_val,
 			    bool force)
 {
@@ -1529,6 +1560,8 @@ static int its_set_affinity(struct irq_data *d, const struct cpumask *mask_val,
 
 	/* don't set the affinity when the target cpu is same as current one */
 	if (cpu != its_dev->event_map.col_map[id]) {
+		its_inc_lpi_count(d, cpu);
+		its_dec_lpi_count(d, its_dev->event_map.col_map[id]);
 		target_col = &its_dev->its->collections[cpu];
 		its_send_movi(its_dev, target_col, id);
 		its_dev->event_map.col_map[id] = cpu;
@@ -3438,6 +3471,7 @@ static int its_irq_domain_activate(struct irq_domain *domain,
 		cpu = cpumask_first(cpu_online_mask);
 	}
 
+	its_inc_lpi_count(d, cpu);
 	its_dev->event_map.col_map[event] = cpu;
 	irq_data_update_effective_affinity(d, cpumask_of(cpu));
 
@@ -3452,6 +3486,7 @@ static void its_irq_domain_deactivate(struct irq_domain *domain,
 	struct its_device *its_dev = irq_data_get_irq_chip_data(d);
 	u32 event = its_get_event_id(d);
 
+	its_dec_lpi_count(d, its_dev->event_map.col_map[event]);
 	/* Stop the delivery of interrupts */
 	its_send_discard(its_dev, event);
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
