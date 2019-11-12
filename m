Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F016F8992
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 08:20:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q/FX+lfKFvKxvFbKV0grTSWqf4AzICvrRoG8nPvwkSw=; b=VFj0EXnQUZ3T1s
	MhiHPU3axvOMj1n9+l0S6ndXryvK/NEHKlQ2CDtNM993Dn8DmtAjQ8WgTl/bMIkoT2j68aqM3N68j
	y1yNjYc7KcxlS4RPMGnnPgn/9ZyVcNrzbmQXofK6F3xoGpeYiy5YNUnPB5CKiwwBpGzhjKITmG1P8
	+JrybHeKwiBr6iLQl35coE6d+WweoeOn7nFU3XLtTrUKzt3naYnWJP80UkDng14MM2cZAWRHZXhfA
	EWt0zJz7+mQ5kUzychYXBG1t5kOAbsRvRebCrw2AWLzvnWY21tzzjN6Xn1onETt4bk8ag538Jr4cZ
	myh424/0MDNa+ZVyxhTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUQTk-0003KC-EK; Tue, 12 Nov 2019 07:20:44 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUQT6-0001ca-0a
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 07:20:05 +0000
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
IronPort-SDR: Zh7RYqtZLKtI3uhgGcGIBLTLEq/lq99cxfnHdRUpf7qwna1CJ1GHuE4+wOewBsw5gjcTwXD5P9
 /hM2ULzwCY3gtZ65crnsyVHiMHCkkOILqi7t2IwUppvUS+u0MpZcNs4VmFZLmDMXX6szdY6ef3
 3xKWpvorDmXubYdonpP2gpW3YCZ+fJtn3lQGCi+URSfJtK8ERIr+2BT6yEc6TtB5FkGZ0xK5hK
 mzcciaPuEbvzyrrKuR8/I+sshgf2PfqR/0MDjC1LGiTZEzlr4mCjZTh0FCQYPEBqmx741tUgkg
 Ugo=
X-IronPort-AV: E=Sophos;i="5.68,295,1569308400"; d="scan'208";a="57943367"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 12 Nov 2019 00:19:56 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 12 Nov 2019 00:19:53 -0700
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 12 Nov 2019 00:19:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OK7Jlpv09K1KObPuB2Z9OA1J3E/85YbujLYh5w2JxuR9X+Ss09ISvdIyRWJ6gYs6oiBa1BF59K8QHn6AOetRLZ2WX+Fz5rTc1OIywqd9rB1FaRqoUNzoE2rnMysBdadO35h2DpzvOY5s5/pgHLdcy6fakqxdhgadmfi+dc212cS5wuMelp3zlKHrwrpYUfWO8zJdnTLcaQol8gd62Alhb2rtXcWlNkGy3zvenDke1+K527Ze6E1dITus5TU6Q7F/FoL5z1sNpw68/zcXZJnLLdDtwXX4Igj0Z0rQmaf/y+UfuMmVx6IMZcud489fWSr7B7HzJPVIFc9IK/BsuqL+bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cbH3o8zn8MHShsC4E3omfcBbORMScUHQt7Y8ETIRgyw=;
 b=ntN/zODSJ11+5feQ739o4FYqELPCAQMKPKfkbul01qibDHGx1u0RyWo/9NNq/cw7c3WEMNmUMX0c3lTp6T/x5BuTThG9VaMd8fKhcIJ+PGVKbbgETsPfq5x4ZR4ryWJFr5vFBxWWEqKaSi/dLmU3178iLBP7wU/Tm+9AMcEYgvGTeU8zqmpcY3SovHW7PL7Widg2IdyQkEG1iKhbNKS+az4gVMqLfzN+2LfKcV/r7CCpObjXnB7muoSdVZves86lLFicsH6uUfiUh/v7DyE1NXnEMOZMfWfnhu5meZ+Hao7D1rD/ZEP5hnGkxRyBBiH/+/KyOIzjvH7TLzxMfaHTDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cbH3o8zn8MHShsC4E3omfcBbORMScUHQt7Y8ETIRgyw=;
 b=YhYOCbW71YIwbjhEJXRaIWsNN3XybFmMFgjOP0lbfdYc57BCUizjDyoTVqDi/zC4qFq3oK0AMOvXJqGdlk0VRjAp+oJVd973mXhNZ8K2u100qrwaN9Mz1UhtdvAdjgBXyK2IhbbUbg6B+XIj4LY4hv711bE1M5nivnGGnXkVFX0=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1323.namprd11.prod.outlook.com (10.168.108.7) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.25; Tue, 12 Nov 2019 07:19:52 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::d594:bcd0:98a9:d2c8]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::d594:bcd0:98a9:d2c8%4]) with mapi id 15.20.2430.027; Tue, 12 Nov 2019
 07:19:52 +0000
