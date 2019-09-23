Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B91BADEC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 08:39:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yFh7Gdd1kqMmcmi9CFnz9+IXw7sE9FLUZlPI6LXjHm0=; b=XJMNNB2aZam9YU
	88taRZ0UXsGzeJFyTSN+a4yPhphsnz/cwyReIe/EMFOYZCeo0BiBdcdPW2J+YN6DviT8pGD+zjEjW
	fRJNjVrgSvWwh6sJXsiUAGD7WJ/XqI9ABD1BdDgtpSzhmV/ExWYpdL21V6NOhyayJ8h8XBdEkUJec
	MhGVFfFuvwNLC805M60i/A9KMJE5M6FQGlZeh3NP30TbRELd9ulx1TPHnP+sI1EhmvMincvpqN0bw
	VHVFNZS7bQw70NM3VgK03C6YpeO3eJRuj7izbznUbf2NgG5PyqirTWpUK2RrtzKKXTbdnAtC3CZeX
	QqBwN7kQ85pzsPCvxWrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCHzo-0006k8-Ie; Mon, 23 Sep 2019 06:38:52 +0000
Received: from mail-ve1eur02on0609.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::609]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCHyB-0006A3-Lc
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 06:37:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YX497xaUylI6hbDfHdbtPeXlw3coVUKfJUyqQ7g8nQZm51VksW8GjgvVz1p2X+OWSFAzfTI/OrbCPYG7ksvtWt4/8ivOQ2Sbins+J1aE86S6HkG3U00bFxf/VCDURyk5+1XsfBSY12etIZNJNXHL8nw6zzCYh5a1qrJO/BZglCYrPGKbnuHz26XLRdCSLPakmYzhqo0GwD4D9mUcxw5WI9IfAJmEboPi1ey7UguYitT5fQ3HuLJoBudg/Eco/x9tzu5XkSmprXaS4LiuDUbKl7/Wd87BZH5Uc1v2R6eyQpkSU1DGya1cLIceOkDVeiWUePRYuk0F2FisUDk/Q6H2QA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oTMzL3RSKnGui4RaCFkQ3ifnzJ/sdAHOKuv7Q/txDdw=;
 b=jrqzv1xKMO0IzJU9PE7FZQqJWMYGm+YC4KZQbH32gkbcoG6wKU/Cr+K96vJBAl8UvEIc2eqKjtynAQAan0ta8tZF9S01U0D3Vg7shexyu/IALmg1+WEXijv79bNN091WX2KrYbLsZ8bNGw7oyjv9y0pcElD+TrFtNwb9twAf+YhPwZrzOGbeTunFbf/kY5lmPi6XSpojYkfL0KdgT66JeNZWAtxdQCQKHzZCasYQlHI3LvNTZ1lWZtf3zgPPiHFA4JmBGCq6j77xFk4YBr56bUUwNSuSqXzLYg+iXT1pSSN60oqI8M/WnHxp0L16Fe/cFbGQClIMOV2STnCQvJWZbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oTMzL3RSKnGui4RaCFkQ3ifnzJ/sdAHOKuv7Q/txDdw=;
 b=QgnO3x5TMq9PkC/PCW9yNQEue5tmFYmPejvHPk3KuNVqH6m/W5+alpQEldNv4zYegPvI+KO930SvoZdvymlBPtXM19qJaaGQgwwtonBcQMYyt9+gpCROWXRKR0X43g10Yb4+3a2Ob7z8aX/CVKKxPGcSSRUMpKjwlBnmwFhQZ2s=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4449.eurprd04.prod.outlook.com (52.135.148.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.19; Mon, 23 Sep 2019 06:37:09 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8%6]) with mapi id 15.20.2284.023; Mon, 23 Sep 2019
 06:37:09 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "jassisinghbrar@gmail.com"
 <jassisinghbrar@gmail.com>, "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>, "f.fainelli@gmail.com"
 <f.fainelli@gmail.com>
