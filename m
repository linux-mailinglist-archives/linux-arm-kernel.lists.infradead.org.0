Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B47D0BBF9F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 03:14:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WlmAWwrWTdXy94d/vEMMBP/QX1OiokTBHI9d7NHTFxA=; b=FgaUc/ukjHw5fJ
	GCyR5faUEyK+PHOeJN2aX45ChgGLmgirKAqKAr86S3ItTLgVGhk1ktJ4EeC2TzQPqklW1qZDaW0TY
	uXiKfP2sPfaJ2b+VM3EeKilcYJ36Gsz2FPOgxnyug2L+XWGTn2s1DmKcE7H+MkiCeEwPdoRKRtiY6
	TGm6dtVTjE5qvnhWoIs5YCQmJ+I71PrLIdcwSyC8NiQRxGLlX+wLYnWro6ReMszUw/9WXx3yiic32
	e1RX72fXes9NpGIv0RVkMFYg1mEAdgcGLTJQEBhKJuGrFjR2wqxzZGOQVMqaYlZXzr6y1E4zuC9CE
	jii1QuyNgpPJFK81gOow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCZPh-0002Zf-KS; Tue, 24 Sep 2019 01:14:45 +0000
Received: from mail-eopbgr30069.outbound.protection.outlook.com ([40.107.3.69]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCZPB-000294-HM
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 01:14:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cpg7tXdhn30cDDIBqTep5DKIl7xFPn9y+frV6bf6eJojp8phYy42992gMvGFVN+jVklhQ29v1xqwHLJOHnPEM4aCkma57AiFELot3kRIQh+B/QuKk36kBQDw52HLt51CRf74iV4YULEBRmvbMIoaKHKfhmARpBXQOSvXfs6zou2zXOoJpliHnXnDBSxPCrz0Cp3swir/HdZhX/I77MFh6zC3VphuYq9DFIs0DkEuIj+LoI1aG8oaEnKNYyC4ZFuMRDAhfYIoAdn6GtGQuvhjieLTal2a25tlGKhD9iYbKWsfpec7up+dMvK7LnfeH1+fcO7cQHi/j8URWB/Hct0olQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V8XjT9o7r7Sq2ULh2xbE9P2eEy0U/Sz1Vn7STkldcMo=;
 b=MtJmleP59cXKJm4c8qLAuE80KlbX2IsxTrOZvZKhCLXeRWSuN7b3KmqeKRZ0NEYbBRvf0Qk1jcXS8KBqdu5YVZoHPUSTHGQQ2NLygql1Fvtl/QXe1bpkrkgBC6aZGrUQVZoTGpzace+sDb7+OMF3fP6nfkXK3vhD4BKhsVLv72qP9/9iW78yyexKmQJY6BbcjcPLC/2DpqoIcXKoRqyeijDAaL+D8p4ehRKw6XzXbLEsKWwLMR2FgwNUDzoUg7MUO/vXRxUdohw7RVa+0KAJOoHeQuRwhhO6PJmz0QhJP7Kog6EzlAc/x6jsSVIxEYEVvYfZjovk3btnKyU4esY3BQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V8XjT9o7r7Sq2ULh2xbE9P2eEy0U/Sz1Vn7STkldcMo=;
 b=cYW+eVxdWwjg6nI6y678xkrk1u7KVHjq4CqlzHA5z6ZZhzzUq2OvG5lEeZXC299a2B/DYHmwVt5zqpvY2/hdn9+k4CuFMlw9YnDB68asXmgweTa6o6TI1hjRmZcMVGQE/u5/sVjveEJIc9j5zuZhHmv/E3gVzc0VuzfwlL6FaoM=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5396.eurprd04.prod.outlook.com (20.178.113.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Tue, 24 Sep 2019 01:14:11 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8%6]) with mapi id 15.20.2284.023; Tue, 24 Sep 2019
 01:14:11 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "jassisinghbrar@gmail.com"
 <jassisinghbrar@gmail.com>, "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>, "f.fainelli@gmail.com"
 <f.fainelli@gmail.com>
