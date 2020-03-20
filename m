Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6447418D6F7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 19:26:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AqvwSE9azJRgh37St6A/QASbWfbnRhejdLvGKYOXwn0=; b=BpWrMb7yHJpgTU
	JWw7nR8ms50DCLqNtVnWno96GHsQhtCwUK8rWgBklnd0TbrPW1W1+x3izJTAKmpdDl5vcVeBcir/E
	Lw1wPY73gqCCWUHWTV/IWGIvp4bD+gDodaanTJ5/L2Q0rShgi9XmCD3SPizryZR3k7U6tzBnhLnpz
	6ZFDzph8nuVbvBGq3B68oVVno9JisMA/++sNYlKzBqXrQlgiu+OCLtIk6fwGjeNaL0cG52qqNRAVR
	STSGWQn2RBojmXhESfzqSpfbB0BHa9edorcfh6wAvUsapMjY/Zy2iKDAPswDFmSG1+eAVC7+YP63A
	VHSfL01w0dwLxD16I+7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFMLo-0001O4-0Q; Fri, 20 Mar 2020 18:26:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFMJw-0007Dg-Tb
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 18:24:39 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6964920786;
 Fri, 20 Mar 2020 18:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584728676;
 bh=aClN8UeiHwUMz8z63kLsMCkyzam/LGTQg5gjY78foT4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cf8u5uqIdAdCtXXh6ptgWpBzINsDA6cpbZSoesm1iY65wfm+1RImmJxmHDS6WXtSx
 u+WZi98OkQtqCLfg3pn3qXMT4A5PtWp8sqkXBl3ReMAxik/MwqaX2P1WcnQFv2k1Ad
 SFAOWyZDN3AxVBKMbTNnbHEu4lg6mDs/KP7XceE8=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jFMJu-00EKAx-Nb; Fri, 20 Mar 2020 18:24:34 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 03/23] irqchip/gic-v4.1: Ensure mutual exclusion between
 vPE affinity change and RD access
Date: Fri, 20 Mar 2020 18:23:46 +0000
Message-Id: <20200320182406.23465-4-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200320182406.23465-1-maz@kernel.org>
References: <20200320182406.23465-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org, lorenzo.pieralisi@arm.com, jason@lakedaemon.net,
 tglx@linutronix.de, yuzenghui@huawei.com, eric.auger@redhat.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_112437_007972_C0971D89 
X-CRM114-Status: GOOD (  20.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Eric Auger <eric.auger@redhat.com>, James Morse <james.morse@arm.com>,
 Zenghui Yu <yuzenghui@huawei.com>, Thomas Gleixner <tglx@linutronix.de>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Before GICv4.1, all operations would be serialized with the affinity
changes by virtue of using the same ITS command queue. With v4.1, things
change, as invalidations (and a number of other operations) are issued
using the redistributor MMIO frame.

We must thus make sure that these redistributor accesses cannot race
against aginst the affinity change, or we may end-up talking to the
wrong redistributor.

To ensure this, we expand the irq_to_cpuid() helper to take a spinlock
when the LPI is mapped to a vLPI (a new per-VPE lock) on each operation
that requires mutual exclusion.

Signed-off-by: Marc Zyngier <maz@kernel.org>
Reviewed-by: Zenghui Yu <yuzenghui@huawei.com>
Link: https://lore.kernel.org/r/20200304203330.4967-4-maz@kernel.org
---
 drivers/irqchip/irq-gic-v3-its.c   | 56 +++++++++++++++++++++++++-----
 include/linux/irqchip/arm-gic-v4.h |  5 +++
 2 files changed, 53 insertions(+), 8 deletions(-)

diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
index da883a691028..1af713990123 100644
--- a/drivers/irqchip/irq-gic-v3-its.c
+++ b/drivers/irqchip/irq-gic-v3-its.c
@@ -239,15 +239,41 @@ static struct its_vlpi_map *get_vlpi_map(struct irq_data *d)
 	return NULL;
 }
 
