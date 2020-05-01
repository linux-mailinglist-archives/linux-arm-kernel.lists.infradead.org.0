Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4A81C21B1
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 01:55:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gi4+z9O97NeBbuCW8YKj5lY1vWVwubBT7HjdH/FC+wk=; b=SQU7BxMlE1gFc2
	X6Kro1BvXvM2KDnFsZoppoOzg4LpVoUdnIGnGjx+PiJ0TZsonkV4azxrEVF5asGEHfaBCdlY/jeLP
	qUgHPrcAJXXIFa10eAQ5FGjnudxa2g+vP1TQv9jNjnsziD7T19WOBvehJxlj9xON8/JBGImzW3PC4
	0raADMloJfkNWTPWe+jwFUiZdOmPFQJGkVKl+9sZdO5sGZo5E1myTKBeW/+d8jPJ/Xeg++gi+7Cw7
	/OsRcFBZp7XXFZ1bDSu40B9SN0C6Qpx30I3AThj/CnRGcZb8KFhDiYepab6+T6mgb7Ub4MM3H8Se4
	1mGDqfQ0Mrw4yCZlpXGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUfUx-0002EU-NR; Fri, 01 May 2020 23:55:15 +0000
Received: from mail-dm6nam12olkn2100.outbound.protection.outlook.com
 ([40.92.22.100] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUfRQ-0007Yi-Q0
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 23:51:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U6FN3plVO23Pc4Nzj+miOWWZfWSeMQX6kc9/oBpngCkuiu+DkJS5abYHbK1unB8ILLdGAzZKVpUZejHdPCtwgHOY4ab2lVagsJK54/U/Xbd14K3dbpA7kGWxQa/Tv1GbfJ2Kfs/pCWJCfhQSzyiA62/UHF4tO6w5/Kmu9IuMLAYHRSHsPeWzblmIbiX5DrIlDpjCn53qOATdMNP/IKz8dShhkG7k+kKrXLw3rPZRfv6Q+pY/dHFotTQc3IYxX06maQpVxO/Pe6FvHP/xo+dfpdOz893d7KbzG0hiCTSOwuxwWNim1LfxDrmjuPuEEGyT5eWM+tjrbGH6D8/32JJrdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aLYemwaEBXuCw81LNrqkz3hZdJmEbWyisRQ0BSVUp3g=;
 b=YtwPDMbUA+UAdFJfaXaI65gB1d+c4VJS/pdjRFYUN4nXP5Kfe58r5PVkT4cumUtj3o3U5GphOr/W0EguTcLrZqPDEqLoyur/kPNqKozIfM6IbP/Ffnnd9ogMy1ch5YV6c0zfoyHGEEITVxMx8TFFdA+p2bidi/BUefBeK+ofIzg1t+4/SkUAZosUlWKZs2QcDplrgTGrSJ5mW/mIhCmCk8TIGEcvBgHAfgIYQinJkeCb6UIiahbzbu6DPLldfeNAJKn6OjnMAgc0zKyRRWySz6eYFwgiiA4BRx4jKYrhw33skDQVLxll/ASHo5I+Zr80jkqi5Aj9uW2/6PI0nrAfgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from DM6NAM12FT056.eop-nam12.prod.protection.outlook.com
 (2a01:111:e400:fc64::4b) by
 DM6NAM12HT076.eop-nam12.prod.protection.outlook.com (2a01:111:e400:fc64::378)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.12; Fri, 1 May
 2020 23:51:35 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:fc64::46) by DM6NAM12FT056.mail.protection.outlook.com
 (2a01:111:e400:fc64::460) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.12 via Frontend
 Transport; Fri, 1 May 2020 23:51:35 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:034CAD3B5D64B008501C37F0046CAD80F9E1ECFE110D49C5935567E379B7AC56;
 UpperCasedChecksum:8B0120337EDC16162D9427B209D6F0EC6CEE581929211931145DBEEE85DE5295;
 SizeAsReceived:7853; Count:50
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2958.027; Fri, 1 May 2020
 23:51:35 +0000
