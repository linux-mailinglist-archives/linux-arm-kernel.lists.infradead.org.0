Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79434F8991
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 08:20:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I7NCpddeFFyeujALrmg72nmQWWsmly8JTtKylUJGk3A=; b=aieZRV6TDpgScC
	96/tT1tvAy5fyBXcAmv/RMBiZytZZljWrzDIEB6bWQRCAHA2qMbCQZDTX0Ff1UCfCPjI9xRZ8Mq6p
	zhnMyjjAkcmYYO1OORvK7p5wdl/JO8rHZCSdquJg4usXdh2KdSxlCBxp8wn3IKTU3uCPE7bU9XUbT
	cWgTe7eG9Po6E3mklfOG77o3hg38xC/EPQ5d2hyU7DvxO/N+MjBlel0vzUlN/smBdMpzLiJp44XVL
	627o95lFj3NVsYXaBQ+M/xIvDEvHW2WQNMhUMDVTZ0i4X6VfBULwcDxsqkfa1GLedlFaTv0f6BOrs
	U/vNY61KTz3IE/N5qGxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUQTW-00031S-FQ; Tue, 12 Nov 2019 07:20:30 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUQT1-0001ci-S4
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 07:20:03 +0000
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
IronPort-SDR: gse+QrJjRFeY45ZEmXAeOEJwM8PKFN7qLBJyz2SBAnYdYaRKeGKWMAkWRosGp787i5OOXCOnsq
 G2gZTAJg77fcMMaEAbc4AvK9LLYErTDFOfu4i3idfFpCbt5R0snCBnW736c8l1mNAeE4509pP7
 vdfReBvPxWNH3R9lPNtwNMsXV5sxpEZeTEm7/zzp3aYVXtJgKCHSgVG8Q/I2TE/mGpN/meZnSu
 v073c4jZ5w9frqqshZyGdn0DNty5lPgQFXN0BPkp2NA0cAwenTPccogQ4ObzwKJ0ERZBVsp+N2
 oos=
X-IronPort-AV: E=Sophos;i="5.68,295,1569308400"; d="scan'208";a="54997976"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 12 Nov 2019 00:19:55 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 12 Nov 2019 00:19:55 -0700
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 12 Nov 2019 00:19:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hnp4fkOhF8nj6appXM7jixHWw43F93lDYJeI3/S5E3Cwz1PkWbPgA+J17OpLTS9MxXkPxjzDEhdo1LAoX9TD8nyGMg7NjzQD3p1Aa8U74quW7j1+Lh++NDXQJHeAV+LGd0k4n1um1I3v8oUiNg8WEnRYM5YavebNz76yyg+bokDEFbnilkWSNQym47AH2LGWEdvKS6+5+Xdqsnx6U3CQ46VQ0rC/fEg8HQ+Xiijj2WjS0z6AsAGzUsoy1XuX2Ul8hds0k/u+a5lJ8zhlq24BL6TLNw6s2NtHhcQHufBLY8/LTLg5DDVBLXEuMkoCmY5Vcb89OS7Gyjb9nl39LdMD8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v4zvpzU1dHBaau5xgFgQfv3ykGoS2xg815guwz/k3pM=;
 b=Oo4gQWbaNITLyxY+e/z0jw1x01lQU1yTHLoCrhcWDo2pNrQiJ0FrCrxK86jWXA25wfirXIj3AtfupA/YmXFi7aajyzhYzGcENAN+2/i5eHN9GywIbHNxkgHnjONeJWeW/8MSIke2esMGdyAp9FioGgXINwgUf2x8K78xsusRXFkbr3Tp7uLbrF7et9u6ZLsUI6yET8UCAnujJz5vDeHmpxA0yAsZ5w9zMJszUwP1hY3tRPbeC6oYAmleLR6RRC6XQk/D6S1+pw9fAXq3b72HmkDLnoS0yaNyetqwJpqN7N2LchZlQ7pAphxkdP33xGpBJ9yE520B5HME+jBv9tQmTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v4zvpzU1dHBaau5xgFgQfv3ykGoS2xg815guwz/k3pM=;
 b=AAmV6DdcsKiR1qjqwocAWciHpaFnp57yFJ82ThRtuyTArA4N03b1FKHklxqO/1GJh2O1Sk9J/ZRHcoXK6AW4D6oK7MBZ/wvXzsMfBXvq2gOPuWGOrGeRgUcMJj5ol5w0h4HTE9KtQ/irQt+BszxboPzKwdlBuD5+w0EEAajhv+s=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1323.namprd11.prod.outlook.com (10.168.108.7) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.25; Tue, 12 Nov 2019 07:19:54 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::d594:bcd0:98a9:d2c8]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::d594:bcd0:98a9:d2c8%4]) with mapi id 15.20.2430.027; Tue, 12 Nov 2019
 07:19:54 +0000
