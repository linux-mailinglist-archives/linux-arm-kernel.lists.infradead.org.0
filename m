Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6722D897CD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 09:29:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3EoebHqEmYfC5s+YZnY6cLAqMQGq9/idknwx0GJ1eb4=; b=UxI/ZE5VWxw9jo
	TD/R8UBnFGh5zZz7div51+a2SNCcpd1rTS0gonejl9g1UIhpD4Nyl3PZnA72yd7kZZE1G8I6dRhqn
	Ob2p5g9zmgB3AspPOrQRu8hJbpOVWt/tI6YE4Ba+3Oh9XmMLzwt7sqKiRv1b+/9zb8Z7rOoWxdGsL
	16XMdo8WgNBtaF7qU9unCb3GLZa6VXBvdLR5we6LhfVTq+zbdFGZ5HzLcLv57n5yifHxOQPw5R/1B
	+QGraMNCDfnV8LOB/C9JmwPBBjP5kFIYv/VgY8Vv+TLW9f0htAkRM9C8JYkQI2QVBkfbjC3SmyGsW
	5f/fNySdooABaXgkxWNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx4lz-0002ik-Mv; Mon, 12 Aug 2019 07:29:43 +0000
Received: from mail-eopbgr800057.outbound.protection.outlook.com
 ([40.107.80.57] helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx4lM-0002MP-1a
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 07:29:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dvkh/FTUE1le5E6g5S9IbPKito31gSo8d6gbQLKwFhSvkMIJ+gZC0MKc0w220WqAu82K+H40LL/+t3sdSeMGyyVeFkIQFcsW3adIqxomn/Hhlo7xSNcQiTFhb84+pmztNGhgAEGwH8VI2pmQDmmwsFj4HLODVTw4MbvrFkryfJ76Z0drQOOCasf+sHu1pSGBsHRM5nezLSGgtoCn5zdxOGJpzTv1DNDJ4GalIXUXQnxc/0y72/50CdVNSnznzAGZv7XAfmosn/H+5Pm31+khkG0vrWmXsMB2aj5L/j3qsAZYRCw23liBVQ5I1FIZc45UQNJvVhGpihnsnFemBpjY5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/qVZ0wFDVKK80MuPDiwvZsmQAaAhZEwv2iP05Jp3938=;
 b=TSSbKcc8vd0sNd+oabV59j+fm+r8hwQUVZKCsecq2gwYDSsGpUwrI6ixI8XtcTsU7j4PrMjC+wmPd0PH34Q8sLOgvwAvgY/tkCUKM6RE6obkC/0iwbrHIJU4qr8G2gxYMLudn8X4FVcnb1eDEhDceTAgHEIVOA8v4nxsJD0PxShjxtdbzOsYoc2HNPEnJaErMWm+sKmSXOJyPHk97zyh82Im0CA7WZYljpvD0gcc9JOxri3JWZeYXAhBJ0J2+8NKtBym3HwBQwybVXf7ITLe3rwpo+62WlSKpARj7yp94HPVhMYk12avEthofG15dZgJQn66lnl4OrtAbOWz3jefsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.100) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/qVZ0wFDVKK80MuPDiwvZsmQAaAhZEwv2iP05Jp3938=;
 b=A/no516jOFhiMMviOb4I3MdqBbLgCYAhsKdFfdTO7MM7qJaa9tZveLNphiLnmbMUFS0jZAklsCXQx04YaxjOnkQFe1nvtj7+ntVtj66YkjGauBljTJ2L4jdFxbt2b4gl3qfTeXuJDqMM2NyVknu73bQ28WtK1jFkTE2/0iImNio=
Received: from BYAPR02CA0023.namprd02.prod.outlook.com (2603:10b6:a02:ee::36)
 by SN6PR02MB4830.namprd02.prod.outlook.com (2603:10b6:805:98::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.21; Mon, 12 Aug
 2019 07:29:02 +0000
Received: from CY1NAM02FT031.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::202) by BYAPR02CA0023.outlook.office365.com
 (2603:10b6:a02:ee::36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2157.15 via Frontend
 Transport; Mon, 12 Aug 2019 07:29:01 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.100)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.100 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.100; helo=xsj-pvapsmtpgw02;
Received: from xsj-pvapsmtpgw02 (149.199.60.100) by
 CY1NAM02FT031.mail.protection.outlook.com (10.152.75.180) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2157.15
 via Frontend Transport; Mon, 12 Aug 2019 07:29:00 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66]:47674
 helo=xsj-pvapsmtp01) by xsj-pvapsmtpgw02 with esmtp (Exim 4.63)
 (envelope-from <appana.durga.rao@xilinx.com>)
 id 1hx4lI-00072S-Aj; Mon, 12 Aug 2019 00:29:00 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <appana.durga.rao@xilinx.com>)
 id 1hx4lD-0000eU-7S; Mon, 12 Aug 2019 00:28:55 -0700
Received: from xsj-pvapsmtp01 (mailhub.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x7C7SpOX019453; 
 Mon, 12 Aug 2019 00:28:52 -0700
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <appana.durga.rao@xilinx.com>)
 id 1hx4l9-0000d9-5e; Mon, 12 Aug 2019 00:28:51 -0700
From: Appana Durga Kedareswara rao <appana.durga.rao@xilinx.com>
To: wg@grandegger.com, mkl@pengutronix.de, davem@davemloft.net,
 michal.simek@xilinx.com
Subject: [PATCH 4/5] can: xilinx_can: Fix FSR register FL and RI mask values
 for canfd 2.0
