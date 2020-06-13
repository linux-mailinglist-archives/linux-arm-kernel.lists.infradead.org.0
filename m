Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A841F84C0
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 20:46:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4U+QkmXq9iOyg5PpCA4l/mHoaL/tActhVSYpHiU2peo=; b=iNuLAMQrtvL5xl
	3jtWwCTP7aI1qJoZ+0i2WzdwI8DJb+3pn0lAOtDauujDH9jAfeveoEJHDWWeNGvpsXpKSVrxdgR1/
	NB6hfgVKAMrMyyCvSNN6cqagVb/h6t0U5C3mjxGtwvaOwlk+/8LA8O64GsBBbzQbcXxTgf3LNUofN
	/AOdjcQV5wyU30afLnj/fmIotJSGwRTL74OaNleblhgG4m0jmZp9jIhM+2qmE2/H83lenurs2bstE
	Mm+u50c4DzwscoI8BVl4nJJgOUVaPgM7a34YAVSKwks8EJJ1P/eKLrHKmhy6HEEJFxRNe7wqPEGlZ
	6+70CW1pHJ1k/mRhiF2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkBAQ-0006IZ-6X; Sat, 13 Jun 2020 18:46:10 +0000
Received: from mail-oln040092004047.outbound.protection.outlook.com
 ([40.92.4.47] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkB9W-0005Jp-Tb
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 18:45:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GiCRU9zKcjrUrFyp4V4t5PQMV9curJjpB1DmSOtn/7GoBikTYAylHIbItjHqt9nGZ4GiuNSRM84c7hF4sNh7+MdLp5e698IgMr0VDaSl3vZOEq21iTzUvonncdEUQJ7v7pghLZH3vaUKyx/ggS0tGqgpsZCBfvMg8S9pLIWwGnp7CAtaoPsSBhKi1dZarcZ231UGqqWSpI1msaIuiKLy+N5bFflN5Lvr2HkJ0INHb0TNuslNF9YeKlb1SBvR+cLf+rXVdnS7dyfLNB3ZmU1j4RWkOLk9DmC7y8COAIItpZGVBZTELveWEUYYlf8wjKYjzes0A03+sJqiqZPt9sdcHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dvjGMlP0p4ydQzKylxk3TSXScYB3wHDWTcJTtH6GffU=;
 b=RECe3uodgeTQiYXq0nFY3fdemKQ+zNgNyUL8NDjt+WnAoGFYDeMFddgI/AWgHVDWaJgd3mBCGeLAyxhliz5MNpg/bdAaFmI8tuE8ibMRV9ZWXM+9g2+Eu4X5Lhn3A++t7qqLE+4BvZ+ycM24+q/7XlBJUiyCt++9jiH63S6OettatwTZwxabL/IoXp/ehlEn0t1m2/hIodj1vdf+10o5ZcnLHeWYH3WK4CsE2s62DcKh0ti97xZrZ2vXHOXAamgQ+ieC8oEkFpdW3LkA16zaK7LxPLBI477JoFRspFfCyKJLYFj7kNIbrqfVbUk7FFnUXCE2iwva4fGE/LThXb0jDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BL2NAM02FT048.eop-nam02.prod.protection.outlook.com
 (10.152.76.53) by BL2NAM02HT181.eop-nam02.prod.protection.outlook.com
 (10.152.77.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18; Sat, 13 Jun
 2020 18:45:09 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:7e46::4a) by BL2NAM02FT048.mail.protection.outlook.com
 (2a01:111:e400:7e46::109) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18 via Frontend
 Transport; Sat, 13 Jun 2020 18:45:09 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:F1B6EFC42A91AA4AB3BF9AA783FEDF4AE4AB6C6168DA52F2C1DC481C15A5934F;
 UpperCasedChecksum:2490ADD929B36AFAEEFAD3D87D3A147F39496B506C089934DBD0E6E962EBC957;
 SizeAsReceived:7764; Count:49
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::b9c3:9bff:541d:f383]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::b9c3:9bff:541d:f383%9]) with mapi id 15.20.3088.026; Sat, 13 Jun 2020
 18:45:09 +0000
