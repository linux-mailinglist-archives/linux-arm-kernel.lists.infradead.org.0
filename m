Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5457A174DC6
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Mar 2020 15:45:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=anfrikLNnCEVPWXlKP2/0ZtrCWbcxiwJb5sdnlob8CI=; b=kdr0bihsNHpR19
	FJOuRKBJnvJJvmzHEGk0lmVwNO85G+tb4jVIYj2m77kPFEvixdcaQXp5htesBuezKIE/vma6V8841
	aDtwXSRwMqYTxe8RpVzYy6Vx7zUoQYhXYzcaOUYRcRrRnFOSXZ2eNML9LCa2GM//FRY+Js9BADHey
	7QjVkeSegsY8Ihhdj85yBFHE3yrSrijpBCxFeB3qmHyRLkcv+FfrMXxe4zAak3Nmv9TA4s5RLcPX7
	s9w6MGWqzsYjYILhFxCVHX+1zYuyj5lyi6XPOVsMz5hQ9UTCGOZD2iZzzfFdzU+/YVUGM/TUtw+4r
	2RNngMKUS/fwHDRA0j2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8PqS-0003LS-3v; Sun, 01 Mar 2020 14:45:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8Pq4-0002P3-Eo
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Mar 2020 14:45:06 +0000
Received: from localhost (unknown [193.47.165.251])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 94B29222C2;
 Sun,  1 Mar 2020 14:45:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583073904;
 bh=REqidRsnHmKNGcDlgj1+owVJZveTMi3QnPBPuA6l53E=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=G9vgFXynj9AS6qPNdWP8knzorczqfuki5tnmXvUIWP0u82c0lyXKAs1ubsG+gniKu
 9JW9RlXJ6VushFsHKNDd/zNeTw/lUyt91PkinYreeKMleK9fHzdqfnzmLbCr3x5NOR
 iq5RQd01AtAwOenSd5V3qaV5+VWXlVJhEW1kY3l8=
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next 01/23] net/broadcom: Clean broadcom code from driver
 versions
Date: Sun,  1 Mar 2020 16:44:34 +0200
Message-Id: <20200301144457.119795-2-leon@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200301144457.119795-1-leon@kernel.org>
References: <20200301144457.119795-1-leon@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_064504_548117_02DD215A 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Doug Berger <opendmb@gmail.com>, Ariel Elior <aelior@marvell.com>,
 Siva Reddy Kallam <siva.kallam@broadcom.com>, Rasesh Mody <rmody@marvell.com>,
 netdev@vger.kernel.org, GR-Linux-NIC-Dev@marvell.com,
 Prashant Sreedharan <prashant@broadcom.com>,
 Leon Romanovsky <leonro@mellanox.com>, Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, GR-everest-linux-l2@marvell.com,
 Michael Chan <michael.chan@broadcom.com>,
 Sudarsana Kalluru <skalluru@marvell.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Leon Romanovsky <leonro@mellanox.com>

Use linux kernel version for ethtool and module versions.

Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
---
 drivers/net/ethernet/broadcom/b44.c                 |  5 -----
 drivers/net/ethernet/broadcom/bcm63xx_enet.c        |  8 ++------
 drivers/net/ethernet/broadcom/bcmsysport.c          |  1 -
 drivers/net/ethernet/broadcom/bnx2.c                | 11 -----------
 drivers/net/ethernet/broadcom/bnx2x/bnx2x.h         |  8 +++++++-
 drivers/net/ethernet/broadcom/bnx2x/bnx2x_ethtool.c |  7 -------
 drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.c    |  7 -------
 drivers/net/ethernet/broadcom/bnxt/bnxt.c           |  8 --------
 drivers/net/ethernet/broadcom/bnxt/bnxt.h           |  4 +++-
 drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c   |  1 -
 drivers/net/ethernet/broadcom/bnxt/bnxt_vfr.c       |  1 -
 drivers/net/ethernet/broadcom/genet/bcmgenet.c      |  1 -
 drivers/net/ethernet/broadcom/tg3.c                 | 11 +----------
 13 files changed, 13 insertions(+), 60 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/b44.c b/drivers/net/ethernet/broadcom/b44.c
