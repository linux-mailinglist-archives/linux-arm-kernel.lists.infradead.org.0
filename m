Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D62FB116AD1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 11:20:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ac5Ccy8JEAfj6VIpdDld/wKiLHxW7UIB5YlYg1t8y+E=; b=YMkJBwgU44x+Ae
	j/an3CcAN5q2ldCT9f2xMCrJEWas3Lk+Mc3He9P0a9TSY/c9hvsqmkkVx65KnPE6W6ikPhR73NMdY
	0IPCqk9830DPoxKt+dSYsEluStnXKnKFYxjc1hgpvlT66LW+JlvPzlNg5SymSqKdR4BNu7dxbdW5h
	LIQ87GIezaQLglc2FKUxwgqc0FR+DbFSxGZ3B3wZqtjD9xD9Xitsnp1Bp7QdYgVddah0FrBtL31r9
	U2uFagzqZlZEMHfSAfTcy2rWR1mDFCnBZ3IEZBmHijwcQBg9lKmzpKRbmjh2zSXocfGZFFMbIXKbz
	Syge5OHxH9+23D8EQGtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieG9I-0006Uv-BP; Mon, 09 Dec 2019 10:20:16 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieG98-0005qL-Ae
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 10:20:08 +0000
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
IronPort-SDR: 5FDSl85f2CXvVARcUUSirV8VY3bzX5AHMaI6rrixP38YNtFjN6IEVzk7Pf+26N8olaymha24il
 8o8qjw0EsbTniX5h5TCP2YEr4xqiEpt55C6LaqHKGx133DKWWFLITvyblxRn2nkMcIMratJyu/
 f7pk77iIZ90SRa4mb4yjzlzOds1OlweOKB6ioxf2Z0peHnC2NBSEIokNgKkWNdLzNg2Bkrq+Ft
 cjaIZBwWujy2oTTpfMeaSQrkWkd0mfuwRRFNf9ehr9lFgN5XwXLBVS85Tbkh7x/tT+C05/NCNH
 ueU=
X-IronPort-AV: E=Sophos;i="5.69,294,1571727600"; d="scan'208";a="59168067"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Dec 2019 03:20:02 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 9 Dec 2019 03:20:08 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 9 Dec 2019 03:20:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IyIYfiPkVcVbaCEGTHlxW5M9D5yMrdY72WKjsZu7FrRfKTMGriBzj2uAEo0np1YVTdKXice8CnThupNee4NPULpQbZUICf4LKqCueWnpkjNyc6RR0xVNbg6T69w31kzpyJf2uDLXn7cNw/GJiWkYz2ahrxxvPzyw+v0EcjMeTZkoBHn/kMQU7SBiL2Zr65xnWioOJv84S7gawVcpRTbVQBgi+mwZ2ndv6A6+g9QgdxB+NSXAvgLB4Uze5PWYhCZisE1h2s10pitBnPWGwLZ6RElekB8Wbfe4t1QG1Emf2NBKkQjvbWjOtHK0KoU5sK4ouSuFJSoruHDqIamOdgPJ/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ObjAsqBk9VJQmlAtNk1mXbpqa9XBIRBORx2nOVoAF5k=;
 b=VtsPExs6oNFQ9u8J2Z+ihD6XfXLoxPXPB3GlLrx+fDdj/FZDZSNadFi8GzK1pbdYw26RKILCE9boi6J6j38IOr/7OnnYrg5WWSFNT3Ng4xIdxV/zRxsHBJ5K8NK/6inbdKbUJlPMmwu+lovdDoI5tW3M9+v+nTIPg+hYDklAk57uQvRibPAFd39g/PZv6CTOYHkWtCOHUT08d3qgY1jDIHpKTMUi4aoAL2g6jtO1jQnpQS1ig7/fcrIfRSp0NpdRbGyljjhXBRCDy09Du5LMs/fbDWz77s/700pFYOYjJ2L0y8v2dgRvRVrbz9I2xrnu9vmIRCxBpeqJWNbdmQg6Fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ObjAsqBk9VJQmlAtNk1mXbpqa9XBIRBORx2nOVoAF5k=;
 b=pPpIQp04ur8uovWKT2efaD4aVkXUC8RpnAW2Hyu8y4JTjsgFKS/XV1nuTfkHZusAFlAKDu67LYpK9AJxHXlx9ThxbWJt8/cB/LuR2le7AxsiVOOtoBEJSXOYVqjUzy8iNKycVbqtRyHG1qQifNoj+AHXyMiexltaHOLGqvlpHmk=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1884.namprd11.prod.outlook.com (10.175.91.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.17; Mon, 9 Dec 2019 10:20:00 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1%12]) with mapi id 15.20.2516.018; Mon, 9 Dec 2019
 10:19:59 +0000
