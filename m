Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B4A316A08A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 09:54:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aKdrVMDNHz3cDQ4SL8jtY6S+nl6dZt+6wK4rQuogU8o=; b=YVeGZcVeUbbUKP
	nVKTUxarWLYIh+WD1qA87aGMoWeqBAIcCOYEv1sYlYEDE/yaymShXdPXxQAOsPch5iC3sWjQ9w6pk
	zNxusyO8MKzru1gtN5bdAS2mRFOOgegyT99MQTnVGCArtQcRApkq2lEI30RkiF1+xPuEYSsQTFvmQ
	WHHG1wg2aRTCHfef33eBMUww6kUU4Q9KPvkutv1x21HxcrH1tFkVGK8t4TjXRCH+saMdADSZQ3MwL
	SjYeDzpGXbTVQb7/HbWeakReXj0P8/esxFgoLbH+2wGOgIFN/TAcSVFONOTXwwREpkV1ye/NZgiQC
	PB3re6iVFWrpSe2hZIIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69VA-0007EZ-1q; Mon, 24 Feb 2020 08:54:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69UP-0006ud-Ad; Mon, 24 Feb 2020 08:53:22 +0000
Received: from localhost (unknown [213.57.247.131])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2C58A20828;
 Mon, 24 Feb 2020 08:53:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582534401;
 bh=wxYZPzfXng0YXGKSFR56XoxCarvW4FF4dcA1IUsRgQM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=uyfipuKypot1ZNsk6pCK3NTpOJVPAuGsjK2Vokb4MqXOIax4jESjCNT72vVm24Soh
 G62/NBCe5lbx0KQrvdKwtyjXXqPXuEOPHzDuEOQGBx2nPHd1s498k1XNxjHfDriFEI
 7dIPCwjfkkuoMdb/kCwH3ms4KPhhm0vzL7g+cqqs=
From: Leon Romanovsky <leon@kernel.org>
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v1 01/18] net/bond: Delete driver and module versions
Date: Mon, 24 Feb 2020 10:52:54 +0200
Message-Id: <20200224085311.460338-2-leon@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200224085311.460338-1-leon@kernel.org>
References: <20200224085311.460338-1-leon@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_005321_408216_B565059D 
X-CRM114-Status: GOOD (  11.22  )
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

The in-kernel code has already unique version, which is based
on Linus's tag, update the bond driver to be consistent with that
version.

Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
---
 drivers/net/bonding/bond_main.c    | 6 +-----
 drivers/net/bonding/bonding_priv.h | 5 ++---
 2 files changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/net/bonding/bond_main.c b/drivers/net/bonding/bond_main.c
index c68c1d1387ee..2e70e43c5df5 100644
--- a/drivers/net/bonding/bond_main.c
+++ b/drivers/net/bonding/bond_main.c
@@ -4370,7 +4370,6 @@ static void bond_ethtool_get_drvinfo(struct net_device *bond_dev,
 				     struct ethtool_drvinfo *drvinfo)
 {
 	strlcpy(drvinfo->driver, DRV_NAME, sizeof(drvinfo->driver));
-	strlcpy(drvinfo->version, DRV_VERSION, sizeof(drvinfo->version));
 	snprintf(drvinfo->fw_version, sizeof(drvinfo->fw_version), "%d",
 		 BOND_ABI_VERSION);
 }
@@ -5008,8 +5007,6 @@ static int __init bonding_init(void)
 	int i;
 	int res;

-	pr_info("%s", bond_version);
-
 	res = bond_check_params(&bonding_defaults);
 	if (res)
 		goto out;
@@ -5064,6 +5061,5 @@ static void __exit bonding_exit(void)
 module_init(bonding_init);
 module_exit(bonding_exit);
 MODULE_LICENSE("GPL");
-MODULE_VERSION(DRV_VERSION);
-MODULE_DESCRIPTION(DRV_DESCRIPTION ", v" DRV_VERSION);
+MODULE_DESCRIPTION(DRV_DESCRIPTION);
 MODULE_AUTHOR("Thomas Davis, tadavis@lbl.gov and many others");
diff --git a/drivers/net/bonding/bonding_priv.h b/drivers/net/bonding/bonding_priv.h
index 5a4d81a9437c..45b77bc8c7b3 100644
--- a/drivers/net/bonding/bonding_priv.h
+++ b/drivers/net/bonding/bonding_priv.h
@@ -14,12 +14,11 @@

 #ifndef _BONDING_PRIV_H
 #define _BONDING_PRIV_H
+#include <linux/vermagic.h>

-#define DRV_VERSION	"3.7.1"
-#define DRV_RELDATE	"April 27, 2011"
 #define DRV_NAME	"bonding"
 #define DRV_DESCRIPTION	"Ethernet Channel Bonding Driver"

-#define bond_version DRV_DESCRIPTION ": v" DRV_VERSION " (" DRV_RELDATE ")\n"
+#define bond_version DRV_DESCRIPTION ": v" UTS_RELEASE "\n"

 #endif
--
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
