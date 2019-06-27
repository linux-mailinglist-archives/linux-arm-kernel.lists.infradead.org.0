Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE6157FBD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 11:55:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0yNlGHLf6XD4q9n8LD2DF9U0dIOTORhJq7ME2Okp1Ow=; b=RrBbQBerA+Im3G
	VQSxLa2XEwGAJIBIBZIih4bxAjRwKLhAwJHuFMaYJHkaj7gbYzI0Nn/Kf/VndqHdm6qS6yFsk7UpG
	xXGi1GMIBzxtRSbyRktSFKvwOEM7U2rtmJaYv7mZQCYvvjNpWJ9sq/XMBvhkNs8S/eUJ/uR5qxO3z
	8HoGM1Ot+QMzrnAAn10f7BhOGW8l9xRHuqnoghBQ/paMo1eA23dQfXvWJ17P6SN8SngJeh06sftBo
	VTwvQ0OLHDembcUuI+8FaX12rrXnphcU3osCre4NZLnTfzYvz3vc8e29FoDyBqeO5/mhD6RTwAWRV
	lzQPLg1GNH0VDraRyaJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgR7g-0005aM-Sf; Thu, 27 Jun 2019 09:55:21 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgR47-0003Fa-Kr
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 09:51:41 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id BD7A4240019;
 Thu, 27 Jun 2019 09:51:35 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Gregory Clement <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>
Subject: [PATCH v2 10/19] phy: mvebu-cp110-comphy: Cosmetic change in a helper
Date: Thu, 27 Jun 2019 11:50:55 +0200
Message-Id: <20190627095104.22529-11-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190627095104.22529-1-miquel.raynal@bootlin.com>
References: <20190627095104.22529-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_025139_868388_B8F16B87 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
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
index 6f8ae72fb9a9..fa222cf8f47b 100644
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
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
