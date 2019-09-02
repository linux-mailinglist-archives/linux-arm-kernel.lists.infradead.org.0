Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF65A53D2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 12:16:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KndYRrsw4ZO6AYHIq+wq0vCW4kxW8naCK6bkOxTCRw0=; b=f0bpZ5kw38Zxmj
	Fra1J6QOMXjSIVhojYfIfkOuDR3ZRI/KJPbsHGOJIrQZ79iwnjO/dCZxWnCSQ7J0CKuYpAxlA71JK
	/FvHx3j+hKpUCAqw7pbm8M30Mn741/13cXjs1qehc3XkGmYe63x9RfTy/QXxjywDT8qVjMpXHDPp3
	n1tjp7ARZsCR8eOIPbrzAqbID+Af/zXeOGkrM5y4TvlYgmRmTQT9dmIpBrlnlebEfiVtpISeKcW4R
	ALMof8Y3tp4ou4OGSOAEaW8iXoUgOy8i7woLbC2+BT1jn/Kovu/RsPxDuK7imYxXTn1nR0mQzCwUR
	pBdzM4x6/VLj35vehnqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4jN6-0003VW-Du; Mon, 02 Sep 2019 10:15:40 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4jK8-0000pm-6m
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 10:12:37 +0000
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
IronPort-SDR: m5RY+GLbXJvIaTLMaxlQALX4Ol7snzG22PBA9uUIryszP7MfynjuTKRx3PV5jtTql09rBlbWsm
 1ADe9ePE7FHSg49hm2MrS9+svMD1aA+HiUbPvgPmgS+CFc4QGXIC1dfhQRoQargd5bhDsaFCqT
 hI2PJ+sj44JRM2Qg8NXhtMoKF7kekJT2EUnGgwGn7A/zOJ0qQjanFfxtyMGFtOG0lxfngyuifb
 UTIOHixy96bVS+a70JZDIVlVORVyQyhcjPjF2iTHCnh2rB5Jn+KtX2K0r1sghVfma26pNcVbxj
 0RI=
X-IronPort-AV: E=Sophos;i="5.64,457,1559545200"; d="scan'208";a="46450697"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Sep 2019 03:12:35 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 2 Sep 2019 03:12:19 -0700
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 2 Sep 2019 03:12:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K4qz7ZgEyLOQll8tkHSAbivILtsuJ/0d8WOfmiGhFaLYPEU7LpSAvlWb3BmoZP5c+/9fdO+J4V23TyCOUY7h5ye0kUf4iRo1U4wCQT1jWd0s1R2lcQWxUHmJEEO4PzbkYxy8WM5yFXEdVETscWQXX8bZTPh6wG42cZQWvMEeiddS+0+0Q+dDSnO9KLqG+mmZxEEyA3yAx2D69i3wyDYsWLBRaCSfw2m7jgj6jcyAWir9gD33A2nE2IIooC169xsBRaLNd5IzNOeXWTK/j+bEby7WjuR/qo5QE7P9wVxeIdNQbChTfNRi7qUYkyvHwfTHyH0LpJx4TxzzjmswqDX/iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4ss3P2Pqfb0OfYejPQPPSenVCzZHUTLM3jCnz3a4E5c=;
 b=JT94TfKOME6FiJZCFt78IBCCK7OPd6y4v/IknMSVFyM5f5LDdzfVLxXkO4sbU367R0VZSSMf1JF4gnpFFIN0x7+2k5jPPl5xHcH8+wh4gevGkW3TACxVBrM27BxNT2MBysgDKsdxxFzSUHrAne6ufXKjdxi8x+YNwrcBndA3MRH5UuxlVqCU/a0lzICSgv3sIqCmq0Zt+S1LP/eQQlyZP80/w7kEE6dUJSfU/hRu94cD7TxDuQZwAEeTPYGbH7v/qvmBiyUSyIsx4KrpkCtowWUqoTq0lv3VdfyMK6iFJCZVqwTpWFooHiTlozm+5klFboW44x24gicPkCBP7qTn1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4ss3P2Pqfb0OfYejPQPPSenVCzZHUTLM3jCnz3a4E5c=;
 b=aaufq+BtZrSsLu5DzESvi7UBvJ5+SVK/JNVyHiglXlIJ/+plk3DDe6KR25UTC+Eqk4qLeXG5qDy0+3U3LWatsmmKY4w6ilmHOK6DHwIVvo85ILC12J1DS9Tkd5m7/D0WmQwLI8wCJZ2OgBVDFps+e6sKzTEXVoO86r+G/Eq3W9A=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB0044.namprd11.prod.outlook.com (10.164.155.38) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.16; Mon, 2 Sep 2019 10:12:17 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::c457:dc57:6e6f:f4f3]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::c457:dc57:6e6f:f4f3%10]) with mapi id 15.20.2220.022; Mon, 2 Sep 2019
 10:12:17 +0000
