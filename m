Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0843A1FCC7F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 13:39:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=74RyBJ+7eWXE68CAMbXQdZb5Ei0knXIhazql12OcjUA=; b=DqeeiAmFeZvld/
	ipc3/EPBmFLwTxjQKj+gCsDcVdKh6VRxzB2Ex5n48CHbR4caE9rQUYtaTxtB1+1PAkXwVtoq5w6GS
	z4SO8e80qeQu+6VDiGd0f4UAGskNs7qklV7cSXid7WUsX18KL572SM3gpj1wzyR1l5NsbgZ5uCEbM
	TL+KQAt+KNQUKrbN9WoKeq+RseOydzvAnCEP31zlyvB0tQSpwe2eQ/uWsfARo6BWPc0ZBqdQsFA+K
	Z1trfmURJ/WVa1SF+vojElLQsYPa8qfTEmypg7/mCLBAE/+RfGXXkEvL0AZYtLF2VbCefP0upftQy
	zghZ/cE+wcwzNyFMd46g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlWPy-0002ah-LF; Wed, 17 Jun 2020 11:39:46 +0000
Received: from mail-bn7nam10on2064.outbound.protection.outlook.com
 ([40.107.92.64] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlWOD-0001Aj-9M
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 11:38:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y7RnUe683Yo2Tnw4pJhpLKbFI+sXQDxTJOuRo37po9EGa8fD3Nf3h3F5srZPhdelhGHwKOSN5G6DPvoyep6+cB5ySulR7/YeUzeratmwWnzb1rRT+SxyB2r+lU+XCwukkgoL7MK9PQWRD3t8Sstr8eOWjUfNJ6/m+VDFIcDEtB3cm4j4cvB93jpCLWPOSlibccLpqPmLRdVk4s2c5WvHyn65IaUuZlkfZ79+qKE4dxAGTBPJDiiIFIgLmTyU6cL9RpUjKdgwFjk5yM8SxUZHEznv7o+K0pf5DyYZnwEyY0ICON6BHlfImF1OnRs1Zuty3H17WX+xog6rFaYjj+Ohag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IB9uxm7lwYo7dVHyVjIwXxLpQBJ2/CAVJvzzFPwPt4E=;
 b=eyDAFq3Kl63i8J4CEO5ICmZLybAfs9r5abaR6oRXLIPEieAXnsf0PoLsrNZd6m6Bt9xCX4a8xIM2rw150rbvl+eaBcQ58eRlUESmrBnoscjsAYTcCDeOoG01lB+3arZcS/mLWj6HwzneLHRpdGCSdWbiniKD6Drgxf+03zDwqDSIyjPTVeUhqkNg4U8CZmtBTT4VZtECw9wielxFkzdGejnm86H5wI+HZLiUJnpGw4IArYRhaORb19yrRXM4/KDMxFRsPl539C7ZbdXfq2XCfcK2SFcsnvZR2Dhr4XeKxV6KMbFFhAE7v1PZTBTJfq1AwszekQGuZF9jADb0PPkoag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IB9uxm7lwYo7dVHyVjIwXxLpQBJ2/CAVJvzzFPwPt4E=;
 b=RsWUyvE5MGdfkcEQtwSz0zhXmrZMo5DIPud8AkYh5pZLrNswVCVoQ8zgykYfrHkq4KqoDs570qHLdTvLf4kf3+3H89UCoUe8dIiZjvDutzW40L3MesF/XKqJtpy1sZGJP4QmqcOZHmPAWKUG09vU0pEBBxrLEF5SQ2aOkMJrS5g=
Received: from MN2PR19CA0056.namprd19.prod.outlook.com (2603:10b6:208:19b::33)
 by SN6PR02MB4912.namprd02.prod.outlook.com (2603:10b6:805:99::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.25; Wed, 17 Jun
 2020 11:37:50 +0000
Received: from BL2NAM02FT008.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:19b:cafe::f3) by MN2PR19CA0056.outlook.office365.com
 (2603:10b6:208:19b::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.22 via Frontend
 Transport; Wed, 17 Jun 2020 11:37:50 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT008.mail.protection.outlook.com (10.152.76.162) with Microsoft SMTP
 Server id 15.20.3088.18 via Frontend Transport; Wed, 17 Jun 2020 11:37:50
 +0000
Received: from [149.199.38.66] (port=36161 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1jlWN3-0001I0-EA; Wed, 17 Jun 2020 04:36:45 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1jlWO5-0007aG-O2; Wed, 17 Jun 2020 04:37:49 -0700
Received: from xsj-pvapsmtp01 (xsj-mail.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 05HBbiV2015099; 
 Wed, 17 Jun 2020 04:37:44 -0700
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1jlWO0-0007TR-8l; Wed, 17 Jun 2020 04:37:44 -0700
From: Srinivas Neeli <srinivas.neeli@xilinx.com>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 michal.simek@xilinx.com, shubhrajyoti.datta@xilinx.com, sgoud@xilinx.com
Subject: [PATCH V4 5/7] gpio: zynq: Disable the irq if it is not a wakeup
 source
Date: Wed, 17 Jun 2020 17:07:25 +0530
Message-Id: <1592393847-1415-6-git-send-email-srinivas.neeli@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1592393847-1415-1-git-send-email-srinivas.neeli@xilinx.com>
References: <1592393847-1415-1-git-send-email-srinivas.neeli@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(136003)(396003)(376002)(39860400002)(346002)(46966005)(2616005)(9786002)(426003)(107886003)(36756003)(6666004)(8676002)(7696005)(44832011)(4326008)(6636002)(82740400003)(8936002)(82310400002)(5660300002)(26005)(186003)(2906002)(83380400001)(356005)(47076004)(316002)(336012)(70206006)(70586007)(81166007)(478600001);
 DIR:OUT; SFP:1101; 
X-MS-PublicTrafficType: Email
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: beb4aa85-6d6e-442c-2548-08d812b2dd69
X-MS-TrafficTypeDiagnostic: SN6PR02MB4912:
X-Microsoft-Antispam-PRVS: <SN6PR02MB4912E6C50B4DA18DE7ABD301AF9A0@SN6PR02MB4912.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4714;
X-Forefront-PRVS: 04371797A5
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QLu2Wi3LPr1rXNOCBo7AHZ7oexMQNtna89EboIDjD1bAoGsnWLJBnm994qME2aWFsDFoc7udzc7GVyajTJM7qwQGFADnIUj6KxIwm0Ps8HaQX2PdoHAsrc5RvTcCiCKAsUoMvafN4ai0zWhbnK96+0yAQOCmw+G6SK4l3MLi4DUXp9kitfa4ZMf5gQ0bImRKr8WATk+O9MSMOKSbjbaMGy1gM93UXiNaSwXRQs4KTRIn34ySJDeSA5tN8208FGgc3At5XiVj7hyvFulnolMbyW3e9zussaLUxZmFd/qwVU1lKjGO0CYNkhd6l2V7d+Fhss/DfCbCPIx7t8EpqxNsEzyOPBbqv2g9SsTb5gCVqKpk9Ud9H3S3bngNTXaIxwmmoh6tgZkHNWY0hmn6PvS34g==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2020 11:37:50.0979 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: beb4aa85-6d6e-442c-2548-08d812b2dd69
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB4912
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_043757_458566_310E8838 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.92.64 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.92.64 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, git@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>

If gpio is not set to wake disable the interrupt. ATF set all slaves with
enabled interrupts as wakeup sources and if gpio is used in r5 then it
wakes up linux.

Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---
 drivers/gpio/gpio-zynq.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpio/gpio-zynq.c b/drivers/gpio/gpio-zynq.c
index 9ac69144a0eb..b6261a3aec55 100644
--- a/drivers/gpio/gpio-zynq.c
+++ b/drivers/gpio/gpio-zynq.c
@@ -735,6 +735,9 @@ static int __maybe_unused zynq_gpio_suspend(struct device *dev)
 	struct zynq_gpio *gpio = dev_get_drvdata(dev);
 	struct irq_data *data = irq_get_irq_data(gpio->irq);
 
+	if (!device_may_wakeup(dev))
+		disable_irq(gpio->irq);
+
 	if (!irqd_is_wakeup_set(data)) {
 		zynq_gpio_save_context(gpio);
 		return pm_runtime_force_suspend(dev);
@@ -749,6 +752,9 @@ static int __maybe_unused zynq_gpio_resume(struct device *dev)
 	struct irq_data *data = irq_get_irq_data(gpio->irq);
 	int ret;
 
+	if (!device_may_wakeup(dev))
+		enable_irq(gpio->irq);
+
 	if (!irqd_is_wakeup_set(data)) {
 		ret = pm_runtime_force_resume(dev);
 		zynq_gpio_restore_context(gpio);
@@ -956,6 +962,8 @@ static int zynq_gpio_probe(struct platform_device *pdev)
 		goto err_pm_put;
 	}
 
+	irq_set_status_flags(gpio->irq, IRQ_DISABLE_UNLAZY);
+	device_init_wakeup(&pdev->dev, 1);
 	pm_runtime_put(&pdev->dev);
 
 	return 0;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
