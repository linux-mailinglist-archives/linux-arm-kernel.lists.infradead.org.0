Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2536DB9B7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 00:23:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7p+pe3oZnKhamp6+11+VbF9hG5hJei/zyu1tOG8X8nk=; b=dVK2uxOrS/Lmak
	2Vhqex6H86ooJB7OmspTODPftop1MvPxwCyxz8cqCLt5u6ZW6t5g1Giv3parlU8yANYpTHHbfEsIG
	1ZkKnshkN9gVAc8/vCOvcUCDzze+re939lqtFhIOd0ysQjArmx+UmE+JDQbvG4IP3F+QH7TlNsrzB
	Y6p32HdEwF8tzGaddXY9Mn+DbQt9t80ERIcVOO1Mot4mbZsJ7REryuWpHc+PQMb9wDrfzE8gi6bPg
	dBEax8CyVjflQz1SqyhOt5R+j6cSjDTuFrEMMeMWmsXnfr03cc+WPrCDEB2Tik4y7UvYGRAkWlZM3
	RtqA68pmEVQpnYjZu4+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLEBA-0003wZ-HA; Thu, 17 Oct 2019 22:23:32 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLEAw-0003vE-Pw
 for linux-arm-kernel@bombadil.infradead.org; Thu, 17 Oct 2019 22:23:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RaBjlHlR9V8fH0PfxX3zJ8UedOQwVCgeMBZU7PUoWP4=; b=ZryC9DQRnW1/9cXKPoIW3+UxVH
 k/3BwZPTKXmdudOyrwu6j8Mo+1VGxUOyeZyhgVPZCffCoP0MKQADbkRJLzWVsmTo3qcxNWR33k/97
 /PNemuhX9RB8/2DFAL76F2LY3n9+E6xOGBHsrWJPZTIXEHKmEHJv3z1axhj7LNbJJmGeLQYfwcC1W
 qEhJj/8NFrikSH5MVv2xTOSlADYifUkujgqkhXnBn2mFPVrwjCWTSY2eU9+XFEoWRLdfApoG/IekF
 z59is468ll57bJbGVFQTiSh5U8LA7+bbYxo7yao/i7k0GlslAgxObf2QTU/ON775hcOzW/8Tq1oVe
 PCSzaNDQ==;
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLEAs-0008Ns-Ok
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 22:23:17 +0000
X-Originating-IP: 86.202.229.42
Received: from localhost (lfbn-lyo-1-146-42.w86-202.abo.wanadoo.fr
 [86.202.229.42])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 194B61BF203;
 Thu, 17 Oct 2019 22:22:34 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: "David S . Miller" <davem@davemloft.net>
Subject: [PATCH net-next v3 1/2] dt-bindings: net: lpc-eth: document optional
 properties
Date: Fri, 18 Oct 2019 00:22:30 +0200
Message-Id: <20191017222231.29122-2-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191017222231.29122-1-alexandre.belloni@bootlin.com>
References: <20191017222231.29122-1-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
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
children (phys for example), and mdio node must be present.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
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
