Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E6A7113C7D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 08:44:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bON5KzQ4R/o2Lss97/5PlhuoNPphKp9YCDuuDMNurI8=; b=DGjzMf9EWY14/b
	BXtd9IFyeb/aCNIvcxlWNw58jqrZ/Hl7UIkRD/Zm52yyHzjI2xI4T0Fp8r/nWrH+MkUHXdGRkI2YX
	aC1z61Po9m6xPuG1rv9JvbP7g2bxoU3dd1l2o5SQ9P9/o4nJcsouUZmoU8aewsHQu3oBAABBkcuVF
	rK+4rGRWBNes7Iaw7Wa7lkccA/h054TtKXYLiIhlkJS6yqW8PL9Onxw1gF/8TTXessB9fzHz4idjd
	cT9Nr2IQT22qk8fnv5I7gj0fS8EshmZZvcJuYJaqKk6A2jjumgWuQVgNmc7pEXK0MnOjW+6nUhnbS
	EZxoeLsJIqV1Lwlx/pOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icloC-0003i4-AY; Thu, 05 Dec 2019 07:44:20 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iclo2-0003gK-TJ
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 07:44:14 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: fqAolvmVVNxftTTn7QqxI/YpKASGBfjeOF1DNlvr+l/G+LzncX+Or5JJweDRLqeH2WgiP5Uycd
 +I7+Nk0SgVoUT0VeJoJl/VZi73RiZGtMFb/hH17Ova/h9fg7fwo9lR1cklohjKVUVDrgi1k5IN
 7o4WV/mCWmE8hhzjvOZo/s0cVyQjmtlnrce8jCSn73ERcr4JjZ7jW3IPNfOC/+PsDEUZ8wbYaW
 i42NEFgL+wHForsUtLMFiIngm8VoUYVnXnoboKAn+4RwMIALdXOaPmwxeDy2KLHpzwfunptGK9
 LHY=
X-IronPort-AV: E=Sophos;i="5.69,280,1571727600"; d="scan'208";a="57531256"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 05 Dec 2019 00:44:03 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 5 Dec 2019 00:44:03 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 5 Dec 2019 00:44:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fo+2Z4/fmfQwsw6/fHDY1xYDVDFH5FvOxneos326mB1FBC2e32fK5+MZ62TIL/PowjS0OSt9cSLWbK1ys+E+N3WBuuUkUvAQT53iBVEAPuFtqUpzRMYMNEKuRwQ/Gh7NHRSGBKL+XJuGjzWYJ4GzsW7E7LbC4jLlN/dRhv9V2yc+NHWhnfJPaE1qC1x1w2kT2rWvryx+VGQX5CJzRWOsCmqA/4IYEEA+YCfonkDx+I7Os+mlmtfm3a7aBrKYFdVnE76nehF6KFGn8XPK1AZfed3G8+zH1GLb0VoIjiiUQeQoeP9UQpIlLO5FvBdtxfkRHwK3sT8nEENDRekKPeDAyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4BY2OOvek2n0cROwi7zCbZlygB3Wzuw3zRVbP7xA2dw=;
 b=nD2iNJp/GCJBShWp8DJXFz3HaMvgi7uwFhHFY7nJIXPMdAjyyJwHcT+6PvN+ATPe16rVVfHPviefndBYSMgU1FntBavIVb+U5jo1ldlZkdaudDB+xgyPEkS6Vb1WYlC0jeieKa+MAuxFjV58F+1IcnACjyJcxK8Bv1f4DdIBriOPLeqxVByYdbJ/6ldXg7NskIw54rVrcuniyry/MFpaFGBomXJYDrdv+/VwhGXmYWO5U6sa0k9mSsNUHnjjcb5ezEPXPOuShW3Yc1tP3D5yGUbAjC4c+c+1JS19PEuS5BbMc68v1SWQLnY3zQP7AevEbo+y4dgNaLRMjrC6C3EEZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4BY2OOvek2n0cROwi7zCbZlygB3Wzuw3zRVbP7xA2dw=;
 b=tSPQHjsyP7dqqaNVOyaX1yMSUGLVOuG2JW6yTG6zONPro3NIAizc+ct2XjdmU/IGlXVrL4BRdG2uOcVEAHR14fOpTtvENGmorpiOMA7JLdeF4IEdl4SS1SYcUsDkUhIHXWW6aQEe/28a3oqAwjCvBo/tCVsseYsHos/ibU4l6NM=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1979.namprd11.prod.outlook.com (10.175.87.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.14; Thu, 5 Dec 2019 07:44:00 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1%12]) with mapi id 15.20.2516.014; Thu, 5 Dec 2019
 07:44:00 +0000