Date: Mon, 12 Aug 2019 12:58:33 +0530
Message-Id: <1565594914-18999-5-git-send-email-appana.durga.rao@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565594914-18999-1-git-send-email-appana.durga.rao@xilinx.com>
References: <1565594914-18999-1-git-send-email-appana.durga.rao@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.100; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(396003)(376002)(136003)(2980300002)(189003)(199004)(50466002)(316002)(16586007)(446003)(6636002)(126002)(48376002)(486006)(106002)(11346002)(2616005)(476003)(5660300002)(186003)(26005)(305945005)(51416003)(8676002)(81166006)(81156014)(76176011)(14444005)(47776003)(7696005)(9786002)(36386004)(8936002)(4326008)(63266004)(50226002)(36756003)(70206006)(70586007)(426003)(2906002)(356004)(478600001)(6666004)(336012)(107886003)(5001870100001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB4830; H:xsj-pvapsmtpgw02; FPR:;
 SPF:Pass; LANG:en; PTR:xapps1.xilinx.com,unknown-60-100.xilinx.com; MX:1; A:1;
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f726ddd1-b75a-4e33-8235-08d71ef6bf22
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:SN6PR02MB4830; 
X-MS-TrafficTypeDiagnostic: SN6PR02MB4830:
X-Microsoft-Antispam-PRVS: <SN6PR02MB48308EB17B10F8C80D99B491DCD30@SN6PR02MB4830.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4714;
X-Forefront-PRVS: 012792EC17
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: 9oaaFPU+q35fRnWzanvrewqMFRwZvwl7asF0odbBtFv2c6ASxfxvNFI54+vdbr0aug8IjXIiRloES0wwc9LzcZDCwWeb5q35uZk0Vs9+OZQEQd97vtCBfq0dvLkyucwCWM6/Eoq3IQ7D9yT0IUmFwrL2EnBdwYpNxgtl6Ag2/AZv4ZUpcB+5uUFB7zcbhniMPnQIpcn5Fp5bUvP5VJM+5u/wqbEgWMIyGs0nS3teBRQvWki7RxCuPH5cYGZRKgn2Zu092kBpi6q/M2XmBH/8fkIUxXoGPc2nloJVgEHgUQXlYVlV9nkbig5pe6pqStYqBeaFAresIGnvlEopNTffsVMK4H4onnfIc9ykGW6aW2uO65G0rbQpcKnOAejjsk8vwh0WfJ/9Ea9elv9aG9XGR3mUodxyXj3LrCitnFPqD9E=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Aug 2019 07:29:00.9350 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f726ddd1-b75a-4e33-8235-08d71ef6bf22
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.100];
 Helo=[xsj-pvapsmtpgw02]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB4830
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_002904_263282_C29CD287 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.80.57 listed in list.dnswl.org]
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
Cc: netdev@vger.kernel.org,
 Appana Durga Kedareswara rao <appana.durga.rao@xilinx.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-can@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For CANFD 2.0 IP configuration existing driver is using incorrect mask
values for FSR register FL and RI fields.

Signed-off-by: Appana Durga Kedareswara rao <appana.durga.rao@xilinx.com>
Acked-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---
 drivers/net/can/xilinx_can.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/net/can/xilinx_can.c b/drivers/net/can/xilinx_can.c
index c9b951b..4cb8c1c9 100644
--- a/drivers/net/can/xilinx_can.c
+++ b/drivers/net/can/xilinx_can.c
@@ -123,8 +123,10 @@ enum xcan_reg {
 #define XCAN_IDR_RTR_MASK		0x00000001 /* Remote TX request */
 #define XCAN_DLCR_DLC_MASK		0xF0000000 /* Data length code */
 #define XCAN_FSR_FL_MASK		0x00003F00 /* RX Fill Level */
+#define XCAN_2_FSR_FL_MASK		0x00007F00 /* RX Fill Level */
 #define XCAN_FSR_IRI_MASK		0x00000080 /* RX Increment Read Index */
 #define XCAN_FSR_RI_MASK		0x0000001F /* RX Read Index */
+#define XCAN_2_FSR_RI_MASK		0x0000003F /* RX Read Index */
 #define XCAN_DLCR_EDL_MASK		0x08000000 /* EDL Mask in DLC */
 #define XCAN_DLCR_BRS_MASK		0x04000000 /* BRS Mask in DLC */
 
@@ -1138,7 +1140,7 @@ static int xcan_rx_fifo_get_next_frame(struct xcan_priv *priv)
 	int offset;
 
 	if (priv->devtype.flags & XCAN_FLAG_RX_FIFO_MULTI) {
-		u32 fsr;
+		u32 fsr, mask;
 
 		/* clear RXOK before the is-empty check so that any newly
 		 * received frame will reassert it without a race
@@ -1148,12 +1150,17 @@ static int xcan_rx_fifo_get_next_frame(struct xcan_priv *priv)
 		fsr = priv->read_reg(priv, XCAN_FSR_OFFSET);
 
 		/* check if RX FIFO is empty */
-		if (!(fsr & XCAN_FSR_FL_MASK))
+		if (priv->devtype.flags & XCAN_FLAG_CANFD_2)
+			mask = XCAN_2_FSR_FL_MASK;
+		else
+			mask = XCAN_FSR_FL_MASK;
+
+		if (!(fsr & mask))
 			return -ENOENT;
 
 		if (priv->devtype.flags & XCAN_FLAG_CANFD_2)
 			offset =
-			  XCAN_RXMSG_2_FRAME_OFFSET(fsr & XCAN_FSR_RI_MASK);
+			  XCAN_RXMSG_2_FRAME_OFFSET(fsr & XCAN_2_FSR_RI_MASK);
 		else
 			offset =
 			  XCAN_RXMSG_FRAME_OFFSET(fsr & XCAN_FSR_RI_MASK);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
