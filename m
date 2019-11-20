Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE66610348E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 07:48:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YgF4PrfcYDjiPY7Ayn4RZOuT2iGv8qLTGDAUraEVm68=; b=pMOnlLdcTTlzu5
	zoyLuea5EZRbbhND0YvkHyYB9xUuZGalxwMZhlj50KRhV9OQRO75jdu++ArCx+/oT/a0lAhuyhld/
	GfipeuZa3VwxjodFC6b9EaUHOzSs/SWxEQlUQ75Krt4WOW3tLcr/sJnnK1Ms7ITGjsEvyqZpOjHjH
	xOF1+mRdY/nYrNF73XvaNX1wvNai10YyuUyukeEeAxx2IxZjwLfFk36BAbHZajbNyDNFfhJqTQdAU
	2xjQfoR8CeYhB4qlJGRlzLXiYCqCm/3BuiTedJsOIZk/47/U0ckgOc8CsVDIoqlRAzyocKAtACuu2
	lLKbMuVK/Fra1QxgSkkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXJnN-000756-6o; Wed, 20 Nov 2019 06:48:57 +0000
Received: from mail-eopbgr740040.outbound.protection.outlook.com
 ([40.107.74.40] helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXJmK-0006Hb-HH
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 06:47:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W/9rEhswiD9zoJJkrjVmD5IpQan4w+zEatNLQg5EQYYvlye6fzoRPlsa7WF8TRqiW0QUaEyIKalp+iTaWfjeLP3jB5UbiDU9Kcrw+2WljRtgtncO+UqNMM9Ixow+0VKnw5yu+MqkSmPhbC4v5ITH/SEHUG9mY7Sls6iqTH3dqDi+A5or748QcedTCRTz3ocSGQsqmHE0l6kFodtECGKDfB9fyy+XuXlcFKiQ7PfoNbeI+n5Qh8QbFMbTSmfvLLmOM0dQ6v9XBC2F51gER1IOypWdTikSEl3R/ikpmJfIsBExhWF0Nrwzu4PeefkDdF6PpEcHIjyFfgXrVJeNzX0AfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Elx1S6x5O1qEFyNTFHBUXfMn9vSEuSXCQ8O8cIrSquA=;
 b=MqUbaEwQLajm2DXpv+0tmkx+jQJTbW3XjlkNtlS9rgeE2LX8yA3btvZfoaZUHpjjtxNj5WxW3z4lXhmjoZ3KOfBF8lGn2jBvj/tC6XCZ4CP7FmYC1IQ7vItME4N8HGmun0EKVBLeNAMkc7GqhiZmC418EIBd6hTVoXwN7dAe3EZnpMzMuJG3QA7kMVBxdiMoAqH/bP0vyzVQ1ShVg8Usy+O/MtKEywa2/GFJdeKBAvE4pDfRsIiqDC6FaKNRNYLtaiHnAGFCGrUJk8z/WwDePWDIPyUc7gg1slOTuf2wdgVRdcfDTP21RO+ZyVqxWOCcQR0c1g0euYwi/0y3ALPTmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Elx1S6x5O1qEFyNTFHBUXfMn9vSEuSXCQ8O8cIrSquA=;
 b=XUBkPkumJU7JikuAtYQTujlYUmusn/8TAc6S4XwVQ1RLEdZNsBt99yKIIAS/VSnovyL6nYWQ5/iTUaWzlQLWMWSeOsDyc6vKxdpUM/Gt4kQwV8klwg2Dy7V64K/nqGgHimFB8S9nSiPpg2LL9ICfUt7bB6WI6o1avpZJy9lrbQU=
Received: from DM6PR02CA0137.namprd02.prod.outlook.com (2603:10b6:5:1b4::39)
 by DM6PR02MB5019.namprd02.prod.outlook.com (2603:10b6:5:4b::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2451.23; Wed, 20 Nov
 2019 06:47:48 +0000
Received: from BL2NAM02FT028.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::208) by DM6PR02CA0137.outlook.office365.com
 (2603:10b6:5:1b4::39) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2474.16 via Frontend
 Transport; Wed, 20 Nov 2019 06:47:48 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT028.mail.protection.outlook.com (10.152.77.165) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2474.17
 via Frontend Transport; Wed, 20 Nov 2019 06:47:48 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iXJmF-00061B-P6; Tue, 19 Nov 2019 22:47:47 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iXJmA-00049o-LQ; Tue, 19 Nov 2019 22:47:42 -0800
Received: from xsj-pvapsmtp01 (xsj-mail.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xAK6lbph001809; 
 Tue, 19 Nov 2019 22:47:38 -0800
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1iXJm5-00049E-Mp; Tue, 19 Nov 2019 22:47:37 -0800
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id F01B7121390; Wed, 20 Nov 2019 12:17:35 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 adrian.hunter@intel.com, michal.simek@xilinx.com,
 jolly.shah@xilinx.com, rajan.vaja@xilinx.com, nava.manne@xilinx.com,
 mdf@kernel.org, manish.narani@xilinx.com
Subject: [PATCH v6 6/8] firmware: xilinx: Add SDIO Tap Delay nodes
Date: Wed, 20 Nov 2019 12:17:27 +0530
Message-Id: <1574232449-13570-7-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <1574232449-13570-1-git-send-email-manish.narani@xilinx.com>
References: <1574232449-13570-1-git-send-email-manish.narani@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(396003)(39860400002)(376002)(189003)(199004)(106002)(316002)(16586007)(42186006)(4326008)(47776003)(103686004)(478600001)(36756003)(36386004)(48376002)(50466002)(107886003)(6266002)(305945005)(4744005)(2906002)(50226002)(8936002)(8676002)(81166006)(81156014)(26005)(51416003)(356004)(6666004)(2616005)(486006)(126002)(476003)(44832011)(186003)(11346002)(446003)(426003)(336012)(70206006)(76176011)(70586007)(5660300002)(14444005)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB5019; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 43470f5e-08cc-4f1b-b1f0-08d76d858e88
X-MS-TrafficTypeDiagnostic: DM6PR02MB5019:
X-Microsoft-Antispam-PRVS: <DM6PR02MB5019D179452B38E544AA717EC14F0@DM6PR02MB5019.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:580;
X-Forefront-PRVS: 02272225C5
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0kaHxiVXQnX/iJ3BQf8bvg4wW1fp3zIWGRLcIVUq84l8tMs4PtTrkw2Ui95xg1e+1Goy4VUDX5gP5XnwKsS4CFSzSEU/hSL8ugWXrxx7CL+efSxeWXK3I4SO8Qpj0M0tqjltOSPp8hVBgavRyPy+baLSosNDetvvJ8bhrHTT8WBQTGvY1s3rL7EcX2AZ0moIdtcoqPoXBfcqGdJ8UD5K5MBaTzXWNGFZ7sPXDdEJjO3AG5izK115ahpg/xpYnVyqCQwZtHpafkHRzHo/ls0/mmrTQ4/zH13uoKsi/gEX7fFmieHlat+FzTkRRvx3a6oN5/z5a555by7M6B4keByUYn4S7SeCoMzGW7pxBLI432K0BWbTb5tIY2Yybgr48PF8GeUCr83LIjnZnwyjHsjk13S7/X89bpYsrl34QwfQZvW49at0KjKtH5DZg/gZ3roR
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2019 06:47:48.3854 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 43470f5e-08cc-4f1b-b1f0-08d76d858e88
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB5019
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_224752_571443_C88C315E 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.74.40 listed in list.dnswl.org]
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
