Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9C51B9304
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 20:38:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jj1Uxcre4EnbQ0qNB2OKyaG6RUIk7t5EEGDcZ0mfKZA=; b=eU14/TKWaChhZU
	PYeARUwOCaBobaN0p9UIxtqgA6GZwbtjhokV4gcnRmbmt2X1X3n8FoOmoPBGDKyfYkGFGjKKx1Y9c
	rulNgsA2wDLmiw5IuOTfpO63o+EeEowGwFkHm139VDvA+QBtuhTJ3GTTTzwNompqepZx0MJEz0y6V
	Axnc/q5sB8MEk6fecshhWP/FWaQNSGwVWh+a4SNuEmALt64mBFYQ+xgJwF5Am+sCfLM88aCDIaai9
	X2kRm5wfmIdT60aCVuD0SBXH+VVpajitel5rHWbl+4LUcIG1EIaEt2zOkipBq2fCwGLYxfNhQOWsE
	bvADCAr79Z/9kZT5J80Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSmAh-0007Dp-Sv; Sun, 26 Apr 2020 18:38:31 +0000
Received: from mail-co1nam11olkn2091.outbound.protection.outlook.com
 ([40.92.18.91] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSm8r-0005zX-RU
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 18:36:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GHlnwr502X2bwwvoavNpFoCuNpju2t9ejYfPe9+Whw3EAWeFFoSsHi+YVbgVY40p8K+OrU19/t4Pm8MjGibVmFkNZ21W4zKWtvG5eKC9VhagIOiaTsICnbW+T54oq0g4o6mINHdzvi0GgMWn97qrZgC0wMfN+wrQ8K2DxN34kRCeDQdwwjYLAmWiD8szyV3UpeTQu3az87LwEIbwsVzSi3yHKEG273zGoQZDxhLtiF2lkSkLwrOqSqz2+nRPBPd5Vq3oDfvGBImgr4Q1CKknXqrW34bQN69TDJbRocGWQ6WTksPO5aULlPSRXJb5Zjrj/mRcT+ciPzH5sylMZ7ssdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zN3YzdF/wnL3hIWhRkaPqBP6Y72JqMDzTT6ZdUZZ9Yg=;
 b=iAr2C2je11keFa190q7qXk1mDUfeYk4N7vni8n8JqnTMpCKx8nRMh+Cy3QJOBT0lT3apgSgKi0sFzGCOZcWHpjtQ+yya6kjdN4XLnAQqBpDQPaSP4Jytf5PHvDGTfjY3f0+XMeVLlx1j8QEbn2dVL2qYyXLkVlJhcz0ZKnUHgSu0F1TI7KOj0v6K9qLpcV8fOoPAGp6ASlGWvLjrgJCKezGYe68ESHTHKcaC1AeqpnFWeztpjznMePdR3rsXEMgqCgCIMGI/JoBGFsgbU2YQ2GLxOTci96gb1R5Y1AJwTvNwPYViy0B0eqV4V0YBdfIMcQY0DF66y6ZiIlkLFv8gcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from CO1NAM11FT036.eop-nam11.prod.protection.outlook.com
 (2a01:111:e400:3861::49) by
 CO1NAM11HT084.eop-nam11.prod.protection.outlook.com (2a01:111:e400:3861::296)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15; Sun, 26 Apr
 2020 18:36:36 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:3861::41) by CO1NAM11FT036.mail.protection.outlook.com
 (2a01:111:e400:3861::124) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15 via Frontend
 Transport; Sun, 26 Apr 2020 18:36:36 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:5F10509FC3320B7EFF673AD6D8CEFA253D459EED2554C8E058F87FC39848115F;
 UpperCasedChecksum:4AB90F327A7B48435C8EB54E8351E025C09317A31AA93FD23F061501063840E7;
 SizeAsReceived:7818; Count:50
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2937.020; Sun, 26 Apr 2020
 18:36:36 +0000
From: Jonathan Bakker <xc-racer2@live.ca>
To: kgene@kernel.org, krzk@kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 05/13] arm: dts: s5pv210: aries: Disable pulls on GPIO i2c
 adapters
