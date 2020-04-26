Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F216F1B930A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 20:40:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nur7cFY2rA5czk+00r5MmdSC5OV/fPKeVaIUx3HbRl8=; b=OCtDbkAH1VslT2
	ssZkbYPQhrL62qUxJghX5EJBc2PmMwOxdT4OfdVUDQomKDL65gnZs9GoNA5SytiI9V/GnB7x0Qdl8
	Ic+RBI+jIuA0REWWFvh81n+lXZFWxM7sRFPpiu9l2CHcCHHngLSf1TlSueBC5O+oJZ5eSMlkZQhvg
	lpOddS+RnoELcSBwWcojakKtGGzORt3dTtdUs+Ae6rfoWaTkDFhDummqRDZRMsJKfNjZlw3jXXhad
	oORo/ERQ+HqIPNZ0XHmh0v2TsGjaDqkRccY39EqjLGrpI2DHgeBZt8wf8pP6SoIDM6RijdHoBQP3n
	IvddjYEI9FgTVv5SbuKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSmCV-0000MO-QJ; Sun, 26 Apr 2020 18:40:23 +0000
Received: from mail-bn8nam11olkn2105.outbound.protection.outlook.com
 ([40.92.20.105] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSm90-00067T-QJ
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 18:36:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TERBe3D71jc3bunqf3b3j33MSbHJbPgAeKc25UIAFUdn341xHAR1EtB7/yriksjiazr8xiSs2bJXp2husdD9g6XfDigtJ4k9QOOIkndY5xAj7lW367JAsKKdfNOsk+qMtH72qmECwd+XUh10siiQH5yiqOjhpxRNEvBC2t8f+X0/aJFSFlcAEUOUlxBog4Pr77fgPKCJb+WkQYerN7PaXOt1zGqhpFDqeS2n2VXhoq6x/jVtWF99Qr5offsor9pvh0mJSXAGu+XgA/jVWvxY1RtnTmXyUxay56POS4fxoPi2aMDqpMxYdFhIP1A5Alpl7+aZ7eBnJPkJPlGdrFh81w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+m3dwh5f0Yt0be+I7iJmpiKwHWmgtipkAYvpkcSrQkc=;
 b=T+a2sdR+CUT47Q+6aQQJ5DrXT1iCmZbC7XAu3thpB4Fa+z5GAUptP9yFDxG0DZBf7wQzUnFGO4Hh//xY+7KVFDZqKO7mclWCnfk5LAN1FAaKytgLv1GxpMIi6zN4bqUZymRTVCV9BPZpmsMrQBYmJLpE5qKG+TSemCd2azVZBGC7X9CE8kSCEekFwnHxBm3J+RlkZ93Qi9FrnIzjSmCDk8Ip3xvSGpGf9R+9PG8grUXm53hMSv2rhaArbEb05kSv4ZVnEJ5OT1oSNaDxHila5iVBmE+X/v1z4QKLlOFDJWkOeiXvH6yvOPNnjmL+sAUVngOGbweBjnco4ZCEw0LJ2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from CO1NAM11FT036.eop-nam11.prod.protection.outlook.com
 (2a01:111:e400:3861::49) by
 CO1NAM11HT014.eop-nam11.prod.protection.outlook.com (2a01:111:e400:3861::96)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15; Sun, 26 Apr
 2020 18:36:44 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:3861::41) by CO1NAM11FT036.mail.protection.outlook.com
 (2a01:111:e400:3861::124) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15 via Frontend
 Transport; Sun, 26 Apr 2020 18:36:44 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:5CD6D4D16207B7894C369E80445E2697B7F28617A653BDF908B5ED5632BFA8A3;
 UpperCasedChecksum:F471A38B520661A4374721F22382B181E1014C3D44CF344B8D6E92B52526EFD3;
 SizeAsReceived:7791; Count:50
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2937.020; Sun, 26 Apr 2020
 18:36:44 +0000
From: Jonathan Bakker <xc-racer2@live.ca>
To: kgene@kernel.org, krzk@kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 10/13] arm: dts: s5pv210: aries: Enable ADC node
Date: Sun, 26 Apr 2020 11:36:01 -0700
Message-ID: <BN6PR04MB0660998092302F2A78065E79A3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200426183604.28494-1-xc-racer2@live.ca>
References: <20200426183604.28494-1-xc-racer2@live.ca>
X-ClientProxiedBy: CO2PR05CA0096.namprd05.prod.outlook.com
 (2603:10b6:104:1::22) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <20200426183604.28494-11-xc-racer2@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jon-hp-6570b.telus (2001:569:fb67:7300:9f89:4b96:de0b:cd14) by
 CO2PR05CA0096.namprd05.prod.outlook.com (2603:10b6:104:1::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.7 via Frontend Transport; Sun, 26 Apr 2020 18:36:42 +0000
X-Mailer: git-send-email 2.20.1
X-Microsoft-Original-Message-ID: <20200426183604.28494-11-xc-racer2@live.ca>
X-TMN: [bzUaWg3AxuzX8vfLE5Jefy9zOyf/LZAabWScnSgff1ezVYkMct+Sr8TrEUatlNzc]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 50
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 0fc24e42-3d71-46ad-e873-08d7ea10c4aa
X-MS-TrafficTypeDiagnostic: CO1NAM11HT014:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xU7Uhor1IAjgG23ZuXIMZJwA+woOGrW4gXC8GgnA42EMdIhCq7XlzRmzaaDzRH6SNVp4DQHrg10zijsRd/8EKo+C/OziRG69rvH9XS0BoAPOFAvh8A57otJBVxA5+PI1PmcF+Nr0FgtU3k9ZnsrDZsRVPj+qKTfV77OGP6WzBmTAZFtcdz14CUESXqU05LcNLiRMVFtamMiRY3LmJTZ9IA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: PlYiwopuTVHgjP0FubkJflm7Vq7EDJjg7ooxDHAyMXU9onPUVxlU78acQhmZsCwISHSrWpUfBSfWovQHjqWmtfxNcCAS28+ps2QNjhg9MfXO7093QPZfENalXBzFwE2amZmFQu2Cf9ad/f0rXa2Gn8znLsgefb+TaecHAVYzsAf/nWvZLeCHean7tNYR3FIjdkPBoa58CyKD1KTYNGFZtg==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0fc24e42-3d71-46ad-e873-08d7ea10c4aa
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2020 18:36:44.2792 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1NAM11HT014
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_113646_866518_D101D7B0 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.20.105 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [xc-racer2[at]live.ca]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [xc-racer2[at]live.ca]
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
 arch/arm/boot/dts/s5pv210-aries.dtsi | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/s5pv210-aries.dtsi b/arch/arm/boot/dts/s5pv210-aries.dtsi
index f30bdcb9c083..a103ddb0d720 100644
--- a/arch/arm/boot/dts/s5pv210-aries.dtsi
+++ b/arch/arm/boot/dts/s5pv210-aries.dtsi
@@ -193,11 +193,6 @@
 					regulator-name = "VADC_3.3V";
 					regulator-min-microvolt = <3300000>;
 					regulator-max-microvolt = <3300000>;
-					regulator-always-on;
-
-					regulator-state-mem {
-						regulator-off-in-suspend;
-					};
 				};
 
 				ldo5_reg: LDO5 {
@@ -530,6 +525,12 @@
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
