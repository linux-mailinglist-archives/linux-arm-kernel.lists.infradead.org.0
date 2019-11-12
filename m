Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA7CF8990
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 08:20:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3/ohpiR33l0SpffeA1yCv7+LYacSwXocYbzaP5Mv9pE=; b=tyDe1FXnzvNUpQ
	1sBHcXWrL20VgxWsNU8IlFkjEtjFEmYky9rAllHvBikUt+OoyX+YXPewbfaQEGGoOoarxPVF9A4GZ
	g+p5FFBFnYOUKBwPhYjd5rWxq+gTQwPt0iKCESN05+cGUaIw8GHkbX+gyMtaKVeYKC4CD0cVVG0Ca
	r5Uu3ooQXYvTUiDmvAvNjTVvkTIl7kFzMDzh7LggIGSb4VEBcsRwew/Pvp+L8+DceqSPYozxqjZ4F
	trsstFGnIQwFn+TfUDLn2VeR/G1RuPAUoFSSJNgz2dI81GczvYpNTHLWl6EabeKgfPX/oX9IHSZe+
	ZwnV/RZsm44xSw2cDbZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUQTK-00025t-4y; Tue, 12 Nov 2019 07:20:18 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUQT1-0001ca-Pn
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 07:20:03 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: UaoQ8Rb+LNeQhe4NOHZQIoUQUa1GPWBFS/9ARKoXziJc0VR0BE/SkwTJ7143sQxwBEBGwqAGpQ
 EqREUGE0TB36td3RLLX3XjxQWtniW6247+7l4QmEMYfpe778cl/ot0ffb2TjyLpCxvFtX6tY0e
 43D46IRxL0x144bHJLl1Wbah/B40rlKPQOs6OQik9YRUmW3mBS4xvJqXnEytFp0JNMXmuGfc7C
 vvSFJpU92R6YAi38gM7G0NNoWsUWFQu0VmW2A3Ddqh6EsXMNGvc/g8BygbgrFvoi/IhYg6PBAu
 jzo=
X-IronPort-AV: E=Sophos;i="5.68,295,1569308400"; d="scan'208";a="57943366"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 12 Nov 2019 00:19:55 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 12 Nov 2019 00:19:51 -0700
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 12 Nov 2019 00:19:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cc/oFspdaZxFag9EuJUUjQoCUG22YZzKZA+3x3ct31z8v1yds/A3iezQK98qqFsy/upMPv5ZOWapNerTrtq1tr3vebfoGB7bMLvE/oSVWSenjWR3BZSz0npHXcBH1E9M7HPCVvgViu/eDVTdiYMAYdvrhL1e+o2MtKDp7CWfRsAnmYq/oNJHMI+tQOCZ9EMqME46j4nNcGxMphvL8/Coq2hfVpDqGhKTC5OSPT7lEyZcE1Zkan92keUuTJL9KsIMCBGUDPhBbos5YZon8UmCtmJ6gcwyb8Adpyd8ero+9eCHEHe/My6TEcUQiD7F+1EhYqHFLzVHksGXbTiWWi90Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7oTYJu10/YtTgWeNvvHR9umVM+pfMcpH3W/H8ktjIU8=;
 b=kJ9wfkmr8jXPJPVewstbyviRMocfpi+birMMM1RpoFdm5ViQWxDLm33tLOOpnQ39rO4ElJ3Et1bI+P5F6fnAfX4CedtSJa6UEOtcGOPw8iEgqcArNg6VlAffTxOEsyzawEn9R+E5MSaaZ2934ss82LEaPzF9MLGbtpazmZSPiGxqyld0WRwR6XQNe1R4NLs5Lg1BcDe6PmHbs6w2niALMq7VI2u5TmOcPheFLYULprnUsQAXSd9/ueChmEdPjWmWvoV7tTIVDo4B88aQQ0FRRY9LU07p/IA2jznAaPs1ttIq6B5ZSsDSLCHHINe7p8WhJ/9sJWYcllfJfK/QqdRU9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7oTYJu10/YtTgWeNvvHR9umVM+pfMcpH3W/H8ktjIU8=;
 b=MjS/Oqt2+wENK1vlANG/w4eEGmizA2gA3EC1aSTq8c57ZjFZwkYo+DOgPiVDnUC0VsgphGZjtf9JnaAZUzAC1EwuymYQAHmG7Gofvay4xho2QfoeCP9cE7I708ZaPUevZe+TWC48meSdIE1iHyun2YM2Hwe5Kn5rpVp81vzzZyg=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1323.namprd11.prod.outlook.com (10.168.108.7) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.25; Tue, 12 Nov 2019 07:19:49 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::d594:bcd0:98a9:d2c8]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::d594:bcd0:98a9:d2c8%4]) with mapi id 15.20.2430.027; Tue, 12 Nov 2019
 07:19:49 +0000
