Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA701A7E22
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 15:33:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ujoy9HrWzOu0Md0hKTUbTHa2cn8vtY4r2x+uUpOfc7A=; b=ESY9dtyEHUDwJk
	sdoXFkaIRpFxYbp9ex2FlRkCzJDL1gB5kRu1qc2upOTZUw5HQ7pUdQf3ktZ7kVnntyrXBYKZ4wWA5
	Wp6ulePz+eDR0FKozOL78JP3H/ABib1rUTHXZlu9w/+qiwxbo87yElfrjJFbdep1Tzn43EvBLAXcm
	cp1HNVL/ZywZ8bCniY/6cthtfiwpDgqdTmk3n3eZUO4PF51dNsjlJgHU6VWn36uKh1nin3xApB4oA
	XMsxKlNaleyKH0HRRz2R22x8PYO+x8ZsKMTa3zZbMZk84+SMyo7Z9rzEIBPwk9rAbCTYzU4P9srdK
	P6OX8D3wwdnlc9hvhBpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOLgZ-0006YP-Er; Tue, 14 Apr 2020 13:33:07 +0000
Received: from mail-eopbgr60088.outbound.protection.outlook.com ([40.107.6.88]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLgR-0006Xu-6U
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 13:33:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vi92amGerpA6nAbGKdaNuFLRulK7/xISCpGQ+K1GfNqYKlH47YCE+FovY6uI2rGl8QxKLzwIHgavbBXnp54NRgl+V0Hj82G9dMvLQmIdl4kpwGFeNO26pMoh6ejdCkDh1tnDKDsXcWuFN0pv2eOWntX0GJSdcvsz60dG1vQ5zzQZP9u6nkFtjVZY0N2Sw+aCToEX/KPR1AE4cQ2WHd7xAbFsYDi+ldELesTIOuMlc+qmuSrf7iCS6BjaAj/3bW1TmDOlwrH609XrJPwy3xXKwdkiLEnMeLg2GElqbQ61LEwUs+lA/rMSmauwFHtZYCxpVahiSB89UGZBSfjmLhyinA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d8r56iU6nx/DKLqagQWCqusB9o+EarkpsCAau+xRQlo=;
 b=Ti+hh6h6Yg0e3gR50xXC+XHOcZEy8J5OmxOdEbsM/GKedGa4Ii69hPRoh6hRSUj1s4c+n4emkvlEUMQT4hUmSg2Cshs+2yAwkkUG/BMKatbn/cuntKDmbHamo4CfEgTHKVC9T/TE4H9ZUX9uUKeKcgNu4xOF3eyE7tj8oGBVJpTpL+HyyzHa8AbzK2u+t52nQOFL9p+kiiHiIC+hGjyAIT39RtYREgcULWmR2i4bZs3lwiIqmhEBWbhoIIk5mFz4Bfg3rXNHZEHyYxA/OMvz1c65NvmScpP80WlUgqiXHZE1URLCCRttZXlVPwiKzgzZt565Pcf/EYXsAUUocPBCJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d8r56iU6nx/DKLqagQWCqusB9o+EarkpsCAau+xRQlo=;
 b=aT1LOY9erm1exX3/WEHhb3zNeeqx9Kgioy9hbsM904VkUjtaXNNU285Y5SpdDx0ZOHO21ypcZ2aQ2bnnsUScsc3TF/L4eJPcSjygbOdbU9Y63Du25ln0hOtKQR5SS6dgGGcVk442y3YHvjpUBWUNF2VRQLMleGYa4+8DG71sVlI=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (2603:10a6:208:70::15)
 by AM0PR04MB6868.eurprd04.prod.outlook.com (2603:10a6:208:18c::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.15; Tue, 14 Apr
 2020 13:32:56 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc%7]) with mapi id 15.20.2900.028; Tue, 14 Apr 2020
 13:32:56 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, robh+dt@kernel.org,
 jaswinder.singh@linaro.org, linux@rempel-privat.de
