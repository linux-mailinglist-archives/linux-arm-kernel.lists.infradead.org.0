Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17FE41FAB44
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 10:32:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=19IYbg6BgwVqZE9po/+Z9iNtmiu975WrkylFcdhM5Yg=; b=VcSNogLlid8DKj
	C+LdK7Kb3bcaba0nt2TallMPrjVpMz5daao0Sgoba9Dh+t3hfXMgUdfpFQjNYx6eamc26rz4ppIhq
	iifgzZxIMumABAb7X6rbkFQpnq6TRcc6o2/N1OWmvN0TF4FGx9k0af9vncS+gdmMKPlX1/u7sYL41
	N6x6iUtczV1CmwECswzo18TgnI13Wke+uZeUq74di/2wlDgKJJOnjnunx0E5TZSwkT8e2jkdYrp8n
	z5+3y317Qv255XF/Q2/+LuoW3vJ7Bl+j4fqRdde1vackDxkRC5/+9QBaEzNBgcA+b9UCYKPK9Iq0O
	2O9Tyt0GIZ7vx7L2B2Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl70i-00007M-Tq; Tue, 16 Jun 2020 08:32:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl70X-00006a-Ep
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 08:31:50 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jl70Q-0002wa-Ov; Tue, 16 Jun 2020 10:31:42 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jl70P-0002HU-57; Tue, 16 Jun 2020 10:31:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: netdev@vger.kernel.org
Subject: [PATCH 2/2] net: ethernet: mvneta: Add 2500BaseX support for SoCs
 without comphy
Date: Tue, 16 Jun 2020 10:31:40 +0200
Message-Id: <20200616083140.8498-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200616083140.8498-1-s.hauer@pengutronix.de>
References: <20200616083140.8498-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_013149_497011_5148CF19 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kernel@pengutronix.de, Sascha Hauer <s.hauer@pengutronix.de>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The older SoCs like Armada XP support a 2500BaseX mode in the datasheets
referred to as DR-SGMII (Double rated SGMII) or HS-SGMII (High Speed
SGMII). This is an upclocked 1000BaseX mode, thus
PHY_INTERFACE_MODE_2500BASEX is the appropriate mode define for it.
adding support for it merely means writing the correct magic value into
the MVNETA_SERDES_CFG register.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/ethernet/marvell/mvneta.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/marvell/mvneta.c b/drivers/net/ethernet/marvell/mvneta.c
index 9933eb4577d43..23d41550edb0d 100644
--- a/drivers/net/ethernet/marvell/mvneta.c
+++ b/drivers/net/ethernet/marvell/mvneta.c
@@ -110,6 +110,7 @@
 #define MVNETA_SERDES_CFG			 0x24A0
 #define      MVNETA_SGMII_SERDES_PROTO		 0x0cc7
 #define      MVNETA_QSGMII_SERDES_PROTO		 0x0667
+#define      MVNETA_HSGMII_SERDES_PROTO		 0x1107
 #define MVNETA_TYPE_PRIO                         0x24bc
 #define      MVNETA_FORCE_UNI                    BIT(21)
 #define MVNETA_TXQ_CMD_1                         0x24e4
@@ -3549,6 +3550,11 @@ static int mvneta_config_interface(struct mvneta_port *pp,
 			mvreg_write(pp, MVNETA_SERDES_CFG,
 				    MVNETA_SGMII_SERDES_PROTO);
 			break;
+
+		case PHY_INTERFACE_MODE_2500BASEX:
+			mvreg_write(pp, MVNETA_SERDES_CFG,
+				    MVNETA_HSGMII_SERDES_PROTO);
+			break;
 		default:
 			return -EINVAL;
 		}
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
