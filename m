Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17FB0B3769
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 11:45:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RGIK3Dd39P/R/7l2hHmtK1nHI+Vp3a+mQzXiqUV3QYg=; b=kAyy7oUhrQfV7W
	CYjBymnrq8PZX2aeTouNhzTeDviKvbZOMpYRCctH56TwI33wllJ5xctINLBpGI2d/wy9O/kgvQYnB
	jKBwc2dDXcMiu0lJF3JBFn4UcwdtbtZCP0vTdaZHacR9UcLIwPURQPPFIAZPOD2EygJ7SQfAOoG1J
	pDYfkrb5Gj0UFW4qG8hZa7jKblbKZrsxIQNs5BWMpccXP8X5mFf+evG+zDFr6j69i0GQlx0E8fqL3
	CbCIJ5oh+Y8zPXvCKz6Ml3E6RnDD1we1D4WZgAYPq4yFpw/21oXE2LkYS6ndSPAkv5G2cqMhZn9Vj
	0cpqXfgdXdm2phqpxuxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9nZf-0004ff-DO; Mon, 16 Sep 2019 09:45:35 +0000
Received: from mail-eopbgr10049.outbound.protection.outlook.com ([40.107.1.49]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9nYp-00032L-Am
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 09:44:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Be3MTed1PRJzwcCt1hGDgWf0rBFEdn01ovY5tzHsyDtY8q1NoG192wWOCZTKEjiB6jwMXyyhHMHRD+PXScyxG+yZF0OTWDkEMCnjSfMIrG8wrH/Phg9bJGrs5X0OxK2HINWLhc1HdcC11zdX9golGyUz8oceXF4AN6OLsiPRYkEGC9xIbQII28a0+t25XvNC933c2XgDCOvxUTbrvwPECFsBtFowc9ICr/1WqPSW+fhASICdv6KQBQAQaRFOqq8vcIYEMY8b/vCjExYAZD7qvyNUCQXwawW4FKznTBrQvOWB3dbGloKq65UgsbpDIiH6eDmmslZqGKirjBdfOfiwBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7FJTyOwjd9hE2TfgR7a2Fk5cGji2TGsc+fCxqaCZJ4Q=;
 b=nk48If9273e3brwLwWDKDPTNroYTscPyYeeKn6oUkfk7zCf/Vc9oDN5CRPW98MSSpRm83ipqYIRCLXDlIY9Bokh6OBgitVqhEJ4jRdxeZ6gFW+0mFngOIqCMfq/I8OxEvyecL/FlZbCXD2ppkb7gwHCb/LbBDbvn7YFfoeb1TQI5zfFpAuWuHups3X3Od/wplWhTxpx//48xeTbhwJQPTxq0hP0PwDt8IZdlerxjaImpDZleoeTCPBWHryxbvs6vTHgbj7743HaGwl/bD+3UjJEGHm+s6Gpq9USxNKSgUZzjetlPj2dJhHu+XhXQgzp+K3HSXGTVEuZ8VTlCUVolEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7FJTyOwjd9hE2TfgR7a2Fk5cGji2TGsc+fCxqaCZJ4Q=;
 b=XKlvryg6LSth4xlEoY+40KrkS+HuqPrr+qx4ZbndmbNcg+RgtDXqWnQxGy8tjDBV3ttpmkdvlGLQOBaYrm9t40i4Rf4u+Wz18n6qPigo97DBtxXTC33UDON8eKWm1EN6Hwo6Yln4XX6GGedds+GoXpJG04gacvj36Mj7so9FcAE=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4674.eurprd04.prod.outlook.com (52.135.149.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.13; Mon, 16 Sep 2019 09:44:41 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8%6]) with mapi id 15.20.2263.023; Mon, 16 Sep 2019
 09:44:41 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "jassisinghbrar@gmail.com"
 <jassisinghbrar@gmail.com>, "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>, "f.fainelli@gmail.com"
 <f.fainelli@gmail.com>
