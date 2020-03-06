Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F7917C8EB
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 00:49:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eDicuMsz7Bo7RKuWVh38+6JubNMnmf1PMH+Q9iuTRRc=; b=t13yFcZGx1vGCm
	cmtLwLfbfkEfYTl/uWMim1etDqU/MaVxJsEHLtY6BBqKkGqVp6idsIC3FLcj5BW0WaokFqVY3NyQL
	E69yP5OU6KRbSImUI+0oYg2yYCVqJT4ha6eZI2RGNJD1f+X+hSuMlYwE2nTrcl02bwDXvHoLDsgzU
	byRtSl0YTbIhq/chr7JmK394gkrTC0oY6FHshOqLi8MkwJooJIIyO9LR7Ada3c/lwQrQwdKJMk0hg
	9QvKJ+KbltqoHNf40q5W/4CS7aqOqG9djFYpHpWQ0dwPKoLPewFE9ZI9OHtOi+q8RN2vZmzLGvXOa
	bGgbRtrfnpXH3AngsnFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAMi5-0006Wv-QC; Fri, 06 Mar 2020 23:48:53 +0000
Received: from mail-co1nam11on2056.outbound.protection.outlook.com
 ([40.107.220.56] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAMhE-0005yY-BR
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 23:48:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J85sJD1Sx2FY9dN+nB4IqrfGC3eursBMKNyjXs8RFKqx7zR8gw5VJ8iLVolpt+b1Qd3VWVZYuySMMJddKXcPMOZ+Kot5W1Vk759cBK5uog8ih3TC69pJ9e3lREUOzBzvrXeJYDdPeZREeWqahVn7YncWnETW5G01CIbaPt0pxjopNGBUga07H5E8L3jhune3KFg2zVv1aFXWxU1xp7lVHfCEB9NxonUXvx5bclPM2hiYJqKgUELE4COd6lh9F1oaQR745R6YU9iP0IDFIJm/yjuQrX1nAbg/ANpy8CDHDCVu4uogI+YguukUQn9eWLoSVWYs7haC5xw4D5ITodBHNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uENwvfV2/UpidtjU6I7TtHl0TSaWXD8qePM58rgmMmY=;
 b=daSeBSmc80p7ii9fpv7qe2dSlJhnAY0hsjLNWbcsokHKQGcgWeQA1h/LMfwGQEKPFuewn/v3DioHLjxjbw37Q//sKtQakgAfXNAd93j7bcXFb/wVHqImBWnnRhdBCtBWahnfKdoEEHHoE9uV4vBIDdRBkvBgXnw5FWsoNMeHqe+5kj8IyI0BRsJ3EK87iWo9tTaECek7wNIotroaVS8m+MdEsLpQvrh8p8eJjtxhag4IzRnL/P2tKHoYxb+c/T8meLnONuIdHMZfik5Yhpycs0xFfnIMfY930nVylM3jL4Ps3rx2facmHIHUJ4l+d1Ik4zIK41ZN1p77lJPJ+ednQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uENwvfV2/UpidtjU6I7TtHl0TSaWXD8qePM58rgmMmY=;
 b=m3R2Z+/f1GQGNRmuBa/Kiym3kYieyKe4YgpN4uPpQ0ftjrE/LKzkceZFJwwEQApkw6oRhF327XseSSmX6/LLlB5yL9KDgFvlDH+4WcRoRRWOlfXJVF0XeppeEdkbU51uVSxCIS4hyVSeiFXZWOChKLhnoTV1Wx4u0iNf8ZUpD1o=
Received: from MN2PR06CA0025.namprd06.prod.outlook.com (2603:10b6:208:23d::30)
 by DM6PR02MB4665.namprd02.prod.outlook.com (2603:10b6:5:1a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.18; Fri, 6 Mar
 2020 23:47:58 +0000
Received: from BL2NAM02FT042.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:23d:cafe::a1) by MN2PR06CA0025.outlook.office365.com
 (2603:10b6:208:23d::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.16 via Frontend
 Transport; Fri, 6 Mar 2020 23:47:58 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT042.mail.protection.outlook.com (10.152.76.193) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2793.11
 via Frontend Transport; Fri, 6 Mar 2020 23:47:58 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMhB-0003Q9-SR; Fri, 06 Mar 2020 15:47:57 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMh6-0002g8-PL; Fri, 06 Mar 2020 15:47:52 -0800
Received: from xsj-pvapsmtp01 (smtp-fallback.xilinx.com [149.199.38.66] (may
 be forged))
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 026Nlkkx002400; 
 Fri, 6 Mar 2020 15:47:46 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMh0-0002eg-3T; Fri, 06 Mar 2020 15:47:46 -0800
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v3 09/24] firmware: xilinx: Remove eemi ops for clock set/get
 rate
Date: Fri,  6 Mar 2020 15:47:17 -0800
Message-Id: <1583538452-1992-10-git-send-email-jolly.shah@xilinx.com>
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
 SFS:(10009020)(4636009)(39860400002)(346002)(136003)(396003)(376002)(189003)(199004)(8676002)(356004)(107886003)(54906003)(6666004)(5660300002)(81156014)(7696005)(4326008)(336012)(8936002)(81166006)(2616005)(426003)(186003)(478600001)(36756003)(70586007)(2906002)(6636002)(70206006)(9786002)(26005)(316002)(44832011)(7416002)(42866002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB4665; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 78415135-1a08-4ce7-e6a5-08d7c228ccce
X-MS-TrafficTypeDiagnostic: DM6PR02MB4665:
X-Microsoft-Antispam-PRVS: <DM6PR02MB4665F23A1D1BD0C1A1906AFEB8E30@DM6PR02MB4665.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:541;
X-Forefront-PRVS: 0334223192
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fHCoCMipM1wxSE0/RQD3oHyHPWFgaHIZBDNDmVnXxD23vSQHOGqrjKtRZdhZECjXMBGK7Z0V0n09+MqMziHij5XfPrGSFnVBvM7VL2dO3FDfhb3xVCfxIWUmmX9Os9g/4vh458gkesvui9ZoFhAqSAoQP67ABXIg7KLnsstKJDk4lbDDDl3bzeJNC4GkY4XBFg3fRc1kjXHOP9CvLp1jbTHCZNo3nH3513pgAGz82eMzyvRt4TrqAZxtUyU8WqzsRtAf4zzUb+nStD8SLaFlpP2eHKmBeDdHXluopOpA5ztTBLxEXgo21n0fnK4YjySDDqqUAoMgPw8MFy8DWZg6v2lOeFs9C0goqnfr/Fmtihx+Rr1zVAU0NB0yQE7IDurAHb+tbs39SRfUvvSisogBt93A9lqzvR+mecwvXUKbHxA4Z5qMYOmZRB/7WVawNpe8xEfCK9NfQxlWNo+kaxIBcM6EWY05pACTxAC4E2p6BUsEL+jXoAAMg5ZRA/nbqd3j
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2020 23:47:58.4414 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 78415135-1a08-4ce7-e6a5-08d7c228ccce
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB4665
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_154800_396111_E8D19F4E 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.56 listed in list.dnswl.org]
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

Use direct function call instead of eemi ops for clock set/get rate.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/firmware/xilinx/zynqmp.c     | 8 ++++----
 include/linux/firmware/xlnx-zynqmp.h | 4 ++--
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index 2fc6e17..60a5675 100644
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
@@ -716,8 +718,6 @@ static int zynqmp_pm_set_requirement(const u32 node, const u32 capabilities,
 }
 
 static const struct zynqmp_eemi_ops eemi_ops = {
-	.clock_setrate = zynqmp_pm_clock_setrate,
-	.clock_getrate = zynqmp_pm_clock_getrate,
 	.clock_setparent = zynqmp_pm_clock_setparent,
 	.clock_getparent = zynqmp_pm_clock_getparent,
 	.ioctl = zynqmp_pm_ioctl,
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index b55232e..42dbdf3 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -288,8 +288,6 @@ struct zynqmp_pm_query_data {
 struct zynqmp_eemi_ops {
 	int (*fpga_load)(const u64 address, const u32 size, const u32 flags);
 	int (*fpga_get_status)(u32 *value);
-	int (*clock_setrate)(u32 clock_id, u64 rate);
-	int (*clock_getrate)(u32 clock_id, u64 *rate);
 	int (*clock_setparent)(u32 clock_id, u32 parent_id);
 	int (*clock_getparent)(u32 clock_id, u32 *parent_id);
 	int (*ioctl)(u32 node_id, u32 ioctl_id, u32 arg1, u32 arg2, u32 *out);
@@ -317,6 +315,8 @@ int zynqmp_pm_clock_disable(u32 clock_id);
 int zynqmp_pm_clock_getstate(u32 clock_id, u32 *state);
 int zynqmp_pm_clock_setdivider(u32 clock_id, u32 divider);
 int zynqmp_pm_clock_getdivider(u32 clock_id, u32 *divider);
+int zynqmp_pm_clock_setrate(u32 clock_id, u64 rate);
+int zynqmp_pm_clock_getrate(u32 clock_id, u64 *rate);
 int zynqmp_pm_invoke_fn(u32 pm_api_id, u32 arg0, u32 arg1,
 			u32 arg2, u32 arg3, u32 *ret_payload);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