From: <Eugen.Hristev@microchip.com>
To: <wsa@the-dreams.de>, <peda@axentia.se>, <mark.rutland@arm.com>,
 <Ludovic.Desroches@microchip.com>, <linux-i2c@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <pierre-yves.mordret@st.com>,
 <alexandre.belloni@bootlin.com>, <robh+dt@kernel.org>
Subject: [PATCH v4 8/9] ARM: dts: at91: sama5d2_xplained: add analog and
 digital filter for i2c
Thread-Topic: [PATCH v4 8/9] ARM: dts: at91: sama5d2_xplained: add analog and
 digital filter for i2c
Thread-Index: AQHVYXbmTLWzeQdSL0KUZDoxxKvPvQ==
Date: Mon, 2 Sep 2019 10:12:17 +0000
Message-ID: <1567418773-2427-9-git-send-email-eugen.hristev@microchip.com>
References: <1567418773-2427-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1567418773-2427-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P189CA0018.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:802:2a::31) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cb14f686-6b22-4e56-5411-08d72f8e08a9
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR11MB0044; 
x-ms-traffictypediagnostic: DM5PR11MB0044:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB0044353032ED37CDCF53F5ABE8BE0@DM5PR11MB0044.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1079;
x-forefront-prvs: 01480965DA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(136003)(39850400004)(346002)(366004)(189003)(199004)(2906002)(66446008)(2201001)(66556008)(66476007)(64756008)(8936002)(305945005)(3846002)(7736002)(66946007)(6512007)(446003)(6116002)(86362001)(36756003)(5660300002)(52116002)(2501003)(11346002)(476003)(2616005)(256004)(6486002)(486006)(50226002)(14454004)(386003)(6506007)(53936002)(76176011)(186003)(99286004)(66066001)(81166006)(110136005)(7416002)(4326008)(107886003)(54906003)(4744005)(71190400001)(26005)(102836004)(6436002)(71200400001)(316002)(8676002)(81156014)(478600001)(25786009)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB0044;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 6FAV5Ox8sITGSo3b2pAle0MpCaXz5D13RkrPZMq3s48JqmgMfn/I5y+uSJNWsTyqSoBSOkJBZrwPMJVcQwH+/x8OuSD5QyEfNl4Ivcx/sylTPOqtAah3TaSeP+IrHpuTcJCPWbNCIEbuNuiFRFHn4ggDLZwPBtEVim7CB6zKfKAEI2NGfRekpDlPE1bWH9yXEQ7fLqujTTcXGdfAIHEjK9hnsAC0WZRsI2kDZIngfMpuZ2wLISg4Vxpt+W2KwvEHm+8uDZ61tACAcKdnaxNowq7B+NSIHwohc7Zm3KXjERO++c5HHxDiDto4VhMoe4/xw68c2sUfqgbznKEJtIoV4JDKZ/cI6w1C/AI+o88R+c5XNl7jaxndCa0T7ca6MyA6jR34OBHTmgO3h9R1K0Oz1dgAhnSAMZyIua2Uei4EDLw=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: cb14f686-6b22-4e56-5411-08d72f8e08a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2019 10:12:17.5869 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LqS9+HAihW+VDcYiWqj2bnYp5MdojF+yevgGxd44S5j08FaUnIGa44CMGAbxdHSKi57bLO0v33xdGEi5sohObVGw5V4aDzwMWpBkeLirTng=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB0044
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_031236_325213_604552B8 
X-CRM114-Status: UNSURE (   7.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
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

Add property for analog and digital filter for i2c1 and i2c2 nodes
for sama5d2_xplained

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 arch/arm/boot/dts/at91-sama5d2_xplained.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/at91-sama5d2_xplained.dts b/arch/arm/boot/dts/at91-sama5d2_xplained.dts
index 808e399..2083585 100644
--- a/arch/arm/boot/dts/at91-sama5d2_xplained.dts
+++ b/arch/arm/boot/dts/at91-sama5d2_xplained.dts
@@ -334,6 +334,9 @@
 					pinctrl-names = "default";
 					pinctrl-0 = <&pinctrl_flx4_default>;
 					atmel,fifo-size = <16>;
+					i2c-analog-filter;
+					i2c-digital-filter;
+					i2c-filter-width-ns = <35>;
 					status = "okay";
 				};
 			};
@@ -342,6 +345,9 @@
 				dmas = <0>, <0>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_i2c1_default>;
+				i2c-analog-filter;
+				i2c-digital-filter;
+				i2c-filter-width-ns = <35>;
 				status = "okay";
 
 				at24@54 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
