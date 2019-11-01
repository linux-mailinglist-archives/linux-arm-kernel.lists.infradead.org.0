Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E28EBD9B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 07:08:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YgF4PrfcYDjiPY7Ayn4RZOuT2iGv8qLTGDAUraEVm68=; b=tXsHJ0XlqYCbXL
	KrgHVTVmB+mLStjtprWn56g3wHZgY2isHaUC8xBQIQwfDCSk85FQ/XZXOXh+IaF4F84trbWGJQM+O
	LS+NFgoC5zbNFhEnqth+D7W5QdE3SIt/1r6uAolH4z1D8I4z4tRroj5n36LrWNkA6ZbSunpOAPvX+
	hOHiGgta3gWd74t64vo7DLw2tS5GhBn30CFLDzqKx1LfW1ddwNHevHyznQdZzPsCbyWxyq49qdgAH
	+ktwAyW1VRhK07sIkRmGoK+no4neUGOw0PyP62Sj9wMaBF78EkgzDoIwYd1CuFWlJB8nDVJUMy8wc
	f4LBGVpvRUsCDILApHew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQQ76-0003m7-OS; Fri, 01 Nov 2019 06:08:48 +0000
Received: from mail-eopbgr730041.outbound.protection.outlook.com
 ([40.107.73.41] helo=NAM05-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQQ4d-0001wS-ER
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 06:06:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YwEMGhosXuDDdgGvh3iDWfdzvQsiVYfNeBio/2rvIK5QnLId28tlgkbJ75djaj54Y7wuoARJwxrGdvVQVREJ5NakMZRprYWNvIvTgee82PO5zooYDdEYrHk13IwmyJnTTOj32YfcxFqu6ormS6gXEwXoah+c9QXzwW6V0sdLyrYXTTSCzIKjyN2LDe9m/pPbmTMIXa1sD4jdEL6aPA79ga0r/oBcnoDC3bV4Z86C5vqwWFY+7+GSGEI3qqGl8zVmHnlGvCJ8lsLT0p/TETDyuBk6AsOHWQPbxvvgL2U3QGHPfNGcnt7apKuDQ1xIYPI6jJYDcFi25KgZPZ5sFR+CMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Elx1S6x5O1qEFyNTFHBUXfMn9vSEuSXCQ8O8cIrSquA=;
 b=kMhavVKrWkdziizkO/DoU2ClnLEJpq3TA4wuHLNUz3uwrq9K1oz8iLmUN7f9murx7HEhhkdsRvtsFnZYLSDTQ/94TRZft+YlABCu2z6EnLLTlDz0JD2sfO2YdR6DML1Sh8VWxpru7iDyYUYcXqwoh+fJcs3cpZoNgQhEfO1NEpI6RlNKjFVmDWn4tsswx2xL5kWx1qZnXlIIzI7xceR03pxN9x61A6qURwX12GNc48caziswU1HJODHJCosYrHPIgoJU9s2vd2vNm2ccuuqpsBElJS1PXxF4C+SLdcmUG83eTHXV8aNFykc6Vr2iPf1EmWlyvtzkX4b50wB63VO+sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Elx1S6x5O1qEFyNTFHBUXfMn9vSEuSXCQ8O8cIrSquA=;
 b=lje32X09WbXf0/XxeLf2Ll/KtwVKt9ghnkSh08ccQPkTresYYUb8AvXyELeCkG/s2f54gRhwuT526gSc/JbZQyCbOKs88zuZTBI0aiFvMkwNz2IHH6PjXmCw1PJhSiDooC2Lmde9izvnvWuFSuSTCZ4CXTivm5dWHQcLYFlbzSQ=
Received: from BN7PR02CA0020.namprd02.prod.outlook.com (2603:10b6:408:20::33)
 by BN6PR02MB2771.namprd02.prod.outlook.com (2603:10b6:404:fd::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2387.24; Fri, 1 Nov
 2019 06:06:10 +0000
Received: from BL2NAM02FT008.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::209) by BN7PR02CA0020.outlook.office365.com
 (2603:10b6:408:20::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2408.20 via Frontend
 Transport; Fri, 1 Nov 2019 06:06:10 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT008.mail.protection.outlook.com (10.152.76.162) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2387.20
 via Frontend Transport; Fri, 1 Nov 2019 06:06:10 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iQQ4X-0005mY-QW; Thu, 31 Oct 2019 23:06:09 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iQQ4S-0007dN-M3; Thu, 31 Oct 2019 23:06:04 -0700
Received: from xsj-pvapsmtp01 (mailman.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xA165x4Q010457; 
 Thu, 31 Oct 2019 23:05:59 -0700
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1iQQ4M-0007aM-Pn; Thu, 31 Oct 2019 23:05:59 -0700
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id 086AA121387; Fri,  1 Nov 2019 11:35:57 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 adrian.hunter@intel.com, michal.simek@xilinx.com,
 jolly.shah@xilinx.com, nava.manne@xilinx.com, rajan.vaja@xilinx.com,
 manish.narani@xilinx.com
Subject: [PATCH v5 6/8] firmware: xilinx: Add SDIO Tap Delay nodes
Date: Fri,  1 Nov 2019 11:35:51 +0530
Message-Id: <1572588353-110682-7-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <1572588353-110682-1-git-send-email-manish.narani@xilinx.com>
References: <1572588353-110682-1-git-send-email-manish.narani@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39850400004)(346002)(136003)(396003)(189003)(199004)(51416003)(16586007)(478600001)(2616005)(5660300002)(14444005)(6666004)(356004)(107886003)(186003)(4326008)(48376002)(47776003)(42186006)(70206006)(316002)(2906002)(11346002)(36756003)(70586007)(50466002)(446003)(6266002)(4744005)(476003)(76176011)(36386004)(126002)(26005)(50226002)(103686004)(8676002)(106002)(305945005)(486006)(426003)(336012)(44832011)(8936002)(81166006)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR02MB2771; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 69521a8c-f199-42b6-2653-08d75e9197c9
X-MS-TrafficTypeDiagnostic: BN6PR02MB2771:
X-Microsoft-Antispam-PRVS: <BN6PR02MB2771AECA5529C3A83BB20641C1620@BN6PR02MB2771.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:580;
X-Forefront-PRVS: 020877E0CB
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wrs7xNPy3dVbAwSJpBfqJBimh22qK+eSWAkTJbzvnBPp+vufrJW0bNCbT0QR0bZ3JxswYCVcdPPqoYFgyPxA1Ic0K24s4z76R3Ce3hQE7SLfKh60meVg8Y1tI0Ma8gx1TWq8aL+3rua/7GEHcTZTREWAS89v2M2fQR8uYKhtGT7N+uOd7o9itEbA/RlqoVnVdTeIb0okUT/2/0UNW2sWQCSQnTyp7ZnGl1Ghd+8j53+ZNp5EwyIIU9qRwBX0JfhidRjiVtNaLIRO2kLBexBlODpCFVCIC6ssagAt8BWOq/iIsQTUkoiCfQ4by1SCYE6kQ/MocnCG2/VFcQYYy7snKdF6Ek4Bq1l8qRDcAt0li6excsrOqUwGBAKyVfrb0bpmm4UhUJ4Qcln0loGS6mZeEnxc2OJUDiIvyvnwjMP2HOh6MRWu0zyNmaT2nIujKfit
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Nov 2019 06:06:10.4204 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 69521a8c-f199-42b6-2653-08d75e9197c9
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR02MB2771
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_230615_518501_53590C0C 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.73.41 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 git@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add tap delay nodes for setting SDIO Tap Delays on ZynqMP platform.

Signed-off-by: Manish Narani <manish.narani@xilinx.com>
---
 include/linux/firmware/xlnx-zynqmp.h | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index 778abbbc7d94..df366f1a4cb4 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -91,7 +91,8 @@ enum pm_ret_status {
 };
 
 enum pm_ioctl_id {
-	IOCTL_SET_PLL_FRAC_MODE = 8,
+	IOCTL_SET_SD_TAPDELAY = 7,
+	IOCTL_SET_PLL_FRAC_MODE,
 	IOCTL_GET_PLL_FRAC_MODE,
 	IOCTL_SET_PLL_FRAC_DATA,
 	IOCTL_GET_PLL_FRAC_DATA,
@@ -250,6 +251,16 @@ enum zynqmp_pm_request_ack {
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
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
