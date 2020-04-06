Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6399519FBF1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 19:45:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PFrwV29rzjR9CwS7/RZvsvXPT8ztvdZTqleoqu6ODnQ=; b=VB3dqwA1+kzDEx
	nOXgtPsA5JzTfIKrmeTiiW8EvKJdhpjKwC1gOvNkaajwa54Y16fDL5HyQc48pOOMhx51wmlXNutIF
	sRBY58QiBxLFCv8JcqaEQnAGB0FTXtH3X8xC/oxrNZPLbKr4wsESRDX3YKmwLwU74oitKiE2Ow5bl
	hI3/zZEq/PjvfzSzkOwWw2QTPD8D99TL/zXUYaaM7lha7BdnBrC8SbinlVSgPMwMrCy1b1oi5P7ba
	loZdJJer3ttRoRNWTCHrSW5RNW6dcFK7YbLkQ/EbmOw58wz7KlgCi6ZKEG898s9nVGePkIzlo6Viv
	uDr4qFhp2uXWSm1GazHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLVoK-0001Rd-Cf; Mon, 06 Apr 2020 17:45:24 +0000
Received: from mail-dm6nam12on20612.outbound.protection.outlook.com
 ([2a01:111:f400:fe59::612]
 helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLVnP-0000y1-My
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 17:44:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oS+rS8n4KK6Wa4U7Hg9+KJg3oWiA8N72zZ/MAZMuCjyv49IqqoF7RGBmsR6IP7TFs9fhyc2HaYgWdo+HNhNAyuKk+TzG7CrSpxAU0tHPm7e49hHcfzcxSlbU2w22bk435mAYPffSmOSf5P8reBQZkZ7Gays3OjFW7HikPTDV8BDi3u8oa8Q8krAuBLtFj4Q4oJqAUf86iklZUlsh1AXBinmJWh/ZGeVZGvPO9aSrNZkT/PBiZXF5HUtt/38JicojgwPkE3pdenk9GDL/0ftHmhpqtAwhrokkn61xA9kSeFk/hlXz26KGVQCU2KFd6hqAL0eSAdsW9JY3JqgapQ/bEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b7FWgjq0okTM2/qyCwHbOuT0Q6wJ7iF9RKpJVx5Xbk0=;
 b=fUBh6cyvzAtRzai1NUiatwPLW7qD/n6bUEYIdsgyEbKfX8nPZFDkNyV5FlKF9SVcq8SfqhqlWFsXUg67SbbEgm+hc84PHKkh4UPTO4Mu30JmYje9xrHR4GxllI9Xye8KqHH+h0MOzRK7oVbR10u8WTVF5eAXvvwB9Z0fxaJyN/hncyWe3x8qTqi2X7DrGCAfZcCgrbqiVpj17FW7H/b4m46bdJASG9i8JtVt2ESee1oagP6igvsZ0D//q4CSNR3+6rF/KFiG8H9rbc+D30qAvUpw6OhsXVnV3nDWLKb/gtuUhYn30eQ3OI9uhhqWtSPEDQnOPn7DyzzkmHGA14VXnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b7FWgjq0okTM2/qyCwHbOuT0Q6wJ7iF9RKpJVx5Xbk0=;
 b=iQaybejULtegKD9ivzCqmw4XHjBWRJ6Q7azOhOVNZz0T5hwK6UU1UZ9xphDNdiUNQDgjTjw83AHw6qX+bDHxBfpWbXLG/NZpVT00gBYKqxE8pQ1BRvgMc1zJ3oV1a1NqKC1L2e5GBDuzSt8xcYUEsUnyL7LEFhTOlaUezmIQjnM=
Received: from SN4PR0401CA0016.namprd04.prod.outlook.com
 (2603:10b6:803:21::26) by SN6PR02MB5168.namprd02.prod.outlook.com
 (2603:10b6:805:78::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.15; Mon, 6 Apr
 2020 17:44:25 +0000
Received: from SN1NAM02FT003.eop-nam02.prod.protection.outlook.com
 (2603:10b6:803:21:cafe::d2) by SN4PR0401CA0016.outlook.office365.com
 (2603:10b6:803:21::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.16 via Frontend
 Transport; Mon, 6 Apr 2020 17:44:25 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT003.mail.protection.outlook.com (10.152.73.29) with Microsoft SMTP
 Server id 15.20.2878.15 via Frontend Transport; Mon, 6 Apr 2020 17:44:24
 +0000
Received: from [149.199.38.66] (port=46069 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <manish.narani@xilinx.com>)
 id 1jLVn4-0007ak-U6; Mon, 06 Apr 2020 10:44:06 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1jLVnM-0001ge-GF; Mon, 06 Apr 2020 10:44:24 -0700
Received: from xsj-pvapsmtp01 (smtp3.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 036HiK5K017991; 
 Mon, 6 Apr 2020 10:44:20 -0700
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1jLVnI-0001g6-4a; Mon, 06 Apr 2020 10:44:20 -0700
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id 2CE8E121246; Mon,  6 Apr 2020 23:13:39 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 adrian.hunter@intel.com, michal.simek@xilinx.com
Subject: [PATCH v3 3/6] mmc: sdhci-of-arasan: Rename sdhci_arasan_data to
 avoid confusion
Date: Mon,  6 Apr 2020 23:13:32 +0530
Message-Id: <1586195015-128992-4-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <1586195015-128992-1-git-send-email-manish.narani@xilinx.com>
References: <1586195015-128992-1-git-send-email-manish.narani@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(136003)(396003)(39860400002)(376002)(346002)(46966005)(2616005)(316002)(82740400003)(6636002)(44832011)(336012)(36756003)(42186006)(6266002)(26005)(70206006)(70586007)(2906002)(186003)(4326008)(5660300002)(478600001)(107886003)(356004)(81156014)(426003)(81166006)(47076004)(6666004)(8676002)(8936002);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c2af3971-a4e9-4999-ec28-08d7da52258e
X-MS-TrafficTypeDiagnostic: SN6PR02MB5168:
X-Microsoft-Antispam-PRVS: <SN6PR02MB51689008EA987F5C4CF8FCF5C1C20@SN6PR02MB5168.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:1079;
X-Forefront-PRVS: 0365C0E14B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4zeOhq+ReGhO/SKObqhdBgoSyieZN8BpZZqFfbas+Ye3P/fN2OkiRw+BnaxLin0fEDIJ/WPTdRo4JH9XfDikc7T4AkGCT8wlV5n9/5JpJbQLrYq2/+B9OajCwO6uh4Nel71ZTui5RdrKJVQxtyVq29nYwnqOsiY7KKKOVSGmldC9j+6NnvwAN9ovczOlZlVD8pf4CZHcH3c76CF6QVyfXXa37JNmkuaqLygKPmyxl1zuN7jw2WH0ZR11ADmMj35dUR+oh88KdXceXPiBo+jDpa6BTUzUHqeba6w5ds/OqJNXbhoAHKm4GbDeENi6nyhS9k8ob9R+d4K1nXAnTwBQ0rfpAcFS8Da4SIEmi3ev6aFdGmWXco1AWxFthLpMnLbEEI//SyUKhMHS5FJw0Xrv1XaDmMeh/6IrR2xSHzJyGv+CnOK/n+bgHlu/xCxiFAnGLRYq/ZWXNv9i8ZvLsolJhkpvhQwPYTWMvKUwwIgi/kSmnuicmCHcJdSJLMnYqWn/cba/ZjbF+2vKxEUCujHG6A==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2020 17:44:24.8391 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c2af3971-a4e9-4999-ec28-08d7da52258e
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB5168
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_104427_762866_862E387A 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Manish Narani <manish.narani@xilinx.com>,
 git@xilinx.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is 'struct sdhci_arasan_data' but also
'struct sdhci_arasan_of_data sdhci_arasan_data'. Rename the latter to
avoid confusion with the name of the struct.

Reported-by: Adrian Hunter <adrian.hunter@intel.com>
Signed-off-by: Manish Narani <manish.narani@xilinx.com>
---
 drivers/mmc/host/sdhci-of-arasan.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
index 34403b2..72f5d83 100644
--- a/drivers/mmc/host/sdhci-of-arasan.c
+++ b/drivers/mmc/host/sdhci-of-arasan.c
@@ -365,7 +365,7 @@ static const struct sdhci_pltfm_data sdhci_arasan_pdata = {
 			SDHCI_QUIRK2_STOP_WITH_TC,
 };
 
-static struct sdhci_arasan_of_data sdhci_arasan_data = {
+static struct sdhci_arasan_of_data sdhci_arasan_generic_data = {
 	.pdata = &sdhci_arasan_pdata,
 };
 
@@ -563,15 +563,15 @@ static const struct of_device_id sdhci_arasan_of_match[] = {
 	/* Generic compatible below here */
 	{
 		.compatible = "arasan,sdhci-8.9a",
-		.data = &sdhci_arasan_data,
+		.data = &sdhci_arasan_generic_data,
 	},
 	{
 		.compatible = "arasan,sdhci-5.1",
-		.data = &sdhci_arasan_data,
+		.data = &sdhci_arasan_generic_data,
 	},
 	{
 		.compatible = "arasan,sdhci-4.9a",
-		.data = &sdhci_arasan_data,
+		.data = &sdhci_arasan_generic_data,
 	},
 	{
 		.compatible = "xlnx,zynqmp-8.9a",
-- 
2.1.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
