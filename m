Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31C491BA4AC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 15:26:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tsun7+9RkNSf3qrUdcvIV1AhE1JbxKMttKK8FiUTN94=; b=Fva/aSJRdF2vXd
	uDXzn6qoOlD7XqbKdHpzPhC97FY9LnQ4R4CEQ0Dz4zq4yXn0uNkq/jv85tUsGalfDLcjMdqtPVqmQ
	gJ6hc0I1sSgwcSkmSd8arOpPANlMwTQbGFP2dCyfBODgMlCPjyfQOLK3whZzcjx9E1hJY6EL3fSXu
	YK+zS5iul2y2ian/h1Knnu7II00gjPtT/5kKdXYJeg3b9HaAdkYMiPI+Y0VE1KcjOFmr5++l4ugkt
	yI30b+5bJXZZF7zbqmeDq51vhdhova4UafbrU6N7nzTtAPRUE9gq52WFsBCUB4svf4DCpFiE4sF0o
	L+FLH3zfwRtKmbvVVZfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT3lq-0001Qz-IZ; Mon, 27 Apr 2020 13:26:02 +0000
Received: from mail-db8eur05on2042.outbound.protection.outlook.com
 ([40.107.20.42] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT3l5-0000KP-Jv
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 13:25:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M76lILtfYtk6O6SQkRQAdWGocm7zyWUzqfUuLqYCqQ9OwVp5SKrWhfPf1Pk9pDFn6qJfZSaLeU8MamPRTtdSqwYGvkbc/YvU+0bzMGsP5pB3cw6kyPWZ5PlQgdvbU8oXvPzHRLXhWt2BMXQuzjhZubhHfv0GXsw/Yd2Gwl5tjLzN/V+KiEFt2E7Dyus+qppNbqYHeGayA6K1Sk61kF1a+hUvSmZMt6hMAWADeTJ2rSzP6UcJOO6U7Een/vK+xE5YV/RAz/jPA7IonlqF2iZpf72NdyS9Oah1hSrfwMLVqNI5r4D8qzglVbQs1sKqdXx0uhqXZ6PHVOsEeznccdUxPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bwPSdZd0MfMChaSmn/JHPM8/4ao/rPU5B7SkAWZayvk=;
 b=U39dRTTRNy34VZw0FeWRSSWL09JjtgZ3hWsLeLVpAmORVGUehrsj6Qk8F7M9SnKLWww6jahpWVcBdpJx8ZLc05+l0Hr57Lj1wwtgRbv8Xzq5/flLB08QkCHnreNsNwfwQZj8LC964LsqdwS3dmhgOuvU/BC6Ts4hmz91c5sFfaIvLjvw3GxKMV4TdJQ/RsGFRPDBJ94EWCElo8tk/vYAq5i2oXgFYHEz9SIUk1veJ2/2qzOAVyPVVDFkCmagpXLzyk342LyZdC24vJhg9WbU77Mbej0HUCbSWxCsuD+ww1sEhEHKZnaSeorLg4rVQqxlZ5oqQQ0pDQP2iS4b0GvPsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bwPSdZd0MfMChaSmn/JHPM8/4ao/rPU5B7SkAWZayvk=;
 b=XWvq5ans2WukDAIhO9hlqfTWp/Ygd0Md4ea/BoUEnJwWJYGD8CAUdZrJOJXepBSoYBV/ZK/d1O5pd2MtZvh49s1hNHtN5T/LtquSwyt51klnjWJcZEDgIhX7hgJSjspQJcpIY9fC/M/qgEsSaZBRJJ8hTvWk3V2msl/WEeprYtQ=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=calvin.johnson@oss.nxp.com; 
Received: from AM0PR04MB5636.eurprd04.prod.outlook.com (2603:10a6:208:130::22)
 by AM0PR04MB6867.eurprd04.prod.outlook.com (2603:10a6:208:182::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Mon, 27 Apr
 2020 13:25:12 +0000
Received: from AM0PR04MB5636.eurprd04.prod.outlook.com
 ([fe80::c4fe:d4a4:f0e1:a75b]) by AM0PR04MB5636.eurprd04.prod.outlook.com
 ([fe80::c4fe:d4a4:f0e1:a75b%4]) with mapi id 15.20.2937.020; Mon, 27 Apr 2020
 13:25:12 +0000
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
Subject: [net-next PATCH v2 2/3] net: phy: alphabetically sort header includes
Date: Mon, 27 Apr 2020 18:54:08 +0530
Message-Id: <20200427132409.23664-3-calvin.johnson@oss.nxp.com>
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
 15.20.2937.13 via Frontend Transport; Mon, 27 Apr 2020 13:25:06 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [14.142.151.118]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 0d7ae5fd-62ab-45a1-3d8b-08d7eaae6a52
X-MS-TrafficTypeDiagnostic: AM0PR04MB6867:|AM0PR04MB6867:
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB6867C4FF97A5D8457823C9ABD2AF0@AM0PR04MB6867.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1051;
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
X-Microsoft-Antispam-Message-Info: DURloPMU0Qd5rakIPpGcb0PW5OWYaAYgicXXM8GWbZ5FCG74GyhVD+iXHPvgxIZMYHEURDMIMnUy73OXSLoDDoj2FVEsvDNz7KkGNzYatqhyumLLuJZo4AGCU9FP8hhu8wVxhc1Dy7Kc+uGi7lOCPYLnVacEgjgbF4NV62kMXP848bDyxomBPn87YK3lnFGRjcWrHwvEjJGIiZW4I8eYcx5Aqp6RpgCLedditcj7f6Up++fBjoYnvbG4nb3dJezmdMKsSi53/JFi4K/zriFQJeqj+XMEAYSaThAx1poC+LJI5sbslNZ8N0sYZbYdQTh7XKL06Ee/ovtzpZQxavwciTn84VfIzLLihj90Xy2WZIhLzwAhLbj7p4B7wMkkVzsJeJ0dckQxHJCXC5gVrb54G1hEE66x9Sj0OSA6hOOqyXQeeNnYs03u6bC4MJbDbTmIT+qs0ZsG7J77Tn7XA2ZpyopHfyRrCpNIH8Y2lBcLCzQQL2ljyc9FlsqtVBOXbr3dW7dh1solYDNKwbws/E/BEA==
X-MS-Exchange-AntiSpam-MessageData: ORm5IyRD9IQ1F08ln/8I08YPuWouUF8fAIZNMs0acul5Js+DEp/s/aOWAOSRRIxSXyERa//M/BNuOUK70dNzYibG4NgetyYSDP466OwyQ6BFx347R6iLwmAHwflF4q+0tcso6wLg/MDTSILk+AY6mF34vVHOhiQ6gx/nKFTNJysnLIY9IdKphx4jt+TuwL+q0ZfUaOkNy0THE82+oXHdjR/85AZQT+AwhYmMvBXcBXIyiRrLVxdrNe/euBIejOwUOh6lcn5ZaB+jkQac/Q4kY3x0adu4Zfr+HU60RfUuuuGbOsI8WFIkk6P+4XAxwUf32xMrPewWGCOUL8qgT+dVEL54gmAyMI0Pst8d/vF35tZxc4Z0eHDaQqejm2qMbh57h+EomaXelpzALKgw47VG/iK6IkOTzlxVrsUSf+Q20vmJOn5+6FclufBYX/NXRRWRO30vklt5ArpvSItchXsAoA7U8EPhr3L6YKCTCHbq8DwgVQIZn/t12EgrANuLPl+9o/fQPC7OJ602qGTPAqWXNV9QDqHVrWpSaE0bg3O1aXmM3lDTSMhC/bQt+8R43uBYet9t0ycCFAs1GQtX5FuUvCFJPI9cNYUl9ovbzgCukEeT+MX0dm0fYVWSO5GInbZSTtLLnYDzSxhnrOMHik1hwcAC1AiNbzmLofDgltLSPq7HqRh3Wl85f3ICfP57BBkKVm+AYHgH8W7r3TfyE0odilaCVTlZ1GOkvmVx9M2w6CgNFGjKiejrsvW8oi3PV4xb3XIrJbTDRen7r9AlqmwIz63CogAUwHDlKtX7Bvpfe5g=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d7ae5fd-62ab-45a1-3d8b-08d7eaae6a52
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2020 13:25:12.6987 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EoDpEEElx7rKWSWu0/S9ljq9JZOsLL55pk7Sos2FsGsSKCdtFrZKIo5S6YGCx113wMjb5o97dlGyaREh8LQ1VA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6867
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_062515_760743_2F825C50 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.42 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.42 listed in wl.mailspike.net]
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

Header includes are not sorted. Alphabetically sort them.

Signed-off-by: Calvin Johnson <calvin.johnson@oss.nxp.com>
---

Changes in v2: None

 drivers/net/phy/phy_device.c | 30 +++++++++++++++---------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/net/phy/phy_device.c b/drivers/net/phy/phy_device.c
index a2f3dbba8a3c..b8326bfc7c2a 100644
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
