Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C81CB1D2675
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 07:07:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2mAea0ZQ0GLeZGPBs8RIq2K4WL04R/jGtKIz2U8aw48=; b=uaQ/hp2GFD4y2v
	g78h1HwpHSPsmEGx5Hg0J/6v/zJsTvMdOgCglcIZYJ3SJNIaoMS1SwF/PPXv1WmvPzKJPzDCdz3Je
	4v+wYHajE0mJgXizgVSx91bMoORm4BgsfGEFbYvi1QtPQD+8G1c+jH/rFqOvIftmj2nB401i7vitw
	Md/6Vp265aQ/RiJcFYbIKSsC3zsLid/WiSA350inZUdmIGnLEkIA7RDckWGGb6E7saNIgpCgvgN5k
	9nFdX5lTt8/i+1VV6+c8E1tb7TwUY35S+YoJ4g56rk81EsKz+DieMfDudy3NZNYxrmKjtjalRByGG
	xTgKEsF+oMq5OjO3sOsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ65e-0007Xl-P0; Thu, 14 May 2020 05:07:26 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ61f-0001pd-JV
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 05:03:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589432599; x=1620968599;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vUqf6TumiNYJCcYJmGOnf7/FQ5Q5D4IFE3s1dX1L0ds=;
 b=kASviSs991jfeAzoWjeRe3HYgWEMe2sbs34PfM1hU/PRL9E8BTWWAb70
 2Rw+EUhJiZotKYUt9Y2DlCEN3d8XhBcNGx/BdMYbE1j2j1N7TD90Vo/ig
 bnSSYCBbRUlDOwxkEVo+a127WH55k8SbSLPwK4nGjnmhfKS8AoBUZxeOe
 6uChSn2pTCzXTkmy0IunvYK5IvfL9+E5xFKGcgDsyfqxUvZeK94wxOZyS
 4adwm0F6l3PWSBJG/NHMLBXDTCk1FeuF0G6Z59/Xs97R/Y5c9wE1BVYqn
 pfIdEfoxXa1DfYo6nTPlbZcTEmh4hZ9TSa1twu9jy7EQfs9q2B2zndzwN g==;
IronPort-SDR: 9NRQwqWcUiTU41d1YC1QSBaM98L1wihjjbMcgJa5kIuQSwXOsUD6sO14rkm1VySITYF+1Zl3rH
 fCV7EMsq8Pv/f/sTe2VELAO8XFg4taWve7HxxUXnas3UacNuridutONYxihF5V/idog+ghpiDs
 eljH/pNN6v2eNIL8i3T6Aby7tHmxW0bkMUQfG/TOQCrJ5qwDrH3lgKlr30RC9IBUFtmJbitDD6
 glIxF/CUEM53+JQW0p9tEqF90x1SjcFqGptu+B5cCvmNE+/O1Tv+dgTq4jEcQVeVK/8z7JcyZ+
 3d4=
X-IronPort-AV: E=Sophos;i="5.73,390,1583218800"; d="scan'208";a="79551115"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 22:03:17 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 22:03:16 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 13 May 2020 22:03:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JDInjZC+PHMa8o0RtCus31KV6XHKuVYxiVLmNndRU1UQyuj+qiTPY6Ctr89WPqwfHErefk9Ybm86mndtQkyEJ0d61xbzlqleInqF+nSNzb8BfLVdabgkWmhElkLXCOnv7SvS7JFwxvk2icixq2Um+qjR0grUbYsWcHYvaZpU5BbveKDGk5yRGgVCPT+83VsoLX/FjzjLmYxOll9zcqmS/K9UKjO0m9UD4TPh6rRIkVc0CkVHZ24z0/YHiSdhD/hFigYM2zc67vuba/Ba0RxZaVKAYMezTUMZ7g1bsmaqMuoNqCA2RXfWphCV+T/nUwbMv9wOy/D8pF4qCVnLfbnx6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VlfttCgt/bKbYU9wnQaW7U3ei5oZ24sdu0wo5T+EVnA=;
 b=UY4Q4bvE2Tt/HkrZhu7z5brZeRCvbVDljrQzNZM1Agnj2w2InFKYJvPBJETgl5RphW4RCEI5we2DsKk2YvJPAwKiyu8xX/NlBv1cH0EUDJeoOGbeHq2vnE3SypnFBISI79F7Z9N39TpfbPqNMNheXBdSnWrGi1XTWUa6HwP8ZJVtL4mICjN0P4zBIUehe5DHkyhmomZZy0bBw1S/kAU/o5siDcthqm5JiNIS5w11G7jBla32fj8tx9cim9GilRFaxa0pRj2zM5g+4zA+K4K34RPtDwSsT23Rdxwuwlht8SXuGCNPxkvB05CPhpo1MtGQbURlZmsh8hKcwMvt/KBQsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VlfttCgt/bKbYU9wnQaW7U3ei5oZ24sdu0wo5T+EVnA=;
 b=l6S/mtDI263vWe5ANqaq/x/Ooh9uuqqTyk26YaXfC+kfNIb2M55qR7womKGYNH+5B2bMn6CIFnJ55YJ8zs5dn/rPnmIV9ILik2QojC+m2n1DKqQK+YkaZE8/9xMzN9NN1e1QA8B74JlWucfZRt4a5TIWdiKn+U6qJOEWVzEv9Pg=
