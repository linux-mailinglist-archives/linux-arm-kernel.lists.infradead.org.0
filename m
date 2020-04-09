Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E896C1A3A7E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 21:27:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J03fgjMCuTM2o53A7bM/f4M/gHNYJX5ig1uSOQx5zCE=; b=c2epPhKfDaFa5U
	nprbkRi4HI6jgaly3sJdrYlWZWT56BCGSghaKlqfyOzibQhNRtRAo7Y6n2F8tVhQ7sR/iHGWDANmp
	lZPJJUhGUi9mfd04yCBXZWsH2cGRIuPvId0PS0yLm4eSIzadgQ91+ipHL3j2yZducy5q7eiQBdccB
	o6pRErPhwebc6XWk73B2ofJ3AI+cCdAxbUa0kpwlNL90NjlOy0+dBsxgs9L4R2KDiNP+sTz6ucdVu
	07juWcGST9eG5+zfm1AxaV+7VtyWMHkQ6AdIiIBiLWP46Yzwnf1sl4NUIG4K0y+rVY1nmNhkb4+JJ
	eyDKdRGNeyVn39NbFkpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMcq5-0005IO-0O; Thu, 09 Apr 2020 19:27:49 +0000
Received: from mail-dm6nam10on2070.outbound.protection.outlook.com
 ([40.107.93.70] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMcpx-0005Hx-1n
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 19:27:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S16Dm6Krlwc468Gl9/bonGn5OjalljscYqVYqmn6kH+FetuKpCpeB+inmPXWQm2vZX7VB+o9LRfT1B9fkeeRk1KcvE3NE0miDdRPl4RaKsbCmx3c+/qfZTJfo8noPRqixSvxN4s65J9u80+TQuYPXy2zKCE9LAfSCZv51DN48zT0R2XSIIaEkBC9H+OFa+l/WTysH4uQkJxKNL8d3rs5+p2fGWnlz4ll/UraJNdYFVO01h01UXFelTdFpAxYBtvP25ZZ3t/StLkg2xyPBSaiRsrk/q66s7yysKGScIK/vxOCtW8pvQFIfYaK6L5y5Hq6AnPNPmGpALI7BbiZ44qJpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c5mwqjObi/oylTVUDI7jAXub1UIfs/ZJOGyzViHz48I=;
 b=a+zAKxOj+idzRAxfnea0J/21DFkAqHTt0Dn31kTOjSgbH+fTAW2fPUU6DcwzPR/UJMMS3owym9OCFah+UdKfSta9Uo0UzMUIfRXCcJvZvPboCUW0cDy/pdoOGGNI1DboTPk4FI9otOW4xvmP7xIk1qNNE38YfLzrtZq7KnSjEShZfA5zWycaleFze5wF2emUVvouFK+Pjo6f6+PYZ7xXx72oc0MwBDLvjrhewTUz1KTR2S0L2fTgtkZZx+WckgY5Qa81WjgjX5dFzpSB064gEhIX1bC0up8bysyEYsijQPCTq2A2O8HZtYvfMEK+bgp0NQju9Q3lcd4CmifcSR7wkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linaro.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c5mwqjObi/oylTVUDI7jAXub1UIfs/ZJOGyzViHz48I=;
 b=RzWU7RcOR+Ju7F/MO9+V9Eqjnm8OZKOsk8PlwnbRN1YuCY4XAFBm6vZpInFWlnAh3augUY86ZyUiL3cgN3sRiZ10vVlCQXXKKtE9LRRxKuYkBceHl2tFZUmimJ9Axq523el/q+RKUKdcMJS0kOZ2JUPoHpx36pqzzo2/+lr9FTw=
Received: from MN2PR05CA0032.namprd05.prod.outlook.com (2603:10b6:208:c0::45)
 by MWHPR02MB2511.namprd02.prod.outlook.com (2603:10b6:300:42::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.20; Thu, 9 Apr
 2020 19:12:52 +0000
Received: from BL2NAM02FT011.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:c0:cafe::e0) by MN2PR05CA0032.outlook.office365.com
 (2603:10b6:208:c0::45) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.11 via Frontend
 Transport; Thu, 9 Apr 2020 19:12:50 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT011.mail.protection.outlook.com (10.152.77.5) with Microsoft SMTP
 Server id 15.20.2900.15 via Frontend Transport; Thu, 9 Apr 2020 19:12:49
 +0000
Received: from [149.199.38.66] (port=44258 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcb8-0005zt-Qq; Thu, 09 Apr 2020 12:12:22 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcbZ-0007NV-98; Thu, 09 Apr 2020 12:12:49 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcbS-0007La-7x; Thu, 09 Apr 2020 12:12:42 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v4 09/25] firmware: xilinx: Remove eemi ops for clock set/get
 rate
Date: Thu,  9 Apr 2020 12:11:58 -0700
Message-Id: <1586459534-8997-10-git-send-email-jolly.shah@xilinx.com>
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
 SFS:(10009020)(4636009)(346002)(39860400002)(396003)(136003)(376002)(46966005)(9786002)(8936002)(36756003)(8676002)(186003)(81156014)(26005)(2906002)(70206006)(316002)(107886003)(7696005)(6636002)(426003)(44832011)(70586007)(4326008)(5660300002)(81166007)(6666004)(47076004)(7416002)(336012)(82740400003)(54906003)(2616005)(356004)(478600001);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 580482c2-4eef-4db7-64a9-08d7dcb9feb8
X-MS-TrafficTypeDiagnostic: MWHPR02MB2511:
X-Microsoft-Antispam-PRVS: <MWHPR02MB2511169B11DD8FCB52A0E194B8C10@MWHPR02MB2511.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:541;
X-Forefront-PRVS: 0368E78B5B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /r6EWDD/DvgGRk5mKggcKqmOq7DYNhnLTsw0WLSQILpLF0og075zbBdGFKDa/jH4P1iAafo6yY571qg5P8QEoRuricG4+QyDZv+OTDQO96Fu39ruEz8TZu+tjqMsK5gzNItz2CZ8V8Hsg1c4KQzo63/IiQn4NUwubu95qolBuPy3VE4YqDfMfTnZLg1JZNm62fxYeYvcKfb9/76ESqSUx8k3rJATu031Eakbj4HgM+Nv4XNGVjh56Arhccr6bkZsC9vIHfVle5l5Rf08FWbyQUvxCgll3Hj6fIVsJoeSrZT4yZQSOdXdKFmtgxNYlGaCR92ERfgpHdPjAvTYC/eoWsiiW+JNu0poQdXhQ6zFUwq2hqFF+z5l73E1rH9YfCi+3eVtR+WBE1UMeqtF74uT+tVNcK+Pk9ieFYll8A8/tRNMspz+nediNW19YQ/RnnvH2f4R4NqG+05YZi4NdXW0qcUfgJ6+UG/Irr6+gSKeGCxZQQIP9Q76diABm/MNFyTIW0PXdQzffmhIBhz7VkLa3w==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2020 19:12:49.6612 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 580482c2-4eef-4db7-64a9-08d7dcb9feb8
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR02MB2511
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_122741_093435_7F9447C9 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.93.70 listed in list.dnswl.org]
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

