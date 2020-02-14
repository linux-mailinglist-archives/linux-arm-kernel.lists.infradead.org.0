Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C59515DA07
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 15:59:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aKsBPUcn3f690RNEw0kXKqOUogu9g2846vvsHkPs524=; b=d813Yv4YOdC5d3
	iEtGH/hhjFB8vQSlZb8BVZ5Ak0l/fltzsL4sf51j7O6gYYO1i3uUR9Ecwxm5317JDph2FmG4tp4L4
	0RjGO1Vth5FKIXrak+ERmpuz+9eEAri90TpYN/zUJr+c68IEvRju2WWRAf4kjgToNcaLps964BK3T
	09Qfb/GSNMabKW5PdAobde5FqoEuHsvmwwlRY/vPT26QJWrVL4CvcpItdBxU/b0gVy8UFRMc01GHG
	63iMV+qguvXSQySs7SpzjfMfh14qjyrZFm0CyF3OwjWfeCAeUF1XNnKWSIMTRrk8I8rNLUEcsYkQD
	9w7tGvnkBEMrTFa0Nw2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2cQt-00052w-S9; Fri, 14 Feb 2020 14:59:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2cPe-0003sa-H5
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 14:57:52 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 158B92468C;
 Fri, 14 Feb 2020 14:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581692270;
 bh=8bbRiH6q1fjDKawdL2ajZh1/ftg1HUx3ZqtwNJNg8KI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=zDq8m2lQF2XTqBIb3U5Adf9lVr0+pY+NKnKzcwUw6l8YtwNpt2DxB74RT7rNpfuhq
 5JSVpmLZwleqmdNkm+lTyWzrVP+/EFffaWQqxt6jLtmSIV2b1ST9kTJ69sntKFmYi4
 L2c9Kpmlxrefq41D4o/LkhGFjKFi4tCvrRLXD6oY=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j2cPc-0057sw-ED; Fri, 14 Feb 2020 14:57:48 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 05/20] irqchip/gic-v4.1: Plumb skeletal VSGI irqchip
Date: Fri, 14 Feb 2020 14:57:21 +0000
Message-Id: <20200214145736.18550-6-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214145736.18550-1-maz@kernel.org>
References: <20200214145736.18550-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org, lorenzo.pieralisi@arm.com, jason@lakedaemon.net,
 rrichter@marvell.com, tglx@linutronix.de, yuzenghui@huawei.com,
 eric.auger@redhat.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_065750_649687_2F13D34C 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Eric Auger <eric.auger@redhat.com>, Robert Richter <rrichter@marvell.com>,
 James Morse <james.morse@arm.com>, Zenghui Yu <yuzenghui@huawei.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since GICv4.1 has the capability to inject 16 SGIs into each VPE,
and that I'm keen not to invent too many specific interfaces to
manupulate these interrupts, let's pretend that each of these SGIs
is an actual Linux interrupt.

For that matter, let's introduce a minimal irqchip and irqdomain
setup that will get fleshed up in the following patches.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 drivers/irqchip/irq-gic-v3-its.c   | 68 +++++++++++++++++++++++++++++-
 drivers/irqchip/irq-gic-v4.c       |  8 +++-
 include/linux/irqchip/arm-gic-v4.h |  9 +++-
 3 files changed, 81 insertions(+), 4 deletions(-)

diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
index d6201443b406..6121c8f2a8ce 100644
--- a/drivers/irqchip/irq-gic-v3-its.c
+++ b/drivers/irqchip/irq-gic-v3-its.c
@@ -3823,6 +3823,67 @@ static struct irq_chip its_vpe_4_1_irq_chip = {
 	.irq_set_vcpu_affinity	= its_vpe_4_1_set_vcpu_affinity,
 };
 
