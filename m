Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 968931C56E5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 15:30:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ZtYQLfQFbQbVaFnYf/70efObakxrIH6+lRXrdpXTjI=; b=jTZ53ZqjTE1f9v
	nSoPurw9Vczj8uSuH54zqR7jGkTpbpq0LtOJ1bwQRNEb8jwN4/cl+zChAfe905gG8rsTT2HBT3lXJ
	0G8HN3UbL9y1ni4PlBHwJfjriW7mv/xzAGjbiE8vSSfcJxqPSjwhxzNCf5TquaSn5XXV+XdMFHc6I
	/fp1RL0uqOOIUe8+DF9pO5KXWfJ9Njq4BIttX4kEw8SPCnnrGsnXNcQQGG2YmxC+moNd4X48MhpY5
	E12D/8Z/9z4UwTQT0cCxHwR2sWzFXwVFIR+mMLklAHk9hZB8YydAC2FX5MBacY6gFh2d+Fnt7+oiG
	ZDg+G/z+uD/PPfGl+9Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVxe5-0000e7-8T; Tue, 05 May 2020 13:30:01 +0000
Received: from mail-eopbgr60081.outbound.protection.outlook.com ([40.107.6.81]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVxdf-0000QM-Hq
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 13:29:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GARkvwBDn0mYxbp0tkYgN61al+/16GNpIZcCHEZdZ7E5T6oATrkULp7m7RExGjS+331rBK4DsHT1HEdFYBAgaxcXKRBw08ErxWj2hSU0JemCehREruRq3dvHz+Q05Ennqk/+6by2gHUTYWgo/RlUsWdp2poQJG0WEH3dm/fRru/Wpepdt5GblGLBFV52mQ5jWqcFULvktgqH0VsM13fTAgu3e9v4m7Tns649Y0N4U4DZN4BXpsK9IcSNm/aDnAQN2IFWqIi3l7ioA4WVQXubIykjElJDoxT9XmpJjnSFJWzqE5paKz19i+NrlvncrPHqVL0xekddmNSkcoydo5a64Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a8JV8qApn7vMGzjkzuJg2luhHAxB8u1ircjcFkfU3Qs=;
 b=AYC0uMIp+JxymBT4B+bA5pzgUZdlvTehYs2uRt8KddOOqDg4viTcARf5BblAou8FKOOs227XtqDFLYdCegRe3etjL0A3i9dJoWBDij4qNStoYcN5Rab+uOyo0wdFwboTih4UITXZk1MN205DvrsMPng98wvMXDhRXIM217IJVETRzzaHfkeZ1XXElKbeclkSeh9xPuLTrlWCNQ/ESF9WrglxMnu4k4qrXVHESICdkCb/72P2Oo9Z9wWSvYCppf4UfHr5O61AbEyQzTd8Rf+SvhTvF/bdb2IILEBerzTWLdSUUJQpEEB7GUfWoAparW7ckznYiWBmpkbC8JreOjNVqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a8JV8qApn7vMGzjkzuJg2luhHAxB8u1ircjcFkfU3Qs=;
 b=EGaDCTpfy0/iaoiYF/DJb0c1hpfl4JwcOrgrvxMSjQuDmOSoPfGWKdUUNn6ztSfaAW00Jd8yCLT9TdYiyelF7zAZQcWYPdOJNbK/SfXSkH6nCnpm7cevGTbyQDKtYcZW9i6Yonv18/O9yKSYNPgTujFMfIrvW8i4+lnVdRmPU0s=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=calvin.johnson@oss.nxp.com; 
Received: from DB8PR04MB5643.eurprd04.prod.outlook.com (2603:10a6:10:aa::25)
 by DB8PR04MB5596.eurprd04.prod.outlook.com (2603:10a6:10:a2::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.26; Tue, 5 May
 2020 13:29:33 +0000
Received: from DB8PR04MB5643.eurprd04.prod.outlook.com
 ([fe80::4031:5fb3:b908:40e9]) by DB8PR04MB5643.eurprd04.prod.outlook.com
 ([fe80::4031:5fb3:b908:40e9%7]) with mapi id 15.20.2958.030; Tue, 5 May 2020
 13:29:33 +0000
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
Subject: [net-next PATCH v3 1/5] net: phy: Introduce phy related fwnode
 functions
Date: Tue,  5 May 2020 18:59:01 +0530
Message-Id: <20200505132905.10276-2-calvin.johnson@oss.nxp.com>
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
 15.20.2979.14 via Frontend Transport; Tue, 5 May 2020 13:29:27 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [14.142.151.118]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 1542e116-80f4-472a-7669-08d7f0f858e3
X-MS-TrafficTypeDiagnostic: DB8PR04MB5596:|DB8PR04MB5596:
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB8PR04MB559633773E33A2CF64967427D2A70@DB8PR04MB5596.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1751;
X-Forefront-PRVS: 0394259C80
Received-SPF: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 87BLQOCZNstP2fmqX6LA7kaZpTdKUW5kzpqlsU7PZMmH3ujsntbbMf4vCuWJI6DB9c/dGGs4XLq39F4+J4FUrJ8MBJFQKvakL5u5Vg9B6D4jZJKURhVfNS24Aqq/ce7iCyJ0lrSm0TvZZq689DULN2sPLC1y0MrGNIkL+7ZmLuehtLe3rO1wQAnoV8bKGh3lPEsd/qLuT8waGHjQ6ivNcoV0738sXG0c9pSOPGfU0AYH5VnntQjwbpY6hPDbDgppPXz7D+rOO45tRxq4RzJpo4j7PcnBaK+tuqfB2y0qRGOvR3HYxm/fhL7NE0OivdaZ/NW3AcFSnz4HgB4GpRmQSxwc/B4vDNqMBHb7XIaUzL09tuGTWEc6SZgflOAezBrS1iPYQ3zQYdyFDc0P+UMNL7wXuffdQ19E3J8TWy9ZckRD2hXPUqYhvnEeBrzSh+PdcGsZR++WYGvAvXhz1sFYiMS4+RLPIAvvi89tTqtHJUnlNTXQEFJkuhN2fOzUKWaS0dceln8ENzGiXLuw8MB1ouSJZs42aAOxrjyT7nLSezE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR04MB5643.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(6486002)(5660300002)(44832011)(26005)(55236004)(66556008)(66946007)(66476007)(498600001)(6506007)(52116002)(4326008)(956004)(2616005)(2906002)(186003)(1076003)(16526019)(7416002)(6512007)(86362001)(110136005)(54906003)(6666004)(8936002)(1006002)(8676002)(110426005)(921003)(1121003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: W8VmGhpYI99Jsr0wVNDSXT06pPpZQYPZpTn0lkBfAH+teIujlQcADWSFokspJfNMsIofmWPyfRP/bpQWhJaYYjtB/AnVePWomC4L7dNkMMEAqIi9kj48xZYJbjQPq1gyLG8MyXpAJutzCkLeiqKDttNZc2Ytqd2G9unEM+rhFr5JYK6cq1SUaCqS6cXOyyBMhrjuy0yNlCxfE33NyTt1jUWMWbseXJXPyJ8GNQsap4Us4MTortw4bgb7tHKxyQ0ktZPSdsjUIm2ng42Y8Vt+aJC443mc3U79p9cgPKpvV0Id+QM5GaaE5k2ybdcs4aTVgxMZnEMyEEPAigSQ77SFgPASGobnQ9DmJQqjk5Bn1Fvp0whzSNAd4Fbh0J9N3l2D3kLwnEJjrFLFFtAiHLXYKT4jxckyhMxUinTBjAn2kGxzeiLxsrcSQEU6pN2TUX7Ph2RoHE7sUEluVMVj4EPG3mFXLhURru0cVtdKC/UzFndqYRjkS9I8wigIJ0gswD6kSSrmeFnqDI6IudNZ+X1IFHdyqhh9fJvdHFhSOTYZVtFTwEXceBgfADfj8rSGoLM6m0ER5sz9ix49qj1f+v7Q7k+WT4ffWK1sUXGdGRYg9836gF9Maij42q4RMQqTf9UeWYYtnnPsyDtXAI+saJIz6jrH8WZvUURLc9Pn3/NgDsSUGiGD+bjqBiu6m1zpktHc0TMIluHsJ5V51VKq/fAQ2+EeF5QEjnHymA4sCXthLuFc6bP9QT3TGdzBRQexsvH71BxBEMVRgteLi4/Ce9AFuulRuM1/HjnmVKNqdlixcdY=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1542e116-80f4-472a-7669-08d7f0f858e3
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2020 13:29:33.2490 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MnU0xzIwNVY0Lxlw6ZnlK3RxRpSihpwpCRe81urLqirIlJ1N8OSYXdmYhrH210tsQuie3oY+flq5gLLA+GVrgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB5596
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_062935_600061_53688474 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.6.81 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.81 listed in wl.mailspike.net]
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

Define fwnode_phy_find_device() to iterate an mdiobus and find the
phy device of the provided phy fwnode. Additionally define
device_phy_find_device() to find phy device of provided device.

Define fwnode_get_phy_node() to get phy_node using named reference.

Signed-off-by: Calvin Johnson <calvin.johnson@oss.nxp.com>
---

Changes in v3:
  move fwnode APIs to appropriate place
  stubs fwnode APIs for !CONFIG_PHYLIB
  improve comment on function return condition.

Changes in v2:
  move phy code from base/property.c to net/phy/phy_device.c
  replace acpi & of code to get phy-handle with fwnode_find_reference

 drivers/net/phy/phy_device.c | 53 ++++++++++++++++++++++++++++++++++++
 include/linux/phy.h          | 19 +++++++++++++
 2 files changed, 72 insertions(+)

diff --git a/drivers/net/phy/phy_device.c b/drivers/net/phy/phy_device.c
index 7e1ddd5745d2..3e8224132218 100644
--- a/drivers/net/phy/phy_device.c
+++ b/drivers/net/phy/phy_device.c
@@ -31,6 +31,7 @@
 #include <linux/mdio.h>
 #include <linux/io.h>
 #include <linux/uaccess.h>
+#include <linux/property.h>
 
 MODULE_DESCRIPTION("PHY library");
 MODULE_AUTHOR("Andy Fleming");
@@ -2436,6 +2437,58 @@ static bool phy_drv_supports_irq(struct phy_driver *phydrv)
 	return phydrv->config_intr && phydrv->ack_interrupt;
 }
 
+/**
+ * fwnode_phy_find_device - Find phy_device on the mdiobus for the provided
+ * phy_fwnode.
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
+ * Refer return conditions of fwnode_phy_find_device().
+ */
+struct phy_device *device_phy_find_device(struct device *dev)
+{
+	return fwnode_phy_find_device(dev_fwnode(dev));
+}
+EXPORT_SYMBOL_GPL(device_phy_find_device);
+
+/**
+ * fwnode_get_phy_node - Get the phy_node using the named reference.
+ * @fwnode: Pointer to fwnode from which phy_node has to be obtained.
+ *
+ * Refer return conditions of fwnode_find_reference().
+ */
+struct fwnode_handle *fwnode_get_phy_node(struct fwnode_handle *fwnode)
+{
+	return fwnode_find_reference(fwnode, "phy-handle", 0);
+}
+EXPORT_SYMBOL_GPL(fwnode_get_phy_node);
+
 /**
  * phy_probe - probe and init a PHY device
  * @dev: device to probe and init
diff --git a/include/linux/phy.h b/include/linux/phy.h
index e2bfb9240587..f2664730a331 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -1141,10 +1141,29 @@ struct phy_device *phy_device_create(struct mii_bus *bus, int addr, u32 phy_id,
 				     bool is_c45,
 				     struct phy_c45_device_ids *c45_ids);
 #if IS_ENABLED(CONFIG_PHYLIB)
+struct phy_device *fwnode_phy_find_device(struct fwnode_handle *phy_fwnode);
+struct phy_device *device_phy_find_device(struct device *dev);
+struct fwnode_handle *fwnode_get_phy_node(struct fwnode_handle *fwnode);
 struct phy_device *get_phy_device(struct mii_bus *bus, int addr, bool is_c45);
 int phy_device_register(struct phy_device *phy);
 void phy_device_free(struct phy_device *phydev);
 #else
+static inline
+struct phy_device *fwnode_phy_find_device(struct fwnode_handle *phy_fwnode)
+{
+	return NULL;
+}
+
+static inline struct phy_device *device_phy_find_device(struct device *dev)
+{
+	return NULL;
+}
+
+struct fwnode_handle *fwnode_get_phy_node(struct fwnode_handle *fwnode)
+{
+	return NULL;
+}
+
 static inline
 struct phy_device *get_phy_device(struct mii_bus *bus, int addr, bool is_c45)
 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
