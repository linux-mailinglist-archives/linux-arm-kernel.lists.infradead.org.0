Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE04F6ED7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 07:59:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZTdW+jgsvnkPBaUYJWMToDYIWxhx4DC9we9IoWhZFec=; b=KARI8pozTvxx5xPP8dHgOfsi1O
	kOEgo6BLlGLtYacVNjgDT0xZm1uM5F/pZel1cAVH4+ircFUMZfNLpXVvMPHtodCtJqZ2GGfBpN4Az
	IDXSeusECd6EoXDA7tshv51X35WT9yaiGF0QNQjDUJk+LsCOerhcH0XpjGLSLNff1qp5MXvYQbTOG
	lEmrheiBy2m9Ba00vscPNPf0s+wm+onfX7ZeKN+ajuuZDPetk8Xpq3JaxyjH7vW8NwjSiGfZLwz5G
	exYqtIfB/TdDc6JyUqN/Eyn6qknHGyq7Rht5z7JWm77UI3/6O6h1XZsUS2GWvX75czDaXpITzY5EB
	SS0ueoOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU3fW-0004h1-5O; Mon, 11 Nov 2019 06:59:22 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU3dp-0002zR-Hn
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 06:57:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1573455363;
 bh=6oOYDZnnvSD75V6ZmRJVa3Ar4J3K6bMR/ftChguqLOU=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=TGGJOWk4cz8sVGSLorIk4qjmC2qaGIIJLCcZsFFMYdWuBgB3mPIasN1GlAzehsWln
 q/TfXra4CdTu6D1F5nhNrlNEzvHtUuYdHq5wqAvya7a/zeeFC0xQqBlvuudyOxyVei
 gwwKSn+GuSg2xjCdkLBlszZu1/AqxXtY9zYp6tTA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.112]) by mail.gmx.com
 (mrgmx005 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MRmjw-1iJiZs3yIs-00TCYT; Mon, 11 Nov 2019 07:56:03 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Matthias Brugger <matthias.bgg@kernel.org>,
 Matthias Brugger <mbrugger@suse.com>,
 "David S . Miller" <davem@davemloft.net>,
 Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH V4 net-next 5/7] net: bcmgenet: Refactor register access in
 bcmgenet_mii_config
Date: Mon, 11 Nov 2019 07:55:39 +0100
Message-Id: <1573455341-22813-6-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573455341-22813-1-git-send-email-wahrenst@gmx.net>
References: <1573455341-22813-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:wwekawicxXhu5PocOcioXJGiprUWpRBl8u9NmXJgZD+mu75xj81
 XmbPqOePIUeIN3GyuM3kEhdBDsxmI9+BsG9//nTm2slFnUkeGXpLBuDPytelwxj/BR/yC40
 GmXHsivs2M3W6aAN/4Oyx3XSK1WSKsb+0sxwlCfbzj7rgzPiZpeY60Usmf8uhKqFOipvNWm
 iaYHN4MPEct4l+wvYp4QQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Ahc8IbfomGQ=:60kD43os0A5+n075oUNwl2
 LiqU0tC/fTJ1hZ+iAq3RnTW2sGZcgtRrZAy+cGNUUwDSXysvAGCGE7ZUjT9wceS0iAED445yv
 YQJ7Cy1GAMMF1B6NSQNIBqGLCm5UgjchJWJrPJ+w3M0nhdxUQEr2Jyg40fKHRHzHNPU8JmtBP
 Yae9K2h28Z3CGscz6C1+zVuHtItNkPjD6hv+cdNEG8jWXO87jOpBxyLVS7fb3yFBNoV6vuIDy
 UiSJzf4uRP0t/40a2Bp3FyNwpbjH8UKcUumY40EnXVM5Kd428CofPISnh5TpAGQ3fDb8q9iEm
 fKtWYOTghgv/dC/BlMdS36aYvglI8FQX/6kCfp48B1VY9gfYgirw2RYSMTE9A/BStYlld5CVq
 WiZ3GyYgWTn9zB0uOAU2WU/7w/6AjVXWSHk4i7EK/sUwB0NRGiM+/2vY7+CYe447Q0nH6z9Kr
 ykvynItrADStqO7p1nR4nm62V8SxBr+DQnwQg4HEpSkWGWCQZVvpOrHWanMAerut/dVza4fpx
 q9ztSe8897/zEPV6S/UYIY4Sw90qSAU9uumXPot6uni2Fvk9sQJMDnzEDEQXZgQd6sQPGdMq3
 M3g4G35RJIjgywjrBp+OP7rDibZHrp3c9WnGIg+UEzgXlZWVaPg+1k4ZKz0jY08/2wS4OSzsW
 549Vsv4ka4ndP2ylPN7Zk7Pw4irwQlWNTQIADebI/Ju2BAoesn+1b5LGMN6SkLTkj4qTm2da2
 MB40H7Oz8WUXK9TpMnq1cmvGtS3lizCY4P1mNcd953dhTx+8dvSCyiuGfl1bmgOZyhZr0w010
 RzIuwvgVNxSFY82rIMhr1b+2va5VYj1cioWy2a3Nkc7MZnuLlgRPr0Vx2Ubb+Mth9BimMET3f
 i81G76la7pY7GhnubJxuL8e+ThTJjGxJMhXAsy7PBpN9abNpfYg+PQ0jM+3tjjUEf0pvr7WZj
 HUk1ik5NhHObRrkJLDGw6j0PdlzpdFcg3OtJX6RF0/2vsObfSqi027HOlqjn7u1HTDKzeGtNL
 Y1QWwq63W008kg53VFkqA1k+zzINK9rCIEKOnXNpYJmuzqjTz4m2Md8Jxo4xBPTVHw2rWlDuB
 SPn14/7jfrjXrYKpmfHLNY5fN9quNnSmINjQ2k7Xk9QtP5dW7uFyl5lflK5ksoylZEdYIZBDx
 5epEeS3kXLECClahhw6UirOcOxLusGQNulFoeGl9yoXbb+a7YrDaP0MRAB2D2VSiOn8hqgmQ/
 HJL/xEml1FOUvekyWySaxBYjBV5aTv0YXpR7EjA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_225738_249081_1283077A 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Doug Berger <opendmb@gmail.com>, netdev@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The register access in bcmgenet_mii_config() is a little bit opaque and
