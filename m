Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F1341F3B7C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 15:12:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W+kFf3nsEK780YwvhCrsiiHEbV8hHEE1aLkblOdJN9I=; b=jATeQEiWZUZ26+
	ye6QS6xT/0B+aWFNuedjD9Uj2uykiyZ2wKp6q++0+EfIJv8Z0KuO14i2gGSzURp7wc5Xg+m8vC4Yw
	Hh+ATRsdB7CE1tecDLvaaLWYT2KNunSGpdaTBzxNK3EuUGP1fkEyV7lcyPhUFLfh5CfmWUHNUhO6p
	sW9HFKQGZssIBAVKCBOUfDLM7Zuaj2lOdMYbHtmzk5CU5bVqt+5uYn+zjKaQSv9iqnLGmh/QTfwyG
	f1u+NNWlQIz9mW4CZ0CK8tD/yVBosVPVlRVuRexE8ndJ3Je7sTQuExQ761rImV8sQWPbcYJ9CsiJO
	dqpRBFviB6Ycnq0NSL0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jie2w-0001CX-SC; Tue, 09 Jun 2020 13:12:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jie2q-0001Bn-34
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 13:12:01 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jie2l-0005rI-Ih; Tue, 09 Jun 2020 15:11:55 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jie2l-0005x4-4l; Tue, 09 Jun 2020 15:11:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: netdev@vger.kernel.org
Subject: [PATCH] net: mvneta: Fix Serdes configuration for 2.5Gbps modes
Date: Tue,  9 Jun 2020 15:11:52 +0200
Message-Id: <20200609131152.22836-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_061200_129370_601C368A 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Marvell MVNETA Ethernet controller supports a 2.5Gbps SGMII mode
called DRSGMII. Depending on the Port MAC Control Register0 PortType
setting this seems to be either an overclocked SGMII mode or 2500BaseX.

This patch adds the necessary Serdes Configuration setting for the
2.5Gbps modes. There is no phy interface mode define for overclocked
SGMII, so only 2500BaseX is handled for now.

As phy_interface_mode_is_8023z() returns true for both
PHY_INTERFACE_MODE_1000BASEX and PHY_INTERFACE_MODE_2500BASEX we
explicitly test for 1000BaseX instead of using
phy_interface_mode_is_8023z() to differentiate the different
possibilities.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/ethernet/marvell/mvneta.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/marvell/mvneta.c b/drivers/net/ethernet/marvell/mvneta.c
index 51889770958d8..3b13048931412 100644
--- a/drivers/net/ethernet/marvell/mvneta.c
+++ b/drivers/net/ethernet/marvell/mvneta.c
@@ -109,6 +109,7 @@
 #define MVNETA_SERDES_CFG			 0x24A0
 #define      MVNETA_SGMII_SERDES_PROTO		 0x0cc7
 #define      MVNETA_QSGMII_SERDES_PROTO		 0x0667
+#define      MVNETA_DRSGMII_SERDES_PROTO	 0x1107
 #define MVNETA_TYPE_PRIO                         0x24bc
 #define      MVNETA_FORCE_UNI                    BIT(21)
 #define MVNETA_TXQ_CMD_1                         0x24e4
@@ -4966,8 +4967,10 @@ static int mvneta_port_power_up(struct mvneta_port *pp, int phy_mode)
 	if (phy_mode == PHY_INTERFACE_MODE_QSGMII)
 		mvreg_write(pp, MVNETA_SERDES_CFG, MVNETA_QSGMII_SERDES_PROTO);
 	else if (phy_mode == PHY_INTERFACE_MODE_SGMII ||
-		 phy_interface_mode_is_8023z(phy_mode))
+		 phy_mode == PHY_INTERFACE_MODE_1000BASEX)
 		mvreg_write(pp, MVNETA_SERDES_CFG, MVNETA_SGMII_SERDES_PROTO);
+	else if (phy_mode == PHY_INTERFACE_MODE_2500BASEX)
+		mvreg_write(pp, MVNETA_SERDES_CFG, MVNETA_DRSGMII_SERDES_PROTO);
 	else if (!phy_interface_mode_is_rgmii(phy_mode))
 		return -EINVAL;
 
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