Subject: [PATCH 1/2] dt-bindings: mailbox: imx-mu: correct example
Date: Tue, 14 Apr 2020 21:24:27 +0800
Message-Id: <1586870668-32630-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2PR03CA0118.apcprd03.prod.outlook.com
 (2603:1096:4:91::22) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.67) by
 SG2PR03CA0118.apcprd03.prod.outlook.com (2603:1096:4:91::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2921.12 via Frontend Transport; Tue, 14 Apr 2020 13:32:52 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.67]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 65831955-a08f-4087-1f54-08d7e0785782
X-MS-TrafficTypeDiagnostic: AM0PR04MB6868:|AM0PR04MB6868:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB6868973C7AFF1E98885E6B4D88DA0@AM0PR04MB6868.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1443;
X-Forefront-PRVS: 0373D94D15
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB4481.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(346002)(136003)(366004)(396003)(39860400002)(376002)(2906002)(16526019)(7416002)(5660300002)(956004)(2616005)(15650500001)(6666004)(26005)(69590400007)(86362001)(316002)(186003)(8936002)(6506007)(4744005)(6486002)(478600001)(4326008)(52116002)(81156014)(9686003)(66556008)(8676002)(66476007)(36756003)(66946007)(6512007);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MpnXO7c5PJ3B5T5985cGHJPZKkBsTaF5TRb9zBFKIicyR3f2QcQ20AwS1PxnULm1dyJ0EuvGxWWZiZBiWaTq9Dp+1jfyCM0M7CMKbER5x8tzu3yFq3EA9b9BKedcArSV86fN3KccDLZ6RUF4Cvx49NVX8pbpoorKYiPQPOCojWg4ZAx1tSpcK0u6QXTeeeneodPuPmP+CY6D1FboENIC6E4wdZ2RpsxmeWJvg+X4lA9z8cf1s7ZINGj9zLZM6uY+E1CRcX7c7wZLyckYhSfpN7Fp3PkccaLoPAhxPNnLHzTRd2NXhAyE0JOtycLf6QD//qHG6gEZ7TaW+rQr9pIF/xMuNzE9l7Dmkb202nruTFr5FATKqXPRJVjVpRQpVLaxyjQg/d31VNYph6Mracax5W4ki8eEcCBM9vbVcuD0LwS3hodUV9KVBAXpSDfdWcbIANbXyVuBLQHg4tAzLbj9hdpaG+HnDZ5MyRkpvdzKjZVgTRY14fdsOX8eTKC0Z+Mv
X-MS-Exchange-AntiSpam-MessageData: 6lwQ1bCmp2oYRoZEEG5lHJ1EmE77+mXjgP4+bXt5kJ3I9th10oBjBrNy/UBJsBXSkRmsowbrRZyZSCNawTM032soiaUkG847c/MIRKdmThKFpJdVudbNt9qyl5knKwtuzpAkoZMLYsPbjXxHfJmE8A==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65831955-a08f-4087-1f54-08d7e0785782
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2020 13:32:56.8235 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0NidV26Tm2GkekpePOo5kc+94hIYfR2Uzn4LNyq079n3jtbW9qqnARr+1D9AVndBW5QzQzlGIvSVvxhz4nHLNA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6868
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_063259_236171_D987FA32 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.88 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.88 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 Anson.Huang@nxp.com, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

The example use i.MX8QXP MU, but actually the MU is compatible with
i.MX6SX, so add the compatible.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 Documentation/devicetree/bindings/mailbox/fsl,mu.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mailbox/fsl,mu.txt b/Documentation/devicetree/bindings/mailbox/fsl,mu.txt
index 31486c9f6443..26b7a88c2fea 100644
--- a/Documentation/devicetree/bindings/mailbox/fsl,mu.txt
+++ b/Documentation/devicetree/bindings/mailbox/fsl,mu.txt
@@ -51,7 +51,7 @@ Optional properties:
 Examples:
 --------
 lsio_mu0: mailbox@5d1b0000 {
-	compatible = "fsl,imx8qxp-mu";
+	compatible = "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
 	reg = <0x0 0x5d1b0000 0x0 0x10000>;
 	interrupts = <GIC_SPI 176 IRQ_TYPE_LEVEL_HIGH>;
 	#mbox-cells = <2>;
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