From: <Eugen.Hristev@microchip.com>
To: <robh+dt@kernel.org>, <Nicolas.Ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>
Subject: [PATCH 1/4] ARM: dts: at91: sama5d2: disable pwm0 by default
Thread-Topic: [PATCH 1/4] ARM: dts: at91: sama5d2: disable pwm0 by default
Thread-Index: AQHVmSmRK5rG1l9BvkGEY/vJDZT6pg==
Date: Tue, 12 Nov 2019 07:19:48 +0000
Message-ID: <1573543139-8533-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR0402CA0013.eurprd04.prod.outlook.com
 (2603:10a6:208:15::26) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8a7ea0d8-390e-46c1-1e15-08d76740b3b9
x-ms-traffictypediagnostic: DM5PR11MB1323:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB132341A87BCCF7B1165C1786E8770@DM5PR11MB1323.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:411;
x-forefront-prvs: 021975AE46
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(39860400002)(396003)(136003)(366004)(199004)(189003)(186003)(81156014)(8676002)(8936002)(81166006)(50226002)(4744005)(6116002)(3846002)(7736002)(2906002)(54906003)(36756003)(6636002)(478600001)(2501003)(110136005)(316002)(6436002)(71200400001)(71190400001)(86362001)(14454004)(25786009)(305945005)(486006)(2616005)(66946007)(5660300002)(52116002)(4326008)(26005)(476003)(386003)(6486002)(66066001)(102836004)(6506007)(66556008)(256004)(6512007)(64756008)(107886003)(99286004)(66476007)(14444005)(66446008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1323;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rcaA39zKU6WQjwvfyYO4j9E1ZP/kOGumObBG57ma5R5G4259ofuKWVoM0c2HZIOmOe1Ks+lep3VfwhCqqFzXW2MwCvj5KK4H+IB+c52Vw/IglTVVQSJt1g70fCMG9jeNRiF9o01z9FuJ4zd+ooYQatF9lXrdwEUnrALKgefLjG/pk9fBYulFQRGUCuBER2eGCYEQEbL9rZnMxZ2e1vR8DHgTWBwZinxhzcZXytz62h7i8SrTXq/g7hvh6XUEsx+VvHANefRPJ7yAztgzCUzNsgyDI/bv6jKWCyHTfxnUjCPkcStddrJqM0Wo/BYkHgPjKlJR1SJ1+T303lq+cO5Dgy0+TyA6dirdIfpMSRDvr6UTipFlGkt98YY7Qnxous0ppO3qqLNz7DsApX+GZntg8/q8bghbziQL81YC/O+vfaQUUJ57EvEkoevXRxtzP9/S
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a7ea0d8-390e-46c1-1e15-08d76740b3b9
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2019 07:19:49.1943 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2PeVwm4Dn+hbm2nXjKGXITilFgSJuwsCd1EnEkVLrLNxlC5ZwoSqFRsfEwBJkyi3sgLXNZJF55sepM0TrPhh1Mtj4llCbvnpwW/MIuD77KM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1323
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_231959_896001_78A38FB7 
X-CRM114-Status: UNSURE (   7.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, razvan.stefanescu@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Razvan Stefanescu <razvan.stefanescu@microchip.com>

It will be enabled as needed by each board.

Signed-off-by: Razvan Stefanescu <razvan.stefanescu@microchip.com>
---
 arch/arm/boot/dts/sama5d2.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/sama5d2.dtsi b/arch/arm/boot/dts/sama5d2.dtsi
index 5652048..4d3ba6d 100644
--- a/arch/arm/boot/dts/sama5d2.dtsi
+++ b/arch/arm/boot/dts/sama5d2.dtsi
@@ -615,6 +615,7 @@
 				interrupts = <38 IRQ_TYPE_LEVEL_HIGH 7>;
 				#pwm-cells = <3>;
 				clocks = <&pmc PMC_TYPE_PERIPHERAL 38>;
+				status = "disabled";
 			};
 
 			sfr: sfr@f8030000 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
