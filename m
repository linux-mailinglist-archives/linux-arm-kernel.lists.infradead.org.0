Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9042007E1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 13:32:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J5FFgl/zv5HjI2Hqgy3nphZcUabkehl4QGX8oc8fl2Q=; b=SvjuKi/kYMYjXh
	Ybu63yAxHDdDGidcDMUCgNLUxTyEkiElMyxV6KCxwx8C3KGTpgud0FJbH6y3G42j7H6zyPlPAqdbz
	KXYMxVsUz6wKFN8lzy+WJu3TImpNu7Z1MqnIgwXd87LyuOSUpRBu/oH08FGsYuUzWgAsbGZuva2us
	LKP/ioR07g+YaynpUr13qtbOgfBuvNQ8HPZi7IRlmP4jSjqUCIDJkqKMqQL2g5sMVzjB/flFNxrx2
	MwM1ndr2Gr5OsX1JWyMwymLCT+0A4oest7nHUrVWtjPKf8G0IpRuYZje6sNGk9gqesE0chG6V2p8k
	rMFMK6uxHC1PjCTj6uCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmFGF-00014i-MS; Fri, 19 Jun 2020 11:32:43 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmFFJ-0000Q2-SN
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 11:31:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592566305; x=1624102305;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xnsFrORwOjtogo6UJal+A+gIzNwJELeloZHLPftY5EA=;
 b=hR7LWMBQ8eq5vyFR4XNk754ZfuyS31JiuInW3xOg9N3/9BFiAVEMGQcF
 DwJ7zuT0LV1nlgkK3XiU4ruriYLtZJTAec5653MuV6UJUiTu1FzZwpXmF
 LHDCCChXJcVn4TzoADodtGRm7ac44Zyp1Z9lxo0ym3La4qN3R030eWCal
 AFil8ySFWtW4QIAbI4mkEU4kwQ1nkKplb4D2WsopF7yYIKrqKvQfzs3dV
 SaNEHr6Y7hmI/yiVylxES+G3mmudUS7JcgintxaSJ2yNZMKc2JfmK4o8G
 tLdvHB0oPqOXD8DDXEX0FCmFItaMYivXqE8i1OrcNkAyc0IehE2ZDm6VO Q==;
IronPort-SDR: jnSH7JQJRMUKjkOVpFNL6yCg2p1STeTL6ynffCgAqQrrmOzlUdOtnw2b5nrgcfHa3oEj3n89T4
 NB35CxhfSdupHaw/zLPfVHm6BjVl64jpieBsCT9LjstwjUpkkozlIXGkHfARkMISr7UlVJLPj8
 1miu95dar4uAb45MDe5U6ZtQWgxuJT9FiDhnfL5uPjHJOPWes6WVXDLRhb2jOfFJ+28nVdk6kb
 dXHeX05pBDj3eVuyB9FIR7dJWu+wfKI1lLv4b+1qbMzj9Khm3sZzwGNbIg81mPCNAYCEjiFjKs
 iwg=
