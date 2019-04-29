Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5921AE809
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 18:45:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oX3ZYiMQdaCAQTqauyv7rjT0s16gUOsRZf54T6CVITQ=; b=LMmDECVotkgjr6
	dh96cnZNjxibze618W6g/Bs0XMiWmRK5MKpagIoDENIaJ50DF1aub8aQYEs7lmYtLAWFh82lnhMRy
	msTrDvTt+jkS09s0pU+RWhfA7UT2Us/2YkLJT2npQGKuIvVWvBEUM3g2zk5Li1QcBs38a+oQJGVLP
	wnkZoni/qExpFgmzSIGXNO18BpG8cd5+HEn4BsERkLDPqD8+zxBMOiCnHOU5PO5KKvhQT+CrvPJp3
	IGlz2NS/cR8pDyN+6AdK8mo7LdXXmlCQiifcE8klzHIaf404yAqAy/WBKMEJ58dQAl0ydkLDn5BRV
	fvBjb1bU+6LyTguGNNoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL9On-0001n5-EI; Mon, 29 Apr 2019 16:45:01 +0000
Received: from mail-eopbgr10040.outbound.protection.outlook.com ([40.107.1.40]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL9OQ-0001XU-J5
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 16:44:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Nm8ENeZJY0gq/yrAFqr3uQqS3QNaZiDHTyXgO2pGpQw=;
 b=TU7gNRo4NbD3GIIkDyD/kJojV9Dws/qdoHuZCvhymfo4Qf1rkVKCRq4rnC+XDQHp/8eee671v7eSXdHBVfz7TchX9Mb5VRming0gjI87fVVsiylHBBcglTCg6wuRC7rfIWKW9JH3s2psQjDzFVPXBh7q+QzMW8W9Jqnm6RrPmGo=
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com (20.177.49.159) by
 VI1PR04MB5791.eurprd04.prod.outlook.com (20.178.127.225) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.12; Mon, 29 Apr 2019 16:44:32 +0000
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c]) by VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c%7]) with mapi id 15.20.1835.018; Mon, 29 Apr 2019
 16:44:32 +0000
From: Frank Li <frank.li@nxp.com>
To: "mark.rutland@arm.com" <mark.rutland@arm.com>, "will.deacon@arm.com"
 <will.deacon@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 dl-linux-imx <linux-imx@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "lznuaa@gmail.com" <lznuaa@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH V9 2/4] drivers/perf: imx_ddr: Add ddr performance counter
 support
Thread-Topic: [PATCH V9 2/4] drivers/perf: imx_ddr: Add ddr performance
 counter support
Thread-Index: AQHU/qrRWWwFZjSUiUaX06gAgZvPlg==
Date: Mon, 29 Apr 2019 16:44:32 +0000
Message-ID: <1556556252-22868-2-git-send-email-Frank.Li@nxp.com>
References: <1556556252-22868-1-git-send-email-Frank.Li@nxp.com>
In-Reply-To: <1556556252-22868-1-git-send-email-Frank.Li@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SN6PR01CA0009.prod.exchangelabs.com (2603:10b6:805:b6::22)
 To VI1PR04MB4910.eurprd04.prod.outlook.com
 (2603:10a6:803:56::31)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=frank.li@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.5.2
