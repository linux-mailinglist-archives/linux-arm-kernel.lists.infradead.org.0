Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 718C215D2B9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 08:17:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Db5qwN7fuItQduIemelqH30GoOQlCSvBvlKvtc0VrJY=; b=mqNulVAmQ7nXvc
	btQcLTykuZQLLKj0t1rL0zCPhCRLsww4BF/xfYfSVjt2WFortLwR83bsk+adUIp0EFKBhh9b+E3bV
	H9lCe/CTcEzPtwdwz4/5fS1w/GWisCvTWh5hgbegaC46ybmLaHC3GrO1zjMJlSC8iuJDrSZ+tK0Co
	PtxElqbDFSWfeTp4vLdUZGx94w/d20fT7l7upm+W9Uc48VOq1un852P6bnqeIY4vi6+/nn+xv+TA6
	9ahhdlhr3LL8R47zuj2BNRyvZEBxYbm4NJp0miCCDxclTi8nwcPTn4qBMoaW2uRJNJhnNxqGYB80E
	gb/UmXOOJedCxUXX75Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2VES-0006zL-9v; Fri, 14 Feb 2020 07:17:48 +0000
Received: from mail-mw2nam10on2059.outbound.protection.outlook.com
 ([40.107.94.59] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2VD0-0005nG-RE
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 07:16:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KEQ8eMlQyqPCZzhnB5zA+XiYW+lrIA8SX7AdVzraQzbcs+RUWG5IJOA82DkUZniacjvvvw2CVdeS2FBK/+Hw2Ze0koXFdtAqS1Vp35JkgpX3Sc6P5ou3yhuxkQGaTwDlT80CP+5mDAGlqrgsNNRVvlMKPRk6o+AQyLEmEed6pHEN8Td3q4hyDtaOqGa9XZHjza4QNSdbmyih9X+htUOe7FR1XaTVr8CSxK/TEPkxxbx1YN54002eWHfI+GgbncLM75Zqn7ifpaZj7xnK/GDa2Vd7QQzcYMFg25wvCWzBlevBjxxji+It9o7dGJj18G4QDYTUQDx59FzkwHC1iARc3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LQz9KqmcLaeruV4C2BriXBrjty1fuGu0xbZU8uSeooM=;
 b=iOxn+WmcrpBKDgZGX+mwachg3yO5NbIc6wrn6MDiU+T4Iq7Lm09nvl/sfIHW4mAGyRyP4ecn5CBTznB+CgXuziY9NnJJ5IcAHsbyuhnnblUTvKwZRrgS9oywvDGP2QUVteKuDGNL49hGzfUPihXf9ZEgAb0XTASCs9948L5HD1dBRCJXcCrRQlyVnWzQwdj0txNqUBoa2DiVKj3oQHITB6gS/dJ8WfZtZc0tqYlC4y2Q653OwXkm82inTX45yB4cFMWSF/4AQfqdEAiU5IbqzBdQXKVG8dy6jWrW2QfAqUNgEA0Q6MUXxjbhG/cojfFCAnuSpRuPND6ESyIPRL2MVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LQz9KqmcLaeruV4C2BriXBrjty1fuGu0xbZU8uSeooM=;
 b=TJ/S9n27P/N9tl9abAu2Z1s1SagbMmZ7ZzguIOWt0dN1mQlKG4xUFZ0bGJjOLG5GX9q2hzGk6vsUr0IZe4yyxVxb7uI7z6Zi3LpZaoxKkU+i8ZXfkK/Q8fZvfwwKi317AgSgZyfRxHN8LdGFWvyWDM07hGFgoUbjaNsasiWSsDA=
Received: from DM6PR02CA0104.namprd02.prod.outlook.com (2603:10b6:5:1f4::45)
 by SN6PR02MB4750.namprd02.prod.outlook.com (2603:10b6:805:9c::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2729.22; Fri, 14 Feb
 2020 07:16:15 +0000
Received: from CY1NAM02FT039.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::208) by DM6PR02CA0104.outlook.office365.com
 (2603:10b6:5:1f4::45) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2729.23 via Frontend
 Transport; Fri, 14 Feb 2020 07:16:15 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT039.mail.protection.outlook.com (10.152.75.140) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2729.22
 via Frontend Transport; Fri, 14 Feb 2020 07:16:14 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1j2VCw-0006Hx-1t; Thu, 13 Feb 2020 23:16:14 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1j2VCq-0000Um-Um; Thu, 13 Feb 2020 23:16:08 -0800
Received: from xsj-pvapsmtp01 (smtp3.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 01E7G1Ye015610; 
 Thu, 13 Feb 2020 23:16:01 -0800
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1j2VCi-0000OQ-Rs; Thu, 13 Feb 2020 23:16:01 -0800
From: Srinivas Neeli <srinivas.neeli@xilinx.com>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 michal.simek@xilinx.com, shubhrajyoti.datta@xilinx.com
Subject: [PATCH V2 7/7] gpio: zynq: Remove error prints in EPROBE_DEFER
Date: Fri, 14 Feb 2020 12:45:37 +0530
Message-Id: <1581664537-14386-8-git-send-email-srinivas.neeli@xilinx.com>
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
 SFS:(10009020)(4636009)(396003)(39860400002)(136003)(346002)(376002)(189003)(199004)(336012)(426003)(186003)(478600001)(2616005)(26005)(316002)(6666004)(356004)(8676002)(81166006)(44832011)(107886003)(81156014)(70586007)(7696005)(6636002)(4744005)(36756003)(8936002)(4326008)(9786002)(5660300002)(70206006)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB4750; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e2de9c3e-80d5-4919-3398-08d7b11dc71e
X-MS-TrafficTypeDiagnostic: SN6PR02MB4750:
X-Microsoft-Antispam-PRVS: <SN6PR02MB4750F0A7B923E4E32A0B49ABAF150@SN6PR02MB4750.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:274;
X-Forefront-PRVS: 03137AC81E
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: S9voFb1v4U6sAWG/n2PnbPm817u0TPWPkp/qa+XG8ScWtc9WtyL3THE8qFolXuH98Ty/NsYqIJzSQ7WE7RMVCqLC5qUbyRYyhxtB6lrfFcHlpC5NLpBU2lFHD6FsTxSxLdyMEG1llIpJRUQzUol+zoOp1PVjrpeCuTDObIjpxjr1KIe/RbuOv3mT0KL7ZkpYIOZT5KbMpuZghPEteMtVij4zMtvbTV+931pwxGltCGrLEL0CdNQCIZZQk0ddBCDpNhpvYf6J6r9SebVHykRmToHLDwRYwCBTtxT1mq/Uy6i37/QQxZe3V4rx622UcBXF50jfEkH4Wr9XktODbOQ0sL9flP7Kasq4QSO1wE+fnY8AsIrrF5D9dipnLECit9kz0lawJyJDcdNI0wD/mjVLWBdaY47NO7p/EifuPWF6BubQMqHzVaMF44PL8xE06IrC
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2020 07:16:14.7746 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e2de9c3e-80d5-4919-3398-08d7b11dc71e
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB4750
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_231618_892019_0BD68C6A 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.59 listed in list.dnswl.org]
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
