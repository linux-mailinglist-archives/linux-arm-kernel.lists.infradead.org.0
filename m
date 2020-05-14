Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F176B1D2668
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 07:05:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UQsh1uNW2zTY+LPv+1sT8Se/BLgUr+jfW6JKaRm1jQs=; b=eqzJNTcjvzQQnI
	AKNbOwlpHe/vioXM3GW653GFlEJ04unFt66KSKCaUEZSJSmfNxVZSfit0kq7iuQchLFcpSJGm47GE
	zuiMAqJRCmNlAUZS5a0dBQBrzBtGAB8qcqWRV73XsAfGPvRx3jll7UfqjbgaI/NXGmmk4qdwvJnJg
	9dT6t4tEM2MJ/gBN8bmVi8tB1/+udCn6gDwe7JotpnAP1CNE7OXAR4MpoCjl+hrc2qTbPYzFcPg63
	573e7LdDMjKBRXAbmfsEJL4Ed9UkSq4dHxGaH9XJxBBCrciqOcHNycbSS+46eUJZeRN0nIqY0J/Ow
	XnRcYhXD4Zc9gRuntVmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ63L-00031o-7y; Thu, 14 May 2020 05:05:03 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ61Y-0001hC-C5
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 05:03:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589432592; x=1620968592;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=i7RlqKcZ6rkrSPmAUXAwXWZesrTl8aRHAwUJrBWDQCY=;
 b=DOiBL+idwKGlI1sXWKdjzZaWED1pkE3iL/pA/PzxUebpukHd5EahtUkW
 AOezh4U+k9XQIeaqrB2OBJHOVju5jBIcMK3WjMzwdykQYw0P/rPaRN2e5
 8Nkit0pR2Es7rk9KWCIUJUxn5QvIX2Vb2nuX/rY/qDykKYFejeeFArVyh
 IUyN1A1iu9+lkyr/AlODgZ//HdBKhH8DkUzYyEvn9HGAkUfyPcrTLCvia
 guPBdj5u2FFsMKMnpgwfkTvm/bnCyZnByVpw0H5eazRFl8J2/8VKw0wKQ
 8cv8gpoYF7Tej7eebDUZmpeW7D3pMH+o+/plITP8BBO1XHyQTjTAoSCQj Q==;
IronPort-SDR: mZGJFrCaJS1v+6DctsF2Yl9W3XcnzFhnQEXlOcs7+b5BLVMYV2Ai4DcKsPpPXkQzTBFFY+9GsP
 lMYGOJmCcpapKpsfomf6jWkembchbcsGrSOQQCAcIDRybhD36M4b2bZpqS0kYJAWK0x0+QodL3
 lZBIn2fOGj0Gv7zBaISLTbtJ+TbAy8mMqznYnqULIHX69BQ1o7m0uUrVkMBaRPal0etBAxQKNc
 SA5YpkTtljbN46+XQhbBzEWHK7de0r9+87GO14m3UDH8YgXT5GjDqUqT+VSHb1/QSbqpI3Wv+t
 cM0=
