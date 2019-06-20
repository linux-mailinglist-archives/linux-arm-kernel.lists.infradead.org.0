Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F374C81F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 09:16:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VtHXC6eWkZkxsj/RkXbkvxlndkSuCmSDXxApZjkN1NQ=; b=sBYypE/fcD5np8
	QiFZLI6TrdJpYNwragcHKWBfNO28O7CnBdgdXcKjGREjqo4eOnZdiCoM1f/Gr72hpssiI7/LLmc6m
	q2LXCpqIz2Ua3iqWT89JHSRMNHT4Dc759jlApShXCpUJiQpc9EFz9Z2pcWz0BI6Hc0v+fA6q13e45
	3NYnt6E3n/6XxAayf8GiohQ69gLUXO+7KNe9QmL3hJqHZmd51xaiCW71m2v3pomLLWsD9LpS0Jfj/
	qkfY9d+PjWN3eqmT2FpvgLsnYQRjlQnmSTnfV8ol76emOutmNPoda4c74kpwKpMC3BY43WK8VqIxK
	Mr2GCdHdY95l9bm+V4zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdrJK-0002y1-J9; Thu, 20 Jun 2019 07:16:43 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdrIt-0002x6-2h
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 07:16:17 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.63,396,1557212400"; d="scan'208";a="38329911"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Jun 2019 00:16:12 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.87.152) by
 chn-vm-ex01.mchp-main.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 20 Jun 2019 00:16:12 -0700
Received: from NAM05-BY2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 20 Jun 2019 00:16:12 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aZiTGsCspM4ZRXpu3cgeu+2Bg+Vf4IZs//RWk877eZo=;
 b=jP0BqJ2ziJrjpGCZsay5Uzz0sdRIOBBUaw1FVtFQBsk0RJph+NbmJmf4A5MLtx3b2HRxNouKX30KYQg0K6VeY71iLp/NdSv3MtPeF4ABerv0Bmg2oNXWa2nhOzk9Vzc9dcOhfKwKT7iag2Kh5xPOqKJ4fgaOZ8EOWRo4TCOaNzY=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1802.namprd11.prod.outlook.com (10.175.87.8) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.12; Thu, 20 Jun 2019 07:16:05 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::6476:ace0:bf3a:322]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::6476:ace0:bf3a:322%9]) with mapi id 15.20.1987.014; Thu, 20 Jun 2019
 07:16:05 +0000
From: <Eugen.Hristev@microchip.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <Nicolas.Ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <Ludovic.Desroches@microchip.com>, <wsa@the-dreams.de>,
 <linux-i2c@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 1/5] dt-bindings: i2c: at91: add new compatible
Thread-Topic: [PATCH 1/5] dt-bindings: i2c: at91: add new compatible
Thread-Index: AQHVJzgGMmYrS7k2UkW+U3UbXypBkg==
Date: Thu, 20 Jun 2019 07:16:05 +0000
Message-ID: <1561014676-22446-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: ro-RO, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P195CA0054.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:802:5a::43) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6ee68f66-d65f-4236-b5da-08d6f54f284e
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR11MB1802; 
x-ms-traffictypediagnostic: DM5PR11MB1802:
x-microsoft-antispam-prvs: <DM5PR11MB1802BD3B685D6F16ADB6DB7EE8E40@DM5PR11MB1802.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0074BBE012
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(136003)(346002)(366004)(39860400002)(189003)(199004)(64756008)(73956011)(305945005)(3846002)(66556008)(8676002)(71200400001)(8936002)(81156014)(81166006)(66446008)(186003)(36756003)(110136005)(50226002)(2616005)(476003)(53936002)(102836004)(71190400001)(52116002)(14454004)(2501003)(107886003)(99286004)(26005)(316002)(2906002)(6486002)(6506007)(386003)(486006)(14444005)(256004)(66066001)(2201001)(68736007)(66946007)(6116002)(478600001)(7736002)(72206003)(6512007)(4326008)(25786009)(6436002)(4744005)(66476007)(86362001)(5660300002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1802;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: TTMVmsnNKdI2XkeaUQf2i90NhdcP3sxsiQjjAAhXUUe/cT9oMfcUT0iI1AWK6YdpkBsq607XNweqba0/ydYGO3gqMcEZW3kor2vu0WmIVF23pVjyd/YZQiPN1/53+vTxRW2uCynr1LxfIY3Cssco5LSYL18Q0eJCGPzyLkP6qAXeuCZ00PiyyXBU9dfmhwgSHVFRrIG84q5r1zacAjJ5gWnWYJCxjTZ/fypq5i1qaPyV3HGWYtcCTl6qik2NP+GUN1Bse9xr+4eq7+phj6V3cwnM6mH/rqfdicxiEWZEmP+lCmrnhzJQgg15R/UFAKBu9lKBC86/tCMlceDdM1YKbUGl2Nahcu5hOPha8D+lLGVoRo2BkXmC3iVE4MYssUY5x3T7kHe3VlnQIW/aVfFxhbGW19uoHvD39FpBrXfG5lY=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ee68f66-d65f-4236-b5da-08d6f54f284e
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2019 07:16:05.5009 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eugen.hristev@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1802
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_001615_312495_F2C599DC 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Eugen.Hristev@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

Add compatible for new Microchip SoC, sam9x60

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