Subject: [PATCH V8 2/2] mailbox: introduce ARM SMC based mailbox
Thread-Topic: [PATCH V8 2/2] mailbox: introduce ARM SMC based mailbox
Thread-Index: AQHVcnVfRZj6+kc000W2JZMWqMWPIQ==
Date: Tue, 24 Sep 2019 01:14:11 +0000
Message-ID: <1569287538-10854-3-git-send-email-peng.fan@nxp.com>
References: <1569287538-10854-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1569287538-10854-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0P153CA0001.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:18::13) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f5da7d46-5600-4fb1-74d1-08d7408c81ba
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5396; 
x-ms-traffictypediagnostic: AM0PR04MB5396:|AM0PR04MB5396:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5396F71AC8E5AECD96A6F4D588840@AM0PR04MB5396.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0170DAF08C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(39860400002)(396003)(136003)(346002)(189003)(199004)(66066001)(6436002)(36756003)(478600001)(2201001)(316002)(14454004)(966005)(305945005)(66946007)(26005)(86362001)(71200400001)(66446008)(64756008)(66476007)(71190400001)(6116002)(3846002)(256004)(99286004)(6306002)(386003)(66556008)(486006)(6512007)(186003)(76176011)(6486002)(2501003)(6506007)(2906002)(4326008)(446003)(2616005)(102836004)(8676002)(54906003)(11346002)(110136005)(8936002)(52116002)(81166006)(50226002)(5660300002)(81156014)(44832011)(15650500001)(7736002)(25786009)(476003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5396;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: RZZ86Sw9vutuD9gkPChhtYFWLEWKrgM03zPTuCX3x8h+ou/uoQtCQFPoWkyaE8R29XH9L0h2IabVwXdDCf/gzAlkmpb2ZMAXueyXh2mJsr5Hx/5MwNZWK9paectI4Yl1Per2wImY0jqejoQx2pZVcQpz03XnfNVnx2OmX5iBTmHwhZwmRUB795vOMKicKDCJ5jhrHaGm/Mdvjiq6vuORaYBgGQWmweSTH2tyba7zcI8xv7k1ec323+LGUGEPIsFUJw1uwNLWQBtAdEgsHrzPvE80IOm/i03ho0bYVGiOiCkV+96COL9ORq84CtxXK+PT2xvYgjI61rHTuyRedu45O5QF3DXM1A1us7pY2f19ZBYdu0cPPPWyzYvvqGno6j0pwOv+4l5HokqySARI1Gw0bRTzg/xJ9vC9WcdZJ+vTkOc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5da7d46-5600-4fb1-74d1-08d7408c81ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2019 01:14:11.5362 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HsHclts8+yolN1BOhyXDQcUnfrUhFiQmq88+vccClm/90pAhCA168tuBfPPJLfKY3GLNvFETRzQIQBKPJayVkw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5396
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_181413_588913_91EEF509 
X-CRM114-Status: GOOD (  19.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.69 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 drivers/mailbox/Kconfig                |   7 ++
 drivers/mailbox/Makefile               |   2 +
 drivers/mailbox/arm-smc-mailbox.c      | 168 +++++++++++++++++++++++++++++++++
 include/linux/mailbox/arm-smccc-mbox.h |  22 +++++
 4 files changed, 199 insertions(+)
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
diff --git a/include/linux/mailbox/arm-smccc-mbox.h b/include/linux/mailbox/arm-smccc-mbox.h
new file mode 100644
index 000000000000..140045644d82
--- /dev/null
+++ b/include/linux/mailbox/arm-smccc-mbox.h
@@ -0,0 +1,22 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef _LINUX_ARM_SMCCC_MBOX_H_
+#define _LINUX_ARM_SMCCC_MBOX_H_
+
+/**
+ * struct arm_smccc_mbox_cmd - ARM SMCCC message structure
+ * @function_id:	function id passed from client, If mbox
+ *			DT has arm,func-id property, the driver will use
+ *			that one.
+ * @args_smccc32/64:	actual usage of registers is up to the protocol
+ *			(within the SMCCC limits)
+ */
+struct arm_smccc_mbox_cmd {
+	unsigned int function_id;
+	union {
+		u32 args_smccc32[6];
+		u64 args_smccc64[6];
+	};
+};
+
+#endif /* _LINUX_ARM_SMCCC_MBOX_H_ */
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
