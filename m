Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A5D1C56EF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 15:31:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HILzpQxsu1uG4m6B5hR6dGO/eF/kFYRLJELRcVlRVK4=; b=Ej/zU6MNP0dPca
	h/4nRV11ujwrF8tqrch85M+JTSfcw3Lz71/8KOYXIYlwim43F0HthcdquKxVT1KEeQCEnMlNEdQlO
	AfSpWwkUft6xoYC4x2fHURcSq2dH3nwUVR4AQ8HLXUIvqOL8bGJ/bah+tSwNdFWTY5FLIobM87GVC
	c3QxFfTqF+Ayjn3Wpk1g5vBwEUkVLCX34CtQAib7K3xP0vqCGM6rUGgIgYp0pGAjz7skaez8YwAYs
	eGv0NavxxF7VA0bczGxjwDvMxZ0i7GE3oh3I5Euc0JAzrMSVnTXKjVulQot0gwNl40MkWENq7NycK
	knMDezbMbaaYhH0lQABA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVxev-0003ec-0f; Tue, 05 May 2020 13:30:53 +0000
Received: from mail-eopbgr60052.outbound.protection.outlook.com ([40.107.6.52]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVxdt-0000ju-29
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 13:29:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gjMybA9YfGfe0fWWmZ+b49n9qE9QxrOw/M3iuyIsB/jwpfIhruxeCIIQAto/Uy0MJFR7M5nq1T4Jpdy7FN1AUUD5k0NbT/0+7yAlQN10mOplviX+ytdaRzeQHvH2E4DME90pH/o/n9ia51ISW1uzq9YCrb/0jKHpbjyA+yg46EQCziuRRFixZHuFU9P/K7AaNu9tfTSSvAn9SxBY9uOLEUe7mWgJe+W//Tqq/1781+v4Ovd8/abv0fl4+i4g5nMPZWPNgY8jnZTz8cIpUsVMSEO7TI6ZL9yY6LZw+vUPTRFr4b+Vn5Jv18o+Iz8MkLqR8d5IT3j8seN33qB/BR1Wgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Gqi6lMmsCYM0BH63LqsCt8eDvfGTisErP+pX53OYq7Q=;
 b=bB+Q/fPg9GnC7lD9DrYz69kXtP3kBHvqaFbeR/radGfvJ08wPtN3bNVkHo0Wg8wYAE8IWQyzct5ObvuFKyiT3drKPpy7Av9gQcMIM1NFBmvStA4dWK5yRTHYu2MHZY8mG/Lx4Sj1bOnt2tSFsJKK4poU2BEZjuAHAFm1N57EUSHfdOmuWR27K08vUVpAuYh+8HpsVzEsro/S1HJSvnScmwddV6mGP8UjSk/0baB2HS/aF2dM+x7/gt66BUDJ3oT4XC/zlEZnk5hQZLc2a9x7galdVRKGPxd3ulrkYsTqaWLSjQZ4adxDNxp2ILmpZ8mo0d3rvZO7Sm7zSpsDfx/hFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Gqi6lMmsCYM0BH63LqsCt8eDvfGTisErP+pX53OYq7Q=;
 b=kbHmdc5M6NrbNEzIjdAeXWiSfC50HHC/T0MEtcev8nkIew6wIsoYL05bOlKKgKtxyooE0HKv+A+cHPpD8z4esTmRuuzEMePUVdTQ2fxQFytDF5ZVgamR9am1FIGT4uk6l42mSZnDMtrscbGishHXoOZ8tzZOX2hEp5nDywc7+Sc=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=calvin.johnson@oss.nxp.com; 
Received: from DB8PR04MB5643.eurprd04.prod.outlook.com (2603:10a6:10:aa::25)
 by DB8PR04MB5596.eurprd04.prod.outlook.com (2603:10a6:10:a2::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.26; Tue, 5 May
 2020 13:29:46 +0000
Received: from DB8PR04MB5643.eurprd04.prod.outlook.com
 ([fe80::4031:5fb3:b908:40e9]) by DB8PR04MB5643.eurprd04.prod.outlook.com
 ([fe80::4031:5fb3:b908:40e9%7]) with mapi id 15.20.2958.030; Tue, 5 May 2020
 13:29:46 +0000
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
Subject: [net-next PATCH v3 3/5] phylink: Introduce
 phylink_fwnode_phy_connect()
Date: Tue,  5 May 2020 18:59:03 +0530
Message-Id: <20200505132905.10276-4-calvin.johnson@oss.nxp.com>
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
 15.20.2979.14 via Frontend Transport; Tue, 5 May 2020 13:29:40 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [14.142.151.118]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 2ab5254e-a600-4f4b-3a72-08d7f0f860cc
X-MS-TrafficTypeDiagnostic: DB8PR04MB5596:|DB8PR04MB5596:
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB8PR04MB5596C5299B9A94589370A514D2A70@DB8PR04MB5596.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2803;
X-Forefront-PRVS: 0394259C80
Received-SPF: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rYr0aNT1KG05q8KaB5WXlX6qSzH87J5VUPSP4tKjfYZp3DKLMHYE5EHlEQwcvEpkQOV1b+ieg7SbnaxT9Uv/IY/wPtsIJj34VAVUXymc2pyT4GTMnOYk/5NwlznngPaz7uGZaufOfmlodI24xKN1fb9MqdqqcpdGfSiYEQU4HMZ8MkLQ91ZxC69VSmARMun8ycAdz7NG0Ne7RPT2v9zspc2MiZPlyZCDbLD2Vc0Vp0XSqgCHqxNUCTfbukAgfknfg55KZaeKM+B4wCmt8M1TKu5yqA2Oc9A6O0UiA2Ro+5QGCWrybGsm4QqL/KBZrZ02QDbvaiGPTO5jljIpyrz0IsDMIKOTceHaSnB1hjTofQZ29qAFEDG5ra7RGhHsi+8vcrRzYb10cQUeamfOJ59ragDWEc14zWXc6tHJ+ef98Kbc4EiHy5uGN1L1NwLUlXmor5JoJ2KsRva1U2QZ5LvHWSj5hT7jIHzmFLTYv6tovm4VuuP/Z0doVXFQhl6eyVUIFGsouVp9BbWTCRxkfhs2Fu3Wl14CaTiYAM666N+1Ekc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR04MB5643.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(6486002)(5660300002)(44832011)(26005)(55236004)(66556008)(66946007)(66476007)(498600001)(6506007)(52116002)(4326008)(956004)(2616005)(2906002)(186003)(1076003)(16526019)(7416002)(6512007)(86362001)(110136005)(54906003)(6666004)(8936002)(1006002)(8676002)(110426005)(921003)(1121003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: OYv6pDYc1r7QBHS5FPMFZdGcN5bngO5AME73vh0rkXfJz38ypadlXJYTEbCmVba5f5wzf0OMxJ52cZNGk9lLH9eSI+rwPVdZ/fK6xkfR3Xly/dOUAWOyPNnmp5bDcTDUrCKNydKj7LnNiPRyikfDKFlOKAAz/DxFMCW73zDxKSjUZNicTF3LfwJqmnmfrwjSx7xBKM+GR83/yW4WUD9R87JHq+eyLzTZsVEK8ep6YWUTDr12GpbT6T3NRZBTfIeFlfcg4Q0AhI62Ba3LTGOpAzvKo4HgUxQGkXG2fO1lm447aCFKGwjUj65mLxBrR6tBV2j2einX7l8y/QxyNR7g1GZOKqavqeEUhant+LAfPgm7ChU+ox6af8ScyISvpGp+9KKg/vxIzW9bltKD8oEkfxoHGnb72kpj4a+3waq6VKV0adEQYii2zL1gYo6BLcnTetprPbUDA2hcsXPlOxldA6Y4Cy5WyXmPxkAQ1toEdbuX3tTGHjIdHZewCMkT4azyXkZ2VrkZl4kiEOQ3iZFQxuTOZqUcEyW7bR4oir00AkXLyrtChXF5AS2RgFKZIcq3R5+9IZffPxIAZY9t8AscwlN51Zt+PrDjW5ZQCm0vfvyOD6+0Lz/ViHls/pUu6jrlG4lPZHh4lUlxgNaeYN345wV+jXN8R9TVMTY3cFVJUXgCpPVcpTpcbNRMgNWnlZ80aT92StQqIXZCZUhLmctWhMFeFzaizWG8wMqyIk14ZrQp7v6kdAsK84cGXVf8o7pOK28091TjvSCRT5r3mIrFAIA0J/QMPA17woXzzUtwyt8=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ab5254e-a600-4f4b-3a72-08d7f0f860cc
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2020 13:29:46.5155 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ELUwMr3pCxiT28cWZuv7u8WU6laPXvbnM5XU37c0dnkz14fV9vmmRsknkLy9S+6Vus0uVKWOvdJkiofMFcGlmg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB5596
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_062949_289398_3B51065D 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.6.52 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.52 listed in wl.mailspike.net]
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

Define phylink_fwnode_phy_connect() to connect phy specified by
a fwnode to a phylink instance.

Signed-off-by: Calvin Johnson <calvin.johnson@oss.nxp.com>
---

Changes in v3:
  remove NULL return check as it is invalid
  remove unused phylink_device_phy_connect()

Changes in v2:
  replace of_ and acpi_ code with generic fwnode to get phy-handle.

 drivers/net/phy/phylink.c | 48 +++++++++++++++++++++++++++++++++++++++
 include/linux/phylink.h   |  3 +++
 2 files changed, 51 insertions(+)

diff --git a/drivers/net/phy/phylink.c b/drivers/net/phy/phylink.c
index 0f23bec431c1..560d1069426c 100644
--- a/drivers/net/phy/phylink.c
+++ b/drivers/net/phy/phylink.c
@@ -961,6 +961,54 @@ int phylink_connect_phy(struct phylink *pl, struct phy_device *phy)
 }
 EXPORT_SYMBOL_GPL(phylink_connect_phy);
 
+/**
+ * phylink_fwnode_phy_connect() - connect the PHY specified in the fwnode.
+ * @pl: a pointer to a &struct phylink returned from phylink_create()
+ * @fwnode: a pointer to a &struct fwnode_handle.
+ * @flags: PHY-specific flags to communicate to the PHY device driver
+ *
+ * Connect the phy specified @fwnode to the phylink instance specified
+ * by @pl. Actions specified in phylink_connect_phy() will be
+ * performed.
+ *
+ * Returns 0 on success or a negative errno.
+ */
+int phylink_fwnode_phy_connect(struct phylink *pl,
+			       struct fwnode_handle *fwnode,
+			       u32 flags)
+{
+	struct fwnode_handle *phy_fwnode;
+	struct phy_device *phy_dev;
+	int ret = 0;
+
+	/* Fixed links and 802.3z are handled without needing a PHY */
+	if (pl->cfg_link_an_mode == MLO_AN_FIXED ||
+	    (pl->cfg_link_an_mode == MLO_AN_INBAND &&
+	     phy_interface_mode_is_8023z(pl->link_interface)))
+		return 0;
+
+	phy_fwnode = fwnode_get_phy_node(fwnode);
+	if ((IS_ERR(phy_fwnode)) && pl->cfg_link_an_mode == MLO_AN_PHY)
+		return -ENODEV;
+
+	phy_dev = fwnode_phy_find_device(phy_fwnode);
+	fwnode_handle_put(phy_fwnode);
+	if (!phy_dev)
+		return -ENODEV;
+
+	ret = phy_attach_direct(pl->netdev, phy_dev, flags,
+				pl->link_interface);
+	if (ret)
+		return ret;
+
+	ret = phylink_bringup_phy(pl, phy_dev, pl->link_config.interface);
+	if (ret)
+		phy_detach(phy_dev);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(phylink_fwnode_phy_connect);
+
 /**
  * phylink_of_phy_connect() - connect the PHY specified in the DT mode.
  * @pl: a pointer to a &struct phylink returned from phylink_create()
diff --git a/include/linux/phylink.h b/include/linux/phylink.h
index cc5b452a184e..107fb0afc3bb 100644
--- a/include/linux/phylink.h
+++ b/include/linux/phylink.h
@@ -367,6 +367,9 @@ void phylink_add_pcs(struct phylink *, const struct phylink_pcs_ops *ops);
 void phylink_destroy(struct phylink *);
 
 int phylink_connect_phy(struct phylink *, struct phy_device *);
+int phylink_fwnode_phy_connect(struct phylink *pl,
+			       struct fwnode_handle *fwnode,
+			       u32 flags);
 int phylink_of_phy_connect(struct phylink *, struct device_node *, u32 flags);
 void phylink_disconnect_phy(struct phylink *);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