Date: Sun, 26 Apr 2020 11:35:56 -0700
Message-ID: <BN6PR04MB06606817DE468110FE577158A3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200426183604.28494-1-xc-racer2@live.ca>
References: <20200426183604.28494-1-xc-racer2@live.ca>
X-ClientProxiedBy: CO2PR05CA0096.namprd05.prod.outlook.com
 (2603:10b6:104:1::22) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <20200426183604.28494-6-xc-racer2@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jon-hp-6570b.telus (2001:569:fb67:7300:9f89:4b96:de0b:cd14) by
 CO2PR05CA0096.namprd05.prod.outlook.com (2603:10b6:104:1::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.7 via Frontend Transport; Sun, 26 Apr 2020 18:36:34 +0000
X-Mailer: git-send-email 2.20.1
X-Microsoft-Original-Message-ID: <20200426183604.28494-6-xc-racer2@live.ca>
X-TMN: [j70oA7TQKUoUjRVsjR5RJCmnNIw2nj9SWjJOPAKrXSUEwUHSvDOIXE9yK0FO6QvG]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 50
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 4d7cce88-197d-43f7-43a4-08d7ea10bff1
X-MS-TrafficTypeDiagnostic: CO1NAM11HT084:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LmYXdj/MZUfDVEnk0fUp6Zc6nJaPEZN9onVwZwAbdn8N72BhUTmCUFnLVE3VQjoNlBvy4NPN8Kz8qCRGsFAlPzRPFdxCqMfhQXzloB312tX4jLEmSv/G6BjBCU45FBS4xa9KHjw76/XMIbqERXiIMmUQs8zAcjzLIKQbztjjz55ZEP1H6g6ktkq7gmGJ2/TQbEnL3mngajhFU+UPa+YNjg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: 4s0Mc8ZP09YoZmvtUdCQPGuILQx4HohDOB8I1SJpzq9J7+NMdS2Zwm8qsBXM0Ly22zE7lbTs8iT0jhX27cD7AUHfS0IWKZNjnwh0I7SkJn3mWlwyRA/gHKizuseqO7zk2x2rSqcKrZMvIobIVB0lHgCMttW/H/3RAlXFAIEf5bXJ3yEhin3UzY3UJybnCw3zFHmQpNbgEDKuuk+bsK1OaQ==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d7cce88-197d-43f7-43a4-08d7ea10bff1
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2020 18:36:36.0498 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1NAM11HT084
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_113637_890147_FD55E03B 
X-CRM114-Status: UNSURE (   7.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.18.91 listed in list.dnswl.org]
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

The bitbanged GPIO i2c adapters have external pull-ups attached
so the internal pulls should be disabled for lower power usage.

Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
---
 arch/arm/boot/dts/s5pv210-aries.dtsi | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm/boot/dts/s5pv210-aries.dtsi b/arch/arm/boot/dts/s5pv210-aries.dtsi
index d419b77201f7..f83df426f2b6 100644
--- a/arch/arm/boot/dts/s5pv210-aries.dtsi
+++ b/arch/arm/boot/dts/s5pv210-aries.dtsi
@@ -65,6 +65,9 @@
 		#address-cells = <1>;
 		#size-cells = <0>;
 
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_i2c_pins>;
+
 		pmic@66 {
 			compatible = "maxim,max8998";
 			reg = <0x66>;
@@ -314,6 +317,9 @@
 		#address-cells = <1>;
 		#size-cells = <0>;
 
+		pinctrl-names = "default";
+		pinctrl-0 = <&fg_i2c_pins>;
+
 		fuelgauge@36 {
 			compatible = "maxim,max17040";
 			interrupt-parent = <&vic0>;
@@ -438,6 +444,18 @@
 		samsung,pin-pud = <S3C64XX_PIN_PULL_NONE>;
 		samsung,pin-drv = <EXYNOS4_PIN_DRV_LV1>;
 	};
+
+	pmic_i2c_pins: pmic-i2c-pins {
+		samsung,pins = "gpj4-0", "gpj4-3";
+		samsung,pin-pud = <S3C64XX_PIN_PULL_NONE>;
+		samsung,pin-drv = <EXYNOS4_PIN_DRV_LV1>;
+	};
+
+	fg_i2c_pins: fg-i2c-pins {
+		samsung,pins = "mp05-0", "mp05-1";
+		samsung,pin-pud = <S3C64XX_PIN_PULL_NONE>;
+		samsung,pin-drv = <EXYNOS4_PIN_DRV_LV1>;
+	};
 };
 
 &pwm {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
