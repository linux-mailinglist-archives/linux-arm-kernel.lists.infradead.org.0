Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47CE04839F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 15:14:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+aecWU3pauIv8EFwF2OqnqqaqyAP/1stc5Q20gfHmDw=; b=MaKCFalCTgzPwB
	rvipvjFvOpFeGRgk/4ecd54dsFoSLsKNO4BvgJ6hOxyqT/0rwujofClKyTxLU8gxDpsO2UbcRWtS8
	+lFn+BURogZyrjcCKTtteq4aEneX3v3oVgEw4NlSYWTRlsiNCjK/i8NIQ6jnU+MSAJ6A4rHxrJeYK
	sFchGv2fa5Pg+l2evLh3BId4qDgBLDl2MzykKEL3oK+Epl5e9dFrEzJuI+HJeEFyK5XXRuOphCSsG
	pk9G4kK3GWUXEaQTq7SNE/TI3Dy4PDY0Vee2+kh7ThEtz+qlwr97/BqgI+h//Tb4S37QUXm8FjvlK
	WljmEtBjAKEw6pstbLCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcrSS-0008NS-UH; Mon, 17 Jun 2019 13:14:00 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcrSK-0008N9-JN
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 13:13:54 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MNOZO-1i0ZUq1BHO-00OktR; Mon, 17 Jun 2019 15:13:34 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jose Abreu <joabreu@synopsys.com>, "David S. Miller" <davem@davemloft.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Subject: [PATCH net-next] net: stmmac: fix unused-variable warning
Date: Mon, 17 Jun 2019 15:13:03 +0200
Message-Id: <20190617131327.2227754-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:3iQswqHwy9CHF3y1gp7c7xlBW7MRNJ6Fv/0O9bUwjPHV/LWGdIh
 Sg9soT5vhpPfNJhxJsqwCgkwuTEe0AEIYCVllZ3t2UQIugkzeIa/1LuEaIZUloY3QurmxNh
 gczDmibxxnKXOGvclLvdFNkq77keyFmY3/wMG0JJpWlQyapLFJEW43ks+VIlxcOEDqSZwS3
 OARaUsIkb9o2x/pv8mmcw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3iQy2mN8gLw=:a/aWCEZLxeIcdIwAmPzzUe
 xGLtrdS/+m+HkJbvQmw4YCcKRq+jjVA4Wtn+HPWhql6rNXFI2OSAEXwdCkt4iIvUgoATCu+57
 GS0GebKolVJMtTG0QEJlFFsIjyGO8m59rwwITRlcQggasDrAK8+rvAmkj0zXDQxH5nOcB/2WQ
 G9c81RQTG3axlhsfWamWceqs0YzM6AfyfS3NtMZWZ3xgTJhILdLuladwA70p/S8/0BnTTu3sS
 KgBZQkXn8EU9dMZSuJhwKGITr+O3U2A0GJnFezlKJmwLcpxABgMy2XseUoS8lYpD+HStwu7MN
 v5Lok7Nv1fo/vD0OPBH7p0XLNlDiRb1rfN2ouloulgNBCsKnL1A9bJ7n6UpOo1exVphGK8Tif
 hYs9W9CfOJzSMWLFoQd0w0JnNBjPYpaoLYfaQRueJ/d42aHeDlXu2KS4QfKp2aOaCDW2nGk42
 CFtLQrArAaoKywY3KbXVgonhi/2dFRFUch79pGpZBX+eX4KT4Qv7sLcRKGltK3ZYuIrvYIC6o
 4SMRIX3QMKVrsFsdr2IW+8d7+BwLB51x/8nuP82jiswqd2ExGYd0lujY7KUV5oRMDq3y/hipa
 jmjMn/gFYzIcsNHaLFxdR3Pi5aP/QyWpVbZW8FWNTZXLu8QxuM21jnQBn+UAns6Q8ZT5GRUgK
 PMho0FQJnlISs1mGsxCqrIbfXVdpNqvbxqe46DKNwVH93SXxuPwMlpfFho+kgiQ8xftV+c7+/
 PlChMgjnn4hc9Nlo2a5n9L+84eTAkFLeiaSmdA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_061352_939998_71152DBD 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Joao Pinto <jpinto@synopsys.com>, netdev@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Aaro Koskinen <aaro.koskinen@nokia.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When building without CONFIG_OF, we get a harmless build warning:

drivers/net/ethernet/stmicro/stmmac/stmmac_main.c: In function 'stmmac_phy_setup':
drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:973:22: error: unused variable 'node' [-Werror=unused-variable]
  struct device_node *node = priv->plat->phy_node;

Reword it so we always use the local variable, by making it the
fwnode pointer instead of the device_node.

Fixes: 74371272f97f ("net: stmmac: Convert to phylink and remove phylib logic")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index 4ca46289a742..a48751989fa6 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -970,14 +970,14 @@ static int stmmac_init_phy(struct net_device *dev)
 
 static int stmmac_phy_setup(struct stmmac_priv *priv)
 {
-	struct device_node *node = priv->plat->phylink_node;
+	struct fwnode_handle *fwnode = of_fwnode_handle(priv->plat->phylink_node);
 	int mode = priv->plat->interface;
 	struct phylink *phylink;
 
 	priv->phylink_config.dev = &priv->dev->dev;
 	priv->phylink_config.type = PHYLINK_NETDEV;
 
-	phylink = phylink_create(&priv->phylink_config, of_fwnode_handle(node),
+	phylink = phylink_create(&priv->phylink_config, fwnode,
 				 mode, &stmmac_phylink_mac_ops);
 	if (IS_ERR(phylink))
 		return PTR_ERR(phylink);
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
