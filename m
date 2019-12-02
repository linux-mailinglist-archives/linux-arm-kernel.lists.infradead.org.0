Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC3B10E910
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 11:40:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8eFTHFeGW+Oqj8QGI4tGjuRxFkxng5CYq3zj4byiLdo=; b=j/SjiLUWD0yaQd
	YLetJ3m00cwc/AWbLaA/hpf1sQv9nkWWa/k/4iYPwLw0VSNmz+z48V4BCrf/Vc+oz1gGPD8GqmrNW
	x9Xx1gMdKtaV8v1KonrMbU/1XzoYmCiL2SSjkHfCp/8LXnwOM//KyR0UCp60X0geoEtZBuJIQtNQD
	qcSCg4yK91t387GTQ2CoL5XU3yYV2VaoklCDRBsHyFjn/eGGNoq4FspRET3132TeZBkK3ZdSh3C5d
	r0Kk+u3vdDKWYb0HM9Y9d0/laZxsE5KZljYwTcTRmaZEK2vSaiaL3XrZDRO/IiFe1QzmRoY5myxTr
	dfghwEcDNs2xqDFe3e0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibj7l-00034x-Oz; Mon, 02 Dec 2019 10:40:13 +0000
Received: from mail-eopbgr820044.outbound.protection.outlook.com
 ([40.107.82.44] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibj6u-0002bb-Sy
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 10:39:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iAOYqUyXQL3POJ6JedbGkhxOWiE0caMxjtNYaYBXNZ1XYPXKFlf4zcmyzrYmYhwqx/wOCVSe1VA0C1FnYyygxCa0XCPEyAMpV5OXL7gUb5t1J2EnRuKhMEcKj4xouCtIQtzqhxNwJOPNxCEqmNbWf9PPOOzwGqKFgHZJxjG6FcQ/OjjA7fPc2mPJlisT+MnT6jg4+aNe2cL0fu+mJt4I+LHgUPJsVZM5nKbmZORgsQwiL7Zn7OOapsiK+PpajaleT94h82LnCDYpALMVKwoyF2ShJtzrG2HzapsZWA+vY/c3nWQc6P/aaSDN+075x0Q9+Dwwk4rk43Op+9jv8Edn2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8u58NSKn+UEU/bTXTqCSX8gxfxyGR8b4Ak1KPgaUgEo=;
 b=MFavcvIK5IvESwz9wXIrusUoO9o+OGuhkSKr3IdjOIfU/mfgDueBgGveojahUaDu4otPWUIbqJNvQe9h8c4Kj2KmnE1/UeUEvHUfav33kNiC4xyd63x28rw1AFNBYba5KbLJuo9aOQHXHuTNie448ij/Ar/YszlEYxleXPmzf6ffbwOE+ooH02D8mCjKOaYZBn88LKuKl821rdeKdVMf3z80PRKSGe4StMjO+iTG6rFqqH+yajKq18f2gjdxaLHTmJDMkkbAY6nphlLdFs/EVtBbrw2AmJCGOHt3zZdXCJRoR2hAX/NikDo1rQxAYf3X1t04UjT6PFn4zHFCBbrcCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8u58NSKn+UEU/bTXTqCSX8gxfxyGR8b4Ak1KPgaUgEo=;
 b=e6p1b6l9oFzx+hFk/itFo3JeUeYiyWPulSHgOtS2gwpVqzBWeWG11R6nkro42cdm1FqDSfSXU7N12bcy7J92az7y1flV67dlJus9nuTPcIKVkARgNqeg/sC+nFHhoF/p8DmNNTjqFaNAExhZRX65cwHtYlXrbG+yNXlk4HgHP2E=
Received: from BL0PR02CA0104.namprd02.prod.outlook.com (2603:10b6:208:51::45)
 by MWHPR02MB2270.namprd02.prod.outlook.com (2603:10b6:300:5c::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2495.21; Mon, 2 Dec
 2019 10:39:16 +0000
Received: from CY1NAM02FT020.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::208) by BL0PR02CA0104.outlook.office365.com
 (2603:10b6:208:51::45) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2495.17 via Frontend
 Transport; Mon, 2 Dec 2019 10:39:16 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT020.mail.protection.outlook.com (10.152.75.191) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2474.17
 via Frontend Transport; Mon, 2 Dec 2019 10:39:15 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1ibj6p-0006yo-AK; Mon, 02 Dec 2019 02:39:15 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1ibj6k-000826-6X; Mon, 02 Dec 2019 02:39:10 -0800
Received: from xsj-pvapsmtp01 (smtp3.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xB2Ad5Bt009759; 
 Mon, 2 Dec 2019 02:39:05 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1ibj6f-000805-Hn; Mon, 02 Dec 2019 02:39:05 -0800
From: Rajan Vaja <rajan.vaja@xilinx.com>
To: sre@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
 michal.simek@xilinx.com, jolly.shah@xilinx.com, tejas.patel@xilinx.com
Subject: [PATCH v3 2/2] drivers: soc: xilinx: Use mailbox IPI callback
Date: Mon,  2 Dec 2019 02:38:51 -0800
Message-Id: <1575283131-9339-3-git-send-email-rajan.vaja@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1575283131-9339-1-git-send-email-rajan.vaja@xilinx.com>
References: <1574412258-17988-1-git-send-email-rajan.vaja@xilinx.com>
 <1575283131-9339-1-git-send-email-rajan.vaja@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(376002)(136003)(39860400002)(189003)(199004)(6666004)(50226002)(305945005)(336012)(426003)(16586007)(81166006)(316002)(446003)(107886003)(8676002)(70206006)(36386004)(106002)(81156014)(26005)(8936002)(70586007)(186003)(2616005)(11346002)(4326008)(47776003)(6636002)(5660300002)(356004)(9786002)(7696005)(76176011)(51416003)(2906002)(36756003)(478600001)(14444005)(44832011)(50466002)(48376002)(15650500001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR02MB2270; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 55c37366-771e-4910-0a21-08d77713e108
X-MS-TrafficTypeDiagnostic: MWHPR02MB2270:
X-Microsoft-Antispam-PRVS: <MWHPR02MB2270D03C1919B84E15E0B1E7B7430@MWHPR02MB2270.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-Forefront-PRVS: 0239D46DB6
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: odXO2xsdTDhqec614UfUhXKPdjvlL2WI7JSSz7HxEbq/go5J4CMFco/23XHmadboGCchXA4IuNPpLM5upSYyxkJQBEfbfcA9eN54ulNbNQ7ScetlT4Gg+lhe5pXnyZHm0H1oKG0JlINn1+3/OlwBJ0SkGC9DHZ6NPELgl+tR1nXTsxE0cNe34AJjCoLG4Wfv7FdhE8j8wZf0xaoZl01IEadxFN4fVprAEkW/Ggtvgz4RKOvIvF3ozvVRUcnW2I10ELYShHfZNiMv+TduExQC8JGrW7Sxrq7GYYjdMSg9NCNgfVSPyRj1+G5+bz1ev+lEtCn3ATNoHQuDUOloAfDMEdYFaiURj5RPMUm/B/7MeuQkn4xdE0Aj/9/0Xu7sTRPsF09atwmKggit/13119yMooYcSu1mLUY5gSH6BDthsRgR6i3wErxaNpaMNm1eFdmH
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2019 10:39:15.7907 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 55c37366-771e-4910-0a21-08d77713e108
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR02MB2270
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_023921_072314_89F33A61 
X-CRM114-Status: GOOD (  17.87  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.82.44 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Rajan Vaja <rajan.vaja@xilinx.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tejas Patel <tejas.patel@xilinx.com>

Add support for init suspend callback through mailbox IPI callback.

Signed-off-by: Tejas Patel <tejas.patel@xilinx.com>
Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
---
Changes in v3:
 - select MAILBOX and ZYNQMP_IPI_MBOX as it is required in zynqmp
   power driver.
---
 drivers/soc/xilinx/Kconfig        |   6 +-
 drivers/soc/xilinx/zynqmp_power.c | 119 +++++++++++++++++++++++++++++++++-----
 2 files changed, 111 insertions(+), 14 deletions(-)

diff --git a/drivers/soc/xilinx/Kconfig b/drivers/soc/xilinx/Kconfig
index 01e76b5..223f1f9 100644
--- a/drivers/soc/xilinx/Kconfig
+++ b/drivers/soc/xilinx/Kconfig
@@ -21,11 +21,15 @@ config ZYNQMP_POWER
 	bool "Enable Xilinx Zynq MPSoC Power Management driver"
 	depends on PM && ARCH_ZYNQMP
 	default y
+	select MAILBOX
+	select ZYNQMP_IPI_MBOX
 	help
 	  Say yes to enable power management support for ZyqnMP SoC.
 	  This driver uses firmware driver as an interface for power
 	  management request to firmware. It registers isr to handle
-	  power management callbacks from firmware.
+	  power management callbacks from firmware. It registers mailbox client
+	  to handle power management callbacks from firmware.
+
 	  If in doubt, say N.
 
 config ZYNQMP_PM_DOMAINS
diff --git a/drivers/soc/xilinx/zynqmp_power.c b/drivers/soc/xilinx/zynqmp_power.c
index 1b9d144..d572d2e 100644
--- a/drivers/soc/xilinx/zynqmp_power.c
+++ b/drivers/soc/xilinx/zynqmp_power.c
@@ -2,7 +2,7 @@
 /*
  * Xilinx Zynq MPSoC Power Management
  *
- *  Copyright (C) 2014-2018 Xilinx, Inc.
+ *  Copyright (C) 2014-2019 Xilinx, Inc.
  *
  *  Davorin Mista <davorin.mista@aggios.com>
  *  Jolly Shah <jollys@xilinx.com>
@@ -16,6 +16,20 @@
 #include <linux/suspend.h>
 
 #include <linux/firmware/xlnx-zynqmp.h>
+#include <linux/mailbox/zynqmp-ipi-message.h>
+
+/**
+ * struct zynqmp_pm_work_struct - Wrapper for struct work_struct
+ * @callback_work:	Work structure
+ * @args:		Callback arguments
+ */
+struct zynqmp_pm_work_struct {
+	struct work_struct callback_work;
+	u32 args[CB_ARG_CNT];
+};
+static struct zynqmp_pm_work_struct *zynqmp_pm_init_suspend_work;
+static struct mbox_chan *rx_chan;
+static const struct zynqmp_eemi_ops *eemi_ops;
 
 enum pm_suspend_mode {
 	PM_SUSPEND_MODE_FIRST = 0,
@@ -31,7 +45,6 @@ static const char *const suspend_modes[] = {
 };
 
 static enum pm_suspend_mode suspend_mode = PM_SUSPEND_MODE_STD;
-static const struct zynqmp_eemi_ops *eemi_ops;
 
 enum pm_api_cb_id {
 	PM_INIT_SUSPEND_CB = 30,
@@ -68,6 +81,53 @@ static irqreturn_t zynqmp_pm_isr(int irq, void *data)
 	return IRQ_HANDLED;
 }
 
+static void ipi_receive_callback(struct mbox_client *cl, void *data)
+{
+	struct zynqmp_ipi_message *msg = (struct zynqmp_ipi_message *)data;
+	u32 payload[CB_PAYLOAD_SIZE];
+	int ret;
+
+	memcpy(payload, msg->data, sizeof(msg->len));
+	/* First element is callback API ID, others are callback arguments */
+	if (payload[0] == PM_INIT_SUSPEND_CB) {
+		if (work_pending(&zynqmp_pm_init_suspend_work->callback_work))
+			return;
+
+		/* Copy callback arguments into work's structure */
+		memcpy(zynqmp_pm_init_suspend_work->args, &payload[1],
+		       sizeof(zynqmp_pm_init_suspend_work->args));
+
+		queue_work(system_unbound_wq,
+			   &zynqmp_pm_init_suspend_work->callback_work);
+
+		/* Send NULL message to mbox controller to ack the message */
+		ret = mbox_send_message(rx_chan, NULL);
+		if (ret)
+			pr_err("IPI ack failed. Error %d\n", ret);
+	}
+}
+
+/**
+ * zynqmp_pm_init_suspend_work_fn - Initialize suspend
+ * @work:	Pointer to work_struct
+ *
+ * Bottom-half of PM callback IRQ handler.
+ */
+static void zynqmp_pm_init_suspend_work_fn(struct work_struct *work)
+{
+	struct zynqmp_pm_work_struct *pm_work =
+		container_of(work, struct zynqmp_pm_work_struct, callback_work);
+
+	if (pm_work->args[0] == SUSPEND_SYSTEM_SHUTDOWN) {
+		orderly_poweroff(true);
+	} else if (pm_work->args[0] == SUSPEND_POWER_REQUEST) {
+		pm_suspend(PM_SUSPEND_MEM);
+	} else {
+		pr_err("%s Unsupported InitSuspendCb reason code %d.\n",
+		       __func__, pm_work->args[0]);
+	}
+}
+
 static ssize_t suspend_mode_show(struct device *dev,
 				 struct device_attribute *attr, char *buf)
 {
@@ -119,6 +179,7 @@ static int zynqmp_pm_probe(struct platform_device *pdev)
 {
 	int ret, irq;
 	u32 pm_api_version;
+	struct mbox_client *client;
 
 	eemi_ops = zynqmp_pm_get_eemi_ops();
 	if (IS_ERR(eemi_ops))
@@ -134,17 +195,46 @@ static int zynqmp_pm_probe(struct platform_device *pdev)
 	if (pm_api_version < ZYNQMP_PM_VERSION)
 		return -ENODEV;
 
-	irq = platform_get_irq(pdev, 0);
-	if (irq <= 0)
-		return -ENXIO;
-
-	ret = devm_request_threaded_irq(&pdev->dev, irq, NULL, zynqmp_pm_isr,
-					IRQF_NO_SUSPEND | IRQF_ONESHOT,
-					dev_name(&pdev->dev), &pdev->dev);
-	if (ret) {
-		dev_err(&pdev->dev, "devm_request_threaded_irq '%d' failed "
-			"with %d\n", irq, ret);
-		return ret;
+	if (of_find_property(pdev->dev.of_node, "mboxes", NULL)) {
+		zynqmp_pm_init_suspend_work =
+			devm_kzalloc(&pdev->dev,
+				     sizeof(struct zynqmp_pm_work_struct),
+				     GFP_KERNEL);
+		if (!zynqmp_pm_init_suspend_work)
+			return -ENOMEM;
+
+		INIT_WORK(&zynqmp_pm_init_suspend_work->callback_work,
+			  zynqmp_pm_init_suspend_work_fn);
+		client = devm_kzalloc(&pdev->dev, sizeof(*client), GFP_KERNEL);
+		if (!client)
+			return -ENOMEM;
+
+		client->dev = &pdev->dev;
+		client->rx_callback = ipi_receive_callback;
+
+		rx_chan = mbox_request_channel_byname(client, "rx");
+		if (IS_ERR(rx_chan)) {
+			dev_err(&pdev->dev, "Failed to request rx channel\n");
+			return IS_ERR(rx_chan);
+		}
+	} else if (of_find_property(pdev->dev.of_node, "interrupts", NULL)) {
+		irq = platform_get_irq(pdev, 0);
+		if (irq <= 0)
+			return -ENXIO;
+
+		ret = devm_request_threaded_irq(&pdev->dev, irq, NULL,
+						zynqmp_pm_isr,
+						IRQF_NO_SUSPEND | IRQF_ONESHOT,
+						dev_name(&pdev->dev),
+						&pdev->dev);
+		if (ret) {
+			dev_err(&pdev->dev, "devm_request_threaded_irq '%d' "
+					    "failed with %d\n", irq, ret);
+			return ret;
+		}
+	} else {
+		dev_err(&pdev->dev, "Required property not found in DT node\n");
+		return -ENOENT;
 	}
 
 	ret = sysfs_create_file(&pdev->dev.kobj, &dev_attr_suspend_mode.attr);
@@ -160,6 +250,9 @@ static int zynqmp_pm_remove(struct platform_device *pdev)
 {
 	sysfs_remove_file(&pdev->dev.kobj, &dev_attr_suspend_mode.attr);
 
+	if (!rx_chan)
+		mbox_free_channel(rx_chan);
+
 	return 0;
 }
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
