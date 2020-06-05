Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F0C1EF965
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 15:37:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5tUog8zDu/rVVp4KEh9DUcW+Iz7I0zuPfgbC2DGXHlE=; b=Cflax4nWKnH9bU
	KJso3MWi9XZA1aJ9K7fjY72DiKwkLcP/V4DJ3mvAovta9dQ5TfxAs5Z+EygWSNGVwzKP+b/mHY4md
	aIopDsM7BEIvTszIunIyFoN1mKHSprUW52VLw+7U0BrDBGYV5AjrPug16mTclCzNGw50UlOQtAilM
	8yXl7CUvrMZA7jjUjH3mJKICUETzOcVojeHNb6CLfU/oSQ24k1ODIBGbaUn6ZFcdz9B3iP5ayf1eM
	jKPe3jC5AhTktcmlKmaiig4sCbhXh7ORdhJJ7zeMiSxZqO5YeQdTxx+BOvTk3S6j+zzFrXo63iojK
	eA4dGjFOAV4JstONNQuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhCXX-0001Tk-EL; Fri, 05 Jun 2020 13:37:43 +0000
Received: from mail-am6eur05on2063.outbound.protection.outlook.com
 ([40.107.22.63] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhCUB-0004wx-M8
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 13:34:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J951Hl5a7RYMsEyCKFoA09lDY5uCNL+nRzJx7AnG548xlO4SfBjaxAEB+Q5yUdcsXCb2epjEjBIL8/SgQ+vI5G9RjT9VkWslH26qVZ5OpaUjxpPAu8wBUgTWDS4fJEmgGHDaqHZPOMhoJCfGOy2bUIR9cRMxAYHsyh5uHbzI5cbR9F6XD8dKg0k2axLP5FNdfQBmjdxa4ume0viTiPCxTeT/WTYw9uNvOYy3kRIoz9hwf+Ui82cR7/tOKSYOMWUYn1zG4TYBzn3wDRNaFkjBApJGUeW9MV4HiJTBhxMZg/SCQaI1PwQ4ru7wJdY4cWYUP4BI+T3PuKozoJXk8lA4og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sZvU3VGhVcTeYxe4fB6geATT0prKN/x1vEpROhK8pVc=;
 b=b/F1ul/ImScl8Pz52QNi6WKrBONu1eayQa+uId0wS8k43ipRKk2OJZUBrklH8XoIQcSJgVQJ/ou2BwP95NSyQwgTIbnIiSmkbDYWyhfizE4pXjwVnwhRbFMD+oKNJM8qByfpINOD6Szx6BxPtTDP0F0y1UlVmaY6vSO/pMTNhHzn+5LdcO5bzK/ykXF7yOqiLCubqcEatXnwHafid+g3KjerFMQovvEzXMRzfOUoSOPX9Ei9cGQWc5dmNZS4Fw4NKYi3Yxf4qKAUg8/UytLv59HRSp2qm4lpu4weN1BjQ3ia6fynQxA4CLf3Wckm9eh+PamxDRbvPTiIBxPEheWkOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sZvU3VGhVcTeYxe4fB6geATT0prKN/x1vEpROhK8pVc=;
 b=sGaeKmBSySTEZ8Hsjz0xegJHiGBSXNP5DqFBzkuWfTAyp/x+/WoMOC+qOqjYE6P2XF6WmXJqPQAhxEtZHaaYiZIE9OjQF9INJTPGh2WytqAkIhsJJXIn0m5rCBPJGk7O0wzTZ0iTYq6WQCdpP9l43o+vHd/Am7JlHxRwDgpjJOE=
Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6702.eurprd04.prod.outlook.com (2603:10a6:803:123::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.20; Fri, 5 Jun
 2020 13:33:37 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d%6]) with mapi id 15.20.3066.019; Fri, 5 Jun 2020
 13:33:37 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: mark.rutland@arm.com, broonie@kernel.org, robh+dt@kernel.org,
 catalin.marinas@arm.com, vkoul@kernel.org, will.deacon@arm.com,
 shawnguo@kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 martin.fuzzey@flowbird.group, u.kleine-koenig@pengutronix.de,
 dan.j.williams@intel.com, matthias.schiffer@ew.tq-group.com
