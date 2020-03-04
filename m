Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 384FF179A12
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 21:37:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v7XpRNIEm4PyKD3La/insC55528m25rYoDGi8hqV/nc=; b=K5Yj1XPLiaLvNl
	0lNGXMKE0LrNjT+nT3KN690akvx6wdUBs7U6tiwc/X8Or2eUVUvczYmWDn6vLs/U5Rf33mMaC/kzL
	9nzS7kKlh7pIQpNNpMArcuaa+Gmutwy+A9k8u4q2+bVNI9COtfVtRkwsjEcDb79iDb2pryz3ZOm/q
	6f/U90PWo35OLiXBdIpRJaHejyH4/KvLtPxiejDVPpUE4o7c18mkNNmCGHsd7V/NO+tZb3hhImxlr
	8nHPsLfPr9LgA3BBXZfJMTRDsglTXQYw46CCgAZvkaLDTXPZAAZppeayPDRfpqH9U++pz/l3fxYNE
	TLGw5M0Hl/xlDj0ACsvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9alH-0004YT-Uc; Wed, 04 Mar 2020 20:36:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9aj6-0001jK-A6
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 20:34:45 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DDA9F24658;
 Wed,  4 Mar 2020 20:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583354084;
 bh=j8zBrkFAZYg8aOlrVLwQ6xdlqxDuQgnwUjV/YeOSDME=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=mKT2wJ5CATASQrCVHIrXAS4mZnE7h3hbQZ4OGF9DK/S4YNdjPBHCanpr/KJ5b4doR
 7Vov2W70kxrE3d/mpqx5KMosTBEfdYtim4pqxOIDSUY3qWHg2yjMJ0tXkIdSdD94cb
 D7oh2IjKPIjxmA/NVeZOMcSDeJj5qBmHtRVE4Of8=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j9aj4-00A59R-4t; Wed, 04 Mar 2020 20:34:42 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 06/23] irqchip/gic-v4.1: Advertise support v4.1 to KVM
Date: Wed,  4 Mar 2020 20:33:13 +0000
Message-Id: <20200304203330.4967-7-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200304203330.4967-1-maz@kernel.org>
References: <20200304203330.4967-1-maz@kernel.org>
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
X-CRM114-CacheID: sfid-20200304_123444_405778_0BBAF5A8 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Tell KVM that we support v4.1. Nothing uses this information so far.

Signed-off-by: Marc Zyngier <maz@kernel.org>
Reviewed-by: Zenghui Yu <yuzenghui@huawei.com>
---
 drivers/irqchip/irq-gic-v3-its.c       | 9 ++++++++-
 drivers/irqchip/irq-gic-v3.c           | 2 ++
 include/linux/irqchip/arm-gic-common.h | 2 ++
 3 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
index fc5788584df7..bcc1a0957cda 100644
--- a/drivers/irqchip/irq-gic-v3-its.c
+++ b/drivers/irqchip/irq-gic-v3-its.c
@@ -4870,6 +4870,7 @@ int __init its_init(struct fwnode_handle *handle, struct rdists *rdists,
 	struct device_node *of_node;
 	struct its_node *its;
 	bool has_v4 = false;
+	bool has_v4_1 = false;
 	int err;
 
 	gic_rdists = rdists;
@@ -4890,8 +4891,14 @@ int __init its_init(struct fwnode_handle *handle, struct rdists *rdists,
 	if (err)
 		return err;
 
-	list_for_each_entry(its, &its_nodes, entry)
+	list_for_each_entry(its, &its_nodes, entry) {
 		has_v4 |= is_v4(its);
+		has_v4_1 |= is_v4_1(its);
+	}
+
+	/* Don't bother with inconsistent systems */
+	if (WARN_ON(!has_v4_1 && rdists->has_rvpeid))
+		rdists->has_rvpeid = false;
 
 	if (has_v4 & rdists->has_vlpis) {
 		if (its_init_vpe_domain() ||
diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
index ba405becab53..03e4eadefb00 100644
--- a/drivers/irqchip/irq-gic-v3.c
+++ b/drivers/irqchip/irq-gic-v3.c
@@ -1785,6 +1785,7 @@ static void __init gic_of_setup_kvm_info(struct device_node *node)
 		gic_v3_kvm_info.vcpu = r;
 
 	gic_v3_kvm_info.has_v4 = gic_data.rdists.has_vlpis;
+	gic_v3_kvm_info.has_v4_1 = gic_data.rdists.has_rvpeid;
 	gic_set_kvm_info(&gic_v3_kvm_info);
 }
 
@@ -2100,6 +2101,7 @@ static void __init gic_acpi_setup_kvm_info(void)
 	}
 
 	gic_v3_kvm_info.has_v4 = gic_data.rdists.has_vlpis;
+	gic_v3_kvm_info.has_v4_1 = gic_data.rdists.has_rvpeid;
 	gic_set_kvm_info(&gic_v3_kvm_info);
 }
 
diff --git a/include/linux/irqchip/arm-gic-common.h b/include/linux/irqchip/arm-gic-common.h
index b9850f5f1906..fa8c0455c352 100644
--- a/include/linux/irqchip/arm-gic-common.h
+++ b/include/linux/irqchip/arm-gic-common.h
@@ -32,6 +32,8 @@ struct gic_kvm_info {
 	struct resource vctrl;
 	/* vlpi support */
 	bool		has_v4;
+	/* rvpeid support */
+	bool		has_v4_1;
 };
 
 const struct gic_kvm_info *gic_get_kvm_info(void);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