Use direct function call instead of eemi ops for clock set/get rate.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/firmware/xilinx/zynqmp.c     |  8 ++++----
 include/linux/firmware/xlnx-zynqmp.h | 12 ++++++++++--
 2 files changed, 14 insertions(+), 6 deletions(-)

diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index 5782b5c..8462201 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -444,13 +444,14 @@ EXPORT_SYMBOL_GPL(zynqmp_pm_clock_getdivider);
  *
  * Return: Returns status, either success or error+reason
  */
-static int zynqmp_pm_clock_setrate(u32 clock_id, u64 rate)
+int zynqmp_pm_clock_setrate(u32 clock_id, u64 rate)
 {
 	return zynqmp_pm_invoke_fn(PM_CLOCK_SETRATE, clock_id,
 				   lower_32_bits(rate),
 				   upper_32_bits(rate),
 				   0, NULL);
 }
+EXPORT_SYMBOL_GPL(zynqmp_pm_clock_setrate);
 
 /**
  * zynqmp_pm_clock_getrate() - Get the clock rate for given id
@@ -462,7 +463,7 @@ static int zynqmp_pm_clock_setrate(u32 clock_id, u64 rate)
  *
  * Return: Returns status, either success or error+reason
  */
-static int zynqmp_pm_clock_getrate(u32 clock_id, u64 *rate)
+int zynqmp_pm_clock_getrate(u32 clock_id, u64 *rate)
 {
 	u32 ret_payload[PAYLOAD_ARG_CNT];
 	int ret;
@@ -473,6 +474,7 @@ static int zynqmp_pm_clock_getrate(u32 clock_id, u64 *rate)
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(zynqmp_pm_clock_getrate);
 
 /**
  * zynqmp_pm_clock_setparent() - Set the clock parent for given id
@@ -742,8 +744,6 @@ static int zynqmp_pm_aes_engine(const u64 address, u32 *out)
 }
 
 static const struct zynqmp_eemi_ops eemi_ops = {
-	.clock_setrate = zynqmp_pm_clock_setrate,
-	.clock_getrate = zynqmp_pm_clock_getrate,
 	.clock_setparent = zynqmp_pm_clock_setparent,
 	.clock_getparent = zynqmp_pm_clock_getparent,
 	.ioctl = zynqmp_pm_ioctl,
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index 3bda22f..a71f52c 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -296,8 +296,6 @@ struct zynqmp_pm_query_data {
 struct zynqmp_eemi_ops {
 	int (*fpga_load)(const u64 address, const u32 size, const u32 flags);
 	int (*fpga_get_status)(u32 *value);
-	int (*clock_setrate)(u32 clock_id, u64 rate);
-	int (*clock_getrate)(u32 clock_id, u64 *rate);
 	int (*clock_setparent)(u32 clock_id, u32 parent_id);
 	int (*clock_getparent)(u32 clock_id, u32 *parent_id);
 	int (*ioctl)(u32 node_id, u32 ioctl_id, u32 arg1, u32 arg2, u32 *out);
@@ -331,6 +329,8 @@ int zynqmp_pm_clock_disable(u32 clock_id);
 int zynqmp_pm_clock_getstate(u32 clock_id, u32 *state);
 int zynqmp_pm_clock_setdivider(u32 clock_id, u32 divider);
 int zynqmp_pm_clock_getdivider(u32 clock_id, u32 *divider);
+int zynqmp_pm_clock_setrate(u32 clock_id, u64 rate);
+int zynqmp_pm_clock_getrate(u32 clock_id, u64 *rate);
 #else
 static inline struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void)
 {
@@ -369,6 +369,14 @@ static inline int zynqmp_pm_clock_getdivider(u32 clock_id, u32 *divider)
 {
 	return -ENODEV;
 }
+static inline int zynqmp_pm_clock_setrate(u32 clock_id, u64 rate)
+{
+	return -ENODEV;
+}
+static inline int zynqmp_pm_clock_getrate(u32 clock_id, u64 *rate)
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