Received: from BY5PR11MB4419.namprd11.prod.outlook.com (2603:10b6:a03:1c8::13)
 by BY5PR11MB4136.namprd11.prod.outlook.com (2603:10b6:a03:192::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.24; Thu, 14 May
 2020 05:03:14 +0000
Received: from BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536]) by BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536%7]) with mapi id 15.20.3000.022; Thu, 14 May 2020
 05:03:14 +0000
From: <Tudor.Ambarus@microchip.com>
To: <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>,
 <Nicolas.Ferre@microchip.com>
Subject: [PATCH 11/16] ARM: dts: at91: sama5d2: Add DMA bindings for the SPI
 and I2C flx0 functions
Thread-Topic: [PATCH 11/16] ARM: dts: at91: sama5d2: Add DMA bindings for the
 SPI and I2C flx0 functions
Thread-Index: AQHWKaz4isj8YfZrvECnXEeQAJYBzg==
Date: Thu, 14 May 2020 05:03:14 +0000
Message-ID: <20200514050301.147442-12-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: 0dd843bd-f163-4406-2d60-08d7f7c41bb7
x-ms-traffictypediagnostic: BY5PR11MB4136:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB41368F272B8DB40C672EB59CF0BC0@BY5PR11MB4136.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 040359335D
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wfc/hLlefIPrKmzBY6AIMnoJSdZrEi4azmpLmazGWTCXak+uANW199ssAW/pe9R6iMkMY+1DP6D+K3AL7RhRM2XnJ/Vg5Fby3h68kiL5BPrQOraDQ7JAJCFPds3hBIZhcOTNn0v8mEqIgBnlalDBGwZdqo18brKNfvFBP699Lr8QxHz0YJNRIqnlW9AleYJ+GzolROej3FbTBrqsTDXL1rled+km8nN8x1LN5YlNcuj0jnP3IVnLr8/9aN14Y5rd+CN4j5Rw6x8frY3J9RAPzdtm3wo2MZkSSgYah4F9R+0tJxk04Vojl5bldjsOcWyzQuNJo2bcqN23kVZMhcQMiKnDgIxjkgH9XgIJdxNsOODDF/ECjKYFTBB6ssZkJqM9G8SqcOWzpsTn0VGuKtQRaltbbuO2OAy55GUuNZ0aVJ4NRssm4ZkuWdwVuolN+O4g
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4419.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(396003)(376002)(366004)(136003)(39860400002)(6486002)(76116006)(66446008)(6506007)(26005)(6512007)(186003)(2616005)(66476007)(66946007)(478600001)(64756008)(86362001)(8936002)(66556008)(8676002)(107886003)(4326008)(2906002)(71200400001)(110136005)(54906003)(6636002)(316002)(5660300002)(36756003)(1076003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: P7NBZ5fgfWP4gLrEJwZIevJvdRhb+xaRk+Gmg7x6WEIFKe5dmAPSt5+EzLs+smMM1MUVIJ2dE63T9VKPHNaQDp9hE6sJeuSzAPtJFBPVbsOPNX9QY56qvfcwwCZoKPQ1h56fcSBZDvTxCoYozO5LlzMAGECyaCp+5b5zCrCGBrBDtD6RXFCoftlL9glt+NRdAhwOl8V7remWIxXtPpCYB8fvwAUHqBxQ7lePX2e+r8z3iIhnJXxMZ6Qjkvhxbv/+xcXCp05rbh3/DZtavAg0AeOhHV0tTmVSfrdifcsHck1gp2J5uAFYjIYxvwyuhtyElsFRHYLvbF0NdjVy0oBasPbPWSCdLGY8V1AnXWeVgUxnkVUe1qvSMbHYgSZpTBfgVe30DiwrtihhIm6qAQkh3IzX9SfthEOIpxF8yLZggGmksKSJDzvUrZ+537Izffoz+f4Dxq436D6eW4IeeJwFqfUuzTyEgR8l7NevX3Xuewak/E9m6D14dx+ckUGbmRCi
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0dd843bd-f163-4406-2d60-08d7f7c41bb7
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2020 05:03:14.4995 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E7pUxGqF2RPGoYXmwhlwVM7I+AKFXWKn5n+SVlWRzMr1DdB45uP+f3x6HTpbin7apcRsMDpswS1+exHYzlGQ4ZiYXmvApVOhZ/hNGJDFhcs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4136
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_220319_657990_1CC0D319 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
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

Spare boards of duplicating the DMA bindings. Describe the flx0
DMA bindings in the SoC dtsi. Users that don't want to use DMA
for their flexcom functions have to overwrite the flexcom DMA
bindings in their board device tree.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 arch/arm/boot/dts/at91-sama5d2_icp.dts    |  1 +
 arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts |  1 -
 arch/arm/boot/dts/sama5d2.dtsi            | 18 ++++++++++++++++++
 3 files changed, 19 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/at91-sama5d2_icp.dts b/arch/arm/boot/dts/at91-sama5d2_icp.dts
index 559d8ae93af9..8d19925fc09e 100644
--- a/arch/arm/boot/dts/at91-sama5d2_icp.dts
+++ b/arch/arm/boot/dts/at91-sama5d2_icp.dts
@@ -105,6 +105,7 @@
 	status = "okay";
 
 	spi2: spi@400 {
+		dmas = <0>, <0>;
 		cs-gpios = <&pioA PIN_PC0 GPIO_ACTIVE_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_mikrobus2_spi &pinctrl_ksz_spi_cs>;
diff --git a/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts b/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts
index 8ad3a9c6c536..0e0341c83aa5 100644
--- a/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts
+++ b/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts
@@ -192,7 +192,6 @@
 
 				i2c2: i2c@600 {
 					dmas = <0>, <0>;
-					dma-names = "tx", "rx";
 					pinctrl-names = "default", "gpio";
 					pinctrl-0 = <&pinctrl_flx0_default>;
 					pinctrl-1 = <&pinctrl_flx0_gpio>;
diff --git a/arch/arm/boot/dts/sama5d2.dtsi b/arch/arm/boot/dts/sama5d2.dtsi
index 855846c74a32..5bba8024f485 100644
--- a/arch/arm/boot/dts/sama5d2.dtsi
+++ b/arch/arm/boot/dts/sama5d2.dtsi
@@ -661,6 +661,15 @@
 					interrupts = <19 IRQ_TYPE_LEVEL_HIGH 7>;
 					clocks = <&pmc PMC_TYPE_PERIPHERAL 19>;
 					clock-names = "spi_clk";
+					dmas = <&dma0
+						(AT91_XDMAC_DT_MEM_IF(0) |
+						 AT91_XDMAC_DT_PER_IF(1) |
+						 AT91_XDMAC_DT_PERID(11))>,
+					       <&dma0
+						(AT91_XDMAC_DT_MEM_IF(0) |
+						 AT91_XDMAC_DT_PER_IF(1) |
+						 AT91_XDMAC_DT_PERID(12))>;
+					dma-names = "tx", "rx";
 					atmel,fifo-size = <16>;
 					status = "disabled";
 				};
@@ -672,6 +681,15 @@
 					#address-cells = <1>;
 					#size-cells = <0>;
 					clocks = <&pmc PMC_TYPE_PERIPHERAL 19>;
+					dmas = <&dma0
+						(AT91_XDMAC_DT_MEM_IF(0) |
+						 AT91_XDMAC_DT_PER_IF(1) |
+						 AT91_XDMAC_DT_PERID(11))>,
+					       <&dma0
+						(AT91_XDMAC_DT_MEM_IF(0) |
+						 AT91_XDMAC_DT_PER_IF(1) |
+						 AT91_XDMAC_DT_PERID(12))>;
+					dma-names = "tx", "rx";
 					atmel,fifo-size = <16>;
 					status = "disabled";
 				};
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
