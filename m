Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2DFB5B419
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 07:32:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JwF23i14+2XaKm7aX304fzJcUjDp2DWPzfx/uIrqT84=; b=mr7K0XfB+oHjFE
	omSJjaX+9zM6wVxwQ9wE5l3zrjq6i0PJPq4dL2baQVS+iML7tpAuX8CPD+rgby5v9GNULLiOqO5xC
	d1WyfDSCvf5xtT18qZDsUYjonGVd9HCp/zX/vtp3ggIa8lPexhFpMEaj6LRhmRHq/tZu124bXJPPh
	drm1I9/7776NX3UxFBwyL58rQpb2AyM3VACndNQ2u5zy7uOGPbWdPThjilIRqrwrZjKS+yrSBhCHc
	3H4kyBbttsbyKH1OUnQ80eve2FZcS8gJGyfFq1XJ9QGVLhndLLdrcrT4qRbT4QOUx/UNWR+cbkmnF
	NKBL37z3jIzBVn3oYWhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhovb-0000c4-Fz; Mon, 01 Jul 2019 05:32:35 +0000
Received: from mail-eopbgr810081.outbound.protection.outlook.com
 ([40.107.81.81] helo=NAM01-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhotH-0007LN-H1; Mon, 01 Jul 2019 05:30:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SgDItzVZ3yu8TkV+8TULcYmqkZicXfC342KqM0bl+TM=;
 b=aFRAiVqYlB9jtQgrWBazUdh1oAezb8ktIefPjruK1C5O7ZPuzTTfaofFl5YcpIHyFcNx7vnUmK3Px8QINRc1OFpT9sc5VYLFHRnMUG8Y+y4S5X5lDq8pe2Xzkh7bcHE3E1pTJ66CfTYI6+ofDXrpr0X+t2B3s+0XrVuadJ/MVXk=
Received: from DM6PR02CA0051.namprd02.prod.outlook.com (2603:10b6:5:177::28)
 by DM5PR0201MB3400.namprd02.prod.outlook.com (2603:10b6:4:76::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2032.20; Mon, 1 Jul
 2019 05:30:09 +0000
Received: from BL2NAM02FT015.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::202) by DM6PR02CA0051.outlook.office365.com
 (2603:10b6:5:177::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2032.18 via Frontend
 Transport; Mon, 1 Jul 2019 05:30:09 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT015.mail.protection.outlook.com (10.152.77.167) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2032.15
 via Frontend Transport; Mon, 1 Jul 2019 05:30:08 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1hhotE-0002ry-1j; Sun, 30 Jun 2019 22:30:08 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1hhot8-0003EO-SB; Sun, 30 Jun 2019 22:30:02 -0700
Received: from xsj-pvapsmtp01 (xsj-smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x615Tuq5023636; 
 Sun, 30 Jun 2019 22:29:56 -0700
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1hhot2-0003Ce-4R; Sun, 30 Jun 2019 22:29:56 -0700
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id 5A01612174D; Mon,  1 Jul 2019 10:59:54 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 heiko@sntech.de, michal.simek@xilinx.com, adrian.hunter@intel.com,
 christoph.muellner@theobroma-systems.com,
 philipp.tomsich@theobroma-systems.com, viresh.kumar@linaro.org,
 scott.branden@broadcom.com, ayaka@soulik.info, kernel@esmil.dk,
 tony.xie@rock-chips.com, rajan.vaja@xilinx.com, jolly.shah@xilinx.com,
 nava.manne@xilinx.com, mdf@kernel.org, manish.narani@xilinx.com,
 olof@lixom.net
Subject: [PATCH v2 09/11] firmware: xilinx: Add SDIO Tap Delay APIs
Date: Mon,  1 Jul 2019 10:59:49 +0530
Message-Id: <1561958991-21935-10-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <1561958991-21935-1-git-send-email-manish.narani@xilinx.com>
References: <1561958991-21935-1-git-send-email-manish.narani@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(396003)(39860400002)(2980300002)(189003)(199004)(336012)(4326008)(6266002)(5660300002)(426003)(52956003)(106002)(103686004)(42186006)(478600001)(72206003)(50226002)(2906002)(63266004)(51416003)(36756003)(476003)(81166006)(70206006)(126002)(8936002)(50466002)(26005)(356004)(76176011)(186003)(6666004)(7416002)(47776003)(81156014)(446003)(2616005)(8676002)(36386004)(11346002)(305945005)(14444005)(316002)(486006)(48376002)(44832011)(16586007)(70586007)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR0201MB3400; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 196119bb-2e0d-4dc7-24cf-08d6fde52e82
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:DM5PR0201MB3400; 
X-MS-TrafficTypeDiagnostic: DM5PR0201MB3400:
X-Microsoft-Antispam-PRVS: <DM5PR0201MB3400AA60D2035B877AC06E07C1F90@DM5PR0201MB3400.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4714;
X-Forefront-PRVS: 00851CA28B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: pzuOqnQULFbbPuV/goUsg1X6v4+Ex4YCTbT3JycYBDlQ1s4hI2PNsJIeZR3WxzmZBe/t31hF9CMZNAlCmQ4FP3v4khH0slfH4NkVtJNpo3ST9zIVh5jegftNUBhrTF5lq4h5W+CW62LBSg208AgaUK6O+rLOy59gQINSR5joS1lRuM+4MYx/Sm9sf/VTVBcgwyu6EATMEI4BpdPLPcxApnqe8uyaqpn5QGB1j1kUFvwH6hqs1Qroyo4guP7n1CwJBjeNqqMIx/+4hxs7rG+IHLJdDo/ZP8LMT+fOIoxTmNQzhPZJIqG8DfEQMvEBjHm1lKumQ3H3t5+WtR6EDXy7Ya6CjghcMBesyUSpXL0s6fAjCOxRMaStfIyu4YcfiNjPzqqJyiBXdI2pv3CbKiKntLqa8Sj93VsLqLM6l7Vr+kQ=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2019 05:30:08.6750 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 196119bb-2e0d-4dc7-24cf-08d6fde52e82
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR0201MB3400
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_223011_612513_3FFFE9FD 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.81.81 listed in list.dnswl.org]
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add APIs for setting SDIO Tap Delays on ZynqMP platform.

Signed-off-by: Manish Narani <manish.narani@xilinx.com>
---
 drivers/firmware/xilinx/zynqmp.c     | 48 ++++++++++++++++++++++++++++++++++++
 include/linux/firmware/xlnx-zynqmp.h | 15 ++++++++++-
 2 files changed, 62 insertions(+), 1 deletion(-)

diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index fd3d837..b81f1be 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -664,6 +664,52 @@ static int zynqmp_pm_set_requirement(const u32 node, const u32 capabilities,
 				   qos, ack, NULL);
 }
 
+/**
+ * zynqmp_pm_sdio_out_setphase() - PM call to set clock output delays for SD
+ * @device_id:		Device ID of the SD controller
+ * @tap_delay:		Tap Delay value for output clock
+ *
+ * This API function is to be used for setting the clock output delays for SD
+ * clock.
+ *
+ * Return: Returns status, either success or error+reason
+ */
+static int zynqmp_pm_sdio_out_setphase(u32 device_id, u8 tap_delay)
+{
+	u32 node_id = (!device_id) ? NODE_SD_0 : NODE_SD_1;
+	int ret;
+
+	ret = zynqmp_pm_ioctl(node_id, IOCTL_SET_SD_TAPDELAY,
+			      PM_TAPDELAY_OUTPUT, tap_delay, NULL);
+	if (ret)
+		pr_err("Error setting Output Tap Delay\n");
+
+	return ret;
+}
+
+/**
+ * zynqmp_pm_sdio_in_setphase() - PM call to set clock input delays for SD
+ * @device_id:		Device ID of the SD controller
+ * @tap_delay:		Tap Delay value for input clock
+ *
+ * This API function is to be used for setting the clock input delays for SD
+ * clock.
+ *
+ * Return: Returns status, either success or error+reason
+ */
+static int zynqmp_pm_sdio_in_setphase(u32 device_id, u8 tap_delay)
+{
+	u32 node_id = (!device_id) ? NODE_SD_0 : NODE_SD_1;
+	int ret;
+
+	ret = zynqmp_pm_ioctl(node_id, IOCTL_SET_SD_TAPDELAY,
+			      PM_TAPDELAY_INPUT, tap_delay, NULL);
+	if (ret)
+		pr_err("Error setting Input Tap Delay\n");
+
+	return ret;
+}
+
 static const struct zynqmp_eemi_ops eemi_ops = {
 	.get_api_version = zynqmp_pm_get_api_version,
 	.get_chipid = zynqmp_pm_get_chipid,
@@ -687,6 +733,8 @@ static const struct zynqmp_eemi_ops eemi_ops = {
 	.set_requirement = zynqmp_pm_set_requirement,
 	.fpga_load = zynqmp_pm_fpga_load,
 	.fpga_get_status = zynqmp_pm_fpga_get_status,
+	.sdio_out_setphase = zynqmp_pm_sdio_out_setphase,
+	.sdio_in_setphase = zynqmp_pm_sdio_in_setphase,
 };
 
 /**
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index 1262ea6..d9b53e5 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -92,7 +92,8 @@ enum pm_ret_status {
 };
 
 enum pm_ioctl_id {
-	IOCTL_SET_PLL_FRAC_MODE = 8,
+	IOCTL_SET_SD_TAPDELAY = 7,
+	IOCTL_SET_PLL_FRAC_MODE,
 	IOCTL_GET_PLL_FRAC_MODE,
 	IOCTL_SET_PLL_FRAC_DATA,
 	IOCTL_GET_PLL_FRAC_DATA,
@@ -251,6 +252,16 @@ enum zynqmp_pm_request_ack {
 	ZYNQMP_PM_REQUEST_ACK_NON_BLOCKING,
 };
 
+enum pm_node_id {
+	NODE_SD_0 = 39,
+	NODE_SD_1,
+};
+
+enum tap_delay_type {
+	PM_TAPDELAY_INPUT = 0,
+	PM_TAPDELAY_OUTPUT,
+};
+
 /**
  * struct zynqmp_pm_query_data - PM query data
  * @qid:	query ID
@@ -295,6 +306,8 @@ struct zynqmp_eemi_ops {
 			       const u32 capabilities,
 			       const u32 qos,
 			       const enum zynqmp_pm_request_ack ack);
+	int (*sdio_out_setphase)(u32 device_id, u8 tap_delay);
+	int (*sdio_in_setphase)(u32 device_id, u8 tap_delay);
 };
 
 int zynqmp_pm_invoke_fn(u32 pm_api_id, u32 arg0, u32 arg1,
-- 
2.1.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
