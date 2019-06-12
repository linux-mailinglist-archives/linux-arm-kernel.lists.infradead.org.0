Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 429F541C36
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 08:28:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TuIYP4WVsNDoDrGAAEPFXpF4A8d14kGjxUZeRm9V/G4=; b=BewrI3STOo049F
	yJJFdDmFSshB9dx4xLN/LiGP3olL/3J9QbqIXoevifLb3mec46Erd6E8y4MoYz6UcNGqNcr5wn9/+
	hT4SodtNF0+uv8ZjrVYVAiQ0jp31LY9HmWxpQ9QtsZF1xxbqYItJxpMJ928hyyvNOebCu5Pi50leB
	L8lWKapnB1dED0A6hxjCl3nYFTGwyah32yhTTjTZhTrfC0EBbH1/6LHXn1uYXxRuXf881+lT7bti9
	hQ0xUin66/P567jM7IPX2b1Saq9h6DLiMiIvnGV4O44q5+HR6M2bqfVojjVyM6TT6DBoKG5mXB7mg
	DkTaWABHG+3KHEAiB0QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hawkN-000852-PK; Wed, 12 Jun 2019 06:28:35 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hawkC-000841-Qd; Wed, 12 Jun 2019 06:28:26 +0000
X-UUID: 219f8b9a6c3c442d803eb539877a6f00-20190611
X-UUID: 219f8b9a6c3c442d803eb539877a6f00-20190611
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <macpaul.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1338957400; Tue, 11 Jun 2019 22:28:18 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 11 Jun 2019 23:28:17 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 12 Jun 2019 14:28:14 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 12 Jun 2019 14:28:15 +0800
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Macpaul Lin <macpaul.lin@mediatek.com>, <linux-usb@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>, 
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] mtu3: fix setup packet response for HNP and SRP request
Date: Wed, 12 Jun 2019 14:28:07 +0800
Message-ID: <1560320892-30551-1-git-send-email-macpaul.lin@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-TM-SNTS-SMTP: CE1AD9F9C4AB7DD47709BB3955B3B7E2FF4BB35A299C25F5C5745B5492155FC12000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_232825_036814_A73B6D0A 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: wsd_upstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

1. Add OTG_HNP_REQD and OTG_SRP_REQD definitions in ch9.h.
2. When OTG_HNP_REQD and OTG_SRP_REQD has been received,
usb hardware must not enter TEST mode but need to response setup packet.
3. Add otg_srp_reqd and otg_hnp_reqd in struct ssusb_mtk for futher
implementation.

Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
---
 drivers/usb/mtu3/mtu3.h            |  4 ++++
 drivers/usb/mtu3/mtu3_gadget_ep0.c | 13 +++++++++++++
 include/uapi/linux/usb/ch9.h       |  5 +++++
 3 files changed, 22 insertions(+)

diff --git a/drivers/usb/mtu3/mtu3.h b/drivers/usb/mtu3/mtu3.h
index 76ecf12fdf62..bb8a31bc6e4d 100644
--- a/drivers/usb/mtu3/mtu3.h
+++ b/drivers/usb/mtu3/mtu3.h
@@ -226,6 +226,8 @@ struct otg_switch_mtk {
  * @dma_clk: dma_bus_ck clock for AXI bus etc
  * @dr_mode: works in which mode:
  *		host only, device only or dual-role mode
+ * @otg_srp_reqd: used for SRP request handling.
+ * @otg_hnp_reqd: used for HNP request handling.
  * @u2_ports: number of usb2.0 host ports
  * @u3_ports: number of usb3.0 host ports
  * @u3p_dis_msk: mask of disabling usb3 ports, for example, bit0==1 to
@@ -252,6 +254,8 @@ struct ssusb_mtk {
 	/* otg */
 	struct otg_switch_mtk otg_switch;
 	enum usb_dr_mode dr_mode;
+	bool otg_srp_reqd;
+	bool otg_hnp_reqd;
 	bool is_host;
 	int u2_ports;
 	int u3_ports;
diff --git a/drivers/usb/mtu3/mtu3_gadget_ep0.c b/drivers/usb/mtu3/mtu3_gadget_ep0.c
index 4da216c99726..1247c43a63e6 100644
--- a/drivers/usb/mtu3/mtu3_gadget_ep0.c
+++ b/drivers/usb/mtu3/mtu3_gadget_ep0.c
@@ -285,11 +285,24 @@ static int handle_test_mode(struct mtu3 *mtu, struct usb_ctrlrequest *setup)
 		dev_dbg(mtu->dev, "TEST_PACKET\n");
 		mtu->test_mode_nr = TEST_PACKET_MODE;
 		break;
+	case OTG_SRP_REQD:
+		dev_dbg(mtu->dev, "OTG_SRP_REQD\n");
+		mtu->ssusb->otg_srp_reqd = 1;
+		break;
+	case OTG_HNP_REQD:
+		dev_dbg(mtu->dev, "OTG_HNP_REQD\n");
+		mtu->ssusb->otg_hnp_reqd = 1;
+		break;
 	default:
 		handled = -EINVAL;
 		goto out;
 	}
 
+	if (mtu->ssusb->otg_srp_reqd || mtu->ssusb->otg_hnp_reqd) {
+		mtu->ep0_state = MU3D_EP0_STATE_SETUP;
+		goto out;
+	}
+
 	mtu->test_mode = true;
 
 	/* no TX completion interrupt, and need restart platform after test */
diff --git a/include/uapi/linux/usb/ch9.h b/include/uapi/linux/usb/ch9.h
index d5a5caec8fbc..545918c83fd1 100644
--- a/include/uapi/linux/usb/ch9.h
+++ b/include/uapi/linux/usb/ch9.h
@@ -143,6 +143,11 @@
 #define	TEST_SE0_NAK	3
 #define	TEST_PACKET	4
 #define	TEST_FORCE_EN	5
+/*
+ * OTG HNP and SRP REQD
+ */
+#define	OTG_SRP_REQD	6
+#define	OTG_HNP_REQD	7
 
 /* Status Type */
 #define USB_STATUS_TYPE_STANDARD	0
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
