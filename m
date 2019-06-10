Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F138C3B474
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 14:16:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YZld8MDeb0qpF6isj6L9KjhUcEnH+100HJUgnDmBIqY=; b=WVPW2ZIelnx1kER5gywszbn05p
	ybrjq0hrxIv4byD+yeM36Dnw7aC+5CVBi96g3gPGd2eW6dSMmyzREtvh9uakYvB6LifUxBnyfAodF
	SULk41g2v17dOk+WyHoGDzFzvYAVEi4H6xk1hhFHzhFBvczS0e1p402FkZPfGa31olUqsH0W1dE47
	zbrcmQ0tzerlnZ4AX0gkGJev0W7HOZshWuC14vlICJ/0Ckiar2PX0IdKDPUM62BTlfE1Pg6X3hveQ
	ElfrHVlA43K51ZWJaoU5NjnsjAHdJdjjfzMUttz5brdH+hwRWwUPHEYgXNZjunHytNOdeRguE5TQZ
	N6mljuRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haJDy-0004c2-BI; Mon, 10 Jun 2019 12:16:30 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haJDM-0004JV-Lu
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 12:15:55 +0000
Received: by mail-wr1-x443.google.com with SMTP id r18so8927357wrm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 05:15:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=FlvwpC6m0v53KavCocJ+2csqLAYMxCnpT0Lw1VCqit4=;
 b=T3Th9y2P8mFhAGe5f2GRszLTwWxc6rRrQtrzWo2OCdsGyBknRfs4DoV1f9pNEJ7DnD
 bhynNiQHLGjvAX5Hj8Gme1I8jBPVbYX1fkNs98qmi8n4pWCLUXs3ul43FCLWUm/Uaguw
 IiJw6WZbo0kaLkzs97FkomBsEFzD3WV+rCVK39RjXiq6huqwSEiPLNdsOlaJLhzOzvZZ
 QeXE+Vz0VGLAf3yDhDhLjrcGiOZM0mcig0NXAEcKGoyniF6m1N0qBnUS4UPLW1RRmGqf
 knIcqtaZeEdF9ffKj4E16lrrgkipRKQx0tau1XjbQcjhF+XCGHye1SROp0h6UTOg2lGA
 a6qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=FlvwpC6m0v53KavCocJ+2csqLAYMxCnpT0Lw1VCqit4=;
 b=r7K63goFO2aT79kI2Ob45urhEF4Vf0e1KwiQgnILMAnm/j3TyRIeUgz/Fg58fTVSye
 EmDTn57yuGfdVhyBbUGE2fBTt5KxD1ufKKMFQF4kQmuAcWkxSp01D48v2a/cSdkzXbxj
 Z7IyxWOTegWMbjCXoUKpn2XFHPUGlbe25rQ1iBxsjf0Uw0qRIXitNd5qnbVFwbg5/jzf
 Pyg108IpY6uivBVoIEemv34mgleUebPQI8Xeg8iLeUY/ZJ8qwgDdk3q/DMDAb2BxAH5Q
 PgNUcydMPdLRpHwshLQ5SfBsPoZmnhScgVBI879t+/yUAraZTDNb2QzvalqjPm1thwq9
 0XWA==
X-Gm-Message-State: APjAAAVcgw0e188Hy7v/gquYSKwaiR/eyo3UDl5VyvEmA+fnr2Mgsz3E
 UpCbN7eZqbPRBwHgjSeqWGg=
X-Google-Smtp-Source: APXvYqzsoAkn97R3560OJNeo/y83djbhV8nq+nIziMx4Zq7RVWl4008WIAc8fw11dPOCmAdmrJM83w==
X-Received: by 2002:adf:b689:: with SMTP id j9mr24269221wre.76.1560168950907; 
 Mon, 10 Jun 2019 05:15:50 -0700 (PDT)
Received: from ryzen.lan (5-12-114-167.residential.rdsnet.ro. [5.12.114.167])
 by smtp.gmail.com with ESMTPSA id
 f21sm10385574wmb.2.2019.06.10.05.15.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 10 Jun 2019 05:15:50 -0700 (PDT)
From: Abel Vesa <abelvesa@gmail.com>
X-Google-Original-From: Abel Vesa <abel.vesa@nxp.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Marc Zyngier <marc.zyngier@arm.com>, Lucas Stach <l.stach@pengutronix.de>,
 Bai Ping <ping.bai@nxp.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Leonard Crestez <leonard.crestez@nxp.com>