From: <Eugen.Hristev@microchip.com>
To: <robh@kernel.org>, <Ludovic.Desroches@microchip.com>, <wsa@the-dreams.de>
Subject: [PATCH v3 1/4] dt-bindings: i2c: at91: cosmetic formatting of
 compatible list
Thread-Topic: [PATCH v3 1/4] dt-bindings: i2c: at91: cosmetic formatting of
 compatible list
Thread-Index: AQHVrno2hU8yvhgFCkq7LP8iANQ2iQ==
Date: Mon, 9 Dec 2019 10:19:59 +0000
Message-ID: <1575886763-19089-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR02CA0039.eurprd02.prod.outlook.com
 (2603:10a6:208:d2::16) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 898059fe-3e61-47ed-b061-08d77c915889
x-ms-traffictypediagnostic: DM5PR11MB1884:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1884D4C59BF2E109D9B27237E8580@DM5PR11MB1884.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 02462830BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(396003)(366004)(39860400002)(136003)(189003)(199004)(54906003)(110136005)(36756003)(186003)(2616005)(26005)(2906002)(316002)(6506007)(478600001)(6512007)(107886003)(64756008)(66556008)(66946007)(8676002)(81166006)(81156014)(71190400001)(5660300002)(71200400001)(8936002)(4326008)(6486002)(66446008)(52116002)(305945005)(66476007)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1884;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kq/64wLDMfnbG9putrFStwkuPQWjlpoRspWIIdMIgc5vYtL6QcPY6+vWe1kVt2gkhajMdN4jav9Ip4bj+0ZYl1gBZdGM+rC6yMfVW5kHX2AXn1hexcyZmdi0gI8yy1GbyXhymCmY5Egc+sqdmTIsMv6W4za35dURCvXgtSU4Ai5U69UMWdXWq3+GngNo6JBktZKV4SkWC0fb1sPltpPZw8xoH+pUDbHsCBK4zEmBmbLxLYsz5XNsaF3MXErcKdCnbnhh09w7x3mjkhFBhpZj7sK9nNSVYUMtghU0u2MI1nFyiLj8+/hfDOLBdPD4xPJzswnnEjIBw+MdAIJU7Hi++9a6lSA1CRPAG2ge0J+4pxIiTU+e14Pe4LqdEFa8D/B1vnJNDKaZaIXeKTUJ/pW8ATA47tsa8zLWBsCstNKVMIYkVpyEeeFDGmhGnlDpuzaC
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 898059fe-3e61-47ed-b061-08d77c915889
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2019 10:19:59.6643 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5hFyaKEcen+anbdM8xCec7BLoLJnjybsV9RzP/VTr8UBn3F1ifYhjJQXPk6d/rerMBqSwfHqpxHn9QE46l0lZhGqS5Kb8WXwaf5kwCjrSmU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1884
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_022006_472552_0B10D717 
X-CRM114-Status: UNSURE (   6.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
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
 linux-i2c@vger.kernel.org, Eugen.Hristev@microchip.com,
 Codrin.Ciubotariu@microchip.com, peda@axentia.se,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

Format the list of compatibles with one compatible per line.

Suggested-by: Peter Rosin <peda@axentia.se>
Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>
---
 Documentation/devicetree/bindings/i2c/i2c-at91.txt | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-at91.txt b/Documentation/devicetree/bindings/i2c/i2c-at91.txt
index 2210f43..d35cd63 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-at91.txt
+++ b/Documentation/devicetree/bindings/i2c/i2c-at91.txt
@@ -1,10 +1,16 @@
 I2C for Atmel platforms
 
 Required properties :
-- compatible : Must be "atmel,at91rm9200-i2c", "atmel,at91sam9261-i2c",
-     "atmel,at91sam9260-i2c", "atmel,at91sam9g20-i2c", "atmel,at91sam9g10-i2c",
-     "atmel,at91sam9x5-i2c", "atmel,sama5d4-i2c", "atmel,sama5d2-i2c" or
-     "microchip,sam9x60-i2c"
+- compatible : Must be one of:
+	"atmel,at91rm9200-i2c",
+	"atmel,at91sam9261-i2c",
+	"atmel,at91sam9260-i2c",
+	"atmel,at91sam9g20-i2c",
+	"atmel,at91sam9g10-i2c",
+	"atmel,at91sam9x5-i2c",
+	"atmel,sama5d4-i2c",
+	"atmel,sama5d2-i2c",
+	"microchip,sam9x60-i2c".
 - reg: physical base address of the controller and length of memory mapped
      region.
 - interrupts: interrupt number to the cpu.
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
