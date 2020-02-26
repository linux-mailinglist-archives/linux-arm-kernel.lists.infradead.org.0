Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5002116F40D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 01:05:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Eha5cEjYh3yRW81YdO0KpKnniUC0qDSbs8OXaQGzJRQ=; b=cChg9syNGx+ONz
	AdHRG3P76QHrzdg1ykifwSoiLLU+sZOWRWVHx1ioi/RE5LAK7/Uee2dM/3YesbEZRy9F5S1XRGDjX
	6vRz7DgeON+7ck/iGd8ZCf1N/uRAjV5Ri0seYhjd3Xxl4qYs/jY6dLzEXvwCL6TuOuKwhmju+88v2
	bDPGQ+AL8jMaB69zU8SY8nWtcZOd7EARrS0MrUNZLuq9sCaDaNO/LuIvZ3NAYB5xs6YLL2b2OnjzK
	3nWkZmiZYZrRsmwCJVgZPhAoJmN9GJNsGSlMZeMkPsj5CgJWTc0/pug8MZLsp6DYnmLMVF3wc7ApK
	MSJmBrxk8m4MC3FN1FyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6kC9-00019u-E2; Wed, 26 Feb 2020 00:04:57 +0000
Received: from mail-bn8nam11on2089.outbound.protection.outlook.com
 ([40.107.236.89] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6kBz-00019X-FZ
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 00:04:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VCg9sipByLtvSLlseke4mFy/fQOxwwjuzR73elGoxuXnstC3sg2S1i4qO6FZNfIuVI5jbqUYMfBYsG6zAZkv+wbslFN57PbChCBE/dA5Qv8eJkJQdcmKlDZ+a746oN2k2ywDqKT0d7rvuTG8FqfJI6TdGSIxPobNleXExT9Z6xXQDOKUbQWmoJPL+GX2CK1oUv8n9OX2p9BNqG3hUXjzvspAae9VMqHEVsod/Re5zrkU/VEFhjsMZBekiCZ8SOYhqz8EijO/TQYQDBB9tT9IDShFzwjGyVkAcx11F6frxZ4qS1iIjm/sduSnnqA9F1iSgK82nBlJIXplFqKVa7cVyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t/LLQdr1poyhFFLAgKasMXpIUyfTn496MmtbVJsq1Hk=;
 b=DVQsyzFaJiwy10iPy46Sa+P8Hgs5Dmuq+UxGOTUeqK4KemEfLK/tAU8hnXQZQ5EgeQW9uoK/pbI8Pziww80jfoS4Qu029urDGXs3kCp7+K6NY277baB/hLs63uxYGwTa4hGYK4msFWXWppzZTWalcFz4LOkO6KgJJtstrgXl9UyuWBMDKQZKVkbPgN1x+523VZeNSbfgRAoF+mcCe+/1vLKPWiCqxsu9J0H0EVhGgA1iKLlO1YEDNwqSIR/OeKe+anDjT8GqHpfCBzHfSgDbU3FXxALr0F5Q8JxjSwydcmn4AoZC0NFH7NdPkL95vhgCw9fmXdkJLMuK3NFUZJBwzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linaro.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t/LLQdr1poyhFFLAgKasMXpIUyfTn496MmtbVJsq1Hk=;
 b=P0gmdkmA6ZViBbm2kUDpsz/J2zOGRCZ6fbZi1I8m1+802a1qHjHE4gy2ukOltRMVd/xUO2vIIGbBGgniZ10ujrkrlyzuWiuaFaDRh9zsoKW2tBon9uxPw1jopQnvaOIlLFSR1vDuiNaCUMCtaZdFjoomXFgOqdrE5vLChSHtOlQ=
Received: from CY4PR22CA0026.namprd22.prod.outlook.com (2603:10b6:903:ed::12)
 by SN6PR02MB4415.namprd02.prod.outlook.com (2603:10b6:805:a7::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.21; Wed, 26 Feb
 2020 00:04:43 +0000
Received: from CY1NAM02FT040.eop-nam02.prod.protection.outlook.com
 (2603:10b6:903:ed:cafe::9e) by CY4PR22CA0026.outlook.office365.com
 (2603:10b6:903:ed::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.18 via Frontend
 Transport; Wed, 26 Feb 2020 00:04:43 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT040.mail.protection.outlook.com (10.152.75.135) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2750.18
 via Frontend Transport; Wed, 26 Feb 2020 00:04:42 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1j6kBu-0006Ht-GR; Tue, 25 Feb 2020 16:04:42 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1j6kBp-00049U-DR; Tue, 25 Feb 2020 16:04:37 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1j6kBg-00048g-Dn; Tue, 25 Feb 2020 16:04:28 -0800
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH] arch: arm64: xilinx: Make zynqmp_firmware driver optional
Date: Tue, 25 Feb 2020 16:04:20 -0800
Message-Id: <1582675460-26914-1-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(396003)(346002)(136003)(199004)(189003)(7696005)(186003)(478600001)(36756003)(5660300002)(7416002)(6666004)(70206006)(356004)(2906002)(70586007)(2616005)(26005)(4326008)(336012)(316002)(6636002)(81156014)(54906003)(107886003)(9786002)(81166006)(426003)(8936002)(8676002)(44832011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB4415; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5c85e4bd-4b17-4c8b-b4df-08d7ba4f7b5e
X-MS-TrafficTypeDiagnostic: SN6PR02MB4415:
X-Microsoft-Antispam-PRVS: <SN6PR02MB4415582C933A2747359CDF8CB8EA0@SN6PR02MB4415.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;
X-Forefront-PRVS: 0325F6C77B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1OMs0QFQsLLU3Afn2CKGB0P0PrrxTWolQEKu773Z1RLgcmBU22wrSRKWY4oDXKueSThd52BOlnVgYqmipskcHQsehifFvmFPjZMR7mehHYXYbvWPSmtTqbGI9rV8kY2Nc4oknK6k81R3fh0/1wfMkVec5ogawNIfZu6gRiWlgEe0fGOuTjpGQGnpPDru1bH+LKN885xNVY1tmVWyXIFLCes0KQOjGwDRvw4V0QEzFze2AgtR9U55MKlnf+37pYaVJsDIRlcNP80JBdNrWHJWshL3eQEJ4l6/mLQWeDWnibCpi6xzYb4BLS9cdDw80cLGkSyvIpO3jaypKk+AB34HjXStKFTOCVW745MHTE3+wvJ2w5J7E2nffMyn+hQmeBq86gKIjwgecuNCQoNDeX8McCPAjA+b3KydP59i9TB1Lbny6oOgGNCtSDfU0KEV5p6j
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2020 00:04:42.9910 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c85e4bd-4b17-4c8b-b4df-08d7ba4f7b5e
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB4415
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_160447_521412_38E39364 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.236.89 listed in list.dnswl.org]
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
Cc: Tejas Patel <tejas.patel@xilinx.com>, Jolly Shah <jolly.shah@xilinx.com>,
 rajanv@xilinx.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tejas Patel <tejas.patel@xilinx.com>

Make zynqmp_firmware driver as optional to disable it, if user don't
want to use default zynqmp firmware interface.

Signed-off-by: Tejas Patel <tejas.patel@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 arch/arm64/Kconfig.platforms    | 1 -
 drivers/firmware/xilinx/Kconfig | 2 ++
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
index b2b504e..563c93d 100644
--- a/arch/arm64/Kconfig.platforms
+++ b/arch/arm64/Kconfig.platforms
@@ -301,7 +301,6 @@ config ARCH_ZX
 
 config ARCH_ZYNQMP
 	bool "Xilinx ZynqMP Family"
-	select ZYNQMP_FIRMWARE
 	help
 	  This enables support for Xilinx ZynqMP Family
 
diff --git a/drivers/firmware/xilinx/Kconfig b/drivers/firmware/xilinx/Kconfig
index bd33bbf..9a9bd19 100644
--- a/drivers/firmware/xilinx/Kconfig
+++ b/drivers/firmware/xilinx/Kconfig
@@ -6,6 +6,8 @@ menu "Zynq MPSoC Firmware Drivers"
 
 config ZYNQMP_FIRMWARE
 	bool "Enable Xilinx Zynq MPSoC firmware interface"
+	depends on ARCH_ZYNQMP
+	default y if ARCH_ZYNQMP
 	select MFD_CORE
 	help
 	  Firmware interface driver is used by different
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