+static int its_sgi_set_affinity(struct irq_data *d,
+				const struct cpumask *mask_val,
+				bool force)
+{
+	return -EINVAL;
+}
+
+static struct irq_chip its_sgi_irq_chip = {
+	.name			= "GICv4.1-sgi",
+	.irq_set_affinity	= its_sgi_set_affinity,
+};
+
+static int its_sgi_irq_domain_alloc(struct irq_domain *domain,
+				    unsigned int virq, unsigned int nr_irqs,
+				    void *args)
+{
+	struct its_vpe *vpe = args;
+	int i;
+
+	/* Yes, we do want 16 SGIs */
+	WARN_ON(nr_irqs != 16);
+
+	for (i = 0; i < 16; i++) {
+		vpe->sgi_config[i].priority = 0;
+		vpe->sgi_config[i].enabled = false;
+		vpe->sgi_config[i].group = false;
+
+		irq_domain_set_hwirq_and_chip(domain, virq + i, i,
+					      &its_sgi_irq_chip, vpe);
+		irq_set_status_flags(virq + i, IRQ_DISABLE_UNLAZY);
+	}
+
+	return 0;
+}
+
+static void its_sgi_irq_domain_free(struct irq_domain *domain,
+				    unsigned int virq,
+				    unsigned int nr_irqs)
+{
+	/* Nothing to do */
+}
+
+static int its_sgi_irq_domain_activate(struct irq_domain *domain,
+				       struct irq_data *d, bool reserve)
+{
+	return 0;
+}
+
+static void its_sgi_irq_domain_deactivate(struct irq_domain *domain,
+					  struct irq_data *d)
+{
+	/* Nothing to do */
+}
+
+static struct irq_domain_ops its_sgi_domain_ops = {
+	.alloc		= its_sgi_irq_domain_alloc,
+	.free		= its_sgi_irq_domain_free,
+	.activate	= its_sgi_irq_domain_activate,
+	.deactivate	= its_sgi_irq_domain_deactivate,
+};
+
 static int its_vpe_id_alloc(void)
 {
 	return ida_simple_get(&its_vpeid_ida, 0, ITS_MAX_VPEID, GFP_KERNEL);
@@ -4864,8 +4925,13 @@ int __init its_init(struct fwnode_handle *handle, struct rdists *rdists,
 		rdists->has_rvpeid = false;
 
 	if (has_v4 & rdists->has_vlpis) {
+		struct irq_domain_ops *sgi_ops = NULL;
+
+		if (has_v4_1)
+			sgi_ops = &its_sgi_domain_ops;
+
 		if (its_init_vpe_domain() ||
-		    its_init_v4(parent_domain, &its_vpe_domain_ops)) {
+		    its_init_v4(parent_domain, &its_vpe_domain_ops, sgi_ops)) {
 			rdists->has_vlpis = false;
 			pr_err("ITS: Disabling GICv4 support\n");
 		}
diff --git a/drivers/irqchip/irq-gic-v4.c b/drivers/irqchip/irq-gic-v4.c
index 45969927cc81..c01910d53f9e 100644
--- a/drivers/irqchip/irq-gic-v4.c
+++ b/drivers/irqchip/irq-gic-v4.c
@@ -85,6 +85,7 @@
 
 static struct irq_domain *gic_domain;
 static const struct irq_domain_ops *vpe_domain_ops;
+static const struct irq_domain_ops *sgi_domain_ops;
 
 int its_alloc_vcpu_irqs(struct its_vm *vm)
 {
@@ -216,12 +217,15 @@ int its_prop_update_vlpi(int irq, u8 config, bool inv)
 	return irq_set_vcpu_affinity(irq, &info);
 }
 
-int its_init_v4(struct irq_domain *domain, const struct irq_domain_ops *ops)
+int its_init_v4(struct irq_domain *domain,
+		const struct irq_domain_ops *vpe_ops,
+		const struct irq_domain_ops *sgi_ops)
 {
 	if (domain) {
 		pr_info("ITS: Enabling GICv4 support\n");
 		gic_domain = domain;
-		vpe_domain_ops = ops;
+		vpe_domain_ops = vpe_ops;
+		sgi_domain_ops = sgi_ops;
 		return 0;
 	}
 
diff --git a/include/linux/irqchip/arm-gic-v4.h b/include/linux/irqchip/arm-gic-v4.h
index d9c34968467a..30b4855bf766 100644
--- a/include/linux/irqchip/arm-gic-v4.h
+++ b/include/linux/irqchip/arm-gic-v4.h
@@ -49,6 +49,11 @@ struct its_vpe {
 		};
 		/* GICv4.1 implementations */
 		struct {
+			struct {
+				u8	priority;
+				bool	enabled;
+				bool	group;
+			}			sgi_config[16];
 			atomic_t vmapp_count;
 		};
 	};
@@ -118,6 +123,8 @@ int its_unmap_vlpi(int irq);
 int its_prop_update_vlpi(int irq, u8 config, bool inv);
 
 struct irq_domain_ops;
-int its_init_v4(struct irq_domain *domain, const struct irq_domain_ops *ops);
+int its_init_v4(struct irq_domain *domain,
+		const struct irq_domain_ops *vpe_ops,
+		const struct irq_domain_ops *sgi_ops);
 
 #endif
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
