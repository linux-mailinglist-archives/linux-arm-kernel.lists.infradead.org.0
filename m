Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 655D710EA67
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 14:03:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rdwayemJgByIrb28C6KtOqNb4RM52EGvtskfu/6DsgM=; b=B3LPF43aG73loV
	ftIyPYcsIYnYblbM2BIVmcsBylw4jQIW+fp1pk9HLHjXjKPXDTFpw0i653yPUN3kLMg1gXoIxn8/I
	sZHmeH3Zu0ObSV2Dc9xJoj3HR1V2z7L89kmOcPmro5gFQP/IME9W8V9lRtqpPwPdj93UzpgXnnkGS
	DJz4Lg2JYe2dtha0Z9oaRMYpLswtpz8rx01lT6MwrPXqHqA7uIsPZZDCLnCbzKfYLpa+5IU+zft/A
	029zC4FyCPKOGTcudWHbSgAc6s1Ajs/FTlBT0d+/hoQmqO/xQWP/HhRzJARNOdW/fHBmGBg+/KvFc
	6k525IkVYuLRbQG6iEEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iblMA-0004ji-4i; Mon, 02 Dec 2019 13:03:14 +0000
Received: from mail-eopbgr700084.outbound.protection.outlook.com
 ([40.107.70.84] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iblLe-0004NN-Mt
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 13:02:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NOXmFD8phUfcj3qAihOcki7UNN915Z+jr5TeinnHp3OQsvZCblNQEGV+BhLoX6cyeJYOPtGVGsK/tNh2yJILgQ01wFXRsslQNbqdmmyKYbgA+DAlrEiHg1uyRHzyhmRmuKkkpwpoXxaKuzTLiRcdR1AOC9GKiRN948i9WNI9WAlKmmu08TLO/YoZvUvlgIUFvOrWM/HHDWuYB1pnww+RLERmL4dGHHT5zMhm011o+U5gT50GtjygU2b86Xy86Q5uwJWGv/eSvRybP1Ub8vssNe9uEwXX4hLIjHDWn5Q7IDglG/FsESqxTYLszksRNHsG+0486ou2W0hyuN5pRmBmcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JIztYoUqPBNX7z0M/8srIRzKtAX5twKuFFx966ExPeY=;
 b=JqCESiJoTVkBDwXWHjcttsVBQOu95cp9Kt4MRvBd7X48IVvxU5g3HgEpE+0kLEbKOabIvEkmU2mZoJh8GcGOmdnL7wnYa4NYZEQll2TPZbFMJMQ0pxRFngoKdsTqcoNNn4Se+6WS4aKjhQyN4eyjrTSAcMzJ4EqHXvRP6NRWKev3tMg4VV5qihrO/29RwGQ0vYqio6RkDP7SF8cNaRmaDLIDdXXTGTPl1OOvZLA3S+HB+DjkqlR1FXQdMOnTvsb8o5Bu0C5/0mRpTf090wy8/OPczmwg0pRvC0R1e3VI6MpU3rJsib5dcPvNkmqLLEL4s85oruZ8k5EXqBiy+yyjGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=grandegger.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JIztYoUqPBNX7z0M/8srIRzKtAX5twKuFFx966ExPeY=;
 b=LGzYhgD7RoTmw+Dh0mvI/DWPUjgjbwfrWMOGtlzYGWoSEpBYS0ylKnEcUoGkZYeaDVfr42AJOIiNYNqBTsC7ONcD7hGmxVC4G8IZr6BO4c3+nA5PMSYUA1aFJAOSIJeB2ZVm59uzhe4mVFpigoy0KhVtztTxsfqaGtXmrsXoThY=
Received: from DM6PR02CA0046.namprd02.prod.outlook.com (2603:10b6:5:177::23)
 by BYAPR02MB4613.namprd02.prod.outlook.com (2603:10b6:a03:57::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2495.20; Mon, 2 Dec
 2019 13:02:40 +0000
Received: from SN1NAM02FT005.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::206) by DM6PR02CA0046.outlook.office365.com
 (2603:10b6:5:177::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2495.17 via Frontend
 Transport; Mon, 2 Dec 2019 13:02:40 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; grandegger.com; dkim=none (message not signed)
 header.d=none;grandegger.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT005.mail.protection.outlook.com (10.152.72.117) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2474.17
 via Frontend Transport; Mon, 2 Dec 2019 13:02:39 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1iblLb-00088Z-DR; Mon, 02 Dec 2019 05:02:39 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1iblLW-0007eF-A5; Mon, 02 Dec 2019 05:02:34 -0800
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1iblLP-0007b6-BB; Mon, 02 Dec 2019 05:02:27 -0800
From: Srinivas Neeli <srinivas.neeli@xilinx.com>
To: wg@grandegger.com, mkl@pengutronix.de, davem@davemloft.net,
 michal.simek@xilinx.com, appanad@xilinx.com
Subject: [PATCH V2 2/2] can: xilinx_can: Fix usage of skb memory
Date: Mon,  2 Dec 2019 18:32:11 +0530
Message-Id: <1575291731-11022-3-git-send-email-srinivas.neeli@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1575291731-11022-1-git-send-email-srinivas.neeli@xilinx.com>
References: <1575291731-11022-1-git-send-email-srinivas.neeli@xilinx.com>
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(39860400002)(396003)(136003)(189003)(199004)(76176011)(70206006)(16586007)(966005)(478600001)(70586007)(2906002)(11346002)(446003)(316002)(426003)(2616005)(6306002)(50466002)(26005)(186003)(336012)(5660300002)(48376002)(107886003)(47776003)(6666004)(6636002)(356004)(8936002)(50226002)(81156014)(81166006)(9786002)(8676002)(14444005)(36756003)(305945005)(106002)(36386004)(7696005)(51416003)(4326008)(44832011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB4613; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6bc7e0f9-6233-4ca0-37fb-08d77727e96c
X-MS-TrafficTypeDiagnostic: BYAPR02MB4613:
X-Microsoft-Antispam-PRVS: <BYAPR02MB4613806F6660E613F96F2B49AF430@BYAPR02MB4613.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:3383;
X-Forefront-PRVS: 0239D46DB6
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uuVYC3rz0ntWLo4s9tO6C8I2l1gElYczOhUm2gusj/KjHbFgj96bDc1u/aQE6bV6abJMC33nf0kqRWzNaqkNQoYgzRM1OLld4TY2fg3P66xh5A4IfuuvtO7/WmYuXKIUXSUEBFZb6NA/nMgNa05XyyjK3L8dT+aBrJb6ujInCHxarfgEngs43u+JevI1XxoOkL4+utQ6w1jv6ZgSTt2/Vc0oG/CbN/+u0TKyF8NTaWox93UF1n2qBwdSw3jIwo5ZjubM5FHSC1ct+SmqL/TqJ6yLQSnUkOTtYrQshJ0dFjzJrDV6MB5Hr/YvVSuiqwg1/fqGOud7ndYWE5sdWg15A4YFxm0eqe7Fx+D2QKwa9Zi2VWZIKVqFZmZQNby4QDs2GZgBqLw6aWqEY4KHozmX+4g/xtN9WY6V5DaW+n/+C69BM5kP65OlmKe0U8wolg2t19ELwdsSm5SGBjrqyZ1dmS7YHR1kSsP+M6kXMqcBnrg=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2019 13:02:39.8356 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6bc7e0f9-6233-4ca0-37fb-08d77727e96c
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB4613
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_050242_759131_E3F04266 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.70.84 listed in list.dnswl.org]
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

As per linux can framework, driver not allowed to touch the skb memory
after can_put_echo_skb() call.
This patch fixes the same.
https://www.spinics.net/lists/linux-can/msg02199.html

Signed-off-by: Srinivas Neeli <srinivas.neeli@xilinx.com>
Reviewed-by: Appana Durga Kedareswara Rao <appana.durga.rao@xilinx.com>
---
 drivers/net/can/xilinx_can.c | 25 +++++++++++++------------
 1 file changed, 13 insertions(+), 12 deletions(-)

diff --git a/drivers/net/can/xilinx_can.c b/drivers/net/can/xilinx_can.c
index c5f05b994435..464af939cd8a 100644
--- a/drivers/net/can/xilinx_can.c
+++ b/drivers/net/can/xilinx_can.c
@@ -542,16 +542,17 @@ static int xcan_do_set_mode(struct net_device *ndev, enum can_mode mode)
 
 /**
  * xcan_write_frame - Write a frame to HW
- * @priv:		Driver private data structure
+ * @ndev:		Pointer to net_device structure
  * @skb:		sk_buff pointer that contains data to be Txed
  * @frame_offset:	Register offset to write the frame to
  */
-static void xcan_write_frame(struct xcan_priv *priv, struct sk_buff *skb,
+static void xcan_write_frame(struct net_device *ndev, struct sk_buff *skb,
 			     int frame_offset)
 {
 	u32 id, dlc, data[2] = {0, 0};
 	struct canfd_frame *cf = (struct canfd_frame *)skb->data;
 	u32 ramoff, dwindex = 0, i;
+	struct xcan_priv *priv = netdev_priv(ndev);
 
 	/* Watch carefully on the bit sequence */
 	if (cf->can_id & CAN_EFF_FLAG) {
@@ -587,6 +588,14 @@ static void xcan_write_frame(struct xcan_priv *priv, struct sk_buff *skb,
 		dlc |= XCAN_DLCR_EDL_MASK;
 	}
 
+	if (!(priv->devtype.flags & XCAN_FLAG_TX_MAILBOXES) &&
+	    (priv->devtype.flags & XCAN_FLAG_TXFEMP))
+		can_put_echo_skb(skb, ndev, priv->tx_head % priv->tx_max);
+	else
+		can_put_echo_skb(skb, ndev, 0);
+
+	priv->tx_head++;
+
 	priv->write_reg(priv, XCAN_FRAME_ID_OFFSET(frame_offset), id);
 	/* If the CAN frame is RTR frame this write triggers transmission
 	 * (not on CAN FD)
@@ -638,13 +647,9 @@ static int xcan_start_xmit_fifo(struct sk_buff *skb, struct net_device *ndev)
 			XCAN_SR_TXFLL_MASK))
 		return -ENOSPC;
 
-	can_put_echo_skb(skb, ndev, priv->tx_head % priv->tx_max);
-
 	spin_lock_irqsave(&priv->tx_lock, flags);
 
-	priv->tx_head++;
-
-	xcan_write_frame(priv, skb, XCAN_TXFIFO_OFFSET);
+	xcan_write_frame(ndev, skb, XCAN_TXFIFO_OFFSET);
 
 	/* Clear TX-FIFO-empty interrupt for xcan_tx_interrupt() */
 	if (priv->tx_max > 1)
@@ -675,13 +680,9 @@ static int xcan_start_xmit_mailbox(struct sk_buff *skb, struct net_device *ndev)
 		     BIT(XCAN_TX_MAILBOX_IDX)))
 		return -ENOSPC;
 
-	can_put_echo_skb(skb, ndev, 0);
-
 	spin_lock_irqsave(&priv->tx_lock, flags);
 
-	priv->tx_head++;
-
-	xcan_write_frame(priv, skb,
+	xcan_write_frame(ndev, skb,
 			 XCAN_TXMSG_FRAME_OFFSET(XCAN_TX_MAILBOX_IDX));
 
 	/* Mark buffer as ready for transmit */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
