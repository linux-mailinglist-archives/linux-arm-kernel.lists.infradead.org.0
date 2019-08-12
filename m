Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DF289AE9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 12:08:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oHbB9HsWfEKxHycrzeL+PisidRuSpsrrQEkkddcqHO8=; b=AqvklYmnVYBW8B
	QX2U8s90qJH6/pysXKCjhOZ8ueUNT/jAesEvmSH+YUFm3dQMhKO2dD51TGrSHYkQgLJFstJiGpQqn
	+If/EUbNaTCFotKSuRqVAGggThYYtCRVoBFM0nEoneMywfsXn5CdXTG8WMkPS1+0+c4t312drjhsx
	zTVZ8U5SydnS0gBl/JkrOXhsmxG/xFqyFK0ENIkWJdJXYlqI2r7dvPgKTLq9krPM1RTUBLmtmEfZr
	AJlmDFd4uI9FhEd5jzLOAYI4iKS+hdizZKbrBMniupHWWN2RJBocB6UkqxUM2/04zOmkl2Na418dW
	j7CCZdXmL+On9R+Ikb4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx7FE-00064w-BN; Mon, 12 Aug 2019 10:08:04 +0000
Received: from mail-bn3nam04on0609.outbound.protection.outlook.com
 ([2a01:111:f400:fe4e::609]
 helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx7EO-0005QP-44
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 10:07:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EqVawzmDmvbE2Mx64qcvPnYPzjaRgROow73Q28+CzEafvICxTzcdP5Sl+H1LH0oOENyyZUGn7roOUNXmjTZFkQ16pK5XccrnYfdhkGHeneIAHG6orf/ZEWtchBYHXizoLFOO0nidQHiSZm4+e44+szMudwH3rTx3uLzdKIHoNVjW34pUd9HEo0FIUz/hRLTtWZ+u+f+3TtBt0Zy81UYr76kzMBImiGJkfnm6KtfiTvYR7T+g9V62wVsFuFZ+F4L8sJ9ggVtfT3usxMfLyvU9/8tJ110DFpMY+Pm0qhSMioRgY6Hsgyi9nmEI2QOteQln02bJgc06qM1IdcdsQTEQ5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D9xm0OfNg61KzJa1ndGpkwBoGlWVpOKH5LDgd1W4iQc=;
 b=LUBaljEs40VfyrFqokM5sbTWwLvta294hpB9n6NgvTlinUMQBpnsBszAaqxqYpnG0OUQ6cJV4/8HJQGtkXwdur3BjXBktvmwW/V9p8kg0UNY0iNe0326Ju+b1IAAw6rQ3euTDbuK+rWmb2N3U87bPWTZzM4yTujeBu/GmHdZvK4S9PXKvqOWcMCd8qZSzmh/dkWcxoh/unzEO64swv3aZT6uqXPYqT8f3FTaKmflF73UhXgPQIfRyTrbzyw/J9166tgfBczD+XoRhkh+tG9Zg00xZLONMeuUmS35sZ3QoxhZ+wrKXqCvS8f9ALizvIc5cbRGBYYMz6ZbaB//b7uSJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.100) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D9xm0OfNg61KzJa1ndGpkwBoGlWVpOKH5LDgd1W4iQc=;
 b=FogGIfSkxurYBRgkrsWH0YNibBJEuu3aM9o96GH98nmYQdHIBANHvBmO6wQY6WgcKj3iJUbB6h9qDFEWcWp1aDx6iarcj2VpztGTBmUk0fuoYS/VwHLLDLvuWILxUSPHEDkM92jS8baAeKkhmUUyNlMtNhNg6kAia8QoFSVy6fw=
Received: from SN4PR0201CA0016.namprd02.prod.outlook.com
 (2603:10b6:803:2b::26) by BL0PR02MB3796.namprd02.prod.outlook.com
 (2603:10b6:207:48::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.20; Mon, 12 Aug
 2019 10:07:10 +0000
Received: from CY1NAM02FT020.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::204) by SN4PR0201CA0016.outlook.office365.com
 (2603:10b6:803:2b::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.13 via Frontend
 Transport; Mon, 12 Aug 2019 10:07:09 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.100)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.100 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.100; helo=xsj-pvapsmtpgw02;
Received: from xsj-pvapsmtpgw02 (149.199.60.100) by
 CY1NAM02FT020.mail.protection.outlook.com (10.152.75.191) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2157.15
 via Frontend Transport; Mon, 12 Aug 2019 10:07:09 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66]:54781
 helo=xsj-pvapsmtp01) by xsj-pvapsmtpgw02 with esmtp (Exim 4.63)
 (envelope-from <appana.durga.rao@xilinx.com>)
 id 1hx7EK-0007SO-H2; Mon, 12 Aug 2019 03:07:08 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <appana.durga.rao@xilinx.com>)
 id 1hx7EF-0004Wy-DN; Mon, 12 Aug 2019 03:07:03 -0700
