Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B05BE1AEBFF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 12:56:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2E8Z80iXA5w4mRS3QZQyIAm6HDK0NleVOn9HmKGllJQ=; b=IWO2EH0xjBgsJp
	gZEQU/supoHk5KXh7lzJMZkvc5tcFsa0FEYYR3+kXVqYo72vME5IYm05G9eRGaTy4AD/shyyOubYg
	PMTda/MQPOJEFsDfqhj+5ysixWhfNyBYxKoxVW0esKRMviw+EIA/0aUxk1W6DPrLNKfQTDDb5jHrJ
	f99Z8/VVPO1eOnMSnoHb+3xiFoXIepyHJcCNj6ug4VVZUDSG17O1Xk2VgthomB5BvugPYjBKxvoOx
	MTnyEDByIFqxub9POPod3yIlg8ss/PXGxA/kCIqHUqptu9LqkNHmPe9ntbTrXChSZkpNFuXbeMfxM
	aAv9tjAPY/BEeX9x3WPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPl8i-0005yJ-SG; Sat, 18 Apr 2020 10:56:00 +0000
Received: from mail-ve1eur03on0623.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::623]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPl8J-0005oL-CG
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 10:55:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z1wgCXEj0RkwDyFelF3IuHlm+OI85R7/21PuCRqU7498Fyfm+F1YrnbVaDKquzglr85/HYJ4LCFgRYT+8TBtqz6hg9WhfynIGJ+Y/wJzmEzYgOr019tZ7UucfBhwKSu8xnvF/iqtl0e+ahqdScKBe1VuhuWaf8XbMBgy7A1QQum58F7nGtsK6UY+WE8D7pKVzukvl/9agV/redIfFUi71Rux74SFWmBF4cfvUTmqReCV2q2rGkwzcUwoFlzyTBIj798vJhUFU11V9dHg0wonT1qWPiIiA4ep5fNOJ3yzvqvzatYFK7mp3qEjIX4pXHCZ5WswslZxTYCvH9QCDZqRig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bpOjjrmIvmFPj6ZoPQA2syIjIQfV6dqJdEyudumyddc=;
 b=jmCGwreEynFMN2u1J/yF9H60+qmikit58kV9HwxpPfArDKbHl6DHC3H2jJbslEvlAt/ocf8AjNqESDTC/D5SFDlmV1F9olUE50dHAFI6+5udFCRZp7miRK62Xj4PaqhcbdhCmBpE2Hqe6Ixj2KYuB5toSnF6TCTI+smQCWB5xuCOrpOWb0eBDcQArGOhsGQXIMhbz8R51qBo4Rb1s9hxScQS5s6+Kd/39hKXdDZzOSxJoQ1MuwsIuhhlmX538loh8YurCsykY1jiS5QR2iCZ0aSrT4BAJ9EdyJXAdCgMoUyI4ZsvKbmitOFYDCNfGB7C/qwiaAieIoaUQjjb+YwVeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bpOjjrmIvmFPj6ZoPQA2syIjIQfV6dqJdEyudumyddc=;
 b=CB8L4+SRf3IE2o8P/ImHx8c4K04vXQ53TxXz/jGVCE+qC6B4UoXfhtn71o0tLqvqsVbhD9+MNN6acVZTSTwyD9P1BOFeDVTeO78v2bV5VhF+cRj3TaB709Yo+fI3JB7UelYdf7Fi156T0djLIvB0MKlXHXzw3NS7qEk0Rp3IWEE=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=calvin.johnson@oss.nxp.com; 
