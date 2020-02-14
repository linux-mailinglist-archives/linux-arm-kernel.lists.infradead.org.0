Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9561E15D2B7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 08:17:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=74RyBJ+7eWXE68CAMbXQdZb5Ei0knXIhazql12OcjUA=; b=KgLQZW9AMLVG90
	5ukKjh+vvmSk5gVHDIesZlJzUAydgcCCByyvnt5Mw3dMUJuXdULzfziTY7swp1f6IRgk31p3X+Cv4
	fbMZyWzMm3wLic2ISqTtCUpc/fHfsy699qC3tvuIvsiHmc7d8OSR3JRwhhydSc3wmbOwRKRozk996
	5ue1PMnbc29fMpnLEQkrWFzpow3B9xyj0cwbXFX8izcrEMXkgM6p+PIGkuFYzHzW0U8LCJWqb3Nti
	qJvjto5gIlMByWAWhoFboqFxbBd+LP0YluSMSEg5HprBwxqPEzzZ3hnAmXmaQRYmsqBkLfClHB+5+
	3KnnvXSHsigveNGtuGZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2VDy-0006RT-87; Fri, 14 Feb 2020 07:17:18 +0000
Received: from mail-bn8nam12on2077.outbound.protection.outlook.com
 ([40.107.237.77] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2VCq-0005bI-0Z
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 07:16:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YJ3iVxLkfYOFiWhFSnUk7U3q9uatSIzDuWYNxJQqu7leYcJkqoE6C//stn6JLW4I0LPr9RC3RLQe1DdftsTnzX9OVbqUBPH9LS+qHasHyzH7cvD81SVPu/bXc77A7UbaDtCbwf87QAPWjcjbKuTGyzvtRa/3zZnVziIhr90YQlz5neM4lxjwU37hkcNwTOPLUNz10kEOrhSEtEsEYuz0etkRJQYx4vQ8WY1uPj0BmfJRSao4rS8wVsCUnCCenRbfAa+2cy+v98e4pkpe9cj/6HANq0tGzB2VdJIq4T2qB++xXF/Ir8LUovDOQGmdkDphsl1q+Gv+qaEg56ufXrVnsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IB9uxm7lwYo7dVHyVjIwXxLpQBJ2/CAVJvzzFPwPt4E=;
 b=Ri2Vroq2N4skKGbqRmnsmIh6d80mc5SaleQhsjojEeuS6fpU6lDxHrTt1rOGf3oSokwIvsF0MkvvP1xHfdMEZb4zQZOaW6B3qGwrGXs+i6/6PpYUuYZ833NzeCuHYhSjd3+fGc8tj3cjsJgHFcLjbPlot3z3S8CvlkBMlRqpenz3rHaH195frZZtL2jB+1xqiOO8/V+DHKJJPNMsXmfKLhSRVXQfafXLZQbJ9/SKarPHO5sMDgAaDvqI3GZveLk3qCm87YHfhy5UfhzewRmQReLJBTJ90iWIGbQaEQkeO3tkYdH31HnbhepcssdDiLLrhGA2DSSFJ3Tzr6orMGFAnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IB9uxm7lwYo7dVHyVjIwXxLpQBJ2/CAVJvzzFPwPt4E=;
 b=g1O7sSHujPGN+yVol+04RT9G1rJQJT7jwDkMkzCa303RREeyJkb33B2nnax36+Ba3oBYjqWiSidFBokCZaA7k3LBTq1z4jrvAvOcrd7bnf8ZnV+crGa4bqOyqvidiM8xXE8k1lGgrJ3xDy5pBa0i46BI0EzuO44qlyZFJhcUb/s=
Received: from DM6PR02CA0130.namprd02.prod.outlook.com (2603:10b6:5:1b4::32)
 by BN6PR02MB2259.namprd02.prod.outlook.com (2603:10b6:404:2f::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2707.21; Fri, 14 Feb
 2020 07:16:04 +0000
Received: from BL2NAM02FT031.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::209) by DM6PR02CA0130.outlook.office365.com
 (2603:10b6:5:1b4::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2729.25 via Frontend
 Transport; Fri, 14 Feb 2020 07:16:04 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT031.mail.protection.outlook.com (10.152.77.173) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2729.22
 via Frontend Transport; Fri, 14 Feb 2020 07:16:04 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1j2VCl-0006GO-Kc; Thu, 13 Feb 2020 23:16:03 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1j2VCg-0000Ru-HA; Thu, 13 Feb 2020 23:15:58 -0800
Received: from xsj-pvapsmtp01 (mailman.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 01E7Ft1B018802; 
 Thu, 13 Feb 2020 23:15:55 -0800
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1j2VCd-0000OQ-2I; Thu, 13 Feb 2020 23:15:55 -0800
From: Srinivas Neeli <srinivas.neeli@xilinx.com>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 michal.simek@xilinx.com, shubhrajyoti.datta@xilinx.com
Subject: [PATCH V2 5/7] gpio: zynq: Disable the irq if it is not a wakeup
 source
Date: Fri, 14 Feb 2020 12:45:35 +0530
Message-Id: <1581664537-14386-6-git-send-email-srinivas.neeli@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1581664537-14386-1-git-send-email-srinivas.neeli@xilinx.com>
References: <1581664537-14386-1-git-send-email-srinivas.neeli@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(39860400002)(396003)(136003)(199004)(189003)(81156014)(8676002)(81166006)(336012)(9786002)(8936002)(478600001)(356004)(6666004)(186003)(7696005)(2616005)(26005)(5660300002)(316002)(36756003)(107886003)(70206006)(426003)(2906002)(6636002)(4326008)(70586007)(44832011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR02MB2259; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 68c7bbc9-0208-46d4-297a-08d7b11dc0de
X-MS-TrafficTypeDiagnostic: BN6PR02MB2259:
X-Microsoft-Antispam-PRVS: <BN6PR02MB22595BC7422CCC3CC4002AA8AF150@BN6PR02MB2259.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4714;
X-Forefront-PRVS: 03137AC81E
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3c0/1Zo47znwL7BbBwK7ut4a/oftZf1vYVCddLt51hUYGqsiA+wgWHZ0bG6/EbduM8VfeB1DL68kK9/z0zRJnZ6ICtx6KLhtVoTOlAsR2sOPTEo7lU+IVjTPUh5+g1156VbETYD4zQFZ35+ttfAadUEj9YzplhkpRRzhJJLkX4+BMpLLTEq4T9+oA3jZA2Cy8YqLS5g/JY1CyfgMMaAXA4rEteVlbRwxv/oYIu8EpOmKBWrYg2JISp5ztq7xhU0W/zYoat0IVu/XraAKyMcze+EwTh0mx5NNdqn3HmKgyTZD70/vKSiQTnNa/LJScgHuj8gzHuIYriSAxDzh5xEmycnP+yqnboUmyyVjlVSWY6A1MeZgApb1ejYg3grzZC9pKYuX1++O6kFq8fcArNzHRSyFoUDjU4N46Xzz9LH/v0qI98kC1HGLINrwPF4aD/5y
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2020 07:16:04.2424 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 68c7bbc9-0208-46d4-297a-08d7b11dc0de
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR02MB2259
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_231608_076316_B5EB0755 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.77 listed in list.dnswl.org]
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
