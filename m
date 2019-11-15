Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB6BFD7F4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 09:30:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OyU7hxzx4TkhWb6GDF3Q5nT7N1NogQgwfvv0zNpsqqM=; b=vCVKDwTYYVU5X9
	ymTzcIji0ZeYxlHZLvMIXH8wMdNsdBY4KnpYTg43SOHbntIBIb4emb2XK0suhVg4sHBMNKSn15CCF
	kMQT4URRODbX40T40T64Rk0pC53OM0xkwpVScQc6pcatcxM9KZ1P11fWZNRRZyx/Ev7dyix8j70oz
	mhzkMzIdLde7jW0SPaZnJs+i/u7LlKgwhCcf1hjD0dgTv8F4B347fXZcHhFpJSa3ofCjDXoj9w7BQ
	D+ZVS4oligiU0qYuB6gxVV9+SAApCNYEEKp7cXM45vp2KRTZ+FXXpYNbaQPJMnRHEbJNodObUcUo+
	ZHCPG7KhKEV3LGSGg//g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVWzy-0002op-6g; Fri, 15 Nov 2019 08:30:34 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVWzm-0002nv-1v
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 08:30:24 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: k4XFgRtIMQ9Oy62QsRb60q1I5KVa0iCPFXtC0gu3sraLMtKoyel5UdqbNeYBlukcPXv/u6XAIK
 HoWDnHKumDMSe9Z/jrJYEKiyNAEkZI8rxqPjabDAIonK8ts9cP0rKMEOctyW58cw6cF/Yv4Nzk
 5jYTRhz62dcF7XPpFXblo/WHw36BOdPHE9/hMUBqeuvg4sDhlK+eQFgpxJwiJpwN5nPqCF3vnE
 HhGtqdHfJKpLUJ0XhcICZlJKFW+CzIEii3E32OvsuEeaIMnmN5USiNL74qV7f+zPWnsNY0sRk+
 698=
X-IronPort-AV: E=Sophos;i="5.68,307,1569308400"; d="scan'208";a="54453957"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 Nov 2019 01:30:17 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 15 Nov 2019 01:30:17 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 15 Nov 2019 01:30:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IyoGF0JcSRHQEFw9T9Y0bwCPvZBFL5JZSZms4jKiA4AyRSerD2eqJn2LIYi0bNVUZtczJmR2KoPp/lEoVNcP5ph1fWII0GKZqmsjZVlntF4y76lCLECb8R6/rq87cjdiN5ewU5VHgLADKy7SojDT1ueqgoe9LI5QPIaA1eBW3K6qtUQX0ncmI7BYmNAkivGiDOMIdzQvfJNlHG5YSKhGJzcK23sACtayc1Ke+pjcBC78WaO9Pv2tNvOvOjYQiF8XQugGLl90a6/Roq/UDMZ/UxPgHx3sIlGyhEkgYvKRO1TKadObFyvAKc1+TpLXSp1Yr/a41mQ5PdPVbJnNsK1Dug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hvK3Vb7gsUQMnOuGQN9Ormb8xgDwFzYQMWqiZ6uLioE=;
 b=FGXjOR1VScm76UOEnMK9RCWwbkssqwPpnaA8tM+JqBmTjZpRpSsL9svusT7ap8ROz6967bEOwTbvPa29AOtE3HF63iNw/IXI0MbYcxfXpAoHifr/020qT5XI8T3hfboU4yTXRE5c7ZjmWgArdGzTWWZotuZrTSv9csjGOFd7b66+UYJqllkOmuwqQ0Uy+ia+vCb6f8svXBaBcHc8PAPXZMstihHj8hW73ZmnbdRNvSRHBfbokGeEGyD3wHwKRlTZDspSO6+DZKUoRd9JW3McztjjnOhBz1cSBoXcPhXFHR2EnQC4r+84LNrR4/kjwVqrLDMi3+c4ZaxBDdcDhQCX/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hvK3Vb7gsUQMnOuGQN9Ormb8xgDwFzYQMWqiZ6uLioE=;
 b=ZXErALyet3Lg07UDlfc2V/TZNk0IVJVQFfFbjLlVXrbtbpNBLTDed2Vnltzs6/P+sKPXk51Rp4D0XRmDlIhmtyP/rUIQ7nvtc+Atpo3OX82dXSBknHlj6yrEGzMkqOar4XofJ9S6mpcBLUtL+zk3+rGLyLBBbl8k9XjvqC6ek1o=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB0059.namprd11.prod.outlook.com (10.164.155.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Fri, 15 Nov 2019 08:30:16 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::d594:bcd0:98a9:d2c8]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::d594:bcd0:98a9:d2c8%4]) with mapi id 15.20.2451.029; Fri, 15 Nov 2019
 08:30:16 +0000