X-IronPort-AV: E=Sophos;i="5.75,255,1589266800"; d="scan'208";a="84298540"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 19 Jun 2020 04:31:40 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Fri, 19 Jun 2020 04:31:33 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Fri, 19 Jun 2020 04:31:30 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Mark Brown <broonie@kernel.org>, SoC Team <soc@kernel.org>
Subject: [PATCH v2 3/6] spi: dw: Add Microchip Sparx5 support
Date: Fri, 19 Jun 2020 13:31:18 +0200
Message-ID: <20200619113121.9984-4-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200619113121.9984-1-lars.povlsen@microchip.com>
References: <20200619113121.9984-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_043146_018865_AC4C2069 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [68.232.147.91 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Serge Semin <fancer.lancer@gmail.com>, linux-spi@vger.kernel.org,
 Serge Semin <Sergey.Semin@baikalelectronics.ru>,
 Lars Povlsen <lars.povlsen@microchip.com>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds SPI support for the Sparx5 SoC, which is using the MMIO
Designware SPI controller.

The Sparx5 differs from the Ocelot version in these areas:

 * The Sparx5 SPI controller has 2 different SPI bus interfaces on the
   same controller (don't ask...). As each SPI slave is physically
   located on a particular bus, they must be configured
   accordingly. The microchip,spi-interface2 property is used for
   this. Switching between busses also requires specific
   handling/timing.

 * The CS override is controlled by a new set of registers for
   this purpose.

 * The Sparx5 SPI controller has the RX sample delay register, and it
   must be configured for the (SPI NAND) device on SPI2.

Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 drivers/spi/spi-dw-mmio.c | 113 +++++++++++++++++++++++++++++++++++++-
 1 file changed, 112 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi-dw-mmio.c b/drivers/spi/spi-dw-mmio.c
index 403403deae664..78241d93289f5 100644
--- a/drivers/spi/spi-dw-mmio.c
+++ b/drivers/spi/spi-dw-mmio.c
@@ -20,6 +20,7 @@
 #include <linux/property.h>
 #include <linux/regmap.h>
 #include <linux/reset.h>
+#include <linux/bitfield.h>
 
 #include "spi-dw.h"
 
@@ -41,6 +42,12 @@ struct dw_spi_mmio {
 #define MSCC_IF_SI_OWNER_SIBM			1
 #define MSCC_IF_SI_OWNER_SIMC			2
 
+#define SPARX5_CPU_SYSTEM_CTRL_GENERAL_CTRL	0x88
+#define SPARX5_IF_SI_OWNER			GENMASK(7, 6)
+#define SPARX5_IF_SI2_OWNER			GENMASK(5, 4)
+#define SPARX5_FORCE_ENA			0xa4
+#define SPARX5_FORCE_VAL			0xa8
+
 #define MSCC_SPI_MST_SW_MODE			0x14
 #define MSCC_SPI_MST_SW_MODE_SW_PIN_CTRL_MODE	BIT(13)
 #define MSCC_SPI_MST_SW_MODE_SW_SPI_CS(x)	(x << 5)
@@ -54,7 +61,8 @@ struct dw_spi_mmio {
 
 struct dw_spi_mscc {
 	struct regmap       *syscon;
-	void __iomem        *spi_mst;
+	void __iomem        *spi_mst; /* Not sparx5 */
+	u32		    if2mask;  /* sparx5 only */
 };
 
 /*
@@ -134,6 +142,108 @@ static int dw_spi_mscc_jaguar2_init(struct platform_device *pdev,
 				JAGUAR2_IF_SI_OWNER_OFFSET);
 }
 
+/*
+ * Set the owner of the SPI interface
+ */
+static void dw_spi_sparx5_set_owner(struct regmap *syscon,
+				    u8 owner, u8 owner2)
+{
+	u32 val, msk;
+
+	val = FIELD_PREP(SPARX5_IF_SI_OWNER, owner) |
+		FIELD_PREP(SPARX5_IF_SI2_OWNER, owner2);
+	msk = SPARX5_IF_SI_OWNER | SPARX5_IF_SI2_OWNER;
+	regmap_update_bits(syscon,
+			   SPARX5_CPU_SYSTEM_CTRL_GENERAL_CTRL,
+			   msk, val);
+}
+
+static void dw_spi_sparx5_set_cs_owner(struct dw_spi_mmio *dwsmmio,
+				       u8 cs, u8 owner)
+{
+	struct dw_spi_mscc *dwsmscc = dwsmmio->priv;
+	u8 other = (owner == MSCC_IF_SI_OWNER_SIBM ?
+		    MSCC_IF_SI_OWNER_SIMC : MSCC_IF_SI_OWNER_SIBM);
+	if (dwsmscc->if2mask & BIT(cs))
+		/* SPI2 */
+		dw_spi_sparx5_set_owner(dwsmscc->syscon, other, owner);
+	else
+		/* SPI1 */
+		dw_spi_sparx5_set_owner(dwsmscc->syscon, owner, other);
+}
+
+/*
+ * The Designware SPI controller (referred to as master in the
+ * documentation) automatically deasserts chip select when the tx fifo
+ * is empty. The chip selects then needs to be driven by a CS override
+ * register. enable is an active low signal.
+ */
+static void dw_spi_sparx5_set_cs(struct spi_device *spi, bool nEnable)
+{
+	struct dw_spi *dws = spi_master_get_devdata(spi->master);
+	struct dw_spi_mmio *dwsmmio = container_of(dws, struct dw_spi_mmio, dws);
+	struct dw_spi_mscc *dwsmscc = dwsmmio->priv;
+	u8 cs = spi->chip_select;
+
+	if (!nEnable)
+		dw_spi_sparx5_set_cs_owner(dwsmmio, cs,
+					   MSCC_IF_SI_OWNER_SIMC);
+
+	if (!nEnable) {
+		/* Ensure CS toggles, so start off all disabled */
+		regmap_write(dwsmscc->syscon, SPARX5_FORCE_VAL, ~0);
+		/* CS override drive enable */
+		regmap_write(dwsmscc->syscon, SPARX5_FORCE_ENA, 1);
+		/* Allow settle */
+		udelay(1);
+		/* Now set CSx enabled */
+		regmap_write(dwsmscc->syscon, SPARX5_FORCE_VAL, ~BIT(cs));
+	} else {
+		/* CS value */
+		regmap_write(dwsmscc->syscon, SPARX5_FORCE_VAL, ~0);
+		/* CS override drive disable */
+		regmap_write(dwsmscc->syscon, SPARX5_FORCE_ENA, 0);
+	}
+
+	dw_spi_set_cs(spi, nEnable);
+}
+
+static int dw_spi_mscc_sparx5_init(struct platform_device *pdev,
+				   struct dw_spi_mmio *dwsmmio)
+{
+	const char *syscon_name = "microchip,sparx5-cpu-syscon";
+	struct dw_spi_mscc *dwsmscc;
+	struct device_node *nc;
+
+	dwsmscc = devm_kzalloc(&pdev->dev, sizeof(*dwsmscc), GFP_KERNEL);
+	if (!dwsmscc)
+		return -ENOMEM;
+
+	dwsmscc->syscon =
+		syscon_regmap_lookup_by_compatible(syscon_name);
+	if (IS_ERR(dwsmscc->syscon)) {
+		dev_err(&pdev->dev, "No syscon map %s\n", syscon_name);
+		return PTR_ERR(dwsmscc->syscon);
+	}
+
+	/* SPI2 mapping bitmask */
+	for_each_available_child_of_node(pdev->dev.of_node, nc) {
+		u32 cs;
+
+		if (of_property_read_u32(nc, "reg", &cs) == 0 &&
+		    of_property_read_bool(nc, "microchip,spi-interface2"))
+			dwsmscc->if2mask |= BIT(cs);
+	}
+
+	dwsmmio->dws.set_cs = dw_spi_sparx5_set_cs;
+	dwsmmio->priv = dwsmscc;
+
+	/* Register hook to configure CTRLR0 */
+	dwsmmio->dws.update_cr0 = dw_spi_update_cr0;
+
+	return 0;
+}
+
 static int dw_spi_alpine_init(struct platform_device *pdev,
 			      struct dw_spi_mmio *dwsmmio)
 {
@@ -297,6 +407,7 @@ static const struct of_device_id dw_spi_mmio_of_match[] = {
 	{ .compatible = "renesas,rzn1-spi", .data = dw_spi_dw_apb_init},
 	{ .compatible = "snps,dwc-ssi-1.01a", .data = dw_spi_dwc_ssi_init},
 	{ .compatible = "intel,keembay-ssi", .data = dw_spi_keembay_init},
+	{ .compatible = "microchip,sparx5-spi", dw_spi_mscc_sparx5_init},
 	{ /* end of table */}
 };
 MODULE_DEVICE_TABLE(of, dw_spi_mmio_of_match);
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