Received: from AM0PR04MB5636.eurprd04.prod.outlook.com (2603:10a6:208:130::22)
 by AM0PR04MB6899.eurprd04.prod.outlook.com (2603:10a6:208:183::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Sat, 18 Apr
 2020 10:55:32 +0000
Received: from AM0PR04MB5636.eurprd04.prod.outlook.com
 ([fe80::c4fe:d4a4:f0e1:a75b]) by AM0PR04MB5636.eurprd04.prod.outlook.com
 ([fe80::c4fe:d4a4:f0e1:a75b%4]) with mapi id 15.20.2921.027; Sat, 18 Apr 2020
 10:55:32 +0000
From: Calvin Johnson <calvin.johnson@oss.nxp.com>
To: linux.cj@gmail.com, Jeremy Linton <jeremy.linton@arm.com>,
 Andrew Lunn <andrew@lunn.ch>, Andy Shevchenko <andy.shevchenko@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>,
 Florin Laurentiu Chiculita <florinlaurentiu.chiculita@nxp.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>,
 Madalin Bucur <madalin.bucur@oss.nxp.com>
Subject: [RFC net-next PATCH v2 1/2] net/fsl: add ACPI support for mdio bus
Date: Sat, 18 Apr 2020 16:24:31 +0530
Message-Id: <20200418105432.11233-2-calvin.johnson@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200418105432.11233-1-calvin.johnson@oss.nxp.com>
References: <20200418105432.11233-1-calvin.johnson@oss.nxp.com>
X-ClientProxiedBy: SG2PR03CA0099.apcprd03.prod.outlook.com
 (2603:1096:4:7c::27) To AM0PR04MB5636.eurprd04.prod.outlook.com
 (2603:10a6:208:130::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from lsv03152.swis.in-blr01.nxp.com (14.142.151.118) by
 SG2PR03CA0099.apcprd03.prod.outlook.com (2603:1096:4:7c::27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.6 via Frontend Transport; Sat, 18 Apr 2020 10:55:26 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [14.142.151.118]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 478594ee-decd-428d-9ea9-08d7e38703bb
X-MS-TrafficTypeDiagnostic: AM0PR04MB6899:|AM0PR04MB6899:
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB6899BC0FDD25AEF436D8AB6FD2D60@AM0PR04MB6899.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 0377802854
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB5636.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(346002)(376002)(39860400002)(366004)(136003)(396003)(478600001)(1076003)(86362001)(81156014)(26005)(4326008)(8676002)(8936002)(1006002)(6666004)(6512007)(316002)(6636002)(7416002)(186003)(16526019)(54906003)(110136005)(44832011)(2616005)(2906002)(956004)(52116002)(66476007)(55236004)(66556008)(6506007)(5660300002)(6486002)(66946007)(110426005)(921003);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: a80CoZx2gVsKxYGnBNHcAht2QqzBCo2p4iG2UDZ+iObrdVix+Tw3QM1+H44Tq6cCQdvClHWOlxt9TBJ7ldhYWXxR8M3abDI2YEidG6REGjRo0ThuwPzSZexVT21uBCDiNLE8wxmP6GrfvveEnNIJgtBt9WjMe/yiHNf/gSWyL/t67AJDdjezbUOC+XZEYsTyjzGaRW0XNrfVWXijk/G99knHb9cAB9s0HdK0FToBxVUp6zjqiE+5bkQHxHhD3WtymN843xLsJWR7ooV3e4myGXL1mOg8HYYd7fKFBUpeuwelvmxFvdAe3SinDoe99NuG+hWXqGaMFRaeEZ5a8Ee8iL2jCy+n2Vg4hfOaU9DD58FBrXYJ4diPfSEPhJvoTYI7Q/nBoGMxPY+zVDAg3UuZHwfwBgHJCKi46ChrXFHXHovh7qj6qGWnniaX5JF5vTpPKAZCkBBqVFLIEJ3WuM71B4MV7ZxPX9D4FfFgkJayxUOWTmOhzctsMHDHZd8uFLAuOMWXwqdVwzI21/Pu5DZxRQ==
X-MS-Exchange-AntiSpam-MessageData: Kk3W3wTJxw37+NR9dE7Ol6YIygriim0jYfCu0FCKbGDF0x0ypaPu/CapwALxMnw1KN8/bpbuvACuulSOZpFWbMKnpi/iLOOKyJIEs0qD4zD9pUCmQIUqYjSJ3DaM3s/dTENlp5p+j7BmeG58jYYv4w==
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 478594ee-decd-428d-9ea9-08d7e38703bb
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2020 10:55:32.1080 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A1MXwaFF3Qsy39ghg83+paXturzM3IP9I9+gwnR+7G/KU4/EAt4OzqGbcIrUeQCPY9WyTBGDE5ADkb7VtuWssA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6899
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_035535_433537_373E13A1 
X-CRM114-Status: GOOD (  19.10  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe09:0:0:0:623 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: "Rajesh V . Bikkina" <rajesh.bikkina@nxp.com>, netdev@vger.kernel.org,
 Pankaj Bansal <pankaj.bansal@nxp.com>, linux-kernel@vger.kernel.org,
 Calvin Johnson <calvin.johnson@oss.nxp.com>,
 Diana Madalina Craciun <diana.craciun@nxp.com>, linux-acpi@vger.kernel.org,
 Makarand Pawagi <makarand.pawagi@nxp.com>, Varun Sethi <V.Sethi@nxp.com>,
 Marcin Wojtas <mw@semihalf.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add ACPI support for MDIO bus registration while maintaining
the existing DT support.

Extract phy_id using xgmac_get_phy_id() from the compatible
string passed through the ACPI table.

Use ACPI property phy-channel to provide ID of the phy.

Use xgmac_mdiobus_register_phy() to register PHY devices
on the MDIO bus.

Signed-off-by: Calvin Johnson <calvin.johnson@oss.nxp.com>
---

Changes in v2:
- Use IS_ERR_OR_NULL for priv->mdio_base instead of plain NULL check
- Add missing terminator of struct acpi_device_id
- Use device_property_read_bool and avoid redundancy
- Add helper functions xgmac_get_phy_id() and xgmac_mdiobus_register_phy()

 drivers/net/ethernet/freescale/xgmac_mdio.c | 143 +++++++++++++++++---
 1 file changed, 121 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/freescale/xgmac_mdio.c b/drivers/net/ethernet/freescale/xgmac_mdio.c
index c82c85ef5fb3..d3480c0e0cf5 100644
--- a/drivers/net/ethernet/freescale/xgmac_mdio.c
+++ b/drivers/net/ethernet/freescale/xgmac_mdio.c
@@ -2,6 +2,7 @@
  * QorIQ 10G MDIO Controller
  *
  * Copyright 2012 Freescale Semiconductor, Inc.
+ * Copyright 2019 NXP
  *
  * Authors: Andy Fleming <afleming@freescale.com>
  *          Timur Tabi <timur@freescale.com>
@@ -11,6 +12,7 @@
  * kind, whether express or implied.
  */
 
+#include <linux/property.h>
 #include <linux/kernel.h>
 #include <linux/slab.h>
 #include <linux/interrupt.h>
@@ -20,6 +22,7 @@
 #include <linux/of_address.h>
 #include <linux/of_platform.h>
 #include <linux/of_mdio.h>
+#include <linux/acpi.h>
 
 /* Number of microseconds to wait for a register to respond */
 #define TIMEOUT	1000
@@ -241,18 +244,81 @@ static int xgmac_mdio_read(struct mii_bus *bus, int phy_id, int regnum)
 	return value;
 }
 
+/* Extract the clause 22 phy ID from the compatible string of the form
+ * ethernet-phy-idAAAA.BBBB
+ */
+static int xgmac_get_phy_id(struct fwnode_handle *fwnode, u32 *phy_id)
+{
+	const char *cp;
+	unsigned int upper, lower;
+	int ret;
+
+	ret = fwnode_property_read_string(fwnode, "compatible", &cp);
+	if (!ret) {
+		if (sscanf(cp, "ethernet-phy-id%4x.%4x",
+			   &upper, &lower) == 2) {
+			*phy_id = ((upper & 0xFFFF) << 16) | (lower & 0xFFFF);
+			return 0;
+		}
+	}
+	return -EINVAL;
+}
+
+static int xgmac_mdiobus_register_phy(struct mii_bus *bus,
+				      struct fwnode_handle *child, u32 addr)
+{
+	struct phy_device *phy;
+	bool is_c45 = false;
+	int rc;
+	const char *cp;
+	u32 phy_id;
+
+	fwnode_property_read_string(child, "compatible", &cp);
+	if (!strcmp(cp, "ethernet-phy-ieee802.3-c45"))
+		is_c45 = true;
+
+	if (!is_c45 && !xgmac_get_phy_id(child, &phy_id))
+		phy = phy_device_create(bus, addr, phy_id, 0, NULL);
+	else
+		phy = get_phy_device(bus, addr, is_c45);
+	if (IS_ERR(phy))
+		return PTR_ERR(phy);
+
+	phy->irq = bus->irq[addr];
+
+	/* Associate the fwnode with the device structure so it
+	 * can be looked up later.
+	 */
+	phy->mdio.dev.fwnode = child;
+
+	/* All data is now stored in the phy struct, so register it */
+	rc = phy_device_register(phy);
+	if (rc) {
+		phy_device_free(phy);
+		fwnode_handle_put(child);
+		return rc;
+	}
+
+	dev_dbg(&bus->dev, "registered phy at address %i\n", addr);
+
+	return 0;
+}
+
 static int xgmac_mdio_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
 	struct mii_bus *bus;
-	struct resource res;
+	struct resource *res;
 	struct mdio_fsl_priv *priv;
 	int ret;
+	struct fwnode_handle *fwnode;
+	struct fwnode_handle *child;
+	int addr, rc;
 
-	ret = of_address_to_resource(np, 0, &res);
-	if (ret) {
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	if (!res) {
 		dev_err(&pdev->dev, "could not obtain address\n");
-		return ret;
+		return -ENODEV;
 	}
 
 	bus = mdiobus_alloc_size(sizeof(struct mdio_fsl_priv));
@@ -263,25 +329,55 @@ static int xgmac_mdio_probe(struct platform_device *pdev)
 	bus->read = xgmac_mdio_read;
 	bus->write = xgmac_mdio_write;
 	bus->parent = &pdev->dev;
-	snprintf(bus->id, MII_BUS_ID_SIZE, "%llx", (unsigned long long)res.start);
+	snprintf(bus->id, MII_BUS_ID_SIZE, "%llx", (unsigned long long)res->start);
 
 	/* Set the PHY base address */
 	priv = bus->priv;
-	priv->mdio_base = of_iomap(np, 0);
-	if (!priv->mdio_base) {
+	priv->mdio_base = ioremap(res->start, resource_size(res));
+	if (IS_ERR_OR_NULL(priv->mdio_base)) {
 		ret = -ENOMEM;
 		goto err_ioremap;
 	}
 
-	priv->is_little_endian = of_property_read_bool(pdev->dev.of_node,
-						       "little-endian");
-
-	priv->has_a011043 = of_property_read_bool(pdev->dev.of_node,
-						  "fsl,erratum-a011043");
-
-	ret = of_mdiobus_register(bus, np);
-	if (ret) {
-		dev_err(&pdev->dev, "cannot register MDIO bus\n");
+	priv->is_little_endian = device_property_read_bool(&pdev->dev,
+							   "little-endian");
+
+	priv->has_a011043 = device_property_read_bool(&pdev->dev,
+						      "fsl,erratum-a011043");
+	if (is_of_node(pdev->dev.fwnode)) {
+		ret = of_mdiobus_register(bus, np);
+		if (ret) {
+			dev_err(&pdev->dev, "cannot register MDIO bus\n");
+			goto err_registration;
+		}
+	} else if (is_acpi_node(pdev->dev.fwnode)) {
+		/* Mask out all PHYs from auto probing. */
+		bus->phy_mask = ~0;
+		ret = mdiobus_register(bus);
+		if (ret) {
+			dev_err(&pdev->dev, "mdiobus register err(%d)\n", ret);
+			return ret;
+		}
+
+		fwnode = pdev->dev.fwnode;
+	/* Loop over the child nodes and register a phy_device for each PHY */
+		fwnode_for_each_child_node(fwnode, child) {
+			fwnode_property_read_u32(child, "phy-channel", &addr);
+
+			if (addr < 0 || addr >= PHY_MAX_ADDR) {
+				dev_err(&bus->dev, "Invalid PHY address %i\n", addr);
+				continue;
+			}
+
+			rc = xgmac_mdiobus_register_phy(bus, child, addr);
+			if (rc == -ENODEV)
+				dev_err(&bus->dev,
+					"MDIO device at address %d is missing.\n",
+					addr);
+		}
+	} else {
+		dev_err(&pdev->dev, "Cannot get cfg data from DT or ACPI\n");
+		ret = -ENXIO;
 		goto err_registration;
 	}
 
@@ -290,8 +386,6 @@ static int xgmac_mdio_probe(struct platform_device *pdev)
 	return 0;
 
 err_registration:
-	iounmap(priv->mdio_base);
-
 err_ioremap:
 	mdiobus_free(bus);
 
@@ -303,13 +397,12 @@ static int xgmac_mdio_remove(struct platform_device *pdev)
 	struct mii_bus *bus = platform_get_drvdata(pdev);
 
 	mdiobus_unregister(bus);
-	iounmap(bus->priv);
 	mdiobus_free(bus);
 
 	return 0;
 }
 
-static const struct of_device_id xgmac_mdio_match[] = {
+static const struct of_device_id xgmac_mdio_of_match[] = {
 	{
 		.compatible = "fsl,fman-xmdio",
 	},
@@ -318,12 +411,18 @@ static const struct of_device_id xgmac_mdio_match[] = {
 	},
 	{},
 };
-MODULE_DEVICE_TABLE(of, xgmac_mdio_match);
+MODULE_DEVICE_TABLE(of, xgmac_mdio_of_match);
+
+static const struct acpi_device_id xgmac_mdio_acpi_match[] = {
+	{"NXP0006", 0}
+};
+MODULE_DEVICE_TABLE(acpi, xgmac_mdio_acpi_match);
 
 static struct platform_driver xgmac_mdio_driver = {
 	.driver = {
 		.name = "fsl-fman_xmdio",
-		.of_match_table = xgmac_mdio_match,
+		.of_match_table = xgmac_mdio_of_match,
+		.acpi_match_table = ACPI_PTR(xgmac_mdio_acpi_match),
 	},
 	.probe = xgmac_mdio_probe,
 	.remove = xgmac_mdio_remove,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
