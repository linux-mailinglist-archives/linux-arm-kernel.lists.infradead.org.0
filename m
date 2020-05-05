Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D5B1C56EC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 15:30:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zH4m6+VFPn3fTZ89Pq6t174phiSyDKC8pqWZLRZDk34=; b=L7Q7BW3vDQG172
	pdE7jmKcZyD3fBrEGeKG06T1xh3STr7LcmG6BO6CBKbc4j0Awvd33dDIDTJbVE5gr3tiZ13Ea72x/
	m3uivCfl9FpH0WE8c4RfMpxRTsIjLor383GBYCCrL+BXbyT/DANKi4iwUoRE+ScTsWeDvtlecdYhN
	H0QlEEWmOSIhfVOvRizZSGLekRn3FSHltnzacRJEF55QL9kwB4Wftc5/iZwSYzCh0pHGFoj6dcSVj
	pd/1ZfzWmfCIAYnsrZ9BC2sVs0+A3x+HhZ45N9ouig+QSyUrUW60+80DkJ1AobvExBouxzsLzJ64Y
	dj/s3ct/9oPaO3FTwPfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVxee-0001hb-Dl; Tue, 05 May 2020 13:30:36 +0000
Received: from mail-eopbgr70083.outbound.protection.outlook.com ([40.107.7.83]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVxdn-0000aZ-8v
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 13:29:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XyQObXIkFPiiU6uWtGK8m+i1Ce/yzAjwsrOXEkJYsx5T7IZGp8DU1nUJVoD7zDRDTxg9x2wyy2qRl617OGV21TLDnS2lsKshvURqQsXsE89HRBgU6PZ1li/H62r8sGZfhu19ipbHdsjTGAOC94oy2GyEkjCt8V8/hhh9Pqef0PA0vM1YEyZnWsqTGgi3VDc3WFQPXoZR83CRizYce4t3nbhwfImr6iH9ybbTSpdo1i9IVCxx/oPJuiFG5vR8p822XyDEG8FUmKflykJmrQ+LEVQBNXo9brYStfVNHKhD4N2a8rmkSN8WeDWbX4cLVVmmUgYcwu7zfNK/Nx4Q8AmT6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SSoZS/pv7hxTVpLiSe9cSaCSRVxP1aMZW00H/0LY7hw=;
 b=FTTH1pyTE9ytHLOMaTyVVvhQy/EaDoBiSJFE25gawQNaCMau33TE4bk0G8sJkGRyfglxwPln/5Exn97CGtZvXEqLoHluudiD6U+ynpk9VuNgyhFXxz6l7Lbcw9PGgI+8ZBiMHmgi8HDERliA4sMO0smVquZ5/zbDZeNZ68NGye/lkdsI4ayF21pbT9LS53Fpvrw7aZ9nAjqn+F7qmldqcYQ4fQb5c+zmpGJb2OqoXwNibvLKB8iPZ7WAAuvX8Vq4TUwqrt9tuTsxQvq1fwUNZ6wdgp27di9J+63CcuU2IuAlgSidMBemmBH9K2opNfOquMqciArDflUPPW7pAuAFCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SSoZS/pv7hxTVpLiSe9cSaCSRVxP1aMZW00H/0LY7hw=;
 b=SIZWbxeOBylH2LTgWirhAH2mwFdsOiP3BDSTC/cEtbcSzBo0GLB39z5qCJwFaV9da9nw0wwnYTnViIeAtbiF6ujZpqk1H+wqgK1P5B1K9EqK+bURN3VsnxJGZ1Qm7fBezGiXlv7znXsGOg8fMOurnWVIOIP19LSriL2rIO7VFFo=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=calvin.johnson@oss.nxp.com; 
Received: from DB8PR04MB5643.eurprd04.prod.outlook.com (2603:10a6:10:aa::25)
 by DB8PR04MB5596.eurprd04.prod.outlook.com (2603:10a6:10:a2::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.26; Tue, 5 May
 2020 13:29:39 +0000
Received: from DB8PR04MB5643.eurprd04.prod.outlook.com
 ([fe80::4031:5fb3:b908:40e9]) by DB8PR04MB5643.eurprd04.prod.outlook.com
 ([fe80::4031:5fb3:b908:40e9%7]) with mapi id 15.20.2958.030; Tue, 5 May 2020
 13:29:39 +0000
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
Subject: [net-next PATCH v3 2/5] net: phy: alphabetically sort header includes
Date: Tue,  5 May 2020 18:59:02 +0530
Message-Id: <20200505132905.10276-3-calvin.johnson@oss.nxp.com>
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
 15.20.2979.14 via Frontend Transport; Tue, 5 May 2020 13:29:33 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [14.142.151.118]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: c123615a-098c-4064-abe4-08d7f0f85cc8
X-MS-TrafficTypeDiagnostic: DB8PR04MB5596:|DB8PR04MB5596:
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB8PR04MB5596B084A0A5BE59BA889DECD2A70@DB8PR04MB5596.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1247;
X-Forefront-PRVS: 0394259C80
Received-SPF: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kuGtHj8Gul8s8LNO6dA59ZLi6s1f20Cgkmu0odEXKcOiOFFSX4LLi3jxAhhAUEu45IAkqvZSgpIzzMGHfQuSfklqpDf4c+oCyzjGgeFFyGz9soapMeWuIJkGrVj3pp/Didpf7BpcnGAI+nbPfL/xPXntU/8ZpMe77b82Eck4+rWlFbPprnHAUOHz9q4rN/xIfrioNuxg/TwUQczGPldcBpzbyxA9vsoCOAsIqRTKWAjEQrdkPTcP/1NHhAhzMC8XBc60EOpuYdaEO77oc8072FcMjcFWlJ2kIxVj3XSUytvMHHYO2QAhDMWqiSQMp/edfbP0GKYJ9sXKMUB3PHXufHCozfHmhlLYb5xwFL2h0AHU/G4sO5KtfAUjNjJ2JrXteGa0uooGWbUFd7iteoFG0VPLguc6TE61x2wZTtU1zExL6ICVeOptBaCWG8F6hf0AO1NXnZawWiL7wvG0ZEYDcfPyVuhMwMQNOaoQLBpcajHtGqRGFW0BINK2UVCya/SUpXAzygZdFCAdoCORkVPmpeNhVxcyzgDulejoCl0spFg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR04MB5643.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(6486002)(5660300002)(44832011)(26005)(55236004)(66556008)(66946007)(66476007)(498600001)(6506007)(52116002)(4326008)(956004)(2616005)(2906002)(186003)(1076003)(16526019)(7416002)(6512007)(86362001)(110136005)(54906003)(6666004)(8936002)(1006002)(8676002)(110426005)(921003)(1121003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: 6rAVwiwh2v352yPkg7HpvCbnPzH7XEbVG/MBtlEwuE/L/YYObVo0AAIIjD5aax2UdzRE7HciL/vohZHCr8bbODbi9/2qgyvp2o/6luMHTwIao9Z2QSqFQox5YUPk9Luh+t9kxrUrCYKspCjMF7t4O4txsOisyXXyJzCHgCbm13OU5cMgmhm9+QlYF82dPWEYOk43fwyqVPzQxj5S0lg7IQtAQJ4nj0D/xavR7VFDFDQ480U5Ptm9BxTt1PuZUwDn+7sn/+Q4Pw1vv8YYmQ0veVfci3xdTgPut8DPrsnDEaximk5dtkHWIKw1Qfny8t68hqNALuw0f6bWqo9I5qp3qyU6aFxZHwyF/h2jFb/PmM5D6F7KUzYcyb9hYvXBtR7Kr/sTszop1ZyJX1Ugh3MR1KFI5dYeqIX2LhQQaiqiIPGqE3QxRC21bDG08nREJQAf9eiFidorb3tiPZC688xkWrCxNZGQhStVwa4RmcQQFTgo8zIHOihaIeoQlog1x3QuiqgTCgLdZ7tzSUNUEWloJ2tusPzJu6FEcF9tRYDlwYME2PPeZ4POINe8Ap5YteL0j3p08Fdj2aqLrfbYs4/v1R4LBeLkZHP4VOc4diP4KOYDX7pSMBLw/e1YzTXvGB6xPgm0CLJ1qRi/kZU0p0GFM2twWaUVfDeEczyg0vy+RqNpptYWhZFPh4RppoxzzoznNKS9kGJoVERrxtABJU2yQUsaI5LsqXsExOEq4Plbs962yBuUYXuLR68w/1pI5xd2EyPWWpfuNOuu0n8TpIBmNwi/G343N8N/Px5ZM/409hc=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c123615a-098c-4064-abe4-08d7f0f85cc8
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2020 13:29:39.7634 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q98VGxmKLKefILfSDJF1uM1Qpa3tYnCBTaju86c0Zsg8Al9s5COs6E1RpwF7YHIZlJ9X8DFZxEGrfYrWj0xGhg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB5596
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_062943_329222_50F055F5 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.7.83 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.83 listed in wl.mailspike.net]
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

Header includes are not sorted. Alphabetically sort them.

Signed-off-by: Calvin Johnson <calvin.johnson@oss.nxp.com>
---

Changes in v3: None
Changes in v2: None

 drivers/net/phy/phy_device.c | 30 +++++++++++++++---------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/net/phy/phy_device.c b/drivers/net/phy/phy_device.c
index 3e8224132218..4204d49586cd 100644
--- a/drivers/net/phy/phy_device.c
+++ b/drivers/net/phy/phy_device.c
@@ -9,29 +9,29 @@
 
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
 
-#include <linux/kernel.h>
-#include <linux/string.h>
-#include <linux/errno.h>
-#include <linux/unistd.h>
-#include <linux/slab.h>
-#include <linux/interrupt.h>
-#include <linux/init.h>
+#include <linux/bitmap.h>
 #include <linux/delay.h>
-#include <linux/netdevice.h>
+#include <linux/errno.h>
 #include <linux/etherdevice.h>
-#include <linux/skbuff.h>
+#include <linux/ethtool.h>
+#include <linux/init.h>
+#include <linux/interrupt.h>
+#include <linux/io.h>
+#include <linux/kernel.h>
+#include <linux/mdio.h>
+#include <linux/mii.h>
 #include <linux/mm.h>
 #include <linux/module.h>
-#include <linux/mii.h>
-#include <linux/ethtool.h>
-#include <linux/bitmap.h>
+#include <linux/netdevice.h>
 #include <linux/phy.h>
 #include <linux/phy_led_triggers.h>
+#include <linux/property.h>
 #include <linux/sfp.h>
-#include <linux/mdio.h>
-#include <linux/io.h>
+#include <linux/skbuff.h>
+#include <linux/slab.h>
+#include <linux/string.h>
 #include <linux/uaccess.h>
-#include <linux/property.h>
+#include <linux/unistd.h>
 
 MODULE_DESCRIPTION("PHY library");
 MODULE_AUTHOR("Andy Fleming");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
