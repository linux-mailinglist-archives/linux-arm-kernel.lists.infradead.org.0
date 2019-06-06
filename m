Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5FB1371C9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 12:32:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bHOIPzzFZutJxdMXAoVzoPhr25JcApOlYL+l6pMslIc=; b=jy9f7wp0i9cP+E
	ncBN0z7I2dk80v4yjZ8yXk3Dmpop8SmC6yxIhAH2JOsYMNRxTEKmNznFJQuLBffH9S8VmcmjhVMUr
	fN+MPdoT3LLyZCMntOferLZYQQ6EHxiUOeJmCvcJsuDY9k6uf+BITeRE65YnDHv2Ymdd4Mr+9adSH
	qnXtyGJISyMc6SN61JGgWIVL4M7oEH5p0clI1nWFp470QIQ3CaFhdPDswJRoOwX9NvRREmXqpSj91
	QbF/qiFIUbi7qBj1+naqa1QnXCrxrrqDKL6TpI3RE1ZhOwStT2Fm/xp9o6hFledpVLg1KjjunpHHG
	ribbN/Rin+xeSlRHemMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYpgn-0001so-IU; Thu, 06 Jun 2019 10:32:09 +0000
Received: from mail-eopbgr820077.outbound.protection.outlook.com
 ([40.107.82.77] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYpgf-0001sG-BT
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 10:32:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector1-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k90fH4tT/rspS3VycF7Hdz/P34PrfcFszmHWA/n+rIY=;
 b=Y6gG9teBGEQIQQJ44vi+oigqCFtnJwsykgGCC8qzXzxrn4MTI0kSsv0yv3JjgBWf2ZRwCHRdCsF86uWmVz/M0iRxHAhBH4x48KjQZISJfG1tdnxdcXXu8Ig7c/3iyZVh/nt8Ypl+YBgBYcQwmakWzoEEw6J0Zrk45025YWx+I6Y=
Received: from BYAPR03MB4773.namprd03.prod.outlook.com (20.179.92.152) by
 BYAPR03MB3704.namprd03.prod.outlook.com (52.135.214.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Thu, 6 Jun 2019 10:31:56 +0000
Received: from BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::e484:f15c:c415:5ff9]) by BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::e484:f15c:c415:5ff9%7]) with mapi id 15.20.1965.011; Thu, 6 Jun 2019
 10:31:56 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: Giuseppe Cavallaro <peppe.cavallaro@st.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Jose Abreu <joabreu@synopsys.com>, "David S.
 Miller" <davem@davemloft.net>
Subject: [PATCH v2 net-next] net: stmmac: move reset gpio parse & request to
 stmmac_mdio_register
Thread-Topic: [PATCH v2 net-next] net: stmmac: move reset gpio parse & request
 to stmmac_mdio_register
