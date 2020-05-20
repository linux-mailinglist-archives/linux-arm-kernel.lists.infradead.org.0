Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D9171DA7C2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 04:14:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gh6mTb8N4NtBb6XlcLWkQ2ahD8hfWofwkqOIaSl36qU=; b=Xz6EIo0u7kKcM2
	NRu7c27ZsgfLMYUIGkXxtUr1n1XhnzVCipu64csQkjo3SeXqYMoIRZFdgKYvmN+/ttp7u5FikKuEu
	sq3ufm5a3/UEKVh36WaYX2e4paU0GhYk5HQp/dNIKpOSw54anvNOxo9+H8gDHjHH44wTCeWnq35Ej
	9lBg7BsllDBN8Uxw2XpLL4dgLPAGpw95OTizr+5sy08B+5k6xykDLi9xkXLVHZKLSxShuRaEj/0kv
	B+772aTdXBBmiszLV0CX3bshWYtjsBWv6qNLBFflyjgLhS9GSSU1z+EoaQccuvidys+6AvkXoKEBl
	y3TAAEYmhAe5hdiT9kNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbEF6-0008VY-9E; Wed, 20 May 2020 02:14:00 +0000
Received: from mail-eopbgr60083.outbound.protection.outlook.com ([40.107.6.83]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbEEA-0007od-6J
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 02:13:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QuqcpeQ+o0In6NL0OfkB9tufYSWwvo+kXjLl4ysUGF04rDvKyWEWg/OjuvM8Et7KYxnek030FeJ/vI5qSO17UVB2Xg39vtcKjRNQNlYzX773eHn+d3uinivdnCspx0r7daXJszbheCevwoSLsYyUJaaOJyUcCZXN9PwAeYojwd/m1eD5LmJjmBBZZFrZo90T8Vov2jYT4FkQMli23PlNd2de7A2fC18cAQaxzgcG9JtMKN7QgCB1keL7SAEBOIKgP7CgvObikz+90VeKhaFgOeci4UPiXKu85t6lEwwKXIkKcg6NFx4ra5DPcr1Qgs5SpumP/O0PXIC1goZM9Z6ZaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=buRyuD6KO9ZzuIIjHY1HykRJwJ0YAfyvIhzZo5bxW2k=;
 b=nxze8lYNXPfzCOpyFwjeKI/DT+cLD4nExxa3NVH3Mns3eGVX6tIa6QPzY6+awjUfNE/5Rkmxsdmm5zdHsF5ITI1P/y7bBOS5AVp89rfXUEemIVZ+Zqv/6MWbfvQ5FWaOS1eMSQkUpd6eQfZhxZTSGYI0SHSVURMuSokWfQS/+o5VeMKd/+D7DE8DPax92KZzR46mF+6x4sR31RloAmiYrIm8ZJV+dR1ZZnBLQL+bBEjIvUf3JeyIBHMtkw/PDd5Ua+yOvZYi7Sa1XDAALShWg2SFlLV10y+l9Jlbl5W02Ff5APiJTVdAlq0ovN2MODqZyur5O4rB7Ace20khYzv3Lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=buRyuD6KO9ZzuIIjHY1HykRJwJ0YAfyvIhzZo5bxW2k=;
 b=eIgvYMvLfpgBW8gXOYT0mMktHaPRUEWekGe1+tA0Tt7xHr4MdgmGpzKR7XUquDGHt51AHSD4pdGJefpcX/ZGIeLMNxMwbtsbFBoLpGq/OiGRmWLaWfgO0qmqKJo5M8M5Ym8ivq0Xex9baupuQeS6Q3f89q2iZUeEIeeHOy5OM48=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2741.eurprd04.prod.outlook.com (2603:10a6:4:98::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.26; Wed, 20 May
 2020 02:12:59 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.3021.020; Wed, 20 May 2020
 02:12:59 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, fabio.estevam@nxp.com, kernel@pengutronix.de,
 aisheng.dong@nxp.com
Subject: [PATCH 3/4] arm64: dts: imx8mm: sort the aliases
Date: Wed, 20 May 2020 10:02:45 +0800
Message-Id: <1589940166-736-4-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589940166-736-1-git-send-email-peng.fan@nxp.com>
References: <1589940166-736-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR01CA0099.apcprd01.prod.exchangelabs.com
 (2603:1096:3:15::25) To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR01CA0099.apcprd01.prod.exchangelabs.com (2603:1096:3:15::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.3021.23 via Frontend
 Transport; Wed, 20 May 2020 02:12:53 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 71ba4407-49aa-4740-035c-08d7fc6350f2
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2741:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB274162572738E4D5F85E59C288B60@DB6PR0402MB2741.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:626;
X-Forefront-PRVS: 04097B7F7F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: m3bnxh8RGW3sg/N+SkdYvzPvlwOdxDyRlTzI5nnb2FkEjEsisQpap39nvMvVV3/V7nRiv/JMmRPG3YR0PA9qgBlGpcI/weNqtLxC+4YOt6wxVtGiKKXISw3KcueQPopMTYaaHEUgZOXEE1erNcnxAB+7sfEuglhFGcl8ykhC802y2065HTly++ZfVSFmuSIW63ERqy6cyH+TUmONZ3qaDnZ8OWh/ry9Kt8kow7P3xe+qZBVjZFbBPKlneQUU5CHGVCtV2ncVCPrSadF8POkREMieoBXyhuRqJOIXxTgS3YnoSUfKIsdFjOGH0UZeYYCacd6DZwzr18cniDYVJV0vqirM3mXjyICJmm/PfFPc85ZSXdhpSbdHcLN6n4JW63ketKZyrDeFj6t4haVrhBO3kR3RauRcloX+fI4fFG+DJI6F1H0FY9KANm3ftSuipsYtofEw6iTrh4GWLGHq5WwH6q4RvjnFt0Shj7FGDy65L7tzZIqoyNh9HG7YZFtGqmAHXqy3y5Q/3Kh2QXbd2ft4mg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(376002)(346002)(39860400002)(136003)(396003)(36756003)(8676002)(6512007)(86362001)(6666004)(52116002)(9686003)(66946007)(66556008)(66476007)(8936002)(478600001)(316002)(5660300002)(4744005)(26005)(6486002)(69590400007)(6506007)(4326008)(2616005)(956004)(2906002)(186003)(16526019)(32563001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: kzUN9b+dw4Uq8R/sn4vMU523EhzTAKllvBxVpl7bjq+YJcgq15d/7Xf9tipOSH8qz4NIDbZp/hGGyBhKe7yG1M4VA/Zh+LnbQoBBInsYbVjMnnMU/ImdqVwcjmXzgT7YnCSc+A1SF+m38yLweRWHGCTwOvgq+4p/elo/zfb05sn3zsd7PxXfXL0KMJZrGG462HudM6C9hqFGkJObD2f7CmOv3tFAaaVeIKJVwxjKKQAjkkhk0mm8pGgc2D3uIzUma2aQzMoHMintX+S8wbUYumzEeRoAhVIT4E20MYeIXhLO1c01Lv9+Kk4lCo6FSIF2Z1gllXLcdgE0HTqLnsoSSJhJu8uk1heekpWG7Ktp2ozEseY5LxV4UkKupz/W5GRWsz9cHBKgm9UJ6C8ddv/DhDFIuIu5grWXTut4tkQxF+cP+fmHPWegcPjepmi52EG1ItjCbI48ta6GvTuG90Te2Na1XcatCHediwpWNdW//Iw5F6DxWGDUY6OlFjdXwmeX
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71ba4407-49aa-4740-035c-08d7fc6350f2
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2020 02:12:58.9632 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ppCMKqJjvtu2oBuOidru0nxbMOsUWvoSWtydSXScxlPEEYRMf1Gclq77cSX3vQtpBzqIhwH+SFFdQIZ1zUxWZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2741
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_191302_279526_1D5A9453 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.6.83 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.83 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, leonard.crestez@nxp.com,
 daniel.baluta@nxp.com, linux-arm-kernel@lists.infradead.org,
 l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Sort the aliases alphabetically.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index c63685ae80ee..f3bbefe3e59f 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -18,10 +18,18 @@
 
 	aliases {
 		ethernet0 = &fec1;
+		gpio0 = &gpio1;
+		gpio1 = &gpio2;
+		gpio2 = &gpio3;
+		gpio3 = &gpio4;
+		gpio4 = &gpio5;
 		i2c0 = &i2c1;
 		i2c1 = &i2c2;
 		i2c2 = &i2c3;
 		i2c3 = &i2c4;
+		mmc0 = &usdhc1;
+		mmc1 = &usdhc2;
+		mmc2 = &usdhc3;
 		serial0 = &uart1;
 		serial1 = &uart2;
 		serial2 = &uart3;
@@ -29,14 +37,6 @@
 		spi0 = &ecspi1;
 		spi1 = &ecspi2;
 		spi2 = &ecspi3;
-		mmc0 = &usdhc1;
-		mmc1 = &usdhc2;
-		mmc2 = &usdhc3;
-		gpio0 = &gpio1;
-		gpio1 = &gpio2;
-		gpio2 = &gpio3;
-		gpio3 = &gpio4;
-		gpio4 = &gpio5;
 	};
 
 	cpus {
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
