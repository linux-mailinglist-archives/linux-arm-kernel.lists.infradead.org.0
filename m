Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC55989AEB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 12:08:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/CGYv5b6Ok2hkJKvpd3pAoKDpev2g7WG8zFqPbm+cf8=; b=ZPDQmBD19BC77b
	X2fjHAnEw1d3r6A2GdbsMwKtMiQO9PP0x+Xvbav4N7H8egkdi60uUY1bbWJR/J4+5QyECVLhruGys
	8FzL+X4a5hTt/TX0584F+Ln4yicNwhxx8PzyxRP8lKD8881TknJeR37HzXddS4GUmj8DOmVdUA/dr
	hUdn+K0sq6L8lyZwTcGWDifFKPQkCad0sqn8Nh5SMhGQ+l6kCJpeua337EorHh/axTAqF8bAmDlyh
	Q07X8wK3EViygQ06pvfUlCoN7BvewWTWmcUlCjBOgffAg9Hsw3zRNnVWkSA4PqmlRO0xU4SDVda1v
	jsnUPNk8a5dLgqDYAD2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx7Ff-0006WD-Ew; Mon, 12 Aug 2019 10:08:31 +0000
Received: from mail-eopbgr740051.outbound.protection.outlook.com
 ([40.107.74.51] helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx7EY-0005cv-Qp
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 10:07:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eS8IJR/PneXuTKwgUHnQ8oYTDdsxut89qxHKYdzeCrXGTU+Au12UWLscd91tCHg3IPo5mbKTsOhmYLTnhV7eRR1ccl+R1A0B56O/oMkuPvvF223CUb84+HzWo0ILh4VzeFUvG7WXzxoVTI9X8Tfqaxpm7sJphM5NzjD7nVW0C1Zsp1wqQyE8whmudgPbsVhgoP/eqpkmlf0agxS/GHksHlpESVXx381ROnXEt4sRDdwvR5wWBaDfnYvcupvjo2180fK2L08ifN5B8Okx2KhRcD/0kCH6Be0FbSVgAH8W9XNjk9nZu/E45CBcFAdzXkbkaA2xwfgdI70GvwkjBehUhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4m+yLKEkI4oPVpayp+PbSWXKsIToVkpx2IkvRadQkbU=;
 b=P5y0Y2J0Gk0bmA3RcOwLb4VKMK9zgVCjhTj25FGRj0L/lB16egooLjH8yVFdfqdcy9X+p9SIrr6FS110b25GbnTarYdiiB7VSJzgkmghFNdTH6BjMwGM28O+ezj8b6qLonF6OR7FUlqq5KE9dbVmpZYsHlosdvvUBE7nUZPQzyLqryHk9RJSfg5r88MgmFvmLYmvKNR3f+JyNqgDBSz9kzM+be2B8Y9F2j45QEPjHUJHcZOKEXRBhnz2FrPvc7Fvo4ojSzf3BIt7l0WtA0s468vMoSlGj/cEgIyJEPCO2lkPgHeqb6vAXOtZj/MdJMEAsZW5qPYFvZgk5KDVEp2uMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4m+yLKEkI4oPVpayp+PbSWXKsIToVkpx2IkvRadQkbU=;
 b=nuOdWvEasu2D4ZZNT0fZVnx/Tyum6gmLf9zLt6EjLcQZg/dK2h4gXfMQYelz9MaxIPuQ8Neh/M2un0m9Th76U98Al9ImCWm6du33cWTl+GooJ1gHBvb+sx9A698a3Y5t/x6iyeHS3CWOxAMcNADGHbviO4zuV6OfsS85TyApEqE=
Received: from MWHPR02CA0017.namprd02.prod.outlook.com (2603:10b6:300:4b::27)
 by SN6PR02MB4829.namprd02.prod.outlook.com (2603:10b6:805:98::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.20; Mon, 12 Aug
 2019 10:07:20 +0000
Received: from CY1NAM02FT030.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::207) by MWHPR02CA0017.outlook.office365.com
 (2603:10b6:300:4b::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.14 via Frontend
 Transport; Mon, 12 Aug 2019 10:07:19 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT030.mail.protection.outlook.com (10.152.75.163) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2157.15
 via Frontend Transport; Mon, 12 Aug 2019 10:07:19 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <appana.durga.rao@xilinx.com>)
 id 1hx7EU-0002PM-RG; Mon, 12 Aug 2019 03:07:18 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <appana.durga.rao@xilinx.com>)
 id 1hx7EP-0004b3-Nb; Mon, 12 Aug 2019 03:07:13 -0700