-static int irq_to_cpuid(struct irq_data *d)
+static int vpe_to_cpuid_lock(struct its_vpe *vpe, unsigned long *flags)
+{
+	raw_spin_lock_irqsave(&vpe->vpe_lock, *flags);
+	return vpe->col_idx;
+}
+
+static void vpe_to_cpuid_unlock(struct its_vpe *vpe, unsigned long flags)
+{
+	raw_spin_unlock_irqrestore(&vpe->vpe_lock, flags);
+}
+
+static int irq_to_cpuid_lock(struct irq_data *d, unsigned long *flags)
 {
-	struct its_device *its_dev = irq_data_get_irq_chip_data(d);
 	struct its_vlpi_map *map = get_vlpi_map(d);
+	int cpu;
 
-	if (map)
-		return map->vpe->col_idx;
+	if (map) {
+		cpu = vpe_to_cpuid_lock(map->vpe, flags);
+	} else {
+		/* Physical LPIs are already locked via the irq_desc lock */
+		struct its_device *its_dev = irq_data_get_irq_chip_data(d);
+		cpu = its_dev->event_map.col_map[its_get_event_id(d)];
+		/* Keep GCC quiet... */
+		*flags = 0;
+	}
 
-	return its_dev->event_map.col_map[its_get_event_id(d)];
+	return cpu;
+}
+
+static void irq_to_cpuid_unlock(struct irq_data *d, unsigned long flags)
+{
+	struct its_vlpi_map *map = get_vlpi_map(d);
+
+	if (map)
+		vpe_to_cpuid_unlock(map->vpe, flags);
 }
 
 static struct its_collection *valid_col(struct its_collection *col)
@@ -1329,7 +1355,9 @@ static void direct_lpi_inv(struct irq_data *d)
 {
 	struct its_vlpi_map *map = get_vlpi_map(d);
 	void __iomem *rdbase;
+	unsigned long flags;
 	u64 val;
+	int cpu;
 
 	if (map) {
 		struct its_device *its_dev = irq_data_get_irq_chip_data(d);
@@ -1344,10 +1372,12 @@ static void direct_lpi_inv(struct irq_data *d)
 	}
 
 	/* Target the redistributor this LPI is currently routed to */
-	rdbase = per_cpu_ptr(gic_rdists->rdist, irq_to_cpuid(d))->rd_base;
+	cpu = irq_to_cpuid_lock(d, &flags);
+	rdbase = per_cpu_ptr(gic_rdists->rdist, cpu)->rd_base;
 	gic_write_lpir(val, rdbase + GICR_INVLPIR);
 
 	wait_for_syncr(rdbase);
+	irq_to_cpuid_unlock(d, flags);
 }
 
 static void lpi_update_config(struct irq_data *d, u8 clr, u8 set)
@@ -3486,17 +3516,25 @@ static int its_vpe_set_affinity(struct irq_data *d,
 {
 	struct its_vpe *vpe = irq_data_get_irq_chip_data(d);
 	int from, cpu = cpumask_first(mask_val);
+	unsigned long flags;
 
 	/*
 	 * Changing affinity is mega expensive, so let's be as lazy as
 	 * we can and only do it if we really have to. Also, if mapped
 	 * into the proxy device, we need to move the doorbell
 	 * interrupt to its new location.
+	 *
+	 * Another thing is that changing the affinity of a vPE affects
+	 * *other interrupts* such as all the vLPIs that are routed to
+	 * this vPE. This means that the irq_desc lock is not enough to
+	 * protect us, and that we must ensure nobody samples vpe->col_idx
+	 * during the update, hence the lock below which must also be
+	 * taken on any vLPI handling path that evaluates vpe->col_idx.
 	 */
-	if (vpe->col_idx == cpu)
+	from = vpe_to_cpuid_lock(vpe, &flags);
+	if (from == cpu)
 		goto out;
 
-	from = vpe->col_idx;
 	vpe->col_idx = cpu;
 
 	/*
@@ -3512,6 +3550,7 @@ static int its_vpe_set_affinity(struct irq_data *d,
 
 out:
 	irq_data_update_effective_affinity(d, cpumask_of(cpu));
+	vpe_to_cpuid_unlock(vpe, flags);
 
 	return IRQ_SET_MASK_OK_DONE;
 }
@@ -3855,6 +3894,7 @@ static int its_vpe_init(struct its_vpe *vpe)
 		return -ENOMEM;
 	}
 
+	raw_spin_lock_init(&vpe->vpe_lock);
 	vpe->vpe_id = vpe_id;
 	vpe->vpt_page = vpt_page;
 	if (gic_rdists->has_rvpeid)
diff --git a/include/linux/irqchip/arm-gic-v4.h b/include/linux/irqchip/arm-gic-v4.h
index d9c34968467a..439963f4c66a 100644
--- a/include/linux/irqchip/arm-gic-v4.h
+++ b/include/linux/irqchip/arm-gic-v4.h
@@ -53,6 +53,11 @@ struct its_vpe {
 		};
 	};
 
+	/*
+	 * Ensures mutual exclusion between affinity setting of the
+	 * vPE and vLPI operations using vpe->col_idx.
+	 */
+	raw_spinlock_t		vpe_lock;
 	/*
 	 * This collection ID is used to indirect the target
 	 * redistributor for this VPE. The ID itself isn't involved in
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
