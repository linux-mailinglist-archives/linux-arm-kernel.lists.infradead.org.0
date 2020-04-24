Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF781B6BD3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 05:17:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6pflaL4VLa5sCfwUfUUCK4Rf0OPOe3Ijs6zjs2aDXQU=; b=FarNV2MnkPA0wK
	ZHd3qwguTJQHP5vw+bSSiKMyJ4KDMvTt8MO/D1JYLw3nn2NxYeSN1aynNRLipf8KBgJ0bs3Jj/y4a
	FNOnwrK0Bj5vAkqArN1byXOvejyk13pEXyaMBufw8S0/s8wXx7llAb1EDFqdrLuTMRJ/jxfA/O81l
	FbgyS3Ws6GHqTIIAMQtkRvLOceE3Aiq/d25D1j+ol1GR95KbSdNh2uwxi8R26jL5+IiEAZQ1cw9Wx
	pZCP1cldzPDy/VwEH8aQClaNL0BDsEWA4dWikdCqlKmmzWwe8m+gFtVvFkzsA7TxpEWtvmMYaQstm
	WyF5I1jVyDw45tMrrjRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRoqe-0006sR-Ih; Fri, 24 Apr 2020 03:17:52 +0000
Received: from mail-eopbgr60086.outbound.protection.outlook.com ([40.107.6.86]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRopx-0006UX-RN
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 03:17:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J+MVepNUuIh9zk7KH410HFWxE2BRA2UBMfuAYhPR4RtS7w1+Te3eZetqH9mxUkLnsL1kB9hEjbV4ijjZzobaR3zsOEYISOTNJmWOocI0AkNvyfY/FUBYVwTN4mcme2/mDm98etJt4/pcsJWfLezu/8yM3S2K1BjrDj57h2OcqdQI2PcRtT5xfPpTAiLWiDvjW98b+/EOuALAHGGJVGrN/7znHk9lKEHO6DSIj5KdgORXMxnOVqgAWOzPTvKe8om3zfAcYXM00wCYIVrRlHWx9IAuXfmLSeNkl80MV+gjbkE4zyr44GxfrFQUQjlYuT+j4gHYUMl8GTL9qLkzUvolhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y9/MNzryNiA0YI6YTBBWyVkYklr4KblODpPO/QXSoA4=;
 b=mpHhYHgMUfporCBXXnNUCieJhK43TGMO2vlSOdXLtv7u4wFsu6JYTZIuXjp9/1W7lDmmaZoN7mnhvJEt8F9c5la+8+f27GKjioGiDMKSb1PMNXFcuX0ugQOgLr8kMcOCA0Z8uPc1ul1EdlSebD4BSpKVK/sD0WBiqRRe5ZnzIgJX7mI4bQha9T2pTmx9tKRc5/WteyqCTXOPi9P6PWMizea0LumZ3Ez6elzNOxrlhw1hTxtNlZwMiqTpPT9zp4Qw9hySnzbOfIOv2gQ16HqLyXbuJ1uypv3rXHZ4CxAWzOxhd4dtnUIKJBW9sHNE8Q2jUblUqMWyUHIcu90KTtcgRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y9/MNzryNiA0YI6YTBBWyVkYklr4KblODpPO/QXSoA4=;
 b=XW3M2aFBPTzqsjppbpPYyHC3QDM52HCPGM1mYEKIlpbyqhtQL3+0u6KY0vyfdHvOlxH007CaO4j7roXl0GHpwzWQxmAuYhdupInwijbuMSZAOhW+lRA1wjXNA9kLA0yF+q4OoF2Cm2SIgUbVG/ekrIGV4COr4KkdvnOZBJ6xY4w=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=calvin.johnson@oss.nxp.com; 
Received: from AM0PR04MB5636.eurprd04.prod.outlook.com (2603:10a6:208:130::22)
 by AM0PR04MB6788.eurprd04.prod.outlook.com (2603:10a6:208:18e::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Fri, 24 Apr
 2020 03:17:07 +0000
Received: from AM0PR04MB5636.eurprd04.prod.outlook.com
 ([fe80::c4fe:d4a4:f0e1:a75b]) by AM0PR04MB5636.eurprd04.prod.outlook.com
 ([fe80::c4fe:d4a4:f0e1:a75b%4]) with mapi id 15.20.2921.030; Fri, 24 Apr 2020
 03:17:07 +0000
From: Calvin Johnson <calvin.johnson@oss.nxp.com>
To: linux.cj@gmail.com, Jeremy Linton <jeremy.linton@arm.com>,
 Andrew Lunn <andrew@lunn.ch>, Andy Shevchenko <andy.shevchenko@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>,
 Florin Laurentiu Chiculita <florinlaurentiu.chiculita@nxp.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>,
 Madalin Bucur <madalin.bucur@oss.nxp.com>
Subject: [net-next PATCH v1 2/2] phylink: introduce
 phylink_fwnode_phy_connect()
Date: Fri, 24 Apr 2020 08:46:17 +0530
Message-Id: <20200424031617.24033-3-calvin.johnson@oss.nxp.com>
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
 Transport; Fri, 24 Apr 2020 03:17:02 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [14.142.151.118]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: a7299d29-0d20-4848-5bd4-08d7e7fdf828
X-MS-TrafficTypeDiagnostic: AM0PR04MB6788:|AM0PR04MB6788:
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB67888DA82E8DF6F9CB0746D5D2D00@AM0PR04MB6788.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3826;
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
X-Microsoft-Antispam-Message-Info: vnEj1LyxvZ0k2KqZj1LHumFR/Pvnpc0Jbb7lrNWh6NqymS/mI9J+iNlu/cqRjpYuNPEY+bhn2I0o+x0lrBPjObPXAC8/8s+Iw3DIGFUMQy0kyLbW11VY65QOhkUgQXKSHbOsato3wxulyRpucItGx/EUpPrfZzMBu596oue3E8GG5xJNPmYe1cW94qr5Qv05fHfsW+EefaZcF8TZX0UUUA2quJFvNhZUE6h5HxaVrPcqcRB0WduLnC9m713vVq9+NPsqUeADjGIR6yJnz2MytlE5yGMpB2ysXg8NHA+q0TRG6IYu+LFDE5Z5qLJfgn+byAnMIttk5WxDxtWshQvOzofPhPSvvEL+c/IiVjak2Kjthb+AB4shRJ4Zu+jjCs6Hb7z6iYKxt2azlLooMWzjfk8Vxw/MvVizk+eLh+gsi5qbESdiQtox1NNuj97dLWMULvKjTL1RbxKuekoqzDflJCjywQYGyJeV6ufvRb+aU3/Ud0Atp7V9Cf1/WbdEIBLkgM/Hz4baGz+lK+rukD6s2g==
X-MS-Exchange-AntiSpam-MessageData: LGGVzHRPRElNxh2RRMsd2xSBPWp2otCYLj0MJgSKF6YSyJTnDzTg2TyyO7m97bjEYmfAyvzLluDjOh3zO+0VmNER0in2O1oRrbtioeZehhXwqFcWv2Hqde6xvQOWmPZVPv/ipUqRy6o4GuP/WQUk9g==
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a7299d29-0d20-4848-5bd4-08d7e7fdf828
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2020 03:17:07.4779 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GmO4DO/IwgrnjjStbhRpCbDeR27uRZP1pN811Lo1BiKTT0/XDlssPW0KzVKNrWwaUHYATgWAw1a7j1Q9vpT80A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6788
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_201709_907171_3289D66D 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.86 listed in list.dnswl.org]
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
a fwnode to a phylink instance. This function will handle both
DT and ACPI nodes.

Signed-off-by: Calvin Johnson <calvin.johnson@oss.nxp.com>
---

 drivers/net/phy/phylink.c | 90 +++++++++++++++++++++++++++++++++++++++
 include/linux/phylink.h   |  6 +++
 2 files changed, 96 insertions(+)

diff --git a/drivers/net/phy/phylink.c b/drivers/net/phy/phylink.c
index 34ca12aec61b..4f6552389ffb 100644
--- a/drivers/net/phy/phylink.c
+++ b/drivers/net/phy/phylink.c
@@ -18,6 +18,7 @@
 #include <linux/spinlock.h>
 #include <linux/timer.h>
 #include <linux/workqueue.h>
+#include <linux/acpi.h>
 
 #include "sfp.h"
 #include "swphy.h"
@@ -961,6 +962,95 @@ int phylink_connect_phy(struct phylink *pl, struct phy_device *phy)
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
+	struct device_node *dn = to_of_node(fwnode);
+	struct fwnode_reference_args args;
+	struct device_node *phy_node;
+	struct phy_device *phy_dev;
+	acpi_status status;
+	int ret;
+
+	/* Fixed links and 802.3z are handled without needing a PHY */
+	if (pl->cfg_link_an_mode == MLO_AN_FIXED ||
+	    (pl->cfg_link_an_mode == MLO_AN_INBAND &&
+	     phy_interface_mode_is_8023z(pl->link_interface)))
+		return 0;
+
+	if (is_of_node(fwnode)) {
+		phy_node = of_parse_phandle(dn, "phy-handle", 0);
+		if (!phy_node)
+			phy_node = of_parse_phandle(dn, "phy", 0);
+		if (!phy_node)
+			phy_node = of_parse_phandle(dn, "phy-device", 0);
+
+		if (!phy_node) {
+			if (pl->cfg_link_an_mode == MLO_AN_PHY)
+				return -ENODEV;
+			return 0;
+		}
+
+		phy_dev = of_phy_find_device(phy_node);
+		/* We're done with the phy_node handle */
+		of_node_put(phy_node);
+	} else if (is_acpi_node(fwnode)) {
+		status = acpi_node_get_property_reference(fwnode,
+							  "phy-handle",
+							  0, &args);
+		if (ACPI_FAILURE(status))
+			return -ENODEV;
+		phy_dev = fwnode_phy_find_device(args.fwnode);
+	}
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
+/**
+ * phylink_fwnode_phy_connect() - connect the PHY specified in the fwnode.
+ * @pl: a pointer to a &struct phylink returned from phylink_create()
+ * @dev: a pointer to a &struct device.
+ * @flags: PHY-specific flags to communicate to the PHY device driver
+ *
+ * Connect the phy specified @fwnode to the phylink instance specified
+ * by @pl. Actions specified in phylink_connect_phy() will be
+ * performed.
+ *
+ * Returns 0 on success or a negative errno.
+ */
+int phylink_device_phy_connect(struct phylink *pl,
+			       struct device *dev,
+			       u32 flags)
+{
+	return phylink_fwnode_phy_connect(pl, dev_fwnode(dev), flags);
+}
+EXPORT_SYMBOL_GPL(phylink_device_phy_connect);
+
 /**
  * phylink_of_phy_connect() - connect the PHY specified in the DT mode.
  * @pl: a pointer to a &struct phylink returned from phylink_create()
diff --git a/include/linux/phylink.h b/include/linux/phylink.h
index 3f8d37ec5503..c2966a067792 100644
--- a/include/linux/phylink.h
+++ b/include/linux/phylink.h
@@ -364,6 +364,12 @@ void phylink_add_pcs(struct phylink *, const struct phylink_pcs_ops *ops);
 void phylink_destroy(struct phylink *);
 
 int phylink_connect_phy(struct phylink *, struct phy_device *);
+int phylink_fwnode_phy_connect(struct phylink *pl,
+			       struct fwnode_handle *fwnode,
+			       u32 flags);
+int phylink_device_phy_connect(struct phylink *pl,
+			       struct device *dev,
+			       u32 flags);
 int phylink_of_phy_connect(struct phylink *, struct device_node *, u32 flags);
 void phylink_disconnect_phy(struct phylink *);
 int phylink_fixed_state_cb(struct phylink *,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
