Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6563B1C56F4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 15:31:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nxJ7VBP4rTFMva0K5XxugJFbd18irQy+OrT8pB1KXSo=; b=iD/yXrjCZwoeBl
	CaG1CNobmPAiVwUKy0vqJKN+IeF0zoHbBvywG2ybKwYpAyudpwMVb/HEAxZ7P5XA5ACndiy2k+sVB
	uQd7wSREWL3OclaQmMEePbifVnpe5eXml/rka0f+ejDwbYpQn6ZSgyhwuOyl4ES/9BX3e7CkqPvnT
	nzP5oJZR4yMvwTFwdG6JZ3eimPGTdgnGa2h84QScOi8IN9v0g9ef3fh/SaZ9CzVhOyDfit3ipbW6Y
	fIL0WVs0QkcZqtULpZ2xTznLHJz86bGQoVWfqRRQKeA3whQPRSojwkiHaWLia8vKkp2cJskOv6Oa8
	fRzVWvC2ybcJ47z7I2OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVxfV-0004Eb-TL; Tue, 05 May 2020 13:31:29 +0000
Received: from mail-eopbgr70047.outbound.protection.outlook.com ([40.107.7.47]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVxe5-0000pb-Dx
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 13:30:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EEtCgmwfQR3ysee4HSu3wLTjC5YaoriRka+A9QIIPVWyuUiWCmWGEkcXrCVPNDfDXTBpmZ3VN4vFcT/uCkUcAh6mlsebLcm/I/igDJ7OKD9FaQoW5FJOGuu21B5REWDPxuDNTrMqtfKbKH38BD2I5saKKbfsgG9pZHIPDQEy464hnsQXTbosBzgpW+uSQMxdZ9ZC33AkSvhbVo3mRbJ/xNZmyffMQtIgPHRSFwjtBXly9V0XWIOXsBKFG9Rd4do8UHumj5JKftfmlz1kpFZcqvYiL3Vy0tV/09AuVxDGxzCDE6hYVSWtJNR0oPB6e4di2hlEx1JbmFDisQi0KP8U0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RbU1uMmgx9wWNcLn0JGu2hwfV0V40jcSYgeJL5oZ70o=;
 b=ngPbQCHF7TIWSEpE0QqDTHtHt/VIqHRktQqv214p4f4CQrgdC906QQBiqMoXXto6dd7rdDeqwFYA9lMlK4AqHknLMQ98VqJydhpzFMcaoE13RVAGloWB46zZAGcl0wmMbsKViaKTMMlcES+KQSFfZDg1R70H0ti1BxEFXdBtXLE6OIwUrY2oD6btTkQhGaTPnb+46cEIjpCwwi9YZiWrAi9iRJgwz75tQDFtG7RSDY4yA6I1YHl6dO4QLX3rqCsO+wGFiRqcQVQ2FEIbPJBe7CxrM9RHhlccZTGLliDuHmna/zeMofbr7FtodJv9KwSIpICNyJ/MPNH8ZGXFKiey+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RbU1uMmgx9wWNcLn0JGu2hwfV0V40jcSYgeJL5oZ70o=;
 b=K2mHFFoOrjIkUGkk5nVNAVLA8GU/AfyAhoqfQht9vW6sXpDpU+6IVM8Kahs5kKNNRhTLSKZ+0gm3IYA9RVQb7UrUmDVp3JjBiIqCm5Wzcftw/pHOnLngj9j82LIaLtToOKDyNMhBDZ/n+lnbolNQ8yiOFyAmLk7BGDmobmq1OJE=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=calvin.johnson@oss.nxp.com; 
Received: from DB8PR04MB5643.eurprd04.prod.outlook.com (2603:10a6:10:aa::25)
 by DB8PR04MB5596.eurprd04.prod.outlook.com (2603:10a6:10:a2::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.26; Tue, 5 May
 2020 13:29:59 +0000
Received: from DB8PR04MB5643.eurprd04.prod.outlook.com
 ([fe80::4031:5fb3:b908:40e9]) by DB8PR04MB5643.eurprd04.prod.outlook.com
 ([fe80::4031:5fb3:b908:40e9%7]) with mapi id 15.20.2958.030; Tue, 5 May 2020
 13:29:59 +0000
From: Calvin Johnson <calvin.johnson@oss.nxp.com>
To: "Rafael J . Wysocki" <rafael@kernel.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>, linux.cj@gmail.com,
 Jeremy Linton <jeremy.linton@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>,
 Florin Laurentiu Chiculita <florinlaurentiu.chiculita@nxp.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>,
 Madalin Bucur <madalin.bucur@oss.nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>
Subject: [net-next PATCH v3 5/5] net: mdiobus: Introduce
 fwnode_mdiobus_register_phy()
Date: Tue,  5 May 2020 18:59:05 +0530
Message-Id: <20200505132905.10276-6-calvin.johnson@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505132905.10276-1-calvin.johnson@oss.nxp.com>
References: <20200505132905.10276-1-calvin.johnson@oss.nxp.com>
X-ClientProxiedBy: SG2PR03CA0096.apcprd03.prod.outlook.com
 (2603:1096:4:7c::24) To DB8PR04MB5643.eurprd04.prod.outlook.com
 (2603:10a6:10:aa::25)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from lsv03152.swis.in-blr01.nxp.com (14.142.151.118) by
 SG2PR03CA0096.apcprd03.prod.outlook.com (2603:1096:4:7c::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.14 via Frontend Transport; Tue, 5 May 2020 13:29:53 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [14.142.151.118]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 76633471-02ad-438b-ba7b-08d7f0f8689e
X-MS-TrafficTypeDiagnostic: DB8PR04MB5596:|DB8PR04MB5596:
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB8PR04MB5596782BD447142394E9C182D2A70@DB8PR04MB5596.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-Forefront-PRVS: 0394259C80
Received-SPF: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HEMiVyPpPjmfDx3ihGAyFB+gwiYdRLFsJCnikUSYxJfWxEtLqZzZg3KjQqJP3Pikw9DpMg2WCp4lqCPN6rFLX5/E/0HQ14IGuMk93ENFVIJNcPrEPG9Z6q5vUioCiCWbLdEmAfxPFe6xQsi8qL8GynQMOb5ZdIXKPWI3NHK1Yw9rnUjzyltBqAOvCWdGizuBwzXLnLWzO+dyEqAk/cXWbAaOwaQsOIc7BfRRTYmQCv9mMQhmowWaR3I4Qdcb0k0cGkT+WPQQCPwF8gGROQInxSXS1IuNrUEtWh8Ba0vCxK/G7ADRh2Gj7KjAUEFglnPP7ozpHPJ5FhkCoaedP/IuxlJI6NJjoLKjUe9KT6MkfoPDDcyjzvVTCYeaTDCz8tosBZfTta25QhUmvuBJJ8M+vkzIpnyGpWNYoUVJc9XF3dHzUuDhAtuIzIu0mL5hPk0039K15KYhUNES9DkyJ0Y93cWViE2+yuA1gZxp3mBBkK3SLzSlqjwYptryAg6BFvQC+WH1JgmpnpcyB6gocJB7ZHljzQvYBAXsLtm6spOsHBw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR04MB5643.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(6486002)(5660300002)(44832011)(26005)(55236004)(66556008)(66946007)(66476007)(498600001)(6506007)(52116002)(4326008)(956004)(2616005)(2906002)(186003)(1076003)(16526019)(7416002)(6512007)(86362001)(110136005)(54906003)(6666004)(8936002)(1006002)(8676002)(110426005)(921003)(1121003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: kyxnZqsNaF4Eg1gg2Wbqq/nutt5+vkeCGV2GF8PpeRd2fbngRgWmeWrJA818VphGTJYUqyE3iuiHavAc86LlFw7/Y4z4nGMp/XjsHpsSaeu8WGNuEOM90/DCiECn9Td7ghXceVcpfaWmRDf1tDpawCBEEpo2PK8k2R6oAa9V3s/m85f3QVAnNUZABFuvUpnCfHU7JcQWTB/8G0ZMKG6o+10/NfUYJW4uBRvD/3GARBiww7I3fkjET7k1xm3EcQ6AitDroz7WUc3bYEKK8l/fZl0gW5GUDbBHN6rCv7fHbeXqCKicLwmA2Lwnh+vJsRrysXefqkBKlNvqhk7PD39kRxVqct2TJDr/3jysnro6nyeQNMy7zye0t5bXNvPoXioM4FSEBGgWxx5w8vRx6dE7UqdAUy8dCttkJzV/wRulQiKjWIDWS+T4qhfTd0LUld7zOrSP9Jnj805qWc+N31EreUeFcIu8z+0bqGG/cDu3WCaU4DB2FyyLn9EjOvZYav/hCfWId1ZPMGygUTprCiM//qAtYl1BMonOsFEWKAWr/mW5l5U+utOPWx/XHu4iAUX4NWMS8EQZq4Os8+RxK15rWWOhJj9lKG9oAC7XTZkowRbBOLdWwwCKwsWR6QCndZYcAho78PalENZ7DWZo7jWfdnQ+R+fX6cfhCB/xXylK4MC7ldVorFtHJchx1oGliIZP++JLelmNbYcEysTUt7FItwa4BAAI/AQDsfsmTByZmD83kAG734nUYWOkKqfoaovCuJfuSFZBo9lAvILKmMCzVM2aH8SfVZ+BiMVmNJPveEc=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 76633471-02ad-438b-ba7b-08d7f0f8689e
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2020 13:29:59.6281 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZdliRVxkXixC5YSOjtbiST+6ZILpYe7tk252gCI29WKkC4K5Ox8zajQu03S0dGr5bdvF5n69ocTvN3hyv0n7sA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB5596
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_063001_513847_085D24CD 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.7.47 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.47 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
 Heiner Kallweit <hkallweit1@gmail.com>,
 Diana Madalina Craciun <diana.craciun@nxp.com>, linux-acpi@vger.kernel.org,
 Makarand Pawagi <makarand.pawagi@nxp.com>, Varun Sethi <V.Sethi@nxp.com>,
 Marcin Wojtas <mw@semihalf.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce fwnode_mdiobus_register_phy() to register PHYs on the
mdiobus. From the compatible string, identify whether the PHY is
c45 and based on this create a PHY device instance which is
registered on the mdiobus.

Signed-off-by: Calvin Johnson <calvin.johnson@oss.nxp.com>
---

Changes in v3:
  Introduce two functions to register phy to mdiobus using fwnode

Changes in v2: None

 drivers/net/phy/mdio_bus.c | 41 ++++++++++++++++++++++++++++++++++++++
 include/linux/mdio.h       |  2 ++
 2 files changed, 43 insertions(+)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index 3e79b96fa344..b51e597c0479 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -106,6 +106,47 @@ int mdiobus_unregister_device(struct mdio_device *mdiodev)
 }
 EXPORT_SYMBOL(mdiobus_unregister_device);
 
+int fwnode_mdiobus_register_phy(struct mii_bus *bus,
+				struct fwnode_handle *child, u32 addr)
+{
+	struct phy_device *phy;
+	bool is_c45 = false;
+	const char *cp;
+	u32 phy_id;
+	int rc;
+
+	fwnode_property_read_string(child, "compatible", &cp);
+	if (!strcmp(cp, "ethernet-phy-ieee802.3-c45"))
+		is_c45 = true;
+
+	if (!is_c45 && !fwnode_get_phy_id(child, &phy_id))
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
+EXPORT_SYMBOL(fwnode_mdiobus_register_phy);
+
 struct phy_device *mdiobus_get_phy(struct mii_bus *bus, int addr)
 {
 	struct mdio_device *mdiodev = bus->mdio_map[addr];
diff --git a/include/linux/mdio.h b/include/linux/mdio.h
index 917e4bb2ed71..e55609697b42 100644
--- a/include/linux/mdio.h
+++ b/include/linux/mdio.h
@@ -330,6 +330,8 @@ int mdiobus_register_device(struct mdio_device *mdiodev);
 int mdiobus_unregister_device(struct mdio_device *mdiodev);
 bool mdiobus_is_registered_device(struct mii_bus *bus, int addr);
 struct phy_device *mdiobus_get_phy(struct mii_bus *bus, int addr);
+int fwnode_mdiobus_register_phy(struct mii_bus *bus,
+				      struct fwnode_handle *child, u32 addr);
 
 /**
  * mdio_module_driver() - Helper macro for registering mdio drivers
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
