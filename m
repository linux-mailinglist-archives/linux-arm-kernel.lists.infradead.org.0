Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F3FA686DE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 12:11:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YVjh0/7lQVsDwZArbhKkg69sbWET0voq+ucfiQDCFME=; b=KN4RnZ28MmBdz6
	mZY76xoOSuu3c8p0EqmLVHNI5Kw+eC6oxIqDiiQxcxA1tO6Ew8BC06ZL9Ku1elfpQCpQTJEtT0r1v
	DvtOkWORCzwFklg7ZrzXI9XKV9JFYuluKvgJwift3lPk8gyraGcFgzcsJ1nBwSECeMB7Nvs0mt5dS
	5VIKFvrgl6UZve24pzqwQL51COIoWEfIENKcYaFa0zUXcivUkVKAAcBzyIybzXTW9NdWbL8eYQLCE
	7Q4NITrs/hEF+JtE09ltsQgaTkgyFBJk87zEpnVzg8tGBZbLlgZj9YUaWOhFcid292l1eTy78FHTJ
	XqHl8OGGBsYJVN0C12dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmxwj-0005fq-Ni; Mon, 15 Jul 2019 10:11:01 +0000
Received: from mail-eopbgr140042.outbound.protection.outlook.com
 ([40.107.14.42] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmxw1-0005IK-RY
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 10:10:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OKsTYlUD/jMUQJlcBRGSxiWCbvPjG2AB40TyKxri3rY6R8/DFmVm/5hR0OYO3qCfDiQr34IR4VuUJpQgvh8Il6QepyPYExvOEm8R9PhMbSAUPA0aaSG6EJnSc0QaHYpm78eYrgAaTw7CASE3Ebkh2/nFmvqSHkY/0dnvAN4xG/pFm6esU3+VsCesbvCwZLAecOQ7Fj8dIoO2MuNOXtNX3NBIvDYI16a++TFD1RIyzt/wDGA5VnVJG7Jov8BSfQRzCtVKAjcC789LI+sHLREqmnbri0reCZjA0LM2j359KPNDg3yvf4pjfF8xBC7D4AcLyR4MCyWxsCI8/nLjv1njyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sNyypENePuBjV/O4jyyrGF+tssMr8DKFXDO4zYtduL0=;
 b=CcopFPbxeWCGJNo6ogLrOk+SwjcBiei9S4+LVAWJo+PfxlVkgy3dPSmHh+usPR9U6EhxPuU1f8hPZLgBIXHhV2E0w7j1ch6Y4sJeYBRsyKVHJ/W3Btyr9L0nVO2oYmypE8HBNcx/Kif1UvlOGag/uYdzc3u+Sm2XfmDLdRTiaEq5jyhVm+arL77F6HtGpsrAU1y1RcLgiNcYSgaGcnDnGqszNUUcd/ucxbkZVA+mWdY34Dl0Lqgv/H3aS89wWFe6iD56Vj2ObKZHLfilwODjsiR5IxXBrsZgK0A+wWFxSjBbF48550jb/HcIN4VXPriBD3mVsnXk+PcW28Uw4IIQnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sNyypENePuBjV/O4jyyrGF+tssMr8DKFXDO4zYtduL0=;
 b=g9Njpf/PfUnEVtgOZw0PVpoRuZ0gXKU9FTyz0HPu/4glgeyTorgRHGUGntCyz6Mr9aWHhaiw6cxOVRpWNxYdXMQ3xqR1z2/xleAHKZVE9WmEPER0g4VbdStlmTOWIS5iERSR0jOAet6I5yzeQJ5uafz9od1rtG+lykQe7KKdPm4=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4356.eurprd04.prod.outlook.com (52.134.93.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Mon, 15 Jul 2019 10:10:14 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::2023:c0e5:8a63:2e47]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::2023:c0e5:8a63:2e47%5]) with mapi id 15.20.2052.020; Mon, 15 Jul 2019
 10:10:14 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "jassisinghbrar@gmail.com"
 <jassisinghbrar@gmail.com>, "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>, "f.fainelli@gmail.com"
 <f.fainelli@gmail.com>