Subject: [PATCH V6 2/2] mailbox: introduce ARM SMC based mailbox
Thread-Topic: [PATCH V6 2/2] mailbox: introduce ARM SMC based mailbox
Thread-Index: AQHVbHNdulW1qSzh8kulKbzCOfhGfw==
Date: Mon, 16 Sep 2019 09:44:41 +0000
Message-ID: <1568626884-5189-3-git-send-email-peng.fan@nxp.com>
References: <1568626884-5189-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1568626884-5189-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR01CA0054.apcprd01.prod.exchangelabs.com
 (2603:1096:203:a6::18) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6808022f-1368-447c-2c37-08d73a8a7f6e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM0PR04MB4674; 
x-ms-traffictypediagnostic: AM0PR04MB4674:|AM0PR04MB4674:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4674A1B1A9374F3552D6CDC9888C0@AM0PR04MB4674.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0162ACCC24
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(396003)(376002)(346002)(39860400002)(189003)(199004)(50226002)(81156014)(44832011)(8676002)(8936002)(81166006)(66946007)(14454004)(52116002)(99286004)(15650500001)(6436002)(316002)(2616005)(53936002)(486006)(305945005)(7736002)(86362001)(476003)(76176011)(66066001)(36756003)(2201001)(54906003)(6486002)(446003)(11346002)(2906002)(66556008)(5660300002)(6512007)(110136005)(386003)(6506007)(4326008)(71200400001)(26005)(71190400001)(102836004)(966005)(6116002)(66476007)(3846002)(186003)(64756008)(256004)(66446008)(6306002)(2501003)(478600001)(25786009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4674;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: jMkY6u3N+UlUN4IafInkDz0ka+LVmlMaV5uFqntfo+ZEO/bQ9SB3d1vt3mL0epia2/87XEyPI6QQLmLZwpL91YFY1tkuaguP/ArB1FilfAVmlZzgBkDtTusFBWf8utME6+HZfjN1uU7waP1uYq0CPtJLm5ZUlbEYBMWCJfF2Lxr6Zwlk+Mo0BKDHvDCO0Ed98l21/dhpPheAQv5xVMkXDUgmIW2tmlXurUEyvB9AQfmRwWflUqn+wUzar4bfOJ+pOTfs8SGNA/WQ6CVT/EF5Z+45Jc4JwAt0FxOwAkIl7Fye5z6LCc1o+PSljKvNX0IsrYGBNWHNpe+oZmyZ+LFe+K/NfQ6RUdv4wwICDCAIkQrfqctCea8JzCgzHLMP9/cOTdWDs0wskvG2+xcj7jVp8fZ3fQgzttiqVcctjwhl0RU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6808022f-1368-447c-2c37-08d73a8a7f6e
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2019 09:44:41.6247 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BnqeDvxBx+XmDtDSAwPTnfT0JV44MgCYLrr/aaAAAh8S6SDh4iVlQp3mw/ENFwssB9x6gXYuOfegzMLbMue9vg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4674
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_024443_556425_E0DF8FB3 
X-CRM114-Status: GOOD (  18.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.49 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Peng Fan <peng.fan@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

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
 drivers/mailbox/Kconfig           |   7 ++
 drivers/mailbox/Makefile          |   2 +
 drivers/mailbox/arm-smc-mailbox.c | 167 ++++++++++++++++++++++++++++++++++++++
 3 files changed, 176 insertions(+)
 create mode 100644 drivers/mailbox/arm-smc-mailbox.c

diff --git a/drivers/mailbox/Kconfig b/drivers/mailbox/Kconfig
index ab4eb750bbdd..7707ee26251a 100644
--- a/drivers/mailbox/Kconfig
+++ b/drivers/mailbox/Kconfig
@@ -16,6 +16,13 @@ config ARM_MHU
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
index 000000000000..c84aef39c8d9
--- /dev/null
+++ b/drivers/mailbox/arm-smc-mailbox.c
@@ -0,0 +1,167 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2016,2017 ARM Ltd.
+ * Copyright 2019 NXP
+ */
+
+#include <linux/arm-smccc.h>
+#include <linux/device.h>
+#include <linux/kernel.h>
+#include <linux/interrupt.h>
+#include <linux/mailbox_controller.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+
+struct arm_smc_chan_data {
+	unsigned int function_id;
+};
+
+struct arm_smccc_mbox_cmd {
+	unsigned int function_id;
+	union {
+		unsigned int args_smccc32[6];
+		unsigned long args_smccc64[6];
+	};
+};
+
+typedef unsigned long (smc_mbox_fn)(unsigned int, unsigned long,
+				    unsigned long, unsigned long,
+				    unsigned long, unsigned long,
+				    unsigned long);
+static smc_mbox_fn *invoke_smc_mbox_fn;
+
+static int arm_smc_send_data(struct mbox_chan *link, void *data)
+{
+	struct arm_smc_chan_data *chan_data = link->con_priv;
+	struct arm_smccc_mbox_cmd *cmd = data;
+	unsigned long ret;
+	u32 function_id;
+
+	function_id = chan_data->function_id;
+	if (!function_id)
+		function_id = cmd->function_id;
+
+	if (function_id & BIT(30)) {
+		ret = invoke_smc_mbox_fn(function_id, cmd->args_smccc64[0],
+					 cmd->args_smccc64[1],
+					 cmd->args_smccc64[2],
+					 cmd->args_smccc64[3],
+					 cmd->args_smccc64[4],
+					 cmd->args_smccc64[5]);
+	} else {
+		ret = invoke_smc_mbox_fn(function_id, cmd->args_smccc32[0],
+					 cmd->args_smccc32[1],
+					 cmd->args_smccc32[2],
+					 cmd->args_smccc32[3],
+					 cmd->args_smccc32[4],
+					 cmd->args_smccc32[5]);
+	}
+
+	mbox_chan_received_data(link, (void *)ret);
+
+	return 0;
+}
+
+static unsigned long __invoke_fn_hvc(unsigned int function_id,
+				     unsigned long arg0, unsigned long arg1,
+				     unsigned long arg2, unsigned long arg3,
+				     unsigned long arg4, unsigned long arg5)
+{
+	struct arm_smccc_res res;
+
+	arm_smccc_hvc(function_id, arg0, arg1, arg2, arg3, arg4,
+		      arg5, 0, &res);
+	return res.a0;
+}
+
+static unsigned long __invoke_fn_smc(unsigned int function_id,
+				     unsigned long arg0, unsigned long arg1,
+				     unsigned long arg2, unsigned long arg3,
+				     unsigned long arg4, unsigned long arg5)
+{
+	struct arm_smccc_res res;
+
+	arm_smccc_smc(function_id, arg0, arg1, arg2, arg3, arg4,
+		      arg5, 0, &res);
+	return res.a0;
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
+	int ret;
+	u32 function_id = 0;
+
+	if (of_device_is_compatible(dev->of_node, "arm,smc-mbox"))
+		invoke_smc_mbox_fn = __invoke_fn_smc;
+	else
+		invoke_smc_mbox_fn = __invoke_fn_hvc;
+
+	mbox = devm_kzalloc(dev, sizeof(*mbox), GFP_KERNEL);
+	if (!mbox)
+		return -ENOMEM;
+
+	mbox->num_chans = 1;
+	mbox->chans = devm_kzalloc(dev, sizeof(*mbox->chans), GFP_KERNEL);
+	if (!mbox->chans)
+		return -ENOMEM;
+
+	chan_data = devm_kzalloc(dev, sizeof(*chan_data), GFP_KERNEL);
+	if (!chan_data)
+		return -ENOMEM;
+
+	of_property_read_u32(dev->of_node, "arm,func-id", &function_id);
+	chan_data->function_id = function_id;
+
+	mbox->chans->con_priv = chan_data;
+
+	mbox->txdone_poll = false;
+	mbox->txdone_irq = false;
+	mbox->ops = &arm_smc_mbox_chan_ops;
+	mbox->dev = dev;
+
+	platform_set_drvdata(pdev, mbox);
+
+	ret = devm_mbox_controller_register(dev, mbox);
+	if (ret)
+		return ret;
+
+	dev_info(dev, "ARM SMC mailbox enabled.\n");
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
+	{ .compatible = "arm,hvc-mbox", },
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
+MODULE_AUTHOR("Peng Fan <peng.fan@nxp.com>");
+MODULE_DESCRIPTION("Generic ARM smc mailbox driver");
+MODULE_LICENSE("GPL v2");
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
