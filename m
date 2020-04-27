Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B0D1BA4AA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 15:25:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AIq4F9Jvnnw14fWw9DRTrT0/qG8ET6XRZEnXoEICvpk=; b=BeZ9KA8dalo39z
	x1lWwgEI9qcOHmDCfC+WjbsCZ89zoUHZNzZ2DWgt330xYsRJanRVzYr9tfcKhW+xdNW1+1DlPEdGo
	IyPx/I0dD+ernDScUmIQ1AaEbqooBlNWIAMY9hKtF/dOy2L6Lb1+yrUHUtQ1JnApFf5x0lgBpL9GF
	/gfkh0FJ1g/7uKG+5XlsQ4U6Hj9MFYl2hqfoqbx12Ub+QkPrWeOBvNNyPgB7+dc9VD49Tvg8OKXHM
	0jF2HEYTPf7ZqM7U0yA95MSh2wvh8D4Ksk4eSzX8UuDZ+CiFkUQZoWi91H9jPkDtruL1hUmglUKnw
	9btouHo9Cyl4WUWeP/UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT3lb-0001BH-Qs; Mon, 27 Apr 2020 13:25:47 +0000
Received: from mail-db8eur05on2082.outbound.protection.outlook.com
 ([40.107.20.82] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT3kx-0006pw-KT
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 13:25:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i0mPGm73q7rCzSNTYachJASrnCwGcq4D4hSnuEn1xHZkEStJicIQhJaJ53o/4tddwqfuRNGlyo3JJ4EB97+L9iTJV5J9C4pCIARHdY/0DUtJSWlaV5P0x9coojhkLjhqv1hLTfMY5Qh86Q1/fBSrlKLtJtG911OPJJH0z97Rm7TfRkd7GlDx4zU7YbvGLhVIXY6XaYOujO8c5TevQ67HP+hPelYtzZfTMbLyl67uINIAZlxNOzYu4svuboJ/pydQTNiYRbXIDxiwvgq4gd8rk0zS2olHIfrogihG2hECrA8TOiK/sNP5uN0FtD5ONcGX7/cqDRDfWo7O9oCj7vP6Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vnMRBwu8UR5Opgep8jRbOmTx74QnbzjDrTcD8h0is2k=;
 b=c5D9VZIVzc97035BEY+GmXOi+YklQDHk1SAUQGZF8eGOwMxm4no1Lw+TSHccoobv80YTgliR8cx28812w2WFqnyRZ/+k7kit//cxIVckOQSWVLOIftfWBUpb44f3k7LffWqUoxgVsZY4SYnFDYPfLN/O0kBzSoOTNmnjDKcObwP3Q5p+mlfgsZP39+JyKjAuc/XLZWz+Jw/oyI0H3akHb5mwKqVE+MKbDlcdP3r7gvNdw4QS+BcRqia0w7M1jBsP4PeY1WGyVBC4Yri3AkwL/uNUFekKnrk0wccwJO1fRQX+lahL+WWbRQfknaUCXNO6D0OThIeSNbUEwE7sQk/VZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vnMRBwu8UR5Opgep8jRbOmTx74QnbzjDrTcD8h0is2k=;
 b=g81MXDu/AdUxB5xXfrhoAQzo2D2IyD/CCnbOGE5Uc1c1RsDZnLLBLXD3qT4qPis/KYTHk4TOnC24TpPpJbe2CvlKr8v+JLVjJcNuCgzf5eycgM6M9SaYjIYxNKLMK0qcrjRAwkB2FthlPB6FJ44PUkUQMV2L3V1ddmTUmE0vUGo=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=calvin.johnson@oss.nxp.com; 
Received: from AM0PR04MB5636.eurprd04.prod.outlook.com (2603:10a6:208:130::22)
 by AM0PR04MB6867.eurprd04.prod.outlook.com (2603:10a6:208:182::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Mon, 27 Apr
 2020 13:25:06 +0000
Received: from AM0PR04MB5636.eurprd04.prod.outlook.com
 ([fe80::c4fe:d4a4:f0e1:a75b]) by AM0PR04MB5636.eurprd04.prod.outlook.com
 ([fe80::c4fe:d4a4:f0e1:a75b%4]) with mapi id 15.20.2937.020; Mon, 27 Apr 2020
 13:25:06 +0000
From: Calvin Johnson <calvin.johnson@oss.nxp.com>
To: linux.cj@gmail.com, Jeremy Linton <jeremy.linton@arm.com>,
 Andrew Lunn <andrew@lunn.ch>, Andy Shevchenko <andy.shevchenko@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>,
 Florin Laurentiu Chiculita <florinlaurentiu.chiculita@nxp.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>,
 Madalin Bucur <madalin.bucur@oss.nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>
Subject: [net-next PATCH v2 1/3] device property: Introduce phy related fwnode
 functions
Date: Mon, 27 Apr 2020 18:54:07 +0530
Message-Id: <20200427132409.23664-2-calvin.johnson@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200427132409.23664-1-calvin.johnson@oss.nxp.com>
References: <20200427132409.23664-1-calvin.johnson@oss.nxp.com>
X-ClientProxiedBy: SG2PR04CA0191.apcprd04.prod.outlook.com
 (2603:1096:4:14::29) To AM0PR04MB5636.eurprd04.prod.outlook.com
 (2603:10a6:208:130::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from lsv03152.swis.in-blr01.nxp.com (14.142.151.118) by
 SG2PR04CA0191.apcprd04.prod.outlook.com (2603:1096:4:14::29) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.13 via Frontend Transport; Mon, 27 Apr 2020 13:25:00 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [14.142.151.118]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 449c59f3-201a-4834-6e02-08d7eaae66a7
X-MS-TrafficTypeDiagnostic: AM0PR04MB6867:|AM0PR04MB6867:
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB6867A83F470546AC648FB70FD2AF0@AM0PR04MB6867.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1417;
X-Forefront-PRVS: 0386B406AA
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB5636.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(376002)(396003)(366004)(136003)(39860400002)(86362001)(8936002)(44832011)(2906002)(478600001)(66476007)(81156014)(66556008)(5660300002)(1076003)(66946007)(8676002)(26005)(7416002)(6506007)(2616005)(956004)(6512007)(4326008)(16526019)(110136005)(52116002)(6486002)(186003)(316002)(1006002)(54906003)(55236004)(110426005)(921003);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: L+CAYz0/MkMIEKFFhUTWf6NhhacDyWdRRlgEBI+BHBcOOoW1cWgxWDij4tMqxlXsU0otMKBRxi99MM0cq9CGeBEIQ2Nz3T0h0Eg3xeyMe2eqsWxyAHpXYnuO/CtxvRaaeI2KoY29Jc0oyf9/t54WPLC8kTpy7BXoM6/TMI+yBF+h/zEIyPcqGPAv9Q/asxcErAKhuIdx1ujnHc39zXVw4ouHBybJ3PjvCgEY3VL5XJ2ffojTvampO709yi0KXrzb8Eo9mCr5FXUof6kk15ZVA96LxrZOnFYV+NPqq/CZ1vakSdiud6aha6fW9WqUDIizV2iRslI5HsCbLVTj4EXv8eT11iOEE7R6qaguVx0gnw4OPfaRMT5lDxKgtioMHc3v9uTqGjRmFtXmUDhrKK2bnuk8LLZtDjrY1d07gF3Y9wjLlHPFXwwTIaGeTczbQrbBcFkusH6q92f4jUsyTr2wj9LBmMzRcr0l4TE6ODtbcCHZ0fXj9nUuqm1Tn0JW8aYpmA/W6pD1Wt1dEj4Xj7VbRQ==
X-MS-Exchange-AntiSpam-MessageData: OIYWAU6BgPJhqV1HnG/4Rg5o8xH0oJ/fiZ5aKd2YzSCnzETSvdbq0a7W59/VN2hyTnAMeZRWAplOa4G2cN8nN1Vej4xclkptMVufGNEeW2e6wqe2pHLip87Hrd9V1XttEpP+FL3Fe2M2R5OoTGwQ4WcSuwan3dRbFxMphBJunS22Q/8WJZOAWt97Vo27kUWQhtXpIA30KMQBZa+jVNzgtIUS7av5aAsdqjgzjRS4uir1EMTmpTDH9Mt2ZFydhiY6rS6foCZsV36qy0VGuwamk5GA+EC1ij/W2oEAzVt+PutQlFtJNWWbNeUeeKHn2Fzeepd71lpzRRQ4dMJMbEsWCKw0Vd6CSKOiwM7RHsd4fygd3XLZHKqpJN7qwG5qLw43jL6xmu2YxK0ll3rbVZfAcAxpppCN4BpowS4z/Bl7G1cVTfW9SlmY//dRmxHS7AZ1HR8zkl1OAF23P22rBp1yyS5MXnrfE1N+gin8EDJbpfELWvhH23uI/wn7SssWv0xd6rvzhJFWknKU1ICqFN37KyFnUgHgCRHHCvtCQ16tZP6N8juS4RXckI2LIzTw5mReb5tmMydpsf0PBAbzyZl4ZitHT9xwcDcB6VktxuWv0ziYTGmWdftdHlJz8C5nJFnu79RJxISroWms2FZjnVNfI03cJmbUep+UVeFhZk3J3eBqglKJT/hfUVgwjD8uKEQdGJLC+en46/VKRKrYK3Sc6FcafojVsQPEYYqLf4nb78Z4xclGtH1R895tT0v5N4mhEPHvapXR/yQy7zr/olzS8qg6zxty8hC2MeNuCLpiNGs=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 449c59f3-201a-4834-6e02-08d7eaae66a7
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2020 13:25:06.5671 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lxREwOepyP+OGDqOTVfur3df4h469s+l3PeVuWYn1UF65elOSjpveF+i+xjKIr6QYndqDORcFL//WaRgYYjzKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6867
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_062507_699938_20F5999D 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.82 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.82 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Changes in v2:
  move phy code from base/property.c to net/phy/phy_device.c
  replace acpi & of code to get phy-handle with fwnode_find_reference

 drivers/net/phy/phy_device.c | 55 ++++++++++++++++++++++++++++++++++++
 include/linux/phy.h          |  3 ++
 2 files changed, 58 insertions(+)

diff --git a/drivers/net/phy/phy_device.c b/drivers/net/phy/phy_device.c
index 7e1ddd5745d2..a2f3dbba8a3c 100644
--- a/drivers/net/phy/phy_device.c
+++ b/drivers/net/phy/phy_device.c
@@ -31,6 +31,7 @@
 #include <linux/mdio.h>
 #include <linux/io.h>
 #include <linux/uaccess.h>
+#include <linux/property.h>
 
 MODULE_DESCRIPTION("PHY library");
 MODULE_AUTHOR("Andy Fleming");
@@ -2436,6 +2437,60 @@ static bool phy_drv_supports_irq(struct phy_driver *phydrv)
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
+ * If successful, returns a pointer to the phy_device with the embedded
+ * struct device refcount incremented by one, or NULL on failure.
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
+ * Returns pointer to the phy fwnode, or ERR_PTR. Caller is responsible to
+ * call fwnode_handle_put() on the returned phy fwnode pointer.
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
index e2bfb9240587..f0450ef2dc9b 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -1328,6 +1328,9 @@ void phy_set_asym_pause(struct phy_device *phydev, bool rx, bool tx);
 bool phy_validate_pause(struct phy_device *phydev,
 			struct ethtool_pauseparam *pp);
 void phy_get_pause(struct phy_device *phydev, bool *tx_pause, bool *rx_pause);
+struct phy_device *fwnode_phy_find_device(struct fwnode_handle *phy_fwnode);
+struct phy_device *device_phy_find_device(struct device *dev);
+struct fwnode_handle *fwnode_get_phy_node(struct fwnode_handle *fwnode);
 void phy_resolve_pause(unsigned long *local_adv, unsigned long *partner_adv,
 		       bool *tx_pause, bool *rx_pause);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
