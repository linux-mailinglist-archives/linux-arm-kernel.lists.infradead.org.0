Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0308618D6F0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 19:25:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XZjRbTzIxvkopNJvHsSqfS86Ww310mY+novF1EUKq7M=; b=pFmnuQjGnzGs1c
	3XWdyEnVclUFDHfp/zILwOaigycA9jnp/4Ql6RE3OYpp7DaQCYJ1AMjZ3+A44pXYumoJ9B7lsd9pP
	rNhiTqLTCUK1SsKqtBPr6u8Vk4y/O0xgRklSBN1QvZvlZxV7FSjHNCMjkrch9jODuk0Q5j4RYg9Hk
	XXiLaaZSgVuGW5Gi02znR2YDK1qnx9V3mtdEWLfiF2Cq2jAbSP70ga7OKUPFOo0klnP/yZrLwxJ30
	BngB/BUINEcrM8slekk4PCFwNa/afS4bhpVIt9lWbjuo8/K2PYUyk48mClAXmewgfzDGDI4RM35ip
	853rN+iiF1EXxJlJ9BDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFMKk-0007XF-AG; Fri, 20 Mar 2020 18:25:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFMJv-0007BY-SK
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 18:24:37 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BBAA620777;
 Fri, 20 Mar 2020 18:24:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584728674;
 bh=5jJuGUFWRJ2T6vmHdTiGNL4skAtWIsvs2wOH9lZnqqU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=an0+lGJLD4divYQLnhALD81ChVtAXsT4s3pOr9DJ6ocJPA11eaBb+nGoEVniGh7cT
 alq39eCAkOTHhW88fLeqvCsMflnS1dOv3yd5QQM5QsD72qeu0f643jvxtrq7y/cuNH
 fBiUiTpACwkuYKglEM1Jk28Wqubc2mFzJeio4ZmQ=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jFMJt-00EKAx-1f; Fri, 20 Mar 2020 18:24:33 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 01/23] irqchip/gic-v3: Use SGIs without active state if
 offered
Date: Fri, 20 Mar 2020 18:23:44 +0000
Message-Id: <20200320182406.23465-2-maz@kernel.org>
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
X-CRM114-CacheID: sfid-20200320_112435_941147_89AE38F4 
X-CRM114-Status: GOOD (  15.08  )
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

To allow the direct injection of SGIs into a guest, the GICv4.1
architecture has to sacrifice the Active state so that SGIs look
a lot like LPIs (they are injected by the same mechanism).

In order not to break existing software, the architecture gives
offers guests OSs the choice: SGIs with or without an active
state. It is the hypervisors duty to honor the guest's choice.

For this, the architecture offers a discovery bit indicating whether
the GIC supports GICv4.1 SGIs (GICD_TYPER2.nASSGIcap), and another
bit indicating whether the guest wants Active-less SGIs or not
(controlled by GICD_CTLR.nASSGIreq).

A hypervisor not supporting GICv4.1 SGIs would leave nASSGIcap
clear, and a guest not knowing about GICv4.1 SGIs (or definitely
wanting an Active state) would leave nASSGIreq clear (both being
thankfully backward compatible with older revisions of the GIC).

Since Linux is perfectly happy without an active state on SGIs,
inform the hypervisor that we'll use that if offered.

Signed-off-by: Marc Zyngier <maz@kernel.org>
Reviewed-by: Zenghui Yu <yuzenghui@huawei.com>
Link: https://lore.kernel.org/r/20200304203330.4967-2-maz@kernel.org
---
 drivers/irqchip/irq-gic-v3.c       | 10 ++++++++--
 include/linux/irqchip/arm-gic-v3.h |  2 ++
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
index c1f7af9d9ae7..b6b0f86584d6 100644
--- a/drivers/irqchip/irq-gic-v3.c
+++ b/drivers/irqchip/irq-gic-v3.c
@@ -723,6 +723,7 @@ static void __init gic_dist_init(void)
 	unsigned int i;
 	u64 affinity;
 	void __iomem *base = gic_data.dist_base;
+	u32 val;
 
 	/* Disable the distributor */
 	writel_relaxed(0, base + GICD_CTLR);
@@ -755,9 +756,14 @@ static void __init gic_dist_init(void)
 	/* Now do the common stuff, and wait for the distributor to drain */
 	gic_dist_config(base, GIC_LINE_NR, gic_dist_wait_for_rwp);
 
+	val = GICD_CTLR_ARE_NS | GICD_CTLR_ENABLE_G1A | GICD_CTLR_ENABLE_G1;
+	if (gic_data.rdists.gicd_typer2 & GICD_TYPER2_nASSGIcap) {
+		pr_info("Enabling SGIs without active state\n");
+		val |= GICD_CTLR_nASSGIreq;
+	}
+
 	/* Enable distributor with ARE, Group1 */
-	writel_relaxed(GICD_CTLR_ARE_NS | GICD_CTLR_ENABLE_G1A | GICD_CTLR_ENABLE_G1,
-		       base + GICD_CTLR);
+	writel_relaxed(val, base + GICD_CTLR);
 
 	/*
 	 * Set all global interrupts to the boot CPU only. ARE must be
diff --git a/include/linux/irqchip/arm-gic-v3.h b/include/linux/irqchip/arm-gic-v3.h
index 83439bfb6c5b..c29a02678a6f 100644
--- a/include/linux/irqchip/arm-gic-v3.h
+++ b/include/linux/irqchip/arm-gic-v3.h
@@ -57,6 +57,7 @@
 #define GICD_SPENDSGIR			0x0F20
 
 #define GICD_CTLR_RWP			(1U << 31)
+#define GICD_CTLR_nASSGIreq		(1U << 8)
 #define GICD_CTLR_DS			(1U << 6)
 #define GICD_CTLR_ARE_NS		(1U << 4)
 #define GICD_CTLR_ENABLE_G1A		(1U << 1)
@@ -90,6 +91,7 @@
 #define GICD_TYPER_ESPIS(typer)						\
 	(((typer) & GICD_TYPER_ESPI) ? GICD_TYPER_SPIS((typer) >> 27) : 0)
 
+#define GICD_TYPER2_nASSGIcap		(1U << 8)
 #define GICD_TYPER2_VIL			(1U << 7)
 #define GICD_TYPER2_VID			GENMASK(4, 0)
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
