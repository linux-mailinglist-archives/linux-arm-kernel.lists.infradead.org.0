Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 472B3C0C24
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 21:41:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ceiohtEXOpfLL7gr1sVfL0VV/s98LicqmO8E/cjCqg=; b=trIll1vDgU+Mbk
	nWTZc8VgmzhwPvBsFhsgF+i1VGt+vLzKXd5PVK4N21eDJ4En2SMx7s0hTLGjlqU20kdg8KaMM83jP
	QFr4yKlYuMBZzASaliCTTk5UgAhepqNJxwJw9LfSPqPUtS3zUuRk5dEjNZD0ywbOBEQaxNjCsPzQz
	lxybb+1XVFiWVySyZ1tYwUVr/9j55oaNOEKkrL/i18N1RxuGQnf6fZ4VFy2B78dU9udIQtzUwfsJ0
	0OTXcp2zAXRIicaQKFsfxO+oNNyM+Pd3bHVdGGjXoK2etCgjSi1+yClI+kenR3RdQydIcvv7X9QNq
	D2hBnsWp889bukUAZUKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDw77-0001e2-2b; Fri, 27 Sep 2019 19:41:13 +0000
Received: from mail-co1nam03on0618.outbound.protection.outlook.com
 ([2a01:111:f400:fe48::618]
 helo=NAM03-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDw6U-0001CK-GM
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 19:40:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lUQRZV7DwC6PAOzHDcm3Iwzu5+fxkuQdcaNyb9gVZppUzqTFs3wenSSDgM/AdptCmZjn/qS3RFXzTI7GaVcsK5aNN885FY2Hsx5g1bQtrZg6jaSR3N+cEfMFdrZs0dMCXzBoSJGgHHK/tJI9DXQoyUq+Ot+8Z12FyTbDAfGKAC6HkpHP+JIpiHO4ec5ol52SGpJ3F/2zo4wHhmsFKIGFzCQFHcLFadlGEkn7XrKgh5bM2awLULNSpiqzJ2dTx6PH+vT2h76OxpzM/yRtQUXtKOylxpZZ44DO8UdaUTJ/vlDpllY7naenQoxKAPSG9lhjpOpzDlYZ0YvjdDAIDNyOgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VTaKeHXgf5Prw5VTRo31RjtpleuswlB5qdV+CG0qalo=;
 b=GLDWovRYMzW6NcTB9X8N6FTVQVFd128zIF9ar47rZIDMAQGN+tSWN66LdFmucvhAsfSMrCEJ4C6ZLjVlnn+asUjZq4rjviA5+C5+LyeF8cJ0PhTHNJdSk/lPvwV0Sb3DRkCccDy55YRkH38QfBxrE5GlphOEGLxLGvD97XaAQlPxznf6W3y3I1pe7N1l1ITRUUU5exiniPrgJTMPPD50+NbY4s6RQfHPDHE41SKM+56+E8GxOdVLrYr8VaVgeto6zUl70c+jhVjt4zPctxqfpz+DRyGX9q0rkxwnPWUgsipWXdZWTvrjmdzl37u3y/qOGzfgu3RD8LudEhvfg/iOjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linaro.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VTaKeHXgf5Prw5VTRo31RjtpleuswlB5qdV+CG0qalo=;
 b=GJCVk7uP62GpoNKaMoejhkh3fpXpll5Gw9197h7JeJVIXXhJqH6rDOTjqkYkCN/FkcJz/9GemPZHYeA3eCpuuUcqQeug38NxX3x9v2xwu+y12WWx3LPwAHL0xRBrWix+QESa/gxP6Wc6ip0SY+O8qkJ1sVd1OYyhzeEn6bzg650=
Received: from BL0PR02CA0136.namprd02.prod.outlook.com (2603:10b6:208:35::41)
 by MN2PR02MB6029.namprd02.prod.outlook.com (2603:10b6:208:185::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.23; Fri, 27 Sep
 2019 19:40:30 +0000
Received: from CY1NAM02FT053.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::204) by BL0PR02CA0136.outlook.office365.com
 (2603:10b6:208:35::41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2305.20 via Frontend
 Transport; Fri, 27 Sep 2019 19:40:29 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT053.mail.protection.outlook.com (10.152.74.165) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2284.25
 via Frontend Transport; Fri, 27 Sep 2019 19:40:28 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1iDw6O-0000L2-Dt; Fri, 27 Sep 2019 12:40:28 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1iDw6J-0003aE-9K; Fri, 27 Sep 2019 12:40:23 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1iDw6C-0003I3-1f; Fri, 27 Sep 2019 12:40:16 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH 2/2] drivers: firmware: xilinx: Add support for versal soc
Date: Fri, 27 Sep 2019 12:40:06 -0700
Message-Id: <1569613206-20189-3-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569613206-20189-1-git-send-email-jolly.shah@xilinx.com>
References: <1569613206-20189-1-git-send-email-jolly.shah@xilinx.com>
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(346002)(39860400002)(376002)(189003)(199004)(2906002)(476003)(486006)(126002)(7696005)(6666004)(44832011)(316002)(50226002)(50466002)(76176011)(51416003)(36756003)(11346002)(356004)(186003)(26005)(107886003)(426003)(446003)(36386004)(7416002)(106002)(9786002)(5660300002)(2616005)(336012)(305945005)(70206006)(70586007)(478600001)(6636002)(81166006)(81156014)(47776003)(16586007)(8936002)(48376002)(4326008)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB6029; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:3; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 38cad835-1a72-43b3-426d-08d743828d40
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(4709080)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328);
 SRVR:MN2PR02MB6029; 