From: <Eugen.Hristev@microchip.com>
To: <wim@linux-watchdog.org>, <linux@roeck-us.net>, <robh+dt@kernel.org>,
 <alexandre.belloni@bootlin.com>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v4 2/3] dt-bindings: watchdog: sama5d4_wdt: add
 microchip,sam9x60-wdt compatible
Thread-Topic: [PATCH v4 2/3] dt-bindings: watchdog: sama5d4_wdt: add
 microchip,sam9x60-wdt compatible
Thread-Index: AQHVm47otrrsXesLMUemMJFwgCT86g==
Date: Fri, 15 Nov 2019 08:30:15 +0000
Message-ID: <1573806579-7981-2-git-send-email-eugen.hristev@microchip.com>
References: <1573806579-7981-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1573806579-7981-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR06CA0076.eurprd06.prod.outlook.com
 (2603:10a6:208:fa::17) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1838e10c-a498-4bc8-1e68-08d769a60a5b
x-ms-traffictypediagnostic: DM5PR11MB0059:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB0059BE9145E4D682CF065DF0E8700@DM5PR11MB0059.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:669;
x-forefront-prvs: 02229A4115
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(366004)(39860400002)(136003)(376002)(189003)(199004)(2906002)(64756008)(4326008)(2201001)(107886003)(36756003)(25786009)(6506007)(6436002)(186003)(386003)(99286004)(11346002)(476003)(446003)(26005)(7736002)(76176011)(102836004)(316002)(486006)(305945005)(86362001)(110136005)(14454004)(2616005)(54906003)(256004)(8936002)(4744005)(66446008)(3846002)(52116002)(66476007)(478600001)(6512007)(6486002)(14444005)(5660300002)(6116002)(2501003)(66066001)(66556008)(50226002)(71200400001)(71190400001)(66946007)(81166006)(8676002)(81156014)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB0059;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HQq4cKMk3Ai/YF8fxOCc9LTCsbIPauDujM7ZMCNjTOHPs9mcqvcVoBUxvQgANqLAegIA1TbGFsZBcNJpM70UUqQ1LN4530o52Ml22ClEW6ncLWBcGnQ6aFHK6Cr6p/+Wi+tuxijiWqOsCxx8wC4Fvh7M7mGMj5ntjy1ILN+gt/rHMXhOs8YAh5lYJZXg3qQDVPc8Hg9HDbtJn7wgqfWu4V3y0tLUAE25wLJFaid8McKvd5WwiLx/8m1DCXqm765R6Nb46VFgZqIcLfvnG2YtHIoi4gl2bo1RnnO9iw/x54chQBtxGa/Lds5N8Ew8zsivS6wpihwjnuwGjP2k7t4l5Os443lqNsvCJ3lVnm5impOMjRqQVmS/CnvHb9TIe+5OFhBG48ZjEcWJxnXyKmMrD3h7SvR2/F4s0+vSD9U4lD3lqjGbZZGit0yb5YxKeHFU
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1838e10c-a498-4bc8-1e68-08d769a60a5b
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2019 08:30:15.9404 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NNS18yVCs54jJPjFI19Ercuw/B5YfaMETSVMZWEtZY75ZXmcg9cs8DxYnBTKXqgbQDf3UKw0Ej3AX0lghSuEh8C7HPHpB+60ZleAV+bdtZg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB0059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_003022_147838_8DC0E26E 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
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
Cc: Eugen.Hristev@microchip.com, linux-watchdog@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

The Atmel sama5d4_wdt needs to be compatible with microchip,sam9x60-wdt
The sama5d4_wdt driver is updated to work with both hardware blocks
(sama5d4/sama5d2 and sam9x60 based blocks)

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
Acked-by: Rob Herring <robh@kernel.org>
Reviewed-by: Guenter Roeck <linux@roeck-us.net>
---
 Documentation/devicetree/bindings/watchdog/atmel-sama5d4-wdt.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/watchdog/atmel-sama5d4-wdt.txt b/Documentation/devicetree/bindings/watchdog/atmel-sama5d4-wdt.txt
index 4fec1e3..44727fc 100644
--- a/Documentation/devicetree/bindings/watchdog/atmel-sama5d4-wdt.txt
+++ b/Documentation/devicetree/bindings/watchdog/atmel-sama5d4-wdt.txt
@@ -1,7 +1,7 @@
 * Atmel SAMA5D4 Watchdog Timer (WDT) Controller
 
 Required properties:
-- compatible: "atmel,sama5d4-wdt"
+- compatible: "atmel,sama5d4-wdt" or "microchip,sam9x60-wdt"
 - reg: base physical address and length of memory mapped region.
 
 Optional properties:
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
