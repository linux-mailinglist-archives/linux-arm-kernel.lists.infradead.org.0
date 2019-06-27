Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0164657FBE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 11:55:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wEdqIEs3bB9vEsxH+JfOgBXDi4zqTxO6fKIOtHVo9Ng=; b=pt9uS+Fsv7kDra
	CFE1oRh60wnvvhTYbMR32XNl8Hd/M0emhnl4AMxeEmxkIlOvAy4IU0A4bDQ8amlSjztsPRQZzwg7u
	/qf606XsiuVcfp3X2/NNtKVUkiGjl5aSzgiH1YejQwtZNddJrJuR4CScAxhL3XdpO5bVXtmC4G4M0
	XiDYmGCBjTJrlt40iylSJFoNmsy+ddAwEPBlGH3lzTxhjHyMbNc/iIGyBYSPNcfaW/7xKSiNxa3nF
	eohT04bM/isuCi8dA3pkea/as1wwmkRlM106Tep+2/Z71/wjnPt+/KG4p+vkURpoYJikoJgdlR6l8
	k5gHKjJHlvmVrkAY7R1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgR8C-0007AI-If; Thu, 27 Jun 2019 09:55:52 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgR4C-0003JT-Lo
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 09:51:46 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id CCDB524000A;
 Thu, 27 Jun 2019 09:51:40 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Gregory Clement <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>
Subject: [PATCH v2 12/19] phy: mvebu-cp110-comphy: Update comment about
 powering off all lanes at boot
Date: Thu, 27 Jun 2019 11:50:57 +0200
Message-Id: <20190627095104.22529-13-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190627095104.22529-1-miquel.raynal@bootlin.com>
References: <20190627095104.22529-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_025145_093937_F082478A 
X-CRM114-Status: GOOD (  14.44  )
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

Now that all COMPHY modes are supported by the driver, update the
comment stating that mvebu_comphy_power_off() should be called for
each lane. This is still wrong because for compatibility reasons, it
might break users running an old firmware (the driver only uses SMC
calls for SATA, USB and PCIe configuration, there is no code in Linux
to fallback on in these cases.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/phy/marvell/phy-mvebu-cp110-comphy.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/marvell/phy-mvebu-cp110-comphy.c b/drivers/phy/marvell/phy-mvebu-cp110-comphy.c
index 3fb5517a6d30..36b2056eac99 100644
--- a/drivers/phy/marvell/phy-mvebu-cp110-comphy.c
+++ b/drivers/phy/marvell/phy-mvebu-cp110-comphy.c
@@ -941,9 +941,11 @@ static int mvebu_comphy_probe(struct platform_device *pdev)
 		phy_set_drvdata(phy, lane);
 
 		/*
-		 * Once all modes are supported in this driver we should call
+		 * All modes are supported in this driver so we could call
 		 * mvebu_comphy_power_off(phy) here to avoid relying on the
-		 * bootloader/firmware configuration.
+		 * bootloader/firmware configuration, but for compatibility
+		 * reasons we cannot de-configure the COMPHY without being sure
+		 * that the firmware is up-to-date and fully-featured.
 		 */
 	}
 
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