index a780b7215021..6fb620e25208 100644
--- a/drivers/net/ethernet/broadcom/b44.c
+++ b/drivers/net/ethernet/broadcom/b44.c
@@ -40,7 +40,6 @@
 #include "b44.h"
 
 #define DRV_MODULE_NAME		"b44"
-#define DRV_MODULE_VERSION	"2.0"
 #define DRV_DESCRIPTION		"Broadcom 44xx/47xx 10/100 PCI ethernet driver"
 
 #define B44_DEF_MSG_ENABLE	  \
@@ -97,7 +96,6 @@
 MODULE_AUTHOR("Felix Fietkau, Florian Schirmer, Pekka Pietikainen, David S. Miller");
 MODULE_DESCRIPTION(DRV_DESCRIPTION);
 MODULE_LICENSE("GPL");
-MODULE_VERSION(DRV_MODULE_VERSION);
 
 static int b44_debug = -1;	/* -1 == use B44_DEF_MSG_ENABLE as value */
 module_param(b44_debug, int, 0);
@@ -1791,7 +1789,6 @@ static void b44_get_drvinfo (struct net_device *dev, struct ethtool_drvinfo *inf
 	struct ssb_bus *bus = bp->sdev->bus;
 
 	strlcpy(info->driver, DRV_MODULE_NAME, sizeof(info->driver));
-	strlcpy(info->version, DRV_MODULE_VERSION, sizeof(info->version));
 	switch (bus->bustype) {
 	case SSB_BUSTYPE_PCI:
 		strlcpy(info->bus_info, pci_name(bus->host_pci), sizeof(info->bus_info));
@@ -2347,8 +2344,6 @@ static int b44_init_one(struct ssb_device *sdev,
 
 	instance++;
 
-	pr_info_once("%s version %s\n", DRV_DESCRIPTION, DRV_MODULE_VERSION);
-
 	dev = alloc_etherdev(sizeof(*bp));
 	if (!dev) {
 		err = -ENOMEM;
diff --git a/drivers/net/ethernet/broadcom/bcm63xx_enet.c b/drivers/net/ethernet/broadcom/bcm63xx_enet.c
index 620cd3fc1fbc..912e8d101e8d 100644
--- a/drivers/net/ethernet/broadcom/bcm63xx_enet.c
+++ b/drivers/net/ethernet/broadcom/bcm63xx_enet.c
@@ -22,7 +22,6 @@
 #include "bcm63xx_enet.h"
 
 static char bcm_enet_driver_name[] = "bcm63xx_enet";
-static char bcm_enet_driver_version[] = "1.0";
 
 static int copybreak __read_mostly = 128;
 module_param(copybreak, int, 0);
@@ -1304,8 +1303,6 @@ static void bcm_enet_get_drvinfo(struct net_device *netdev,
 				 struct ethtool_drvinfo *drvinfo)
 {
 	strlcpy(drvinfo->driver, bcm_enet_driver_name, sizeof(drvinfo->driver));
-	strlcpy(drvinfo->version, bcm_enet_driver_version,
-		sizeof(drvinfo->version));
 	strlcpy(drvinfo->fw_version, "N/A", sizeof(drvinfo->fw_version));
 	strlcpy(drvinfo->bus_info, "bcm63xx", sizeof(drvinfo->bus_info));
 }
@@ -2529,10 +2526,9 @@ static int bcm_enetsw_get_sset_count(struct net_device *netdev,
 static void bcm_enetsw_get_drvinfo(struct net_device *netdev,
 				   struct ethtool_drvinfo *drvinfo)
 {
-	strncpy(drvinfo->driver, bcm_enet_driver_name, 32);
-	strncpy(drvinfo->version, bcm_enet_driver_version, 32);
+	strncpy(drvinfo->driver, bcm_enet_driver_name, sizeof(drvinfo->driver));
 	strncpy(drvinfo->fw_version, "N/A", 32);
-	strncpy(drvinfo->bus_info, "bcm63xx", 32);
+	strncpy(drvinfo->bus_info, "bcm63xx", sizeof(drvinfo->bus_info));
 }
 
 static void bcm_enetsw_get_ethtool_stats(struct net_device *netdev,
diff --git a/drivers/net/ethernet/broadcom/bcmsysport.c b/drivers/net/ethernet/broadcom/bcmsysport.c
index e0611cba87f9..a2cf2ed8d278 100644
--- a/drivers/net/ethernet/broadcom/bcmsysport.c
+++ b/drivers/net/ethernet/broadcom/bcmsysport.c
@@ -287,7 +287,6 @@ static void bcm_sysport_get_drvinfo(struct net_device *dev,
 				    struct ethtool_drvinfo *info)
 {
 	strlcpy(info->driver, KBUILD_MODNAME, sizeof(info->driver));
-	strlcpy(info->version, "0.1", sizeof(info->version));
 	strlcpy(info->bus_info, "platform", sizeof(info->bus_info));
 }
 
diff --git a/drivers/net/ethernet/broadcom/bnx2.c b/drivers/net/ethernet/broadcom/bnx2.c
index dbb7874607ca..62e44f52580d 100644
--- a/drivers/net/ethernet/broadcom/bnx2.c
+++ b/drivers/net/ethernet/broadcom/bnx2.c
@@ -59,8 +59,6 @@
 #include "bnx2_fw.h"
 
 #define DRV_MODULE_NAME		"bnx2"
-#define DRV_MODULE_VERSION	"2.2.6"
-#define DRV_MODULE_RELDATE	"January 29, 2014"
 #define FW_MIPS_FILE_06		"bnx2/bnx2-mips-06-6.2.3.fw"
 #define FW_RV2P_FILE_06		"bnx2/bnx2-rv2p-06-6.0.15.fw"
 #define FW_MIPS_FILE_09		"bnx2/bnx2-mips-09-6.2.1b.fw"
@@ -72,13 +70,9 @@
 /* Time in jiffies before concluding the transmitter is hung. */
 #define TX_TIMEOUT  (5*HZ)
 
-static char version[] =
-	"QLogic " DRV_MODULE_NAME " Gigabit Ethernet Driver v" DRV_MODULE_VERSION " (" DRV_MODULE_RELDATE ")\n";
-
 MODULE_AUTHOR("Michael Chan <mchan@broadcom.com>");
 MODULE_DESCRIPTION("QLogic BCM5706/5708/5709/5716 Driver");
 MODULE_LICENSE("GPL");
-MODULE_VERSION(DRV_MODULE_VERSION);
 MODULE_FIRMWARE(FW_MIPS_FILE_06);
 MODULE_FIRMWARE(FW_RV2P_FILE_06);
 MODULE_FIRMWARE(FW_MIPS_FILE_09);
@@ -7048,7 +7042,6 @@ bnx2_get_drvinfo(struct net_device *dev, struct ethtool_drvinfo *info)
 	struct bnx2 *bp = netdev_priv(dev);
 
 	strlcpy(info->driver, DRV_MODULE_NAME, sizeof(info->driver));
-	strlcpy(info->version, DRV_MODULE_VERSION, sizeof(info->version));
 	strlcpy(info->bus_info, pci_name(bp->pdev), sizeof(info->bus_info));
 	strlcpy(info->fw_version, bp->fw_version, sizeof(info->fw_version));
 }
@@ -8562,15 +8555,11 @@ static const struct net_device_ops bnx2_netdev_ops = {
 static int
 bnx2_init_one(struct pci_dev *pdev, const struct pci_device_id *ent)
 {
-	static int version_printed = 0;
 	struct net_device *dev;
 	struct bnx2 *bp;
 	int rc;
 	char str[40];
 
-	if (version_printed++ == 0)
-		pr_info("%s", version);
-
 	/* dev zeroed in init_etherdev */
 	dev = alloc_etherdev_mq(sizeof(*bp), TX_MAX_RINGS);
 	if (!dev)
diff --git a/drivers/net/ethernet/broadcom/bnx2x/bnx2x.h b/drivers/net/ethernet/broadcom/bnx2x/bnx2x.h
index 6026b53137aa..4f5b2b81be3d 100644
--- a/drivers/net/ethernet/broadcom/bnx2x/bnx2x.h
+++ b/drivers/net/ethernet/broadcom/bnx2x/bnx2x.h
@@ -32,8 +32,14 @@
  * (you will need to reboot afterwards) */
 /* #define BNX2X_STOP_ON_ERROR */
 
+/* FIXME: Delete the DRV_MODULE_VERSION below, but please be warned
+ * that it is not an easy task because such change has all chances
+ * to break this driver due to amount of abuse of in-kernel interfaces
+ * between modules and FW.
+ *
+ * DO NOT UPDATE DRV_MODULE_VERSION below.
+ */
 #define DRV_MODULE_VERSION      "1.713.36-0"
-#define DRV_MODULE_RELDATE      "2014/02/10"
 #define BNX2X_BC_VER            0x040200
 
 #if defined(CONFIG_DCB)
diff --git a/drivers/net/ethernet/broadcom/bnx2x/bnx2x_ethtool.c b/drivers/net/ethernet/broadcom/bnx2x/bnx2x_ethtool.c
index 4a0ba6801c9e..5ccab7bb9686 100644
--- a/drivers/net/ethernet/broadcom/bnx2x/bnx2x_ethtool.c
+++ b/drivers/net/ethernet/broadcom/bnx2x/bnx2x_ethtool.c
@@ -1112,13 +1112,6 @@ static void bnx2x_get_drvinfo(struct net_device *dev,
 	u32 mbi;
 
 	strlcpy(info->driver, DRV_MODULE_NAME, sizeof(info->driver));
-	strlcpy(info->version, DRV_MODULE_VERSION, sizeof(info->version));
-
-	memset(version, 0, sizeof(version));
-	snprintf(version, ETHTOOL_FWVERS_LEN, " storm %d.%d.%d.%d",
-		 BCM_5710_FW_MAJOR_VERSION, BCM_5710_FW_MINOR_VERSION,
-		 BCM_5710_FW_REVISION_VERSION, BCM_5710_FW_ENGINEERING_VERSION);
-	strlcat(info->version, version, sizeof(info->version));
 
 	if (SHMEM2_HAS(bp, extended_dev_info_shared_addr)) {
 		ext_dev_info_offset = SHMEM2_RD(bp,
diff --git a/drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.c b/drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.c
index 1c26fa962233..db5107e7937c 100644
--- a/drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.c
+++ b/drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.c
@@ -81,17 +81,12 @@
 /* Time in jiffies before concluding the transmitter is hung */
 #define TX_TIMEOUT		(5*HZ)
 
-static char version[] =
-	"QLogic 5771x/578xx 10/20-Gigabit Ethernet Driver "
-	DRV_MODULE_NAME " " DRV_MODULE_VERSION " (" DRV_MODULE_RELDATE ")\n";
-
 MODULE_AUTHOR("Eliezer Tamir");
 MODULE_DESCRIPTION("QLogic "
 		   "BCM57710/57711/57711E/"
 		   "57712/57712_MF/57800/57800_MF/57810/57810_MF/"
 		   "57840/57840_MF Driver");
 MODULE_LICENSE("GPL");
-MODULE_VERSION(DRV_MODULE_VERSION);
 MODULE_FIRMWARE(FW_FILE_NAME_E1);
 MODULE_FIRMWARE(FW_FILE_NAME_E1H);
 MODULE_FIRMWARE(FW_FILE_NAME_E2);
@@ -14480,8 +14475,6 @@ static int __init bnx2x_init(void)
 {
 	int ret;
 
-	pr_info("%s", version);
-
 	bnx2x_wq = create_singlethread_workqueue("bnx2x");
 	if (bnx2x_wq == NULL) {
 		pr_err("Cannot create workqueue\n");
diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt.c b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
index f9a8151f092c..5883b244647f 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt.c
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
@@ -70,12 +70,8 @@
 
 #define BNXT_TX_TIMEOUT		(5 * HZ)
 
-static const char version[] =
-	"Broadcom NetXtreme-C/E driver " DRV_MODULE_NAME " v" DRV_MODULE_VERSION "\n";
-
 MODULE_LICENSE("GPL");
 MODULE_DESCRIPTION("Broadcom BCM573xx network driver");
-MODULE_VERSION(DRV_MODULE_VERSION);
 
 #define BNXT_RX_OFFSET (NET_SKB_PAD + NET_IP_ALIGN)
 #define BNXT_RX_DMA_OFFSET NET_SKB_PAD
@@ -11775,7 +11771,6 @@ static int bnxt_pcie_dsn_get(struct bnxt *bp, u8 dsn[])
 
 static int bnxt_init_one(struct pci_dev *pdev, const struct pci_device_id *ent)
 {
-	static int version_printed;
 	struct net_device *dev;
 	struct bnxt *bp;
 	int rc, max_irqs;
@@ -11783,9 +11778,6 @@ static int bnxt_init_one(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (pci_is_bridge(pdev))
 		return -ENODEV;
 
-	if (version_printed++ == 0)
-		pr_info("%s", version);
-
 	/* Clear any pending DMA transactions from crash kernel
 	 * while loading driver in capture kernel.
 	 */
diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt.h b/drivers/net/ethernet/broadcom/bnxt/bnxt.h
index cabef0b4f5fb..5adc25f0ecb8 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt.h
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt.h
@@ -12,8 +12,10 @@
 #define BNXT_H
 
 #define DRV_MODULE_NAME		"bnxt_en"
-#define DRV_MODULE_VERSION	"1.10.1"
 
+/* DO NOT CHANGE DRV_VER_* defines
+ * FIXME: Delete them
+ */
 #define DRV_VER_MAJ	1
 #define DRV_VER_MIN	10
 #define DRV_VER_UPD	1
diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c b/drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c
index e8fc1671c581..7e84f1dc9d87 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c
@@ -1236,7 +1236,6 @@ static void bnxt_get_drvinfo(struct net_device *dev,
 	struct bnxt *bp = netdev_priv(dev);
 
 	strlcpy(info->driver, DRV_MODULE_NAME, sizeof(info->driver));
-	strlcpy(info->version, DRV_MODULE_VERSION, sizeof(info->version));
 	strlcpy(info->fw_version, bp->fw_ver_str, sizeof(info->fw_version));
 	strlcpy(info->bus_info, pci_name(bp->pdev), sizeof(info->bus_info));
 	info->n_stats = bnxt_get_num_stats(bp);
diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt_vfr.c b/drivers/net/ethernet/broadcom/bnxt/bnxt_vfr.c
index 6f2faf81c1ae..4b5c8fd76a51 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt_vfr.c
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt_vfr.c
@@ -219,7 +219,6 @@ static void bnxt_vf_rep_get_drvinfo(struct net_device *dev,
 				    struct ethtool_drvinfo *info)
 {
 	strlcpy(info->driver, DRV_MODULE_NAME, sizeof(info->driver));
-	strlcpy(info->version, DRV_MODULE_VERSION, sizeof(info->version));
 }
 
 static int bnxt_vf_rep_get_port_parent_id(struct net_device *dev,
diff --git a/drivers/net/ethernet/broadcom/genet/bcmgenet.c b/drivers/net/ethernet/broadcom/genet/bcmgenet.c
index 80feb20a2e53..c2fda12cf773 100644
--- a/drivers/net/ethernet/broadcom/genet/bcmgenet.c
+++ b/drivers/net/ethernet/broadcom/genet/bcmgenet.c
@@ -879,7 +879,6 @@ static void bcmgenet_get_drvinfo(struct net_device *dev,
 				 struct ethtool_drvinfo *info)
 {
 	strlcpy(info->driver, "bcmgenet", sizeof(info->driver));
-	strlcpy(info->version, "v2.0", sizeof(info->version));
 }
 
 static int bcmgenet_get_sset_count(struct net_device *dev, int string_set)
diff --git a/drivers/net/ethernet/broadcom/tg3.c b/drivers/net/ethernet/broadcom/tg3.c
index 88466255bf66..16c1c9f150f1 100644
--- a/drivers/net/ethernet/broadcom/tg3.c
+++ b/drivers/net/ethernet/broadcom/tg3.c
@@ -96,11 +96,9 @@ static inline void _tg3_flag_clear(enum TG3_FLAGS flag, unsigned long *bits)
 	_tg3_flag_clear(TG3_FLAG_##flag, (tp)->tg3_flags)
 
 #define DRV_MODULE_NAME		"tg3"
+/* DO NOT UPDATE TG3_*_NUM defines */
 #define TG3_MAJ_NUM			3
 #define TG3_MIN_NUM			137
-#define DRV_MODULE_VERSION	\
-	__stringify(TG3_MAJ_NUM) "." __stringify(TG3_MIN_NUM)
-#define DRV_MODULE_RELDATE	"May 11, 2014"
 
 #define RESET_KIND_SHUTDOWN	0
 #define RESET_KIND_INIT		1
@@ -222,13 +220,9 @@ static inline void _tg3_flag_clear(enum TG3_FLAGS flag, unsigned long *bits)
 #define FIRMWARE_TG3TSO		"tigon/tg3_tso.bin"
 #define FIRMWARE_TG3TSO5	"tigon/tg3_tso5.bin"
 
-static char version[] =
-	DRV_MODULE_NAME ".c:v" DRV_MODULE_VERSION " (" DRV_MODULE_RELDATE ")";
-
 MODULE_AUTHOR("David S. Miller (davem@redhat.com) and Jeff Garzik (jgarzik@pobox.com)");
 MODULE_DESCRIPTION("Broadcom Tigon3 ethernet driver");
 MODULE_LICENSE("GPL");
-MODULE_VERSION(DRV_MODULE_VERSION);
 MODULE_FIRMWARE(FIRMWARE_TG3);
 MODULE_FIRMWARE(FIRMWARE_TG3TSO);
 MODULE_FIRMWARE(FIRMWARE_TG3TSO5);
@@ -12317,7 +12311,6 @@ static void tg3_get_drvinfo(struct net_device *dev, struct ethtool_drvinfo *info
 	struct tg3 *tp = netdev_priv(dev);
 
 	strlcpy(info->driver, DRV_MODULE_NAME, sizeof(info->driver));
-	strlcpy(info->version, DRV_MODULE_VERSION, sizeof(info->version));
 	strlcpy(info->fw_version, tp->fw_ver, sizeof(info->fw_version));
 	strlcpy(info->bus_info, pci_name(tp->pdev), sizeof(info->bus_info));
 }
@@ -17625,8 +17618,6 @@ static int tg3_init_one(struct pci_dev *pdev,
 	u64 dma_mask, persist_dma_mask;
 	netdev_features_t features = 0;
 
-	printk_once(KERN_INFO "%s\n", version);
-
 	err = pci_enable_device(pdev);
 	if (err) {
 		dev_err(&pdev->dev, "Cannot enable PCI device, aborting\n");
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