Subject: [PATCH v9 12/14] dma: imx-sdma: add i.mx6ul compatible name
Date: Sat,  6 Jun 2020 05:32:33 +0800
Message-Id: <1591392755-19136-13-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591392755-19136-1-git-send-email-yibin.gong@nxp.com>
References: <1591392755-19136-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR02CA0048.apcprd02.prod.outlook.com
 (2603:1096:3:18::36) To VE1PR04MB6638.eurprd04.prod.outlook.com
 (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR02CA0048.apcprd02.prod.outlook.com (2603:1096:3:18::36) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3066.20 via Frontend Transport; Fri, 5 Jun 2020 13:33:31 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 2d976aaa-fc0a-4e32-4b29-08d809550ce7
X-MS-TrafficTypeDiagnostic: VE1PR04MB6702:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB67026C02F4CA39770B95014189860@VE1PR04MB6702.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:632;
X-Forefront-PRVS: 0425A67DEF
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WYupjjCT/Gvj0QzY2soJ+taTFRGuSxe2NPhvqG39YQlWtBYm2nVqNq8UQQIsPVUgGenBieAJDeCEpCvbxkmKIJfXBgnRq9wRGHpMEa+1XpG/ScayBKv5T3M2XgEX6qmP02d2/08tG6vZWpQUDp8Y/OcsxSo00wALfoZJ6ovzPDPfFxmnQEDQI6iasdOxcBkpkFzgxzERc8ZAaxxrhXCJXKaDx8iK2vn+yv0Tta/uO9qdhsfQqX1AoieHGeFzeYqRs1w0GMjeWSTrr+8e4VE75OKjm8aOfQHOH5q67D7M6W2tk8OdX04AW7wktTmQxfvzO25hND8SsPsGKoeeaJjDsuYlHOMxBV4erdrGlX46N8E=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(346002)(376002)(396003)(136003)(366004)(6486002)(52116002)(2906002)(316002)(4326008)(6506007)(5660300002)(26005)(66946007)(2616005)(956004)(478600001)(66556008)(186003)(8676002)(16526019)(7416002)(6512007)(36756003)(8936002)(4744005)(86362001)(66476007)(921003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: ZesHDUctftUhK5BDxTcHVAZ6wRdB6MiwkkanWON1BDXqDoj9/vOjsgz/g0LjajtAIkmQgyS8hQOQ7b3vpcVcpQOfB0CiHCa8OCBdsMM5iCPnG6qJhAeipHl8W0VYtxLLxKdx3dP53J73mYWalGsNWdVRjzTshtV/SlgM40SfqHk36tzwDGGCDGh56gjloiOjWgkRuVjlYlzzn1qLvggLJypJwJ4FOPh7Agm1ak1gwKBu+Dl5etETbm19zh27IZletF/vx+C73FZDYpgOCX3g+T9uSdM87SU2B6j+KBW1+mNb7V/SxRKrDeLHZkH4gGtVkEYvsjZUwMGr5SQP2Dul/+dQ+h5MocX0EJn87ewx4YRmE31p4rcVeCREVAB3GA7tosxglWqLC94tGZKZQ4qg8BbXTyc40PKYwbiLFuwQZsLNdze+mTPFBD48didUYZv184/+Igr3uq48EYs4Zsqr31p4GB2bv9458FLWIKX2yjo=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d976aaa-fc0a-4e32-4b29-08d809550ce7
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2020 13:33:37.0087 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LAz48s4sQJD9QfNU1D8Xcb2j5rr0+e8tWBuTrh8gIf52Tw/v2tJbAJTO0UuCecQ63zFy/MInmEXZV9dvhyNovw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6702
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_063415_744087_705A2156 
X-CRM114-Status: UNSURE (   7.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.63 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.22.63 listed in list.dnswl.org]
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
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
