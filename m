Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19AED158B0B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 09:07:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5y/NYDypYsnxZtqt6CZLhZYUWl971Y48fLns2QtxBS4=; b=G2MZ32aIchMzur
	d+LRpNbr4WvhOhNrKnRodNlhFEWyjKlnRWSlXVec+jKLVDJkjH8/N//gYo/3ZHxz02YpklZjR9wcK
	g7QhHWCb4rSgoxBBBr8N0bVEnwkcJpcxXspFQkgIXcmn13j1ef6KFdFL6A+lFw0WCiTLztL5xl7q1
	T2aglQblpIjdd8qloExDh5or7YYD4cV4vDMJEIUUkqqdBxnrJqaKhxR5Tc10K1UP9zGGNcvT9C6y3
	KbiqzeNh71n5rWXePmPINxTxgggzuyuNfRq7CD6LRbeMTfPic1z/HO9C2bbA3xrb+7KC8gyBmI7l5
	w30InJok541suotvke2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1QZz-0000OY-Cs; Tue, 11 Feb 2020 08:07:35 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1QZq-0000N4-ER
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 08:07:28 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: pnpa/BOHNK+TDH0Po7WUXBrUmOpi/2Ih1FyufWv/DHfVjQEzBDSVer1/WvALjgL+KnWCyuV98s
 brHzpFkLNBjiLFSWYPV5sjLBHCnXznyWpw9Q3Em5p/VVPUjL0fqjXXLyt24zR7yCQ+Wg3tzic/
 UDl681hytWsD3WFiUUCUy9ay+QwmhGB+4xGUqJoiUYZ5jLA8Gx7z8VWqlNCEBnAy2ILWrf2mIu
 3Dt8nt9oWLJFdyGJ7hiwIVFr0Jh1gKh3VTnMmyabeodlweNG5QZdg4Mg2Za7loMyXU+PO6XQM9
 RHc=
X-IronPort-AV: E=Sophos;i="5.70,428,1574146800"; d="scan'208";a="68013459"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Feb 2020 01:07:16 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 11 Feb 2020 01:07:16 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 11 Feb 2020 01:07:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f8dwE8kyWI2EYrJw8kR4V+cl8njOQ4VnqX+1fVJXOU+FsY2g9e3zMXuUIDiGbwtuLxD0Kj2lY5Wn3OL9eOnmlRsSSiu5qt5bFmsbiBL/3ieXjU+ehma8e0KMaSSCSVK2tUnQai20JK/vFuvdmAm2m4gXe3xCZViWxHTBVSG5GQWcLnq92u2wB1Y8NrYS5G+T7DSKxUck9AVrZARIPeIk8SP4G5ZwnJ9yZQGSWxwHdecZFVeKrcry3lFfm94SK2ykg/Ji0IFi92tuJFtwXcqmUyNb30zateNVhc2paVuRHh2wJ/vr8xZO5y8v9n/LBXX025K6ZQez+k7hpFJ4k8GRKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OfTMyvPu0e7bAjyqYch9fILTQ3iK5gkGr4BtrbteLwk=;
 b=JGxON+65EbrLbxcxYY5fvXk9sY7nQM1oBrxbTK7/rdbglhOayA1QG+1mKCzBZFIl0LXLY2VM1180wZwq5g3zJThgVPygJODLDTF2bk7illeYxo8LBbtKgsPTgcx2QWP7FPtoq88qAmz02jkamYTuA+H53HXbcbhb5WPs17XIMhR9gXD6lZePemhITK2uFgDSqdkkbWTrL4GSKj6FI5KBcgFIQ/f9JTKHrrRoqoM3JoibTIEddpz+Erfv0+OynOwd5hGqVBbgFdLUGtcmQoHcx8rpYok93BK4Dq53Uyz1kVZiTalB60/5xV8r7Ehmt3rcvP0cNqLpDGO+jk45I33lPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OfTMyvPu0e7bAjyqYch9fILTQ3iK5gkGr4BtrbteLwk=;
 b=k/ztwU0YgskozAd5h8b1XKEB0l9e5AY4eeKiEeNzr2hYnzaQVc0kW8JjQp8CG4dEEQOwduIkvMVQ+g0ZqoyE0fJ1E2KpBUT4MZwGo7iv7Ioq5icGY4A0HxJ1bEjkPL1f9mpAK8Np4luGfcO8U39y9joLT+58I1Gmu0NHzxyqDyU=
