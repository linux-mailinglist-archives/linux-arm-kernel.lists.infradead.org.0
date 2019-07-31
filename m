Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A95C17C136
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:24:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lr/DAgzZoM+F1CiuyPOKvvJrGeEo5MQGBbmHhcoaqnw=; b=D0iGaq1V4Iec5g
	vogs0QtD54nV/2C9DL0SouKGTvBAV0hNj++5gRBlkoboFUdjGo6b9eFMGP/JWmIAxIHk15XgmP6gG
	1b69OaGkBRi1/hy9qhT3zDgEy+aN9pLhLutXY7l+l73sZKjW9o1SxCTg2QXBw7S/NyKnb47Nhjygz
	1rEVr+vWipmjZmGI/6Rbzfl7cLY3LJ3+Xrj2VDAf3DDvHIONTnNNcsD5EQMU9PWQXyYSOFUcfKgga
	B5Zjpkd9tO8V+pmiV/SVcF6Ty4DqDRYUxnUqy/aSQ2DdFREVDIS5279h7wnxTFxRX+i99z/oYwLsL
	YW9t53CpCsdBkjn0TLrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsneo-0005uS-0t; Wed, 31 Jul 2019 12:24:38 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsnc6-0002dQ-U4
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:21:53 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id AA893FF81A;
 Wed, 31 Jul 2019 12:21:42 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Gregory Clement <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>
Subject: [PATCH v3 10/19] phy: mvebu-cp110-comphy: Cosmetic change in a helper
Date: Wed, 31 Jul 2019 14:21:17 +0200
Message-Id: <20190731122126.3049-11-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190731122126.3049-1-miquel.raynal@bootlin.com>
References: <20190731122126.3049-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_052151_136665_EEF7F78B 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>, Russell King <linux@armlinux.org.uk>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>, Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Before adding more logic, simplify a bit the writing of the
mvebu_comphy_get_mode() helper by using a pointer instead of
referencing a configuration with the entire table name.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/phy/marvell/phy-mvebu-cp110-comphy.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/marvell/phy-mvebu-cp110-comphy.c b/drivers/phy/marvell/phy-mvebu-cp110-comphy.c
index 67050f98b3c6..c61469ed7cbe 100644
--- a/drivers/phy/marvell/phy-mvebu-cp110-comphy.c
+++ b/drivers/phy/marvell/phy-mvebu-cp110-comphy.c
@@ -265,16 +265,18 @@ static int mvebu_comphy_get_mode(bool fw_mode, int lane, int port,
 				 enum phy_mode mode, int submode)
 {
 	int i, n = ARRAY_SIZE(mvebu_comphy_cp110_modes);
+	const struct mvebu_comphy_conf *conf;
 
 	/* Unused PHY mux value is 0x0 */
 	if (mode == PHY_MODE_INVALID)
 		return 0;
 
 	for (i = 0; i < n; i++) {
-		if (mvebu_comphy_cp110_modes[i].lane == lane &&
-		    mvebu_comphy_cp110_modes[i].port == port &&
-		    mvebu_comphy_cp110_modes[i].mode == mode &&
-		    mvebu_comphy_cp110_modes[i].submode == submode)
+		conf = &mvebu_comphy_cp110_modes[i];
+		if (conf->lane == lane &&
+		    conf->port == port &&
+		    conf->mode == mode &&
+		    conf->submode == submode)
 			break;
 	}
 
@@ -282,9 +284,9 @@ static int mvebu_comphy_get_mode(bool fw_mode, int lane, int port,
 		return -EINVAL;
 
 	if (fw_mode)
-		return mvebu_comphy_cp110_modes[i].fw_mode;
+		return conf->fw_mode;
 	else
-		return mvebu_comphy_cp110_modes[i].mux;
+		return conf->mux;
 }
 
 static inline int mvebu_comphy_get_mux(int lane, int port,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
