Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF771CD556
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 11:36:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5tUog8zDu/rVVp4KEh9DUcW+Iz7I0zuPfgbC2DGXHlE=; b=m5Y+6G64y1xl19
	r7XCuNyQZeZCT8Ek7RIx2OOKFerY77YC0WLSdby84FoSn3bsUFT6YShc2nw8EPOzqEPK36dRJNYM4
	eUbtPIY8n0AGrHRuQq76cWU3YBulylQ1ijk8N578TlQ3mBxOdzCZINFbqr+GcK7WB/zKRhynsy1R2
	mMOIldmgyrv6Ajna6IJkv+DM1BWJx8seAvAxrGkY+AassmuoS6lOe2WuvRgsIQY020Za/QzpNMf1/
	0Bvg5etoT6QfcdTSzIVZ6x5J33UKE2XSrCW2GDxO3fttSfMSGcYuWcA8F3imOGchZFLUcSVITjF4s
	nd65ciBTn0hwOJasUFBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY4rE-000851-Nz; Mon, 11 May 2020 09:36:20 +0000
Received: from mail-eopbgr130087.outbound.protection.outlook.com
 ([40.107.13.87] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY4oL-0003Ac-Hn
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 09:33:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S8BI/Qfph5iq+Z4d40eXA2yc+Ne6E+RLaf/Kuu/Rw66jG3It/+QfPt7mp2dx01iBMmJCWg5RGYTNZqtHundin6yo0kcXTD4a1Lv+8YekiNzuHMMnI3XrOond+YuucLOCPOfhXIbADSf+KQrSF2KZQcaFlnF/KcMDIv7tia7NRcUrw1d9dO0iDza6rp7F3yA9QXHP0Q+kweRJjUUv9TgfKkqhfK3/Wh6NW2d9PETzHytsl0n5BSM91FUVx9KhgqCWvU01KUQ08RrBUBILBH2DsWdpqdQMLzRz+TAwPvU6r7391wtA+dN2zrvz9QbEev/9ZCC2Zt/t81D9nTnZXg9SAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sZvU3VGhVcTeYxe4fB6geATT0prKN/x1vEpROhK8pVc=;
 b=MFhtMWDIriw+35CSA35bcR7FhPpr4oJiajyD83UsYhXfs4jQ+X/q3++D2jClF+uTfAsGaedbz2OxdLi8YEtovwAK9eHUnO4Jwmh2K/16lThx4+wIOwdT9nHRgWBNnlJxmh8/hnXnm5XbMeZId8/PfMITpGubJhbVJvNqNg/cIUab1pyhc/2MgPAiAXcnvO1sCn4MBIoIJTgzfA5Z7c7SgNLTI7w3yEhWigYnwl9RM2uRCZehzks7mfI1H6d8jPQiTRAGB1pwa+MTxIQ3+OBiVOk0NgE9PAkpH+27q+npZWP5JMMLt7M21IsAsGZ3qii2ZMDT+dFmWilPNv6bhNeaGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sZvU3VGhVcTeYxe4fB6geATT0prKN/x1vEpROhK8pVc=;
 b=oqcIn4rqsKCLvQVbzp43vGft0QkieyVm+CevKDGhUik/2uKT1d4Xx4QaXbYtwRshBnUZTHNujoJOLUakHfPTccRvBTqRBjxdwjop5Cl+DwM/1SXzi9OZ3v2RtbwS66B9EgDjZzvnLKoDzkpyeSOZMheUiU5aUPlYEJvyU04hvPE=
Authentication-Results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6733.eurprd04.prod.outlook.com (2603:10a6:803:11e::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.28; Mon, 11 May
 2020 09:33:19 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa%4]) with mapi id 15.20.2979.033; Mon, 11 May 2020
 09:33:19 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: s.hauer@pengutronix.de, vkoul@kernel.org, shawnguo@kernel.org,
 u.kleine-koenig@pengutronix.de, robh+dt@kernel.org, festevam@gmail.com,
 dan.j.williams@intel.com, mark.rutland@arm.com, catalin.marinas@arm.com
