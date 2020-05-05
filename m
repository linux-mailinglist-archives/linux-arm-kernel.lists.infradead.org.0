Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D732F1C56F0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 15:31:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JwoqcyyTy0V5e6GcHurkZSO84a7zABXEr9BBhfxIerM=; b=Uk7i2XsBtzxiBg
	fKF28/2fqNrESceHfPLlK4bkijAuafsF2E1Ie8/zf0z+Mb/J2ITTlsDIGaQHLHeSyB/xYPu7bLCcO
	3FaO4j6/88sVlq6Dohz0QF3/0rNLhO2+axlaUH6tG2qboN4BIwUta2i+gF9mzhEnliuawnG9n14V3
	OJuyfp/qh8btYfvalYXp83gBbKNYZScvRte1otywrl9oXjXFHseCbzpn2dJkwUG51MpdgbNSSCMCO
	dGCIQVjPy1A+xSyiM2fyF2pBB2lofDkXo3jjhEoD1U8hNa/3xNTGxtk8Vi1NhM9O7/2UHa9mgCVcA
	1COG6KG130eT4lrH/0cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVxfG-0003xJ-DF; Tue, 05 May 2020 13:31:14 +0000
Received: from mail-eopbgr70047.outbound.protection.outlook.com ([40.107.7.47]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVxe0-0000pb-2d
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 13:30:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LlcNQST8L2+E6gSdNITLTV0uhpyMuXsBf7lTMJXiDpA+kP4hk9b/lnUoNfKM8+CafGpBKmLryLa6CBD4NI6R/bZv8RawN1HXipoIdFmfO8CJxfN6zhDQXBRw6jKl0qbc7yIwPVTaSoB9fkqBsgVMC7ObBt7ExZgUvb06IpEsvAbYIYPuAuC6jBPTrV8qzEHFCEjL0OsG7gWIGIg1PJmyNH24LUvSL/x3gG0/2VsrBgRx3fZZvY0bK3kx/BXjCv1X7/jTdMWPXO0L/sI0DB3Tcn/IorklaGt3PpwgY+dpHfgyApEN1ZhHh5uk3AniZBwjcFr6GzoAP5YXGlTeYUkrOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BqxbcbJWBHfccJLJBdJsst4kyt+4TEgCtDk4QU17y/0=;
 b=AksE7OvIQDQYD4myJ+V+FOu+8e/SlamswE/bnQIxCy4/xjP18aePM2pO2o8RBc56GRh3fbHhy9msbf742XTN0VOnK4SvvDD0FAhhNclxBjWQ6MF2ZNwV++fqdgSIihG/iwkhECk7HxrJ2oCSLJH9OPC3g3GP3sHPKqF2QOF3t6VIlD5WbsfRcwcvUgakiFWDoNNYvbwfNyZweFrf08fJgGeX6zUlzvgvzQQG/1khPSf/CiyLJrbucZOozUK8QVnQZkuzYRVHn/Y72cWLIObvvGSozCR5C+4wHF+vjDn8SWoP8whuzapZicL2wABAhhNo6/WSjt/+sAD2UuCY+aqleg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BqxbcbJWBHfccJLJBdJsst4kyt+4TEgCtDk4QU17y/0=;
 b=X8xJiPTzTsGsOIM4P3i8WAbcplmx7nePpRmG5KX56bdQwroTA6HW+6gTsh6wKKO77Cgk/FuDrAv0oWWd0rsc6GLHS7SHRYvRSVc+hccjMIpw+UCmqFowz/6q0PnPp+x80lew2g9zZQAWydfInB2ixMlnuUkFcpkNidQOvy24Sj4=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=calvin.johnson@oss.nxp.com; 
Received: from DB8PR04MB5643.eurprd04.prod.outlook.com (2603:10a6:10:aa::25)
 by DB8PR04MB5596.eurprd04.prod.outlook.com (2603:10a6:10:a2::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.26; Tue, 5 May
 2020 13:29:53 +0000
Received: from DB8PR04MB5643.eurprd04.prod.outlook.com
 ([fe80::4031:5fb3:b908:40e9]) by DB8PR04MB5643.eurprd04.prod.outlook.com
 ([fe80::4031:5fb3:b908:40e9%7]) with mapi id 15.20.2958.030; Tue, 5 May 2020
 13:29:53 +0000
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
Subject: [net-next PATCH v3 4/5] net: phy: Introduce fwnode_get_phy_id()
Date: Tue,  5 May 2020 18:59:04 +0530
Message-Id: <20200505132905.10276-5-calvin.johnson@oss.nxp.com>
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
 15.20.2979.14 via Frontend Transport; Tue, 5 May 2020 13:29:46 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [14.142.151.118]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 152946e8-89fc-4a03-9b6a-08d7f0f864af
X-MS-TrafficTypeDiagnostic: DB8PR04MB5596:|DB8PR04MB5596:
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB8PR04MB559623ABD161AAD5C5DF7451D2A70@DB8PR04MB5596.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-Forefront-PRVS: 0394259C80
Received-SPF: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SgJiaV0u18zLRZSGsfmZnv5kUu2F7fV0QEJl0f0BXk0Fj3HS09BqUls5bS8+zoowQBAqRqw7SxrM04+kJB8lr1DYFteBXatBabfjYZ8+N0wtJr8Ua/8NgR/wnBxb1Jj2qwJ/NGZHnNxAS1hjwxetY034aJdabF63EcHbBi3UxyHck/QR+sa3IJ5DMCcRp/DpQn4Q1mnPy4AOui5q54540l/GKeiqBKb2EYMqfaB/HE/ILbro5eqS+BASddaxdUkpHfw1W6dAY1BWpGUb2K1K7TYzGQA/aYLbDZBgedg8XAIKnMHTGN1JEPa/ZavNgSd6WtA5QL2QiyOY/peBNOA0nWQNQo11E0u5w5X65g8LfU4PMFwKnkUtCM61pT6cF9phoVDvCJTHuNm7c/OSzcwNn9HGkTtmzcNt/LcrXuU07m9sbRXzDi2B+yjRiUUgSwuR9kU2MFaWx0YEU0wZer39d9xO130c0gl/taIorxYAna3cko0HSKkAf5qmCjcxlwOWCNMvlCb0Y5X6j4J/Hq2gLV2zzcalWgTzjvarY9SdwRs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR04MB5643.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(6486002)(5660300002)(44832011)(26005)(55236004)(66556008)(66946007)(66476007)(498600001)(6506007)(52116002)(4326008)(956004)(2616005)(2906002)(186003)(1076003)(16526019)(7416002)(6512007)(86362001)(110136005)(54906003)(6666004)(8936002)(1006002)(8676002)(110426005)(921003)(1121003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: XJZ5SRoVwIVb++6m9pCq/+05NEqGNP78BEWeqanvy/8YLF9cPE07RNgldIWWKTfbD/l6lYhDNq0pCFTz5vcjUo1RGAIIZZas8OqoituL0a3PCxJglZ6V1N056NKYmLRsPqaGFW30huAKf1KNaTCWc9VlaKDRvz6Xp3EIoQDhHWjxcMHSe9dIB877vLQG5xCsHU05zMhhBoQMAekxQozh8lQnCM+3R8gUB4/LiU8VpkZwNrlVX/DzURJHxIMBwdz/QYhhF9WCnDzzzUaK6ivzlsyH2MxzRwhwlaTc/J291k30SsNey5GmcVZO5YMqIjTlj7+OXK9BqQxLDS77WN+GJpRM2cFHs1VPrac/uVIZt1G9Agj83UDqXcXiuZsyx69Wn5//clyPNfVdcxUNK+tpxYgtFPU0X8s2Mm/3vwPxOAKNNyxOOnLvEguqPWkIaAf0gDxmtbPP913UClegalqsRjpZTb0l0F3C6vMoBSnfuDXlNRjCa4gcvWmK+m4eilUy3t+b1PJo4WAVowL4fYdEEbgVvvicKZEegQ0PwrYa6PxMOUsXlG24U2PwnmtIV7wehuSftrUBhWVCBomiTmv8+foGf7mhWxI1WhOMpK1kSibTk+aoGzXfDrnbuMNiwLJKrd4+WaEgT5t0kv4memNDdjGkITund8sDjr99QQuk+5O1XGgmrVatp8ltOFWafC0nDVNrx2merg0PWHiBFvynSVYvDR8/yVFeW40JD586CXfc1+E3LcirQ1XQaR6t91wK3UgNCpkUsInW1CqGWVKUDc+UMoFt+53auIHPWvp0XjE=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 152946e8-89fc-4a03-9b6a-08d7f0f864af
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2020 13:29:53.0648 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zB1MTVHmxKXzta2D0xWmSRq4u2vNuVORPqgN5rjZcTH6ZcsfkcbsAHTSkNz51geSgCQARu8DTuHii6nbC+d/9g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB5596
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_062956_124841_D0DE4939 
X-CRM114-Status: GOOD (  12.17  )
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

Extract phy_id from compatible string. This will be used by
fwnode_mdiobus_register_phy() to create phy device using the
phy_id.

Signed-off-by: Calvin Johnson <calvin.johnson@oss.nxp.com>
---

Changes in v3: None
Changes in v2: None

 drivers/net/phy/phy_device.c | 21 +++++++++++++++++++++
 include/linux/phy.h          |  5 +++++
 2 files changed, 26 insertions(+)

diff --git a/drivers/net/phy/phy_device.c b/drivers/net/phy/phy_device.c
index 4204d49586cd..f4ad47f73f8d 100644
--- a/drivers/net/phy/phy_device.c
+++ b/drivers/net/phy/phy_device.c
@@ -662,6 +662,27 @@ struct phy_device *phy_device_create(struct mii_bus *bus, int addr, u32 phy_id,
 }
 EXPORT_SYMBOL(phy_device_create);
 
+/* Extract the phy ID from the compatible string of the form
+ * ethernet-phy-idAAAA.BBBB.
+ */
+int fwnode_get_phy_id(struct fwnode_handle *fwnode, u32 *phy_id)
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
+EXPORT_SYMBOL(fwnode_get_phy_id);
+
 /* get_phy_c45_devs_in_pkg - reads a MMD's devices in package registers.
  * @bus: the target MII bus
  * @addr: PHY address on the MII bus
diff --git a/include/linux/phy.h b/include/linux/phy.h
index f2664730a331..d78ae56509e1 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -1141,6 +1141,7 @@ struct phy_device *phy_device_create(struct mii_bus *bus, int addr, u32 phy_id,
 				     bool is_c45,
 				     struct phy_c45_device_ids *c45_ids);
 #if IS_ENABLED(CONFIG_PHYLIB)
+int fwnode_get_phy_id(struct fwnode_handle *fwnode, u32 *phy_id);
 struct phy_device *fwnode_phy_find_device(struct fwnode_handle *phy_fwnode);
 struct phy_device *device_phy_find_device(struct device *dev);
 struct fwnode_handle *fwnode_get_phy_node(struct fwnode_handle *fwnode);
@@ -1148,6 +1149,10 @@ struct phy_device *get_phy_device(struct mii_bus *bus, int addr, bool is_c45);
 int phy_device_register(struct phy_device *phy);
 void phy_device_free(struct phy_device *phydev);
 #else
+static inline int fwnode_get_phy_id(struct fwnode_handle *fwnode, u32 *phy_id)
+{
+	return 0;
+}
 static inline
 struct phy_device *fwnode_phy_find_device(struct fwnode_handle *phy_fwnode)
 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
