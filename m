Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 930C710E879
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 11:15:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9uLpbDUo93o0+uI0GXa+HpPleL5h1vZKOZtsEisUM54=; b=A50IvA8iKPc8IG
	E8Nr4YJGFpl4p82z+h0W4dT4V9akYSlLfPQsV78FPsbag+eeDoYfTzNm61BNCufdWSDVT9jS51ta0
	HUwKZbiqELUi1YqJMl7L5LDhXIG2svuV4WXSKkc034Ug+Qbi6Y0cfymeKWQ/CBwhrMi35lvP/FKCt
	kBJbOwcO3/nliXo78TEvFqgVaZ+NCXMzrV1C+83fWLxWXgP0oqD0vT3gJkokLUCJjuuJpFtj0W1mQ
	0E+dpaVi33q7Xw/sJXKHnHr/rXSNZOVp/+82IGQGtOdJ2bl5i/bkxvIQdvAsAioUzcUZRB5jaSx+8
	WGEiiVOrFjVmAJ9VWTUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibijp-0001AG-SZ; Mon, 02 Dec 2019 10:15:29 +0000
Received: from mail-eopbgr20046.outbound.protection.outlook.com ([40.107.2.46]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibijA-0007vA-AE
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 10:14:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gjLX8V/UWVLcqf30e5EMEsVzPJPoynHqCpBoYVn1/eXy1JqTxvcnu5Swa4DS0ePWo9Cm03vx2BrGRwU/ZORDJhg1O5Zh49sCgVoW58anQHpSPdUp3Im2SVUdorrIXV9EwQZ529XNl41eCNlraNeWITL4I3ntE1xk87P82Yll6/DqVTxbDPag8Fgiv1otoh1gCVoVktRerRLQWdWhgw2AaaIK3Oc16xTp91bbrvpVYqOGbxIEVO4k4p4n9f8OFHHweTsydkB/tcyF7ZSsqGLqwjTD5ZaBWZjYGEW0Dj47+D2HbW/Es2zTlQRkb38HN0JqvJJmUeZNp4slqB9w8oIPcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IxuFt7NVyrP5HI1lmV5oCK5xpAyuugMBRRcN4LkboXY=;
 b=M05YBhMpZQ1+ix2l011nfv0PBXa1NaWYE4V9QIFwrl3eR3KRsjGtuSVVsSDUy/UERjzHs7a8FGfj+NDzOH6MA11KPXpXT+1r+ssTpAW0WNOmxk8YhcXZSt3asy34PNDW/Qm/4I4TH4s2zfmOT9wlem2QbD5273q7edWEzBl55C8jvv8BNUFliUhGq4SSe9zp+JoNK0P1ZBQ0/Yd3+p++Co/TokJ1stnbvYm/yLRbWxi2tbtuXHdQAWNlJXrRJvUzL/0MAvTyizQGiS5mR7zIe/5rxj4QF81MDL1HnseUFfwdeMRP5F0Qn1UrWcgCDRIWrSQZ1Adlq4AZ/xum7dfoYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IxuFt7NVyrP5HI1lmV5oCK5xpAyuugMBRRcN4LkboXY=;
 b=ej6UwQhCus7fnP1bbhqzjQqZJPse1Ns+hYtEh5ZMq2t9/+1zJc0RCvU2NMF5fobpjpH3pIkpmxSoUsF1mmrtAuaJGYM9KOSH/Xgh4MVdnM67iKylmGdkQ2lp9dxl0dSkta3xZDOGFyFLW65U/8kZ6M2O/ju1RnhE21aFXcSgQvQ=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4545.eurprd04.prod.outlook.com (52.135.148.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.22; Mon, 2 Dec 2019 10:14:43 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c%4]) with mapi id 15.20.2495.014; Mon, 2 Dec 2019
 10:14:43 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "jassisinghbrar@gmail.com"
 <jassisinghbrar@gmail.com>, "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>, "f.fainelli@gmail.com"
 <f.fainelli@gmail.com>
Subject: [PATCH v11 2/2] mailbox: introduce ARM SMC based mailbox
Thread-Topic: [PATCH v11 2/2] mailbox: introduce ARM SMC based mailbox
Thread-Index: AQHVqPlQmY/2hS4Lz06JY3IQFRZRJA==
Date: Mon, 2 Dec 2019 10:14:43 +0000
Message-ID: <1575281525-1549-3-git-send-email-peng.fan@nxp.com>
References: <1575281525-1549-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1575281525-1549-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR04CA0060.apcprd04.prod.outlook.com
 (2603:1096:202:14::28) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 25d98f0d-8927-4e71-c790-08d777107336