From: <Eugen.Hristev@microchip.com>
To: <robh+dt@kernel.org>, <Nicolas.Ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>
Subject: [PATCH 2/4] ARM: dts: at91: sama5d2: mark secumod as a GPIO controller
Thread-Topic: [PATCH 2/4] ARM: dts: at91: sama5d2: mark secumod as a GPIO
 controller
Thread-Index: AQHVmSmTH5PbKLYeTkCVnPR/+Dbj2w==
Date: Tue, 12 Nov 2019 07:19:51 +0000
Message-ID: <1573543139-8533-2-git-send-email-eugen.hristev@microchip.com>
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
x-ms-office365-filtering-correlation-id: 785f50dc-0dfd-417a-92a1-08d76740b56a
x-ms-traffictypediagnostic: DM5PR11MB1323:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB132396DD9BDD07BF1D153214E8770@DM5PR11MB1323.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-forefront-prvs: 021975AE46
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(39860400002)(396003)(136003)(366004)(199004)(189003)(186003)(81156014)(8676002)(8936002)(81166006)(50226002)(4744005)(6116002)(3846002)(7736002)(2906002)(54906003)(36756003)(6636002)(478600001)(2501003)(110136005)(316002)(6436002)(71200400001)(71190400001)(86362001)(14454004)(25786009)(305945005)(486006)(2616005)(66946007)(5660300002)(76176011)(52116002)(4326008)(26005)(476003)(386003)(6486002)(66066001)(102836004)(6506007)(66556008)(446003)(256004)(6512007)(64756008)(107886003)(99286004)(66476007)(14444005)(11346002)(66446008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1323;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: c6RPvIUscYq/jFlusHZMW+K/CS60vwT9naueZVojzlu1Mw/zyFf7jeUvMfhXPCnN86rloDSdoXX6aK7JsyTQEB84qVujg4Eizeb01DD+F+fm4GCH6i7NgGNqKcP2BkthkPkIOnd/BBWpoPeedEtZDpKtTt07VGtsvy9qga6lwewUtUZ04y/gyVYVNp8X+OOS6EArlhC8gWfcUQ6WzamQro4JSu8CjjyrhUpedXsshP13dvX1bViyLRbOfKf+Lm8BDFRyLNV4fQZ3sYFxzq29dZi68ul/18p2OaO8Fr5wJ/iGnCrNtaBwoWHq8+Q+a/F6Rqi/dZQAwsmdv3JZglVIfpLQuN6hzF1l7twJyniG++WOe5jRPwye5hYyIXke5f+tyNYGrrne4CSCcOOwcWb4H8y5+wfQCa+G2zeb34P3cppPVREerQrU0rJsAbybll6p
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 785f50dc-0dfd-417a-92a1-08d76740b56a
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2019 07:19:51.8691 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ifM5tf1w0tQQb1zsB2GsAR4fHL81eoNINt9ArbwJ10Mtn8gqBaqIkH8B1/GiCljK+GMN7rD8m6kpcWlmrT1DUPB9QjPXdVVLKPPBckR40J4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1323
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_232004_089884_5632FC03 
X-CRM114-Status: UNSURE (   9.59  )
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
Cc: devicetree@vger.kernel.org, andrei.stefanescu@microchip.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrei Stefanescu <andrei.stefanescu@microchip.com>

The Security Module exposes the PIOBU pins which an be used
as regular GPIOs. The PIOBU pins are special because they do
not lose their voltage during suspend-to-mem.

This patch marks the secumod as a GPIO controller.

Signed-off-by: Andrei Stefanescu <andrei.stefanescu@microchip.com>
[razvan.stefanescu@microchip.com Updated title]
Signed-off-by: Razvan Stefanescu <razvan.stefanescu@microchip.com>
---
 arch/arm/boot/dts/sama5d2.dtsi | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/sama5d2.dtsi b/arch/arm/boot/dts/sama5d2.dtsi
index 4d3ba6d..1b6f44b 100644
--- a/arch/arm/boot/dts/sama5d2.dtsi
+++ b/arch/arm/boot/dts/sama5d2.dtsi
@@ -885,9 +885,12 @@
 				clocks = <&pmc PMC_TYPE_PERIPHERAL 18>;
 			};
 
-			secumod@fc040000 {
+			pioBU: secumod@fc040000 {
 				compatible = "atmel,sama5d2-secumod", "syscon";
 				reg = <0xfc040000 0x100>;
+
+				gpio-controller;
+				#gpio-cells = <2>;
 			};
 
 			tdes@fc044000 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