Subject: [PATCH v7 RESEND 11/13] dma: imx-sdma: add i.mx6ul compatible name
Date: Tue, 12 May 2020 01:32:34 +0800
Message-Id: <1589218356-17475-12-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589218356-17475-1-git-send-email-yibin.gong@nxp.com>
References: <1589218356-17475-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR06CA0141.apcprd06.prod.outlook.com
 (2603:1096:1:1f::19) To VE1PR04MB6638.eurprd04.prod.outlook.com
 (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR06CA0141.apcprd06.prod.outlook.com (2603:1096:1:1f::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2979.27 via Frontend Transport; Mon, 11 May 2020 09:33:13 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: d9992a1c-1a3e-4256-e88c-08d7f58e56e1
X-MS-TrafficTypeDiagnostic: VE1PR04MB6733:|VE1PR04MB6733:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB6733BAE0D05C77B86346C3FD89A10@VE1PR04MB6733.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:632;
X-Forefront-PRVS: 04004D94E2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cxa8czbMVhOSy4zUSHk/G4NyVR+y16X3gg2hsY1J0sX2z7H6EI1G6j7IJYuDUSsThVdcAwZleLo6eOgyV8OOzn8lLDL6lVnD6kVDzfkuBhVXR47ckjsvcBNnfqC2QPptjWPD/u/0na/0AOUiG8M4nMjYuuRz7Ubu697frcSYv25k4dwS1/kPzvnn2nCFvBZJ5369Pjy0OZHZi4QyRRPzZxUUes5CHjksEy1+9mX6paKsrNypt5BzBxfsYXrFSsUqneUFGZ1iRWk7wKvCy+SCUrI1/OEjq1LdPS6pdiohydc5klGlzN2ngdQlHHGk0ATGMkPQzQeLE/AiPvXuqQWazJJYQ4z6wdS1OLDGKfwZ0bkd1CItVvuyC6ME9TnzOZtpFBMdFqyaZBlL3CuH2+NQZ9AmyO0GKvUosnyiJRFoTxel7CxLVj0b4A+lmhwUBWVBze3hdmxpN3c/Eo1DSz4Kr476ze9HbcY7rmWhWXtPSJCexeoDiq39ribQVbn74m4L7ibr4HWmJSwj9PelsJriYQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(346002)(136003)(366004)(39860400002)(396003)(33430700001)(5660300002)(66556008)(956004)(2616005)(7416002)(4326008)(6666004)(52116002)(478600001)(8936002)(4744005)(86362001)(8676002)(26005)(33440700001)(66946007)(6486002)(6506007)(66476007)(36756003)(2906002)(316002)(6512007)(186003)(16526019);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: m6Fne5r+0dj5euW9B1lXldAUed5BH8Qfxgeaj7f9lgZ5xmbABNZZnxekfYS2PqqGxNRWMdwhpdHoKAivhgFD92XiSnzo87oscxDyx4T1fd5BE/QxI+O1+5DneCbj7KjbFvCQatNWt2xc+NYYMinLmYaDJq9v86kCwRIpWoJhUsM5sIqDIHdVBWMKIy7cyt67Fju3B/D5SXE9+0C8J0FWBXcLCjaXNEdJnSLYCjx0IdbVMmmYe4jr2lKUUmo4VyN9EF7THBJz58TQW1icAHoVdVMEu3CcCXLwJTKS1bF1h+oSd9HRWpCI0bX7rKvw0zNYezVX1ZqYbqxRJ8w5dkqEtyPVnDSiqKLCons3n+SnhtuYHTT+a7x/wNbEnDQPiuKDk/QExupgUWJ06qv2bpxPcIg5/L8Uvf93uaflw2+vU+jXgtHkUSxEQ25dVbMBvLjjltL3klt0tOle//fiMp5Az366oH7q/2emR8kY7cRlW54=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d9992a1c-1a3e-4256-e88c-08d7f58e56e1
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2020 09:33:19.0899 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XI46rbyJgy7CReNYXb9vAEK7kDjNgg0iRCYMu7aT8L+fDrVReBVv/aAzzoqc/OVAS1/JCwYotTbGWY+E27RNQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6733
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_023321_631555_393421E9 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.13.87 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.13.87 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, martin.fuzzey@flowbird.group,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, dmaengine@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add i.mx6ul compatible name in binding doc.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/dma/fsl-imx-sdma.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/dma/fsl-imx-sdma.txt b/Documentation/devicetree/bindings/dma/fsl-imx-sdma.txt
index c9e9740..12c316f 100644
--- a/Documentation/devicetree/bindings/dma/fsl-imx-sdma.txt
+++ b/Documentation/devicetree/bindings/dma/fsl-imx-sdma.txt
@@ -9,6 +9,7 @@ Required properties:
       "fsl,imx53-sdma"
       "fsl,imx6q-sdma"
       "fsl,imx7d-sdma"
+      "fsl,imx6ul-sdma"
       "fsl,imx8mq-sdma"
       "fsl,imx8mm-sdma"
       "fsl,imx8mn-sdma"
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
