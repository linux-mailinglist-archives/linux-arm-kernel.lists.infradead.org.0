Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D9516A09F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 09:55:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NZLQgOBsoysVpORPrOel9wUfHnPtYPKK8YgCKf40LAs=; b=f8UDLoD+wU4M7s
	MkReMf61oK8PWRnRTBfGcKI3ODO4l58b4LT6x5+czyt/Ackmyo7twjJ4lVpV+nS8+Q9ZW8MNhzrjo
	NkOt1TXiLwyXoCDEGH+RO8UZc0VClDxEMGuTu/7tsOpFG63sPyitUQyqDim0x3HXOG5m3frQWQkod
	V50fcjLrj4stoqb1qOrhgvbWk6shyAPU7pfdZPN9lyJvCFawD3DOd+vTSquBqNf+by8RxbH8i+ptQ
	u016+i8j0tVsZNVtRrz+w617yQYXZY3GryAFT6uvt9RJ3xYbtugCHLH9WXHB9IyscciDJinrRagq9
	HG9lrZyZQUn7lnTrQfAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69Vt-0007zq-2B; Mon, 24 Feb 2020 08:54:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69UW-00070J-MW; Mon, 24 Feb 2020 08:53:30 +0000
Received: from localhost (unknown [213.57.247.131])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 07A1720866;
 Mon, 24 Feb 2020 08:53:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582534407;
 bh=RoCQdDmy4liLgvBwzNfGejkGcTEeCehnyk0UjHmagdM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=rIIgna+SnULJEasT61/O0GpSaKFHcXRluSAdreN60StjYJTcJL86yDb8fPp4YniHr
 dUCN0USO9ZuIW4aFUJ4cKCdE9+97wKCyWHHFRuxViNi7BBtholaF6/yfhNw46FmmIQ
 vBeetjIK98E8Yy9+Zg3D6ImaqJbOEh3JAYMMGTdk=
From: Leon Romanovsky <leon@kernel.org>
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v1 03/18] net/3com: Delete driver and module versions
 from 3com drivers
Date: Mon, 24 Feb 2020 10:52:56 +0200
Message-Id: <20200224085311.460338-4-leon@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200224085311.460338-1-leon@kernel.org>
References: <20200224085311.460338-1-leon@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_005329_060682_AAEC6A0F 
X-CRM114-Status: GOOD (  14.22  )
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

There is no need to mislead users by providing different versions for
driver, ethtool and modules. Delete driver assignments and let use
the default one.

Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
---
 drivers/net/ethernet/3com/3c509.c    |  8 +-------
 drivers/net/ethernet/3com/3c515.c    | 16 +---------------
 drivers/net/ethernet/3com/3c589_cs.c |  2 --
 drivers/net/ethernet/3com/typhoon.c  |  1 -
 4 files changed, 2 insertions(+), 25 deletions(-)

diff --git a/drivers/net/ethernet/3com/3c509.c b/drivers/net/ethernet/3com/3c509.c
index 8cafd06ff0c4..b762176a1406 100644
--- a/drivers/net/ethernet/3com/3c509.c
+++ b/drivers/net/ethernet/3com/3c509.c
@@ -60,8 +60,6 @@
 */

 #define DRV_NAME	"3c509"
-#define DRV_VERSION	"1.20"
-#define DRV_RELDATE	"04Feb2008"

 /* A few values that may be tweaked. */

@@ -87,13 +85,12 @@
 #include <linux/device.h>
 #include <linux/eisa.h>
 #include <linux/bitops.h>
+#include <linux/vermagic.h>

 #include <linux/uaccess.h>
 #include <asm/io.h>
 #include <asm/irq.h>

-static char version[] = DRV_NAME ".c:" DRV_VERSION " " DRV_RELDATE " becker@scyld.com\n";
-
 #ifdef EL3_DEBUG
 static int el3_debug = EL3_DEBUG;
 #else
@@ -547,8 +544,6 @@ static int el3_common_init(struct net_device *dev)
 	       dev->name, dev->base_addr, if_names[(dev->if_port & 0x03)],
 	       dev->dev_addr, dev->irq);

-	if (el3_debug > 0)
-		pr_info("%s", version);
 	return 0;

 }
