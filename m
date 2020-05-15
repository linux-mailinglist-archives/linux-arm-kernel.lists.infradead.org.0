Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6571D4CE7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 13:43:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ej9mqNBjObk1jpqXvFLTv1aIQPpXmw1P10oApD9TjaU=; b=gWoeVlTnHxc4Vg
	YpSLpDQWTyZCK5LI7noJWiRBJZBhtpZZsqQCH5Bb61723YntN1MmhRhJUgc7j1xjeBhHQISUoqZEc
	dq2LKXbQpSLX5+JEKcdc6v93nIfyyZm+Lez5mhQi4+WbFz1rvdD39YEsse+oJopGIqrDgPCo18mpH
	D4OepomBYzel1ljYOgC3bDeiTNYOCFQ2OdRRipuuIxeeNRE0Xv7hQWQaSMlfD9FEoGUGPczewJj1v
	BUeUhAKcKkXxLJkSZKUxc126khI6BylmbY+Sgg0ug83CdhvV5ZEEtTlg6f50mO/yUMTAZbCMQVVDb
	A0G74ceBjQZDBNQldhPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZYkJ-0001yZ-K4; Fri, 15 May 2020 11:43:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZYj6-0000qz-E0
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 11:42:06 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>)
 id 1jZYiz-0000Jx-KQ; Fri, 15 May 2020 13:41:57 +0200
Received: from str by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>)
 id 1jZYiy-0001i7-EV; Fri, 15 May 2020 13:41:56 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH] ARM: dts: imx7d-pinfunc: add input mux for ENET2 mdio
Date: Fri, 15 May 2020 13:41:51 +0200
Message-Id: <20200515114151.6516-1-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: str@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_044204_480141_B75BA86B 
X-CRM114-Status: GOOD (  11.32  )
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
Cc: linux-arm-kernel@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the missing input mux for ENET2 mdio. Without this setting, it is not
possible to read the MDIO answers back from the PHY.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boot/dts/imx7d-pinfunc.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx7d-pinfunc.h b/arch/arm/boot/dts/imx7d-pinfunc.h
index 08ca1608fdb1..69f2c1ec8254 100644
--- a/arch/arm/boot/dts/imx7d-pinfunc.h
+++ b/arch/arm/boot/dts/imx7d-pinfunc.h
@@ -592,7 +592,7 @@
 #define MX7D_PAD_UART2_RX_DATA__ECSPI1_SS3                        0x0130 0x03A0 0x0000 0x3 0x0
 #define MX7D_PAD_UART2_RX_DATA__ENET2_1588_EVENT1_IN              0x0130 0x03A0 0x0000 0x4 0x0
 #define MX7D_PAD_UART2_RX_DATA__GPIO4_IO2                         0x0130 0x03A0 0x0000 0x5 0x0
-#define MX7D_PAD_UART2_RX_DATA__ENET2_MDIO                        0x0130 0x03A0 0x0000 0x6 0x0
+#define MX7D_PAD_UART2_RX_DATA__ENET2_MDIO                        0x0130 0x03A0 0x0574 0x6 0x1
 #define MX7D_PAD_UART2_TX_DATA__UART2_DCE_TX                      0x0134 0x03A4 0x0000 0x0 0x0
 #define MX7D_PAD_UART2_TX_DATA__UART2_DTE_RX                      0x0134 0x03A4 0x06FC 0x0 0x3
 #define MX7D_PAD_UART2_TX_DATA__I2C2_SDA                          0x0134 0x03A4 0x05E0 0x1 0x0
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
