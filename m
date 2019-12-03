Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F75110FC3F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 12:12:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7H1z3qqbsv7CDwrKwwcyp4G1XVsjUf/NOvs4xlljFO8=; b=TKdTb2pMptMg/p
	A6+0//xWLGX8T3RiHA4ru020+1uCBqzOheMhR2Kr1tSX1kS1FlrVMLGoga2Na5SE7oKOJaWKeVADY
	VFfWGQ6OANCDWXVZ+DqtGwZX4TKuibcR9EpB/kr8Hpw/KjcqtV2XgGwIpw4EYDWmchku/mJtxCrT0
	YEk61oCz3nQoP/rBNIHkXDF831XFrZ1eZ284AfS/xdEnNejHSN5ER5vsrQQlIkkSeloNROdqE4MXJ
	4hE+V4SFlVOcvI+4IEzWWJiqKE8rTVuVuTrfJl4Ex/1reLxhsEHtW4t24LDRLi1TaLojaxjUYQ6zt
	udotdGcentn8XmkZnYfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic66b-0004j8-LD; Tue, 03 Dec 2019 11:12:33 +0000
Received: from mail-sn1nam02on0610.outbound.protection.outlook.com
 ([2a01:111:f400:fe44::610]
 helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic66U-0004id-93
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 11:12:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IDy9tLy7htd0iLVXI2nT9Vth/iCryBSluBWLsixPNi+UZFvr6O+zOySpaUIo+e+AhV5sQzyatDJXaWLkGG5RhYjnmEYtQ+Ttg+l7aKuQMWRlxsGOukJ53COOpWYKZHIRfqE6nn3uoBWlsVh0iv8NobP25a7jDrVp0DCbVtwIn7n2SpbZ11jdpebP2m4OJ5Yq4lAdrv/DixUq6rvmr0lO2EXE9U32T+Zp+LqYktJ+FbWw+VHn87VhTPApwzYgx4c+8qJWZodgdP41oFxSwa3C9/+MaZzWDrqJ8m5QpmXu7wZZj03tX86v+u4JeM/FNVHFvnlB3Av1r7M/LFgoiYy3gA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4PghPG/WOgHq98k92wlVS7DW6YKMERHO0oIyNnO2uaA=;
 b=TtSFwO0KcKLPlP6qasl4UP4WUGbE9h0tXXX97EtW1dfHXES0WpOi1cWyL7Oa6A02ub37LA0RQN04nEhWU9beflMTrdk9kDTsp1wmpV6leI5p1xnkSxGoo16zELwkOjDfc5UDCkSmrNLw6NoYG3H5QiZpvTt4kmN16mwKS/UsSk+VYnCVkK3/Uh0Lnunzv1tIzj8+DaNLYyeHiDDwuVJFV8t3DPC/+t9HlpnbR3fCMkywlp7a+YzqNYPOrTC6EOpFroKbbyHoyBH1c5PYFDwz54iPRc28f41BfKxeEFpIqsrevIqWfjuSy6EfqQWqIGtYvKG5lAAM08+hlztr/JVzCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4PghPG/WOgHq98k92wlVS7DW6YKMERHO0oIyNnO2uaA=;
 b=QpzpqVUBUv4BEDyty4KTJ+99ZojXHwtsycHBvOjjsrBaO2lYYTXptTL5qtk8hhHr+/WFcscKNwMQvwhrAMiYogt+s1E7PQFWNWZnNCIJ4JjuwlWjGkEkJ5pM8b+Qx+PebIheubE+D/bpGPlNbe5GJ+G96e5GluyoRO7QP7uH+wM=
Received: from BL0PR02CA0038.namprd02.prod.outlook.com (2603:10b6:207:3d::15)
 by CH2PR02MB7094.namprd02.prod.outlook.com (2603:10b6:610:89::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2495.20; Tue, 3 Dec
 2019 11:12:21 +0000
Received: from SN1NAM02FT035.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::207) by BL0PR02CA0038.outlook.office365.com
 (2603:10b6:207:3d::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2451.23 via Frontend
 Transport; Tue, 3 Dec 2019 11:12:21 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT035.mail.protection.outlook.com (10.152.72.145) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2474.17
 via Frontend Transport; Tue, 3 Dec 2019 11:12:20 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1ic66O-0005t0-4A; Tue, 03 Dec 2019 03:12:20 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1ic66J-0007xX-1J; Tue, 03 Dec 2019 03:12:15 -0800
Received: from xsj-pvapsmtp01 (xsj-mail.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xB3BC8WU020864; 
 Tue, 3 Dec 2019 03:12:08 -0800
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1ic66B-0007vg-OO; Tue, 03 Dec 2019 03:12:08 -0800
From: Srinivas Neeli <srinivas.neeli@xilinx.com>
To: wg@grandegger.com, mkl@pengutronix.de, davem@davemloft.net,
 michal.simek@xilinx.com, appanad@xilinx.com
Subject: [PATCH] can: xilinx_can: Fix missing Rx can packets on CANFD2.0
Date: Tue,  3 Dec 2019 16:42:02 +0530
Message-Id: <1575371522-3030-1-git-send-email-srinivas.neeli@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(376002)(39860400002)(346002)(199004)(189003)(36386004)(50226002)(8936002)(16586007)(36756003)(6636002)(6666004)(356004)(50466002)(9786002)(48376002)(106002)(316002)(478600001)(81166006)(336012)(8676002)(5660300002)(2906002)(81156014)(107886003)(305945005)(7696005)(51416003)(26005)(44832011)(70586007)(2616005)(70206006)(4326008)(186003)(426003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB7094; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5815e2f4-ba1c-49b6-4dda-08d777e1aa86
X-MS-TrafficTypeDiagnostic: CH2PR02MB7094:
X-Microsoft-Antispam-PRVS: <CH2PR02MB7094D457DDAB7D19FE2AD217AF420@CH2PR02MB7094.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-Forefront-PRVS: 02408926C4
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nJPM9Fm0KNS6qC8b+01O6F6qY4VxviFR/2limORUHztSQkFx12ZGPfyyAfesAQPsD2+dnrmjIo6dxt9CkBtTH+nIPUZV8dBJ9cBS4jU2xoii9l2pnhoL2wGmaTO8hPT+7slezajU/sRS2D0quHeLwlYfOLngrrZTIyfPIbiJ6A1lQINgkHjIac9SOCns3uWxlB2Q5aVU0EaR4NImBl0t96/BGq2pk4qwzZkLA+XIt3C7p4Dv8CtaAOVToA8boT/Ih3u//1Gn7KP9PihVMMFzCERkfWT/mgRjvhlTdt/FSCWkq5ZCeU6qsrEslTHIFv/BFMrszRdPNW9NydCjjNkEjPhZy9WCTVFjSlatr7b7DLOP01ZhEdWWDmM249JBgNQHWleF62qyzTZpYwNDnJ3QaDVn1gHuw0sO/4H52vKxVJgJ2raaDXhqk7ZBHBdH1Mlj
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Dec 2019 11:12:20.7369 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5815e2f4-ba1c-49b6-4dda-08d777e1aa86
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB7094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_031226_320972_7E2837D1 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe44:0:0:0:610 listed in]
 [list.dnswl.org]
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
Cc: Srinivas Neeli <srinivas.neeli@xilinx.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-can@vger.kernel.org, nagasure@xilinx.com,
 git@xilinx.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CANFD2.0 core uses BRAM for storing acceptance filter ID(AFID) and MASK
(AFMASK)registers. So by default AFID and AFMASK registers contain random
data. Due to random data, not able to receive all CAN ids.

Initializing AFID and AFMASK registers with Zero before enabling
acceptance filter to receive all packets irrespective of ID and Mask.

Signed-off-by: Srinivas Neeli <srinivas.neeli@xilinx.com>
Reviewed-by: Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---
 drivers/net/can/xilinx_can.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/net/can/xilinx_can.c b/drivers/net/can/xilinx_can.c
index 464af939cd8a..c1dbab8c896d 100644
--- a/drivers/net/can/xilinx_can.c
+++ b/drivers/net/can/xilinx_can.c
@@ -60,6 +60,8 @@ enum xcan_reg {
 	XCAN_TXMSG_BASE_OFFSET	= 0x0100, /* TX Message Space */
 	XCAN_RXMSG_BASE_OFFSET	= 0x1100, /* RX Message Space */
 	XCAN_RXMSG_2_BASE_OFFSET	= 0x2100, /* RX Message Space */
+	XCAN_AFR_2_MASK_OFFSET	= 0x0A00, /* Acceptance Filter MASK */
+	XCAN_AFR_2_ID_OFFSET	= 0x0A04, /* Acceptance Filter ID */
 };
 
 #define XCAN_FRAME_ID_OFFSET(frame_base)	((frame_base) + 0x00)
@@ -1809,6 +1811,11 @@ static int xcan_probe(struct platform_device *pdev)
 
 	pm_runtime_put(&pdev->dev);
 
+	if (priv->devtype.flags & XCAN_FLAG_CANFD_2) {
+		priv->write_reg(priv, XCAN_AFR_2_ID_OFFSET, 0x00000000);
+		priv->write_reg(priv, XCAN_AFR_2_MASK_OFFSET, 0x00000000);
+	}
+
 	netdev_dbg(ndev, "reg_base=0x%p irq=%d clock=%d, tx buffers: actual %d, using %d\n",
 		   priv->reg_base, ndev->irq, priv->can.clock.freq,
 		   hw_tx_max, priv->tx_max);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