@@ -1143,7 +1138,6 @@ el3_netdev_set_ecmd(struct net_device *dev,
 static void el3_get_drvinfo(struct net_device *dev, struct ethtool_drvinfo *info)
 {
 	strlcpy(info->driver, DRV_NAME, sizeof(info->driver));
-	strlcpy(info->version, DRV_VERSION, sizeof(info->version));
 }

 static int el3_get_link_ksettings(struct net_device *dev,
diff --git a/drivers/net/ethernet/3com/3c515.c b/drivers/net/ethernet/3com/3c515.c
index 1e233e2f0a5a..90312fcd6319 100644
--- a/drivers/net/ethernet/3com/3c515.c
+++ b/drivers/net/ethernet/3com/3c515.c
@@ -22,12 +22,8 @@

 */

+#include <linux/vermagic.h>
 #define DRV_NAME		"3c515"
-#define DRV_VERSION		"0.99t-ac"
-#define DRV_RELDATE		"28-Oct-2002"
-
-static char *version =
-DRV_NAME ".c:v" DRV_VERSION " " DRV_RELDATE " becker@scyld.com and others\n";

 #define CORKSCREW 1

@@ -84,7 +80,6 @@ static int max_interrupt_work = 20;
 MODULE_AUTHOR("Donald Becker <becker@scyld.com>");
 MODULE_DESCRIPTION("3Com 3c515 Corkscrew driver");
 MODULE_LICENSE("GPL");
-MODULE_VERSION(DRV_VERSION);

 /* "Knobs" for adjusting internal parameters. */
 /* Put out somewhat more debugging messages. (0 - no msg, 1 minimal msgs). */
@@ -418,8 +413,6 @@ int init_module(void)
 	int found = 0;
 	if (debug >= 0)
 		corkscrew_debug = debug;
-	if (corkscrew_debug)
-		pr_debug("%s", version);
 	while (corkscrew_scan(-1))
 		found++;
 	return found ? 0 : -ENODEV;
@@ -429,16 +422,10 @@ int init_module(void)
 struct net_device *tc515_probe(int unit)
 {
 	struct net_device *dev = corkscrew_scan(unit);
-	static int printed;

 	if (!dev)
 		return ERR_PTR(-ENODEV);

-	if (corkscrew_debug > 0 && !printed) {
-		printed = 1;
-		pr_debug("%s", version);
-	}
-
 	return dev;
 }
 #endif				/* not MODULE */
@@ -1540,7 +1527,6 @@ static void netdev_get_drvinfo(struct net_device *dev,
 			       struct ethtool_drvinfo *info)
 {
 	strlcpy(info->driver, DRV_NAME, sizeof(info->driver));
-	strlcpy(info->version, DRV_VERSION, sizeof(info->version));
 	snprintf(info->bus_info, sizeof(info->bus_info), "ISA 0x%lx",
 		 dev->base_addr);
 }
diff --git a/drivers/net/ethernet/3com/3c589_cs.c b/drivers/net/ethernet/3com/3c589_cs.c
index d47cde6c5f08..09816e84314d 100644
--- a/drivers/net/ethernet/3com/3c589_cs.c
+++ b/drivers/net/ethernet/3com/3c589_cs.c
@@ -23,7 +23,6 @@
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt

 #define DRV_NAME	"3c589_cs"
-#define DRV_VERSION	"1.162-ac"

 #include <linux/module.h>
 #include <linux/kernel.h>
@@ -482,7 +481,6 @@ static void netdev_get_drvinfo(struct net_device *dev,
 			       struct ethtool_drvinfo *info)
 {
 	strlcpy(info->driver, DRV_NAME, sizeof(info->driver));
-	strlcpy(info->version, DRV_VERSION, sizeof(info->version));
 	snprintf(info->bus_info, sizeof(info->bus_info),
 		"PCMCIA 0x%lx", dev->base_addr);
 }
diff --git a/drivers/net/ethernet/3com/typhoon.c b/drivers/net/ethernet/3com/typhoon.c
index 14fce6658106..4383ee615793 100644
--- a/drivers/net/ethernet/3com/typhoon.c
+++ b/drivers/net/ethernet/3com/typhoon.c
@@ -127,7 +127,6 @@ static const int multicast_filter_limit = 32;
 #include "typhoon.h"

 MODULE_AUTHOR("David Dillow <dave@thedillows.org>");
-MODULE_VERSION("1.0");
 MODULE_LICENSE("GPL");
 MODULE_FIRMWARE(FIRMWARE_NAME);
 MODULE_DESCRIPTION("3Com Typhoon Family (3C990, 3CR990, and variants)");
--
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