Received: from xsj-pvapsmtp01 (smtp-fallback.xilinx.com [149.199.38.66] (may
 be forged))
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x7CA75ju003860; 
 Mon, 12 Aug 2019 03:07:05 -0700
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <appana.durga.rao@xilinx.com>)
 id 1hx7EG-0004OP-H8; Mon, 12 Aug 2019 03:07:04 -0700
From: Appana Durga Kedareswara rao <appana.durga.rao@xilinx.com>
To: wg@grandegger.com, mkl@pengutronix.de, davem@davemloft.net,
 michal.simek@xilinx.com
Subject: [PATCH v2 5/5] can: xilinx_can: Fix the data phase btr1 calculation
Date: Mon, 12 Aug 2019 15:36:46 +0530
Message-Id: <1565604406-4920-6-git-send-email-appana.durga.rao@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565604406-4920-1-git-send-email-appana.durga.rao@xilinx.com>
References: <1565604406-4920-1-git-send-email-appana.durga.rao@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(396003)(136003)(376002)(2980300002)(199004)(189003)(106002)(305945005)(70206006)(2616005)(476003)(36386004)(336012)(9786002)(11346002)(5660300002)(486006)(70586007)(8676002)(6666004)(356004)(81166006)(426003)(81156014)(4326008)(446003)(54906003)(126002)(7696005)(76176011)(107886003)(186003)(51416003)(2906002)(26005)(50466002)(6636002)(16586007)(8936002)(47776003)(63266004)(48376002)(50226002)(14444005)(316002)(478600001)(36756003)(42866002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB4829; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b8274914-a311-47ff-bc5f-08d71f0cdc9f
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(4709080)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328);
 SRVR:SN6PR02MB4829; 
X-MS-TrafficTypeDiagnostic: SN6PR02MB4829:
X-Microsoft-Antispam-PRVS: <SN6PR02MB4829B16D1ADC1DDF7BDB3433DCD30@SN6PR02MB4829.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-Forefront-PRVS: 012792EC17
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: NNEqc5HcNGfOm6Wi23MhfTNo9TaC5Rp188cmSfOImpEzSIiU5Gule7aD39v+8A5KrCfZWIpFOv8kxFjq0JJLuy4J9LTiQNvQkNfzOJCX0FzQWMPfpdo5j0ZJTnI5UJ8EnnZQbn7+ZrF4XlLIgcSe90JJeAqWfwxXsZ1w37L87WGsX8waP3ez8tORB8TWb4klF+zTuWpNPB54pfiNcexhofu5kY+LYLOvomACrQLQGlCzWKz0KfCswFH3wAZWUVuk8BVQZzZeOqUeoixex2nz9YY4DPr3vKKHOPj5cXBfEQFjItL86XPBXaQpX79MdziLWV9sd4Efn67bKFmRP3PDcysuH+Ldzk+uPQH1AMozj15KCmoERch1NUdOBudh3kw0lYBECaFADT8IJOJ1g/12T3i/8yK9j7hN6PJxmVeuFto=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Aug 2019 10:07:19.3792 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b8274914-a311-47ff-bc5f-08d71f0cdc9f
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB4829
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_030723_049262_5E6F4553 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.74.51 listed in list.dnswl.org]
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
Cc: Srinivas Neeli <srinivas.neeli@xilinx.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-can@vger.kernel.org,
 Appana Durga Kedareswara rao <appana.durga.rao@xilinx.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Srinivas Neeli <srinivas.neeli@xilinx.com>

While calculating bitrate for the data phase, the driver is using phase
segment 1 of the arbitration phase instead of the data phase.

Fixes: c223da6 ("can: xilinx_can: Add support for CANFD FD frames")
Signed-off-by: Appana Durga Kedareswara rao <appana.durga.rao@xilinx.com>
Signed-off-by: Srinivas Neeli <srinivas.neeli@xilinx.com>
Acked-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---
 drivers/net/can/xilinx_can.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/can/xilinx_can.c b/drivers/net/can/xilinx_can.c
index 4cb8c1c9..ab26691 100644
--- a/drivers/net/can/xilinx_can.c
+++ b/drivers/net/can/xilinx_can.c
@@ -425,7 +425,7 @@ static int xcan_set_bittiming(struct net_device *ndev)
 		btr0 = dbt->brp - 1;
 
 		/* Setting Time Segment 1 in BTR Register */
-		btr1 = dbt->prop_seg + bt->phase_seg1 - 1;
+		btr1 = dbt->prop_seg + dbt->phase_seg1 - 1;
 
 		/* Setting Time Segment 2 in BTR Register */
 		btr1 |= (dbt->phase_seg2 - 1) << priv->devtype.btr_ts2_shift;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
