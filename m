Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA0416A0E9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 09:59:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gLlZx8vtO8jeFWA5D2kR9HxyB49B+HnrhZv4DMDMxzk=; b=RYli9DjPcfxWtS
	TD+/fiAyqxOL9dYYPV4lEbNDY5YwXA9VAp5Oo3NNj882UvPLFAnAcFBOPrTc91cMqVZ1dUCFUcKr6
	YNsBg+OyxJ8UA1Qyfq4A0YvcLVITKWjnxfuIxeYxZJVZ7sq3UyZ7adYoNGD3o7oY5btMwaVRa35I2
	dx03upja3og/+3vbTHoGD6ddFRs9fRMcRhzU+x3K98yIVZTF6oZBEqyw4IUYpDlVCEeguYcgUJ7cc
	lo7nIdElezyVsGSIiy34c/l5WinRvNkBS7lGOz+adq9q4MZPC6uOPJNk2/gQ6YgevRm4ZqTULnGoz
	qCXK0aLaDmsXZt6t5G/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69Zq-00055e-JY; Mon, 24 Feb 2020 08:58:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69VI-0007cJ-K9; Mon, 24 Feb 2020 08:54:18 +0000
Received: from localhost (unknown [213.57.247.131])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1287A24649;
 Mon, 24 Feb 2020 08:54:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582534455;
 bh=HuMfClWLP58bKyff8e+Ck8/eUabt3cCepUeA1J/GuZY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=dPhCbKpZozRvmghhAoSo5+NS/jwZ0hNm7WiWQnGqisJXAaSVD5cCm1rizCtjEh45Q
 SHEqPbqhQ6r3Hsr8fjZMa/6epvapn81a7xCIq3B6T839t+MbC1ebPNH7EbA6QHfA39
 CSBIQtTT5G2tOVKPYKZ8xAfyilFnPC4GcTwe754w=
From: Leon Romanovsky <leon@kernel.org>
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v1 18/18] net/atheros: Clean atheros code from driver
 version
Date: Mon, 24 Feb 2020 10:53:11 +0200
Message-Id: <20200224085311.460338-19-leon@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200224085311.460338-1-leon@kernel.org>
References: <20200224085311.460338-1-leon@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_005416_750291_9B40C80C 
X-CRM114-Status: GOOD (  12.64  )
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

Use linux kernel version for ethtool and module versions.

Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
---
 drivers/net/ethernet/atheros/atl1c/atl1c.h         |  1 -
 drivers/net/ethernet/atheros/atl1c/atl1c_ethtool.c |  2 --
 drivers/net/ethernet/atheros/atl1c/atl1c_main.c    |  5 -----
 drivers/net/ethernet/atheros/atl1e/atl1e.h         |  1 -
 drivers/net/ethernet/atheros/atl1e/atl1e_ethtool.c |  2 --
 drivers/net/ethernet/atheros/atl1e/atl1e_main.c    |  4 ----
 drivers/net/ethernet/atheros/atlx/atl1.c           |  6 ------
 drivers/net/ethernet/atheros/atlx/atl2.c           | 10 ----------
 8 files changed, 31 deletions(-)

diff --git a/drivers/net/ethernet/atheros/atl1c/atl1c.h b/drivers/net/ethernet/atheros/atl1c/atl1c.h
index 60b2febd7315..a0562a90fb6d 100644
--- a/drivers/net/ethernet/atheros/atl1c/atl1c.h
+++ b/drivers/net/ethernet/atheros/atl1c/atl1c.h
@@ -583,7 +583,6 @@ struct atl1c_adapter {
 		readl(((a)->hw_addr + reg) + ((offset) << 2)))

 extern char atl1c_driver_name[];
-extern char atl1c_driver_version[];

 void atl1c_reinit_locked(struct atl1c_adapter *adapter);
 s32 atl1c_reset_hw(struct atl1c_hw *hw);
diff --git a/drivers/net/ethernet/atheros/atl1c/atl1c_ethtool.c b/drivers/net/ethernet/atheros/atl1c/atl1c_ethtool.c
index b5a70a36fa04..e2eb7b8c63a0 100644
--- a/drivers/net/ethernet/atheros/atl1c/atl1c_ethtool.c
+++ b/drivers/net/ethernet/atheros/atl1c/atl1c_ethtool.c
@@ -221,8 +221,6 @@ static void atl1c_get_drvinfo(struct net_device *netdev,
 	struct atl1c_adapter *adapter = netdev_priv(netdev);

 	strlcpy(drvinfo->driver,  atl1c_driver_name, sizeof(drvinfo->driver));
-	strlcpy(drvinfo->version, atl1c_driver_version,
-		sizeof(drvinfo->version));
 	strlcpy(drvinfo->bus_info, pci_name(adapter->pdev),
 		sizeof(drvinfo->bus_info));
 }
