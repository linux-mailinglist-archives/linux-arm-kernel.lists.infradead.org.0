Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E908C18D7FE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 19:55:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K1Ogv0aeE/T/KHaQqGFls3ud6zDXHY/aMUsquVbBgiU=; b=SI6t/Tx/yBKVG0
	IIKsGdR78LVcnaMZYlW3fSpXohurioB3UN0DmOHNDi+APT6Uw7Et427M2uDRI7iDjvlDYIQKi7J4/
	h3qWlHkLywsP2822k9Gv1L1vnfJc1KqC4IRE9xdUaFpb/cSXRZE9dWignR7ex/AcHjO5SmGYlQBr9
	GTSE7RJz/Y1TsHvwGvIreAb8aSXuHUeGgdzqRagIaJW4xz0Pe9lnzH1kxhO4bZxtHb2Qs5YsSCn5x
	EVpifnOnvWbRGHGLNvQUmDYZP4Is11pWgYYRxJGyhqRxOu86AQYtFkwiGibPzx74I7p7HIe31iklS
	jhZR8RlG0o5Hk3XgkyqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFMnS-0001BU-0G; Fri, 20 Mar 2020 18:55:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFMjv-00065z-UC
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 18:51:29 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1247B20775;
 Fri, 20 Mar 2020 18:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584730287;
 bh=8GqUbJjLJYh/ZuvjlxtmnZB7NXUJ7B12RLcn4jxEQ4U=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=w2DyM8dpeK2u8Iy7vqiihZ/HSxWHqQJ3d+TOEhoKtVnjPs/3alzFB/DU73Ki52omh
 3t/qMvQ5Vk36VgxR8w6UQngO7ulZT0A2qhLKZSJfFpuBpH2rI8iwhstIieQx/TU8y7
 0AmCTOXX86FWm8qATgiH/U7Dud+Ru35naLg99nMM=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jFMK4-00EKAx-64; Fri, 20 Mar 2020 18:24:44 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 14/23] irqchip/gic-v4.1: Add VSGI allocation/teardown
Date: Fri, 20 Mar 2020 18:23:57 +0000
Message-Id: <20200320182406.23465-15-maz@kernel.org>
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
X-CRM114-CacheID: sfid-20200320_115128_087715_10519193 
X-CRM114-Status: GOOD (  16.29  )
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

Allocate per-VPE SGIs when initializing the GIC-specific part of the
VPE data structure.

Signed-off-by: Marc Zyngier <maz@kernel.org>
Reviewed-by: Zenghui Yu <yuzenghui@huawei.com>
Link: https://lore.kernel.org/r/20200304203330.4967-15-maz@kernel.org
---
 drivers/irqchip/irq-gic-v3-its.c   |  2 +-
 drivers/irqchip/irq-gic-v4.c       | 68 +++++++++++++++++++++++++++++-
 include/linux/irqchip/arm-gic-v4.h |  4 +-
 3 files changed, 71 insertions(+), 3 deletions(-)

diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
index 15250faa9ef7..7ad46ff5f0b9 100644
--- a/drivers/irqchip/irq-gic-v3-its.c
+++ b/drivers/irqchip/irq-gic-v3-its.c
@@ -4053,7 +4053,7 @@ static int its_sgi_set_vcpu_affinity(struct irq_data *d, void *vcpu_info)
 	struct its_cmd_info *info = vcpu_info;
 
 	switch (info->cmd_type) {
-	case PROP_UPDATE_SGI:
+	case PROP_UPDATE_VSGI:
 		vpe->sgi_config[d->hwirq].priority = info->priority;
 		vpe->sgi_config[d->hwirq].group = info->group;
 		its_configure_sgi(d, false);
diff --git a/drivers/irqchip/irq-gic-v4.c b/drivers/irqchip/irq-gic-v4.c
index 117ba6db023d..99b33f60ac63 100644
--- a/drivers/irqchip/irq-gic-v4.c
+++ b/drivers/irqchip/irq-gic-v4.c
@@ -92,6 +92,47 @@ static bool has_v4_1(void)
 	return !!sgi_domain_ops;
 }
 
