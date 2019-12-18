Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32544124D4A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 17:26:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r1U/kj2ifK6s02Ei+XLQVbxlmUSG1rfWWS/KeEFV9ro=; b=atwiHpK0T2Xrxh
	KHbvq7SiFk2qNQMdzJMehr0yNTg3b2/C+9mr2pVawb0W+qy21AoK/YgjZ+fPHrtXRyhP2w8iu5099
	5oXDnh/oXCedTjz5f0rcvDAmL81q4YI/1wpMsUwcoA5RapaYXECYwRKeg6NdCxUgP466VRLKKPjBB
	wU/16pbtfgZ9F/0ND/uN2z+DnIEZZWA5qyxSr/cRQmeval+Y58rtt+7Zku+uW3GvrRRwb1ujC/2/H
	9fWeJyYi9+sipFFrafAuyByf/5SEOMa5Ipddj8G6rph2lcvhk+PjYSTITUW4CC3QSoMV7m6ZmPnrL
	XUZUv8OI1NR+POF2BBRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihc9x-000160-FP; Wed, 18 Dec 2019 16:26:49 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihc7N-0006j8-Vt
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 16:24:11 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: M7dHZ7vzpwx+AmVyyYJZAp5nH0LSNkR7LCqqju9Gfj5Q9ca8n/TAIyJpguxdUghERhb6HS7JOZ
 up9fyUYSDATd7csIAvcSWLtYBOfrKjk/GzRpHllTCa0Z1guJiwBtNq23SiTa/E9EDn4ssAfQwh
 ttg8wXmE8dz7T7dwwt3BVNXi6z+XVSrwv9HW5fIyU7RP1yoC3KsFJ/FbkjVQpPamqURWs3D6GM
 Mc1qjD335C2WLVaPXuund1t7oilta4WEhpZMP+UMN1eIaeXLeawO6QWbYpJ+1SZW3k1VCSoZHS
 joI=
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="60223195"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 18 Dec 2019 09:24:09 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 18 Dec 2019 09:24:11 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 18 Dec 2019 09:24:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J3Ip8FAIcdXDLaylShXTGGIpCcdbftp2ydBGE2WX94sHwZsmTh0raOuVYqqH14wFEDEo3j+wb3Jnw9J9lSig3Xp99YAGBEE+L4gdYMmc1o00YmLkXFkDX9YEVNHBMi6Zrsu8dcU72AyXpvHjx3m9UVooIbFakEjWY2ZtGRQHT+LEthyIHCc8DQlMa6B4iuAYhcRFssIFatDP02QEc7S+HGuQG79jv7v4IE3fh7PXFl1jcDl8qt4wE90V/OdNHm0eEegOU0O7lgu5zwh58TL6k+jG8wqX3tRoALPovQ1nH78FXiIAO8+NLzivXeJd8txZ2cjHQFDt5yiqerHoIxTVCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MbaJagXmIYCqxQfjE3h38mvB/9lRN1J5e1UgEO7VEfQ=;
 b=UipG6lZAQeq781ZpQg9WiB2pu1x8/6tVQT/4zK0zAUgi8WygUB7IEBg9fwjnW9X7XaQIsvQEKyTkl39/43r56qbm+8az575Z5X3hP4BTMl2WQaxBxiOnrFmV2n9QbftYezT44vLDtIljT1Dw8GmhS2ymXb7jJlIeBkJzLNNnGqpfOGgVlNVSgKsEhbjljMG5jO3uBENvjF2MuFJvJf/oNBUjozMcJdkx18dg60gsOALFE5Y/c4OuwvYGAxlPjGgObxK6X5Y6wqHhw5moIfxaW3mLoI8B5ZFeV+C5C4/3j68EuLDXUseMxT5k9BkO/lSHV/MIzNdRksw61FC/Mgjn2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MbaJagXmIYCqxQfjE3h38mvB/9lRN1J5e1UgEO7VEfQ=;
 b=F3Dq4g4loMO+E7TfbIUHAqubZOSPIQlX9znExFzwR7ZR0GvrALg6lvoY3AY9BldqYuhH9WcMUTpzJrr2oTc8D5/qEfaad+HiH0alTTXaigoq+TvB0gzXyeKgZ33xElLVHTiDJ7rEg9Q7QDb4qDBHX79s7KEj57Prp49JRMCrDxs=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1913.namprd11.prod.outlook.com (10.175.87.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14; Wed, 18 Dec 2019 16:24:05 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1%12]) with mapi id 15.20.2559.012; Wed, 18 Dec
 2019 16:24:05 +0000
