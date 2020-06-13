Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 700611F84C1
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 20:46:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oKCZf6tA3KQpHyy92Qzu9cmDEzRxa9rFr+vnBKzoCdA=; b=ZwJL7L9LBplfdz
	atcoCYr6wGE2u/Vvkv9UF/k650qlV217Lesj+yK519cv1o/+2A4ryF49EjZjlg4DJrV8U55I7cOPC
	NdQkMerqo81LgQT/7OVRHtB1PmjaAlIcTvSmhS0a+OpqUWHw5bhAJ5NCi6r6ROHf+Dv/Jh+v8EjYc
	q/cobTka80m0LkAyVt+VS2XARhXy3FyUxtV/u5fBwK/KZi+1M9K5m5alXTTj1r9ZT/mMi5f9AMsDE
	XDFTqDroNJlaaJA25EfoXYuMGQFgsXlgbXEwQpBqaG+3S8W5+GKqa9tLMf+J3ERFC6EGmrr1w+cI+
	BTAjBhca2GeTjeEj56kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkBAq-0006bB-Uk; Sat, 13 Jun 2020 18:46:37 +0000
Received: from mail-oln040092005088.outbound.protection.outlook.com
 ([40.92.5.88] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkB9X-0005d9-Ts
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 18:45:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cWcUucdivqT09L29kCdKxE2kO8qy6BoP4/CYPG3ArOlLVhq1cUSG95gl7Pf+ApzmbN3D0Ux619fo+sBITLHRld0wPROu7uFC7pjvDNoC1I0uJ1mq/KW8YO41J/19cV5Jw5smUgL8/PDvAccKw1QhHzIEs4eJVisdawmMt/FoagnKr/nkOhXNEkkk97nDLzvCvVH9CtpUfHAdiN10OS2lgLK6gWmQTlbnMeHvpqMq1uo8HhchVNvzbRCSORARfufxFlXye7vrw9vbqt/bWbkvNTZvB4FcnaUc69SdlNCy0w67Y8JPMO9AIJqc7Pf7rXEt+4hOvXoiRcI1ZoEa7tfRUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wFf4K4khEPNJM8o6627pEv+rF9F0AxwtAAgwsqdy1Bk=;
 b=D53+w+nOXBuxv5T7TwvUcxQeQ3oayeb6vxzpKHj3IxVn2WUxsNKsmgO4zF29LO+OXFE70uqHBgq7et0C7sFRa50cJ4dIRpuUHnerlReeerj/lyWJEp1zYm2kngd/4PLyc1lzH8R4RsUV8tJnY9YmV8W98ujbXe4hcrU8P0HSSKSW+QIjbBIjF/S3vZ/KBFkiLc7Az1e9mF6rOeeaSpIkjmh/sjn/Et9XatHeopJL8dgZqoVLk8tviyeCWplF7+/tvjwghGYoDAg3Q1aua8tG5UYA+Y1e0ZdRf2x4yq8PHtoYwKHGdpgco6f/tj5u3aFmRHQA4Rj+nV1xRi1W17UY8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BL2NAM02FT048.eop-nam02.prod.protection.outlook.com
 (10.152.76.58) by BL2NAM02HT138.eop-nam02.prod.protection.outlook.com
 (10.152.77.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18; Sat, 13 Jun
 2020 18:45:12 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:7e46::4a) by BL2NAM02FT048.mail.protection.outlook.com
 (2a01:111:e400:7e46::109) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18 via Frontend
 Transport; Sat, 13 Jun 2020 18:45:12 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:006A9CC60C70A443D0FF6A1110AC46E1664D2D03D4ADD60286C8664298500BA9;
 UpperCasedChecksum:EED57D66A21F7192AAA8A3FB268901923D9CDF95850009AC979DD238F52DDCD0;
 SizeAsReceived:7759; Count:49
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::b9c3:9bff:541d:f383]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::b9c3:9bff:541d:f383%9]) with mapi id 15.20.3088.026; Sat, 13 Jun 2020
 18:45:12 +0000