x-originating-ip: [64.157.242.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d3502336-180d-4905-028f-08d6ccc1f42b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5791; 
x-ms-traffictypediagnostic: VI1PR04MB5791:
x-microsoft-antispam-prvs: <VI1PR04MB579157E48BF147D96B72905988390@VI1PR04MB5791.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1850;
x-forefront-prvs: 0022134A87
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(376002)(366004)(396003)(136003)(346002)(199004)(189003)(68736007)(102836004)(7736002)(305945005)(7416002)(2201001)(86362001)(25786009)(4326008)(99286004)(186003)(110136005)(316002)(3846002)(66946007)(66476007)(66556008)(6512007)(6486002)(26005)(6116002)(76176011)(64756008)(66446008)(73956011)(52116002)(386003)(53946003)(6506007)(6436002)(2906002)(53936002)(36756003)(2616005)(476003)(97736004)(11346002)(2501003)(486006)(81156014)(8676002)(50226002)(81166006)(8936002)(446003)(14444005)(5024004)(71190400001)(5660300002)(71200400001)(478600001)(14454004)(256004)(30864003)(66066001)(921003)(1121003)(579004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5791;
 H:VI1PR04MB4910.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: PNBQocSHCvTezrZDdD+ZVgbvfL/R/N4olBm6j+e537c2jW2sgM3A+eU4DfaXWXkqCSmaWkohpuc8PJf5XFg4RIF9kdALcBFxhZrlpYqKfWK3WS1WLxOXq2PIrMtjLqkn/yJX/GGVuNslOqoUwR7fYwxV9N9ty3CXwmRSLOCW4A+0wISKupV8M0mcOUKtBHs37RC7IHnp7zy+gOaEOuHZxWmgQCsSTi4rqYVKA/JZKnPtQBgHSNyoL6LxTfgZ7g7lsjWd6hE6i9VL+iToZTwEnSkWeHDmqXGBeyDf2MT6Wrwky8ekImffnAH+8Fqw3I7nfeFkXulLoily1ygMzLLIoMOfSH5303+0M3TMwWdljWYWM3T682+WXvYCoBkQB2HqeluMMWTQQtLzTmvK8nRMvKNKcR9ppaEztT7QsGnklF8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d3502336-180d-4905-028f-08d6ccc1f42b
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2019 16:44:32.1150 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5791
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_094438_798602_83C683AA 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.40 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Frank Li <frank.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add ddr performance monitor support for iMX8QXP

There are 4 counters for ddr perfomance events.
counter 0 is dedicated for cycles.
you choose any up to 3 no cycles events.

for example:

perf stat -a -e ddr0/read-cycles/,ddr0/write-cycles/,ddr0/precharge/ ls
perf stat -a -e ddr0/cycles/,ddr0/read-access/,ddr0/write-access/ ls

Support below events.

  ddr0/activate/                                     [Kernel PMU event]
  ddr0/axid-read/                                    [Kernel PMU event]
  ddr0/axid-write/                                   [Kernel PMU event]
  ddr0/cycles/                                       [Kernel PMU event]
  ddr0/hp-read-credit-cnt/                           [Kernel PMU event]
  ddr0/hp-read/                                      [Kernel PMU event]
  ddr0/hp-req-nodcredit/                             [Kernel PMU event]
  ddr0/hp-xact-credit/                               [Kernel PMU event]
  ddr0/load-mode/                                    [Kernel PMU event]
  ddr0/lp-read-credit-cnt/                           [Kernel PMU event]
  ddr0/lp-req-nocredit/                              [Kernel PMU event]
  ddr0/lp-xact-credit/                               [Kernel PMU event]
  ddr0/mwr/                                          [Kernel PMU event]
  ddr0/precharge/                                    [Kernel PMU event]
  ddr0/raw-hazard/                                   [Kernel PMU event]
  ddr0/read-access/                                  [Kernel PMU event]
  ddr0/read-activate/                                [Kernel PMU event]
  ddr0/read-command/                                 [Kernel PMU event]
  ddr0/read-cycles/                                  [Kernel PMU event]
  ddr0/read-modify-write-command/                    [Kernel PMU event]
  ddr0/read-queue-depth/                             [Kernel PMU event]
  ddr0/read-write-transition/                        [Kernel PMU event]
  ddr0/read/                                         [Kernel PMU event]
  ddr0/refresh/                                      [Kernel PMU event]
  ddr0/selfresh/                                     [Kernel PMU event]
  ddr0/wr-xact-credit/                               [Kernel PMU event]
  ddr0/write-access/                                 [Kernel PMU event]
  ddr0/write-command/                                [Kernel PMU event]
  ddr0/write-credit-cnt/                             [Kernel PMU event]
  ddr0/write-cycles/                                 [Kernel PMU event]
  ddr0/write-queue-depth/                            [Kernel PMU event]
  ddr0/write/

Signed-off-by: Frank Li <Frank.Li@nxp.com>
---
No change from V8 to V9

Change from v7 to v8
 * remove unused define
 * change total_events to active_events, change active_events to events
 * remove flags, 
 * fix multi line comments code sytle
 * add pmu_enable\disable function
 * disable event at irq handle
 * remove counter check at ddr_perf_free_counter
 * remove pmu->irq check
 * add group check

Change from v6 to v7
 * added irq affinity handle, ref arm-ccn.c
 * added IRQF_NOBALANCING | IRQF_NO_THREAD
 * added ida_simple_remove at failure path

Change from v5 to v6
 * fix insmod\rmmod problem
 * remove randunt register read at irq handle
 * change u32 irq to int
 * devm_request_irq use default flags.

Change from v4 to v5
 * Remove AXI ID filter function

Change from v3 to v4
 * Change FSL_IMX8_DDR_PERF to FSL_IMX8_DDR_PMU
 * sort include
 * remove struct fsl_ddr_devtype_data
 * Added comment need disable control first
 * Added comment about must enable cycle counter
 * Added macro for EVENT_AXI_READ, remove hardcode 0x41 and 0x42
 * Added comment about cycle counter is fastest one

Change from v2 to v3
 * remove kfree

Change from V1 to V2
 * update Kconfig by use i.MX8 instead of i.MX8 QXP
 * remove gpl statememnt since SPDX tag
 * use dev_kzalloc
 * use dev_err
 * commit message show axi_read 0x41\axi_write 0x42
 * commit message show cycles must be enabled
 * Irq only issue at cycles overflow
 * use NUM_COUNTER
 * use devm_request_irq
 * add hotplug callback to handle context migration
 drivers/perf/Kconfig             |   7 +
 drivers/perf/Makefile            |   1 +
 drivers/perf/fsl_imx8_ddr_perf.c | 589 +++++++++++++++++++++++++++++++++++++++
 3 files changed, 597 insertions(+)
 create mode 100644 drivers/perf/fsl_imx8_ddr_perf.c

diff --git a/drivers/perf/Kconfig b/drivers/perf/Kconfig
index a94e586..9bc3785 100644
--- a/drivers/perf/Kconfig
+++ b/drivers/perf/Kconfig
@@ -70,6 +70,13 @@ config ARM_DSU_PMU
 	  system, control logic. The PMU allows counting various events related
 	  to DSU.
 
+config FSL_IMX8_DDR_PMU
+	tristate "Freescale i.MX8 DDR perf monitor"
+	depends on ARCH_MXC
+	  help
+	  Provides support for ddr perfomance monitor in i.MX8. Provide memory
+	  througput information.
+
 config HISI_PMU
        bool "HiSilicon SoC PMU"
        depends on ARM64 && ACPI
diff --git a/drivers/perf/Makefile b/drivers/perf/Makefile
index 3048994..2ebb4de 100644
--- a/drivers/perf/Makefile
+++ b/drivers/perf/Makefile
@@ -5,6 +5,7 @@ obj-$(CONFIG_ARM_DSU_PMU) += arm_dsu_pmu.o
 obj-$(CONFIG_ARM_PMU) += arm_pmu.o arm_pmu_platform.o
 obj-$(CONFIG_ARM_PMU_ACPI) += arm_pmu_acpi.o
 obj-$(CONFIG_ARM_SMMU_V3_PMU) += arm_smmuv3_pmu.o
+obj-$(CONFIG_FSL_IMX8_DDR_PMU) += fsl_imx8_ddr_perf.o
 obj-$(CONFIG_HISI_PMU) += hisilicon/
 obj-$(CONFIG_QCOM_L2_PMU)	+= qcom_l2_pmu.o
 obj-$(CONFIG_QCOM_L3_PMU) += qcom_l3_pmu.o
diff --git a/drivers/perf/fsl_imx8_ddr_perf.c b/drivers/perf/fsl_imx8_ddr_perf.c
new file mode 100644
index 0000000..087d75a
--- /dev/null
+++ b/drivers/perf/fsl_imx8_ddr_perf.c
@@ -0,0 +1,589 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2017 NXP
+ * Copyright 2016 Freescale Semiconductor, Inc.
+ */
+
+#include <linux/init.h>
+#include <linux/interrupt.h>
+#include <linux/io.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_address.h>
+#include <linux/of_device.h>
+#include <linux/of_irq.h>
+#include <linux/perf_event.h>
+#include <linux/slab.h>
+
+#define COUNTER_CNTL		0x0
+#define COUNTER_READ		0x20
+
+#define COUNTER_DPCR1		0x30
+
+#define CNTL_OVER		0x1
+#define CNTL_CLEAR		0x2
+#define CNTL_EN			0x4
+#define CNTL_EN_MASK		0xFFFFFFFB
+#define CNTL_CLEAR_MASK		0xFFFFFFFD
+#define CNTL_OVER_MASK		0xFFFFFFFE
+
+#define CNTL_CSV_SHIFT		24
+#define CNTL_CSV_MASK		(0xFF << CNTL_CSV_SHIFT)
+
+#define EVENT_CYCLES_ID		0
+#define EVENT_CYCLES_COUNTER	0
+#define NUM_COUNTERS		4
+
+#define to_ddr_pmu(p)		container_of(p, struct ddr_pmu, pmu)
+
+#define DDR_PERF_DEV_NAME	"ddr_perf"
+
+static DEFINE_IDA(ddr_ida);
+
+PMU_EVENT_ATTR_STRING(cycles, ddr_perf_cycles, "event=0x00");
+PMU_EVENT_ATTR_STRING(selfresh, ddr_perf_selfresh, "event=0x01");
+PMU_EVENT_ATTR_STRING(read-access, ddr_perf_read_accesses, "event=0x04");
+PMU_EVENT_ATTR_STRING(write-access, ddr_perf_write_accesses, "event=0x05");
+PMU_EVENT_ATTR_STRING(read-queue-depth, ddr_perf_read_queue_depth,
+			"event=0x08");
+PMU_EVENT_ATTR_STRING(write-queue-depth, ddr_perf_write_queue_depth,
+			"event=0x09");
+PMU_EVENT_ATTR_STRING(lp-read-credit-cnt, ddr_perf_lp_read_credit_cnt,
+			"event=0x10");
+PMU_EVENT_ATTR_STRING(hp-read-credit-cnt, ddr_perf_hp_read_credit_cnt,
+			"event=0x11");
+PMU_EVENT_ATTR_STRING(write-credit-cnt, ddr_perf_write_credit_cnt,
+			"event=0x12");
+PMU_EVENT_ATTR_STRING(read-command, ddr_perf_read_command, "event=0x20");
+PMU_EVENT_ATTR_STRING(write-command, ddr_perf_write_command, "event=0x21");
+PMU_EVENT_ATTR_STRING(read-modify-write-command,
+		ddr_perf_read_modify_write_command, "event=0x22");
+PMU_EVENT_ATTR_STRING(hp-read, ddr_perf_hp_read, "event=0x23");
+PMU_EVENT_ATTR_STRING(hp-req-nodcredit, ddr_perf_hp_req_nocredit, "event=0x24");
+PMU_EVENT_ATTR_STRING(hp-xact-credit, ddr_perf_hp_xact_credit, "event=0x25");
+PMU_EVENT_ATTR_STRING(lp-req-nocredit, ddr_perf_lp_req_nocredit, "event=0x26");
+PMU_EVENT_ATTR_STRING(lp-xact-credit, ddr_perf_lp_xact_credit, "event=0x27");
+PMU_EVENT_ATTR_STRING(wr-xact-credit, ddr_perf_wr_xact_credit, "event=0x29");
+PMU_EVENT_ATTR_STRING(read-cycles, ddr_perf_read_cycles, "event=0x2a");
+PMU_EVENT_ATTR_STRING(write-cycles, ddr_perf_write_cycles, "event=0x2b");
+PMU_EVENT_ATTR_STRING(read-write-transition, ddr_perf_read_write_transition,
+			"event=0x30");
+PMU_EVENT_ATTR_STRING(precharge, ddr_perf_precharge, "event=0x31");
+PMU_EVENT_ATTR_STRING(activate, ddr_perf_activate, "event=0x32");
+PMU_EVENT_ATTR_STRING(load-mode, ddr_perf_load_mode, "event=0x33");
+PMU_EVENT_ATTR_STRING(mwr, ddr_perf_mwr, "event=0x34");
+PMU_EVENT_ATTR_STRING(read, ddr_perf_read, "event=0x35");
+PMU_EVENT_ATTR_STRING(read-activate, ddr_perf_read_activate, "event=0x36");
+PMU_EVENT_ATTR_STRING(refresh, ddr_perf_refresh, "event=0x37");
+PMU_EVENT_ATTR_STRING(write, ddr_perf_write, "event=0x38");
+PMU_EVENT_ATTR_STRING(raw-hazard, ddr_perf_raw_hazard, "event=0x39");
+
+static const struct of_device_id imx_ddr_pmu_dt_ids[] = {
+	{ .compatible = "fsl,imx8-ddr-pmu",},
+	{ .compatible = "fsl,imx8m-ddr-pmu",},
+	{ /* sentinel */ }
+};
+
+struct ddr_pmu {
+	struct pmu pmu;
+	void __iomem *base;
+	unsigned int cpu;
+	struct	hlist_node node;
+	struct	device *dev;
+	struct perf_event *events[NUM_COUNTERS];
+	int active_events;
+	enum cpuhp_state cpuhp_state;
+	int irq;
+	int id;
+};
+
+static ssize_t ddr_perf_cpumask_show(struct device *dev,
+				struct device_attribute *attr, char *buf)
+{
+	struct ddr_pmu *pmu = dev_get_drvdata(dev);
+
+	return cpumap_print_to_pagebuf(true, buf, cpumask_of(pmu->cpu));
+}
+
+static struct device_attribute ddr_perf_cpumask_attr =
+	__ATTR(cpumask, 0444, ddr_perf_cpumask_show, NULL);
+
+static struct attribute *ddr_perf_cpumask_attrs[] = {
+	&ddr_perf_cpumask_attr.attr,
+	NULL,
+};
+
+static struct attribute_group ddr_perf_cpumask_attr_group = {
+	.attrs = ddr_perf_cpumask_attrs,
+};
+
+static struct attribute *ddr_perf_events_attrs[] = {
+	&ddr_perf_cycles.attr.attr,
+	&ddr_perf_selfresh.attr.attr,
+	&ddr_perf_read_accesses.attr.attr,
+	&ddr_perf_write_accesses.attr.attr,
+	&ddr_perf_read_queue_depth.attr.attr,
+	&ddr_perf_write_queue_depth.attr.attr,
+	&ddr_perf_lp_read_credit_cnt.attr.attr,
+	&ddr_perf_hp_read_credit_cnt.attr.attr,
+	&ddr_perf_write_credit_cnt.attr.attr,
+	&ddr_perf_read_command.attr.attr,
+	&ddr_perf_write_command.attr.attr,
+	&ddr_perf_read_modify_write_command.attr.attr,
+	&ddr_perf_hp_read.attr.attr,
+	&ddr_perf_hp_req_nocredit.attr.attr,
+	&ddr_perf_hp_xact_credit.attr.attr,
+	&ddr_perf_lp_req_nocredit.attr.attr,
+	&ddr_perf_lp_xact_credit.attr.attr,
+	&ddr_perf_wr_xact_credit.attr.attr,
+	&ddr_perf_read_cycles.attr.attr,
+	&ddr_perf_write_cycles.attr.attr,
+	&ddr_perf_read_write_transition.attr.attr,
+	&ddr_perf_precharge.attr.attr,
+	&ddr_perf_activate.attr.attr,
+	&ddr_perf_load_mode.attr.attr,
+	&ddr_perf_mwr.attr.attr,
+	&ddr_perf_read.attr.attr,
+	&ddr_perf_read_activate.attr.attr,
+	&ddr_perf_refresh.attr.attr,
+	&ddr_perf_write.attr.attr,
+	&ddr_perf_raw_hazard.attr.attr,
+	NULL,
+};
+
+static struct attribute_group ddr_perf_events_attr_group = {
+	.name = "events",
+	.attrs = ddr_perf_events_attrs,
+};
+
+PMU_FORMAT_ATTR(event, "config:0-63");
+
+static struct attribute *ddr_perf_format_attrs[] = {
+	&format_attr_event.attr,
+	NULL,
+};
+
+static struct attribute_group ddr_perf_format_attr_group = {
+	.name = "format",
+	.attrs = ddr_perf_format_attrs,
+};
+
+static const struct attribute_group *attr_groups[] = {
+	&ddr_perf_events_attr_group,
+	&ddr_perf_format_attr_group,
+	&ddr_perf_cpumask_attr_group,
+	NULL,
+};
+
+static u32 ddr_perf_alloc_counter(struct ddr_pmu *pmu, int event)
+{
+	int i;
+
+	/*
+	 * Always map cycle event to counter 0
+	 * Cycles counter is dedicated for cycle event
+	 * can't used for the other events
+	 */
+	if (event == EVENT_CYCLES_ID) {
+		if (pmu->events[EVENT_CYCLES_COUNTER] == NULL)
+			return EVENT_CYCLES_COUNTER;
+		else
+			return -ENOENT;
+	}
+
+	for (i = 1; i < NUM_COUNTERS; i++) {
+		if (pmu->events[i] == NULL)
+			return i;
+	}
+
+	return -ENOENT;
+}
+
+static u32 ddr_perf_free_counter(struct ddr_pmu *pmu, int counter)
+{
+	pmu->events[counter] = NULL;
+
+	return 0;
+}
+
+static u32 ddr_perf_read_counter(struct ddr_pmu *pmu, int counter)
+{
+	return readl(pmu->base + COUNTER_READ + counter * 4);
+}
+
+static int ddr_perf_event_init(struct perf_event *event)
+{
+	struct ddr_pmu *pmu = to_ddr_pmu(event->pmu);
+	struct hw_perf_event *hwc = &event->hw;
+	struct perf_event *sibling;
+
+	if (event->attr.type != event->pmu->type)
+		return -ENOENT;
+
+	if (is_sampling_event(event) || event->attach_state & PERF_ATTACH_TASK)
+		return -EOPNOTSUPP;
+
+	if (event->cpu < 0) {
+		dev_warn(pmu->dev, "Can't provide per-task data!\n");
+		return -EOPNOTSUPP;
+	}
+
+	if (event->attr.exclude_user        ||
+	    event->attr.exclude_kernel      ||
+	    event->attr.exclude_hv          ||
+	    event->attr.exclude_idle        ||
+	    event->attr.exclude_host        ||
+	    event->attr.exclude_guest       ||
+	    event->attr.sample_period)
+		return -EINVAL;
+
+	/*
+	 * We must NOT create groups containing mixed PMUs, although software
+	 * events are acceptable (for example to create a CCN group
+	 * periodically read when a hrtimer aka cpu-clock leader triggers).
+	 */
+	if (event->group_leader->pmu != event->pmu &&
+			!is_software_event(event->group_leader))
+		return -EINVAL;
+
+	for_each_sibling_event(sibling, event->group_leader) {
+		if (sibling->pmu != event->pmu &&
+				!is_software_event(sibling))
+			return -EINVAL;
+	}
+
+	event->cpu = pmu->cpu;
+	hwc->idx = -1;
+
+	return 0;
+}
+
+
+static void ddr_perf_event_update(struct perf_event *event)
+{
+	struct ddr_pmu *pmu = to_ddr_pmu(event->pmu);
+	struct hw_perf_event *hwc = &event->hw;
+	u64 delta, prev_raw_count, new_raw_count;
+	int counter = hwc->idx;
+
+	do {
+		prev_raw_count = local64_read(&hwc->prev_count);
+		new_raw_count = ddr_perf_read_counter(pmu, counter);
+	} while (local64_cmpxchg(&hwc->prev_count, prev_raw_count,
+			new_raw_count) != prev_raw_count);
+
+	delta = (new_raw_count - prev_raw_count) & 0xFFFFFFFF;
+
+	local64_add(delta, &event->count);
+}
+
+static void ddr_perf_event_enable(struct ddr_pmu *pmu, int config,
+				  int counter, bool enable)
+{
+	u8 reg = counter * 4 + COUNTER_CNTL;
+	int val;
+
+	if (enable) {
+		/*
+		 * must disable first, then enable again
+		 * otherwise, cycle counter will not work
+		 * if previous state is enabled.
+		 */
+		writel(0, pmu->base + reg);
+		val = CNTL_EN | CNTL_CLEAR;
+		val |= (config << CNTL_CSV_SHIFT) & CNTL_CSV_MASK;
+	} else {
+		/* Disable counter */
+		val = readl(pmu->base + reg) & CNTL_EN_MASK;
+	}
+
+	writel(val, pmu->base + reg);
+}
+
+static void ddr_perf_event_start(struct perf_event *event, int flags)
+{
+	struct ddr_pmu *pmu = to_ddr_pmu(event->pmu);
+	struct hw_perf_event *hwc = &event->hw;
+	int counter = hwc->idx;
+
+	local64_set(&hwc->prev_count, 0);
+
+	ddr_perf_event_enable(pmu, event->attr.config, counter, true);
+}
+
+static int ddr_perf_event_add(struct perf_event *event, int flags)
+{
+	struct ddr_pmu *pmu = to_ddr_pmu(event->pmu);
+	struct hw_perf_event *hwc = &event->hw;
+	int counter;
+	int cfg = event->attr.config;
+
+	counter = ddr_perf_alloc_counter(pmu, cfg);
+	if (counter < 0) {
+		dev_dbg(pmu->dev, "There are not enough counters\n");
+		return -EOPNOTSUPP;
+	}
+
+	pmu->events[counter] = event;
+	pmu->active_events++;
+	hwc->idx = counter;
+
+	if (flags & PERF_EF_START)
+		ddr_perf_event_start(event, flags);
+
+	local64_set(&hwc->prev_count, ddr_perf_read_counter(pmu, counter));
+
+	return 0;
+}
+
+static void ddr_perf_event_stop(struct perf_event *event, int flags)
+{
+	struct ddr_pmu *pmu = to_ddr_pmu(event->pmu);
+	struct hw_perf_event *hwc = &event->hw;
+	int counter = hwc->idx;
+
+	ddr_perf_event_enable(pmu, event->attr.config, counter, false);
+	ddr_perf_event_update(event);
+}
+
+static void ddr_perf_event_del(struct perf_event *event, int flags)
+{
+	struct ddr_pmu *pmu = to_ddr_pmu(event->pmu);
+	struct hw_perf_event *hwc = &event->hw;
+	int counter = hwc->idx;
+
+	ddr_perf_event_stop(event, PERF_EF_UPDATE);
+
+	ddr_perf_free_counter(pmu, counter);
+	pmu->active_events--;
+	hwc->idx = -1;
+}
+
+static void ddr_perf_pmu_enable(struct pmu *pmu)
+{
+	struct ddr_pmu *ddr_pmu = to_ddr_pmu(pmu);
+
+	/* enable cycle counter if cycle is not active event list */
+	if (ddr_pmu->events[EVENT_CYCLES_COUNTER] == NULL)
+		ddr_perf_event_enable(ddr_pmu,
+				      EVENT_CYCLES_ID,
+				      EVENT_CYCLES_COUNTER,
+				      true);
+}
+
+static void ddr_perf_pmu_disable(struct pmu *pmu)
+{
+	struct ddr_pmu *ddr_pmu = to_ddr_pmu(pmu);
+
+	if (ddr_pmu->events[EVENT_CYCLES_COUNTER] == NULL)
+		ddr_perf_event_enable(ddr_pmu,
+				      EVENT_CYCLES_ID,
+				      EVENT_CYCLES_COUNTER,
+				      false);
+}
+
+static int ddr_perf_init(struct ddr_pmu *pmu, void __iomem *base,
+			 struct device *dev)
+{
+	*pmu = (struct ddr_pmu) {
+		.pmu = (struct pmu) {
+			.task_ctx_nr = perf_invalid_context,
+			.attr_groups = attr_groups,
+			.event_init  = ddr_perf_event_init,
+			.add	     = ddr_perf_event_add,
+			.del	     = ddr_perf_event_del,
+			.start	     = ddr_perf_event_start,
+			.stop	     = ddr_perf_event_stop,
+			.read	     = ddr_perf_event_update,
+			.pmu_enable  = ddr_perf_pmu_enable,
+			.pmu_disable = ddr_perf_pmu_disable,
+		},
+		.base = base,
+		.dev = dev,
+	};
+
+	pmu->id = ida_simple_get(&ddr_ida, 0, 0, GFP_KERNEL);
+	return pmu->id;
+}
+
+static irqreturn_t ddr_perf_irq_handler(int irq, void *p)
+{
+	int i;
+	struct ddr_pmu *pmu = (struct ddr_pmu *) p;
+	struct perf_event *event, *cycle_event = NULL;
+
+	/* all counter will stop if cycle counter disabled */
+	ddr_perf_event_enable(pmu,
+			      EVENT_CYCLES_ID,
+			      EVENT_CYCLES_COUNTER,
+			      false);
+	/*
+	 * When the cycle counter overflows, all counters are stopped,
+	 * and an IRQ is raised. If any other counter overflows, it
+	 * continues counting, and no IRQ is raised.
+	 *
+	 * Cycles occur at least 4 times as often as other events, so we
+	 * can update all events on a cycle counter overflow and not
+	 * lose events.
+	 *
+	 */
+	for (i = 0; i < NUM_COUNTERS; i++) {
+
+		if (!pmu->events[i])
+			continue;
+
+		event = pmu->events[i];
+
+		ddr_perf_event_update(event);
+
+		if (event->hw.idx == EVENT_CYCLES_COUNTER)
+			cycle_event = event;
+	}
+
+	ddr_perf_event_enable(pmu,
+			      EVENT_CYCLES_ID,
+			      EVENT_CYCLES_COUNTER,
+			      true);
+	if (cycle_event)
+		ddr_perf_event_update(cycle_event);
+
+	return IRQ_HANDLED;
+}
+
+static int ddr_perf_offline_cpu(unsigned int cpu, struct hlist_node *node)
+{
+	struct ddr_pmu *pmu = hlist_entry_safe(node, struct ddr_pmu, node);
+	int target;
+
+	if (cpu != pmu->cpu)
+		return 0;
+
+	target = cpumask_any_but(cpu_online_mask, cpu);
+	if (target >= nr_cpu_ids)
+		return 0;
+
+	perf_pmu_migrate_context(&pmu->pmu, cpu, target);
+	pmu->cpu = target;
+
+	WARN_ON(irq_set_affinity_hint(pmu->irq, cpumask_of(pmu->cpu)));
+
+	return 0;
+}
+
+static int ddr_perf_probe(struct platform_device *pdev)
+{
+	struct ddr_pmu *pmu;
+	struct device_node *np;
+	void __iomem *base;
+	struct resource *iomem;
+	char *name;
+	char *hpname;
+	int num;
+	int ret;
+	int irq;
+
+	iomem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	base = devm_ioremap_resource(&pdev->dev, iomem);
+	if (IS_ERR(base))
+		return PTR_ERR(base);
+
+	np = pdev->dev.of_node;
+
+	pmu = devm_kzalloc(&pdev->dev, sizeof(*pmu), GFP_KERNEL);
+	if (!pmu)
+		return -ENOMEM;
+
+	num = ddr_perf_init(pmu, base, &pdev->dev);
+
+	platform_set_drvdata(pdev, pmu);
+
+	name = devm_kasprintf(&pdev->dev, GFP_KERNEL, "ddr%d", num);
+	if (!name)
+		return -ENOMEM;
+
+	hpname = devm_kasprintf(&pdev->dev, GFP_KERNEL,
+				"perf/imx/ddr%d:online", num);
+	if (!hpname)
+		return -ENOMEM;
+
+	pmu->cpu = raw_smp_processor_id();
+	ret = cpuhp_setup_state_multi(CPUHP_AP_ONLINE_DYN, hpname, NULL,
+					 ddr_perf_offline_cpu);
+
+	if (ret < 0) {
+		dev_err(&pdev->dev, "cpuhp_setup_state_multi failed\n");
+		goto ddr_perf_err;
+	}
+
+	pmu->cpuhp_state = ret;
+
+	/* Register the pmu instance for cpu hotplug */
+	cpuhp_state_add_instance_nocalls(pmu->cpuhp_state, &pmu->node);
+
+	ret = perf_pmu_register(&pmu->pmu, name, -1);
+	if (ret)
+		goto ddr_perf_err;
+
+	/* Request irq */
+	irq = of_irq_get(np, 0);
+	if (irq < 0) {
+		dev_err(&pdev->dev, "Failed to get irq: %d", irq);
+		ret = irq;
+		goto ddr_perf_irq_err;
+	}
+
+	ret = devm_request_irq(&pdev->dev, irq,
+					ddr_perf_irq_handler,
+					IRQF_NOBALANCING | IRQF_NO_THREAD,
+					DDR_PERF_DEV_NAME,
+					pmu);
+	if (ret < 0) {
+		dev_err(&pdev->dev, "Request irq failed: %d", ret);
+		goto ddr_perf_irq_err;
+	}
+
+	pmu->irq = irq;
+	ret = irq_set_affinity_hint(pmu->irq, cpumask_of(pmu->cpu));
+	if (ret) {
+		dev_err(pmu->dev, "Failed to set interrupt affinity!\n");
+		goto ddr_perf_irq_err;
+	}
+
+	return 0;
+
+ddr_perf_irq_err:
+	perf_pmu_unregister(&(pmu->pmu));
+
+ddr_perf_err:
+	if (pmu->cpuhp_state)
+		cpuhp_state_remove_instance_nocalls(pmu->cpuhp_state, &pmu->node);
+
+	ida_simple_remove(&ddr_ida, pmu->id);
+	dev_warn(&pdev->dev, "i.MX8 DDR Perf PMU failed (%d), disabled\n", ret);
+	return ret;
+}
+
+static int ddr_perf_remove(struct platform_device *pdev)
+{
+	struct ddr_pmu *pmu = platform_get_drvdata(pdev);
+
+	cpuhp_state_remove_instance_nocalls(pmu->cpuhp_state, &pmu->node);
+	irq_set_affinity_hint(pmu->irq, NULL);
+
+	perf_pmu_unregister(&pmu->pmu);
+
+	ida_simple_remove(&ddr_ida, pmu->id);
+	return 0;
+}
+
+static struct platform_driver imx_ddr_pmu_driver = {
+	.driver         = {
+		.name   = "imx-ddr-pmu",
+		.of_match_table = imx_ddr_pmu_dt_ids,
+	},
+	.probe          = ddr_perf_probe,
+	.remove         = ddr_perf_remove,
+};
+
+module_platform_driver(imx_ddr_pmu_driver);
+MODULE_LICENSE("GPL v2");
-- 
2.5.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
