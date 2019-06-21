Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 692994EC4A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 17:40:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Xmu+4ERnTFLyVskUtSVluLTuAIfSp9q09N38PGt3f6Y=; b=OWgQnWjVUJHs/gIiOMEi+oJUfp
	QNvIcUHWgpa01a20XA7TYYAvSw0sxNAsSKpYdGuGQ5ld35nji9C/w/p4OkyejU5e8Ji4kbcuTr1kh
	h2yX+7hhAbOMjHdqCkx5JOKYYS85vV1S3C7qiyj/F7FKjwwsW9+SQDP81AoS6JuNwegOlYEmxYz1p
	k6ToUJMNvw58WFh6JgeIs4KWCTh5SNK2hjUje8FRVeSXifKO+oFS5gG6N/zr66/ayOCLkaqdDDaJP
	vJ/TlWzrQ2K8hlTikX7SlBlky2oxtqSr99YLdvZqKbqfcFI9iT3CU4JPu7MZtf7nzTBRoVFEmGMY5
	kNbQUjhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heLdu-0004NT-Vj; Fri, 21 Jun 2019 15:39:58 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heLcw-0003ig-F2
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 15:39:03 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id DC5782009F8;
 Fri, 21 Jun 2019 17:38:54 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id CC560200071;
 Fri, 21 Jun 2019 17:38:54 +0200 (CEST)
Received: from fsr-ub1664-016.ea.freescale.net
 (fsr-ub1664-016.ea.freescale.net [10.171.71.216])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 5D36820629;
 Fri, 21 Jun 2019 17:38:54 +0200 (CEST)
From: Claudiu Manoil <claudiu.manoil@nxp.com>
To: "David S . Miller" <davem@davemloft.net>
Subject: [PATCH net-next 1/6] ocelot: Filter out ocelot SoC specific PCS
 config from common path
Date: Fri, 21 Jun 2019 18:38:47 +0300
Message-Id: <1561131532-14860-2-git-send-email-claudiu.manoil@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561131532-14860-1-git-send-email-claudiu.manoil@nxp.com>
References: <1561131532-14860-1-git-send-email-claudiu.manoil@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_083858_824316_D12853FE 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, netdev@vger.kernel.org,
 alexandru.marginean@nxp.com, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, Allan Nielsen <Allan.Nielsen@microsemi.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The adjust_link routine should be generic enough to be (re)used by
any SoC that integrates a switch core compatible with the Ocelot
core switch driver.  Currently all configurations are generic except
for the PCS settings that are SoC specific.  Move these out to the
Ocelot SoC/board instance.

Signed-off-by: Claudiu Manoil <claudiu.manoil@nxp.com>
---
 drivers/net/ethernet/mscc/ocelot.c      | 17 ++---------------
 drivers/net/ethernet/mscc/ocelot.h      |  2 ++
 drivers/net/ethernet/mscc/ocelot_regs.c | 21 +++++++++++++++++++++
 3 files changed, 25 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/mscc/ocelot.c b/drivers/net/ethernet/mscc/ocelot.c
index b71e4ecbe469..66cf57e6fd76 100644
--- a/drivers/net/ethernet/mscc/ocelot.c
+++ b/drivers/net/ethernet/mscc/ocelot.c
@@ -405,21 +405,8 @@ static void ocelot_port_adjust_link(struct net_device *dev)
 	ocelot_port_writel(port, DEV_MAC_HDX_CFG_LATE_COL_POS(67),
 			   DEV_MAC_HDX_CFG);
 
-	/* Disable HDX fast control */
-	ocelot_port_writel(port, DEV_PORT_MISC_HDX_FAST_DIS, DEV_PORT_MISC);
-
-	/* SGMII only for now */
-	ocelot_port_writel(port, PCS1G_MODE_CFG_SGMII_MODE_ENA, PCS1G_MODE_CFG);
-	ocelot_port_writel(port, PCS1G_SD_CFG_SD_SEL, PCS1G_SD_CFG);
-
-	/* Enable PCS */
-	ocelot_port_writel(port, PCS1G_CFG_PCS_ENA, PCS1G_CFG);
-
-	/* No aneg on SGMII */
-	ocelot_port_writel(port, 0, PCS1G_ANEG_CFG);
-
-	/* No loopback */
-	ocelot_port_writel(port, 0, PCS1G_LB_CFG);
+	if (ocelot->port_pcs_init)
+		ocelot->port_pcs_init(port);
 
 	/* Set Max Length and maximum tags allowed */
 	ocelot_port_writel(port, VLAN_ETH_FRAME_LEN, DEV_MAC_MAXLEN_CFG);
diff --git a/drivers/net/ethernet/mscc/ocelot.h b/drivers/net/ethernet/mscc/ocelot.h
index f7eeb4806897..e21a6fb22ef8 100644
--- a/drivers/net/ethernet/mscc/ocelot.h
+++ b/drivers/net/ethernet/mscc/ocelot.h
@@ -442,6 +442,8 @@ struct ocelot {
 	u64 *stats;
 	struct delayed_work stats_work;
 	struct workqueue_struct *stats_queue;
+
+	void (*port_pcs_init)(struct ocelot_port *port);
 };
 
 struct ocelot_port {
diff --git a/drivers/net/ethernet/mscc/ocelot_regs.c b/drivers/net/ethernet/mscc/ocelot_regs.c
index 6c387f994ec5..000c43984858 100644
--- a/drivers/net/ethernet/mscc/ocelot_regs.c
+++ b/drivers/net/ethernet/mscc/ocelot_regs.c
@@ -412,6 +412,26 @@ static void ocelot_pll5_init(struct ocelot *ocelot)
 		     HSIO_PLL5G_CFG2_AMPC_SEL(0x10));
 }
 
+static void ocelot_port_pcs_init(struct ocelot_port *port)
+{
+	/* Disable HDX fast control */
+	ocelot_port_writel(port, DEV_PORT_MISC_HDX_FAST_DIS, DEV_PORT_MISC);
+
+	/* SGMII only for now */
+	ocelot_port_writel(port, PCS1G_MODE_CFG_SGMII_MODE_ENA,
+			   PCS1G_MODE_CFG);
+	ocelot_port_writel(port, PCS1G_SD_CFG_SD_SEL, PCS1G_SD_CFG);
+
+	/* Enable PCS */
+	ocelot_port_writel(port, PCS1G_CFG_PCS_ENA, PCS1G_CFG);
+
+	/* No aneg on SGMII */
+	ocelot_port_writel(port, 0, PCS1G_ANEG_CFG);
+
+	/* No loopback */
+	ocelot_port_writel(port, 0, PCS1G_LB_CFG);
+}
+
 int ocelot_chip_init(struct ocelot *ocelot)
 {
 	int ret;
@@ -420,6 +440,7 @@ int ocelot_chip_init(struct ocelot *ocelot)
 	ocelot->stats_layout = ocelot_stats_layout;
 	ocelot->num_stats = ARRAY_SIZE(ocelot_stats_layout);
 	ocelot->shared_queue_sz = 224 * 1024;
+	ocelot->port_pcs_init = ocelot_port_pcs_init;
 
 	ret = ocelot_regfields_init(ocelot, ocelot_regfields);
 	if (ret)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
