Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B609F88F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 05:03:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kE5faxhqR2Nkqlb3l/CC0iB+kHrTEgF+JH0TlkCHJPs=; b=Wt2UfYg4XLeevV
	yH8XTFAhwZU0MM+6E9rlR9zGinXkSmDNLhC7sR6Cboyt4H6Zz5H+Qb9JyQ6QEINjHm3Nzn3l4EmcV
	NoCRQL6P/xslZ+4FhxMjnjpVxFdpuOyWMx7H65sR3YQLJLbwAgJeKUnl4gd3N2K25BHbZ3P7AZwoT
	nRpw9TQwvZAh5OYQzka0wptoTuJ0PK0xus+cK5hkJjbiWSd3i92C7CbhXBskOXLWcyvSFma0nYBKY
	DakiPxwITErtuy52EjWsA+JymS7qopAIN3iqo3w1iuT4wOjH/VFsByMOBNh96RMWkQczVIXTA+9Ws
	9z/a6PBxdKnjWIquCzUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2oFU-0003kc-M8; Wed, 28 Aug 2019 03:03:52 +0000
Received: from mail-eopbgr30058.outbound.protection.outlook.com ([40.107.3.58]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2oEk-0003KZ-OS
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 03:03:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WJ9JQUyxHGehVuJzlDKx6BFQ4Nt51EBCImKbS1eTYAG4vxCdP1Nx/WcqpYaIWgdqkFceS2rRQpLgVagVWUYLTJpauzn+49ma3gXonAFGDzNMmFJOMS0eMOlHXYj38x9UEdf1pOiDM11kLDaORNtlKPa5pfsmZWtDKcInYGmnocie1Nx0EWaWGDFUQnJzuEttzcZVeat8Dno0SEbf/pAf6NsywzXgjayWFelRsLL35gIGOXoHxm1Cn0hMK9BjYUjanVOtDD2tY67bI6+8McP8EKV80q98ZcfDVIsVXwp1tkwnDbQnXKKw9ZNJF0ZosIF2wwCRvNoftqhYpM4cfSjuJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mQLiX/5q6Ozn7jRCB+ApopDSM5CpvY/9PJqQMc2HFhg=;
 b=VHcnqXhIBuCDeaiADyA2d51QVSNKbyjjPkI/GKMpudRW+D3f3TKetfwRSHo7fUuVVACjZ3GZ8c/DRbda4GCZh2xwaZEX/RD81ieLTPvbyl4K65VVeWh5raeuZBI74noywXxXuNrwlfxGjMkvGx7nSWaSjPjzGBZTQS3vGRissJlT/n35NjAgKbhp4A85Z5G3SfGWgFFTqAIfQvJzJ/5kunEksP+RtA+RsmgoyEBdHLf8NtuzWWNuww8XuBjDeDwrwpNdhoEDl2KER5CbLFWc2e4G/F80PM3qE2MxoFaILN4z/yOeiQavI9EtEljENBXDCAnSe1myQVbPwKwb2+SVOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mQLiX/5q6Ozn7jRCB+ApopDSM5CpvY/9PJqQMc2HFhg=;
 b=MegBQF8rhd9FZtsPmrLLu/Z9ku1ykAMPGaik00YQq4vErNXbmS7ksK/opjjvDMMtb8q6ES7pgoq3J+IqZPdZTQEp3PwJGN4PoaVNCliSDnK56OZ+fnPhSFHtNiIVZefbtoR969H3fdJi2+gnsLCaf5RA16TcyvH35UTlu1QvCB4=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6033.eurprd04.prod.outlook.com (20.179.33.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Wed, 28 Aug 2019 03:03:02 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4%4]) with mapi id 15.20.2178.023; Wed, 28 Aug 2019
 03:03:02 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "jassisinghbrar@gmail.com"
 <jassisinghbrar@gmail.com>, "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>, "f.fainelli@gmail.com"
 <f.fainelli@gmail.com>
Subject: [PATCH v5 2/2] mailbox: introduce ARM SMC based mailbox
Thread-Topic: [PATCH v5 2/2] mailbox: introduce ARM SMC based mailbox
Thread-Index: AQHVXU0ae8K1wuPrRECT1HUVPDQ2yQ==
Date: Wed, 28 Aug 2019 03:03:02 +0000
Message-ID: <1567004515-3567-3-git-send-email-peng.fan@nxp.com>
References: <1567004515-3567-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1567004515-3567-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR02CA0163.apcprd02.prod.outlook.com
 (2603:1096:201:1f::23) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7bc3dcca-c3cc-4d30-31e0-08d72b643d2a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM0PR04MB6033; 
x-ms-traffictypediagnostic: AM0PR04MB6033:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6033ABEBB886A0196B65A09488A30@AM0PR04MB6033.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:425;
x-forefront-prvs: 014304E855
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(376002)(346002)(136003)(366004)(189003)(199004)(476003)(25786009)(6116002)(76176011)(66446008)(53936002)(3846002)(66476007)(66946007)(66556008)(64756008)(8936002)(6512007)(478600001)(386003)(44832011)(6306002)(305945005)(15650500001)(54906003)(2201001)(86362001)(2616005)(14454004)(486006)(6506007)(256004)(966005)(7736002)(6436002)(2906002)(50226002)(446003)(4326008)(81166006)(102836004)(81156014)(8676002)(6486002)(36756003)(5660300002)(26005)(71190400001)(2501003)(99286004)(66066001)(52116002)(316002)(186003)(11346002)(71200400001)(110136005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6033;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 9+cpldItVlN9Z2FwPJOiyxLZ7c5lgQGRMlBuNkAfr+It032WRTVBxVjyBCNElfMJNbXRu9Z2g9+zuCqjxLCafEg+qt7qLgHb81OlgF3tPfJSeBkERtzGH+tVTngJ77Vj+1c1Oh8EAUVzXN5R9W/QZoDXZ4iyG8G1LxLEIAX6kcc6e1TNS0UQEkFdpSFtF64k9+PF3skB0U5HwsH4s2bKtcA81iRCC8HOOpjVuC+nbzoi6BdoKqJaMlXKcqTVh2pzRAbBnsWsINrpKY61ahmkfW171tc1H5fbwtRemU+TtSWuomYFHxdaTEbMj4G2K+MivtHjIjJnaWu+5AoX4P1DVAhGEdEfYSS94Jr15rLUKC0xyVPo04WZtDHRrgDDjVCCt650XkKhrqIpHB4Q02pa7uP3EQK0mObJ4YM+EldCO5M=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7bc3dcca-c3cc-4d30-31e0-08d72b643d2a
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2019 03:03:02.0792 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: asovwAvdogokIw1HbUgezUiQeTxJQZliu7XD4SKqBlW/Sw83C3wTbHdlh5h80nYkduk7QuxbT5mKV45vk80cdw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_200306_813825_45E9278E 
X-CRM114-Status: GOOD (  18.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.58 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 drivers/mailbox/arm-smc-mailbox.c | 215 ++++++++++++++++++++++++++++++++++++++
 3 files changed, 224 insertions(+)
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
