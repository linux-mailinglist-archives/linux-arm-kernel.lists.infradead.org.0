Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4352517C915
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 00:53:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lCSSI8zLk3grISuuBvQ4CnMwLoZZLz6Dr63wDyHLN0U=; b=QFElwbw7Lz4FrI
	9qFrvb66v8OIgWSfAH3de1mJBhoIn0Bp7XMK2crgxLsdKYndUEH3MSYwoFlEYEsRzLFDsAocgs+V4
	ikf9by/367TzPneqBTuEG/xUylcDlQeBduJaY2w4Cs35VLeDpTK9xGgI5cQSD0cMuORhQ+U9SJRE9
	rExIdkCVAbvTcBTJPjYsJgGhFWTpI1+GoAlfltKRvfsZVzMwApi1rqw88TfzkGy76U1x/g0TppnER
	yz9jI0lsgqDIi+HchLQiuqYhGAhgLdIjqnIVMrtBWZ/cOc4UBTXqRHXJ6BhC31Yfthdkkx+ADphxf
	h+iFzatszCSnB3m/n5tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAMlz-0002Rh-QX; Fri, 06 Mar 2020 23:52:55 +0000
Received: from mail-bn8nam11on2074.outbound.protection.outlook.com
 ([40.107.236.74] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAMhF-000601-Kf
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 23:48:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Iy9LMhqjn3Sw85LE8sSEgAslPpz91f+Y//jyheVot+msCNFQ8khQobr7G179rsMgoUIPdLnFIPjZ5TqEMlWk88dBzh9wgY8nQmR8jImw8lKwbsXXJhH/29aDwlT9zLHs5kl+7wFX+PDojDdeK2VTg5l5UR70FDth4gi5ySPABwNVezUBebi+w/WwDkwtzKYdqbEHBAujxboLflOi4PZRWvpVzxKRXEqFO96VTK8eCWSJdCTTTccbkD2xuetn8X4Ci21aIG33Y+yNbYTLzBEevKtIS2IjiRROfbRuY73wP+e4rchnoAubL0AW241pPvOgBiHbXpzWvtpxJiWD+aUFag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4zwR4pHUKAhUS5+xintUy9thSja0Nlvi/b/oy/Ba1oo=;
 b=lAOGVfr46NfqxW3uldl7V/q3FHzy5rGbRQw7Y1ZZuHy3FVpXiR1ZqR/h2qjWzloOVg+l0IZXtcVVUK6fjqa2LrXyI0RV2zbqCXXNj6LIqYLf/T59QBfEqSslVUcmg6/JNB07gnwbTmSmW09FzhE99kH6zRj3PHxf+lbZvVSyShbCeFOo06nlJY7PTh4YuMBAPRR3UF9u9niiTl78mRLRYuBSbY0zlSR6KHx9waQ0iR/tQWWq6UZTlq4G4E59VvZ5eZbxOs4vXkvJqGkiH19XmjSSTdyx5OT+/LKM58811KoXZlDc9JSKZZOSFO5LP8lCERwX+zyPAtDg9ZqcIZUlLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4zwR4pHUKAhUS5+xintUy9thSja0Nlvi/b/oy/Ba1oo=;
 b=VE1WTWooFAzkvTw/qPdi/YyX3inrS3ySTAL+i9/opXdQxm+c5VybLtnEtdcjuHgcrO37Z1//wD7vT0njntEM/GaJOxZE/NTNw2QuSV10SV8GJ4b0PgCloOsrcZlthnTX24BSMfZU7DZrxlK2PzRaNQY1a35FFH7/zdm4o0fhMkQ=
Received: from MN2PR11CA0009.namprd11.prod.outlook.com (2603:10b6:208:23b::14)
 by DM6PR02MB4250.namprd02.prod.outlook.com (2603:10b6:5:9a::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.18; Fri, 6 Mar
 2020 23:47:59 +0000
Received: from BL2NAM02FT017.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:23b:cafe::d4) by MN2PR11CA0009.outlook.office365.com
 (2603:10b6:208:23b::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.15 via Frontend
 Transport; Fri, 6 Mar 2020 23:47:59 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT017.mail.protection.outlook.com (10.152.77.174) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2793.11
 via Frontend Transport; Fri, 6 Mar 2020 23:47:58 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMhC-0003QE-9r; Fri, 06 Mar 2020 15:47:58 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMh7-0002g8-6f; Fri, 06 Mar 2020 15:47:53 -0800
Received: from xsj-pvapsmtp01 (smtp3.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 026Nlks5002402; 
 Fri, 6 Mar 2020 15:47:46 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMh0-0002eg-7b; Fri, 06 Mar 2020 15:47:46 -0800
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v3 11/24] firmware: xilinx: Use APIs instead of IOCTLs
Date: Fri,  6 Mar 2020 15:47:19 -0800
Message-Id: <1583538452-1992-12-git-send-email-jolly.shah@xilinx.com>
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
 SFS:(10009020)(4636009)(346002)(376002)(396003)(136003)(39860400002)(189003)(199004)(6666004)(54906003)(26005)(70586007)(186003)(5660300002)(4326008)(7696005)(7416002)(70206006)(2906002)(356004)(316002)(478600001)(107886003)(30864003)(336012)(36756003)(9786002)(6636002)(2616005)(44832011)(8936002)(426003)(81166006)(81156014)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB4250; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 87201292-0504-4ac9-4b9a-08d7c228cd1b
X-MS-TrafficTypeDiagnostic: DM6PR02MB4250:
X-Microsoft-Antispam-PRVS: <DM6PR02MB4250D39993ACC8F7230788A3B8E30@DM6PR02MB4250.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:188;
X-Forefront-PRVS: 0334223192
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QUM7rmgnpFYKJllqoA2vXr4goP/W22Jf3z/QHSA5K9sYMG2yLcUjK0oX3NqocadjdA3cALJbrpKawwurcGaVGkkMeOPWX6lFqIU5FoK711STkjN/kRUmFGeJHMSWkcu3ei2VrVjYqTVSDDJGW18pqGZQFv9SPU1P2vvZniWiFG4xTgIqJ1plrewboSrxrP8FaqGjFFiNH8fppXz4LtdztdtvgstokiF9zx92dmEUioirpIgV65IOka+Eq3D6iiHhGkDAmBF1BcdRDk6u9HveVP6JOIpcYanQhCsW1WRQhYkT3hlODMHgRqkAXRvYcSpRLR7ppzoyAKQ7RZJ7/ck+VaBOvB/AQBqG4rkR3IgU/D9+Q+HhIMd/2varWWLGAoFSXi5WyYUYQJ4bviNEOFRlX25ULIx+1zDzhCk/MVIPZeTW4LDrGkawAwHLYj8TlAsw
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2020 23:47:58.8745 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 87201292-0504-4ac9-4b9a-08d7c228cd1b
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB4250
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_154801_738953_2D81486B 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.236.74 listed in list.dnswl.org]
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

Remove IOCTL API and use individual APIs for better readability.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/clk/zynqmp/pll.c             | 14 ++---
 drivers/firmware/xilinx/zynqmp.c     | 99 ++++++++++++++++++++++++++----------
 drivers/mmc/host/sdhci-of-arasan.c   | 33 +-----------
 include/linux/firmware/xlnx-zynqmp.h |  6 ++-
 4 files changed, 83 insertions(+), 69 deletions(-)

diff --git a/drivers/clk/zynqmp/pll.c b/drivers/clk/zynqmp/pll.c
index 73fb5bb..92f449e 100644
--- a/drivers/clk/zynqmp/pll.c
+++ b/drivers/clk/zynqmp/pll.c
@@ -50,10 +50,8 @@ static inline enum pll_mode zynqmp_pll_get_mode(struct clk_hw *hw)
 	const char *clk_name = clk_hw_get_name(hw);
 	u32 ret_payload[PAYLOAD_ARG_CNT];
 	int ret;
-	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
 
-	ret = eemi_ops->ioctl(0, IOCTL_GET_PLL_FRAC_MODE, clk_id, 0,
-			      ret_payload);
+	ret = zynqmp_pm_get_pll_frac_mode(clk_id, ret_payload);
 	if (ret)
 		pr_warn_once("%s() PLL get frac mode failed for %s, ret = %d\n",
 			     __func__, clk_name, ret);
@@ -73,14 +71,13 @@ static inline void zynqmp_pll_set_mode(struct clk_hw *hw, bool on)
 	const char *clk_name = clk_hw_get_name(hw);
 	int ret;
 	u32 mode;
-	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
 
 	if (on)
 		mode = PLL_MODE_FRAC;
 	else
 		mode = PLL_MODE_INT;
 
-	ret = eemi_ops->ioctl(0, IOCTL_SET_PLL_FRAC_MODE, clk_id, mode, NULL);
+	ret = zynqmp_pm_set_pll_frac_mode(clk_id, mode);
 	if (ret)
 		pr_warn_once("%s() PLL set frac mode failed for %s, ret = %d\n",
 			     __func__, clk_name, ret);
@@ -139,7 +136,6 @@ static unsigned long zynqmp_pll_recalc_rate(struct clk_hw *hw,
 	unsigned long rate, frac;
 	u32 ret_payload[PAYLOAD_ARG_CNT];
 	int ret;
-	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
 
 	ret = zynqmp_pm_clock_getdivider(clk_id, &fbdiv);
 	if (ret)
@@ -148,8 +144,7 @@ static unsigned long zynqmp_pll_recalc_rate(struct clk_hw *hw,
 
 	rate =  parent_rate * fbdiv;
 	if (zynqmp_pll_get_mode(hw) == PLL_MODE_FRAC) {
-		eemi_ops->ioctl(0, IOCTL_GET_PLL_FRAC_DATA, clk_id, 0,
-				ret_payload);
+		zynqmp_pm_get_pll_frac_data(clk_id, ret_payload);
 		data = ret_payload[1];
 		frac = (parent_rate * data) / FRAC_DIV;
 		rate = rate + frac;
@@ -177,7 +172,6 @@ static int zynqmp_pll_set_rate(struct clk_hw *hw, unsigned long rate,
 	u32 fbdiv;
 	long rate_div, frac, m, f;
 	int ret;
-	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
 
 	if (zynqmp_pll_get_mode(hw) == PLL_MODE_FRAC) {
 		rate_div = (rate * FRAC_DIV) / parent_rate;
@@ -194,7 +188,7 @@ static int zynqmp_pll_set_rate(struct clk_hw *hw, unsigned long rate,
 		else if (ret)
 			pr_warn_once("%s() set divider failed for %s, ret = %d\n",
 				     __func__, clk_name, ret);
-		eemi_ops->ioctl(0, IOCTL_SET_PLL_FRAC_DATA, clk_id, f, NULL);
+		zynqmp_pm_set_pll_frac_data(clk_id, f);
 
 		return rate + frac;
 	}
diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index 563c77e..3f0ee1a 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -516,45 +516,91 @@ int zynqmp_pm_clock_getparent(u32 clock_id, u32 *parent_id)
 EXPORT_SYMBOL_GPL(zynqmp_pm_clock_getparent);
 
 /**
- * zynqmp_is_valid_ioctl() - Check whether IOCTL ID is valid or not
- * @ioctl_id:	IOCTL ID
+ * zynqmp_pm_set_pll_frac_mode() - PM API for set PLL mode
  *
- * Return: 1 if IOCTL is valid else 0
+ * @clk_id:	PLL clock ID
+ * @mode:	PLL mode (PLL_MODE_FRAC/PLL_MODE_INT)
+ *
+ * This function sets PLL mode
+ *
+ * Return: Returns status, either success or error+reason
  */
-static inline int zynqmp_is_valid_ioctl(u32 ioctl_id)
+int zynqmp_pm_set_pll_frac_mode(u32 clk_id, u32 mode)
 {
-	switch (ioctl_id) {
-	case IOCTL_SET_PLL_FRAC_MODE:
-	case IOCTL_GET_PLL_FRAC_MODE:
-	case IOCTL_SET_PLL_FRAC_DATA:
-	case IOCTL_GET_PLL_FRAC_DATA:
-		return 1;
-	default:
-		return 0;
-	}
+	return zynqmp_pm_invoke_fn(PM_IOCTL, 0, IOCTL_SET_PLL_FRAC_MODE,
+				   clk_id, mode, NULL);
 }
+EXPORT_SYMBOL_GPL(zynqmp_pm_set_pll_frac_mode);
 
 /**
- * zynqmp_pm_ioctl() - PM IOCTL API for device control and configs
- * @node_id:	Node ID of the device
- * @ioctl_id:	ID of the requested IOCTL
- * @arg1:	Argument 1 to requested IOCTL call
- * @arg2:	Argument 2 to requested IOCTL call
- * @out:	Returned output value
+ * zynqmp_pm_get_pll_frac_mode() - PM API for get PLL mode
  *
- * This function calls IOCTL to firmware for device control and configuration.
+ * @clk_id:	PLL clock ID
+ * @mode:	PLL mode
+ *
+ * This function return current PLL mode
  *
  * Return: Returns status, either success or error+reason
  */
-static int zynqmp_pm_ioctl(u32 node_id, u32 ioctl_id, u32 arg1, u32 arg2,
-			   u32 *out)
+int zynqmp_pm_get_pll_frac_mode(u32 clk_id, u32 *mode)
 {
-	if (!zynqmp_is_valid_ioctl(ioctl_id))
-		return -EINVAL;
+	return zynqmp_pm_invoke_fn(PM_IOCTL, 0, IOCTL_GET_PLL_FRAC_MODE,
+				   clk_id, 0, mode);
+}
+EXPORT_SYMBOL_GPL(zynqmp_pm_get_pll_frac_mode);
+
+/**
+ * zynqmp_pm_set_pll_frac_data() - PM API for setting pll fraction data
+ *
+ * @clk_id:	PLL clock ID
+ * @data:	fraction data
+ *
+ * This function sets fraction data.
+ * It is valid for fraction mode only.
+ *
+ * Return: Returns status, either success or error+reason
+ */
+int zynqmp_pm_set_pll_frac_data(u32 clk_id, u32 data)
+{
+	return zynqmp_pm_invoke_fn(PM_IOCTL, 0, IOCTL_SET_PLL_FRAC_DATA,
+				   clk_id, data, NULL);
+}
+EXPORT_SYMBOL_GPL(zynqmp_pm_set_pll_frac_data);
 
-	return zynqmp_pm_invoke_fn(PM_IOCTL, node_id, ioctl_id,
-				   arg1, arg2, out);
+/**
+ * zynqmp_pm_get_pll_frac_data() - PM API for getting pll fraction data
+ *
+ * @clk_id:	PLL clock ID
+ * @data:	fraction data
+ *
+ * This function returns fraction data value.
+ *
+ * Return: Returns status, either success or error+reason
+ */
+int zynqmp_pm_get_pll_frac_data(u32 clk_id, u32 *data)
+{
+	return zynqmp_pm_invoke_fn(PM_IOCTL, 0, IOCTL_GET_PLL_FRAC_DATA,
+				   clk_id, 0, data);
+}
+EXPORT_SYMBOL_GPL(zynqmp_pm_get_pll_frac_data);
+
+/**
+ * zynqmp_pm_set_sd_tapdelay() -  Set tap delay for the SD device
+ *
+ * @node_id	Node ID of the device
+ * @type	Type of tap delay to set (input/output)
+ * @value	Value to set fot the tap delay
+ *
+ * This function sets input/output tap delay for the SD device.
+ *
+ * @return	Returns status, either success or error+reason
+ */
+int zynqmp_pm_set_sd_tapdelay(u32 node_id, u32 type, u32 value)
+{
+	return zynqmp_pm_invoke_fn(PM_IOCTL, node_id, IOCTL_SET_SD_TAPDELAY,
+				   type, value, NULL);
 }
+EXPORT_SYMBOL_GPL(zynqmp_pm_set_sd_tapdelay);
 
 /**
  * zynqmp_pm_reset_assert - Request setting of reset (1 - assert, 0 - release)
@@ -720,7 +766,6 @@ static int zynqmp_pm_set_requirement(const u32 node, const u32 capabilities,
 }
 
 static const struct zynqmp_eemi_ops eemi_ops = {
-	.ioctl = zynqmp_pm_ioctl,
 	.reset_assert = zynqmp_pm_reset_assert,
 	.reset_get_status = zynqmp_pm_reset_get_status,
 	.init_finalize = zynqmp_pm_init_finalize,
diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
index e49b44b..bc31f64 100644
--- a/drivers/mmc/host/sdhci-of-arasan.c
+++ b/drivers/mmc/host/sdhci-of-arasan.c
@@ -98,10 +98,6 @@ struct sdhci_arasan_clk_data {
 	void		*clk_of_data;
 };
 
-struct sdhci_arasan_zynqmp_clk_data {
-	const struct zynqmp_eemi_ops *eemi_ops;
-};
-
 /**
  * struct sdhci_arasan_data
  * @host:		Pointer to the main SDHCI host structure.
@@ -630,9 +626,6 @@ static int sdhci_zynqmp_sdcardclk_set_phase(struct clk_hw *hw, int degrees)
 	struct sdhci_arasan_data *sdhci_arasan =
 		container_of(clk_data, struct sdhci_arasan_data, clk_data);
 	struct sdhci_host *host = sdhci_arasan->host;
-	struct sdhci_arasan_zynqmp_clk_data *zynqmp_clk_data =
-		clk_data->clk_of_data;
-	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_clk_data->eemi_ops;
 	const char *clk_name = clk_hw_get_name(hw);
 	u32 node_id = !strcmp(clk_name, "clk_out_sd0") ? NODE_SD_0 : NODE_SD_1;
 	u8 tap_delay, tap_max = 0;
@@ -672,8 +665,7 @@ static int sdhci_zynqmp_sdcardclk_set_phase(struct clk_hw *hw, int degrees)
 	tap_delay = (degrees * tap_max) / 360;
 
 	/* Set the Clock Phase */
-	ret = eemi_ops->ioctl(node_id, IOCTL_SET_SD_TAPDELAY,
-			      PM_TAPDELAY_OUTPUT, tap_delay, NULL);
+	ret = zynqmp_pm_set_sd_tapdelay(node_id, PM_TAPDELAY_OUTPUT, tap_delay);
 	if (ret)
 		pr_err("Error setting Output Tap Delay\n");
 
@@ -702,9 +694,6 @@ static int sdhci_zynqmp_sampleclk_set_phase(struct clk_hw *hw, int degrees)
 	struct sdhci_arasan_data *sdhci_arasan =
 		container_of(clk_data, struct sdhci_arasan_data, clk_data);
 	struct sdhci_host *host = sdhci_arasan->host;
-	struct sdhci_arasan_zynqmp_clk_data *zynqmp_clk_data =
-		clk_data->clk_of_data;
-	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_clk_data->eemi_ops;
 	const char *clk_name = clk_hw_get_name(hw);
 	u32 node_id = !strcmp(clk_name, "clk_in_sd0") ? NODE_SD_0 : NODE_SD_1;
 	u8 tap_delay, tap_max = 0;
@@ -744,8 +733,7 @@ static int sdhci_zynqmp_sampleclk_set_phase(struct clk_hw *hw, int degrees)
 	tap_delay = (degrees * tap_max) / 360;
 
 	/* Set the Clock Phase */
-	ret = eemi_ops->ioctl(node_id, IOCTL_SET_SD_TAPDELAY,
-			      PM_TAPDELAY_INPUT, tap_delay, NULL);
+	ret = zynqmp_pm_set_sd_tapdelay(node_id, PM_TAPDELAY_INPUT, tap_delay);
 	if (ret)
 		pr_err("Error setting Input Tap Delay\n");
 
@@ -1232,23 +1220,6 @@ static int sdhci_arasan_probe(struct platform_device *pdev)
 	if (ret)
 		goto clk_disable_all;
 
-	if (of_device_is_compatible(np, "xlnx,zynqmp-8.9a")) {
-		struct sdhci_arasan_zynqmp_clk_data *zynqmp_clk_data;
-		const struct zynqmp_eemi_ops *eemi_ops;
-
-		zynqmp_clk_data = devm_kzalloc(&pdev->dev,
-					       sizeof(*zynqmp_clk_data),
-					       GFP_KERNEL);
-		eemi_ops = zynqmp_pm_get_eemi_ops();
-		if (IS_ERR(eemi_ops)) {
-			ret = PTR_ERR(eemi_ops);
-			goto unreg_clk;
-		}
-
-		zynqmp_clk_data->eemi_ops = eemi_ops;
-		sdhci_arasan->clk_data.clk_of_data = zynqmp_clk_data;
-	}
-
 	arasan_dt_parse_clk_phases(&pdev->dev, &sdhci_arasan->clk_data);
 
 	ret = mmc_of_parse(host->mmc);
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index f94cfa8..0fde06f 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -288,7 +288,6 @@ struct zynqmp_pm_query_data {
 struct zynqmp_eemi_ops {
 	int (*fpga_load)(const u64 address, const u32 size, const u32 flags);
 	int (*fpga_get_status)(u32 *value);
-	int (*ioctl)(u32 node_id, u32 ioctl_id, u32 arg1, u32 arg2, u32 *out);
 	int (*reset_assert)(const enum zynqmp_pm_reset reset,
 			    const enum zynqmp_pm_reset_action assert_flag);
 	int (*reset_get_status)(const enum zynqmp_pm_reset reset, u32 *status);
@@ -317,6 +316,11 @@ int zynqmp_pm_clock_setrate(u32 clock_id, u64 rate);
 int zynqmp_pm_clock_getrate(u32 clock_id, u64 *rate);
 int zynqmp_pm_clock_setparent(u32 clock_id, u32 parent_id);
 int zynqmp_pm_clock_getparent(u32 clock_id, u32 *parent_id);
+int zynqmp_pm_set_pll_frac_mode(u32 clk_id, u32 mode);
+int zynqmp_pm_get_pll_frac_mode(u32 clk_id, u32 *mode);
+int zynqmp_pm_set_pll_frac_data(u32 clk_id, u32 data);
+int zynqmp_pm_get_pll_frac_data(u32 clk_id, u32 *data);
+int zynqmp_pm_set_sd_tapdelay(u32 node_id, u32 type, u32 value);
 int zynqmp_pm_invoke_fn(u32 pm_api_id, u32 arg0, u32 arg1,
 			u32 arg2, u32 arg3, u32 *ret_payload);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
