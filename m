Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1DC1B6BCF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 05:17:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uBP4nnPKKEHLgvBHpyZYOovkXvPJQAUPBNPPzdrUCUI=; b=HVI6530bcIevGG
	hGASadQ7xbmm+IhwGl4JNUW2YZZujV89IVzbPtnmW3BCOI/TAU55I1bk6ZTeDHfwpkcfjydIwy0sg
	lOYVIv0tSsAmM2ZLgM4Z2PLxtkpzVaKP0qndopAfu4nw1tZZCSQsjg1XqqubiSwXI2z/v+4Om0KDx
	NnV+BySOA6f4tjEEtzIEObwdiUErxn1ymLlALzt73eTfNABOfuaBJDgtlyKDlwXuVbvvHIEdsuTH4
	jxiAfLwXRJsgkHJg4osOeW1GqrYg7dUH7temEdPr1ZxMlmcpuqBBLX27G8ERf2+aiwM//dTmhdcm3
	tAepdZlIaupKrc6VP+aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRoqI-0006ZV-87; Fri, 24 Apr 2020 03:17:30 +0000
Received: from mail-eopbgr60055.outbound.protection.outlook.com ([40.107.6.55]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRops-0006Nt-9R
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 03:17:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E341pJLKQobjBTqYpu2I/cX1xVAC/slqXkqVUF2I5hd2lAEcyHowkJXmKpihsvBBfj6zrkaDAbl2g/ZhqystdAU5orUMWcHsniNYMs6FP8arit7rcJSJ5p2h0oPhfVv0Mi4EA3ZoItf9+RpcAe/lzQOY3XuShLtC3x91oshbSiM2WTbkh8QEXPSngryhEVXnl/uIPJ6zmfJ4nu4O7iUmAzcsZcCMS7rOLik3n3aw+0ZkFqOzsc0yJuRKEj8I4eluoZCKqEfJ0jJT8vuryAGujQG2fr/lMHWV7wcv+Z7OasT1lDorD7hME8s643f3lvIhXXYNes0pL9kWQ0uv4XJdTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OImM7OTywsOShtfgP6zP7HLR/Oaf5Mea9aONsBBkkrA=;
 b=DrXflUyL7ttzfxuXRp9mZE2OBF3K8a4mhBLEf/F7ngbNfN1cduAFo3lv+92MJNbINRAnEio32lyxEW0sNHCXm5CwruA4wjWkvoW3qUhhXkj5uwFHhwRiLNN65WxOcJ7znXJ6kwjeC0CSvxqjcCISh8UURvdPZiMkgtYuaaAaVW0h2B/3+R6UUh2O9+IneLyFNrS5/UUkEApEhDmnxKEFrKwWRVP2/AduNzJKk9hmA5T0GRryia2uhDNWPYHSqz8U4g7LchqHjiBaZgK3IayAayCj+Wm3Jm8Y9cP2JCugN04E5F6QhlUXoe7zGWAJvRscaHu46oWNlTjpnaKPaiMr9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OImM7OTywsOShtfgP6zP7HLR/Oaf5Mea9aONsBBkkrA=;
 b=NlfrcN6u3bkCPzOH9jIAFyC2tApvlQE7dBc+T27jgsGX/A7IEmo6rNgHCyeo0gMkijw7lf4lzBdZLI0AQjJ0wEgJ3JTcbN0StMnyXtXXdS5UM8DVHfcHaVzgYr+QLPFLQWpEupFQT2AqyYSvg1s+iT0/yFn8Pj2QvSFV7v+KmqU=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=calvin.johnson@oss.nxp.com; 
Received: from AM0PR04MB5636.eurprd04.prod.outlook.com (2603:10a6:208:130::22)
 by AM0PR04MB6788.eurprd04.prod.outlook.com (2603:10a6:208:18e::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Fri, 24 Apr
 2020 03:17:01 +0000
Received: from AM0PR04MB5636.eurprd04.prod.outlook.com
 ([fe80::c4fe:d4a4:f0e1:a75b]) by AM0PR04MB5636.eurprd04.prod.outlook.com
 ([fe80::c4fe:d4a4:f0e1:a75b%4]) with mapi id 15.20.2921.030; Fri, 24 Apr 2020
 03:17:01 +0000
From: Calvin Johnson <calvin.johnson@oss.nxp.com>
To: linux.cj@gmail.com, Jeremy Linton <jeremy.linton@arm.com>,
 Andrew Lunn <andrew@lunn.ch>, Andy Shevchenko <andy.shevchenko@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>,
 Florin Laurentiu Chiculita <florinlaurentiu.chiculita@nxp.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>,
 Madalin Bucur <madalin.bucur@oss.nxp.com>
Subject: [net-next PATCH v1 1/2] device property: Introduce
 fwnode_phy_find_device()
Date: Fri, 24 Apr 2020 08:46:16 +0530
Message-Id: <20200424031617.24033-2-calvin.johnson@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200424031617.24033-1-calvin.johnson@oss.nxp.com>
References: <20200424031617.24033-1-calvin.johnson@oss.nxp.com>
X-ClientProxiedBy: SG2PR01CA0122.apcprd01.prod.exchangelabs.com
 (2603:1096:4:40::26) To AM0PR04MB5636.eurprd04.prod.outlook.com
 (2603:10a6:208:130::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from lsv03152.swis.in-blr01.nxp.com (14.142.151.118) by
 SG2PR01CA0122.apcprd01.prod.exchangelabs.com (2603:1096:4:40::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13 via Frontend
 Transport; Fri, 24 Apr 2020 03:16:55 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [14.142.151.118]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 0013d35d-ce90-4126-2315-08d7e7fdf4ad
X-MS-TrafficTypeDiagnostic: AM0PR04MB6788:|AM0PR04MB6788:
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB6788029E649336DE2392D753D2D00@AM0PR04MB6788.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2399;
X-Forefront-PRVS: 03838E948C
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB5636.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(396003)(39860400002)(366004)(136003)(376002)(2616005)(8676002)(956004)(5660300002)(8936002)(81156014)(186003)(6506007)(16526019)(26005)(54906003)(86362001)(110136005)(52116002)(55236004)(2906002)(1076003)(316002)(478600001)(44832011)(66946007)(6512007)(6666004)(6486002)(1006002)(7416002)(4326008)(66556008)(6636002)(66476007)(110426005)(921003);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SRufxQl1c01O4GxkFfCTm13QSfLLR6EoaVkmQlZd8fN29Rq38HUk1ydfVNaSLAIZpBBP4Y4tmHBLPMP9aSaBsNvrHeF8NI3DqP4HFSBSXVH3zv95z7Jttet5gsqPY95EZrfeC7ggH0n385YIZ9mg3syKE3GvS6PNsk4ks3zYBAMQ0hNUeHbw9QnNKUB6eRYAeyo+ThOAQ6hx+bxCsUqV1dt2od14yd+VmqlA3SsevZdoUba0+rVIDBeNLj2f/+ufYyB7ddXaNDHL3nOysw5VhWTMhE167T/OU/YBwJsib1FF5fjOnqfX1oRUHttDIyAKfEFtCM3/xHiynPV02Kvls1BU2tTxJapIaBLO321hMcv8JQGFm/Ue49LRsxm8cvCQV4nF/i6/qK0l4XgOuHSRODke2Tw/nBR0hCBJf/W8b9tUgIOUS5cbPfx5f49KIO1kmfcWHQjyN1StcojI9WumkgRbLsqY/wfmeULOHfUVeiik+FWr4JV9Hiatf7upG4Z4nV0fzE3Gwfc5/gXZK8dLCw==
X-MS-Exchange-AntiSpam-MessageData: 1skwa5esCxR8h/8zdFO5Ag7qfjU7lKO2bnZDDJBagTkWimoP7644Td+b31+UlB8PwKffVNaaiQFPSvguE8aX3oXQrpziFyN5U11jPE7y7leZqKZ3pEB3dd/SYRCncskbtlKah9zlF2MFM6mjGO5b6w==
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0013d35d-ce90-4126-2315-08d7e7fdf4ad
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2020 03:17:01.6772 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6x3JVh2xIt+3EsIM+hDaNigJjbccAevyIkE0dJb7ATRXslOiJB4BDS9DWY0AUqbTheUOcqxFLvKMvlZPoihOOw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6788
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_201704_349986_556624A3 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.55 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "Rajesh V . Bikkina" <rajesh.bikkina@nxp.com>, netdev@vger.kernel.org,
 Pankaj Bansal <pankaj.bansal@nxp.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org,
 Calvin Johnson <calvin.johnson@oss.nxp.com>,
 Diana Madalina Craciun <diana.craciun@nxp.com>, linux-acpi@vger.kernel.org,
 Makarand Pawagi <makarand.pawagi@nxp.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Varun Sethi <V.Sethi@nxp.com>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Marcin Wojtas <mw@semihalf.com>, linux-arm-kernel@lists.infradead.org,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Define fwnode_phy_find_device() to iterate an mdiobus and find the
phy device of the provided phy fwnode.

Signed-off-by: Calvin Johnson <calvin.johnson@oss.nxp.com>
---

 drivers/base/property.c  | 41 ++++++++++++++++++++++++++++++++++++++++
 include/linux/property.h |  5 +++++
 2 files changed, 46 insertions(+)

diff --git a/drivers/base/property.c b/drivers/base/property.c
index 5f35c0ccf5e0..7c0c14c800b7 100644
--- a/drivers/base/property.c
+++ b/drivers/base/property.c
@@ -870,6 +870,47 @@ int device_get_phy_mode(struct device *dev)
 }
 EXPORT_SYMBOL_GPL(device_get_phy_mode);
 
+/**
+ * fwnode_phy_find_device - Give a phy fwnode to find the corresponding
+ * phy_device on the mdiobus.
+ * @phy_fwnode: Pointer to the phy's fwnode.
+ *
+ * If successful, returns a pointer to the phy_device with the embedded
+ * struct device refcount incremented by one, or NULL on failure.
+ */
+struct phy_device *fwnode_phy_find_device(struct fwnode_handle *phy_fwnode)
+{
+	struct device *d;
+	struct mdio_device *mdiodev;
+
+	if (!phy_fwnode)
+		return NULL;
+
+	d = bus_find_device_by_fwnode(&mdio_bus_type, phy_fwnode);
+	if (d) {
+		mdiodev = to_mdio_device(d);
+		if (mdiodev->flags & MDIO_DEVICE_FLAG_PHY)
+			return to_phy_device(d);
+		put_device(d);
+	}
+
+	return NULL;
+}
+EXPORT_SYMBOL(fwnode_phy_find_device);
+
+/**
+ * device_phy_find_device - For the given device, get the phy_device
+ * @dev: Pointer to the given device
+ *
+ * If successful, returns a pointer to the phy_device with the embedded
+ * struct device refcount incremented by one, or NULL on failure.
+ */
+struct phy_device *device_phy_find_device(struct device *dev)
+{
+	return fwnode_phy_find_device(dev_fwnode(dev));
+}
+EXPORT_SYMBOL_GPL(device_phy_find_device);
+
 static void *fwnode_get_mac_addr(struct fwnode_handle *fwnode,
 				 const char *name, char *addr,
 				 int alen)
diff --git a/include/linux/property.h b/include/linux/property.h
index d86de017c689..236d656a2981 100644
--- a/include/linux/property.h
+++ b/include/linux/property.h
@@ -370,9 +370,14 @@ const void *device_get_match_data(struct device *dev);
 
 int device_get_phy_mode(struct device *dev);
 
+struct phy_device *device_phy_find_device(struct device *dev);
+
 void *device_get_mac_address(struct device *dev, char *addr, int alen);
 
 int fwnode_get_phy_mode(struct fwnode_handle *fwnode);
+
+struct phy_device *fwnode_phy_find_device(struct fwnode_handle *phy_fwnode);
+
 void *fwnode_get_mac_address(struct fwnode_handle *fwnode,
 			     char *addr, int alen);
 struct fwnode_handle *fwnode_graph_get_next_endpoint(
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