Subject: [PATCH V7 2/2] mailbox: introduce ARM SMC based mailbox
Thread-Topic: [PATCH V7 2/2] mailbox: introduce ARM SMC based mailbox
Thread-Index: AQHVcdlSnaopI9D/Y0WFH3ArfXrlxw==
Date: Mon, 23 Sep 2019 06:37:08 +0000
Message-ID: <1569220514-27903-3-git-send-email-peng.fan@nxp.com>
References: <1569220514-27903-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1569220514-27903-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR03CA0009.apcprd03.prod.outlook.com
 (2603:1096:203:2e::21) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6d39051e-5531-4c19-73f8-08d73ff07532
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4449; 
x-ms-traffictypediagnostic: AM0PR04MB4449:|AM0PR04MB4449:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4449844F19A0B68BDEA78D6088850@AM0PR04MB4449.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0169092318
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(366004)(136003)(39860400002)(346002)(189003)(199004)(2501003)(2201001)(305945005)(7736002)(54906003)(66066001)(64756008)(110136005)(66556008)(66476007)(316002)(66446008)(6306002)(71200400001)(6116002)(4326008)(71190400001)(86362001)(256004)(66946007)(6512007)(50226002)(8936002)(99286004)(52116002)(25786009)(76176011)(6436002)(26005)(3846002)(36756003)(8676002)(2906002)(11346002)(81166006)(81156014)(186003)(15650500001)(102836004)(446003)(44832011)(486006)(966005)(5660300002)(478600001)(6486002)(6506007)(386003)(476003)(2616005)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4449;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: r5yYpxXjPyFgE3/YZ32E8m78usPJcZ5Mif2PnxYFBjqCO8GNKrCIIXmkEBtzR7tYP3Mb3dybDsQXCKXzn/3cjRnldJnPknwoyOkcMRT2iPpyPgTUVFSgL/erJ4f6/df0rY83IaciIOQjgYylMnzzZkCVcRu3L77fSR4fNXw7XvgXWXNlN5KIl7USKL34+KGbdu+oJ3ZCDR30sBSfKAnO6hHNAP5hij3qyh4hbJSWpRAcAQqzD2NFLJfqJdGXxHZVIdI9kZ8A6WXIO9Sg8EObCt5N/exCy3l51OSWIMhPxdac65OyXJA7MxOP9rbme9GiK8K62qlRmKP00NNqricdA//Gp8lUqKF5MnUh76CNui8FXLcyWTooDmdcwsTpr9NBACwNXO8+8RDzeR+Bg+WVR+wiKXiT0w9V7OgTg1ZgAcg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d39051e-5531-4c19-73f8-08d73ff07532
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2019 06:37:09.0414 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jX1RuUTVINasTvMU0ccbZtnQH2WIHZqpCA080pAsXPDtIAhLOOgohyaNunY59yRm9XY4cBkYjNFsXBGIi+Btnw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4449
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_233713_207483_B3F43F8D 
X-CRM114-Status: GOOD (  17.29  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:609 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 1.3 FORGED_SPF_HELO        No description available.
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
 drivers/mailbox/arm-smc-mailbox.c | 168 ++++++++++++++++++++++++++++++++++++++
 3 files changed, 177 insertions(+)
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
index 000000000000..664c8b4a0ed0
--- /dev/null
+++ b/drivers/mailbox/arm-smc-mailbox.c
@@ -0,0 +1,168 @@
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
+#include <linux/mailbox/arm-smccc-mbox.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+
+struct arm_smc_chan_data {
+	unsigned int function_id;
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
+	if (ARM_SMCCC_IS_64(function_id)) {
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
+static struct mbox_chan *
+arm_smc_mbox_of_xlate(struct mbox_controller *mbox,
+		      const struct of_phandle_args *sp)
+{
+	return mbox->chans;
+}
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
+	mbox->of_xlate = arm_smc_mbox_of_xlate;
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
