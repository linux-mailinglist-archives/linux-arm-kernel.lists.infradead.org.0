Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA81DA90F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 11:48:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QUYyreC45Z4Q0KaQ905iL3gbFoRcBx2mFq0T+XrMZdU=; b=NVABb8DbAEY8ev
	/BM810r+gLO3mdD0DtdqMW3UjVc5Y9WgaV63+3nkpD+osjB/JqFBMCZrnqbnazZGcI9FszRwJe7IR
	cvsqeyapvlAvTW7rhvLTurPVoezv0GHP/+LvWTgvTYjgtYqo0pB8fokHfpNrlJHF9hzLCAZDnuXb9
	JmUFidwm275ZxV3e3LXz/NWiUYUohPRV8jtXA/MiR1qRwYI/GV0ucNBPsOJcRY2YBFBRrgG8/jRHe
	AZGJI9oEfsW24U7Cj7tO1y2pnK6B+6POCrRJEqaSVFyT8CbafLK28nvlkzs2NMPi/wVN/M8pjrPg/
	OiCml21GMynCjXa+jLHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL2OL-0005M6-UQ; Thu, 17 Oct 2019 09:48:21 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL2OC-0005Ks-W6
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 09:48:14 +0000
X-Originating-IP: 86.207.98.53
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 8BD7320004;
 Thu, 17 Oct 2019 09:48:06 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: "David S . Miller" <davem@davemloft.net>
Subject: [PATCH v2 1/2] dt-bindings: net: lpc-eth: document optional properties
Date: Thu, 17 Oct 2019 11:47:56 +0200
Message-Id: <20191017094757.26885-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_024813_168833_94906046 
X-CRM114-Status: UNSURE (   7.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Vladimir Zapolskiy <vz@mleia.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Ethernet controller is also an mdio controller, to be able to parse
children (phys for example), #address-cells and #size-cells must be
present.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 Documentation/devicetree/bindings/net/lpc-eth.txt | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/lpc-eth.txt b/Documentation/devicetree/bindings/net/lpc-eth.txt
index b92e927808b6..cfe0e5991d46 100644
--- a/Documentation/devicetree/bindings/net/lpc-eth.txt
+++ b/Documentation/devicetree/bindings/net/lpc-eth.txt
@@ -10,6 +10,11 @@ Optional properties:
   absent, "rmii" is assumed.
 - use-iram: Use LPC32xx internal SRAM (IRAM) for DMA buffering
 
+Optional subnodes:
+- mdio : specifies the mdio bus, used as a container for phy nodes according to
+  phy.txt in the same directory
+
+
 Example:
 
 	mac: ethernet@31060000 {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