From: Jonathan Bakker <xc-racer2@live.ca>
To: kgene@kernel.org, krzk@kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 4/5] ARM: dts: s5pv210: Add BMA023 accelerometer support to
 Aries
Date: Sat, 13 Jun 2020 11:44:26 -0700
Message-ID: <BN6PR04MB0660CD092750943F3129FCD3A39E0@BN6PR04MB0660.namprd04.prod.outlook.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200613184427.23394-1-xc-racer2@live.ca>
References: <20200613184427.23394-1-xc-racer2@live.ca>
X-ClientProxiedBy: MWHPR07CA0022.namprd07.prod.outlook.com
 (2603:10b6:300:116::32) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <20200613184427.23394-5-xc-racer2@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jon-hp-6570b.telus (2001:569:fb68:9c00:8067:f823:1e15:7520) by
 MWHPR07CA0022.namprd07.prod.outlook.com (2603:10b6:300:116::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18 via Frontend
 Transport; Sat, 13 Jun 2020 18:45:10 +0000
X-Mailer: git-send-email 2.20.1
X-Microsoft-Original-Message-ID: <20200613184427.23394-5-xc-racer2@live.ca>
X-TMN: [4OzH7VKYy2RgfmVV1JfPNvQODrELG/AGPCSLf8ek5JpxaRhyh6bqUtdm8hwED2Lx]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 49
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 535f68b2-bccb-449f-0a04-08d80fc9e767
X-MS-TrafficTypeDiagnostic: BL2NAM02HT138:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WumNOr0o60wT6UP9eWB+UX5Enhw1ShhxECFoEFF34gli9Cxm/4A+esgW707VAppEe8meaPAXEwkwa6T0D8ciXUqPW+BxzDk7PARnfJYz2SsyYpFYTbbzNfs6umd8iX7UrDCi5fNGK47/23QbnsonmOruiFgtFtF14geeQFK8g+bK8MzBd4CfbAhWypVllSwA0tmUy5ICfVH68p8lOZ53Dg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: QxBeaHcfx0jtfdHdWu+o95iVsU+db0bfbZW6buV3ayYeBm8VBHok+IZqOpNG7YPB2xkGdS4xnUeGn6NgE8DW5lQEiKJQfjV9aRK2UhZI1MPgQMHVw8BCJ++1KhJ/qrTJBfqHZ6W2ufavV4LTReGf0yJeWR9l6JFB1vTG5YLniJz7zaVJs725Z5AjK3jNVeu0HdYIhPNDDycyzaKXmZakEw==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 535f68b2-bccb-449f-0a04-08d80fc9e767
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2020 18:45:12.2216 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL2NAM02HT138
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_114516_007100_9D4DF356 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.5.88 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.5.88 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [xc-racer2[at]live.ca]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [xc-racer2[at]live.ca]
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

Aries boards have a BMA023 accelerometer attached over i2c-gpio.

Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
---
 arch/arm/boot/dts/s5pv210-aries.dtsi | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/s5pv210-aries.dtsi b/arch/arm/boot/dts/s5pv210-aries.dtsi
index b27d7c2e6dca..92ec0e133b25 100644
--- a/arch/arm/boot/dts/s5pv210-aries.dtsi
+++ b/arch/arm/boot/dts/s5pv210-aries.dtsi
@@ -149,9 +149,13 @@
 		pinctrl-names = "default";
 		pinctrl-0 = <&accel_i2c_pins>;
 
-		status = "disabled";
+		accelerometer@38 {
+			compatible = "bosch,bma023";
+			reg = <0x38>;
 
-		/* bma023 accelerometer, no mainline binding */
+			vdd-supply = <&ldo9_reg>;
+			vddio-supply = <&ldo9_reg>;
+		};
 	};
 
 	i2c_pmic: i2c-gpio-2 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