Subject: [PATCH v3 2/2] mailbox: introduce ARM SMC based mailbox
Thread-Topic: [PATCH v3 2/2] mailbox: introduce ARM SMC based mailbox
Thread-Index: AQHVOvV+noaG+fijQkS+Volhv7SWkw==
Date: Mon, 15 Jul 2019 10:10:14 +0000
Message-ID: <1563184103-8493-3-git-send-email-peng.fan@nxp.com>
References: <1563184103-8493-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1563184103-8493-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR03CA0024.apcprd03.prod.outlook.com
 (2603:1096:203:2e::36) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cc9e7fb9-d82b-4123-cf43-08d7090ca117
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4356; 
x-ms-traffictypediagnostic: AM0PR04MB4356:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR04MB43561518BF7E5953EB49050C88CF0@AM0PR04MB4356.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:425;
x-forefront-prvs: 00997889E7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(396003)(39860400002)(376002)(366004)(199004)(189003)(66066001)(68736007)(2501003)(7736002)(305945005)(110136005)(316002)(99286004)(54906003)(50226002)(8936002)(52116002)(386003)(44832011)(8676002)(186003)(102836004)(446003)(2616005)(11346002)(26005)(14454004)(486006)(66446008)(64756008)(66556008)(66476007)(66946007)(81156014)(81166006)(6306002)(25786009)(2906002)(3846002)(6116002)(2201001)(15650500001)(6486002)(478600001)(86362001)(6436002)(14444005)(966005)(256004)(76176011)(6506007)(5660300002)(71190400001)(476003)(71200400001)(36756003)(6512007)(53936002)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4356;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: WnxRCi7HKfjgsjNMsgnWSLx0wapE8ru1SsOF2cd2lOmG7MZIte8rDIKoK5tXsUlEWkQA3EiokDxs5AL8X0xcFJUYvp07IA8D5ZGNgoWFO7gyVUhXCcQxKLyX4aS4Vi6C+kfMwK4eAqHhbiK8OIPDPyh3tPIXFd+XKfQNrdV62RhfYE4L6+/o8iCW5+4JLB2pEzhjE+/M/skvPWuTnxDeUElAgxQiNThH0T1PGvcZcClrzL5rt2SghmhGSJbASqwuSF6DQAcY/Fh/wl8vuQt0IC59ObU7VTJK0Rb4N/locZBZCfWesPZov2e2d71e0UMLy7R84ejeCqirbKg/Z6zWb2ArYDr4vpBXsrlRtcoolC86s+rZ6jKYZtO9UX08xwMyIF+46DO+CpDoaf7ZsVnSH3zZA4ilKIgqyNhcJITStmA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc9e7fb9-d82b-4123-cf43-08d7090ca117
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jul 2019 10:10:14.5223 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peng.fan@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4356
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_031017_982343_8D43E6F4 
X-CRM114-Status: GOOD (  18.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

V3:
 Drop interrupt.
 Introduce transports for mem/reg usage.
 Add chan-id for mem usage.

V2:
 Add interrupts notification support.

 drivers/mailbox/Kconfig           |   7 ++
 drivers/mailbox/Makefile          |   2 +
 drivers/mailbox/arm-smc-mailbox.c | 215 ++++++++++++++++++++++++++++++++++++++
 3 files changed, 224 insertions(+)
 create mode 100644 drivers/mailbox/arm-smc-mailbox.c

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
index 000000000000..76a2ae11ee4d
--- /dev/null
+++ b/drivers/mailbox/arm-smc-mailbox.c
@@ -0,0 +1,215 @@
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
+#define ARM_SMC_MBOX_MEM_TRANS	BIT(0)
+
+struct arm_smc_chan_data {
+	u32 function_id;
+	u32 chan_id;
+	u32 flags;
+};
+
+struct arm_smccc_mbox_cmd {
+	unsigned long a0, a1, a2, a3, a4, a5, a6, a7;
+};
+
+typedef unsigned long (smc_mbox_fn)(unsigned long, unsigned long,
+				    unsigned long, unsigned long,
+				    unsigned long, unsigned long,
+				    unsigned long, unsigned long);
+static smc_mbox_fn *invoke_smc_mbox_fn;
+
+static int arm_smc_send_data(struct mbox_chan *link, void *data)
+{
+	struct arm_smc_chan_data *chan_data = link->con_priv;
+	struct arm_smccc_mbox_cmd *cmd = data;
+	unsigned long ret;
+	u32 function_id;
+	u32 chan_id;
+
+	if (chan_data->flags & ARM_SMC_MBOX_MEM_TRANS) {
+		if (chan_data->function_id != UINT_MAX)
+			function_id = chan_data->function_id;
+		else
+			function_id = cmd->a0;
+		chan_id = chan_data->chan_id;
+		ret = invoke_smc_mbox_fn(function_id, chan_id, 0, 0, 0, 0,
+					 0, 0);
+	} else {
+		ret = invoke_smc_mbox_fn(cmd->a0, cmd->a1, cmd->a2, cmd->a3,
+					 cmd->a4, cmd->a5, cmd->a6, cmd->a7);
+	}
+
+	mbox_chan_received_data(link, (void *)ret);
+
+	return 0;
+}
+
+static unsigned long __invoke_fn_hvc(unsigned long function_id,
+				     unsigned long arg0, unsigned long arg1,
+				     unsigned long arg2, unsigned long arg3,
+				     unsigned long arg4, unsigned long arg5,
+				     unsigned long arg6)
+{
+	struct arm_smccc_res res;
+
+	arm_smccc_hvc(function_id, arg0, arg1, arg2, arg3, arg4,
+		      arg5, arg6, &res);
+	return res.a0;
+}
+
+static unsigned long __invoke_fn_smc(unsigned long function_id,
+				     unsigned long arg0, unsigned long arg1,
+				     unsigned long arg2, unsigned long arg3,
+				     unsigned long arg4, unsigned long arg5,
+				     unsigned long arg6)
+{
+	struct arm_smccc_res res;
+
+	arm_smccc_smc(function_id, arg0, arg1, arg2, arg3, arg4,
+		      arg5, arg6, &res);
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
+	const char *method;
+	bool mem_trans = false;
+	int ret, i;
+	u32 val;
+
+	if (!of_property_read_u32(dev->of_node, "arm,num-chans", &val)) {
+		if (!val) {
+			dev_err(dev, "invalid arm,num-chans value %u\n", val);
+			return -EINVAL;
+		}
+	} else {
+		return -EINVAL;
+	}
+
+	if (!of_property_read_string(dev->of_node, "transports", &method)) {
+		if (!strcmp("mem", method)) {
+			mem_trans = true;
+		} else if (!strcmp("reg", method)) {
+			mem_trans = false;
+		} else {
+			dev_warn(dev, "invalid \"transports\" property: %s\n",
+				 method);
+
+			return -EINVAL;
+		}
+	} else {
+		return -EINVAL;
+	}
+
+	if (!of_property_read_string(dev->of_node, "method", &method)) {
+		if (!strcmp("hvc", method)) {
+			invoke_smc_mbox_fn = __invoke_fn_hvc;
+		} else if (!strcmp("smc", method)) {
+			invoke_smc_mbox_fn = __invoke_fn_smc;
+		} else {
+			dev_warn(dev, "invalid \"method\" property: %s\n",
+				 method);
+
+			return -EINVAL;
+		}
+	} else {
+		return -EINVAL;
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
+		chan_data[i].chan_id = i;
+
+		if (mem_trans)
+			chan_data[i].flags |= ARM_SMC_MBOX_MEM_TRANS;
+		mbox->chans[i].con_priv = &chan_data[i];
+	}
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
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
