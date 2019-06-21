Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 261654EC51
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 17:40:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+RPixWXjNbywa3C/AOaTZY57sJAFA9SoRkbS8ME27As=; b=RyBLVHkxvPH7kCPaI+XQuret0X
	h85I8gdIpSlRlDZpFLfJMMNpx2STGglBGl/S3bCI/2gVOn8yzRV55RQMN3fb7AiL4Zikg4tEVGWCM
	5Mg1SBkccPjKnJW86AAUmf8rOX0cz+tpSprtjVaxqpE+sRP/O587Nilfq6yPVTkfRMAkuu1ZDkLQd
	79QwXeiVL/htA/Ab4GyRu6Fv9zkPVvF3g3gFm7cS1t8ppNNRZMSDhujyGQ73Y7PzCtEp28royvlKp
	AQfTzFO9S82r8roiya7S5qc+Kb2nhKIIhwBIjwNI12a+bihDRR2SZF1gSf+1Qq8tt25pAIv+SJ0Ud
	Jt7Wlsow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heLeg-00065J-Bb; Fri, 21 Jun 2019 15:40:46 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heLcw-0003j2-IV
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 15:39:02 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 655651A0A89;
 Fri, 21 Jun 2019 17:38:55 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 58B201A0A85;
 Fri, 21 Jun 2019 17:38:55 +0200 (CEST)
Received: from fsr-ub1664-016.ea.freescale.net
 (fsr-ub1664-016.ea.freescale.net [10.171.71.216])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id DD3F720629;
 Fri, 21 Jun 2019 17:38:54 +0200 (CEST)
From: Claudiu Manoil <claudiu.manoil@nxp.com>
To: "David S . Miller" <davem@davemloft.net>
Subject: [PATCH net-next 2/6] ocelot: Refactor common ocelot probing code to
 ocelot_init
Date: Fri, 21 Jun 2019 18:38:48 +0300
Message-Id: <1561131532-14860-3-git-send-email-claudiu.manoil@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561131532-14860-1-git-send-email-claudiu.manoil@nxp.com>
References: <1561131532-14860-1-git-send-email-claudiu.manoil@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_083858_784881_32C54973 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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

This is just common path code that belogs to ocelot_init,
it has nothing to do with a specific SoC/board instance.
Add allocation err check in the process.

Signed-off-by: Claudiu Manoil <claudiu.manoil@nxp.com>
---
 drivers/net/ethernet/mscc/ocelot.c       | 6 ++++++
 drivers/net/ethernet/mscc/ocelot_board.c | 4 ----
 2 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/mscc/ocelot.c b/drivers/net/ethernet/mscc/ocelot.c
index 66cf57e6fd76..f07c398f8b21 100644
--- a/drivers/net/ethernet/mscc/ocelot.c
+++ b/drivers/net/ethernet/mscc/ocelot.c
@@ -1674,6 +1674,11 @@ int ocelot_init(struct ocelot *ocelot)
 	int i, cpu = ocelot->num_phys_ports;
 	char queue_name[32];
 
+	ocelot->ports = devm_kcalloc(ocelot->dev, ocelot->num_phys_ports,
+				     sizeof(struct ocelot_port *), GFP_KERNEL);
+	if (!ocelot->ports)
+		return -ENOMEM;
+
 	ocelot->lags = devm_kcalloc(ocelot->dev, ocelot->num_phys_ports,
 				    sizeof(u32), GFP_KERNEL);
 	if (!ocelot->lags)
@@ -1692,6 +1697,7 @@ int ocelot_init(struct ocelot *ocelot)
 	if (!ocelot->stats_queue)
 		return -ENOMEM;
 
+	INIT_LIST_HEAD(&ocelot->multicast);
 	ocelot_mact_init(ocelot);
 	ocelot_vlan_init(ocelot);
 	ocelot_ace_init(ocelot);
diff --git a/drivers/net/ethernet/mscc/ocelot_board.c b/drivers/net/ethernet/mscc/ocelot_board.c
index 58bde1a9eacb..2a6ee4edb858 100644
--- a/drivers/net/ethernet/mscc/ocelot_board.c
+++ b/drivers/net/ethernet/mscc/ocelot_board.c
@@ -255,10 +255,6 @@ static int mscc_ocelot_probe(struct platform_device *pdev)
 
 	ocelot->num_phys_ports = of_get_child_count(ports);
 
-	ocelot->ports = devm_kcalloc(&pdev->dev, ocelot->num_phys_ports,
-				     sizeof(struct ocelot_port *), GFP_KERNEL);
-
-	INIT_LIST_HEAD(&ocelot->multicast);
 	ocelot_init(ocelot);
 
 	for_each_available_child_of_node(ports, portnp) {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