From: Jonathan Bakker <xc-racer2@live.ca>
To: kgene@kernel.org, krzk@kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 14/18] ARM: dts: s5pv210: Enable ADC on aries boards
Date: Fri,  1 May 2020 16:50:15 -0700
Message-ID: <BN6PR04MB0660E7785BAE8D0F44F6CE57A3AB0@BN6PR04MB0660.namprd04.prod.outlook.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200501235019.24022-1-xc-racer2@live.ca>
References: <20200426183604.28494-1-xc-racer2@live.ca>
 <20200501235019.24022-1-xc-racer2@live.ca>
X-ClientProxiedBy: MWHPR17CA0058.namprd17.prod.outlook.com
 (2603:10b6:300:93::20) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <20200501235019.24022-15-xc-racer2@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jon-hp-6570b.telus (2001:569:fb68:9c00:8067:f823:1e15:7520) by
 MWHPR17CA0058.namprd17.prod.outlook.com (2603:10b6:300:93::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.20 via Frontend Transport; Fri, 1 May 2020 23:51:33 +0000
X-Mailer: git-send-email 2.20.1
X-Microsoft-Original-Message-ID: <20200501235019.24022-15-xc-racer2@live.ca>
X-TMN: [HhvsrbqmRVjdm4jRYAFXKAiJJQ8B3wEOJUZcWEhqnbr8Ld75TURUw9/GC/GirMfT]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 50
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 7a9d2150-12d8-4be5-c2e3-08d7ee2a9487
X-MS-TrafficTypeDiagnostic: DM6NAM12HT076:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9tvEpkKrP/D80qSAbz7FkbNpHGT04bYgAaUY+zN2r5y7QVqHA8AW2ZBCwyJup/v5oX5EhRPBsFo7VgY4ZJhySn7trcYNo0jX460u2QwqIYZFFD+9ff8RhA9TptQrqB7j1MWiDU0UWng90qC2P/x1eiQODKjPZWAEtXU/CUmgNuQhA/mH5TxmFS/oz6z2beCcPjovkMTwfOaxRqYfY1i5mQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: pm4V3/V4Ml0LrF8mo5GZH5Rfcq5zYRnUBhLSWF9JqelyqqUyXfanKKtDwH4NCee32UiMxSw1Mf90vz2ii/nYlHLc1CSOkxRlS2zH2T0tftWngqKxINijn68SHiV4FGDPQiG8f+jpBKOf0Okdm4aWrsgXGFr55a0xnVt9r0by1jOK247qHNPB+W9Ufjp7hfCql7zrRVU/xinIkuqiiHMWew==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a9d2150-12d8-4be5-c2e3-08d7ee2a9487
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2020 23:51:34.9774 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM12HT076
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_165136_902481_9332F035 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.22.100 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.22.100 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [xc-racer2[at]live.ca]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [xc-racer2[at]live.ca]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On aries boards, the ADC is used for things such as jack detection
and battery temperature monitoring.  It is connected to ldo4 of max8998,
so only enable that regulator when we are actually using the ADC.

Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>

---
Changes from v1
- Replace removed regulator-off-in-suspend
---
 arch/arm/boot/dts/s5pv210-aries.dtsi | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/s5pv210-aries.dtsi b/arch/arm/boot/dts/s5pv210-aries.dtsi
index 945259aa5d55..9f4694d71203 100644
--- a/arch/arm/boot/dts/s5pv210-aries.dtsi
+++ b/arch/arm/boot/dts/s5pv210-aries.dtsi
@@ -195,7 +195,6 @@
 					regulator-name = "VADC_3.3V";
 					regulator-min-microvolt = <3300000>;
 					regulator-max-microvolt = <3300000>;
-					regulator-always-on;
 
 					regulator-state-mem {
 						regulator-off-in-suspend;
@@ -539,6 +538,12 @@
 	};
 };
 
+&adc {
+	vdd-supply = <&ldo4_reg>;
+
+	status = "okay";
+};
+
 &fimd {
 	pinctrl-names = "default";
 	pinctrl-0 = <&lcd_clk &lcd_data24>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
