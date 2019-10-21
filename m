Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB80DE792
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 11:14:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9JHzCoaXy6GOyCSeFgfc+59DUYqxCzoy9iJyfSSZAu0=; b=D9zZGENpTahzIc
	kXFo6Ne03QAUhesxyi37cNXE5yIhI0VWPbdHaoRhThkxdpjmYeiCpvcMiRDUAJQMoYsRT7n9yNn7p
	c4KR7jx9WIrQCPMUIoACaqVawU6wDGtTooBiCc/E0Y8zfBwCckayDWvjnzc+MjeT5cifcttJpDr9C
	R2yd1Q3eZhhrKHzwGv7pVX15sblsHCqs+KwtVPEuCksLjQ4hS9y7GHokv7jz7xUHqYD9YwQsrEk/C
	Cjxad8m1lWnvI5Jo9ZJqrmu24olYye6aSRIYN0+1/Ty61JQWw1uCWICLagZtFQSsqcahZdqHk40/l
	Kjt74ba7d+W5ySOtP3ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMTlc-0000oE-Cy; Mon, 21 Oct 2019 09:14:20 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMTlS-0000mw-Ce
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 09:14:11 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
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
IronPort-SDR: HI5qgrkZ+8vAenkWfmjt1iNkmiXexHwCDjvwS5G2vNiqShJ1c0eNifSqhjuPDjJUS5KdilccYM
 hNPWiLJhSMC3zY3ilD6V6BH4SNOA5h18EBFhpvCkXQccjVCstXPhm8VFxiRJuSGxUa3jxmWrFk
 ZjZ6u9nKl+WxXFTkjwQwZp5Bzds31OG7S4kOsWg3M3J+s61qutY6J5treocRk1gecZwIE+Xef7
 ajMOhYGsKoLRvyD258se7o3hjBGgHucXY2vsQRvPPzda5zJMa8o+422PrxHzRjpeuRCQf/t/Da
 CrY=
X-IronPort-AV: E=Sophos;i="5.67,323,1566889200"; d="scan'208";a="53431029"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 21 Oct 2019 02:14:08 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 21 Oct 2019 02:14:07 -0700
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 21 Oct 2019 02:14:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EiWRdOKSCUH82kFr7uLnWI9m39Uv1tQ91S2D88oWsZ2FVrXp3yyzpwUO05WBnQoamFbQM2p8LqQZxsB1kSbXL/JGZ7WG/Q4ZFTlfcnOkJ0YfSHiaC/IXq8FlR0ffEemejFbMFnOi1AfMG8SekcMxJOxVxdDuXalaZOkQ6weVGOlX/qYhn+iH1k4bF6AJiZdkABmjICOunOrZgGL9uDnv4dyJCTue5YCwJZFNZOONkftdbM9sRiAIJuDQNgBut/Hde9kwfEKnGUHLQ63r0vn5RVZBe6b9iV0k3p3NkJjXE0bbtpJAUcBYrb+XocPhnl7d6p6WDFXYQ4rpuI9Mu6PYGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OwagQRiB6L5mkNmqgjI3QAt79NN9Bh20rRQ7Fgcccww=;
 b=nO0of1jaPtqovXfmVXvVNHVkUO50K2FF+pHE/F/fuYh2XGZzWX/J0FPSZLcUGriab4FXngIogupXI4pqHfXgEDMwNMEWL0COxCpax3X2VE8DCAxEka4keRvQ5nUFn+VccMkVE6fANhzoyuuNe0VjfzHmWixDrwHkM+vMf3jXHNm1dw5e1eXkeTqlhLaiYE9TCOjz1UXwrEntspMqDM21UondwRtiLHtSApTf/rJm9kKkFWQ3aVn969BRyGnElLlLvgUiBa2Xme7Jl0b/se8/UHSAIptJm7PGxYhM81CJlUp/zOC3DN1UmbxQDzLGUoVLe4CPUcRHLw3LhBy2MsleVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OwagQRiB6L5mkNmqgjI3QAt79NN9Bh20rRQ7Fgcccww=;
 b=RXzCveYbQ36M0HFW6AqRpIhG1ZJKQqbBjtZrb36kyTKbUn+jUQRy0xsAGHb3Zs0BLamaqQbPGYEsggAZ4oUZqPK/OgiS8FoQpdu25u+dTKXjBbIOq0r5Fs2GUpBWGuXCaK7ShUCtweT+Fo7NtbvIw9GdgaBj85Go6qYl2TC2VJo=
