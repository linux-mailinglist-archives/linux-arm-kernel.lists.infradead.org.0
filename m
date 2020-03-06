Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCEA717C95E
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 01:04:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/aA6r9jbtWwTwDsKd4dwBxlFF4/1QiStHbbv2XFnu+M=; b=YKSkbCeXwCb5R7
	tl9d8XGd2kl88ETFhowK/B2j7m11Y5eURbkZUtQka4+SPeywStbl0ZlM9OBu0QDSwuZkSPvlPRT4k
	xZl6FQ4uLRiYYq78iNEZzUaoQt/Ia7aU2hCKUd+6HhyTMkHWDjiMe14IOz+Loa5n4c//14NC+qWZV
	gS7SxzUBL87xueI3XL4/hD8Dbo6nGR2cubzIEtoufPPUsk61cHO6yC8hGjU8dxAs3k2nZ/4Yo9YEu
	xGa/Oco7M4MwA2AvXDNf1zoTYGDIXA/zdfTjhOwwhbQT/ag0tpccaduiJqvZTUSNsJ02pxAKaoLlr
	uqkoKZmS1sGLOSF7E0vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAMwy-0000dj-KJ; Sat, 07 Mar 2020 00:04:16 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAMwo-0008Ra-5U
 for linux-arm-kernel@bombadil.infradead.org; Sat, 07 Mar 2020 00:04:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=L7/77s3eD14O5PIofcgKUXo1YvIOKplIw+paqyHGlGQ=; b=S3m+8FWg2rmlmyDdwRgBFO28gO
 HvEZIlPwtNpDA6ouqUFsf9Vvk/tBxxd04HHlvFWq5qdmb/UNvqtyB0PTLijggi40LqPH5ZHQ2rwpQ
 iODts8Txvc63lysJdHXe696HmDCKzyXKYPBGaykoC8v9KjZu4gcXlho6AjErSkcXDIKTpceEAp9jK
 KNnVhF3I1MwfyWLnn3F1P91xYgg+skBP8mwlZQBnx9XwoWs1DwgbhButsGAWukl/Ali+xjL3errbA
 9dRWYv77X7leVxUGJjtKsD6IQVkDoEkYeHwFadbja28rY4R56xsGtlnDinwv4W5xI5aXSPWL9tXSP
 yt4aAF9A==;
