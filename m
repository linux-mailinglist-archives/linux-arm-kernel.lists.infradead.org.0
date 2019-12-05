Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B77A113BC8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 07:37:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AlhnlRcoIHMUKh1tlZ4nAhAmHzCO7tHWQ2NoPrl/iUs=; b=igo3t9qUDjPcMS
	tBeXxnaOvvDHY9GOG1dQwYGr4gzvjnJ82ttBap4gUqdj70hn8Qx20PNY8LJfitAnR/AAN4PTjvkji
	TdwV4k1YF/3j2bvWanB0doWUKqmavmsN4npm+fULT7lT/yqFceF09Z+xOIv5omoJNaFyk2ZGZzBMk
	oGOvp3Oy8AVprL45DgXo8Ny6sECWSqlkpRdTxLTLvsq3tMjRCqvzsj88N3zU4MxLBCa8H38ydFOAc
	OM1h9t9C997z896nqzxBxB8yu6K/45LHFF4l8kCGxZ8CJ8FWmT6GeBTdXr31qy1oufGwYRUX+eA4y
	thPpFBnbbMb08p3vysqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icklq-0004F0-9W; Thu, 05 Dec 2019 06:37:50 +0000
Received: from mail-eopbgr700061.outbound.protection.outlook.com
 ([40.107.70.61] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ickle-0004D6-7J
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 06:37:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e8hu840KSCk8imC9F0AQID4xymmV+yC3EJf2BedsxE/JWLrkzeGXE/IVJa5fPRrvzWGyVxgX5bu/FeF8PTPM7yX51y4yOmtHc8aJ1U3OLtrZd8+BlIYs4Io0K1jbL3AfR6lD7OrSiqRsbyw5VxCYW1hXJwl9uqsEZ1i/DXIBFBmhxxxganiY7P8hdTKWzT2J1ZbE8/M80xf4zNvLWs92Q7YihSmG4pyLs0dh+hkymlgoGtkJshZs3chl/IuuSLouGuYVVFULrQyZhhlrEvuJBOp5/CMhz0uesqHMaSbGblhpDD6RYSTUaLnQxQKD74mH+AO2SyqYoDbEeviM67gCcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E9CHQI/shtHh7y7xVKO9wv5ZGzwFahyHkg96iYSppKM=;
 b=cZ+it4umzxIZMpE6ZpjqqJc2e4LrrCvK/5o7OYIhK9OhkQqEV9pksWzlEB1TcWfgq/owSKEROBnGucn698hlZsCpTt9c2cTlV07jRsQrkKtUGH2zlKlMmvbnPHukn7MCqyHRYTJimHnozjExDvNGFICxYB52wPYaa1XLWWXZSqifCNToA4whIW3E0ZCx/5qTWSPexqSbLi4xBnhliPWyJAJgzQhepjhHCox3JerRDKqf/jvWWYQ96yh0Yv6oeKmkCEu47UrQSdp5nF3fRRl+hvIk4BhC3ODrrCpbxM5q75atHDbRyO1sZ5d7xWN+rQNm3yDQRqkHp7bUO5qZjKc3Dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=xilinx.com; dmarc=bestguesspass action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E9CHQI/shtHh7y7xVKO9wv5ZGzwFahyHkg96iYSppKM=;
 b=l1IwK6BnPGJTfJzXbfe890PqHvRuOBn9t0BquJN647rmtrH8qfPRVsZaYHgYbZMjPxk3giWtb1KeOHIoyamjrnaBB2US8fImydNs2DxkMK2oLqs137fS+BzeOulp7/OFPCNDDbrMfGT6RD11erE7ZNWpjDf8EWsSSaY/4B/fLX0=
Received: from DM6PR02CA0138.namprd02.prod.outlook.com (2603:10b6:5:1b4::40)
 by MN2PR02MB6989.namprd02.prod.outlook.com (2603:10b6:208:20f::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2495.17; Thu, 5 Dec
 2019 06:37:35 +0000
Received: from CY1NAM02FT044.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::207) by DM6PR02CA0138.outlook.office365.com
 (2603:10b6:5:1b4::40) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2516.13 via Frontend
 Transport; Thu, 5 Dec 2019 06:37:35 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT044.mail.protection.outlook.com (10.152.75.137) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2474.17
 via Frontend Transport; Thu, 5 Dec 2019 06:37:34 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1ickla-0000xI-G7; Wed, 04 Dec 2019 22:37:34 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1icklV-0000XV-CV; Wed, 04 Dec 2019 22:37:29 -0800
Received: from xsj-pvapsmtp01 (smtp2.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xB56bJpk003539; 
 Wed, 4 Dec 2019 22:37:20 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1icklL-0000WL-Qw; Wed, 04 Dec 2019 22:37:19 -0800
From: Rajan Vaja <rajan.vaja@xilinx.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, michal.simek@xilinx.com, jolly.shah@xilinx.com,
 m.tretter@pengutronix.de, gustavo@embeddedor.com,
 tejas.patel@xilinx.com, nava.manne@xilinx.com, mdf@kernel.org
Subject: [PATCH v3 2/6] clk: zynqmp: Extend driver for versal
Date: Wed,  4 Dec 2019 22:35:55 -0800
Message-Id: <1575527759-26452-3-git-send-email-rajan.vaja@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1575527759-26452-1-git-send-email-rajan.vaja@xilinx.com>
References: <1574415814-19797-1-git-send-email-rajan.vaja@xilinx.com>
 <1575527759-26452-1-git-send-email-rajan.vaja@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(346002)(39860400002)(396003)(199004)(189003)(426003)(36756003)(70206006)(2616005)(2906002)(70586007)(51416003)(14444005)(26005)(44832011)(336012)(7696005)(11346002)(186003)(316002)(16586007)(5660300002)(4326008)(107886003)(305945005)(81156014)(81166006)(76176011)(36386004)(6666004)(8936002)(356004)(50466002)(478600001)(4744005)(8676002)(7416002)(9786002)(50226002)(48376002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB6989; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bb32a81e-a208-49a9-fd25-08d7794d9d15
X-MS-TrafficTypeDiagnostic: MN2PR02MB6989:
X-Microsoft-Antispam-PRVS: <MN2PR02MB6989186B3E7FF90FC10C0E23B75C0@MN2PR02MB6989.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:446;
X-Forefront-PRVS: 02426D11FE
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pY1Vcie4ejMmyJJk/LlT0RBNBCMTFsHYVmRCnQGWa0U7BtCaH/IKf+kaLajsD/aeOkEkQDGUY0q30qdpG0xg+ecYzzCUwYRHUtZbuzqIWIeEKA4I895DMmhA+CELDGzbjyZqo7V9qTGzyr/F+0woaL+HfwBGBKIvRrTFihRlJKeNIXu08jUHfwpuLyGlpvVcZLADsr7k13uwqyFgV51l2OPJrZfRghMnTJy9+qWkjPaexzCDyGKgJu3+Qh1f8NqxR5J9UGYTlh2gFh1QlVeqogL5FTDTD2aQGAfmjC/N1TjeaiKhm9h4EaKbCKg7f02GK2jwQ+Yo6s4us7wkk5NgxZlPaSvqDkvODO21ug3fBvxYQB0erUd9Xcg//NkSCwbhp/Hd42p6oBuq3RYRCYZfCvtk69S3FkoqWmXmpnSAmO3dH2FYsYHkS+3bBkRcZzvS9Ke+0hptYZXdnVe+kEgSISHhLi04J5Ovo0v4voxdtZADtFHEGUlix579pIxsFHLo
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2019 06:37:34.9830 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: bb32a81e-a208-49a9-fd25-08d7794d9d15
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB6989
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_223738_267295_8950CF39 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.70.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add Versal compatible string to support Versal
binding.

Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
---
 drivers/clk/zynqmp/clkc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/zynqmp/clkc.c b/drivers/clk/zynqmp/clkc.c
index a11f93e..10e89f2 100644
--- a/drivers/clk/zynqmp/clkc.c
+++ b/drivers/clk/zynqmp/clkc.c
@@ -2,7 +2,7 @@
 /*
  * Zynq UltraScale+ MPSoC clock controller
  *
- *  Copyright (C) 2016-2018 Xilinx
+ *  Copyright (C) 2016-2019 Xilinx
  *
  * Based on drivers/clk/zynq/clkc.c
  */
@@ -749,6 +749,7 @@ static int zynqmp_clock_probe(struct platform_device *pdev)
 
 static const struct of_device_id zynqmp_clock_of_match[] = {
 	{.compatible = "xlnx,zynqmp-clk"},
+	{.compatible = "xlnx,versal-clk"},
 	{},
 };
 MODULE_DEVICE_TABLE(of, zynqmp_clock_of_match);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