Received: from DM6PR11MB4123.namprd11.prod.outlook.com (20.176.125.204) by
 DM6PR11MB4011.namprd11.prod.outlook.com (20.176.127.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.23; Tue, 11 Feb 2020 08:07:14 +0000
Received: from DM6PR11MB4123.namprd11.prod.outlook.com
 ([fe80::85db:d80e:e645:ac17]) by DM6PR11MB4123.namprd11.prod.outlook.com
 ([fe80::85db:d80e:e645:ac17%2]) with mapi id 15.20.2707.030; Tue, 11 Feb 2020
 08:07:14 +0000
From: <Eugen.Hristev@microchip.com>
To: <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>
Subject: [PATCH 1/3] ARM: dts: at91: sam9x60: add watchdog node
Thread-Topic: [PATCH 1/3] ARM: dts: at91: sam9x60: add watchdog node
Thread-Index: AQHV4LJEiJwS9sDv30Gv1Q4x2b4QpQ==
Date: Tue, 11 Feb 2020 08:07:14 +0000
Message-ID: <1581408369-14469-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e6bb7e39-36fd-46d4-5b3f-08d7aec96774
x-ms-traffictypediagnostic: DM6PR11MB4011:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB4011800488F06950EB01906EE8180@DM6PR11MB4011.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1079;
x-forefront-prvs: 0310C78181
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(136003)(346002)(376002)(39860400002)(189003)(199004)(107886003)(5660300002)(6506007)(6636002)(86362001)(26005)(110136005)(54906003)(71200400001)(478600001)(6512007)(186003)(316002)(36756003)(8676002)(4326008)(8936002)(66476007)(66946007)(81156014)(64756008)(66446008)(66556008)(2906002)(2616005)(6486002)(81166006)(76116006)(4744005)(91956017);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB4011;
 H:DM6PR11MB4123.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cXiPxqUsdgB9wuBFbu9AoQvHdCgyJq5tMK5lCUL2TPAA6YlvmW+wflELCVm6yC7reVa7s6crSiGCzVul6aN9rJt7b6RWp9JgWL9yI0XQPa38lJnN0yEkpLbKc75dHKlgEXVSghfreiv+HdEOgOzrSJLFFOe3GZBGD/ZJHAL6eyEn9lMkK6GOmay5cpdt8/2qpdr2XJsZ/mZQlLdfy5mIPkmUPT+VuFDPllfeB2Ry26Pe154jAPfWhv1lIy006wY1WtBEQYvd+uYQzm/u+r/Lw2HMZABv3UePxA7GJWhQqTKIv2vkawqrHcgJ8NZwfsHDGk6Dm6EU4vfFJSDo2IxXZ+Z7yWUsPKMs4pkoYr7UkG+lr4apHjjLlGvEghjSRvvPRSJunlILR5uG0CnpAz4KY2i/lshiDdfUlfLLgpgmSPADY4nF5Y30oZupdixRo+c2
x-ms-exchange-antispam-messagedata: 9adwQAoKUMdyFWT1paBObAb07/iwWk7tjMTZsoiKxw+zzhfJZr5rKlIA4ndOcPBUsKy8IkQ2hKtU2zKG7abOUcVzakr+TvcOSvuiBxC1VWrp9yDrL8gkFZzMPhVw5CUM0RD0L5jKt7jzbL9gWbiauQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e6bb7e39-36fd-46d4-5b3f-08d7aec96774
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2020 08:07:14.2843 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IxJx1XjjpgMoiQm24T5GL2ksxea055GlXq2j0YAZm0oatSM5DMTEaoS0hYyUzNwynBevgdQ+g8xX6tFOEHkvQOeFiywluI7PpPfHJibhacs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4011
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_000726_925898_10F1ED37 
X-CRM114-Status: UNSURE (   7.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
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
 robh+dt@kernel.org, Eugen.Hristev@microchip.com, Claudiu.Beznea@microchip.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

Add node for watchdog timer.

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 arch/arm/boot/dts/sam9x60.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/sam9x60.dtsi b/arch/arm/boot/dts/sam9x60.dtsi
index 326b393..6763423 100644
--- a/arch/arm/boot/dts/sam9x60.dtsi
+++ b/arch/arm/boot/dts/sam9x60.dtsi
@@ -686,6 +686,14 @@
 				interrupts = <1 IRQ_TYPE_LEVEL_HIGH 7>;
 				clocks = <&clk32k 0>;
 			};
+
+			watchdog: watchdog@ffffff80 {
+				compatible = "microchip,sam9x60-wdt";
+				reg = <0xffffff80 0x24>;
+				interrupts = <1 IRQ_TYPE_LEVEL_HIGH 7>;
+				clocks = <&clk32k 0>;
+				status = "disabled";
+			};
 		};
 	};
 };
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
