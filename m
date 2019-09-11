Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F3CAF7C9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 10:24:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lE0Ghfqe8evZoMJ2hi16mwM21JCt51G/xEdZBpoY6cw=; b=KuurAU8PvHeWmw
	wxU/KCGLNUzkXhzX51FPkJ5FZQyZwS9xx8XB59+xhx1+uKGsQIA74EP0AU68IA2DGGSOksipfnj58
	hP2wauVxFn5GiMOab4dml/Di6c8H4tztYT1H76NjEiDZSZuRwixEZAvATys9WS9DYW/1fqCOMxfI4
	SpMPTQn1Opb9Ce4pt0d9Wk3sXswfhhEZkZ5dhOI5O55nNeNxT5hrZQ92F0Si506YEJSXHOnGbZ7KE
	1lTQdQ4//znQzGbTw+PMlgpkcun3XrsQ6yuJAcHeJy/EaEgt6OH++DvG8WyuutR4QW0Mn41b0PDKR
	CilyTKQ2jpcMXbGA+WBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7xvr-00048r-AG; Wed, 11 Sep 2019 08:24:55 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7xvJ-0003v4-Ex
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 08:24:22 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
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
IronPort-SDR: jlxofZVjmXM8EW3GH6URBu0IT0Gv+thefZ52ntqlJW+5Apya9gonryb/R8p5jXL3X/7lp3Xnu9
 PSdett7GhRxC98O1wakZqFno/U2+RKX50W249bs5ckQZB0uFwRb0vQ70PN65fOVnNdat2j08hG
 HSAqRvdbSTJM6UwluPEXs3Go961jTQgC02vEoBchlGHzH+fabSXT8Tupc8V8Lqv3y3iZcP/dbH
 Osi/OnZCDyCPeEFaJMa3udKccWlog1EG/DYZP3He1HBvfDCcWgdw2oWnhZJHVCpZ9DvS0za/pD
 ZKU=
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="47514755"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Sep 2019 01:24:19 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 11 Sep 2019 01:24:18 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 11 Sep 2019 01:24:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KbznzX65OJxNp8mK3bCrn/etSDfNnm/r5s88Qcr7q/pX4S6kTW73i8riL6nvzhFuRx7Bc0WwKbAYJj2R6rRN5gpFMyt8asciDTjAAVGg5QpXsr05blcjdbeyWAe5fosHhWl+DVRW7HNjwiUfpjZ1XQLshrJ8I9+wq71greA4+sWHAw3k3xpOwSCIvYcwEyhWOfqqnZ0JbFlrwlnJAzrOl46V4BNmTfzIoBp7ueAn4HqNO8q8pXjQ5FU3G4q1EtpyD5mwWlb+IgcDMIVF9GK/Nd4KpCHYA5xV2qwKvCAPus/9uSx9ZyZT1gWSyHgnDqlaUaNH/61ap5myCzanVA7oiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X5MENNtYd7Nb0C+oVW0i6uVQAnAKpqkec78APXH+wOc=;
 b=BjGam/wanvB1cpR6rhC/wV0aS2z5b4YKF0GTenrBMv2ZniSJ6xRhxwZt3nCYkAC6X/pX7xw+bOC2133gTSuleTxmJirRiRRCci+Or04yxC8tIBn8XU1PtwdFPxp/Q+yBRFwC3WpZs8/2sBrKXxdeq3mnzKQaoMrXnQUkxs2dfPlG96cJu//geTyMrQzlCgmJ4e3sez4elNen9OH2WI3kSiGMrODvV1cVGfq9HxcfIHReKzwBOmHCYQBJKPlEy2gdDHNYq7S4WdgEp48caa10RwgzLbwmeFNiM+FhhU2Vp9l04YUlHqBxjly4agAyDq1T1FzQu1rxpJYCZyTdwhoHDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X5MENNtYd7Nb0C+oVW0i6uVQAnAKpqkec78APXH+wOc=;
 b=t6PI/qqu0RC2FStOhhoHLiM7eyAQ6ANdkWiJsu9lcliEaH48LfkiyYrseL3CduKWX8MTHnhvy4n0xzi0CmC8OLD+EXj+Tw8vEiqn+2h5fvWUxgrhC92PTu/0FTRAYH/3hLjLqQWCCPzAizfTvl0khbYibRFAMiZhnXGGoE/YGGc=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1452.namprd11.prod.outlook.com (10.172.36.135) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.18; Wed, 11 Sep 2019 08:24:17 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::a141:1974:9668:fbe2]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::a141:1974:9668:fbe2%12]) with mapi id 15.20.2241.018; Wed, 11 Sep
 2019 08:24:17 +0000
