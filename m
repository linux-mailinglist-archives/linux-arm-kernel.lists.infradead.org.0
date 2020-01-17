Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 671B11403D7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 07:11:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U0hV3XCTYcVAz8SzqV0M6XwcZ96scNGLq7m6ft9VDCA=; b=ul61mHLw7w0dVT
	SvtvLnfiums6lVYeJpFysR5lyYsHbqsI3o/Nls8/bCAD6le/he+x7jRloknUZamywwDfFdLHoFTY6
	3qgPxsrSog2DexNebrubRQqpm8slNHHjdqWE3WH0/KF/BY8k4lBG0MYElQ6WPj9pKoYHwFjjfBLbR
	XC5IzDi139uaWydJrw1+TL2/WpI8iYMXnL8Yh0PSJ4RtjpJ746Wy+M/uVy7um7e4Gx8+3gvKOxVOK
	GecSu0fRBRRKNpYm+oXWRGjFNrVbzSnojRgGF/IsfjEW6iDBcXIgvTzYQqI7y466kAr9EIo/c2Szs
	zFXW1RdQUp26FIgTD0Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isKqO-0004XC-9H; Fri, 17 Jan 2020 06:10:56 +0000
Received: from mail-eopbgr80071.outbound.protection.outlook.com ([40.107.8.71]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isKph-0002sc-6o
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 06:10:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hWSWLhbRC2gL+PpiR1bNAVInib7QP8ErigSN3CU+IBaeLRqTBL8OCvz7ed1AdTBnXaTkvPMT9K84TTAsNT4GsEXMtWECKdtxtWDzFhanp0Fhu2yOCWTgD5tJTd4RB2N9B/qD4tnl0UTO6ec59Lrc2KFfjRKsYL5vnvwZukq3nKYg6BSfBPFmJo2vHiW6l9AhbDhRAZgGV2yJPn96OoHhQ30YM2Vx/93qiESPcl8wW6Ej2OL9Hyr7EMH33l7QpNfQs2BpyVm0xjL2IdbCPSzY0laxfNHbGNyqf2ztVr1w/9a3J9DJ2sgvnagq9iUbejFm3TWH4yzFqkoIkdjFMYrrOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jlY53Yn/Ho4ilcrQ8kBH8ZVk4goSizXwLeZVRx56HmY=;
 b=f18go0HcnXZIgtEJm4COqD9C35SSoCiFnU53CBJNOE+34mrXd5h4kpLqlEpVEeeY01hoEhksjEkkI36LpH7UOu4ZDc0YN0c0Ev6rVOhrXFUFimTwoHfzyqT1TGc/6B/Fmsy9oprZmBi9ZXNQ2fNnuO+WyF+14YxQIsDNRM+YJNYHFXtwWwfdc1O2+9GA4uIBbTDzi4OAFGm3fMUTdZbnUrFiR+ABSU4HRS5OWWERYD78MhDMHz2wXhS5704MZGOMPyDta4Z24LrH4MtGmfUC+rYEOZMW/ErTOKiH1Qyes/+55G4qDwEbFF2fzOYa789Pt4n0ZaSLlkuNH0I885C7mw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jlY53Yn/Ho4ilcrQ8kBH8ZVk4goSizXwLeZVRx56HmY=;
 b=Z78oRWjZ2WcrkzkRa1SZ6uaPKoXG1Ce7x8KZ15zW0HOMUy85DL+1S68p0Vbv2Lhlo/OIIzuoxCl4AyhPKXq22LNyvGdENYY0rRZT33RjVB+2O6Qt5nVwGmBMyYdBnr1t/QXFvZmreutCLuoVBumccCZGyjWCTFDqlp+D5xGxWlQ=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4841.eurprd04.prod.outlook.com (20.176.232.219) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.20; Fri, 17 Jan 2020 06:10:10 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::5cb4:81c8:1618:5ca]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::5cb4:81c8:1618:5ca%7]) with mapi id 15.20.2644.023; Fri, 17 Jan 2020
 06:10:10 +0000
