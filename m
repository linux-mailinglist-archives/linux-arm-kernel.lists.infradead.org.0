Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9613A1FCC9F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 13:40:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Db5qwN7fuItQduIemelqH30GoOQlCSvBvlKvtc0VrJY=; b=D2HuEU4BqsrBqi
	agAH+dkace0zTYRYkzGrPgJemD20XFljbDeanm1P256RRraJcqhYhM8JIjBYTB038dKcWHwhxc4Kk
	NG9ULt/jAh8BoHUrKN/fZsqxu3e6qbUjRJIHZYYIwkGp92SKXD3bo+eyv77jtUP2Vlm5dxeNwe5E2
	oeBqotmvOQDeWQIbez61S9lSUhEUsoFkhuloqxE2rm708CzU0hnS+bd+3ix4SbFDoeOpPvdAAKWm6
	joRSik8kunjia9wM46Z2eUbac4kqpPaxNav3abCSw9FvVEMCjRYH4llALS0Ja4r8ghPGOWfNFWWRr
	ClNJejrB6BdXtzm6lDkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlWQk-00039e-7e; Wed, 17 Jun 2020 11:40:34 +0000
Received: from mail-co1nam11on2068.outbound.protection.outlook.com
 ([40.107.220.68] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlWOI-0001EY-SR
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 11:38:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JPnBMs4a9C2Uz8mY9GC+tAyhROL72+tAfRJGVCPqK3/d1nNsyePdy2HxIDJz5qJPRhfpu5VWKmBTHOEtSVomEahugZ5LRP9bo5eoDwHne5TT9Ndk3/HJjSlIIPkQd7ogiWFYD5qLMIZo8T/InDsOQ3D1JfRstGAn8yKJTm5eM+cM+WzEvDJULKSd7MlMamUnms6vvl3dvhOd1SHyKDTKhNT5i9dKSO4CC/Iszp5pya5YIdtyNNL9Qa2dFn3yT4ZoKUNnjXE+swysTtAD05RyBvPZOt/Eks1PUE4Z0gBL/AGHWCo8N0kuQX7UY1qDXDI4EW+vlJFJTtFhaxYPyAJDgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LQz9KqmcLaeruV4C2BriXBrjty1fuGu0xbZU8uSeooM=;
 b=aDgkBWovprJ/in0kbZTX3ScNqd6pBRK2zzj+7c+vC2ynUWdDrt8Gx5N2bt1SvaP9cqvv8g7xhGd9OqnJ1alLUoNDQS0wY27+vbC39Zn+YhD4AqJm8Z7WERr9TxllTzrAI13Yag32LHVYVmck8WCoatIavQhiCrZ/QLhMLVydv/ro5RIfYaBaPjAFVYs0lOcJ5yZokEtNKpSsFa9xrUOkd66Z27WQTJtmQutzh4v+48TWwqDNnS2Zq71NyXHJL8K7YfOO5MzldRQhE5Jau0S0NVSH6frRYN6Z2TEy9rfQlVGVAv4Pmh/OhXpiCtUzPXMRBRrGNJl6fB0shlZfQ3RDSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LQz9KqmcLaeruV4C2BriXBrjty1fuGu0xbZU8uSeooM=;
 b=ZxioYcMKwFRiH89cKVcX1uf10bpPMSJ1BFb4owRzbFr24xMOXWMYh7SYb3qRJOVlbvwucWwXm9Krxa6t9KaKB9jfd+VGWjIA+WLntUqdbFVUxw6GBwUcxUHoin1bzidzbcW2Sx7wL45CZjUpLqYwY7/4EdlP49Q6gL6KNRjSDGs=
Received: from BL0PR02CA0055.namprd02.prod.outlook.com (2603:10b6:207:3d::32)
 by BYAPR02MB5830.namprd02.prod.outlook.com (2603:10b6:a03:122::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.22; Wed, 17 Jun
 2020 11:38:00 +0000
Received: from BL2NAM02FT060.eop-nam02.prod.protection.outlook.com
 (2603:10b6:207:3d:cafe::de) by BL0PR02CA0055.outlook.office365.com
 (2603:10b6:207:3d::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22 via Frontend
 Transport; Wed, 17 Jun 2020 11:38:00 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT060.mail.protection.outlook.com (10.152.76.124) with Microsoft SMTP
 Server id 15.20.3088.18 via Frontend Transport; Wed, 17 Jun 2020 11:38:00
 +0000
Received: from [149.199.38.66] (port=36286 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1jlWND-0001IO-Ob; Wed, 17 Jun 2020 04:36:55 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1jlWOG-0007dH-2T; Wed, 17 Jun 2020 04:38:00 -0700
Received: from xsj-pvapsmtp01 (mailhost.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 05HBboaL032674; 
 Wed, 17 Jun 2020 04:37:50 -0700
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1jlWO5-0007TR-OO; Wed, 17 Jun 2020 04:37:50 -0700
From: Srinivas Neeli <srinivas.neeli@xilinx.com>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 michal.simek@xilinx.com, shubhrajyoti.datta@xilinx.com, sgoud@xilinx.com
Subject: [PATCH V4 7/7] gpio: zynq: Remove error prints in EPROBE_DEFER
Date: Wed, 17 Jun 2020 17:07:27 +0530
Message-Id: <1592393847-1415-8-git-send-email-srinivas.neeli@xilinx.com>
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
 SFS:(346002)(396003)(376002)(39860400002)(136003)(46966005)(82740400003)(8676002)(4326008)(6636002)(26005)(81166007)(4744005)(336012)(356005)(83380400001)(107886003)(82310400002)(9786002)(5660300002)(70586007)(426003)(316002)(478600001)(70206006)(2616005)(44832011)(8936002)(7696005)(186003)(2906002)(47076004)(36756003)(6666004);
 DIR:OUT; SFP:1101; 
X-MS-PublicTrafficType: Email
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: bc23b71e-78ab-4bfa-3099-08d812b2e393
X-MS-TrafficTypeDiagnostic: BYAPR02MB5830:
X-Microsoft-Antispam-PRVS: <BYAPR02MB5830E373928941C832563E2EAF9A0@BYAPR02MB5830.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:274;
X-Forefront-PRVS: 04371797A5
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CHrTSJQjQY2YEno4fzHDMQjkIR6xKxKueYLBWm9i29H0Pz+uN1D2VN85+ypkeU6kN2WZ6+62XkOXpkbJcTfY721SNKx7SMMYIIkATa5fVIjUKhYRYunvTjeTaou6hycqFJxnnfHCmxYzPbYh6SaoRubk412G1bknFm7Kf+BXiMBBG78Nqd5o25580BX2ZPIT8v8qoJisLmIRUQCkF764vSaeXa7YKWscM9epBnC0Q1Xwh3PjGzKEqu3dJv+zX2KFFyifPLD/dX8ORfZ27vb5HvBpA5qY1gb2T0AxGtSpsFtxh7Wm8GgkTR52g044E80fnh01igMC0fxUquphPOn+LhAKphg4lZTy7JbkVNs32EUyjFFY+6XoKz176A1tR+65WeDHr9Yy8jGUGwtWm8jlPA==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2020 11:38:00.4338 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: bc23b71e-78ab-4bfa-3099-08d812b2e393
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB5830
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_043802_937086_BCB1FCDB 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.220.68 listed in wl.mailspike.net]
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

In case of probe is deferred do not print the errors.

Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---
 drivers/gpio/gpio-zynq.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-zynq.c b/drivers/gpio/gpio-zynq.c
index 2ddb59b242e7..53d1387592fd 100644
--- a/drivers/gpio/gpio-zynq.c
+++ b/drivers/gpio/gpio-zynq.c
@@ -930,7 +930,8 @@ static int zynq_gpio_probe(struct platform_device *pdev)
 	/* Retrieve GPIO clock */
 	gpio->clk = devm_clk_get(&pdev->dev, NULL);
 	if (IS_ERR(gpio->clk)) {
-		dev_err(&pdev->dev, "input clock not found.\n");
+		if (PTR_ERR(gpio->clk) != -EPROBE_DEFER)
+			dev_err(&pdev->dev, "input clock not found.\n");
 		return PTR_ERR(gpio->clk);
 	}
 	ret = clk_prepare_enable(gpio->clk);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