From: <Eugen.Hristev@microchip.com>
To: <alexandre.belloni@bootlin.com>
Subject: [PATCH v2] ARM: dts: at91: sama5d27_som1_ek: add i2c filters
 properties
Thread-Topic: [PATCH v2] ARM: dts: at91: sama5d27_som1_ek: add i2c filters
 properties
Thread-Index: AQHVqz/BD+DgFrWFI0623R1669TGuQ==
Date: Thu, 5 Dec 2019 07:43:59 +0000
Message-ID: <1575531818-21332-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM4PR0501CA0065.eurprd05.prod.outlook.com
 (2603:10a6:200:68::33) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 861c72ea-ad79-4905-24ff-08d77956e3fe
x-ms-traffictypediagnostic: DM5PR11MB1979:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1979A799E97B9BE0CFF33286E85C0@DM5PR11MB1979.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 02426D11FE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(396003)(346002)(39860400002)(136003)(366004)(199004)(189003)(99286004)(478600001)(25786009)(66946007)(52116002)(4326008)(14454004)(102836004)(26005)(8676002)(6506007)(186003)(6436002)(316002)(2351001)(66446008)(5660300002)(66556008)(64756008)(54906003)(66476007)(71200400001)(2616005)(86362001)(81156014)(81166006)(36756003)(8936002)(305945005)(7736002)(6512007)(2906002)(107886003)(2501003)(3846002)(6486002)(6916009)(5640700003)(71190400001)(50226002)(6116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1979;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7RUP+Dz0pArgx0lGgggFMHvr0dGpkBEIGO2vJI8eXvFmt0k+5dL18RksUO89/lFrrCY5lZd75VV6/HrU/VSWW6W2KXQq5nfz3Wm2wsVWUug5WbtkonzS/Le+zNYfC1x/6FBxpZJZeSu0JZXFpTZWtgPB+IknrVps8dTd2F0pdfrqAMHWWQEyXTtv+pp01+SNRaM5d2pOVqFRUa7oouPoK9c05oXqF5SXwzFLp3YgiOBSf7Wc+Fik2VaVU3tdkuyP3yXOcmZFk5fkviEc86YqZE1M/Je1ppOttW4FYukVbh55v4TIhLEr8w98xS9+U2pZ9DzVrPUjRYK3ZJIoWyTjmI4d2OBBQopNslipaxZ8MLuexJO7N3oNPHJbqgnRl8dQIg/DsB2O0Ab1qDT76n63nWYTrNe5FC4JDGjKRwj/GG7CZ3UaLKgNtFayUxfzfY81
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 861c72ea-ad79-4905-24ff-08d77956e3fe
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2019 07:43:59.9044 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L9XvXMQVywPY85M9FnbsQ0ijCKYzbIVaGEq3BOx/CZgwKhcscJjhN8XhLPR0VNa8R0WyAr918YGhAyFJoNcJ3OTsVufEez8q0oLDbBDcjpk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1979
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_234410_984943_729E28F7 
X-CRM114-Status: UNSURE (   7.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Ludovic.Desroches@microchip.com, robh+dt@kernel.org,
 Eugen.Hristev@microchip.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

Add properties for i2c filters for i2c0 and i2c1 on sama5d27_som1_ek.
Noise is affecting communication on i2c for example when connecting i2c
camera sensors.

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---

Changes in v2:
- properties were at the wrong node for i2c0, need to be at the i2c node
not the parent flexcom

 arch/arm/boot/dts/at91-sama5d27_som1_ek.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts b/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
index fca5716..b0853bf 100644
--- a/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
+++ b/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
@@ -131,6 +131,9 @@
 					interrupts = <20 IRQ_TYPE_LEVEL_HIGH 7>;
 					dmas = <0>, <0>;
 					dma-names = "tx", "rx";
+					i2c-analog-filter;
+					i2c-digital-filter;
+					i2c-digital-filter-width-ns = <35>;
 					#address-cells = <1>;
 					#size-cells = <0>;
 					clocks = <&pmc PMC_TYPE_PERIPHERAL 20>;
@@ -246,6 +249,9 @@
 
 			i2c1: i2c@fc028000 {
 				dmas = <0>, <0>;
+				i2c-analog-filter;
+				i2c-digital-filter;
+				i2c-digital-filter-width-ns = <35>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_i2c1_default>;
 				status = "okay";
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
