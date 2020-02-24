Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D40A16A0DB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 09:57:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pQrndx8DpHUp2J8pw4YpuvoaEZG7A4SIvUr+1FXTzX0=; b=oXk4ju0QjuPY0G
	2gWQzQyp9zaHIWOsXRR5HSqgh+nVH9HMT82ay7WH+ZlK2OSBkFf5KM+UF2mky/dy5JxdR4mF+uz39
	PhD7YRLLBqn8AgVjt/OkZd1pNqhi4KKmQ7AKGwfjqYzdRUo3eCEWQTMAby5k1WFzWZsuJoBW8noQA
	Dp8VzqUV55FTsJ3GZcmJtJdy17h3BGVRD8u0L53J4MkcrUfeMfMfYehMuGk8y8vuq3XpKn5HFpI4V
	wAJdfgV49vJdbGjoaMnws1YdHg9OGFM8A/0OUGq+kvGDO7mrrW6CAT0wGprMzrgyFZpvljSuVHBh2
	jhjj7/t9P2eZdmupze4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69Yq-0003vN-Dw; Mon, 24 Feb 2020 08:57:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69V4-0007Pu-IV; Mon, 24 Feb 2020 08:54:04 +0000
Received: from localhost (unknown [213.57.247.131])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 581D121739;
 Mon, 24 Feb 2020 08:54:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582534442;
 bh=tamgSzt9tc/+8AbKzANEjCcCAiCwMC1sry9XBcGyZT4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=NXFipNyL3lIp+Vi6JqzP6J72/yBR0kYgblnglVMtc+xFmi1w+GEWmjMOtbU0Gon73
 Q0GCT5bh54u8S1FPPT3TyyKAb9cCcw2kPJSusg0S9Kyldk1yRPreo6RSpVZIbE8JLQ
 Gx9VWlkPgpFhl9SdV7Eh1XLHmF8mKaS8AiMn2Bio=
From: Leon Romanovsky <leon@kernel.org>
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v1 14/18] net/apm: Remove useless driver version
Date: Mon, 24 Feb 2020 10:53:07 +0200
Message-Id: <20200224085311.460338-15-leon@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200224085311.460338-1-leon@kernel.org>
References: <20200224085311.460338-1-leon@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_005402_670675_B610492C 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
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

Delete module version in favor of global and unique linux kernel.

Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
---
 drivers/net/ethernet/apm/xgene-v2/ethtool.c         | 1 -
 drivers/net/ethernet/apm/xgene-v2/main.c            | 1 -
 drivers/net/ethernet/apm/xgene-v2/main.h            | 1 -
 drivers/net/ethernet/apm/xgene/xgene_enet_ethtool.c | 1 -
 drivers/net/ethernet/apm/xgene/xgene_enet_main.c    | 1 -
 drivers/net/ethernet/apm/xgene/xgene_enet_main.h    | 1 -
 6 files changed, 6 deletions(-)

diff --git a/drivers/net/ethernet/apm/xgene-v2/ethtool.c b/drivers/net/ethernet/apm/xgene-v2/ethtool.c
index a58250c1b57a..da748beb7047 100644
--- a/drivers/net/ethernet/apm/xgene-v2/ethtool.c
+++ b/drivers/net/ethernet/apm/xgene-v2/ethtool.c
@@ -89,7 +89,6 @@ static void xge_get_drvinfo(struct net_device *ndev,
 	struct platform_device *pdev = pdata->pdev;

 	strcpy(info->driver, "xgene-enet-v2");
-	strcpy(info->version, XGENE_ENET_V2_VERSION);
 	snprintf(info->fw_version, ETHTOOL_FWVERS_LEN, "N/A");
 	sprintf(info->bus_info, "%s", pdev->name);
 }
diff --git a/drivers/net/ethernet/apm/xgene-v2/main.c b/drivers/net/ethernet/apm/xgene-v2/main.c
index c48f60996761..860c18fb7aae 100644
--- a/drivers/net/ethernet/apm/xgene-v2/main.c
+++ b/drivers/net/ethernet/apm/xgene-v2/main.c
@@ -741,5 +741,4 @@ module_platform_driver(xge_driver);

 MODULE_DESCRIPTION("APM X-Gene SoC Ethernet v2 driver");
 MODULE_AUTHOR("Iyappan Subramanian <isubramanian@apm.com>");
-MODULE_VERSION(XGENE_ENET_V2_VERSION);
 MODULE_LICENSE("GPL");
diff --git a/drivers/net/ethernet/apm/xgene-v2/main.h b/drivers/net/ethernet/apm/xgene-v2/main.h
index d41439d2709d..b3985a7be59d 100644
--- a/drivers/net/ethernet/apm/xgene-v2/main.h
+++ b/drivers/net/ethernet/apm/xgene-v2/main.h
@@ -28,7 +28,6 @@
 #include "ring.h"
 #include "ethtool.h"

-#define XGENE_ENET_V2_VERSION	"v1.0"
 #define XGENE_ENET_STD_MTU	1536
 #define XGENE_ENET_MIN_FRAME	60
 #define IRQ_ID_SIZE             16
diff --git a/drivers/net/ethernet/apm/xgene/xgene_enet_ethtool.c b/drivers/net/ethernet/apm/xgene/xgene_enet_ethtool.c
index 246dec27140d..4e7a95bd83d7 100644
--- a/drivers/net/ethernet/apm/xgene/xgene_enet_ethtool.c
+++ b/drivers/net/ethernet/apm/xgene/xgene_enet_ethtool.c
@@ -103,7 +103,6 @@ static void xgene_get_drvinfo(struct net_device *ndev,
 	struct platform_device *pdev = pdata->pdev;

 	strcpy(info->driver, "xgene_enet");
-	strcpy(info->version, XGENE_DRV_VERSION);
 	snprintf(info->fw_version, ETHTOOL_FWVERS_LEN, "N/A");
 	sprintf(info->bus_info, "%s", pdev->name);
 }
diff --git a/drivers/net/ethernet/apm/xgene/xgene_enet_main.c b/drivers/net/ethernet/apm/xgene/xgene_enet_main.c
index 6aee2f0fc0db..5f1fc6582d74 100644
--- a/drivers/net/ethernet/apm/xgene/xgene_enet_main.c
+++ b/drivers/net/ethernet/apm/xgene/xgene_enet_main.c
@@ -2179,7 +2179,6 @@ static struct platform_driver xgene_enet_driver = {
 module_platform_driver(xgene_enet_driver);

 MODULE_DESCRIPTION("APM X-Gene SoC Ethernet driver");
-MODULE_VERSION(XGENE_DRV_VERSION);
 MODULE_AUTHOR("Iyappan Subramanian <isubramanian@apm.com>");
 MODULE_AUTHOR("Keyur Chudgar <kchudgar@apm.com>");
 MODULE_LICENSE("GPL");
diff --git a/drivers/net/ethernet/apm/xgene/xgene_enet_main.h b/drivers/net/ethernet/apm/xgene/xgene_enet_main.h
index 18f4923b1723..d35a338120cf 100644
--- a/drivers/net/ethernet/apm/xgene/xgene_enet_main.h
+++ b/drivers/net/ethernet/apm/xgene/xgene_enet_main.h
@@ -28,7 +28,6 @@
 #include "xgene_enet_ring2.h"
 #include "../../../phy/mdio-xgene.h"

-#define XGENE_DRV_VERSION	"v1.0"
 #define ETHER_MIN_PACKET	64
 #define ETHER_STD_PACKET	1518
 #define XGENE_ENET_STD_MTU	1536
--
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