diff --git a/drivers/net/ethernet/atheros/atl1c/atl1c_main.c b/drivers/net/ethernet/atheros/atl1c/atl1c_main.c
index 0d67b951c0b2..00bd7bd55794 100644
--- a/drivers/net/ethernet/atheros/atl1c/atl1c_main.c
+++ b/drivers/net/ethernet/atheros/atl1c/atl1c_main.c
@@ -8,9 +8,7 @@

 #include "atl1c.h"

-#define ATL1C_DRV_VERSION "1.0.1.1-NAPI"
 char atl1c_driver_name[] = "atl1c";
-char atl1c_driver_version[] = ATL1C_DRV_VERSION;

 /*
  * atl1c_pci_tbl - PCI Device ID Table
@@ -37,7 +35,6 @@ MODULE_AUTHOR("Jie Yang");
 MODULE_AUTHOR("Qualcomm Atheros Inc., <nic-devel@qualcomm.com>");
 MODULE_DESCRIPTION("Qualcomm Atheros 100/1000M Ethernet Network Driver");
 MODULE_LICENSE("GPL");
-MODULE_VERSION(ATL1C_DRV_VERSION);

 static int atl1c_stop_mac(struct atl1c_hw *hw);
 static void atl1c_disable_l0s_l1(struct atl1c_hw *hw);
@@ -2642,8 +2639,6 @@ static int atl1c_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		goto err_register;
 	}

-	if (netif_msg_probe(adapter))
-		dev_info(&pdev->dev, "version %s\n", ATL1C_DRV_VERSION);
 	cards_found++;
 	return 0;

diff --git a/drivers/net/ethernet/atheros/atl1e/atl1e.h b/drivers/net/ethernet/atheros/atl1e/atl1e.h
index e9893da50995..9fcad783c939 100644
--- a/drivers/net/ethernet/atheros/atl1e/atl1e.h
+++ b/drivers/net/ethernet/atheros/atl1e/atl1e.h
@@ -482,7 +482,6 @@ struct atl1e_adapter {
 		readl(((a)->hw_addr + reg) + ((offset) << 2)))

 extern char atl1e_driver_name[];
-extern char atl1e_driver_version[];

 void atl1e_check_options(struct atl1e_adapter *adapter);
 int atl1e_up(struct atl1e_adapter *adapter);
diff --git a/drivers/net/ethernet/atheros/atl1e/atl1e_ethtool.c b/drivers/net/ethernet/atheros/atl1e/atl1e_ethtool.c
index c6b9e7ea8e38..0cbde352d1ba 100644
--- a/drivers/net/ethernet/atheros/atl1e/atl1e_ethtool.c
+++ b/drivers/net/ethernet/atheros/atl1e/atl1e_ethtool.c
@@ -307,8 +307,6 @@ static void atl1e_get_drvinfo(struct net_device *netdev,
 	struct atl1e_adapter *adapter = netdev_priv(netdev);

 	strlcpy(drvinfo->driver,  atl1e_driver_name, sizeof(drvinfo->driver));
-	strlcpy(drvinfo->version, atl1e_driver_version,
-		sizeof(drvinfo->version));
 	strlcpy(drvinfo->fw_version, "L1e", sizeof(drvinfo->fw_version));
 	strlcpy(drvinfo->bus_info, pci_name(adapter->pdev),
 		sizeof(drvinfo->bus_info));
diff --git a/drivers/net/ethernet/atheros/atl1e/atl1e_main.c b/drivers/net/ethernet/atheros/atl1e/atl1e_main.c
index e0d89942d537..223ef846123e 100644
--- a/drivers/net/ethernet/atheros/atl1e/atl1e_main.c
+++ b/drivers/net/ethernet/atheros/atl1e/atl1e_main.c
@@ -8,10 +8,7 @@

 #include "atl1e.h"

-#define DRV_VERSION "1.0.0.7-NAPI"
-
 char atl1e_driver_name[] = "ATL1E";
-char atl1e_driver_version[] = DRV_VERSION;
 #define PCI_DEVICE_ID_ATTANSIC_L1E      0x1026
 /*
  * atl1e_pci_tbl - PCI Device ID Table
@@ -33,7 +30,6 @@ MODULE_DEVICE_TABLE(pci, atl1e_pci_tbl);
 MODULE_AUTHOR("Atheros Corporation, <xiong.huang@atheros.com>, Jie Yang <jie.yang@atheros.com>");
 MODULE_DESCRIPTION("Atheros 1000M Ethernet Network Driver");
 MODULE_LICENSE("GPL");
-MODULE_VERSION(DRV_VERSION);

 static void atl1e_setup_mac_ctrl(struct atl1e_adapter *adapter);

diff --git a/drivers/net/ethernet/atheros/atlx/atl1.c b/drivers/net/ethernet/atheros/atlx/atl1.c
index b498fd6a47d0..271e7034fa70 100644
--- a/drivers/net/ethernet/atheros/atlx/atl1.c
+++ b/drivers/net/ethernet/atheros/atlx/atl1.c
@@ -65,12 +65,10 @@

 #include "atl1.h"

-#define ATLX_DRIVER_VERSION "2.1.3"
 MODULE_AUTHOR("Xiong Huang <xiong.huang@atheros.com>, "
 	      "Chris Snook <csnook@redhat.com>, "
 	      "Jay Cliburn <jcliburn@gmail.com>");
 MODULE_LICENSE("GPL");
-MODULE_VERSION(ATLX_DRIVER_VERSION);

 /* Temporary hack for merging atl1 and atl2 */
 #include "atlx.c"
