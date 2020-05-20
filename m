Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA9F1DB884
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 17:41:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KHD5zU8xSbWp6B6hDome1+a7ydtvMFZfCw67RV0611g=; b=Z34cIKfH7vHXsY
	4i/f1lBO8sA59Vsi63FjpGpZRfqrA6WHYjPAoqGlOKr6IxZ/CcEkPV+TzcbIn07USRHzOsT1uVww+
	lOMx+f9+bNKEorhoFecPfNgkZHNBoIPcME4cjMyCma0M3xfiQtPLl1mr3A/hkUxsH//CQSTrX/k13
	bLEMjMiiLo4v0UFSDKDMmVYMj7zGL1+gHdj0QWIS6hC3C/F2c1S2k4X4W/uRAxJk25lDS0rsNYV/7
	OLIgwrOlJsnaL3RZHxsNX9aBVeMwbvkJgQRIt/JM0ICBdzA5vPurzvDnrbAFwnrgoWNuZx3szyCDO
	QRaVdwoj4e/ilj3QJt7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbQqb-0000hV-2o; Wed, 20 May 2020 15:41:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbQqQ-0000gc-DE
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 15:41:23 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jbQqM-0008V5-GX; Wed, 20 May 2020 17:41:18 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jbQqL-0003jR-Jw; Wed, 20 May 2020 17:41:17 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v8 5/5] dt-bindings: arm: fsl: add different Protonic boards
Date: Wed, 20 May 2020 17:41:16 +0200
Message-Id: <20200520154116.12909-6-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200520154116.12909-1-o.rempel@pengutronix.de>
References: <20200520154116.12909-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_084122_448535_E20E65BF 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Oleksij Rempel <o.rempel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add Protonic PRTI6Q, WD2, RVT, VT7 boards.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index cd3fbe7e39487..a1657505b3357 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -119,6 +119,8 @@ properties:
               - fsl,imx6q-sabreauto
               - fsl,imx6q-sabrelite
               - fsl,imx6q-sabresd
+              - prt,prti6q                # Protonic PRTI6Q board
+              - prt,prtwd2                # Protonic WD2 board
               - technexion,imx6q-pico-dwarf   # TechNexion i.MX6Q Pico-Dwarf
               - technexion,imx6q-pico-hobbit  # TechNexion i.MX6Q Pico-Hobbit
               - technexion,imx6q-pico-nymph   # TechNexion i.MX6Q Pico-Nymph
@@ -170,6 +172,8 @@ properties:
               - emtrion,emcon-mx6-avari   # emCON-MX6S or emCON-MX6DL SoM on Avari Base
               - fsl,imx6dl-sabreauto      # i.MX6 DualLite/Solo SABRE Automotive Board
               - fsl,imx6dl-sabresd        # i.MX6 DualLite SABRE Smart Device Board
+              - prt,prtrvt                # Protonic RVT board
+              - prt,prtvt7                # Protonic VT7 board
               - technexion,imx6dl-pico-dwarf   # TechNexion i.MX6DL Pico-Dwarf
               - technexion,imx6dl-pico-hobbit  # TechNexion i.MX6DL Pico-Hobbit
               - technexion,imx6dl-pico-nymph   # TechNexion i.MX6DL Pico-Nymph
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
