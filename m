Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E087B92E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 07:41:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AfPfV7+iMA9tbOLveAm4I0JcgeTc7wEG5iHmmPpSD0U=; b=SjoZiGqMqWGXPA
	gr2tt/z995OHsPBkaF2iUmA5ty5yxbAArSKgFahFd7EJSzHsXWpU2mSuF4IIbBnbNYogAAC9hPzlM
	jyWP5USr9swzXZP3B0WC3JP1KDTEOiGY2CGZmXYSB5rZxhMv+fKclvbL8y3UmRgADVALEG/aQMpMm
	8rs27PZA/J6Axt7VC2m8yHEDp8zVenpQF0qrGHTRA2ngc45NaZDGnf2Nz7scVoVVOb6HPYaanTdq1
	bnw6K/rirnVEpEpCjnK9jXrHWXNubm3HsdGvXb90v7BCa9IsTBK5Wl193cXyA45rIK1mUFC4gMGwG
	9we26eWU7IVX/iXPyYEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hshMN-0004Yw-U9; Wed, 31 Jul 2019 05:41:12 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hshLK-0003A8-Bm
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 05:40:08 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id B12C42D48;
 Wed, 31 Jul 2019 01:40:05 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 31 Jul 2019 01:40:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=0O62JZjgJ5QLr
 L+NrQmOcgmUjOYAyXoPaY3TSYq6NkU=; b=PeUY4OthXsQELTNecq8gvuEu8NrQ1
 B8Yx8cbUXcO9sI4NbDpAvPFRHlVoe9Bk+uuzoZlwjYh08Q+YCiALoTJCg66Deb8H
 zwU8K9JfXdl62aJqMyhE5NLi1Q0xx5BlRwfd/m15qswoS0CVw6EuHUBal/tX1H3t
 NcwkbqPAQEoc6Om/f2rUAwQk/e932trLP2KusOvbr8YXnxRq/pUlmU5+2R0uK3sS
 VveF2cQix/mH7ifTk48km4BUPbbI+jyfdJ5bn8kz+0QjZT2Y7cHUwV6Sa04ntORO
 +xvrUVkyYqmdieC02NRe2N3P8cFsB0HkYTZdd/tzFqhorugK3XkSyXKrw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=0O62JZjgJ5QLrL+NrQmOcgmUjOYAyXoPaY3TSYq6NkU=; b=l9y9hjBc
 W01fem2UFgQ7LPLCXE9JzoZX9af+uDJpYhonlItmeJ5H9KCvibgyXhgisOmju11Q
 Po34R9vvzdARl1J235y74YN+RyTq3h21eNs7gQWcDbalCPdH9XcGe+d16SUKC5qS
 1wMFHKk/h5bfPhQpqOTFRxNDgHprp/8cfVs/PYMgvmhNbDKkYjjTjgutA+P+nO93
 PEdI0jpn0gQAFaFr8tOR6pWVcCCcFztGdomBi5+XBGn9+B9IAibqRKPA2Vqtd1J3
 yq8JyeqbnfUsg+eKzgEtdBdBZK8vaqCAtOB48GcjHxouTHhWmH9eBP/HRMGs5Ajz
 xGd+9BW3P3Ac1w==
X-ME-Sender: <xms:tSlBXYoCaoCGTP5YseUw3k970Pdca3D1phAZpM3EOBqPWrJyTztfsA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrleeggdelkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghj
 rdhiugdrrghuqeenucfkphepvddtvddrkedurddukedrfedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgep
 ud
X-ME-Proxy: <xmx:tSlBXW1ja71Z78rQxUX_xpEFaGKgaDUzm5na89isVHxX8mfBNONlLA>
 <xmx:tSlBXUhV0k-BVCUG5o2m-zzlVEb3N3x8HpAGly0Ltu3ok9P47OtwhA>
 <xmx:tSlBXdklflOkqoWdXq7hhrX99H0UxNdf5-Gm5H12Nsdjt3WC1aQLRg>
 <xmx:tSlBXcycFBRGV7WRuMydgA4RR_X2Ry8hPov50qg_EhF3Ussntp65eg>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 52EC180059;
 Wed, 31 Jul 2019 01:40:01 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v2 3/4] net: ftgmac100: Add support for DT phy-handle
 property
Date: Wed, 31 Jul 2019 15:09:58 +0930
Message-Id: <20190731053959.16293-4-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190731053959.16293-1-andrew@aj.id.au>
References: <20190731053959.16293-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_224006_610599_5891517D 
X-CRM114-Status: GOOD (  15.67  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
