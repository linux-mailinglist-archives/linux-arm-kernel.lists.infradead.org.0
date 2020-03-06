Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA8C17C90A
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 00:49:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uoyMboaGnbttofjelP7eYQ0AS+4ZO6+6bYze7ZR/yAw=; b=AYK2P9+2t5YLrd
	ueSCSm7ZFZ59Ul6xoQtJA6SzAZc3gHrq5iE1SEWc8b1XeKGIRHoeJjbux6xZqsmS8DGyuw5ddOD2o
	BmyK5zlscijWDTF9BK3QCZ5HCWMVC/0i5/KjWB49xuCNaDpTAYfbrg19CbIfJEY0FDBFOSy4kVY7y
	D99KcQzFtDbMFg8iyoKxlj3JWRLmplnm0DkUqgKGSk6oGdfXZA+nzAOspM7ugolJIQhN9Zz5pUj0U
	Qf636DtHd78CjNmGl0wckwFIa2niMlvw6BMcRnGhOMW3Oit+a2QedJgSrZTLM77a9nUSJWlGGZ08W
	Fe3hO+KsoV3MWtUWrmDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAMiv-0007Cy-9j; Fri, 06 Mar 2020 23:49:45 +0000
Received: from mail-eopbgr690063.outbound.protection.outlook.com
 ([40.107.69.63] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAMhF-0005z1-09
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 23:48:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WTg80UaR1hGMpZJQsVOHcbUi5TJlnN14Nr1jrnJ0T8vfGcm2toUV88D97VsKdosEAwyJ8zZUJR0vRFSbKhTceqT4zZ6Eq61PDO20Rvm31r2+1v3lpi+0KuEUXsDux8X2hUmZJadnUSaj1ucTIIBHvDK4sL4QbOmIFTL0J+yx9sb1u91L4AYZZrQQxIANUs1qWxBKmnWSfeOGfElxTMfmNnSx55mt+MGTB1WLEliOg8XkeQm9DITZsQMZpEtZo+am6wLeDJhLpkbJVGxg/6f2wDV3M4/4vPWzSth4YVXXVZns0Ph75xeZmBbt8/UBROdZT7RRBcf8tWddWE/jM8f0aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wV8Fuvh5L+QBE4nfqB5gA+zQ48ZhMCC/DEE/7HpKvp8=;
 b=Qddmff5gX/sLoeh66xXmIIQfCesNNO2O15dGgZtK7SkxT25VxZQ9kpk7D5dSibg1i0KQArHAuN6s8roI9u9PCdoAb6Ep4IDomwujZENkMHSYUu652s4vTInoQ2Fym+LoMBhV76Rr67zKjzbaRcFN+/hntXxo8NyZZ7hO6i9H66mc6QIqapFjgLzWFNfWBFgPrGLnqEIGN8Re4TAZlH/wFIbnDuLIgUybKXeCWPx1TzjbHdyZLtOG0nvbuePvUPatwElkaW6jJTt4o+b7CdkquFsvqyl+K1oQsJOVdc1iVixRSUMqdQvgSaqOPdXB+uCMeac3lZok2EUKhBqmEs1kIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wV8Fuvh5L+QBE4nfqB5gA+zQ48ZhMCC/DEE/7HpKvp8=;
 b=J/FI+J+M/YkBlGnOHhkuJGnMAnRQsVnDGmNg3s+NolZjVbC9hLEvLnGkigRaMwFIntqtGBleWXbufGqErp9Cwq7YBMGIyhgR1w0iBEPV4LdZruM2hPZ8btgrfKQl8/1nEvUobnCHqI8KGOS25qqW9qMZfGlRUGFcTfO2KMyGQL4=
Received: from BL0PR1501CA0006.namprd15.prod.outlook.com
 (2603:10b6:207:17::19) by DM6PR02MB4937.namprd02.prod.outlook.com
 (2603:10b6:5:1a::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.16; Fri, 6 Mar
 2020 23:47:59 +0000
Received: from BL2NAM02FT028.eop-nam02.prod.protection.outlook.com
 (2603:10b6:207:17:cafe::fd) by BL0PR1501CA0006.outlook.office365.com
 (2603:10b6:207:17::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.14 via Frontend
 Transport; Fri, 6 Mar 2020 23:47:58 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT028.mail.protection.outlook.com (10.152.77.165) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2793.11
 via Frontend Transport; Fri, 6 Mar 2020 23:47:58 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMhB-0003QA-VR; Fri, 06 Mar 2020 15:47:57 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMh6-0002g8-SJ; Fri, 06 Mar 2020 15:47:52 -0800
Received: from xsj-pvapsmtp01 (mailhub.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 026NlkhM001011; 
 Fri, 6 Mar 2020 15:47:46 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMh0-0002eg-Bq; Fri, 06 Mar 2020 15:47:46 -0800
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v3 13/24] firmware: xilinx: Remove eemi ops for
 reset_get_status
Date: Fri,  6 Mar 2020 15:47:21 -0800
Message-Id: <1583538452-1992-14-git-send-email-jolly.shah@xilinx.com>
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
 SFS:(10009020)(4636009)(346002)(39860400002)(396003)(136003)(376002)(189003)(199004)(4326008)(8936002)(107886003)(7696005)(26005)(6666004)(316002)(7416002)(2906002)(54906003)(356004)(6636002)(70206006)(5660300002)(81156014)(81166006)(8676002)(70586007)(9786002)(36756003)(336012)(186003)(2616005)(44832011)(426003)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB4937; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 02bc1f2a-aa98-44fc-92cf-08d7c228cce1
X-MS-TrafficTypeDiagnostic: DM6PR02MB4937:
X-Microsoft-Antispam-PRVS: <DM6PR02MB493756D0FBAA52A4DBA2E284B8E30@DM6PR02MB4937.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:1360;
X-Forefront-PRVS: 0334223192
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KJdbVQ+psdy+JI6QnRLPeNjP5oBbK0g3WAYXm7TnWcAJro9rKhWXgoC4kHI0oxlkP+MttSN6OrkVuMbbvI3MfPW6ddLWIfGxCS1Dy6cK/tHx9w67dZp7PoHhRydkyRR4jyafT5HzzBvAhMI6+cSavvZdErv9cvpDtKmqkCM8nOcsPi6kH3fcdSSqnXtgR7XqkecmR2cSqh08H6Pdy3q0TI9x+p9iN8u1J326dS3VBY2OmyCexDEkvb3EWHeAIksVOe3KfETcBiB39b9ztBXZvbqhux6MTMAqSnsGMuipXVVI2b4gFPJvBizlPdlvXcLmhmyfDYtH4Si83+E4XgWl3QAfzpq4eJsBE69yPDl1uaO+TZQO9PUTB6RHrc1RYxuIybrax4jv0aGayrGq7bQ9FMVpAY2IDO4fvC9+u/lXlPC1lytwFcQuS7yZU+w6ZlZW
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2020 23:47:58.5638 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 02bc1f2a-aa98-44fc-92cf-08d7c228cce1
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB4937
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_154801_041462_31D67D7C 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.69.63 listed in list.dnswl.org]
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
Cc: Jolly Shah <jolly.shah@xilinx.com>, Rajan Vaja <rajan.vaja@xilinx.com>,
 rajanv@xilinx.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rajan Vaja <rajan.vaja@xilinx.com>

Use direct function call instead of using eemi ops for
reset_get_status.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/firmware/xilinx/zynqmp.c     | 5 ++---
 drivers/reset/reset-zynqmp.c         | 8 +-------
 include/linux/firmware/xlnx-zynqmp.h | 2 +-
 3 files changed, 4 insertions(+), 11 deletions(-)

diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index 1fa52e6..f5c5d41 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -625,8 +625,7 @@ EXPORT_SYMBOL_GPL(zynqmp_pm_reset_assert);
  *
  * Return: Returns status, either success or error+reason
  */
-static int zynqmp_pm_reset_get_status(const enum zynqmp_pm_reset reset,
-				      u32 *status)
+int zynqmp_pm_reset_get_status(const enum zynqmp_pm_reset reset, u32 *status)
 {
 	u32 ret_payload[PAYLOAD_ARG_CNT];
 	int ret;
@@ -640,6 +639,7 @@ static int zynqmp_pm_reset_get_status(const enum zynqmp_pm_reset reset,
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(zynqmp_pm_reset_get_status);
 
 /**
  * zynqmp_pm_fpga_load - Perform the fpga load
@@ -767,7 +767,6 @@ static int zynqmp_pm_set_requirement(const u32 node, const u32 capabilities,
 }
 
 static const struct zynqmp_eemi_ops eemi_ops = {
-	.reset_get_status = zynqmp_pm_reset_get_status,
 	.init_finalize = zynqmp_pm_init_finalize,
 	.set_suspend_mode = zynqmp_pm_set_suspend_mode,
 	.request_node = zynqmp_pm_request_node,
diff --git a/drivers/reset/reset-zynqmp.c b/drivers/reset/reset-zynqmp.c
index 4a01b7e..373ea8d4 100644
--- a/drivers/reset/reset-zynqmp.c
+++ b/drivers/reset/reset-zynqmp.c
@@ -15,7 +15,6 @@
 
 struct zynqmp_reset_data {
 	struct reset_controller_dev rcdev;
-	const struct zynqmp_eemi_ops *eemi_ops;
 };
 
 static inline struct zynqmp_reset_data *
@@ -41,10 +40,9 @@ static int zynqmp_reset_deassert(struct reset_controller_dev *rcdev,
 static int zynqmp_reset_status(struct reset_controller_dev *rcdev,
 			       unsigned long id)
 {
-	struct zynqmp_reset_data *priv = to_zynqmp_reset_data(rcdev);
 	int val, err;
 
-	err = priv->eemi_ops->reset_get_status(ZYNQMP_RESET_ID + id, &val);
+	err = zynqmp_pm_reset_get_status(ZYNQMP_RESET_ID + id, &val);
 	if (err)
 		return err;
 
@@ -73,10 +71,6 @@ static int zynqmp_reset_probe(struct platform_device *pdev)
 	if (!priv)
 		return -ENOMEM;
 
-	priv->eemi_ops = zynqmp_pm_get_eemi_ops();
-	if (IS_ERR(priv->eemi_ops))
-		return PTR_ERR(priv->eemi_ops);
-
 	platform_set_drvdata(pdev, priv);
 
 	priv->rcdev.ops = &zynqmp_reset_ops;
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index f882895..ce7b545 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -288,7 +288,6 @@ struct zynqmp_pm_query_data {
 struct zynqmp_eemi_ops {
 	int (*fpga_load)(const u64 address, const u32 size, const u32 flags);
 	int (*fpga_get_status)(u32 *value);
-	int (*reset_get_status)(const enum zynqmp_pm_reset reset, u32 *status);
 	int (*init_finalize)(void);
 	int (*set_suspend_mode)(u32 mode);
 	int (*request_node)(const u32 node,
@@ -321,6 +320,7 @@ int zynqmp_pm_get_pll_frac_data(u32 clk_id, u32 *data);
 int zynqmp_pm_set_sd_tapdelay(u32 node_id, u32 type, u32 value);
 int zynqmp_pm_reset_assert(const enum zynqmp_pm_reset reset,
 			   const enum zynqmp_pm_reset_action assert_flag);
+int zynqmp_pm_reset_get_status(const enum zynqmp_pm_reset reset, u32 *status);
 int zynqmp_pm_invoke_fn(u32 pm_api_id, u32 arg0, u32 arg1,
 			u32 arg2, u32 arg3, u32 *ret_payload);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
