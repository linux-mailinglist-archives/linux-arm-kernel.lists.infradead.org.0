Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 559317843F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 06:40:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AfPfV7+iMA9tbOLveAm4I0JcgeTc7wEG5iHmmPpSD0U=; b=DLyDmT1o/7k3Jj
	7UTHSYzXLDOUPJKPAQOahe/IJGGaL/fMvBaUQNZNmTFS4caP3aWUCW29ATyW6gXFjUWJqqH+ej3Vs
	E+pVwJ8Savzp7sr5rK/s4mJ7P55cJQ7c7HhBjBFCWZvQU8Lk33WGNA7+CCr/IXsyRI4wlbyqH4tGE
	u23/IucmJC6kGbXzTuhtQZ7Zrb8471RiyVUdpYgy/UL1BlCEnGNjKkqMrK+LtrW+iKZlF4Adqy0FG
	BYe7sf2NIC/OxaewewVUzMqiZbGSiBpNRw7RV+8HSCSNYCTIAzlhjF1H5AkmgV+4zUQznuxvblcV2
	THsWRcsI4sSvNe66PA8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrxSl-0006EY-R6; Mon, 29 Jul 2019 04:40:43 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrxRh-0004PG-90
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 04:39:38 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id A763BED3;
 Mon, 29 Jul 2019 00:39:36 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 29 Jul 2019 00:39:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=0O62JZjgJ5QLr
 L+NrQmOcgmUjOYAyXoPaY3TSYq6NkU=; b=M39QYMfJvmF34m0F092xDjrNlqtey
 TcDrZcHoNVv/DuoUBHTxDnmIj9kLKh8mcII0JfLc0aHjvTN2VP3UcRu/K2Qv9wWP
 8amOEr2Wbin8hkmkvWmvHd5DaQw36yl5NQUrZEAaoaJ4pRRpX7QyWzT8L520cHCl
 LzWcMF0J2H2A55kItjqmkkg94kpnbejOcp2eXvNczx5mp58QPL1w+GHzeCzvjHg4
 R7bfv2orlCT2SrF8jqQNmKXXt/+a8CGvI5Kx1bKaAZNeOeEDlv362JKeueT4pH5C
 OcrgL5NrIpXxa63z+F9c3U5+JUOTEKR27GZcapN3oiQ94OwZOjRzxPOqw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=0O62JZjgJ5QLrL+NrQmOcgmUjOYAyXoPaY3TSYq6NkU=; b=VqSe5P2v
 1nx4K6Dg1fwueW6zmobY6MbpitDiepCu+bTVe7TETAK+L509AmSHAbA6Jkvkwwhc
 27dxkzGRVA9J9/pWzS5b2AfuhSsFP/sxp8vRqXgfxhJAz64Mc1nNNcFEWElYSFaO
 aheu4LnN2YMnLLi0Y0xN00mfjqr3KJ3l9hOyAUuX/UmYcWKnpLut1esTE3f5h6Uw
 Xg79ziZQA129+sKzpdHZHneQ9j3R5+hKFi+lStu1HToceAadEKzKDuHykda8dbtH
 WwwIws+L74hZz5XLHdOzQ6dyNuy14YeVv1IhmUcQCnrfsZq2VjEimn6eMOANRz1G
 8hTKRSMRP/wK3A==
X-ME-Sender: <xms:iHg-XUDaR7E92R-1oRKC743X3jb5A341mVMuHgkWM-9eG4t353ib3Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrledtgdekgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghj
 rdhiugdrrghuqeenucfkphepvddtvddrkedurddukedrfedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgep
 ud
X-ME-Proxy: <xmx:iHg-XcVJ0EA4RGccMtrdT0fSq5b_4yVArVAvuTERKGTHfVFBwYd2mw>
 <xmx:iHg-Xcp5p5RyDLTCpASP-dRbhuEV6mCcMzEypwBS6w-F6v3aG1wqLQ>
 <xmx:iHg-XZxdj2ICCXlZcpZ9ctP9ktyAkUdJxMEn-LpDCXvZ1AMJeLF8Hw>
 <xmx:iHg-XTqqqAAjzldzjkgueTOHJETIMDfkUU1YlVhelcyN-Z13lVh0FQ>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 8F8218005C;
 Mon, 29 Jul 2019 00:39:32 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: netdev@vger.kernel.org