Received: from localhost.localdomain (119.31.174.71) by
 SG2PR01CA0102.apcprd01.prod.exchangelabs.com (2603:1096:3:15::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.19 via Frontend
 Transport; Fri, 17 Jan 2020 06:10:05 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: "maz@kernel.org" <maz@kernel.org>, "jason@lakedaemon.net"
 <jason@lakedaemon.net>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "robh@kernel.org"
 <robh@kernel.org>
Subject: [PATCH V6 2/2] drivers/irqchip: add NXP INTMUX interrupt multiplexer
 support
Thread-Topic: [PATCH V6 2/2] drivers/irqchip: add NXP INTMUX interrupt
 multiplexer support
Thread-Index: AQHVzPzFrIfh9Ea/kUOGD3qp7dRI6Q==
Date: Fri, 17 Jan 2020 06:10:10 +0000
Message-ID: <20200117060653.27485-3-qiangqing.zhang@nxp.com>
References: <20200117060653.27485-1-qiangqing.zhang@nxp.com>
In-Reply-To: <20200117060653.27485-1-qiangqing.zhang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: SG2PR01CA0102.apcprd01.prod.exchangelabs.com
 (2603:1096:3:15::28) To DB7PR04MB4618.eurprd04.prod.outlook.com
 (2603:10a6:5:38::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: bb8294ba-a0e8-465f-f723-08d79b13e822
x-ms-traffictypediagnostic: DB7PR04MB4841:|DB7PR04MB4841:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB48418D66B9211C59611E91F7E6310@DB7PR04MB4841.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 0285201563
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(396003)(366004)(376002)(136003)(199004)(189003)(1076003)(5660300002)(66446008)(6506007)(8676002)(478600001)(81156014)(81166006)(6512007)(6666004)(16526019)(186003)(2906002)(36756003)(86362001)(26005)(316002)(110136005)(54906003)(8936002)(6486002)(66946007)(71200400001)(64756008)(4326008)(7416002)(66556008)(66476007)(69590400006)(2616005)(956004)(52116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4841;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WIVi3rSepEIMWEmpu5MX9syIKLYh8z41I/k2o68WC6C6emgcc8Nu9kmtfmDHMerG6Mcjr5VojiNmyp1R9vuZSc5K/jc6mvXpgNlnEgBgO0NKQHJa3mrvTJ95iffXVK3R3/21m1mQQg6SHdFCscZJ2XUwUNA7CGSCJpH3R3RKMGPzwaykrvclsJxx2peRUxV2OiRuWo5i70kyri96TiGOuRf6bZMaFI2QcY615iBCj580UuOpZONxb9x0cvNT8NHbfc2FJm8jPTV5use33BDba81NTm3Q/axNmxMTmQL5EcE8MH+vwPVDqD84abNnGR9Ov0GtS/Aq0T8zENaz8TWCqvQhIt/B5se8ZOxqDofJtwgIwyZUzA42EV6jIbmgHn7ka8jfLNd+Kd/1gYuLv1TfD6KL3zY79CORe2DQO96gJOcHQ45LF2SzmmJs3tLFVsylPnPdXmobt+ESuM3mQ6Z79sgx+FhXw+Pl4Vo3vaGo0wIUOe7JgdgzeXdOhw8/E5qJ
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb8294ba-a0e8-465f-f723-08d79b13e822
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jan 2020 06:10:10.0682 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NeggG3ata/PUNYiLoaK+jSqTbrmPr1SE8UQf9LyZSs9mpbcXyw3qBkM7ETT6ffEdGCqitgRb1NuwVmlDa4wEBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4841
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_221013_300990_9FC787C6 
X-CRM114-Status: GOOD (  17.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.71 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Andy Duan <fugang.duan@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Interrupt Multiplexer (INTMUX) expands the number of peripherals
that can interrupt the core:
* The INTMUX has 8 channels that are assigned to 8 NVIC interrupt slots.
* Each INTMUX channel can receive up to 32 interrupt sources and has 1
  interrupt output.
* The INTMUX routes the interrupt sources to the interrupt outputs.

Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 drivers/irqchip/Kconfig          |   6 +
 drivers/irqchip/Makefile         |   1 +
 drivers/irqchip/irq-imx-intmux.c | 309 +++++++++++++++++++++++++++++++
 3 files changed, 316 insertions(+)
 create mode 100644 drivers/irqchip/irq-imx-intmux.c

diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
index ba152954324b..7e2b1e9d0b45 100644
--- a/drivers/irqchip/Kconfig
+++ b/drivers/irqchip/Kconfig
@@ -457,6 +457,12 @@ config IMX_IRQSTEER
 	help
 	  Support for the i.MX IRQSTEER interrupt multiplexer/remapper.
 
+config IMX_INTMUX
+	def_bool y if ARCH_MXC
+	select IRQ_DOMAIN
+	help
+	  Support for the i.MX INTMUX interrupt multiplexer.
+
 config LS1X_IRQ
 	bool "Loongson-1 Interrupt Controller"
 	depends on MACH_LOONGSON32
diff --git a/drivers/irqchip/Makefile b/drivers/irqchip/Makefile
index e806dda690ea..af976a79d1fb 100644
--- a/drivers/irqchip/Makefile
+++ b/drivers/irqchip/Makefile
@@ -100,6 +100,7 @@ obj-$(CONFIG_CSKY_MPINTC)		+= irq-csky-mpintc.o
 obj-$(CONFIG_CSKY_APB_INTC)		+= irq-csky-apb-intc.o
 obj-$(CONFIG_SIFIVE_PLIC)		+= irq-sifive-plic.o
 obj-$(CONFIG_IMX_IRQSTEER)		+= irq-imx-irqsteer.o
+obj-$(CONFIG_IMX_INTMUX)		+= irq-imx-intmux.o
 obj-$(CONFIG_MADERA_IRQ)		+= irq-madera.o
 obj-$(CONFIG_LS1X_IRQ)			+= irq-ls1x.o
 obj-$(CONFIG_TI_SCI_INTR_IRQCHIP)	+= irq-ti-sci-intr.o
diff --git a/drivers/irqchip/irq-imx-intmux.c b/drivers/irqchip/irq-imx-intmux.c
new file mode 100644
index 000000000000..c27577c81126
--- /dev/null
+++ b/drivers/irqchip/irq-imx-intmux.c
@@ -0,0 +1,309 @@
+// SPDX-License-Identifier: GPL-2.0
+// Copyright 2017 NXP
+
+/*                     INTMUX Block Diagram
+ *
+ *                               ________________
+ * interrupt source #  0  +---->|                |
+ *                        |     |                |
+ * interrupt source #  1  +++-->|                |
+ *            ...         | |   |   channel # 0  |--------->interrupt out # 0
+ *            ...         | |   |                |
+ *            ...         | |   |                |
+ * interrupt source # X-1 +++-->|________________|
+ *                        | | |
+ *                        | | |
+ *                        | | |  ________________
+ *                        +---->|                |
+ *                        | | | |                |
+ *                        | +-->|                |
+ *                        | | | |   channel # 1  |--------->interrupt out # 1
+ *                        | | +>|                |
+ *                        | | | |                |
+ *                        | | | |________________|
+ *                        | | |
+ *                        | | |
+ *                        | | |       ...
+ *                        | | |       ...
+ *                        | | |
+ *                        | | |  ________________
+ *                        +---->|                |
+ *                          | | |                |
+ *                          +-->|                |
+ *                            | |   channel # N  |--------->interrupt out # N
+ *                            +>|                |
+ *                              |                |
+ *                              |________________|
+ *
+ *
+ * N: Interrupt Channel Instance Number (N=7)
+ * X: Interrupt Source Number for each channel (X=32)
+ *
+ * The INTMUX interrupt multiplexer has 8 channels, each channel receives 32
+ * interrupt sources and generates 1 interrupt output.
+ *
+ */
+
+#include <linux/clk.h>
+#include <linux/interrupt.h>
+#include <linux/irq.h>
+#include <linux/irqchip/chained_irq.h>
+#include <linux/irqdomain.h>
+#include <linux/kernel.h>
+#include <linux/of_irq.h>
+#include <linux/of_platform.h>
+#include <linux/spinlock.h>
+
+#define CHANIER(n)	(0x10 + (0x40 * n))
+#define CHANIPR(n)	(0x20 + (0x40 * n))
+
+#define CHAN_MAX_NUM		0x8
+
+struct intmux_irqchip_data {
+	int			chanidx;
+	int			irq;
+	struct irq_domain	*domain;
+};
+
+struct intmux_data {
+	raw_spinlock_t			lock;
+	void __iomem			*regs;
+	struct clk			*ipg_clk;
+	int				channum;
+	struct intmux_irqchip_data	irqchip_data[];
+};
+
+static void imx_intmux_irq_mask(struct irq_data *d)
+{
+	struct intmux_irqchip_data *irqchip_data = d->chip_data;
+	int idx = irqchip_data->chanidx;
+	struct intmux_data *data = container_of(irqchip_data, struct intmux_data,
+						irqchip_data[idx]);
+	unsigned long flags;
+	void __iomem *reg;
+	u32 val;
+
+	raw_spin_lock_irqsave(&data->lock, flags);
+	reg = data->regs + CHANIER(idx);
+	val = readl_relaxed(reg);
+	/* disable the interrupt source of this channel */
+	val &= ~BIT(d->hwirq);
+	writel_relaxed(val, reg);
+	raw_spin_unlock_irqrestore(&data->lock, flags);
+}
+
+static void imx_intmux_irq_unmask(struct irq_data *d)
+{
+	struct intmux_irqchip_data *irqchip_data = d->chip_data;
+	int idx = irqchip_data->chanidx;
+	struct intmux_data *data = container_of(irqchip_data, struct intmux_data,
+						irqchip_data[idx]);
+	unsigned long flags;
+	void __iomem *reg;
+	u32 val;
+
+	raw_spin_lock_irqsave(&data->lock, flags);
+	reg = data->regs + CHANIER(idx);
+	val = readl_relaxed(reg);
+	/* enable the interrupt source of this channel */
+	val |= BIT(d->hwirq);
+	writel_relaxed(val, reg);
+	raw_spin_unlock_irqrestore(&data->lock, flags);
+}
+
+static struct irq_chip imx_intmux_irq_chip = {
+	.name		= "intmux",
+	.irq_mask	= imx_intmux_irq_mask,
+	.irq_unmask	= imx_intmux_irq_unmask,
+};
+
+static int imx_intmux_irq_map(struct irq_domain *h, unsigned int irq,
+			      irq_hw_number_t hwirq)
+{
+	irq_set_chip_data(irq, h->host_data);
+	irq_set_chip_and_handler(irq, &imx_intmux_irq_chip, handle_level_irq);
+
+	return 0;
+}
+
+static int imx_intmux_irq_xlate(struct irq_domain *d, struct device_node *node,
+				const u32 *intspec, unsigned int intsize,
+				unsigned long *out_hwirq, unsigned int *out_type)
+{
+	struct intmux_irqchip_data *irqchip_data = d->host_data;
+	int idx = irqchip_data->chanidx;
+	struct intmux_data *data = container_of(irqchip_data, struct intmux_data,
+						irqchip_data[idx]);
+
+	/*
+	 * two cells needed in interrupt specifier:
+	 * the 1st cell: hw interrupt number
+	 * the 2nd cell: channel index
+	 */
+	if (WARN_ON(intsize != 2))
+		return -EINVAL;
+
+	if (WARN_ON(intspec[1] >= data->channum))
+		return -EINVAL;
+
+	*out_hwirq = intspec[0];
+	*out_type = IRQ_TYPE_LEVEL_HIGH;
+
+	return 0;
+}
+
+static int imx_intmux_irq_select(struct irq_domain *d, struct irq_fwspec *fwspec,
+				 enum irq_domain_bus_token bus_token)
+{
+	struct intmux_irqchip_data *irqchip_data = d->host_data;
+
+	/* Not for us */
+	if (fwspec->fwnode != d->fwnode)
+		return false;
+
+	return irqchip_data->chanidx == fwspec->param[1];
+}
+
+static const struct irq_domain_ops imx_intmux_domain_ops = {
+	.map		= imx_intmux_irq_map,
+	.xlate		= imx_intmux_irq_xlate,
+	.select		= imx_intmux_irq_select,
+};
+
+static void imx_intmux_irq_handler(struct irq_desc *desc)
+{
+	struct intmux_irqchip_data *irqchip_data = irq_desc_get_handler_data(desc);
+	int idx = irqchip_data->chanidx;
+	struct intmux_data *data = container_of(irqchip_data, struct intmux_data,
+						irqchip_data[idx]);
+	unsigned long irqstat;
+	int pos, virq;
+
+	chained_irq_enter(irq_desc_get_chip(desc), desc);
+
+	/* read the interrupt source pending status of this channel */
+	irqstat = readl_relaxed(data->regs + CHANIPR(idx));
+
+	for_each_set_bit(pos, &irqstat, 32) {
+		virq = irq_find_mapping(irqchip_data->domain, pos);
+		if (virq)
+			generic_handle_irq(virq);
+	}
+
+	chained_irq_exit(irq_desc_get_chip(desc), desc);
+}
+
+static int imx_intmux_probe(struct platform_device *pdev)
+{
+	struct device_node *np = pdev->dev.of_node;
+	struct irq_domain *domain;
+	struct intmux_data *data;
+	int channum;
+	int i, ret;
+
+	channum = platform_irq_count(pdev);
+	if (channum == -EPROBE_DEFER) {
+		return -EPROBE_DEFER;
+	} else if (channum > CHAN_MAX_NUM) {
+		dev_err(&pdev->dev, "supports up to %d multiplex channels\n",
+			CHAN_MAX_NUM);
+		return -EINVAL;
+	}
+
+	data = devm_kzalloc(&pdev->dev, sizeof(*data) +
+			    channum * sizeof(data->irqchip_data[0]), GFP_KERNEL);
+	if (!data)
+		return -ENOMEM;
+
+	data->regs = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(data->regs)) {
+		dev_err(&pdev->dev, "failed to initialize reg\n");
+		return PTR_ERR(data->regs);
+	}
+
+	data->ipg_clk = devm_clk_get(&pdev->dev, "ipg");
+	if (IS_ERR(data->ipg_clk)) {
+		ret = PTR_ERR(data->ipg_clk);
+		if (ret != -EPROBE_DEFER)
+			dev_err(&pdev->dev, "failed to get ipg clk: %d\n", ret);
+		return ret;
+	}
+
+	data->channum = channum;
+	raw_spin_lock_init(&data->lock);
+
+	ret = clk_prepare_enable(data->ipg_clk);
+	if (ret) {
+		dev_err(&pdev->dev, "failed to enable ipg clk: %d\n", ret);
+		return ret;
+	}
+
+	for (i = 0; i < channum; i++) {
+		data->irqchip_data[i].chanidx = i;
+
+		data->irqchip_data[i].irq = irq_of_parse_and_map(np, i);
+		if (data->irqchip_data[i].irq <= 0) {
+			ret = -EINVAL;
+			dev_err(&pdev->dev, "failed to get irq\n");
+			goto out;
+		}
+
+		domain = irq_domain_add_linear(np, 32, &imx_intmux_domain_ops,
+					       &data->irqchip_data[i]);
+		if (!domain) {
+			ret = -ENOMEM;
+			dev_err(&pdev->dev, "failed to create IRQ domain\n");
+			goto out;
+		}
+		data->irqchip_data[i].domain = domain;
+
+		/* disable all interrupt sources of this channel firstly */
+		writel_relaxed(0, data->regs + CHANIER(i));
+
+		irq_set_chained_handler_and_data(data->irqchip_data[i].irq,
+						 imx_intmux_irq_handler,
+						 &data->irqchip_data[i]);
+	}
+
+	platform_set_drvdata(pdev, data);
+
+	return 0;
+out:
+	clk_disable_unprepare(data->ipg_clk);
+	return ret;
+}
+
+static int imx_intmux_remove(struct platform_device *pdev)
+{
+	struct intmux_data *data = platform_get_drvdata(pdev);
+	int i;
+
+	for (i = 0; i < data->channum; i++) {
+		/* disable all interrupt sources of this channel */
+		writel_relaxed(0, data->regs + CHANIER(i));
+
+		irq_set_chained_handler_and_data(data->irqchip_data[i].irq,
+						 NULL, NULL);
+
+		irq_domain_remove(data->irqchip_data[i].domain);
+	}
+
+	clk_disable_unprepare(data->ipg_clk);
+
+	return 0;
+}
+
+static const struct of_device_id imx_intmux_id[] = {
+	{ .compatible = "fsl,imx-intmux", },
+	{ /* sentinel */ },
+};
+
+static struct platform_driver imx_intmux_driver = {
+	.driver = {
+		.name = "imx-intmux",
+		.of_match_table = imx_intmux_id,
+	},
+	.probe = imx_intmux_probe,
+	.remove = imx_intmux_remove,
+};
+builtin_platform_driver(imx_intmux_driver);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