Received: from xsj-pvapsmtp01 (smtp2.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x7CA6uVZ032301; 
 Mon, 12 Aug 2019 03:06:56 -0700
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <appana.durga.rao@xilinx.com>)
 id 1hx7E8-0004OP-38; Mon, 12 Aug 2019 03:06:56 -0700
From: Appana Durga Kedareswara rao <appana.durga.rao@xilinx.com>
To: wg@grandegger.com, mkl@pengutronix.de, davem@davemloft.net,
 michal.simek@xilinx.com
Subject: [PATCH v2 2/5] can: xilinx_can: Fix FSR register handling in the rx
 path
Date: Mon, 12 Aug 2019 15:36:43 +0530
Message-Id: <1565604406-4920-3-git-send-email-appana.durga.rao@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565604406-4920-1-git-send-email-appana.durga.rao@xilinx.com>
References: <1565604406-4920-1-git-send-email-appana.durga.rao@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.100; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(396003)(346002)(376002)(2980300002)(189003)(199004)(6666004)(36386004)(305945005)(5660300002)(63266004)(36756003)(9786002)(356004)(106002)(316002)(16586007)(6636002)(8936002)(48376002)(81166006)(2906002)(4326008)(8676002)(50226002)(81156014)(186003)(446003)(11346002)(426003)(26005)(476003)(486006)(14444005)(2616005)(126002)(76176011)(107886003)(7696005)(51416003)(70586007)(47776003)(478600001)(70206006)(50466002)(336012)(5001870100001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR02MB3796; H:xsj-pvapsmtpgw02; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-100.xilinx.com,xapps1.xilinx.com; MX:1; A:1;
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b6cf34f5-d10b-494e-7ce8-08d71f0cd677
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:BL0PR02MB3796; 
X-MS-TrafficTypeDiagnostic: BL0PR02MB3796:
X-Microsoft-Antispam-PRVS: <BL0PR02MB3796910F70CDEB663CB8E4C2DCD30@BL0PR02MB3796.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:758;
X-Forefront-PRVS: 012792EC17
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: Vr7qQCXOXAnL4lEU+rdcurGK3BlrUrqvRvlamxtBr0wgzdXdMCeSWM6huqdQonXDZ3iF8lum/MXTEnPuou3ABCSL/vMYhHikWK8IHsQqQ7CveRJKhL8vRJrdEmmSSHfloHXgbU5UBG9QSG6wNh+IhhkhpD1+ft5XGO2+hy2w73M6TLXkBDicpyf3E43tul2qrjBD1RC9ZYFZAW6lWwL+v5yha2CM452xta8AcgGKUe19P25ry9NDKhbP3lcdPzqOW2GZe+Y8U/3Ot0m4Ixt19XqQBNqVGNrYjpdFRyl/K++/5rMEXgPF49DLhRcK1eS219Jp8uWX1kMGpdXGDqT7VDUaJi0NyAYGsP0YmeukAqo8aVfIUuf/E7IpQUkpowdxnu/9eayKXY5J0GxUybNZ8xdJ7fonmA74Lmw80zchybs=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Aug 2019 10:07:09.0074 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b6cf34f5-d10b-494e-7ce8-08d71f0cd677
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.100];
 Helo=[xsj-pvapsmtpgw02]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB3796
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_030712_225073_860EA4F2 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: netdev@vger.kernel.org,
 Appana Durga Kedareswara rao <appana.durga.rao@xilinx.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-can@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

