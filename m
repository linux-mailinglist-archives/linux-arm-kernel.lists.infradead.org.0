Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA29174DD5
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Mar 2020 15:46:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D9cn6pOu75yljQscRpcUpS9NJ37gI6S6ZmqB/d+Ztdw=; b=Y3cW843cPoArUM
	Lm+kOAXdTX/smKGHANZQdwBwY0eg2/LqCYd7erK3xUkMklHSSMJMIVzMbAA4dgboLIJ+fj33mEbzo
	WLFnhD3sQUq7bDGVrudl1ci+ru7DF+IWcOcBBO+683y5fHVzI8JRlYkqYZhHuI4P6eRFUOWqBPmvm
	wHvn+77BBqU6Qs+H9qVPqQik+p38YirYhK5xfTs2KtDOJeGzk5uEGR2YEBSbco9vgCzSJ8rMEjVyB
	51skvnAlU750ZgGu7HX/5i7wV9bXqMR1AdKpclDiM/sOd8q4ZvaUdaytcHmhAxa9HmizCn4zTWGI7
	z5yB1T29PDjQXE4fexyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8Pr4-0003vh-Hf; Sun, 01 Mar 2020 14:46:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8PqI-0003P7-GI
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Mar 2020 14:45:21 +0000
Received: from localhost (unknown [193.47.165.251])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9B9D72468A;
 Sun,  1 Mar 2020 14:45:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583073917;
 bh=pd/NGsl+FJgnqBYsiZ/s5l3256lUdAtpUXAA0265xgk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XKDyMxj9fpi3CZBT+VBarUaR0JDS4Jw7swPU+Qn0yO9rvD/jiJE5J5BnE+HnpLCp/
 PDHLAC5Rx+eOrYSsK/gP6CIVQTgLaAIe5VfmWHcP3USzJ4uGcCnmv40k8iHfF82Sqe
 Rg3iu4Ap7KqUI67NrqriiVga2X9+2fAK/V+t4SAw=
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next 06/23] net/cavium: Clean driver versions
Date: Sun,  1 Mar 2020 16:44:39 +0200
Message-Id: <20200301144457.119795-7-leon@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200301144457.119795-1-leon@kernel.org>
References: <20200301144457.119795-1-leon@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_064518_566223_667AD82A 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.7 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
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
Cc: Leon Romanovsky <leonro@mellanox.com>,
 Robert Richter <rrichter@marvell.com>, Sunil Goutham <sgoutham@marvell.com>,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Leon Romanovsky <leonro@mellanox.com>

Delete driver and module versions in favor of global
linux kernel variant.

Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
---
 drivers/net/ethernet/cavium/octeon/octeon_mgmt.c    | 4 ----
 drivers/net/ethernet/cavium/thunder/nicvf_ethtool.c | 2 --
 2 files changed, 6 deletions(-)

diff --git a/drivers/net/ethernet/cavium/octeon/octeon_mgmt.c b/drivers/net/ethernet/cavium/octeon/octeon_mgmt.c
index e9575887a4f8..2985699ad1da 100644
--- a/drivers/net/ethernet/cavium/octeon/octeon_mgmt.c
+++ b/drivers/net/ethernet/cavium/octeon/octeon_mgmt.c
@@ -28,7 +28,6 @@
 #include <asm/octeon/cvmx-agl-defs.h>
 
 #define DRV_NAME "octeon_mgmt"
-#define DRV_VERSION "2.0"
 #define DRV_DESCRIPTION \
 	"Cavium Networks Octeon MII (management) port Network Driver"
 
@@ -1340,7 +1339,6 @@ static void octeon_mgmt_get_drvinfo(struct net_device *netdev,
 				    struct ethtool_drvinfo *info)
 {
 	strlcpy(info->driver, DRV_NAME, sizeof(info->driver));
-	strlcpy(info->version, DRV_VERSION, sizeof(info->version));
 	strlcpy(info->fw_version, "N/A", sizeof(info->fw_version));
 	strlcpy(info->bus_info, "N/A", sizeof(info->bus_info));
 }
@@ -1517,7 +1515,6 @@ static int octeon_mgmt_probe(struct platform_device *pdev)
 	if (result)
 		goto err;
 
-	dev_info(&pdev->dev, "Version " DRV_VERSION "\n");
 	return 0;
 
 err:
@@ -1574,4 +1571,3 @@ module_exit(octeon_mgmt_mod_exit);
 MODULE_DESCRIPTION(DRV_DESCRIPTION);
 MODULE_AUTHOR("David Daney");
 MODULE_LICENSE("GPL");
-MODULE_VERSION(DRV_VERSION);
diff --git a/drivers/net/ethernet/cavium/thunder/nicvf_ethtool.c b/drivers/net/ethernet/cavium/thunder/nicvf_ethtool.c
index 5e0b16bb95a0..83dabcffc789 100644
--- a/drivers/net/ethernet/cavium/thunder/nicvf_ethtool.c
+++ b/drivers/net/ethernet/cavium/thunder/nicvf_ethtool.c
@@ -16,7 +16,6 @@
 #include "../common/cavium_ptp.h"
 
 #define DRV_NAME	"nicvf"
-#define DRV_VERSION     "1.0"
 
 struct nicvf_stat {
 	char name[ETH_GSTRING_LEN];
@@ -192,7 +191,6 @@ static void nicvf_get_drvinfo(struct net_device *netdev,
 	struct nicvf *nic = netdev_priv(netdev);
 
 	strlcpy(info->driver, DRV_NAME, sizeof(info->driver));
-	strlcpy(info->version, DRV_VERSION, sizeof(info->version));
 	strlcpy(info->bus_info, pci_name(nic->pdev), sizeof(info->bus_info));
 }
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
