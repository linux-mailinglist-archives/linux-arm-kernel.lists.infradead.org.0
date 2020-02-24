Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E321A16A0A8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 09:55:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KOQ8iASr+ApfuypEzy8iqIQ1Ng0Cq9rILkQvvbXe0Go=; b=lOUblhSeEDUNdK
	D+cBJgZB/bNR93WTNAYxfWdsfUqdWbSXkDPYPZbKZH1YOwwpI9QqneOSmpSzCcTh6sev7dxt1/dAu
	id+kmespDt61LfvjUUKkjFAkYBIqCle5W/MoQP9hkEsJG8Sv1HDxaXm4SkGpDB9PD3LhWZIsQX4Q4
	SV6TBQiWoHyN5g2lae10BA9q6P0XMxBzeNNrvi1xOermy8/83WvhxPWrkSVr9oQvvjzIJNDX11wF5
	4aQKU/mDlbQW1JuU6A82z1f4QplDC56lo9F6Fyu60jvlf3CLmzHdjQDXW6fpcjNoEP2mPftgitLDf
	/7mmRlMOuQoO5xNlhsXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69WL-0008GU-Dm; Mon, 24 Feb 2020 08:55:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69Ua-00072h-0W; Mon, 24 Feb 2020 08:53:33 +0000
Received: from localhost (unknown [213.57.247.131])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6EC7B20842;
 Mon, 24 Feb 2020 08:53:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582534411;
 bh=fwyEnmlIREl3D/2DAJB5xBeyPEhsItC0Id93bVsKlCQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ZQo6V81dD9/8lqg5RyNdNF83dmSjs798+p0gMldHgO41djQ59+NJpTWtOFB4kSJeb
 Xss4daEX6+EaDojwPpwtLMcn+EryXGmsMBBaXzkN9od+d0G+Td2hr1bpJ049qvxW65
 73Jh8aJA2t7c2A04e6fwZd3m4gTyNO9EVX/qxQBE=
From: Leon Romanovsky <leon@kernel.org>
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v1 04/18] net/adaptec: Clean driver versions
Date: Mon, 24 Feb 2020 10:52:57 +0200
Message-Id: <20200224085311.460338-5-leon@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200224085311.460338-1-leon@kernel.org>
References: <20200224085311.460338-1-leon@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_005332_111066_239B0B96 
X-CRM114-Status: GOOD (  12.31  )
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

Delete useless driver version in favor of default ones.

Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
---
 drivers/net/ethernet/adaptec/starfire.c | 19 +------------------
 1 file changed, 1 insertion(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/adaptec/starfire.c b/drivers/net/ethernet/adaptec/starfire.c
index 165d18405b0c..2db42211329f 100644
--- a/drivers/net/ethernet/adaptec/starfire.c
+++ b/drivers/net/ethernet/adaptec/starfire.c
@@ -27,8 +27,6 @@
 */

 #define DRV_NAME	"starfire"
-#define DRV_VERSION	"2.1"
-#define DRV_RELDATE	"July  6, 2008"

 #include <linux/interrupt.h>
 #include <linux/module.h>
@@ -47,6 +45,7 @@
 #include <asm/processor.h>		/* Processor type for cache alignment. */
 #include <linux/uaccess.h>
 #include <asm/io.h>
+#include <linux/vermagic.h>

 /*
  * The current frame processor firmware fails to checksum a fragment
@@ -165,15 +164,9 @@ static int rx_copybreak /* = 0 */;
 #define FIRMWARE_RX	"adaptec/starfire_rx.bin"
 #define FIRMWARE_TX	"adaptec/starfire_tx.bin"

-/* These identify the driver base version and may not be removed. */
-static const char version[] =
-KERN_INFO "starfire.c:v1.03 7/26/2000  Written by Donald Becker <becker@scyld.com>\n"
-" (unofficial 2.2/2.4 kernel port, version " DRV_VERSION ", " DRV_RELDATE ")\n";
-
 MODULE_AUTHOR("Donald Becker <becker@scyld.com>");
 MODULE_DESCRIPTION("Adaptec Starfire Ethernet driver");
 MODULE_LICENSE("GPL");
-MODULE_VERSION(DRV_VERSION);
 MODULE_FIRMWARE(FIRMWARE_RX);
 MODULE_FIRMWARE(FIRMWARE_TX);

@@ -654,13 +647,6 @@ static int starfire_init_one(struct pci_dev *pdev,
 	int drv_flags, io_size;
 	int boguscnt;

-/* when built into the kernel, we only print version if device is found */
-#ifndef MODULE
-	static int printed_version;
-	if (!printed_version++)
-		printk(version);
-#endif
-
 	if (pci_enable_device (pdev))
 		return -EIO;

@@ -1853,7 +1839,6 @@ static void get_drvinfo(struct net_device *dev, struct ethtool_drvinfo *info)
 {
 	struct netdev_private *np = netdev_priv(dev);
 	strlcpy(info->driver, DRV_NAME, sizeof(info->driver));
-	strlcpy(info->version, DRV_VERSION, sizeof(info->version));
 	strlcpy(info->bus_info, pci_name(np->pci_dev), sizeof(info->bus_info));
 }

@@ -2073,8 +2058,6 @@ static int __init starfire_init (void)
 {
 /* when a module, this is printed whether or not devices are found in probe */
 #ifdef MODULE
-	printk(version);
-
 	printk(KERN_INFO DRV_NAME ": polling (NAPI) enabled\n");
 #endif

--
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
