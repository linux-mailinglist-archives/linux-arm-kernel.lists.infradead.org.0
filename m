Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C0CF2CA9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 11:37:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TXxzbmjHz6sLhn7JZaiFveMEnn9+eQOmutV0QYlKK5M=; b=FmrVR0K6FVTUgG
	NyPPC2Dro02hF3eNdRVUE+wotG5bjWqviMj0Y+d1eKzRxSItchK1nQAESy4C3ObOQliWG2PljzD5e
	3/WT03eTkHPgq/EeVnlpjW8htLw4ztjHHIP1gBS7jPTxlrhWVK99kpc7OPE8Q4j9WWwUtQC1s8kTT
	WzJnyfbvc+K0cFPUw0mAE1WeroW8v7LNaJcqTifSOpgVG3RYi+2cfqiKcXD/FaCRMZ25/JWUvm/2E
	ypjhg3xS0xqUXZZZVSZOiHeERO46qN1uo5Z1jnCBeiAZ0E5uHL5J492+xkZQzAVwcDL9vJXEm0MN1
	vzZTmCWlZvQB92FZm65A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSfA8-0002C6-Gt; Thu, 07 Nov 2019 10:37:12 +0000
Received: from mail-dm3nam03on0600.outbound.protection.outlook.com
 ([2a01:111:f400:fe49::600]
 helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSf9y-0002BA-Ic
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 10:37:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GYjFKNcT5qNphoXkEgRNSwfdlbXPWyq4zyCF/JY/Q4mdAJnF+F5F2Y4ALMWdwhArGcta3txmgNKtWMwzTImTdGcxFutQViufkrEGuXkYdrZ2VraKubaKSkbnWm/YvuPlGHaLWoP8t+TwoB3P1+PbNeUIxWoznK8Ml1tGEfIHOD12VJ9cOhNMVXNc9nsdrY8glUcvc+iYUQxJCqcmHJ7Gw0LnlkIuFEwRgwtf+XycDrhnU5Xnuj7oJ9wcdsIxXaEO3EcBLJlJAfEC78moLiVii15G/CRfQMqGPWRZ7ANXvnFye4UYkxAwX9B9IFwhcSFvYI/w48DGuvPpGVyVTEk8bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9FfM9peuImQcLNVHerNP+tLmwkHVjmfQC2uP9FIKvuk=;
 b=YVndQMB0Jz1ZTXH+X2uQjmFg61N0ev6gN2WuDbyEdesNb3OokNt1st10MHQrSPURrqnzWbGXeLBL/lquLn6PwxwHP5Ho5cqKLMpha7sr9VKVMYdcY8Ny8sbCzP6BBN1ZNDuEU6L0y06A1wCQ2ejtZHIiJOf90rqaC4zyQHnw30+qrKv5E5ldnOB89FSl++r9Nv6R6joIJwiFTxglNAibqe5+2O8aiPkgHA0QeVFIgtZYS14/t50/q78V4AYQ8Mf1M9c0/3pnqQtHbi9Uub0K1fCfeqmXVYQoVr/QkKIx2EAKLFCudotBwJG1QTqkSNz8d5tpEPHdCtRCZEBXuu/VFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9FfM9peuImQcLNVHerNP+tLmwkHVjmfQC2uP9FIKvuk=;
 b=fjseMZvhxgslgVFUdD8xN0H7Tec1fI5xUakS7l9F1R3aIEhJmgw+0iL/4zn/Uof80ZeOhvfKJfJqdXGTeVGu9woi0qpRqMhZmMcM7CSmTcy96A+TIvWOCvULeSgGWNCDzsbSCzacWirlmjqnE/7DknagMuw30XPAPoIZHF4PJBk=
Received: from BN6PR02CA0040.namprd02.prod.outlook.com (2603:10b6:404:5f::26)
 by BYAPR02MB4040.namprd02.prod.outlook.com (2603:10b6:a02:f8::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.23; Thu, 7 Nov
 2019 10:36:58 +0000
Received: from SN1NAM02FT028.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::202) by BN6PR02CA0040.outlook.office365.com
 (2603:10b6:404:5f::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.22 via Frontend
 Transport; Thu, 7 Nov 2019 10:36:58 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT028.mail.protection.outlook.com (10.152.72.105) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2430.20
 via Frontend Transport; Thu, 7 Nov 2019 10:36:58 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iSf9t-0004Zo-RV; Thu, 07 Nov 2019 02:36:57 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iSf9o-00026Z-Hg; Thu, 07 Nov 2019 02:36:52 -0800
Received: from xsj-pvapsmtp01 (maildrop.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xA7AahHX027859; 
 Thu, 7 Nov 2019 02:36:43 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iSf9e-00024W-S3; Thu, 07 Nov 2019 02:36:42 -0800
From: Rajan Vaja <rajan.vaja@xilinx.com>
To: michal.simek@xilinx.com, daniel.lezcano@linaro.org, tglx@linutronix.de
Subject: [PATCH] drivers: clocksource: Use ttc driver as platform driver
Date: Thu,  7 Nov 2019 02:36:28 -0800
Message-Id: <1573122988-18399-1-git-send-email-rajan.vaja@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(396003)(39860400002)(189003)(199004)(51416003)(9786002)(47776003)(16586007)(7696005)(48376002)(126002)(476003)(107886003)(478600001)(70586007)(70206006)(5660300002)(316002)(50466002)(106002)(26005)(186003)(426003)(36756003)(81156014)(81166006)(8936002)(336012)(50226002)(36386004)(486006)(44832011)(305945005)(2616005)(356004)(8676002)(6666004)(2906002)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB4040; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5e1620ee-395b-4d7c-f361-08d7636e6ab1
X-MS-TrafficTypeDiagnostic: BYAPR02MB4040:
X-Microsoft-Antispam-PRVS: <BYAPR02MB404083E7AC41B941D745E772B7780@BYAPR02MB4040.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:962;
X-Forefront-PRVS: 0214EB3F68
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 97L3NulMGWqSa+MVucHsTXhtOOqoQcP9fgxXUCniySPO+j/zPQdbppY190Krj12FlMZcjqYasIkSEQrkzhEBC2GI1IooX+EySPn1y1xHeYhGZrO6p3Ap7eeMFGgF2XnKXh0uOGhqReOfGENHt6QdaYBD1LQWI9L6/jgcBFQTzLvpQK3qmapm7L3Li8Sn5MQzW2Nk5X7tyns8mVq3oIjhCkqaQqOBKxRHzIV0gE7kWJysCKxqCoKTpmjy3VflRZYRMpfMT8iWmNO1CHARwKljrbYga90He9afUFpmTY3UJ+wSitbzmL0jM65thIJyGNMuvBad/K6jsr3aWUow72ysRoxY88led0XqPTcbjDMVWpXzpe0l78py4N0Ym5wPDrGtp16WAY11j2EL7II6dwBQexcKZOJV3tKKPQKIDCpiW/ywUvjHHUwSolcY5eTQOe3z
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2019 10:36:58.2703 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e1620ee-395b-4d7c-f361-08d7636e6ab1
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB4040
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_023702_614631_E9FC6988 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe49:0:0:0:600 listed in]
 [list.dnswl.org]
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
Cc: JOLLYS@xilinx.com, Rajan Vaja <rajan.vaja@xilinx.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently TTC driver is TIMER_OF_DECLARE type driver. Because of
that, TTC driver may be initialized before other clock drivers. If
TTC driver is dependent on that clock driver then initialization of
TTC driver will failed.

So use TTC driver as platform driver instead of using
TIMER_OF_DECLARE.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
---
 drivers/clocksource/timer-cadence-ttc.c | 26 ++++++++++++++++++--------
 1 file changed, 18 insertions(+), 8 deletions(-)

diff --git a/drivers/clocksource/timer-cadence-ttc.c b/drivers/clocksource/timer-cadence-ttc.c
index 88fe2e9..38858e1 100644
--- a/drivers/clocksource/timer-cadence-ttc.c
+++ b/drivers/clocksource/timer-cadence-ttc.c
@@ -15,6 +15,8 @@
 #include <linux/of_irq.h>
 #include <linux/slab.h>
 #include <linux/sched_clock.h>
+#include <linux/module.h>
+#include <linux/of_platform.h>
 
 /*
  * This driver configures the 2 16/32-bit count-up timers as follows:
@@ -464,13 +466,7 @@ static int __init ttc_setup_clockevent(struct clk *clk,
 	return 0;
 }
 
-/**
- * ttc_timer_init - Initialize the timer
- *
- * Initializes the timer hardware and register the clock source and clock event
- * timers with Linux kernal timer framework
- */
-static int __init ttc_timer_init(struct device_node *timer)
+static int __init ttc_timer_probe(struct platform_device *pdev)
 {
 	unsigned int irq;
 	void __iomem *timer_baseaddr;
@@ -478,6 +474,7 @@ static int __init ttc_timer_init(struct device_node *timer)
 	static int initialized;
 	int clksel, ret;
 	u32 timer_width = 16;
+	struct device_node *timer = pdev->dev.of_node;
 
 	if (initialized)
 		return 0;
@@ -532,4 +529,17 @@ static int __init ttc_timer_init(struct device_node *timer)
 	return 0;
 }
 
-TIMER_OF_DECLARE(ttc, "cdns,ttc", ttc_timer_init);
+static const struct of_device_id ttc_timer_of_match[] = {
+	{.compatible = "cdns,ttc"},
+	{},
+};
+
+MODULE_DEVICE_TABLE(of, ttc_timer_of_match);
+
+static struct platform_driver ttc_timer_driver = {
+	.driver = {
+		.name	= "cdns_ttc_timer",
+		.of_match_table = ttc_timer_of_match,
+	},
+};
+builtin_platform_driver_probe(ttc_timer_driver, ttc_timer_probe);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