+static int its_alloc_vcpu_sgis(struct its_vpe *vpe, int idx)
+{
+	char *name;
+	int sgi_base;
+
+	if (!has_v4_1())
+		return 0;
+
+	name = kasprintf(GFP_KERNEL, "GICv4-sgi-%d", task_pid_nr(current));
+	if (!name)
+		goto err;
+
+	vpe->fwnode = irq_domain_alloc_named_id_fwnode(name, idx);
+	if (!vpe->fwnode)
+		goto err;
+
+	kfree(name);
+	name = NULL;
+
+	vpe->sgi_domain = irq_domain_create_linear(vpe->fwnode, 16,
+						   sgi_domain_ops, vpe);
+	if (!vpe->sgi_domain)
+		goto err;
+
+	sgi_base = __irq_domain_alloc_irqs(vpe->sgi_domain, -1, 16,
+					       NUMA_NO_NODE, vpe,
+					       false, NULL);
+	if (sgi_base <= 0)
+		goto err;
+
+	return 0;
+
+err:
+	if (vpe->sgi_domain)
+		irq_domain_remove(vpe->sgi_domain);
+	if (vpe->fwnode)
+		irq_domain_free_fwnode(vpe->fwnode);
+	kfree(name);
+	return -ENOMEM;
+}
+
 int its_alloc_vcpu_irqs(struct its_vm *vm)
 {
 	int vpe_base_irq, i;
@@ -118,8 +159,13 @@ int its_alloc_vcpu_irqs(struct its_vm *vm)
 	if (vpe_base_irq <= 0)
 		goto err;
 
-	for (i = 0; i < vm->nr_vpes; i++)
+	for (i = 0; i < vm->nr_vpes; i++) {
+		int ret;
 		vm->vpes[i]->irq = vpe_base_irq + i;
+		ret = its_alloc_vcpu_sgis(vm->vpes[i], i);
+		if (ret)
+			goto err;
+	}
 
 	return 0;
 
@@ -132,8 +178,28 @@ int its_alloc_vcpu_irqs(struct its_vm *vm)
 	return -ENOMEM;
 }
 
+static void its_free_sgi_irqs(struct its_vm *vm)
+{
+	int i;
+
+	if (!has_v4_1())
+		return;
+
+	for (i = 0; i < vm->nr_vpes; i++) {
+		unsigned int irq = irq_find_mapping(vm->vpes[i]->sgi_domain, 0);
+
+		if (WARN_ON(!irq))
+			continue;
+
+		irq_domain_free_irqs(irq, 16);
+		irq_domain_remove(vm->vpes[i]->sgi_domain);
+		irq_domain_free_fwnode(vm->vpes[i]->fwnode);
+	}
+}
+
 void its_free_vcpu_irqs(struct its_vm *vm)
 {
+	its_free_sgi_irqs(vm);
 	irq_domain_free_irqs(vm->vpes[0]->irq, vm->nr_vpes);
 	irq_domain_remove(vm->domain);
 	irq_domain_free_fwnode(vm->fwnode);
diff --git a/include/linux/irqchip/arm-gic-v4.h b/include/linux/irqchip/arm-gic-v4.h
index 8b42d9d9b17e..b120a01952fe 100644
--- a/include/linux/irqchip/arm-gic-v4.h
+++ b/include/linux/irqchip/arm-gic-v4.h
@@ -49,6 +49,8 @@ struct its_vpe {
 		};
 		/* GICv4.1 implementations */
 		struct {
+			struct fwnode_handle	*fwnode;
+			struct irq_domain	*sgi_domain;
 			struct {
 				u8	priority;
 				bool	enabled;
@@ -103,7 +105,7 @@ enum its_vcpu_info_cmd_type {
 	SCHEDULE_VPE,
 	DESCHEDULE_VPE,
 	INVALL_VPE,
-	PROP_UPDATE_SGI,
+	PROP_UPDATE_VSGI,
 };
 
 struct its_cmd_info {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