X-IronPort-AV: E=Sophos;i="5.73,390,1583218800"; d="scan'208";a="73400079"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 22:03:10 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 22:03:11 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 13 May 2020 22:03:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fHQZBkbA5s1b6R80L1b4T54PWi0KTkFEUPc+wThvmMO31LKHvOBECv5JssXuS7p0SKhR39AmF5nO22y+MLyWB3R/6YulcfqrF5eIjI5ZvCsnQPzldJX6yU1dQak1oqrUOHbMJRy/cT47gac4kHuyVVXQg7+5Kg04prAfNBjpRiA9E33jnSxtUN70TzCk1HqNTsRIAv7xoB5WqeMGlPBCtaZnycA0rTiFcIzQG7Rk7/AQtqowmtI7Z5Oq4nJgzgJU2ga93CtwwWmotzpJyJ6WkxcKGdU5hFex0BP+QdPLeXgUNbb/7uplP9rxx7WJqnW5rcaaNoIHNQta7neV55Zu1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+XJGVwncdRnKiZzT/3Yu6JXkIiPm6o8EQBFENDvxwGg=;
 b=RQdSTthNuQ+bUcZ3ubhB+gCKz4LsTprv1GsQjwkpy5jsoAhDp93Wu6RS69PkQZ8Ktz4o0ArFHQOTGdQtdPso+HC0AF6vWyqVWQwaj4u/viPWJ/ql2viORBl6tsOFJbvHznMWvkNzuMgwm0y/I4WTTxNsJzlHj3PzyRHckMgUQksciTYFSRX7kF2IYxsyedAiKABnVPe8VwReBHGootWoaDu/pCb5i/Lz5v1ck5MV00EodUorMt4g7vdI8AoeZqpeYeIRA9s3C8wx6P4OAyt7Iy6Z1EQCzMAisZk6aTx5fjW4chALmcdhWqTPqj33G7AEifN0650CNcRgCHjSbVZYGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+XJGVwncdRnKiZzT/3Yu6JXkIiPm6o8EQBFENDvxwGg=;
 b=EI8MzNCqjHXktoik/QTvpfGJ0LOGjXUSRKAdXihfTf+H7iUbONoO/n2EC5a7X2COnuui/MHpShluQJz3KCghPcG2Kqbsc6q8GrUyQpgPxUlJnMCfk7ezsqYEjtvC4hVfjhg3sneUvp9+3qdjIfmkatk+7uRMImbCBDGjGKOunYA=
Received: from BY5PR11MB4419.namprd11.prod.outlook.com (2603:10b6:a03:1c8::13)
 by BY5PR11MB4483.namprd11.prod.outlook.com (2603:10b6:a03:1bc::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.24; Thu, 14 May
 2020 05:03:07 +0000
Received: from BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536]) by BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536%7]) with mapi id 15.20.3000.022; Thu, 14 May 2020
 05:03:07 +0000
From: <Tudor.Ambarus@microchip.com>
To: <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>,
 <Nicolas.Ferre@microchip.com>
Subject: [PATCH 01/16] ARM: dts: at91: sama5d2: Fix the label numbering for
 flexcom functions
Thread-Topic: [PATCH 01/16] ARM: dts: at91: sama5d2: Fix the label numbering
 for flexcom functions