From: <Eugen.Hristev@microchip.com>
To: <robh+dt@kernel.org>, <Nicolas.Ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>
Subject: [PATCH 3/4] dt-bindings: ARM: at91: Document SAMA5D27 WLSOM1 and
 Evaluation Kit
Thread-Topic: [PATCH 3/4] dt-bindings: ARM: at91: Document SAMA5D27 WLSOM1 and
 Evaluation Kit
Thread-Index: AQHVmSmUmdWh9wC/W0i+jBXSiLSCpw==
Date: Tue, 12 Nov 2019 07:19:54 +0000
Message-ID: <1573543139-8533-3-git-send-email-eugen.hristev@microchip.com>
References: <1573543139-8533-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1573543139-8533-1-git-send-email-eugen.hristev@microchip.com>
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
x-ms-office365-filtering-correlation-id: 42cf0db8-8509-4b29-f58c-08d76740b6b9
x-ms-traffictypediagnostic: DM5PR11MB1323:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB13233E34B584F803760AC229E8770@DM5PR11MB1323.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:366;
x-forefront-prvs: 021975AE46
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(39860400002)(396003)(136003)(366004)(199004)(189003)(186003)(81156014)(8676002)(8936002)(81166006)(50226002)(6116002)(3846002)(7736002)(2906002)(54906003)(36756003)(6636002)(478600001)(2501003)(110136005)(316002)(6436002)(71200400001)(71190400001)(86362001)(14454004)(25786009)(305945005)(486006)(2616005)(66946007)(5660300002)(76176011)(52116002)(4326008)(26005)(476003)(386003)(6486002)(66066001)(102836004)(6506007)(66556008)(446003)(256004)(6512007)(64756008)(107886003)(99286004)(66476007)(11346002)(66446008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1323;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QdBm/QcNZjeYKRIh6JScMtY6HkOmwZA+r3p9N3BgByIofpem5mRVQIwK8TMv4FvBpRKIqZqxZy+pvFgFBXyrnJ0aLHkln44dDMZlz3bIdkK0XBDQjJnCZDkKuUPrymwRJn5lTYBd63subNbsxPShbJRUeJJF99+bQGrSHVRQb9DtqfbO/3+RnpPoGwR72LXf7ca6JubGwDbh+pdAb+fiOyNJDIVAqEKbFVCrQzZWFQzsw980iUbXalsgBvszcdYtQKtYQPE8rr41YVwfLKqbTHnhhEWCceGjBPToitob1g8mwzeziNt/Z5vGJP8H8exqDpS5oTMT4rRyqd3gP7pPx6+zGLFLSEL6Y/IZL8ZPHTh1XXM17FG5ijQAeA8q06bpVyJtisz7ZeLoXk7ifd8x4aXmxiyagRMFrlOLFU6Rwmx5KVP0JXamylHpsISK+fwb
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 42cf0db8-8509-4b29-f58c-08d76740b6b9
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2019 07:19:54.2070 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w8uiWCqb5LPBgDtygiJ5pkotxBFeZCQqfefSPh2/Idg7PtE1H8sL5iMrVCqJkDv7fntUBEFMr0U+VKLqH1n46GUTQjihkVi2vS/rKaxSnEs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1323
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_231959_942652_59029A5C 
X-CRM114-Status: UNSURE (   7.35  )
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
 linux-arm-kernel@lists.infradead.org, Eugen.Hristev@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

Document device tree binding of SAMA5D27 WLSOM1 - Wireless module;
and SAMA5D27 WLSOM1 EK - Wireless module evaluation kit, from Microchip.

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 Documentation/devicetree/bindings/arm/atmel-at91.yaml | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/atmel-at91.yaml b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
index 6dd8be4..7b512be 100644
--- a/Documentation/devicetree/bindings/arm/atmel-at91.yaml
+++ b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
@@ -52,6 +52,21 @@ properties:
           - const: atmel,sama5d2
           - const: atmel,sama5
 
+      - description: Microchip SAMA5D27 WLSOM1
+        items:
+          - const: microchip,sama5d27-wlsom1
+          - const: atmel,sama5d27
+          - const: atmel,sama5d2
+          - const: atmel,sama5
+
+      - description: Microchip SAMA5D27 WLSOM1 Evaluation Kit
+        items:
+          - const: microchip,sama5d27-wlsom1-ek
+          - const: microchip,sama5d27-wlsom1
+          - const: atmel,sama5d27
+          - const: atmel,sama5d2
+          - const: atmel,sama5
+
       - items:
           - const: atmel,sama5d27
           - const: atmel,sama5d2
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
