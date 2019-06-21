Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 003F34EC4F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 17:40:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dvIz9J0FDJ2uY8x5voHBGscsA+vFFCmqgb1gte4iblI=; b=KV6t7QLTn0MgXKvgZ9W6OFJiL4
	XZEVhMRHigIRaCrBnropqy2c9hcDVLoSbQSkg/ICGTzJR0/hUikSia0IPP8gGPKNKMHUlUb4+L/fE
	ktjwZTD+9y5OYcAzKximnwaPdPirp2v+AE5nX1EI8mJQeLeAkRtvvPhrYrlOiLtDgLJCeZxDHgdm1
	jJo/3lKlww7YUkTiaRZtJBN1q98bL2jIgkSXVlhzkRC8jTDIk/JIpsMAvDVeiil4KbeNhNLarsbPu
	BwNonHYoqQOSJktOjkVYSUafWqovLXnBLYaoWCHaF5niq8u7iE0s5Cx+l1LQRC3ae4RYz2bBbJw42
	dL4aUEXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heLeM-0004cQ-Ue; Fri, 21 Jun 2019 15:40:26 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heLcx-0003jM-69
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 15:39:02 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id E6F852009FA;
 Fri, 21 Jun 2019 17:38:55 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id D78B0200071;
 Fri, 21 Jun 2019 17:38:55 +0200 (CEST)
Received: from fsr-ub1664-016.ea.freescale.net
 (fsr-ub1664-016.ea.freescale.net [10.171.71.216])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 6847920629;
 Fri, 21 Jun 2019 17:38:55 +0200 (CEST)
From: Claudiu Manoil <claudiu.manoil@nxp.com>
To: "David S . Miller" <davem@davemloft.net>
Subject: [PATCH net-next 3/6] ocelot: Factor out resource ioremap and regmap
 init common code
Date: Fri, 21 Jun 2019 18:38:49 +0300
Message-Id: <1561131532-14860-4-git-send-email-claudiu.manoil@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561131532-14860-1-git-send-email-claudiu.manoil@nxp.com>
References: <1561131532-14860-1-git-send-email-claudiu.manoil@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_083859_536483_0F9AB03E 
X-CRM114-Status: GOOD (  10.18  )
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

Let's make this ioremap and regmap init code common.  It should not
be platform dependent as it should be usable by PCI devices too.
Use better names where necessary to avoid clashes.

Signed-off-by: Claudiu Manoil <claudiu.manoil@nxp.com>
---
 drivers/net/ethernet/mscc/ocelot.h       |  4 +---
 drivers/net/ethernet/mscc/ocelot_board.c | 12 ++++++++----
 drivers/net/ethernet/mscc/ocelot_io.c    | 14 +++++---------
 3 files changed, 14 insertions(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/mscc/ocelot.h b/drivers/net/ethernet/mscc/ocelot.h
index e21a6fb22ef8..4235d7294772 100644
--- a/drivers/net/ethernet/mscc/ocelot.h
+++ b/drivers/net/ethernet/mscc/ocelot.h
@@ -493,9 +493,7 @@ void ocelot_port_writel(struct ocelot_port *port, u32 val, u32 reg);
 
 int ocelot_regfields_init(struct ocelot *ocelot,
 			  const struct reg_field *const regfields);
-struct regmap *ocelot_io_platform_init(struct ocelot *ocelot,
-				       struct platform_device *pdev,
-				       const char *name);
+struct regmap *ocelot_io_init(struct ocelot *ocelot, struct resource *res);
 
 #define ocelot_field_write(ocelot, reg, val) regmap_field_write((ocelot)->regfields[(reg)], (val))
 #define ocelot_field_read(ocelot, reg, val) regmap_field_read((ocelot)->regfields[(reg)], (val))
diff --git a/drivers/net/ethernet/mscc/ocelot_board.c b/drivers/net/ethernet/mscc/ocelot_board.c
index 2a6ee4edb858..489177058d9e 100644
--- a/drivers/net/ethernet/mscc/ocelot_board.c
+++ b/drivers/net/ethernet/mscc/ocelot_board.c
@@ -182,7 +182,7 @@ static int mscc_ocelot_probe(struct platform_device *pdev)
 	struct {
 		enum ocelot_target id;
 		char *name;
-	} res[] = {
+	} io_target[] = {
 		{ SYS, "sys" },
 		{ REW, "rew" },
 		{ QSYS, "qsys" },
@@ -201,14 +201,18 @@ static int mscc_ocelot_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, ocelot);
 	ocelot->dev = &pdev->dev;
 
-	for (i = 0; i < ARRAY_SIZE(res); i++) {
+	for (i = 0; i < ARRAY_SIZE(io_target); i++) {
 		struct regmap *target;
+		struct resource *res;
+
+		res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
+						   io_target[i].name);
 
-		target = ocelot_io_platform_init(ocelot, pdev, res[i].name);
+		target = ocelot_io_init(ocelot, res);
 		if (IS_ERR(target))
 			return PTR_ERR(target);
 
-		ocelot->targets[res[i].id] = target;
+		ocelot->targets[io_target[i].id] = target;
 	}
 
 	hsio = syscon_regmap_lookup_by_compatible("mscc,ocelot-hsio");
diff --git a/drivers/net/ethernet/mscc/ocelot_io.c b/drivers/net/ethernet/mscc/ocelot_io.c
index c6db8ad31fdf..9a9a6766c231 100644
--- a/drivers/net/ethernet/mscc/ocelot_io.c
+++ b/drivers/net/ethernet/mscc/ocelot_io.c
@@ -97,20 +97,16 @@ static struct regmap_config ocelot_regmap_config = {
 	.reg_stride	= 4,
 };
 
-struct regmap *ocelot_io_platform_init(struct ocelot *ocelot,
-				       struct platform_device *pdev,
-				       const char *name)
+struct regmap *ocelot_io_init(struct ocelot *ocelot, struct resource *res)
 {
-	struct resource *res;
 	void __iomem *regs;
 
-	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, name);
 	regs = devm_ioremap_resource(ocelot->dev, res);
 	if (IS_ERR(regs))
 		return ERR_CAST(regs);
 
-	ocelot_regmap_config.name = name;
-	return devm_regmap_init_mmio(ocelot->dev, regs,
-				     &ocelot_regmap_config);
+	ocelot_regmap_config.name = res->name;
+
+	return devm_regmap_init_mmio(ocelot->dev, regs, &ocelot_regmap_config);
 }
-EXPORT_SYMBOL(ocelot_io_platform_init);
+EXPORT_SYMBOL(ocelot_io_init);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
