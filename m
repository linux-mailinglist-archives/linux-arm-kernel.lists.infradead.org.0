Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D377275C3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 07:51:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MgRdDOSTxZ+fi4I6ArWUb/deKTZCbh02RcYcG8jMIko=; b=S1RsoWTGAhGyRH
	NM4XoZwf43xlTZYCb/t9fTYsXJN+F7MXcesn9J5aDhcl6GJ5Ue9FvpS3JjeIlnAOgURqVgHJ4m9OC
	6n57A0AhoykIfBUUZsCUO1d+K60r/Bpv7S01lOXQFGyUxn4Sl4+R3dMISR3ONdWlbjNDFVYf9bbe2
	vyj6kRF0ePB6cWnpy61ZY3kZ1qr2H8F/9S0BrNP5oXMMIutKOfxOi3JkM4f4e/yOvRRrHO5fFiAKa
	kMWYTPnszGRu78lf8ygy1IpY+QI7SH+Sew0c5Eq+iVKRyhUGnH92FA5deXuG42khinblp+Pemnsn4
	iFBl868RdF/Y7HYtVnrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTgdg-0007SD-Pr; Thu, 23 May 2019 05:51:40 +0000
Received: from mail-eopbgr30047.outbound.protection.outlook.com ([40.107.3.47]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTgd9-00072u-6n
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 05:51:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xLK6J4oxrIr5ZhYuaEdROLR+w74RnHB147OWCWDCdao=;
 b=lWBtdeG0rgcsWyvFLqKIaixGk1eTr+Mh+ZKJfwMYLKx+hj10zYY5w+NmmXzY/tLmLkrq03bXcXpb3//rcRlZQQxAhEGqu2f4vkflvdtWTxMmX3zGtnd7Eg+pDVFcjRyR/WAZlMrvw/3DSxmXZyyF3ZZjk68aWlXk8h6yPWdAR4c=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB3956.eurprd04.prod.outlook.com (52.134.93.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Thu, 23 May 2019 05:51:02 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378%6]) with mapi id 15.20.1900.020; Thu, 23 May 2019
 05:51:02 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "jassisinghbrar@gmail.com"
 <jassisinghbrar@gmail.com>, "sudeep.holla@arm.com" <sudeep.holla@arm.com>
Subject: [PATCH 2/2] mailbox: introduce ARM SMC based mailbox
Thread-Topic: [PATCH 2/2] mailbox: introduce ARM SMC based mailbox
Thread-Index: AQHVESuByCLdCQE1i0W9lURWmZ2DUQ==
Date: Thu, 23 May 2019 05:51:02 +0000
Message-ID: <20190523060437.11059-3-peng.fan@nxp.com>
References: <20190523060437.11059-1-peng.fan@nxp.com>
In-Reply-To: <20190523060437.11059-1-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.16.4
x-clientproxiedby: HK0P153CA0040.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:17::28) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4c06b37c-4476-495f-b629-08d6df42a3a0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB3956; 
x-ms-traffictypediagnostic: AM0PR04MB3956:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR04MB39567B3621DA5712781E761188010@AM0PR04MB3956.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1824;
x-forefront-prvs: 00462943DE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(39860400002)(376002)(346002)(396003)(366004)(199004)(189003)(2201001)(86362001)(6512007)(256004)(6436002)(6306002)(44832011)(486006)(2501003)(2906002)(2616005)(476003)(6116002)(3846002)(81166006)(8676002)(25786009)(6486002)(305945005)(81156014)(8936002)(50226002)(4326008)(53936002)(11346002)(15650500001)(7736002)(316002)(446003)(186003)(26005)(14454004)(66066001)(68736007)(1076003)(36756003)(71200400001)(71190400001)(102836004)(5660300002)(966005)(386003)(54906003)(110136005)(76176011)(6506007)(99286004)(66556008)(66446008)(66476007)(7416002)(66946007)(478600001)(73956011)(52116002)(64756008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB3956;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: xEIak1FsGsOKUrHVuEcMgkyDAl5EMvmyjyFSLqQ3lWqfnL7oiWp8OneiEZ2bmttZxNue/HyBf97iOAYKVKd9FDsIBZFXk38P/nswJLLRT66VjHmK+opCWEniYLw0dDVLJ8kNC4ZrT73XHCNKHtsnbKOBjbahurXHjiwmy52TUqS+i1tiyj62bRxL1EtsjlouVa24a4M3vRFX3nXJ4q8rsbZ1AqAcafhE1QbljfOl8aSSsA/U+IGUpO/09H0RtEgf5TnrhqdHqZMLImtmupqfUqx6SfAF/EJ//8PorI62k7KX6UEXlGj8/depNOXkSOxZ9aIXZ/r9O+/U7DiqjeX3fuUlHO7nORW1GhRcrI2tSmw+pXVZKvvU/39pVh1jIFDOcolUlTMYt2pT7mbQWJ+b222kTykUuZY7ebof47rtM74=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c06b37c-4476-495f-b629-08d6df42a3a0
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2019 05:51:02.9106 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB3956
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_225107_972415_339352B0 
X-CRM114-Status: GOOD (  20.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.47 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This mailbox driver implements a mailbox which signals transmitted data
via an ARM smc (secure monitor call) instruction. The mailbox receiver
is implemented in firmware and can synchronously return data when it
returns execution to the non-secure world again.
An asynchronous receive path is not implemented.
This allows the usage of a mailbox to trigger firmware actions on SoCs
which either don't have a separate management processor or on which such
a core is not available. A user of this mailbox could be the SCP
interface.

Modified from Andre Przywara's v2 patch
https://lore.kernel.org/patchwork/patch/812999/

Cc: Andre Przywara <andre.przywara@arm.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/mailbox/Kconfig                 |   7 ++
 drivers/mailbox/Makefile                |   2 +
 drivers/mailbox/arm-smc-mailbox.c       | 154 ++++++++++++++++++++++++++++++++
 include/linux/mailbox/arm-smc-mailbox.h |  10 +++
 4 files changed, 173 insertions(+)
 create mode 100644 drivers/mailbox/arm-smc-mailbox.c
 create mode 100644 include/linux/mailbox/arm-smc-mailbox.h

diff --git a/drivers/mailbox/Kconfig b/drivers/mailbox/Kconfig
index 595542bfae85..c3bd0f1ddcd8 100644
--- a/drivers/mailbox/Kconfig
+++ b/drivers/mailbox/Kconfig
@@ -15,6 +15,13 @@ config ARM_MHU
 	  The controller has 3 mailbox channels, the last of which can be
 	  used in Secure mode only.
 
+config ARM_SMC_MBOX
+	tristate "Generic ARM smc mailbox"
+	depends on OF && HAVE_ARM_SMCCC
+	help
+	  Generic mailbox driver which uses ARM smc calls to call into
+	  firmware for triggering mailboxes.
+
 config IMX_MBOX
 	tristate "i.MX Mailbox"
 	depends on ARCH_MXC || COMPILE_TEST
diff --git a/drivers/mailbox/Makefile b/drivers/mailbox/Makefile
index c22fad6f696b..93918a84c91b 100644
--- a/drivers/mailbox/Makefile
+++ b/drivers/mailbox/Makefile
@@ -7,6 +7,8 @@ obj-$(CONFIG_MAILBOX_TEST)	+= mailbox-test.o
 
 obj-$(CONFIG_ARM_MHU)	+= arm_mhu.o
 
+obj-$(CONFIG_ARM_SMC_MBOX)	+= arm-smc-mailbox.o
+
 obj-$(CONFIG_IMX_MBOX)	+= imx-mailbox.o
 
 obj-$(CONFIG_ARMADA_37XX_RWTM_MBOX)	+= armada-37xx-rwtm-mailbox.o
diff --git a/drivers/mailbox/arm-smc-mailbox.c b/drivers/mailbox/arm-smc-mailbox.c
new file mode 100644
index 000000000000..f4da1061f7f0
--- /dev/null
+++ b/drivers/mailbox/arm-smc-mailbox.c
@@ -0,0 +1,154 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2016,2017 ARM Ltd.
+ * Copyright 2019 NXP
+ */
+
+#include <linux/arm-smccc.h>
+#include <linux/device.h>
+#include <linux/kernel.h>
+#include <linux/mailbox_controller.h>
+#include <linux/mailbox/arm-smc-mailbox.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+
+#define ARM_SMC_MBOX_USE_HVC	BIT(0)
+
+struct arm_smc_chan_data {
+	u32 function_id;
+	u32 flags;
+};
+
+static int arm_smc_send_data(struct mbox_chan *link, void *data)
+{
+	struct arm_smc_chan_data *chan_data = link->con_priv;
+	struct arm_smccc_mbox_cmd *cmd = data;
+	struct arm_smccc_res res;
+	u32 function_id;
+
+	if (chan_data->function_id != UINT_MAX)
+		function_id = chan_data->function_id;
+	else
+		function_id = cmd->a0;
+
+	if (chan_data->flags & ARM_SMC_MBOX_USE_HVC)
+		arm_smccc_hvc(function_id, cmd->a1, cmd->a2, cmd->a3, cmd->a4,
+			      cmd->a5, cmd->a6, cmd->a7, &res);
+	else
+		arm_smccc_smc(function_id, cmd->a1, cmd->a2, cmd->a3, cmd->a4,
+			      cmd->a5, cmd->a6, cmd->a7, &res);
+
+	mbox_chan_received_data(link, (void *)res.a0);
+
+	return 0;
+}
+
+static const struct mbox_chan_ops arm_smc_mbox_chan_ops = {
+	.send_data	= arm_smc_send_data,
+};
+
+static int arm_smc_mbox_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct mbox_controller *mbox;
+	struct arm_smc_chan_data *chan_data;
+	const char *method;
+	bool use_hvc = false;
+	int ret, i;
+	u32 val;
+
+	if (!of_property_read_u32(dev->of_node, "arm,num-chans", &val)) {
+		if (val < 1 || val > INT_MAX) {
+			dev_err(dev, "invalid arm,num-chans value %u of %pOFn\n", val, pdev->dev.of_node);
+			return -EINVAL;
+		}
+	}
+
+	if (!of_property_read_string(dev->of_node, "method", &method)) {
+		if (!strcmp("hvc", method)) {
+			use_hvc = true;
+		} else if (!strcmp("smc", method)) {
+			use_hvc = false;
+		} else {
+			dev_warn(dev, "invalid \"method\" property: %s\n",
+				 method);
+
+			return -EINVAL;
+		}
+	}
+
+	mbox = devm_kzalloc(dev, sizeof(*mbox), GFP_KERNEL);
+	if (!mbox)
+		return -ENOMEM;
+
+	mbox->num_chans = val;
+	mbox->chans = devm_kcalloc(dev, mbox->num_chans, sizeof(*mbox->chans),
+				   GFP_KERNEL);
+	if (!mbox->chans)
+		return -ENOMEM;
+
+	chan_data = devm_kcalloc(dev, mbox->num_chans, sizeof(*chan_data),
+				 GFP_KERNEL);
+	if (!chan_data)
+		return -ENOMEM;
+
+	for (i = 0; i < mbox->num_chans; i++) {
+		u32 function_id;
+
+		ret = of_property_read_u32_index(dev->of_node,
+						 "arm,func-ids", i,
+						 &function_id);
+		if (ret)
+			chan_data[i].function_id = UINT_MAX;
+
+		else
+			chan_data[i].function_id = function_id;
+
+		if (use_hvc)
+			chan_data[i].flags |= ARM_SMC_MBOX_USE_HVC;
+		mbox->chans[i].con_priv = &chan_data[i];
+	}
+
+	mbox->txdone_poll = false;
+	mbox->txdone_irq = false;
+	mbox->ops = &arm_smc_mbox_chan_ops;
+	mbox->dev = dev;
+
+	ret = mbox_controller_register(mbox);
+	if (ret)
+		return ret;
+
+	platform_set_drvdata(pdev, mbox);
+	dev_info(dev, "ARM SMC mailbox enabled with %d chan%s.\n",
+		 mbox->num_chans, mbox->num_chans == 1 ? "" : "s");
+
+	return ret;
+}
+
+static int arm_smc_mbox_remove(struct platform_device *pdev)
+{
+	struct mbox_controller *mbox = platform_get_drvdata(pdev);
+
+	mbox_controller_unregister(mbox);
+	return 0;
+}
+
+static const struct of_device_id arm_smc_mbox_of_match[] = {
+	{ .compatible = "arm,smc-mbox", },
+	{},
+};
+MODULE_DEVICE_TABLE(of, arm_smc_mbox_of_match);
+
+static struct platform_driver arm_smc_mbox_driver = {
+	.driver = {
+		.name = "arm-smc-mbox",
+		.of_match_table = arm_smc_mbox_of_match,
+	},
+	.probe		= arm_smc_mbox_probe,
+	.remove		= arm_smc_mbox_remove,
+};
+module_platform_driver(arm_smc_mbox_driver);
+
+MODULE_AUTHOR("Andre Przywara <andre.przywara@arm.com>");
+MODULE_DESCRIPTION("Generic ARM smc mailbox driver");
+MODULE_LICENSE("GPL v2");
diff --git a/include/linux/mailbox/arm-smc-mailbox.h b/include/linux/mailbox/arm-smc-mailbox.h
new file mode 100644
index 000000000000..ca366fe491c3
--- /dev/null
+++ b/include/linux/mailbox/arm-smc-mailbox.h
@@ -0,0 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef _LINUX_ARM_SMC_MAILBOX_H_
+#define _LINUX_ARM_SMC_MAILBOX_H_
+
+struct arm_smccc_mbox_cmd {
+	unsigned long a0, a1, a2, a3, a4, a5, a6, a7;
+};
+
+#endif /* _LINUX_ARM_SMC_MAILBOX_H_ */
-- 
2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