Thread-Index: AQHVHFMQuNgfdhfJWEqSSLEPrwpORw==
Date: Thu, 6 Jun 2019 10:31:56 +0000
Message-ID: <20190606182244.422e187f@xhacker.debian>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: HK2P15301CA0003.APCP153.PROD.OUTLOOK.COM
 (2603:1096:202:1::13) To BYAPR03MB4773.namprd03.prod.outlook.com
 (2603:10b6:a03:134::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6b15c4e5-e960-48d5-5376-08d6ea6a32d3
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR03MB3704; 
x-ms-traffictypediagnostic: BYAPR03MB3704:
x-microsoft-antispam-prvs: <BYAPR03MB370449C37FAF0C3E1CE4F90FED170@BYAPR03MB3704.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1265;
x-forefront-prvs: 00603B7EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(366004)(39860400002)(376002)(136003)(199004)(189003)(99286004)(52116002)(73956011)(7736002)(66556008)(110136005)(66446008)(3846002)(6116002)(102836004)(305945005)(316002)(14454004)(66476007)(66946007)(476003)(386003)(1076003)(2906002)(478600001)(6506007)(54906003)(6436002)(4326008)(6486002)(9686003)(6512007)(256004)(14444005)(72206003)(53936002)(71190400001)(71200400001)(25786009)(64756008)(8936002)(86362001)(50226002)(5660300002)(26005)(81166006)(81156014)(186003)(68736007)(8676002)(66066001)(486006)(39210200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB3704;
 H:BYAPR03MB4773.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: RU9OFmpN+CtOVfLZitzCJHphcEdiX9bBdajA3xgpyRNclyE3rfQfUxcbJkR/KECkqeTh0sSbtmJZnytWAelmUwJupSDtZs73HG+kVkBANWfhUgTDCcUwBmGTi7apjBoFxlW4Ib1P7w1qX1LWhKDLQIr1T/KS6/g7McKNSBc+eULLRdAWVi5m62JPx3d865T7jP0Jw/DBOQ6VQGr5NEGOV9EKLLV5mRUkht7VPiNH9TH6MCf/c1Sj+HG+dGK/wgxGrCwaHrO/vhoDcmzIwPLoCo2yoZQLIeb9FvWUZcYuD8a5r3ByWOOfORYuwc61ptP48UpcC2xuuCwkSlfnYOyUU0CvCkfMeUjF1kU+1tZd8c3sNGyhzhuUAahSl/XGd8iQbSu7JCEhdkBqWWgxf1i30PaxBGeNTU0WWM9+SbQth9E=
Content-ID: <3C1CF0562F09EC4F833E395484A62B31@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b15c4e5-e960-48d5-5376-08d6ea6a32d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2019 10:31:56.3754 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jiszha@synaptics.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB3704
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_033201_445361_95B22752 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.82.77 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Move the reset gpio dt parse and request to stmmac_mdio_register(),
thus makes the mdio code straightforward.

This patch also replace stack var mdio_bus_data with data to simplify
the code.

Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
---
Since v1:
 - rebase on the latest net-next tree

 .../net/ethernet/stmicro/stmmac/stmmac_mdio.c | 58 ++++++++-----------
 1 file changed, 25 insertions(+), 33 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
index 093a223fe408..7d1562ec1149 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
@@ -250,28 +250,7 @@ int stmmac_mdio_reset(struct mii_bus *bus)
 	struct stmmac_mdio_bus_data *data = priv->plat->mdio_bus_data;
 
 #ifdef CONFIG_OF
-	if (priv->device->of_node) {
-		if (data->reset_gpio < 0) {
-			struct device_node *np = priv->device->of_node;
-
-			if (!np)
-				return 0;
-
-			data->reset_gpio = of_get_named_gpio(np,
-						"snps,reset-gpio", 0);
-			if (data->reset_gpio < 0)
-				return 0;
-
-			data->active_low = of_property_read_bool(np,
-						"snps,reset-active-low");
-			of_property_read_u32_array(np,
-				"snps,reset-delays-us", data->delays, 3);
-
-			if (devm_gpio_request(priv->device, data->reset_gpio,
-					      "mdio-reset"))
-				return 0;
-		}
-
+	if (gpio_is_valid(data->reset_gpio)) {
 		gpio_direction_output(data->reset_gpio,
 				      data->active_low ? 1 : 0);
 		if (data->delays[0])
@@ -313,24 +292,38 @@ int stmmac_mdio_register(struct net_device *ndev)
 	int err = 0;
 	struct mii_bus *new_bus;
 	struct stmmac_priv *priv = netdev_priv(ndev);
-	struct stmmac_mdio_bus_data *mdio_bus_data = priv->plat->mdio_bus_data;
+	struct stmmac_mdio_bus_data *data = priv->plat->mdio_bus_data;
 	struct device_node *mdio_node = priv->plat->mdio_node;
 	struct device *dev = ndev->dev.parent;
 	int addr, found, max_addr;
 
-	if (!mdio_bus_data)
+	if (!data)
 		return 0;
 
 	new_bus = mdiobus_alloc();
 	if (!new_bus)
 		return -ENOMEM;
 
-	if (mdio_bus_data->irqs)
-		memcpy(new_bus->irq, mdio_bus_data->irqs, sizeof(new_bus->irq));
+	if (data->irqs)
+		memcpy(new_bus->irq, data->irqs, sizeof(new_bus->irq));
 
 #ifdef CONFIG_OF
-	if (priv->device->of_node)
-		mdio_bus_data->reset_gpio = -1;
+	if (priv->device->of_node) {
+		struct device_node *np = priv->device->of_node;
+
+		data->reset_gpio = of_get_named_gpio(np, "snps,reset-gpio", 0);
+		if (gpio_is_valid(data->reset_gpio)) {
+			data->active_low = of_property_read_bool(np,
+						"snps,reset-active-low");
+			of_property_read_u32_array(np,
+				"snps,reset-delays-us", data->delays, 3);
+
+			devm_gpio_request(priv->device, data->reset_gpio,
+					  "mdio-reset");
+		}
+	} else {
+		data->reset_gpio = -1;
+	}
 #endif
 
 	new_bus->name = "stmmac";
@@ -356,7 +349,7 @@ int stmmac_mdio_register(struct net_device *ndev)
 	snprintf(new_bus->id, MII_BUS_ID_SIZE, "%s-%x",
 		 new_bus->name, priv->plat->bus_id);
 	new_bus->priv = ndev;
-	new_bus->phy_mask = mdio_bus_data->phy_mask;
+	new_bus->phy_mask = data->phy_mask;
 	new_bus->parent = priv->device;
 
 	err = of_mdiobus_register(new_bus, mdio_node);
@@ -379,10 +372,9 @@ int stmmac_mdio_register(struct net_device *ndev)
 		 * If an IRQ was provided to be assigned after
 		 * the bus probe, do it here.
 		 */
-		if (!mdio_bus_data->irqs &&
-		    (mdio_bus_data->probed_phy_irq > 0)) {
-			new_bus->irq[addr] = mdio_bus_data->probed_phy_irq;
-			phydev->irq = mdio_bus_data->probed_phy_irq;
+		if (!data->irqs && (data->probed_phy_irq > 0)) {
+			new_bus->irq[addr] = data->probed_phy_irq;
+			phydev->irq = data->probed_phy_irq;
 		}
 
 		/*
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
