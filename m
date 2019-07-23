Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C098B7167C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 12:47:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rvM5Twm+zt6Gpg8Zzh6QzZvxKudaRtW9mGM5AGwv4Lk=; b=cI2CB2zxH3oHNc
	JTOJpUMM5BA/1OAdF4PjCO0SfSReZfoUkti2vos8ogdyNq6u7kC3BXBenpWHr04TedBba7jQFbDn0
	BZUpiVEXvS9sMDATAC5FmkdF/0YTujJaMB9d5/scDm2/4yZ9CBzTe8D0EzKQXUUK9Pa/wKloSIC6H
	lVtEaVuX+Osbtcz19/sXRkqgSDf0qQHbMWIh2QCnIM5wVpr24VoRsNJlKA/mPT9ug/cTVL5iZ9Oh0
	ENHvJuY0x8N7CXYo743+B7koCjaotQNb+3MIQQPxtpAtu8/YiboIw3KPm7j+KsBE55LxegEPbC+Pi
	HkF8zs8QORn7aZySJA+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpsJw-0000fb-Ts; Tue, 23 Jul 2019 10:47:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpsHu-0006Yd-Gt
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 10:44:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F292515A2;
 Tue, 23 Jul 2019 03:44:53 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 169CD3F71A;
 Tue, 23 Jul 2019 03:44:52 -0700 (PDT)
From: Marc Zyngier <maz@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 6/9] irqchip/gic-v3: Dynamically allocate PPI NMI refcounts
Date: Tue, 23 Jul 2019 11:44:34 +0100
Message-Id: <20190723104437.154403-7-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190723104437.154403-1-maz@kernel.org>
References: <20190723104437.154403-1-maz@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_034454_873261_7639CD32 
X-CRM114-Status: GOOD (  15.39  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As we're about to have a variable number of PPIs, let's make the
allocation of the NMI refcounts dynamic. Also apply some minor
cleanups (moving things around).

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 drivers/irqchip/irq-gic-v3.c | 47 ++++++++++++++++++++++++++----------
 1 file changed, 34 insertions(+), 13 deletions(-)

diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
index 2d4ecf36d0fd..ec0f885fa373 100644
--- a/drivers/irqchip/irq-gic-v3.c
+++ b/drivers/irqchip/irq-gic-v3.c
@@ -88,7 +88,7 @@ static DEFINE_STATIC_KEY_TRUE(supports_deactivate_key);
 static DEFINE_STATIC_KEY_FALSE(supports_pseudo_nmis);
 
 /* ppi_nmi_refs[n] == number of cpus having ppi[n + 16] set as NMI */
-static refcount_t ppi_nmi_refs[16];
+static refcount_t *ppi_nmi_refs;
 
 static struct gic_kvm_info gic_v3_kvm_info;
 static DEFINE_PER_CPU(bool, has_rss);
@@ -409,6 +409,16 @@ static void gic_irq_set_prio(struct irq_data *d, u8 prio)
 	writeb_relaxed(prio, base + offset + index);
 }
 
+static u32 gic_get_ppi_index(struct irq_data *d)
+{
+	switch (get_intid_range(d)) {
+	case PPI_RANGE:
+		return d->hwirq - 16;
+	default:
+		unreachable();
+	}
+}
+
 static int gic_irq_nmi_setup(struct irq_data *d)
 {
 	struct irq_desc *desc = irq_to_desc(d->irq);
@@ -429,10 +439,12 @@ static int gic_irq_nmi_setup(struct irq_data *d)
 		return -EINVAL;
 
 	/* desc lock should already be held */
-	if (gic_irq(d) < 32) {
+	if (gic_irq_in_rdist(d)) {
+		u32 idx = gic_get_ppi_index(d);
+
 		/* Setting up PPI as NMI, only switch handler for first NMI */
-		if (!refcount_inc_not_zero(&ppi_nmi_refs[gic_irq(d) - 16])) {
-			refcount_set(&ppi_nmi_refs[gic_irq(d) - 16], 1);
+		if (!refcount_inc_not_zero(&ppi_nmi_refs[idx])) {
+			refcount_set(&ppi_nmi_refs[idx], 1);
 			desc->handle_irq = handle_percpu_devid_fasteoi_nmi;
 		}
 	} else {
@@ -464,9 +476,11 @@ static void gic_irq_nmi_teardown(struct irq_data *d)
 		return;
 
 	/* desc lock should already be held */
-	if (gic_irq(d) < 32) {
+	if (gic_irq_in_rdist(d)) {
+		u32 idx = gic_get_ppi_index(d);
+
 		/* Tearing down NMI, only switch handler for last NMI */
-		if (refcount_dec_and_test(&ppi_nmi_refs[gic_irq(d) - 16]))
+		if (refcount_dec_and_test(&ppi_nmi_refs[idx]))
 			desc->handle_irq = handle_percpu_devid_irq;
 	} else {
 		desc->handle_irq = handle_fasteoi_irq;
@@ -1390,7 +1404,19 @@ static void gic_enable_nmi_support(void)
 {
 	int i;
 
-	for (i = 0; i < 16; i++)
+	if (!gic_prio_masking_enabled())
+		return;
+
+	if (gic_has_group0() && !gic_dist_security_disabled()) {
+		pr_warn("SCR_EL3.FIQ is cleared, cannot enable use of pseudo-NMIs\n");
+		return;
+	}
+
+	ppi_nmi_refs = kcalloc(gic_data.ppi_nr, sizeof(*ppi_nmi_refs), GFP_KERNEL);
+	if (!ppi_nmi_refs)
+		return;
+
+	for (i = 0; i < gic_data.ppi_nr; i++)
 		refcount_set(&ppi_nmi_refs[i], 0);
 
 	static_branch_enable(&supports_pseudo_nmis);
@@ -1468,12 +1494,7 @@ static int __init gic_init_bases(void __iomem *dist_base,
 			gicv2m_init(handle, gic_data.domain);
 	}
 
-	if (gic_prio_masking_enabled()) {
-		if (!gic_has_group0() || gic_dist_security_disabled())
-			gic_enable_nmi_support();
-		else
-			pr_warn("SCR_EL3.FIQ is cleared, cannot enable use of pseudo-NMIs\n");
-	}
+	gic_enable_nmi_support();
 
 	return 0;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
