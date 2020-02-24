Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F9016A0E4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 09:58:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7dIiOqiUCpG7VFxioVd/jGBBdEaQ8SrtvVTwlzsQgak=; b=on3HDSVjETzuhK
	nt7XuAmwb3na04bbjeFIgSafQWUt9hLha9ike4SW3+AMVXW0lS+DXH796+Z3SLWa0B145jhLRNeBr
	HuCIVvEYDBVKPCmzGckiy/+EAxu6vo9nLyDnibbmwA4tnV63VXr/nrKZYzyAMYis+sRwKy8pur9Kb
	iikxUfXz+gq7Q2sZCcLH3YdTAR0VWo5XDhsfLAiGGlqF75AcloBrVCwynQd+SNAXpzDOTB7OhgUfe
	OLAar/WXoLAIednUAZCzKNwpkjOj5LFDrGzSreI8if97N8deXVHTUHYfxICUtXONUA0uva83eDpeh
	I2LSSJXkDH87Vz/htQcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69ZY-0004jW-SD; Mon, 24 Feb 2020 08:58:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69VE-0007ZQ-Uo; Mon, 24 Feb 2020 08:54:14 +0000
Received: from localhost (unknown [213.57.247.131])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AB6FD21D56;
 Mon, 24 Feb 2020 08:54:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582534452;
 bh=jfBA030ZNUWZdUC2fcPCCqP9qkT4PNkK7GV+CJuCOpI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=lggZT0TIEt3CuTGMfjlSGkLQm6WuuZFb0HWbP7yLwDibEfn9rWABou8IZb+NzCPEu
 KDMDjcFMKV3nfrxYmPfOIp83KRqay53+PX0XgR7lBw5+jygHkRqaqRZiAUyoWDrN8o
 jElT43AxYIrwE9oUJ4nvphG5LgQz55V52hH58DnQ=
From: Leon Romanovsky <leon@kernel.org>
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v1 17/18] net/arc: Delete driver version
Date: Mon, 24 Feb 2020 10:53:10 +0200
Message-Id: <20200224085311.460338-18-leon@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200224085311.460338-1-leon@kernel.org>
References: <20200224085311.460338-1-leon@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_005413_044430_E375BFC3 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Thor Thayer <thor.thayer@linux.intel.com>, Heiko Stuebner <heiko@sntech.de>,
 Igor Russkikh <irusskikh@marvell.com>, Andreas Larsson <andreas@gaisler.com>,
 Chris Snook <chris.snook@gmail.com>, David Dillow <dave@thedillows.org>,
 Jes Sorensen <jes@trained-monkey.org>,
 Iyappan Subramanian <iyappan@os.amperecomputing.com>,
 Quan Nguyen <quan@os.amperecomputing.com>, linux-acenic@sunsite.dk,
 Andy Gospodarek <andy@greyhouse.net>, Arthur Kiyanovski <akiyano@amazon.com>,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Lino Sanfilippo <LinoSanfilippo@gmx.de>, Veaceslav Falico <vfalico@gmail.com>,
 Tom Lendacky <thomas.lendacky@amd.com>, Jay Cliburn <jcliburn@gmail.com>,
 Jay Vosburgh <j.vosburgh@gmail.com>,
 Keyur Chudgar <keyur@os.amperecomputing.com>,
 Maxime Ripard <mripard@kernel.org>, Leon Romanovsky <leonro@mellanox.com>,
 Don Fry <pcnet32@frontier.com>, nios2-dev@lists.rocketboards.org,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ion Badulescu <ionut@badula.org>,
 Netanel Belgazal <netanel@amazon.com>, Mark Einon <mark.einon@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Leon Romanovsky <leonro@mellanox.com>

Drop constant driver version in favour of global linux kernel.

Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
---
 drivers/net/ethernet/arc/emac.h          | 1 -
 drivers/net/ethernet/arc/emac_arc.c      | 2 --
 drivers/net/ethernet/arc/emac_main.c     | 1 -
 drivers/net/ethernet/arc/emac_rockchip.c | 2 --
 4 files changed, 6 deletions(-)

diff --git a/drivers/net/ethernet/arc/emac.h b/drivers/net/ethernet/arc/emac.h
index d9efbc8d783b..d820ae03a966 100644
--- a/drivers/net/ethernet/arc/emac.h
+++ b/drivers/net/ethernet/arc/emac.h
@@ -130,7 +130,6 @@ struct arc_emac_mdio_bus_data {
  */
 struct arc_emac_priv {
 	const char *drv_name;
-	const char *drv_version;
 	void (*set_mac_speed)(void *priv, unsigned int speed);

 	/* Devices */
diff --git a/drivers/net/ethernet/arc/emac_arc.c b/drivers/net/ethernet/arc/emac_arc.c
index 539166112993..1c7736b7eaf7 100644
--- a/drivers/net/ethernet/arc/emac_arc.c
+++ b/drivers/net/ethernet/arc/emac_arc.c
@@ -15,7 +15,6 @@
 #include "emac.h"

 #define DRV_NAME    "emac_arc"
-#define DRV_VERSION "1.0"

 static int emac_arc_probe(struct platform_device *pdev)
 {
@@ -36,7 +35,6 @@ static int emac_arc_probe(struct platform_device *pdev)

 	priv = netdev_priv(ndev);
 	priv->drv_name = DRV_NAME;
-	priv->drv_version = DRV_VERSION;

 	err = of_get_phy_mode(dev->of_node, &interface);
 	if (err) {
diff --git a/drivers/net/ethernet/arc/emac_main.c b/drivers/net/ethernet/arc/emac_main.c
index 17bda4e8cc45..38cd968b6a3b 100644
--- a/drivers/net/ethernet/arc/emac_main.c
+++ b/drivers/net/ethernet/arc/emac_main.c
@@ -92,7 +92,6 @@ static void arc_emac_get_drvinfo(struct net_device *ndev,
 	struct arc_emac_priv *priv = netdev_priv(ndev);

 	strlcpy(info->driver, priv->drv_name, sizeof(info->driver));
-	strlcpy(info->version, priv->drv_version, sizeof(info->version));
 }

 static const struct ethtool_ops arc_emac_ethtool_ops = {
diff --git a/drivers/net/ethernet/arc/emac_rockchip.c b/drivers/net/ethernet/arc/emac_rockchip.c
index aae231c5224f..48ecdf15eddc 100644
--- a/drivers/net/ethernet/arc/emac_rockchip.c
+++ b/drivers/net/ethernet/arc/emac_rockchip.c
@@ -16,7 +16,6 @@
 #include "emac.h"

 #define DRV_NAME        "rockchip_emac"
-#define DRV_VERSION     "1.1"

 struct emac_rockchip_soc_data {
 	unsigned int grf_offset;
@@ -112,7 +111,6 @@ static int emac_rockchip_probe(struct platform_device *pdev)

 	priv = netdev_priv(ndev);
 	priv->emac.drv_name = DRV_NAME;
-	priv->emac.drv_version = DRV_VERSION;
 	priv->emac.set_mac_speed = emac_rockchip_set_mac_speed;

 	err = of_get_phy_mode(dev->of_node, &interface);
--
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