x-ms-traffictypediagnostic: AM0PR04MB4545:|AM0PR04MB4545:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB45453F6A2662E2CB6598E3FF88430@AM0PR04MB4545.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0239D46DB6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(366004)(346002)(39860400002)(396003)(199004)(189003)(3846002)(316002)(66476007)(66446008)(66946007)(64756008)(66556008)(52116002)(86362001)(305945005)(8676002)(81156014)(15650500001)(50226002)(2501003)(256004)(71190400001)(71200400001)(2201001)(66066001)(6116002)(7736002)(2906002)(5660300002)(14454004)(36756003)(81166006)(8936002)(76176011)(4326008)(6306002)(6436002)(6512007)(478600001)(11346002)(25786009)(446003)(44832011)(102836004)(186003)(2616005)(99286004)(110136005)(26005)(54906003)(6506007)(386003)(6486002)(966005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4545;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3pdhABGwge2Vm48nQ6iX/3M4SmRgaZ87Gz6z3NttCaGNyQGaMCz3IVU1L4cSDg7dwScgkpLa47TOrbUv3rLzDGSMXqcactTeQhU8+vYKU2BlpkPCKQLGphP/DVmywyrsOuEdk4ucDHv2uDI5OEuxqBQx5uVKgDRzhWU/26J4wK6eUcWWCLos/6Svdy+JS9z+eY00toCb7vJHyaWdVF9lixpm+yUBRILV+KJ3s8yVKCA0ZrTy5I7CuyuM+r7PEUfnCw51iVkk8OffUNkKnDEOsSlQkUgKh9oMmufC454lgAIWKN7zwggYDrV3JARccj32WSYDZTsbMOQBvsSRJgnGq0vZj8MDsRuGv15QcP2l+rQiPCVN3SSAfSCdlodXCBVAlnm6F9Let+xdGbcVv+61a//CHxAEKrrQsnLP4D0sv1EucdllAMgCoQS7mB3TTE4HQJ6AyWEvJFJ4/XXboG7BBkZTQnPllHCiIK3pNVvJ7ps=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25d98f0d-8927-4e71-c790-08d777107336
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2019 10:14:43.4845 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2SB3sjZhLErHVr9XAjE4zywVbGNUYge3bDm4ZEe1rQ0mVBv3RQOKDYVeBgTHc39RRkqdzAaL3jwkEIqzdhOkuQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4545
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_021448_369532_C94044A8 
X-CRM114-Status: GOOD (  17.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.46 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
Reviewed-by: Andre Przywara <andre.przywara@arm.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/mailbox/Kconfig                |   7 ++
 drivers/mailbox/Makefile               |   2 +
 drivers/mailbox/arm-smc-mailbox.c      | 156 +++++++++++++++++++++++++++++++++
 include/linux/mailbox/arm-smccc-mbox.h |  17 ++++
 4 files changed, 182 insertions(+)
 create mode 100644 drivers/mailbox/arm-smc-mailbox.c
 create mode 100644 include/linux/mailbox/arm-smccc-mbox.h

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
index 000000000000..223d46fe6513
--- /dev/null
+++ b/drivers/mailbox/arm-smc-mailbox.c
@@ -0,0 +1,156 @@
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
+#include <linux/mailbox/arm-smccc-mbox.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+
+typedef unsigned long (smc_mbox_fn)(unsigned int, unsigned long,
+				    unsigned long, unsigned long,
+				    unsigned long, unsigned long,
+				    unsigned long);
+
+struct arm_smc_chan_data {
+	unsigned int function_id;
+	smc_mbox_fn *invoke_smc_mbox_fn;
+};
+
+static int arm_smc_send_data(struct mbox_chan *link, void *data)
+{
+	struct arm_smc_chan_data *chan_data = link->con_priv;
+	struct arm_smccc_mbox_cmd *cmd = data;
+	unsigned long ret;
+
+	ret = chan_data->invoke_smc_mbox_fn(chan_data->function_id,
+					    cmd->args_smccc[0],
+					    cmd->args_smccc[1],
+					    cmd->args_smccc[2],
+					    cmd->args_smccc[3],
+					    cmd->args_smccc[4],
+					    cmd->args_smccc[5]);
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
+	ret = of_property_read_u32(dev->of_node, "arm,func-id",
+				   &chan_data->function_id);
+	if (ret)
+		return ret;
+
+	if (of_device_is_compatible(dev->of_node, "arm,smc-mbox"))
+		chan_data->invoke_smc_mbox_fn = __invoke_fn_smc;
+	else
+		chan_data->invoke_smc_mbox_fn = __invoke_fn_hvc;
+
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
diff --git a/include/linux/mailbox/arm-smccc-mbox.h b/include/linux/mailbox/arm-smccc-mbox.h
new file mode 100644
index 000000000000..244e09598c10
--- /dev/null
+++ b/include/linux/mailbox/arm-smccc-mbox.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef _LINUX_ARM_SMCCC_MBOX_H_
+#define _LINUX_ARM_SMCCC_MBOX_H_
+
+#include <linux/types.h>
+
+/**
+ * struct arm_smccc_mbox_cmd - ARM SMCCC message structure
+ * @args_smccc:	actual usage of registers is up to the protocol
+ *		(within the SMCCC limits)
+ */
+struct arm_smccc_mbox_cmd {
+	unsigned long args_smccc[6];
+};
+
+#endif /* _LINUX_ARM_SMCCC_MBOX_H_ */
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
