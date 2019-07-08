Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92E43619B7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 05:55:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K4KaSjdVjD0PkLiIHRKcqhcVpVz0JFyV8vLv9a7xopg=; b=C/vmJxwPCd/h72
	IYGyc0DrD/phr0YuSyPz/PErxCDYgsmykF5WqYR4Hxjs99htALoJsiCfg8X+KkOm83C1KdqOUrNZm
	9mGeZGzwrTq+K3GEKqtG7LXVLcAD13SjW754gGx/f5qYgBYxrIDgStARHFjPifi69xlLjCWQ7WWo2
	gdIT8553xRWqn3my6P/5QvS0ayKvrtUZpIkgU4y4W+k+Sn+iZmQevJt+YutODvoqW0zbcsH/wcfyQ
	1p5qSsbiewieAhhYxPBNnTa2jGvgKormucu9oWZJfPu/yurLyVksh6mjjCQ3/bjku34ZP/Va3do2v
	hSJaD/1o4cKsIVf4+kKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkKkp-0002WC-2C; Mon, 08 Jul 2019 03:55:51 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkKit-0008Vn-TE
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 03:53:56 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x683qlHi073187;
 Sun, 7 Jul 2019 22:52:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1562557967;
 bh=/PxbsYKEc7J+gcuFg4Za6foR6b99A27G9weDbwBQOME=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=mce7VKr7jsguyzB9oW2SHO37YJcu552fbsgGA7zMkVnF3ox4rMW1MMrHrC2CQQQhV
 5TPqVuGn0+M78BPTnfUsB88AbtMKPesy79hUK40yQeMWi67MsZlBHPTjlNyrjOzXrj
 WhAx03h+sWS9LMSYDP1ubhrQnYFmkmI2Y4Yaa5VE=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x683qlun102653
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sun, 7 Jul 2019 22:52:47 -0500
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Sun, 7 Jul
 2019 22:52:46 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Sun, 7 Jul 2019 22:52:47 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com
 [128.247.22.53])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x683qkEP036231;
 Sun, 7 Jul 2019 22:52:46 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
 by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x683qkm26449; 
 Sun, 7 Jul 2019 22:52:46 -0500 (CDT)
From: Suman Anna <s-anna@ti.com>
To: Marc Zyngier <marc.zyngier@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>
Subject: [PATCH 5/6] irqchip/irq-pruss-intc: Add API to trigger a PRU sysevent
Date: Sun, 7 Jul 2019 22:52:42 -0500
Message-ID: <20190708035243.12170-6-s-anna@ti.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190708035243.12170-1-s-anna@ti.com>
References: <20190708035243.12170-1-s-anna@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190707_205352_019088_7CB1423A 
X-CRM114-Status: GOOD (  18.78  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Grygorii Strashko <grygorii.strashko@ti.com>,
 David Lechner <david@lechnology.com>, Tony Lindgren <tony@atomide.com>,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 "Andrew F. Davis" <afd@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>,
 Murali Karicheri <m-karicheri2@ti.com>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Andrew F. Davis" <afd@ti.com>

The PRUSS INTC can generate an interrupt to various processor
subsystems on the SoC through a set of 64 possible PRU system
events. These system events can be used by PRU client drivers
or applications for event notifications/signalling between PRUs
and MPU or other processors. A new API, pruss_intc_trigger() is
provided to MPU-side PRU client drivers/applications to be able
to trigger an event/interrupt using IRQ numbers provided by the
PRUSS-INTC irqdomain chip.

Signed-off-by: Andrew F. Davis <afd@ti.com>
Signed-off-by: Suman Anna <s-anna@ti.com>
Signed-off-by: Roger Quadros <rogerq@ti.com>
---
 drivers/irqchip/irq-pruss-intc.c | 31 +++++++++++++++++++++++++++++++
 include/linux/pruss_intc.h       | 26 ++++++++++++++++++++++++++
 2 files changed, 57 insertions(+)
 create mode 100644 include/linux/pruss_intc.h

diff --git a/drivers/irqchip/irq-pruss-intc.c b/drivers/irqchip/irq-pruss-intc.c
index 8118c2a2ac43..a0ad50b95cd5 100644
--- a/drivers/irqchip/irq-pruss-intc.c
+++ b/drivers/irqchip/irq-pruss-intc.c
@@ -421,6 +421,37 @@ static void pruss_intc_irq_relres(struct irq_data *data)
 	module_put(THIS_MODULE);
 }
 
+/**
+ * pruss_intc_trigger() - trigger a PRU system event
+ * @irq: linux IRQ number associated with a PRU system event
+ *
+ * Trigger an interrupt by signalling a specific PRU system event.
+ * This can be used by PRUSS client users to raise/send an event to
+ * a PRU or any other core that is listening on the host interrupt
+ * mapped to that specific PRU system event. The @irq variable is the
+ * Linux IRQ number associated with a specific PRU system event that
+ * a client user/application uses. The interrupt mappings for this is
+ * provided by the PRUSS INTC irqchip instance.
+ *
+ * Returns 0 on success, or an error value upon failure.
+ */
+int pruss_intc_trigger(unsigned int irq)
+{
+	struct irq_desc *desc;
+
+	if (irq <= 0)
+		return -EINVAL;
+
+	desc = irq_to_desc(irq);
+	if (!desc)
+		return -EINVAL;
+
+	pruss_intc_irq_retrigger(&desc->irq_data);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(pruss_intc_trigger);
+
 static int pruss_intc_irq_domain_map(struct irq_domain *d, unsigned int virq,
 				     irq_hw_number_t hw)
 {
diff --git a/include/linux/pruss_intc.h b/include/linux/pruss_intc.h
new file mode 100644
index 000000000000..84aa7f7edf42
--- /dev/null
+++ b/include/linux/pruss_intc.h
@@ -0,0 +1,26 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/**
+ * TI PRU-ICSS Subsystem user interfaces
+ *
+ * Copyright (C) 2019 Texas Instruments Incorporated - http://www.ti.com
+ *	Andrew F. Davis <afd@ti.com>
+ *	Suman Anna <s-anna@ti.com>
+ */
+
+#ifndef __LINUX_PRUSS_INTC_H
+#define __LINUX_PRUSS_INTC_H
+
+#if IS_ENABLED(CONFIG_TI_PRUSS_INTC)
+
+int pruss_intc_trigger(unsigned int irq);
+
+#else
+
+static inline int pruss_intc_trigger(unsigned int irq)
+{
+	return -ENOTSUPP;
+}
+
+#endif /* CONFIG_TI_PRUSS_INTC */
+
+#endif /* __LINUX_PRUSS_INTC_H */
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