X-MS-TrafficTypeDiagnostic: MN2PR02MB6029:
X-Microsoft-Antispam-PRVS: <MN2PR02MB602951AD07963ADF2DD6BBB2B8810@MN2PR02MB6029.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:561;
X-Forefront-PRVS: 0173C6D4D5
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: BY/j9+spofGALadk878CKzaGHg7ceWXhaGqp7/CPYbtTTayuvJeq8TPXcvjs5fu+iQuDtZwsAZQlD5gx3WXijvQHZTMNDkVgaTA1V9pY2gXkxNPv50BnLcMEfsF4TFHuseHFVG3WLFa8rZeYL2KZC3daXOJQ7lsq1kUvheazywSzxr/LnSj7fg0ZApu+N2Jl7mh9Z8hiFCxoW8O1e6e/VDfJLAzlaUuP21/NJxH0bH7snAuSd72PuPHGbKFovmxTDI0xDOaGz/tJu5fnRkkEJIa4yEk6FQO1CIQmgPUpg4TklQ7NQqYQadq9PFHzokFBk8/2FLusteMY+dWjAyHYtMANxoVPlJ5URJsdCvcfd3qWJiJBvbMFBjmIonZnd7kR14SB63iM5ntFBNFxPUoWw2hdCFatcm1nIPquds0tRz4=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2019 19:40:28.9411 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 38cad835-1a72-43b3-426d-08d743828d40
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB6029
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_124034_541325_FCDC8227 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe48:0:0:0:618 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Jolly Shah <jolly.shah@xilinx.com>, rajanv@xilinx.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Versal is xilinx's next generation soc. This patch adds
driver support required to be compatible with versal device.

Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/firmware/xilinx/zynqmp.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index fd3d837..75bdfaa 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -711,8 +711,11 @@ static int zynqmp_firmware_probe(struct platform_device *pdev)
 	int ret;
 
 	np = of_find_compatible_node(NULL, NULL, "xlnx,zynqmp");
-	if (!np)
-		return 0;
+	if (!np) {
+		np = of_find_compatible_node(NULL, NULL, "xlnx,versal");
+		if (!np)
+			return 0;
+	}
 	of_node_put(np);
 
 	ret = get_set_conduit_method(dev->of_node);
@@ -770,6 +773,7 @@ static int zynqmp_firmware_remove(struct platform_device *pdev)
 
 static const struct of_device_id zynqmp_firmware_of_match[] = {
 	{.compatible = "xlnx,zynqmp-firmware"},
+	{.compatible = "xlnx,versal-firmware"},
 	{},
 };
 MODULE_DEVICE_TABLE(of, zynqmp_firmware_of_match);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