From: Jonathan Bakker <xc-racer2@live.ca>
To: kgene@kernel.org, krzk@kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/5] ARM: dts: s5pv210: Correct fuelgauge definition on Aries
Date: Sat, 13 Jun 2020 11:44:24 -0700
Message-ID: <BN6PR04MB0660BD4F8BFFFA5431D6BCC5A39E0@BN6PR04MB0660.namprd04.prod.outlook.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200613184427.23394-1-xc-racer2@live.ca>
References: <20200613184427.23394-1-xc-racer2@live.ca>
X-ClientProxiedBy: MWHPR07CA0022.namprd07.prod.outlook.com
 (2603:10b6:300:116::32) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <20200613184427.23394-3-xc-racer2@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jon-hp-6570b.telus (2001:569:fb68:9c00:8067:f823:1e15:7520) by
 MWHPR07CA0022.namprd07.prod.outlook.com (2603:10b6:300:116::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18 via Frontend
 Transport; Sat, 13 Jun 2020 18:45:08 +0000
X-Mailer: git-send-email 2.20.1
X-Microsoft-Original-Message-ID: <20200613184427.23394-3-xc-racer2@live.ca>
X-TMN: [qTdsrgnN2aNsunrb55IcN7Q9u5SDxbjyNcrIoJHaKcZv9lJtJhnBr6tT41fcc4jT]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 49
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 475b9800-023d-4968-2ac3-08d80fc9e5b8
X-MS-TrafficTypeDiagnostic: BL2NAM02HT181:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: F8heqOmyiFa4pPhKMVr2cTedQWrDNQJ3CT/aY16kdV7ZPFu7UMMs2s5TY2rmE1tjLP4kGPcvPpXIln7hJN1kx5aItjLWvNN6zks25B1kOgCu09JTGmUn3RFosthf7PNfjPIZ8i8tu7gffeQ8z4vG/VMivPkiTCV+Ltzi3YpDvq8zgUEM0D/LiIBTaALliB/yXvBQzVmoK7Egjplp5eqb0A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: IzJ2ByTPHPqrUqCgRu8ByG4X7zdhURA/s34RebJcAc+YqfOqkpmkehG65TBQxRZTlMqNt19dbhAOzbRiaB8JO4hGa2i6ATkjway9l2PULjKjXaZy6Lcg8SnedpPHMCL1yd/YKQ6ww0vQbRV8nUB7PMvySw7udrH9D7DpUQqmomur7sLxSabyA2JPs82CbKQVXMfiCEHxhCkcf4uD8IVA3g==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 475b9800-023d-4968-2ac3-08d80fc9e5b8
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2020 18:45:09.3058 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL2NAM02HT181
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_114514_960692_EF0A8039 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.4.47 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [xc-racer2[at]live.ca]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [xc-racer2[at]live.ca]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.4.47 listed in wl.mailspike.net]
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
Cc: Jonathan Bakker <xc-racer2@live.ca>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Correct the fuelgauge definition because only the fuelgauge on
fascinate4g has interrupt support (and even then it was wrong).

Also, assign the GPIO pinctrl so the interrupt is properly configured

Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
---
 arch/arm/boot/dts/s5pv210-aries.dtsi      |  4 +---
 arch/arm/boot/dts/s5pv210-fascinate4g.dts | 17 +++++++++++++++++
 2 files changed, 18 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/s5pv210-aries.dtsi b/arch/arm/boot/dts/s5pv210-aries.dtsi
index cf858029292e..d3aeafc0f650 100644
--- a/arch/arm/boot/dts/s5pv210-aries.dtsi
+++ b/arch/arm/boot/dts/s5pv210-aries.dtsi
@@ -425,10 +425,8 @@
 		pinctrl-names = "default";
 		pinctrl-0 = <&fg_i2c_pins>;
 
-		fuelgauge@36 {
+		fg: fuelgauge@36 {
 			compatible = "maxim,max17040";
-			interrupt-parent = <&vic0>;
-			interrupts = <7>;
 			reg = <0x36>;
 		};
 	};
diff --git a/arch/arm/boot/dts/s5pv210-fascinate4g.dts b/arch/arm/boot/dts/s5pv210-fascinate4g.dts
index 5e1b81823a8d..65eed01cfced 100644
--- a/arch/arm/boot/dts/s5pv210-fascinate4g.dts
+++ b/arch/arm/boot/dts/s5pv210-fascinate4g.dts
@@ -37,10 +37,27 @@
 	};
 };
 
+&fg {
+	compatible = "maxim,max77836-battery";
+
+	interrupt-parent = <&gph3>;
+	interrupts = <3 IRQ_TYPE_EDGE_FALLING>;
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&fg_irq>;
+};
+
 &pinctrl0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&sleep_cfg>;
 
+	fg_irq: fg-irq {
+		samsung,pins = "gph3-3";
+		samsung,pin-function = <EXYNOS_PIN_FUNC_F>;
+		samsung,pin-pud = <S3C64XX_PIN_PULL_NONE>;
+		samsung,pin-drv = <EXYNOS4_PIN_DRV_LV1>;
+	};
+
 	/* Based on vendor kernel v2.6.35.7 */
 	sleep_cfg: sleep-cfg {
 		PIN_SLP(gpa0-0, PREV, NONE);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