Thread-Index: AQHWKaz0LXerz9Q/dUmbzQUpUcG6QQ==
Date: Thu, 14 May 2020 05:03:07 +0000
Message-ID: <20200514050301.147442-2-tudor.ambarus@microchip.com>
References: <20200514050301.147442-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200514050301.147442-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: bootlin.com; dkim=none (message not signed)
 header.d=none;bootlin.com; dmarc=none action=none header.from=microchip.com;
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fb4aa94b-c295-4d5c-f5d7-08d7f7c41740
x-ms-traffictypediagnostic: BY5PR11MB4483:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB44838A4747E87541B05E3593F0BC0@BY5PR11MB4483.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 040359335D
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: P8/LRo4E0pyUJ9OQg1ZLTGnyDdofQ9J94QolkbeVcT18fEN/RrnaahF8B3WiI9lJwHIcxm2EBES2bNzgcXY+Id76pGwW4VV4xfqZ3mv0tVPcdcJwG+9Zkaqct362c5TGQkDVpTzrSv6+oYFs/Enhw1IEoXy8BiUoxILp0B/rOG9kp+4I1mKPQc+jf/pMeXUS76c6k+3rjmcwMslUWUZEfy9CTLt2cjawj0TTtm4zeqBh9S9YbWqTPH9yxOKb5U2YD7Ts7uAekxcsSgUpJo9UXtEMCgmEHhHMppFzkpB1HKJaYft9Q+dhDxqOopYkn2niv2bB3/HnBpWEPKyylk4/Bj64QFbkNBSJzfyKGi+H0kxhY6sjyzY4EN6KRhhXzITOTc6qxgE+bEePj1xkIfMc1sS1L/FpGBVpk39k/u6csXCjeHYvZZVQsEKZf1ZEnJ1h
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4419.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(366004)(346002)(396003)(136003)(39860400002)(6506007)(76116006)(6486002)(26005)(66446008)(8676002)(6512007)(86362001)(66946007)(2616005)(64756008)(8936002)(478600001)(66476007)(66556008)(186003)(1076003)(4326008)(2906002)(71200400001)(6636002)(54906003)(316002)(107886003)(5660300002)(36756003)(110136005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: KxECwQ3H6g5DByDf9RxZGoED9ISN1OuwjNyWrwiuFZJlLWaXUKDdDsPniR7YlqCDdAmc88XsuFavITEf6HWSa5HsAL2i11FlAZ9UsV94x4Mz1F3zmmHF7wNSzNxf+nurFAfl+xApz2Wua4UEM51sF4d+FISTtxpa8tZyLCQoBqj3Hd5fu9mSDqQdo/5QcWxCCoPhvPxMzk6QFL6JtSV9lL0V2QTOIuU8iJxtKaFl0uLIAk3c7gRLsy6xE5FSqlGEztEDi1HdzPimDgNfjznlOjgZoM1I1bRBYNTu6vrKkW0eeOziSPSzdZPhu8KWD/Ai47TgSHUihHbSi7ixg5Uw41KLK8O2RoI0PJfrlE96ooDa9IEesusUQYK/PI2o1FdvROO2vLFCICd0ulad4TqFY4W7wDoELiAInbBQF3fnqoRjIiBrfnlkah1H64YRbMWw/Ha2PF1H9fkxSySEgCxzElmFw5XYyXRs5Eaz+53OXq4=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: fb4aa94b-c295-4d5c-f5d7-08d7f7c41740
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2020 05:03:07.0909 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dWlWV10OQXjUx83p8sX/jeOvW7JocdWrmbnEtWPFKHrVInR6aoDifCIUb7znhV240KucXkGEGyHn6/TNv6/5k8c0i6FFi1zFtT6+ZCMO7wY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4483
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_220312_551537_45D57A05 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Tudor.Ambarus@microchip.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Codrin.Ciubotariu@microchip.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

The sama5d2 SoC has the following IPs: [uart0, uart4], {spi0, spi1}, {i2c0, i2c1}.
Label the flexcom functions in order:
flx0: uart5, spi2, i2c2
flx1: uart6, spi3, i2c3
flx2: uart7, spi4, i2c4
flx3: uart8, spi5, i2c5
flx4: uart9, spi6, i2c6

Some boards respected this scheme, others not. Fix the ones that didn't.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 arch/arm/boot/dts/at91-kizbox3-hs.dts       |  4 ++--
 arch/arm/boot/dts/at91-kizbox3_common.dtsi  |  8 ++++----
 arch/arm/boot/dts/at91-sama5d27_som1_ek.dts | 20 ++++++++++----------
 arch/arm/boot/dts/at91-sama5d2_icp.dts      |  8 ++++----
 arch/arm/boot/dts/at91-sama5d2_xplained.dts |  2 +-
 5 files changed, 21 insertions(+), 21 deletions(-)

diff --git a/arch/arm/boot/dts/at91-kizbox3-hs.dts b/arch/arm/boot/dts/at91-kizbox3-hs.dts
index 8734e7f8939e..0da1f0557eaf 100644
--- a/arch/arm/boot/dts/at91-kizbox3-hs.dts
+++ b/arch/arm/boot/dts/at91-kizbox3-hs.dts
@@ -283,7 +283,7 @@
 
 &flx3 {
 	status = "okay";
-	uart6: serial@200 {
+	uart8: serial@200 {
 		status = "okay";
 	};
 };
@@ -291,7 +291,7 @@
 &flx4 {
 	status = "okay";
 
-	i2c2: i2c@600 {
+	i2c6: i2c@600 {
 		status = "okay";
 	};
 };
diff --git a/arch/arm/boot/dts/at91-kizbox3_common.dtsi b/arch/arm/boot/dts/at91-kizbox3_common.dtsi
index 299e74d23184..d7a6c972bdac 100644
--- a/arch/arm/boot/dts/at91-kizbox3_common.dtsi
+++ b/arch/arm/boot/dts/at91-kizbox3_common.dtsi
@@ -28,7 +28,7 @@
 		serial3 = &uart3;
 		serial4 = &uart4;
 		serial5 = &uart5;
-		serial6 = &uart6;
+		serial6 = &uart8;
 	};
 
 	chosen {
@@ -207,7 +207,7 @@
 		};
 	};
 
-	pinctrl_flx4_default: flx4_i2c2_default {
+	pinctrl_flx4_default: flx4_i2c6_default {
 		pinmux = <PIN_PD12__FLEXCOM4_IO0>, //DATA
 		<PIN_PD13__FLEXCOM4_IO1>; //CLK
 		bias-disable;
@@ -324,7 +324,7 @@
 	atmel,flexcom-mode = <ATMEL_FLEXCOM_MODE_USART>;
 	status = "disabled";
 
-	uart6: serial@200 {
+	uart8: serial@200 {
 		compatible = "atmel,at91sam9260-usart";
 		reg = <0x200 0x400>;
 		interrupts = <22 IRQ_TYPE_LEVEL_HIGH 7>;
@@ -350,7 +350,7 @@
 	atmel,flexcom-mode = <ATMEL_FLEXCOM_MODE_TWI>;
 	status = "disabled";
 
-	i2c2: i2c@600 {
+	i2c6: i2c@600 {
 		compatible = "atmel,sama5d2-i2c";
 		reg = <0x600 0x200>;
 		interrupts = <23 IRQ_TYPE_LEVEL_HIGH 7>;
diff --git a/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts b/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
index b0853bf7901c..d215243fe163 100644
--- a/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
+++ b/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
@@ -21,7 +21,7 @@
 		serial1 = &uart4;	/* mikro BUS 1 */
 		serial2 = &uart2;	/* mikro BUS 2 */
 		i2c1	= &i2c1;
-		i2c2	= &i2c2;
+		i2c2	= &i2c3;
 	};
 
 	chosen {
@@ -125,7 +125,7 @@
 				atmel,flexcom-mode = <ATMEL_FLEXCOM_MODE_TWI>;
 				status = "okay";
 
-				i2c2: i2c@600 {
+				i2c3: i2c@600 {
 					compatible = "atmel,sama5d2-i2c";
 					reg = <0x600 0x200>;
 					interrupts = <20 IRQ_TYPE_LEVEL_HIGH 7>;
@@ -178,7 +178,7 @@
 				atmel,flexcom-mode = <ATMEL_FLEXCOM_MODE_SPI>;
 				status = "disabled";
 
-				uart7: serial@200 {
+				uart8: serial@200 {
 					compatible = "atmel,at91sam9260-usart";
 					reg = <0x200 0x200>;
 					interrupts = <22 IRQ_TYPE_LEVEL_HIGH 7>;
@@ -190,7 +190,7 @@
 					status = "disabled"; /* Conflict with isc. */
 				};
 
-				spi2: spi@400 {
+				spi5: spi@400 {
 					compatible = "atmel,at91rm9200-spi";
 					reg = <0x400 0x200>;
 					interrupts = <22 IRQ_TYPE_LEVEL_HIGH 7>;
@@ -207,7 +207,7 @@
 				atmel,flexcom-mode = <ATMEL_FLEXCOM_MODE_SPI>;
 				status = "okay";
 
-				uart6: serial@200 {
+				uart9: serial@200 {
 					compatible = "atmel,at91sam9260-usart";
 					reg = <0x200 0x200>;
 					interrupts = <23 IRQ_TYPE_LEVEL_HIGH 7>;
@@ -216,10 +216,10 @@
 					pinctrl-names = "default";
 					pinctrl-0 = <&pinctrl_flx4_default>;
 					atmel,fifo-size = <32>;
-					status = "disabled"; /* Conflict with spi3 and i2c3. */
+					status = "disabled"; /* Conflict with spi6 and i2c6. */
 				};
 
-				spi3: spi@400 {
+				spi6: spi@400 {
 					compatible = "atmel,at91rm9200-spi";
 					reg = <0x400 0x200>;
 					interrupts = <23 IRQ_TYPE_LEVEL_HIGH 7>;
@@ -228,10 +228,10 @@
 					pinctrl-names = "default";
 					pinctrl-0 = <&pinctrl_mikrobus_spi &pinctrl_mikrobus1_spi_cs &pinctrl_mikrobus2_spi_cs>;
 					atmel,fifo-size = <16>;
-					status = "okay"; /* Conflict with uart6 and i2c3. */
+					status = "okay"; /* Conflict with uart5 and i2c6. */
 				};
 
-				i2c3: i2c@600 {
+				i2c6: i2c@600 {
 					compatible = "atmel,sama5d2-i2c";
 					reg = <0x600 0x200>;
 					interrupts = <23 IRQ_TYPE_LEVEL_HIGH 7>;
@@ -243,7 +243,7 @@
 					pinctrl-names = "default";
 					pinctrl-0 = <&pinctrl_flx4_default>;
 					atmel,fifo-size = <16>;
-					status = "disabled"; /* Conflict with uart6 and spi3. */
+					status = "disabled"; /* Conflict with uart5 and spi6. */
 				};
 			};
 
diff --git a/arch/arm/boot/dts/at91-sama5d2_icp.dts b/arch/arm/boot/dts/at91-sama5d2_icp.dts
index cc9fa700eafb..1d9556dbbd63 100644
--- a/arch/arm/boot/dts/at91-sama5d2_icp.dts
+++ b/arch/arm/boot/dts/at91-sama5d2_icp.dts
@@ -22,7 +22,7 @@
 		serial0 = &uart0;	/* debug uart0 + mikro BUS 1 */
 		serial1 = &uart1;	/* mikro BUS 3 */
 		serial3 = &uart3;	/* mikro BUS 2 */
-		serial5 = &uart5;	/* flx2 */
+		serial5 = &uart7;	/* flx2 */
 		i2c0	= &i2c0;
 		i2c1	= &i2c1;
 	};
@@ -159,7 +159,7 @@
 	atmel,flexcom-mode = <ATMEL_FLEXCOM_MODE_USART>;
 	status = "okay";
 
-	uart5: serial@200 {
+	uart7: serial@200 {
 		compatible = "atmel,at91sam9260-usart";
 		reg = <0x200 0x200>;
 		interrupts = <21 IRQ_TYPE_LEVEL_HIGH 7>;
@@ -184,7 +184,7 @@
 	atmel,flexcom-mode = <ATMEL_FLEXCOM_MODE_SPI>;
 	status = "okay";
 
-	spi3: spi@400 {
+	spi5: spi@400 {
 		compatible = "atmel,at91rm9200-spi";
 		reg = <0x400 0x200>;
 		interrupts = <22 IRQ_TYPE_LEVEL_HIGH 7>;
@@ -201,7 +201,7 @@
 	atmel,flexcom-mode = <ATMEL_FLEXCOM_MODE_TWI>;
 	status = "okay";
 
-	i2c2: i2c@600 {
+	i2c6: i2c@600 {
 		compatible = "atmel,sama5d2-i2c";
 		reg = <0x600 0x200>;
 		interrupts = <23 IRQ_TYPE_LEVEL_HIGH 7>;
diff --git a/arch/arm/boot/dts/at91-sama5d2_xplained.dts b/arch/arm/boot/dts/at91-sama5d2_xplained.dts
index e0c6cff1a312..0666708b05f9 100644
--- a/arch/arm/boot/dts/at91-sama5d2_xplained.dts
+++ b/arch/arm/boot/dts/at91-sama5d2_xplained.dts
@@ -377,7 +377,7 @@
 				atmel,flexcom-mode = <ATMEL_FLEXCOM_MODE_TWI>;
 				status = "okay";
 
-				i2c2: i2c@600 {
+				i2c6: i2c@600 {
 					compatible = "atmel,sama5d2-i2c";
 					reg = <0x600 0x200>;
 					interrupts = <23 IRQ_TYPE_LEVEL_HIGH 7>;
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