not easy to extend. In preparation for the missing RGMII PHY modes
move all the phy name assignments into the switch statement and the
port register access to the end of the function. This make the code easier
to read and extend.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 drivers/net/ethernet/broadcom/genet/bcmmii.c | 35 +++++++++++++---------------
 1 file changed, 16 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/genet/bcmmii.c b/drivers/net/ethernet/broadcom/genet/bcmmii.c
index 6f291ee..611a6c0 100644
--- a/drivers/net/ethernet/broadcom/genet/bcmmii.c
+++ b/drivers/net/ethernet/broadcom/genet/bcmmii.c
@@ -213,11 +213,10 @@ int bcmgenet_mii_config(struct net_device *dev, bool init)
 		udelay(2);
 	}

-	priv->ext_phy = !priv->internal_phy &&
-			(priv->phy_interface != PHY_INTERFACE_MODE_MOCA);
-
 	switch (priv->phy_interface) {
 	case PHY_INTERFACE_MODE_INTERNAL:
+		phy_name = "internal PHY";
+		/* fall through */
 	case PHY_INTERFACE_MODE_MOCA:
 		/* Irrespective of the actually configured PHY speed (100 or
 		 * 1000) GENETv4 only has an internal GPHY so we will just end
@@ -229,11 +228,7 @@ int bcmgenet_mii_config(struct net_device *dev, bool init)
 		else
 			port_ctrl = PORT_MODE_INT_EPHY;

-		bcmgenet_sys_writel(priv, port_ctrl, SYS_PORT_CTRL);
-
-		if (priv->internal_phy) {
-			phy_name = "internal PHY";
-		} else if (priv->phy_interface == PHY_INTERFACE_MODE_MOCA) {
+		if (!phy_name) {
 			phy_name = "MoCA";
 			bcmgenet_moca_phy_setup(priv);
 		}
@@ -242,8 +237,7 @@ int bcmgenet_mii_config(struct net_device *dev, bool init)
 	case PHY_INTERFACE_MODE_MII:
 		phy_name = "external MII";
 		phy_set_max_speed(phydev, SPEED_100);
-		bcmgenet_sys_writel(priv,
-				    PORT_MODE_EXT_EPHY, SYS_PORT_CTRL);
+		port_ctrl = PORT_MODE_EXT_EPHY;
 		/* Restore the MII PHY after isolation */
 		if (bmcr >= 0)
 			phy_write(phydev, MII_BMCR, bmcr);
@@ -261,31 +255,34 @@ int bcmgenet_mii_config(struct net_device *dev, bool init)
 			port_ctrl = PORT_MODE_EXT_RVMII_50;
 		else
 			port_ctrl = PORT_MODE_EXT_RVMII_25;
-		bcmgenet_sys_writel(priv, port_ctrl, SYS_PORT_CTRL);
 		break;

 	case PHY_INTERFACE_MODE_RGMII:
 		/* RGMII_NO_ID: TXC transitions at the same time as TXD
 		 *		(requires PCB or receiver-side delay)
-		 * RGMII:	Add 2ns delay on TXC (90 degree shift)
 		 *
 		 * ID is implicitly disabled for 100Mbps (RG)MII operation.
 		 */
+		phy_name = "external RGMII (no delay)";
 		id_mode_dis = BIT(16);
-		/* fall through */
+		port_ctrl = PORT_MODE_EXT_GPHY;
+		break;
+
 	case PHY_INTERFACE_MODE_RGMII_TXID:
-		if (id_mode_dis)
-			phy_name = "external RGMII (no delay)";
-		else
-			phy_name = "external RGMII (TX delay)";
-		bcmgenet_sys_writel(priv,
-				    PORT_MODE_EXT_GPHY, SYS_PORT_CTRL);
+		/* RGMII_TXID:	Add 2ns delay on TXC (90 degree shift) */
+		phy_name = "external RGMII (TX delay)";
+		port_ctrl = PORT_MODE_EXT_GPHY;
 		break;
 	default:
 		dev_err(kdev, "unknown phy mode: %d\n", priv->phy_interface);
 		return -EINVAL;
 	}

+	bcmgenet_sys_writel(priv, port_ctrl, SYS_PORT_CTRL);
+
+	priv->ext_phy = !priv->internal_phy &&
+			(priv->phy_interface != PHY_INTERFACE_MODE_MOCA);
+
 	/* This is an external PHY (xMII), so we need to enable the RGMII
 	 * block for the interface to work
 	 */
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