From: <Eugen.Hristev@microchip.com>
To: <wsa@the-dreams.de>, <peda@axentia.se>, <mark.rutland@arm.com>,
 <Ludovic.Desroches@microchip.com>, <linux-i2c@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <alexandre.belloni@bootlin.com>,
 <robh+dt@kernel.org>
Subject: [PATCH v5 1/9] dt-bindings: i2c: at91: add new compatible
Thread-Topic: [PATCH v5 1/9] dt-bindings: i2c: at91: add new compatible
Thread-Index: AQHVaHpNPpdbU+8jvE6t1yiCmfdevQ==
Date: Wed, 11 Sep 2019 08:24:17 +0000
Message-ID: <1568189911-31641-2-git-send-email-eugen.hristev@microchip.com>
References: <1568189911-31641-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1568189911-31641-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P189CA0008.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:802:2a::21) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2d39d1e1-f765-4036-34aa-08d736916fcb
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR11MB1452; 
x-ms-traffictypediagnostic: DM5PR11MB1452:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB145271C07EEC9456A5A2EE06E8B10@DM5PR11MB1452.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0157DEB61B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(39860400002)(396003)(366004)(136003)(189003)(199004)(52116002)(3846002)(2501003)(66556008)(66476007)(66946007)(54906003)(110136005)(478600001)(25786009)(316002)(6436002)(6116002)(76176011)(66066001)(386003)(14454004)(2906002)(102836004)(486006)(476003)(2616005)(11346002)(446003)(6506007)(186003)(26005)(4326008)(8936002)(81166006)(81156014)(7736002)(66446008)(8676002)(5660300002)(50226002)(64756008)(86362001)(2201001)(99286004)(71190400001)(4744005)(71200400001)(53936002)(36756003)(14444005)(256004)(107886003)(6512007)(305945005)(6486002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1452;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: uhRMZ1ZRlD0SnFZyQnbKrbsEJNhIJsbpV3OaDQxaugWvbQuO9Joxz4qWDSXZ6EZCjywOLjTsww5dPYn1bGUqKa9VW/V6yeO/NntKc2Iv/TsWem5lDcmMhsXgqZ00C8GTDxCORP+uhXahQEdvv8uhHs37eqkuCDCDuwxx2jA61LZIPDJ/89ouf5z8dhGe0V2JNQMWT/VeZf1L2P1VnwNXika/ZPkms56awWzA4xvMta3vTzn0lUbROwoWVmN3P0emTibi2evaodelN/GElVY+dqzIOOBzzpwcJi3tkjcRR/ne2ALl5aJ6ZNMx+6f+7IBczQiByxMgXIKqMqzvl3uPry0TV1GYtUbJW1NAFsBqnT0VyI+WPz8BUUq/QdP8SF0ydvfyNHsA0PjDHpaDTOanvAS39fw14f7I0MmoL/cEF1I=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d39d1e1-f765-4036-34aa-08d736916fcb
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2019 08:24:17.3469 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: H7LqELgakGS0vw8MutzOlipswI/UX0NvYaACEjGImJ2c6EFu8Ewy2gnTLF2KorZ8EKNLcthLrU0HKiIHwxLAERCItHnTGk+JbuHz0R4vc2Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1452
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_012421_535355_9CC2DE2F 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Eugen.Hristev@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

Add compatible for new Microchip SoC, sam9x60

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 Documentation/devicetree/bindings/i2c/i2c-at91.txt | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-at91.txt b/Documentation/devicetree/bindings/i2c/i2c-at91.txt
index b7cec17..2210f43 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-at91.txt
+++ b/Documentation/devicetree/bindings/i2c/i2c-at91.txt
@@ -3,7 +3,8 @@ I2C for Atmel platforms
 Required properties :
 - compatible : Must be "atmel,at91rm9200-i2c", "atmel,at91sam9261-i2c",
      "atmel,at91sam9260-i2c", "atmel,at91sam9g20-i2c", "atmel,at91sam9g10-i2c",
-     "atmel,at91sam9x5-i2c", "atmel,sama5d4-i2c" or "atmel,sama5d2-i2c"
+     "atmel,at91sam9x5-i2c", "atmel,sama5d4-i2c", "atmel,sama5d2-i2c" or
+     "microchip,sam9x60-i2c"
 - reg: physical base address of the controller and length of memory mapped
      region.
 - interrupts: interrupt number to the cpu.
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