After commit c223da689324 ("can: xilinx_can: Add support for
CANFD FD frames") Driver is updating the FSR IRI index multiple
times(i.e in xcanfd_rx() and xcan_rx_fifo_get_next_frame()),
It should be updated once per rx packet this patch fixes this issue,
also this patch removes the unnecessary fsr register checks in
xcanfd_rx() API.

Fixes: c223da6 ("can: xilinx_can: Add support for CANFD FD frames")
Reviewed-by: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
Reviewed-by: Shubhrajyoti Datta <Shubhrajyoti.datta@xilinx.com>
Signed-off-by: Appana Durga Kedareswara rao <appana.durga.rao@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---
 drivers/net/can/xilinx_can.c | 139 ++++++++++++++++++++-----------------------
 1 file changed, 63 insertions(+), 76 deletions(-)

diff --git a/drivers/net/can/xilinx_can.c b/drivers/net/can/xilinx_can.c
index ac175ab..2d3399e 100644
--- a/drivers/net/can/xilinx_can.c
+++ b/drivers/net/can/xilinx_can.c
@@ -819,91 +819,78 @@ static int xcanfd_rx(struct net_device *ndev, int frame_base)
 	u32 id_xcan, dlc, data[2] = {0, 0}, dwindex = 0, i, fsr, readindex;
 
 	fsr = priv->read_reg(priv, XCAN_FSR_OFFSET);
-	if (fsr & XCAN_FSR_FL_MASK) {
-		readindex = fsr & XCAN_FSR_RI_MASK;
-		id_xcan = priv->read_reg(priv,
-					 XCAN_FRAME_ID_OFFSET(frame_base));
-		dlc = priv->read_reg(priv, XCAN_FRAME_DLC_OFFSET(frame_base));
-		if (dlc & XCAN_DLCR_EDL_MASK)
-			skb = alloc_canfd_skb(ndev, &cf);
-		else
-			skb = alloc_can_skb(ndev, (struct can_frame **)&cf);
+	readindex = fsr & XCAN_FSR_RI_MASK;
+	id_xcan = priv->read_reg(priv, XCAN_FRAME_ID_OFFSET(frame_base));
+	dlc = priv->read_reg(priv, XCAN_FRAME_DLC_OFFSET(frame_base));
+	if (dlc & XCAN_DLCR_EDL_MASK)
+		skb = alloc_canfd_skb(ndev, &cf);
+	else
+		skb = alloc_can_skb(ndev, (struct can_frame **)&cf);
 
-		if (unlikely(!skb)) {
-			stats->rx_dropped++;
-			return 0;
-		}
+	if (unlikely(!skb)) {
+		stats->rx_dropped++;
+		return 0;
+	}
 
-		/* Change Xilinx CANFD data length format to socketCAN data
-		 * format
-		 */
-		if (dlc & XCAN_DLCR_EDL_MASK)
-			cf->len = can_dlc2len((dlc & XCAN_DLCR_DLC_MASK) >>
+	/* Change Xilinx CANFD data length format to socketCAN data
+	 * format
+	 */
+	if (dlc & XCAN_DLCR_EDL_MASK)
+		cf->len = can_dlc2len((dlc & XCAN_DLCR_DLC_MASK) >>
+				  XCAN_DLCR_DLC_SHIFT);
+	else
+		cf->len = get_can_dlc((dlc & XCAN_DLCR_DLC_MASK) >>
 					  XCAN_DLCR_DLC_SHIFT);
-		else
-			cf->len = get_can_dlc((dlc & XCAN_DLCR_DLC_MASK) >>
-						  XCAN_DLCR_DLC_SHIFT);
-
-		/* Change Xilinx CAN ID format to socketCAN ID format */
-		if (id_xcan & XCAN_IDR_IDE_MASK) {
-			/* The received frame is an Extended format frame */
-			cf->can_id = (id_xcan & XCAN_IDR_ID1_MASK) >> 3;
-			cf->can_id |= (id_xcan & XCAN_IDR_ID2_MASK) >>
-					XCAN_IDR_ID2_SHIFT;
-			cf->can_id |= CAN_EFF_FLAG;
-			if (id_xcan & XCAN_IDR_RTR_MASK)
-				cf->can_id |= CAN_RTR_FLAG;
-		} else {
-			/* The received frame is a standard format frame */
-			cf->can_id = (id_xcan & XCAN_IDR_ID1_MASK) >>
-					XCAN_IDR_ID1_SHIFT;
-			if (!(dlc & XCAN_DLCR_EDL_MASK) && (id_xcan &
-						XCAN_IDR_SRR_MASK))
-				cf->can_id |= CAN_RTR_FLAG;
-		}
 
-		/* Check the frame received is FD or not*/
-		if (dlc & XCAN_DLCR_EDL_MASK) {
-			for (i = 0; i < cf->len; i += 4) {
-				if (priv->devtype.flags & XCAN_FLAG_CANFD_2)
-					data[0] = priv->read_reg(priv,
+	/* Change Xilinx CAN ID format to socketCAN ID format */
+	if (id_xcan & XCAN_IDR_IDE_MASK) {
+		/* The received frame is an Extended format frame */
+		cf->can_id = (id_xcan & XCAN_IDR_ID1_MASK) >> 3;
+		cf->can_id |= (id_xcan & XCAN_IDR_ID2_MASK) >>
+				XCAN_IDR_ID2_SHIFT;
+		cf->can_id |= CAN_EFF_FLAG;
+		if (id_xcan & XCAN_IDR_RTR_MASK)
+			cf->can_id |= CAN_RTR_FLAG;
+	} else {
+		/* The received frame is a standard format frame */
+		cf->can_id = (id_xcan & XCAN_IDR_ID1_MASK) >>
+				XCAN_IDR_ID1_SHIFT;
+		if (!(dlc & XCAN_DLCR_EDL_MASK) && (id_xcan &
+					XCAN_IDR_SRR_MASK))
+			cf->can_id |= CAN_RTR_FLAG;
+	}
+
+	/* Check the frame received is FD or not*/
+	if (dlc & XCAN_DLCR_EDL_MASK) {
+		for (i = 0; i < cf->len; i += 4) {
+			if (priv->devtype.flags & XCAN_FLAG_CANFD_2)
+				data[0] = priv->read_reg(priv,
 					(XCAN_RXMSG_2_FRAME_OFFSET(readindex) +
 					(dwindex * XCANFD_DW_BYTES)));
-				else
-					data[0] = priv->read_reg(priv,
+			else
+				data[0] = priv->read_reg(priv,
 					(XCAN_RXMSG_FRAME_OFFSET(readindex) +
-						(dwindex * XCANFD_DW_BYTES)));
-				*(__be32 *)(cf->data + i) =
-						cpu_to_be32(data[0]);
-				dwindex++;
-			}
-		} else {
-			for (i = 0; i < cf->len; i += 4) {
-				if (priv->devtype.flags & XCAN_FLAG_CANFD_2)
-					data[0] = priv->read_reg(priv,
-						XCAN_RXMSG_2_FRAME_OFFSET(readindex) + i);
-				else
-					data[0] = priv->read_reg(priv,
-						XCAN_RXMSG_FRAME_OFFSET(readindex) + i);
-				*(__be32 *)(cf->data + i) =
-						cpu_to_be32(data[0]);
-			}
+					(dwindex * XCANFD_DW_BYTES)));
+			*(__be32 *)(cf->data + i) = cpu_to_be32(data[0]);
+			dwindex++;
+		}
+	} else {
+		for (i = 0; i < cf->len; i += 4) {
+			if (priv->devtype.flags & XCAN_FLAG_CANFD_2)
+				data[0] = priv->read_reg(priv,
+					XCAN_RXMSG_2_FRAME_OFFSET(readindex) +
+								  i);
+			else
+				data[0] = priv->read_reg(priv,
+					XCAN_RXMSG_FRAME_OFFSET(readindex) + i);
+			*(__be32 *)(cf->data + i) = cpu_to_be32(data[0]);
 		}
-		/* Update FSR Register so that next packet will save to
-		 * buffer
-		 */
-		fsr = priv->read_reg(priv, XCAN_FSR_OFFSET);
-		fsr |= XCAN_FSR_IRI_MASK;
-		priv->write_reg(priv, XCAN_FSR_OFFSET, fsr);
-		fsr = priv->read_reg(priv, XCAN_FSR_OFFSET);
-		stats->rx_bytes += cf->len;
-		stats->rx_packets++;
-		netif_receive_skb(skb);
-
-		return 1;
 	}
-	/* If FSR Register is not updated with fill level */
-	return 0;
+	stats->rx_bytes += cf->len;
+	stats->rx_packets++;
+	netif_receive_skb(skb);
+
+	return 1;
 }
 
 /**
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