Subject: [RFC 1/2] irqchip: irq-imx-gpcv2: Add workaround for i.MX8MQ ERR11171
Date: Mon, 10 Jun 2019 15:13:45 +0300
Message-Id: <20190610121346.15779-2-abel.vesa@nxp.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20190610121346.15779-1-abel.vesa@nxp.com>
References: <20190610121346.15779-1-abel.vesa@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_051552_716779_1262D8B0 
X-CRM114-Status: GOOD (  19.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (abelvesa[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Carlo Caione <ccaione@baylibre.com>,
 NXP Linux Team <linux-imx@nxp.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

i.MX8MQ is missing the wake_request signals from GIC to GPCv2. This indirectly
breaks cpuidle support due to inability to wake target cores on IPIs.

Here is the link to the errata (see e11171):

https://www.nxp.com/docs/en/errata/IMX8MDQLQ_0N14W.pdf

Now, in order to fix this, we can trigger IRQ 32 (hwirq 0) to all the cores by
setting 12th bit in IOMUX_GPR1 register. In order to control the target cores
only, that is, not waking up all the cores every time, we can unmask/mask the
IRQ 32 in the first GPC IMR register. So basically we can leave the IOMUX_GPR1
12th bit always set and just play with the masking and unmasking the IRO 32 for
each independent core.

Since EL3 is the one that deals with powering down/up the cores, and since the
cores wake up in EL3, EL3 should be the one to control the IMRs in this case.
This implies we need to get into EL3 on every IPI to do the unmasking, leaving
the masking to be done on the power-up sequence by the core itself.

In order to be able to get into EL3 on each IPI, we 'hijack' the registered smp
cross call handler, in this case the gic_raise_softirq which is registered by
the irq-gic-v3 driver and register our own handler instead. This new handler is
basically a wrapper over the hijacked handler plus the call into EL3.

To get into EL3, we use a custom vendor SIP id added just for this purpose.

All of this is conditional for i.MX8MQ only.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
---
 drivers/irqchip/irq-imx-gpcv2.c | 42 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/drivers/irqchip/irq-imx-gpcv2.c b/drivers/irqchip/irq-imx-gpcv2.c
index 66501ea..b921105 100644
--- a/drivers/irqchip/irq-imx-gpcv2.c
+++ b/drivers/irqchip/irq-imx-gpcv2.c
@@ -6,11 +6,19 @@
  * published by the Free Software Foundation.
  */
 
+#include <linux/arm-smccc.h>
+#include <linux/mfd/syscon/imx6q-iomuxc-gpr.h>
+#include <linux/mfd/syscon.h>
 #include <linux/of_address.h>
 #include <linux/of_irq.h>
+#include <linux/regmap.h>
 #include <linux/slab.h>
 #include <linux/irqchip.h>
 #include <linux/syscore_ops.h>
+#include <linux/smp.h>
+
+#define IMX_SIP_GPC		0xC2000004
+#define IMX_SIP_GPC_CORE_WAKE	0x00
 
 #define IMR_NUM			4
 #define GPC_MAX_IRQS            (IMR_NUM * 32)
@@ -73,6 +81,37 @@ static struct syscore_ops imx_gpcv2_syscore_ops = {
 	.resume		= gpcv2_wakeup_source_restore,
 };
 
+static void (*__gic_v3_smp_cross_call)(const struct cpumask *, unsigned int);
+
+static void imx_gpcv2_raise_softirq(const struct cpumask *mask,
+					  unsigned int irq)
+{
+	struct arm_smccc_res res;
+
+	/* call the hijacked smp cross call handler */
+	__gic_v3_smp_cross_call(mask, irq);
+
+	/* now call into EL3 and take care of the wakeup */
+	arm_smccc_smc(IMX_SIP_GPC, IMX_SIP_GPC_CORE_WAKE,
+			*cpumask_bits(mask), 0, 0, 0, 0, 0, &res);
+}
+
+static void imx_gpcv2_wake_request_fixup(void)
+{
+	struct regmap *iomux_gpr;
+
+	/* hijack the already registered smp cross call handler */
+	__gic_v3_smp_cross_call = __smp_cross_call;
+
+	/* register our workaround handler for smp cross call */
+	set_smp_cross_call(imx_gpcv2_raise_softirq);
+
+	iomux_gpr = syscon_regmap_lookup_by_compatible("fsl,imx6q-iomuxc-gpr");
+	if (!IS_ERR(iomux_gpr))
+		regmap_update_bits(iomux_gpr, IOMUXC_GPR1, IMX6Q_GPR1_GINT,
+					IMX6Q_GPR1_GINT);
+}
+
 static int imx_gpcv2_irq_set_wake(struct irq_data *d, unsigned int on)
 {
 	struct gpcv2_irqchip_data *cd = d->chip_data;
@@ -269,6 +308,9 @@ static int __init imx_gpcv2_irqchip_init(struct device_node *node,
 		cd->wakeup_sources[i] = ~0;
 	}
 
+	if (of_property_read_bool(node, "broken-wake-request-signals"))
+		imx_gpcv2_wake_request_fixup();
+
 	/* Let CORE0 as the default CPU to wake up by GPC */
 	cd->cpu2wakeup = GPC_IMR1_CORE0;
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
