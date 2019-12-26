Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABEA112AC2F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 13:15:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vSwyEmKEF3yBubV1prUVxzucKgLtUkX/0Yw7aWZCoP4=; b=GKecZfJID+j9Kc
	vnYLhbeKxcM/iuPZvi80eufc+/CPGsX4MhDQOcypSNn2rvEjSSfgv7dmddcf30AXu7TPQOt/jZmAu
	nAEC/8NZTmJ7wbEMGlP+GV5/hbjyM+uacwTjIe+kvn3e1hBbknInh/R29C7d4lKQSBUOv3c2YqSCn
	ueaVlturB/0bHJ7f06PrDSubZB66Ty+b45HPmWybxQKC9L6TrdSTXopwBKv8La+aUyw1YFV128OT7
	fpOVYsp+WX0PLWOFLRBZ/9Gie5bDfNtdnvw9nBT9urhj62kPIZEKn0K9HyFtH9hWtbL2S8qUfRGF8
	zjJztUwLfoo3/0uHSpDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikS32-00085j-2O; Thu, 26 Dec 2019 12:15:24 +0000
Received: from mail-mw2nam10on2056.outbound.protection.outlook.com
 ([40.107.94.56] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikS0j-0005BT-36
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Dec 2019 12:13:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GikXGul16UYBHP97C5CqG3d0oCtowgo/sBG1t36Knu2JvN+QQCkX2LAb49StU2kJydZW6/6PXxhsnC+Hr76nM0gL5VoI8Xalk5eXeI6vrcxXC0SUSB7uhAXkB+TKceEaBh8KDzo6WXgGmFhDUkBwjXAk6blZjdY5GpiXbl4PCzGlYDyXy+O03WjYcA93rQdN0C7pO1VOLxjJCCY6x+z9Ma5Eyu0Al+Q6wkW6N3tu6eITTyEJ8naBd4bK3aDHFAgA4OFycooMuTFvtvOAhMKrYjYYdWPXq0uFdmullAyrNOgd4gn5LVZwz7VITkr+4qpptIoe2qixCCJMyQO/yBsitw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C80INEPOh0KiSJI5jBIGOd5W8d7nrzZhfC8uBqlQQ/I=;
 b=Fe3uTO3uETcvhwvH/n0vgVPAFV1WRZiRJfPjB6z2YsJ6pcVZOQ52aBrTJilphxuBJXRAei667gnvaNdvL6WO3v3Nc76TFJ3QhKxDxmZdfqzLKFIJQK8kcoAtofjZI4VwM8FD18Q1LQgzxn3ajvY9/Nfp0xZojDBdGtHv/TNyR2KqBEErFndyxzpawEqZmXBVvA9dty4vHmAMa+MsxYrhvpyyLjiUiLVXIpB4IvMFx2oh5uu8ieRJdKOpHlrnynbrgDQxD8ob8o8OFSB5vCS39ddiucPoVxcCFVA/rgN0fF8MO+0u0+IWpRBWkcgGLFt/SxCv1mAz4hR5VKlBeOwOzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C80INEPOh0KiSJI5jBIGOd5W8d7nrzZhfC8uBqlQQ/I=;
 b=VI8TPE3GH4JtHNbZukMs8P8p8hrsqtEOu1WgOWsE0rHhpLHMVSuyXGNlNPGy9wH2f+r9mzBSpZefvE6FZNMAq/wm4IlECFcj4YqhDXMWKI+dI+VOcnBYFvzfjW8ZPkMyIryZT/bSnSzf3flOJiZ1Trq96IoBs3LQ9mW35bqp1xo=
Received: from SN4PR0201CA0046.namprd02.prod.outlook.com
 (2603:10b6:803:2e::32) by BYAPR02MB4263.namprd02.prod.outlook.com
 (2603:10b6:a03:5b::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2559.14; Thu, 26 Dec
 2019 12:12:58 +0000
Received: from SN1NAM02FT019.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::203) by SN4PR0201CA0046.outlook.office365.com
 (2603:10b6:803:2e::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2581.11 via Frontend
 Transport; Thu, 26 Dec 2019 12:12:58 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT019.mail.protection.outlook.com (10.152.72.130) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2559.14
 via Frontend Transport; Thu, 26 Dec 2019 12:12:57 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1ikS0f-0003Kz-BW; Thu, 26 Dec 2019 04:12:57 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1ikS0a-0007zm-8E; Thu, 26 Dec 2019 04:12:52 -0800
Received: from xsj-pvapsmtp01 (xsj-mail.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xBQCCgbA003185; 
 Thu, 26 Dec 2019 04:12:42 -0800
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1ikS0P-0007v9-IH; Thu, 26 Dec 2019 04:12:42 -0800
From: Srinivas Neeli <srinivas.neeli@xilinx.com>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 michal.simek@xilinx.com, shubhrajyoti.datta@xilinx.com
Subject: [PATCH 8/8] gpio: zynq: Remove error prints in EPROBE_DEFER
Date: Thu, 26 Dec 2019 17:42:18 +0530
Message-Id: <1577362338-28744-9-git-send-email-srinivas.neeli@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1577362338-28744-1-git-send-email-srinivas.neeli@xilinx.com>
References: <1577362338-28744-1-git-send-email-srinivas.neeli@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(346002)(376002)(136003)(199004)(189003)(2616005)(26005)(186003)(4744005)(70586007)(70206006)(7696005)(336012)(426003)(4326008)(8936002)(316002)(107886003)(9786002)(5660300002)(8676002)(36756003)(2906002)(81166006)(44832011)(478600001)(6666004)(356004)(81156014)(6636002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB4263; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: de43c026-8d49-47de-e930-08d789fcf1d9
X-MS-TrafficTypeDiagnostic: BYAPR02MB4263:
X-Microsoft-Antispam-PRVS: <BYAPR02MB42638E2D7C5BFCD938A5B499AF2B0@BYAPR02MB4263.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:274;
X-Forefront-PRVS: 02638D901B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +n6QE4O1ZD2rA0EZR43mcVknVns/XUriJzeR8PYAfI1zD8o+ZkXa09jpI/8gCugiAUQnhTkt64yoijehxABciinbh6CKLlA8B1kjuVs7DY1Zmx96NnbAVUvyl5gj6Val2+aongS2jmokXpIjETJyNusTbIsHSuUBeMTd0CvhDz88/c6HFUDkb2FFF8XW+1CPxP5dCKCSOErkIVMWah1kE2Gwyg4dvmXsYgIv5cPhAAdRuyVEk8aeRgfP8Azr8NyFVedsGOAPywIwPR2M4/va5gp030RkSGkn8tl0oh3jIe9X5NIZuCNu5l45IQJQR3BgIhM7zW9M/wV+q9PzuPxloF9k6cfMpSW2RiNzaFA7xzdkCaNDKk6hYTr2BMq3/M9H/tYJjiy/TGiIKUOfhH77bLvxnAk9bV3UzgAVCiTMbIUPiiy6T0GaLR2SwJJCxHES
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Dec 2019 12:12:57.7447 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: de43c026-8d49-47de-e930-08d789fcf1d9
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB4263
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_041301_174706_2A7FFD7D 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.56 listed in list.dnswl.org]
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
index 674416a40117..fa6093db30ee 100644
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