@@ -2965,8 +2963,6 @@ static int atl1_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	/* get device revision number */
 	adapter->hw.dev_rev = ioread16(adapter->hw.hw_addr +
 		(REG_MASTER_CTRL + 2));
-	if (netif_msg_probe(adapter))
-		dev_info(&pdev->dev, "version %s\n", ATLX_DRIVER_VERSION);

 	/* set default ring resource counts */
 	adapter->rfd_ring.count = adapter->rrd_ring.count = ATL1_DEFAULT_RFD;
@@ -3344,8 +3340,6 @@ static void atl1_get_drvinfo(struct net_device *netdev,
 	struct atl1_adapter *adapter = netdev_priv(netdev);

 	strlcpy(drvinfo->driver, ATLX_DRIVER_NAME, sizeof(drvinfo->driver));
-	strlcpy(drvinfo->version, ATLX_DRIVER_VERSION,
-		sizeof(drvinfo->version));
 	strlcpy(drvinfo->bus_info, pci_name(adapter->pdev),
 		sizeof(drvinfo->bus_info));
 }
diff --git a/drivers/net/ethernet/atheros/atlx/atl2.c b/drivers/net/ethernet/atheros/atlx/atl2.c
index b81a4e0c5b57..7c52b92b599d 100644
--- a/drivers/net/ethernet/atheros/atlx/atl2.c
+++ b/drivers/net/ethernet/atheros/atlx/atl2.c
@@ -36,18 +36,13 @@

 #include "atl2.h"

-#define ATL2_DRV_VERSION "2.2.3"
-
 static const char atl2_driver_name[] = "atl2";
 static const char atl2_driver_string[] = "Atheros(R) L2 Ethernet Driver";
-static const char atl2_copyright[] = "Copyright (c) 2007 Atheros Corporation.";
-static const char atl2_driver_version[] = ATL2_DRV_VERSION;
 static const struct ethtool_ops atl2_ethtool_ops;

 MODULE_AUTHOR("Atheros Corporation <xiong.huang@atheros.com>, Chris Snook <csnook@redhat.com>");
 MODULE_DESCRIPTION("Atheros Fast Ethernet Network Driver");
 MODULE_LICENSE("GPL");
-MODULE_VERSION(ATL2_DRV_VERSION);

 /*
  * atl2_pci_tbl - PCI Device ID Table
@@ -1688,9 +1683,6 @@ static struct pci_driver atl2_driver = {
  */
 static int __init atl2_init_module(void)
 {
-	printk(KERN_INFO "%s - version %s\n", atl2_driver_string,
-		atl2_driver_version);
-	printk(KERN_INFO "%s\n", atl2_copyright);
 	return pci_register_driver(&atl2_driver);
 }
 module_init(atl2_init_module);
@@ -2011,8 +2003,6 @@ static void atl2_get_drvinfo(struct net_device *netdev,
 	struct atl2_adapter *adapter = netdev_priv(netdev);

 	strlcpy(drvinfo->driver,  atl2_driver_name, sizeof(drvinfo->driver));
-	strlcpy(drvinfo->version, atl2_driver_version,
-		sizeof(drvinfo->version));
 	strlcpy(drvinfo->fw_version, "L2", sizeof(drvinfo->fw_version));
 	strlcpy(drvinfo->bus_info, pci_name(adapter->pdev),
 		sizeof(drvinfo->bus_info));
--
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