Received: from mail-mw2nam12on2087.outbound.protection.outlook.com
 ([40.107.244.87] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAMhI-0004bD-RX
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 23:48:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IswnCnn+AQK82d1g7C4UxeurfYbLZiDEaJmIgKChlnxUFBczn49LUB4XYWTGDZhxi2Eh9izhW9xe+Omld6q2fuyblXWxkGheIuKI8RGCjU2Zf38dZlFySiL+cHZ5/8k2fIIyWlW1OICRamSRyjdsDswcL2X/FAdlMgU2Ht2J9lLRKcIC92GGWK+sHDYBp1YPj+v52q/QAk3ry+sndcP3go4oXB52Zu3uCFUyRWPc58gX0rJziU9/f9+IZWhGxVqt/xSNzwmuRHrwZd4oxHqgbx2BCkfpMMuN9gXX1Il/BK8SDdhjJTfLhuetYEYKmaFnM1llyaAT+MnyXPAA5rOGqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L7/77s3eD14O5PIofcgKUXo1YvIOKplIw+paqyHGlGQ=;
 b=Efc6zV4ZjCUHK2kle4BFCddS8Weg3qxw1u6xmS4uO1cfs6o6oxxNUNZb8RXMr7LLKHyP1cXRtaGFNQ1s92uVEMGh58rY9npHRZdlGvphFK9yMC8kpfsIQq3Atk+TZ2hJth9kGd0IYphPtqyjeg2w9iCJYbmsk5ZvPFNE+7MD40xOzWHFYt/+L8vW6QExCbzEMFWMvPqloTIYxyncE+zZkidtZZ3U+HTBCuwf6ZJ4NOPMWE0wOd5/AS3n0x48Kh/j0ScLWooWA+i+CjnGpMwdM4eMXaM6NnWqVRzC7zuZh1IFOVM9ih+Jnedlp81+zKYo+WX0HCelr5UXuYqBG4V2CA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L7/77s3eD14O5PIofcgKUXo1YvIOKplIw+paqyHGlGQ=;
 b=cCx+uenh2qFrRuOI5oMmFK1cOTuJekLczf3uqpq61b2E3g1CQLVfzHvNhkvw3jgjng8gUvQpdifBmXU8wHoA6nVPjJWt9EWRdREUfLCwq7nfX1k6YvBFo/+2p43FnQwdV20D5ju/41FRZWzt+QY0O/9aOTbjQelOaEI7e2o01So=
Received: from MN2PR10CA0008.namprd10.prod.outlook.com (2603:10b6:208:120::21)
 by SN4PR0201MB3421.namprd02.prod.outlook.com (2603:10b6:803:43::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.18; Fri, 6 Mar
 2020 23:47:59 +0000
Received: from BL2NAM02FT022.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:120:cafe::fa) by MN2PR10CA0008.outlook.office365.com
 (2603:10b6:208:120::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.14 via Frontend
 Transport; Fri, 6 Mar 2020 23:47:59 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT022.mail.protection.outlook.com (10.152.77.153) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2793.11
 via Frontend Transport; Fri, 6 Mar 2020 23:47:59 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMhC-0003QL-S4; Fri, 06 Mar 2020 15:47:58 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMh7-0002g8-Ou; Fri, 06 Mar 2020 15:47:53 -0800
Received: from xsj-pvapsmtp01 (smtp-fallback.xilinx.com [149.199.38.66] (may
 be forged))
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 026Nljcj002387; 
 Fri, 6 Mar 2020 15:47:45 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMgz-0002eg-MD; Fri, 06 Mar 2020 15:47:45 -0800
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v3 01/24] firmware: xilinx: Remove eemi ops for get_api_version
Date: Fri,  6 Mar 2020 15:47:09 -0800
Message-Id: <1583538452-1992-2-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583538452-1992-1-git-send-email-jolly.shah@xilinx.com>
References: <1583538452-1992-1-git-send-email-jolly.shah@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(346002)(376002)(396003)(189003)(199004)(36756003)(7696005)(9786002)(6636002)(426003)(26005)(2616005)(336012)(70586007)(70206006)(54906003)(316002)(186003)(44832011)(81166006)(478600001)(8676002)(356004)(107886003)(8936002)(81156014)(4326008)(2906002)(6666004)(5660300002)(7416002)(42866002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN4PR0201MB3421; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 43198ba5-7845-44fb-62f5-08d7c228cd68
X-MS-TrafficTypeDiagnostic: SN4PR0201MB3421:
X-Microsoft-Antispam-PRVS: <SN4PR0201MB3421875D04904143C597A3FAB8E30@SN4PR0201MB3421.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:67;
X-Forefront-PRVS: 0334223192
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2Mahzi8+In/k1KK8nGkNT0QbiJKjqfbwIz1GpnfwpfzMgwI31TEj9wpndsOzalQsB47DqS231Q1augKnW4LubvXm0bXtaI9eBAg2/Cb3bWsJ44veb3fwp7KrwrcPgZdrPGOMxqb4pp02/5wSXWrDYV4leQMW1IqUffT8+pX54F5b85BBZECqTcRDh2eFSC4HcMTBjU6Asg9MyVUZsbC5Wmjtnj6vTGlhCBw5BHlZiK4c9FPyaRFNTr7W9r88lrH8e6URp7orKpfWIdVLjsk/FHRt5C8FUW6mVurpQ3WjFiTBN6KlN3UvwLVPsqp88UaI1QDOuZWlS96wf9CSCteotZGsrhVtvPJk4loPTAH6So1JkOcNAQhifRjZAvOZ/TfkYfqwYT2We6OlkBQ8EqALLn6iCmDq2ksVN3elvjzIOMKDEALfibnNqRILnUaTaDynDvEUFpclowu/eUCyc90b54cH2Cr7DZzQES/FScXEBBUkZlWCXzXm6avlZQrFYtp0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2020 23:47:59.4467 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 43198ba5-7845-44fb-62f5-08d7c228cd68
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN4PR0201MB3421
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.244.87 listed in list.dnswl.org]
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
 include/linux/firmware/xlnx-zynqmp.h   | 2 +-
 4 files changed, 6 insertions(+), 6 deletions(-)

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
index ecc339d..f7725d1 100644
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
@@ -708,7 +709,6 @@ static int zynqmp_pm_set_requirement(const u32 node, const u32 capabilities,
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
index 2cd12eb..7529383 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -286,7 +286,6 @@ struct zynqmp_pm_query_data {
 };
 
 struct zynqmp_eemi_ops {
-	int (*get_api_version)(u32 *version);
 	int (*get_chipid)(u32 *idcode, u32 *version);
 	int (*fpga_load)(const u64 address, const u32 size, const u32 flags);
 	int (*fpga_get_status)(u32 *value);
@@ -317,6 +316,7 @@ struct zynqmp_eemi_ops {
 			       const enum zynqmp_pm_request_ack ack);
 };
 
+int zynqmp_pm_get_api_version(u32 *version);
 int zynqmp_pm_invoke_fn(u32 pm_api_id, u32 arg0, u32 arg1,
 			u32 arg2, u32 arg3, u32 *ret_payload);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