Received: from MWHPR11MB1248.namprd11.prod.outlook.com (10.169.235.138) by
 MWHPR11MB1551.namprd11.prod.outlook.com (10.172.54.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2367.20; Mon, 21 Oct 2019 09:14:05 +0000
Received: from MWHPR11MB1248.namprd11.prod.outlook.com
 ([fe80::a96a:d3d4:a05b:b88]) by MWHPR11MB1248.namprd11.prod.outlook.com
 ([fe80::a96a:d3d4:a05b:b88%2]) with mapi id 15.20.2347.029; Mon, 21 Oct 2019
 09:14:05 +0000
From: <Eugen.Hristev@microchip.com>
To: <wim@linux-watchdog.org>, <linux@roeck-us.net>, <robh+dt@kernel.org>,
 <Nicolas.Ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <linux-watchdog@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 1/2] dt-bindings: watchdog: sama5d4_wdt: add
 microchip,sam9x60-wdt compatible
Thread-Topic: [PATCH v2 1/2] dt-bindings: watchdog: sama5d4_wdt: add
 microchip,sam9x60-wdt compatible
Thread-Index: AQHVh+/j8oG3HVW4rU62VaHGXhzu2A==
Date: Mon, 21 Oct 2019 09:14:05 +0000
Message-ID: <1571648890-15140-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0701CA0042.eurprd07.prod.outlook.com
 (2603:10a6:800:90::28) To MWHPR11MB1248.namprd11.prod.outlook.com
 (2603:10b6:300:27::10)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d0f0f018-2c48-457e-99ee-08d756070563
x-ms-traffictypediagnostic: MWHPR11MB1551:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB155133F9B9F266262D363E70E8690@MWHPR11MB1551.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:669;
x-forefront-prvs: 0197AFBD92
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(376002)(136003)(39860400002)(396003)(199004)(189003)(71200400001)(71190400001)(5660300002)(110136005)(99286004)(14454004)(2906002)(2501003)(316002)(478600001)(186003)(386003)(25786009)(52116002)(26005)(6506007)(102836004)(7736002)(305945005)(256004)(14444005)(6116002)(3846002)(81166006)(81156014)(66476007)(66946007)(66066001)(4744005)(8676002)(2616005)(66446008)(2201001)(86362001)(64756008)(66556008)(4326008)(107886003)(6436002)(6486002)(8936002)(6512007)(50226002)(476003)(486006)(36756003)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1551;
 H:MWHPR11MB1248.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 49OVuRvGNLjwTSe9JMxNNosTCfLxZ5oju/ZsCdAiq+hPzjysgHH4V5iPLq1Zj95L492ulaOYCH7N7eSzn6onn+Kd7WnAjI38CJcsSDkQBZA2IHuuUcRtmXBezdRDcH/TPc5BpDNwvC4XBWHuTXWKhXn1Exwk90qMMV5M7CD2oKnvY5cJexNglGINq0Z/JXy2AwhZxO3meXoEcQb/mX8f5sbsIdf9Angmrgrmd7zwp3Bc5Q9vbitYqUpfBC/5OiieTLqEwJAAgKSm5ai8fWzer9Da5dUAP42FDBHfGlxdg+r+3Y9i4mBYLh6JNaSvXZzgr/+ZKSRHTcgy/ilZHrf39FonW0we7vWeKDxNJRmNXzvzq9pHa9e+Hf0tpvl6UPGQEfxPDJY9PxrkB+XuACc9Wls8UqfR/nKmRlBQJrpRy0xkvmuZKddJ1WYKJeYbTmTN
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d0f0f018-2c48-457e-99ee-08d756070563
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2019 09:14:05.5276 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FOS7bD5uF9A7fwrGwHG5Q//nPccgndRcqK42ZeU1bu5/Xh4MfTwNo/kQAJfkeFvVxhI8JC0QP3yajohPZXjXSrIyRSnfCS4uFnkf99uyYOw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1551
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_021410_464090_A3F165DD 
X-CRM114-Status: UNSURE (   8.77  )
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

The Atmel sama5d4_wdt needs to be compatible with microchip,sam9x60-wdt
The sama5d4_wdt driver is updated to work with both hardware blocks
(sama5d4/sama5d2 and sam9x60 based blocks)

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
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
