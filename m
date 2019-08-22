Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7CE498F70
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 11:35:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dIysKiqxAJZabN1CbUzoeY2pt+C7+H0c6nB6zcAkOgg=; b=odzXDMpR3WMoDe
	kGeoyaL02GePfpnw+MHiehqvclEw+NKmihrmzEXxabWbTv2XMZz52ETBHUXL/sSwbb51rxvMshYmw
	Ec29Xk0AocZc/YqCpRaa47uNh67xTlKHhWoknt0l3Usj5qmFsud+0xdJrJbOKsDctmcBbsBAUDvj3
	ndKWsDwYl3dL3b3fLGh5WXf2hB+vz46KVB19W9leQSWE4/2Izf22b8PVKx8Xd1TbyQYINPRTCMxvJ
	qjFgUDKxVPso3Y+seOxAhXFF/157UdiIAhZaAUZadxHVCOj7RKWvlXMoTP5HX51YG1PMkEpQxe0Em
	ichq9dZPxCv1bzVNNbKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0jVI-0000l8-RK; Thu, 22 Aug 2019 09:35:37 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0jTZ-0006ao-8n
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 09:33:51 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id DE820D7562;
 Thu, 22 Aug 2019 11:33:46 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id ChwZ04mvNs-n; Thu, 22 Aug 2019 11:33:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 239B0D7570;
 Thu, 22 Aug 2019 11:32:58 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 5GDqGikVRw22; Thu, 22 Aug 2019 11:27:28 +0200 (CEST)
Received: from belphegor.brq.redhat.com (nat-pool-brq-t.redhat.com
 [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 866AFD755E;
 Thu, 22 Aug 2019 11:26:48 +0200 (CEST)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Olof Johansson <olof@lixom.net>
Subject: [PATCH v2 07/20] irqchip/mmp: add missing chained_irq_{enter,exit}()
Date: Thu, 22 Aug 2019 11:26:30 +0200
Message-Id: <20190822092643.593488-8-lkundrak@v3.sk>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190822092643.593488-1-lkundrak@v3.sk>
References: <20190822092643.593488-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_023349_896202_C842591B 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, Stephen Boyd <sboyd@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The lack of chained_irq_exit() leaves the muxed interrupt masked on MMP3.
For reasons unknown this is not a problem on MMP2.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>

---
Changes since v1:
- Use irq_desc_get_chip() instead of irq_get_chip()

 drivers/irqchip/irq-mmp.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/irqchip/irq-mmp.c b/drivers/irqchip/irq-mmp.c
index e41e47ab71d3b..126ffdbffdddf 100644
--- a/drivers/irqchip/irq-mmp.c
+++ b/drivers/irqchip/irq-mmp.c
@@ -13,6 +13,7 @@
 #include <linux/init.h>
 #include <linux/irq.h>
 #include <linux/irqchip.h>
+#include <linux/irqchip/chained_irq.h>
 #include <linux/irqdomain.h>
 #include <linux/io.h>
 #include <linux/ioport.h>
@@ -132,11 +133,14 @@ struct irq_chip icu_irq_chip = {
 static void icu_mux_irq_demux(struct irq_desc *desc)
 {
 	unsigned int irq = irq_desc_get_irq(desc);
+	struct irq_chip *chip = irq_desc_get_chip(desc);
 	struct irq_domain *domain;
 	struct icu_chip_data *data;
 	int i;
 	unsigned long mask, status, n;
 
+	chained_irq_enter(chip, desc);
+
 	for (i = 1; i < max_icu_nr; i++) {
 		if (irq == icu_data[i].cascade_irq) {
 			domain = icu_data[i].domain;
@@ -146,7 +150,7 @@ static void icu_mux_irq_demux(struct irq_desc *desc)
 	}
 	if (i >= max_icu_nr) {
 		pr_err("Spurious irq %d in MMP INTC\n", irq);
-		return;
+		goto out;
 	}
 
 	mask = readl_relaxed(data->reg_mask);
@@ -158,6 +162,9 @@ static void icu_mux_irq_demux(struct irq_desc *desc)
 			generic_handle_irq(icu_data[i].virq_base + n);
 		}
 	}
+
+out:
+	chained_irq_exit(chip, desc);
 }
 
 static int mmp_irq_domain_map(struct irq_domain *d, unsigned int irq,
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