From: <Eugen.Hristev@microchip.com>
To: <jic23@kernel.org>, <robh+dt@kernel.org>, <alexandre.belloni@bootlin.com>
Subject: [PATCH 09/10] ARM: dts: at91: sama5d2: add rtc_adc_trigger node
Thread-Topic: [PATCH 09/10] ARM: dts: at91: sama5d2: add rtc_adc_trigger node
Thread-Index: AQHVtb+PyD1+Bcfc7EmGzl4Waea2mg==
Date: Wed, 18 Dec 2019 16:24:03 +0000
Message-ID: <1576686157-11939-10-git-send-email-eugen.hristev@microchip.com>
References: <1576686157-11939-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1576686157-11939-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b54f1599-1f60-4706-5ee3-08d783d6b34d
x-ms-traffictypediagnostic: DM5PR11MB1913:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1913843980ADEF59F1F46D5FE8530@DM5PR11MB1913.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-forefront-prvs: 0255DF69B9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(346002)(376002)(136003)(396003)(199004)(189003)(2616005)(66556008)(316002)(107886003)(8676002)(71200400001)(8936002)(66476007)(26005)(6506007)(2906002)(64756008)(66446008)(66946007)(81156014)(76116006)(81166006)(5660300002)(478600001)(36756003)(54906003)(186003)(4326008)(86362001)(6512007)(110136005)(91956017)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1913;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aXQoCz8ms76O+8qQfZ8cGE6AlQWMaA7QQGQH/IwnmotL4hcUIWXcBFe/wtJNTOPQA9eXysoE2ZMgjyixLB2U43ZZa6B5ATEbFC1Sg+eiac+9020AT1Pb8ji7SXYTHM4FH2xOWhr2Cu1SzP+XTOM7XCRqLVOo8oFt3B3mhL5+VZ6ZNIBwBgMLc4cxP2uzrAujDT0ERR+vuQ+xtPBFBvJNmM//auQy7W9P+xhdfEMiCifQS3/31BflvjMoWhYBUv7csMOmzgPTaN31xru1zonB4+7ysCVwAfSOHRwzhi5n/QSCi6KaMkEJ1XD8W+JO8qBEc0fgYJWK7RNOC1eATtLhtkHUrHmkq5HfEOUfq6qAD+v8Pr/RbYxQpwKlJXKqu1kIBBHZqHDcLbRiCkHqSLUIaGtFHUAweNWzheJ43CXNQTe3QYDGjrhdS/4/oshCCS39
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b54f1599-1f60-4706-5ee3-08d783d6b34d
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2019 16:24:03.4254 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /GO+1YVsRzx55QHoZyEFyE9DBKFLUlMEUlSzO/4MmJzv7fBdmkDy2qnO46EC3zp28aqvF5xd4yAiwulWvf8weDL+OGabpqQ7Ylx9/Wit0xI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1913
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_082410_099573_A9520CCF 
X-CRM114-Status: UNSURE (   7.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org, a.zummo@towertech.it,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, Eugen.Hristev@microchip.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

Add node for the AT91 RTC ADC Trigger.
This is a child node of the RTC and uses the same register map.
Add a link in the ADC node to this new node. This represents the internal
hardware line that is connected from the ADC to the RTC device.

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 arch/arm/boot/dts/sama5d2.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/boot/dts/sama5d2.dtsi b/arch/arm/boot/dts/sama5d2.dtsi
index 5652048..c2df369 100644
--- a/arch/arm/boot/dts/sama5d2.dtsi
+++ b/arch/arm/boot/dts/sama5d2.dtsi
@@ -694,6 +694,16 @@
 				reg = <0xf80480b0 0x30>;
 				interrupts = <74 IRQ_TYPE_LEVEL_HIGH 7>;
 				clocks = <&clk32k>;
+				#address-cells = <1>;
+				#size-cells = <1>;
+				ranges = <0 0xf80480b0 0x10>;
+
+				rtc_adc_trigger: rtc-adc-trigger {
+					reg = <0x0 0x10>;
+					compatible = "microchip,rtc-adc-trigger";
+					status = "disabled";
+				};
+
 			};
 
 			i2s0: i2s@f8050000 {
@@ -856,6 +866,7 @@
 				atmel,max-sample-rate-hz = <20000000>;
 				atmel,startup-time-ms = <4>;
 				atmel,trigger-edge-type = <IRQ_TYPE_EDGE_RISING>;
+				atmel,rtc-trigger = <&rtc_adc_trigger>;
 				#io-channel-cells = <1>;
 				status = "disabled";
 			};
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