Subject: [PATCH 3/4] net: ftgmac100: Add support for DT phy-handle property
Date: Mon, 29 Jul 2019 14:09:25 +0930
Message-Id: <20190729043926.32679-4-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190729043926.32679-1-andrew@aj.id.au>
References: <20190729043926.32679-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_213937_515771_3646627C 
X-CRM114-Status: GOOD (  15.71  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, andrew@lunn.ch, f.fainelli@gmail.com,
 linux-aspeed@lists.ozlabs.org, devicetree@vger.kernel.org,
 Andrew Jeffery <andrew@aj.id.au>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, joel@jms.id.au, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

phy-handle is necessary for the AST2600 which separates the MDIO
controllers from the MAC.

I've tried to minimise the intrusion of supporting the AST2600 to the
FTGMAC100 by leaving in place the existing MDIO support for the embedded
MDIO interface. The AST2400 and AST2500 continue to be supported this
way, as it avoids breaking/reworking existing devicetrees.

The AST2600 support by contrast requires the presence of the phy-handle
property in the MAC devicetree node to specify the appropriate PHY to
associate with the MAC. In the event that someone wants to specify the
MDIO bus topology under the MAC node on an AST2400 or AST2500, the
current auto-probe approach is done conditional on the absence of an
"mdio" child node of the MAC.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/net/ethernet/faraday/ftgmac100.c | 37 +++++++++++++++++++++---
 1 file changed, 33 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/faraday/ftgmac100.c b/drivers/net/ethernet/faraday/ftgmac100.c
index 030fed65393e..563384b788ab 100644
--- a/drivers/net/ethernet/faraday/ftgmac100.c
+++ b/drivers/net/ethernet/faraday/ftgmac100.c
@@ -17,6 +17,7 @@
 #include <linux/module.h>
 #include <linux/netdevice.h>
 #include <linux/of.h>
+#include <linux/of_mdio.h>
 #include <linux/phy.h>
 #include <linux/platform_device.h>
 #include <linux/property.h>
@@ -1619,8 +1620,13 @@ static int ftgmac100_setup_mdio(struct net_device *netdev)
 	if (!priv->mii_bus)
 		return -EIO;
 
-	if (priv->is_aspeed) {
-		/* This driver supports the old MDIO interface */
+	if (of_device_is_compatible(np, "aspeed,ast2400-mac") ||
+	    of_device_is_compatible(np, "aspeed,ast2500-mac")) {
+		/* The AST2600 has a separate MDIO controller */
+
+		/* For the AST2400 and AST2500 this driver only supports the
+		 * old MDIO interface
+		 */
 		reg = ioread32(priv->base + FTGMAC100_OFFSET_REVR);
 		reg &= ~FTGMAC100_REVR_NEW_MDIO_INTERFACE;
 		iowrite32(reg, priv->base + FTGMAC100_OFFSET_REVR);
@@ -1797,7 +1803,8 @@ static int ftgmac100_probe(struct platform_device *pdev)
 
 	np = pdev->dev.of_node;
 	if (np && (of_device_is_compatible(np, "aspeed,ast2400-mac") ||
-		   of_device_is_compatible(np, "aspeed,ast2500-mac"))) {
+		   of_device_is_compatible(np, "aspeed,ast2500-mac") ||
+		   of_device_is_compatible(np, "aspeed,ast2600-mac"))) {
 		priv->rxdes0_edorr_mask = BIT(30);
 		priv->txdes0_edotr_mask = BIT(30);
 		priv->is_aspeed = true;
@@ -1817,7 +1824,29 @@ static int ftgmac100_probe(struct platform_device *pdev)
 		priv->ndev = ncsi_register_dev(netdev, ftgmac100_ncsi_handler);
 		if (!priv->ndev)
 			goto err_ncsi_dev;
-	} else {
+	} else if (np && of_get_property(np, "phy-handle", NULL)) {
+		struct phy_device *phy;
+
+		phy = of_phy_get_and_connect(priv->netdev, np,
+					     &ftgmac100_adjust_link);
+		if (!phy) {
+			dev_err(&pdev->dev, "Failed to connect to phy\n");
+			goto err_setup_mdio;
+		}
+
+		/* Indicate that we support PAUSE frames (see comment in
+		 * Documentation/networking/phy.txt)
+		 */
+		phy_support_asym_pause(phy);
+
+		/* Display what we found */
+		phy_attached_info(phy);
+	} else if (np && !of_get_child_by_name(np, "mdio")) {
+		/* Support legacy ASPEED devicetree descriptions that decribe a
+		 * MAC with an embedded MDIO controller but have no "mdio"
+		 * child node. Automatically scan the MDIO bus for available
+		 * PHYs.
+		 */
 		priv->use_ncsi = false;
 		err = ftgmac100_setup_mdio(netdev);
 		if (err)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
