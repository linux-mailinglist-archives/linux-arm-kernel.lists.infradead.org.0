Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3A51A3A63
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 21:18:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CM8nWV3It+UJEH/UPSTy6mOpf3+vv1ckJlff0eAptJk=; b=th1DD01xM6vVX7
	v7q6T9s/6qMagxiSIeU50FbPhAzZ5kwys6kdXDZDS9ir9XJDLh06ZQZDSGaf1NbErI9S8gRrf/6qB
	mAdXmmLZbVo6NOTUzSK2dmTPehrcjBgUmnnug9/REi3MUNi5ws+R8PuXuqH7bsL7qqSWeXLOt8zIv
	be5UozgHIOnOshy8f/ByfN0tyEaj2NncpGYB9+fEv+13ns4TWhpSGNeD48H/m5BqoD7k7JaYtejtG
	1HBNBX1/9tRIrO83kb8STC7e4i08KWW0+lMr/mE9zr5zaiORB6kcXD6JhoKJC8CWnrL4AogwLcMO0
	I7HTzprmXKm9a3ZJr9dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMcgV-0005fk-RL; Thu, 09 Apr 2020 19:17:55 +0000
Received: from mail-bn8nam12on2057.outbound.protection.outlook.com
 ([40.107.237.57] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMcbf-0007O4-PD
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 19:13:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nY9txLxF/FQfespj9qWM9v3urU4HygYcfwm+3/Rg6QebvpykxqLQ2wNsW3iSMmcr/lkp7PpVW/TbYAB63NZXpsIbanZL1FjHZsHKUDD7EPFPZcmb5D+CHq76+3mHBgqeGh8rBC2IUlKqoqsUc7K0b7PXHddLy1FDVxp2GUgSCGj7OZiYeO9UmYeLsH4AaaZHcQi8bYQL6ddognT7ccA3IH5iwnsaz5s9t/sAzaxJX5Ay+pXZV8tGXt+7PSTIHC0KW2Pl8FtKXbNXUUY3qlmrOo7saohsNKG1iP9fwSKDjO9wob4fFhnDA9E+MJJAyOPB9Qn+VDOk6iHINP0SErZNDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4K6xGdz4Zy6SI+d7jorSzCPzAZ/H0AG1D/tFdYQgCfQ=;
 b=FXTXxSOyTsGv1KSb/DKOsL22UWvVDU3jMICnNEAjSHXCiXEJ15VHEq2ytyI0lN89LRTvW5IJAsfbbD4cM1bmn1xDeXdnJDOPLrRaavh+XdO8WHd9cOMjYZXoldeafoE3qU+zhnnqq4vn4ocOvQiM6SLIB7bsCZ3XHAEMspPUIDFDhfwEDJ/gXMYvx4yAlzx6ThYktyllpMPFhJZTTU5Ju9ubl5N0zOFIMN/ECcAUTrHjSBNAbAq69r7MuqagTQ3cwoWUgYZrHiGSB0x3+AbVPX3Af30YhJghfhOdjGp8N0hsypv8fDgre4+s8ymgykBWdvJbSCTyhQDPWsw2cmfQRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linaro.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4K6xGdz4Zy6SI+d7jorSzCPzAZ/H0AG1D/tFdYQgCfQ=;
 b=pu9+lKJS2mVknv88rCPBm9Qh7YfwsWYCgqAYlAYxzVHUZVnYyqnSPgmMrKHwtsr4OXwPBSlqwe4VciyQ5aWRFhyQwU/dmtvg6yt42tETiEm7HCcDisJawENn+BT+v2IApYAq4CwbZELPkC6TErbzPhLIYzRh/NdShLbgSqm/i+Q=
Received: from MN2PR18CA0016.namprd18.prod.outlook.com (2603:10b6:208:23c::21)
 by DM5PR02MB3148.namprd02.prod.outlook.com (2603:10b6:4:68::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.15; Thu, 9 Apr
 2020 19:12:52 +0000
Received: from BL2NAM02FT057.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:23c:cafe::7d) by MN2PR18CA0016.outlook.office365.com
 (2603:10b6:208:23c::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.17 via Frontend
 Transport; Thu, 9 Apr 2020 19:12:52 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT057.mail.protection.outlook.com (10.152.77.36) with Microsoft SMTP
 Server id 15.20.2900.15 via Frontend Transport; Thu, 9 Apr 2020 19:12:51
 +0000
Received: from [149.199.38.66] (port=44426 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcbA-000614-Q8; Thu, 09 Apr 2020 12:12:24 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcbb-0007NV-8R; Thu, 09 Apr 2020 12:12:51 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcbR-0007La-Ng; Thu, 09 Apr 2020 12:12:41 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v4 01/25] firmware: xilinx: Remove eemi ops for get_api_version
Date: Thu,  9 Apr 2020 12:11:50 -0700
Message-Id: <1586459534-8997-2-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586459534-8997-1-git-send-email-jolly.shah@xilinx.com>
References: <1586459534-8997-1-git-send-email-jolly.shah@xilinx.com>
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(46966005)(47076004)(44832011)(54906003)(81156014)(426003)(6666004)(5660300002)(70206006)(8676002)(7696005)(2616005)(2906002)(26005)(336012)(6636002)(356004)(70586007)(4326008)(186003)(9786002)(7416002)(36756003)(107886003)(81166007)(498600001)(8936002);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a46009e9-d985-4c2a-9b7f-08d7dcb9ffe8
X-MS-TrafficTypeDiagnostic: DM5PR02MB3148:
X-Microsoft-Antispam-PRVS: <DM5PR02MB3148045E6CA461724AC4DEDAB8C10@DM5PR02MB3148.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:67;
X-Forefront-PRVS: 0368E78B5B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0jQXfTP5QELvvb/rjwVyFiHWcKCihyv46y2pcq/N5q/Y1gZtkCzG1/fwP6ukH7iNCs8jV2EzXSRpRxSuphfG44qIt87A1QJjZPgS4bO34oP5+YXp4i+GLmQZPgYRv3nKEHhAe8AOpxiHRwZ+W6LUEugSfIEEec1QKYq5E3A2QxUiPH5pWsmoIq6UPZO0eirSWVbggSevTTnnFyJZWrBs8gIir56Z8EWfON5p43lCVYcR134xN+gm0ugh7LZOidA1s99IEXlt2txdEmPjFlvZtwdz7nvefxTYaBgRCMO6hlmtCjy2L0JbbNJilPIfxEhB8CVZjP2AqalxXdFA93kQmGKXy6AAFvbi2YJOw4J2VqaLE5gk9HSHFVKtG/jZsIMURuvt8TQJxaZGjANnuuUVMmnF50MKx8GLDl5Ugiy2EOghMYaL+GtlY25RQLtSrnWvYObI4VtSR/aViJtld4+UFYla3NxhAUI1kpgiDnUO6Pqf8+qMJo8lPov+gJEjkSlbcdh7awyd1n48u44bxhAdrA==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2020 19:12:51.6559 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a46009e9-d985-4c2a-9b7f-08d7dcb9ffe8
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR02MB3148
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_121255_835425_ADC82D72 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.57 listed in list.dnswl.org]
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
Cc: Jolly Shah <jolly.shah@xilinx.com>, Rajan Vaja <rajan.vaja@xilinx.com>,
 rajanv@xilinx.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rajan Vaja <rajan.vaja@xilinx.com>

Use direct function calls instead of using eemi ops. So remove
eemi ops for get_api_version and use direct function call.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/firmware/xilinx/zynqmp-debug.c | 2 +-
 drivers/firmware/xilinx/zynqmp.c       | 4 ++--
 drivers/soc/xilinx/zynqmp_power.c      | 4 ++--
 include/linux/firmware/xlnx-zynqmp.h   | 6 +++++-
 4 files changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/firmware/xilinx/zynqmp-debug.c b/drivers/firmware/xilinx/zynqmp-debug.c
index c6d0724..de4faf2 100644
--- a/drivers/firmware/xilinx/zynqmp-debug.c
+++ b/drivers/firmware/xilinx/zynqmp-debug.c
@@ -92,7 +92,7 @@ static int process_api_request(u32 pm_id, u64 *pm_api_arg, u32 *pm_api_ret)
 
 	switch (pm_id) {
 	case PM_GET_API_VERSION:
-		ret = eemi_ops->get_api_version(&pm_api_version);
+		ret = zynqmp_pm_get_api_version(&pm_api_version);
 		sprintf(debugfs_buf, "PM-API Version = %d.%d\n",
 			pm_api_version >> 16, pm_api_version & 0xffff);
 		break;
diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index 41b6516..36dab68 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -219,7 +219,7 @@ static u32 pm_tz_version;
  *
  * Return: Returns status, either success or error+reason
  */
-static int zynqmp_pm_get_api_version(u32 *version)
+int zynqmp_pm_get_api_version(u32 *version)
 {
 	u32 ret_payload[PAYLOAD_ARG_CNT];
 	int ret;
@@ -237,6 +237,7 @@ static int zynqmp_pm_get_api_version(u32 *version)
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(zynqmp_pm_get_api_version);
 
 /**
  * zynqmp_pm_get_chipid - Get silicon ID registers
@@ -734,7 +735,6 @@ static int zynqmp_pm_aes_engine(const u64 address, u32 *out)
 }
 
 static const struct zynqmp_eemi_ops eemi_ops = {
-	.get_api_version = zynqmp_pm_get_api_version,
 	.get_chipid = zynqmp_pm_get_chipid,
 	.query_data = zynqmp_pm_query_data,
 	.clock_enable = zynqmp_pm_clock_enable,
diff --git a/drivers/soc/xilinx/zynqmp_power.c b/drivers/soc/xilinx/zynqmp_power.c
index 0922789..d327d9e 100644
--- a/drivers/soc/xilinx/zynqmp_power.c
+++ b/drivers/soc/xilinx/zynqmp_power.c
@@ -186,11 +186,11 @@ static int zynqmp_pm_probe(struct platform_device *pdev)
 	if (IS_ERR(eemi_ops))
 		return PTR_ERR(eemi_ops);
 
-	if (!eemi_ops->get_api_version || !eemi_ops->init_finalize)
+	if (!eemi_ops->init_finalize)
 		return -ENXIO;
 
 	eemi_ops->init_finalize();
-	eemi_ops->get_api_version(&pm_api_version);
+	zynqmp_pm_get_api_version(&pm_api_version);
 
 	/* Check PM API version number */
 	if (pm_api_version < ZYNQMP_PM_VERSION)
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index 8efa5ac..a21abcd 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -294,7 +294,6 @@ struct zynqmp_pm_query_data {
 };
 
 struct zynqmp_eemi_ops {
-	int (*get_api_version)(u32 *version);
 	int (*get_chipid)(u32 *idcode, u32 *version);
 	int (*fpga_load)(const u64 address, const u32 size, const u32 flags);
 	int (*fpga_get_status)(u32 *value);
@@ -331,11 +330,16 @@ int zynqmp_pm_invoke_fn(u32 pm_api_id, u32 arg0, u32 arg1,
 
 #if IS_REACHABLE(CONFIG_ZYNQMP_FIRMWARE)
 const struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void);
+int zynqmp_pm_get_api_version(u32 *version);
 #else
 static inline struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void)
 {
 	return ERR_PTR(-ENODEV);
 }
+static inline int zynqmp_pm_get_api_version(u32 *version)
+{
+	return -ENODEV;
+}
 #endif
 
 #endif /* __FIRMWARE_ZYNQMP_H__ */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
