Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB897AF7D9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 10:26:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oPzn8xhXmR02zZpWpXFsjmsVxC444Yl4cclyq+xrx7k=; b=t8+srprZiO3sH/
	pQbTU0jM8a1/Jpopaz1NmkB8SFgKnxg6hw7Puxf9moZVxJU0fhu1s9ui9HzgqQl0McVhHSCXVsQUQ
	0s3tjmJeexO7OAmGU9BvwZQxPTXWZX/4Pz3d/vDCRJIClrkQJio5aZu6D+cTuwpt2uLbcUBRaeldh
	+KgT2O46iZ/n72FibpFPY8G2Qmm1pnyTzao4gcmRlZqxxh9+P4JnsH9i0dYr8H861i8eq2rkUn/jy
	yjUXEtyMrr++FT5oD3HtZDoBxQshupsv8haNNFYaKU9iZzL8FrlFQxBgW8ILC/wB1/ATvCErjpzhd
	/Td0FjBeftCI1HO/rJUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7xxa-0006tp-Bx; Wed, 11 Sep 2019 08:26:42 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7xve-0004EL-58
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 08:24:43 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: pIdJ9mkEooxzjlDELIIZMdn5fz2Res3EIf/jUjP7NSP7BxWndryJy0qRm4E3+nAhMHr4sQ2enr
 hzvveFBq58bJRLsQ4KS//NTQP3F+x/Cf1w/CUNzLl3nqDuyhfObx2A0pCKvCSq0EE+Np81v3iS
 JUfFgGDpinZR3X10+b483FwY1I4/NuVbs3ugv61v6cyiIr9DUG2ibcwoZIsztmxjScF5o7s630
 ZZo49V9qjldiYkEaGKQpHvpa5jx3ruM0HHhNFme3KAVfpPpWgENmfVTGrWbQpE7u3nKJ+MBf4F
 lb8=
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="47036045"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Sep 2019 01:24:40 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 11 Sep 2019 01:24:39 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 11 Sep 2019 01:24:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XZHh/VVJn3KKXe+NBRnQabA59TkmWE9mfcw9LQcZ2VCCTCoJwjfm4T9V+Lx3Tx7mh2htvCgWYtCewf1H/tuSZQ93WlZBRk+FP/l1re4H+e+UBSiuVeHJONnG5VSKwlLvbtqyTmdoi+qt9ca9dYBvm27QcuPMYU4GCWmn65MGcFEm3wG/gmw3ENut82eJVp4tcPpGOs6uFhGKDYrkArWbHCsxH72JZbPSMevq3GWsPppRHo1QZBVAe06dmMcQSuiDVqnCbweq2MZ6KNN5qFXxRDk0i+mwI60ULPZMnGoC2z/0ObijoPKQlMFzhrAYWLjeO35EkFGYfU+eIO7o7NCocQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lpQwiIxQ/TmQ27nLRpfXe/hbJKYOjyGveN931UB9ROs=;
 b=iG7Uzj13fz7nylxwzaVSruUFLw8+BvaNaVbrrDwzVEnu5rbZVxNpx/Px/N+XA9Kyx7U8hKl6B64MXw8u333bximfk+7h6LaNEwa/Xtj/PPKMCQBvD9tLZ07CXXR7rfIymszwABxk+dJkUZDRMdmeJrXo+EpTpV+m9QGIQrNnTzGcXrvSwlduLld+2uJJqVQHfdWE3sdQAinIdm/ag3ddtNKvJ5+qNKZRi+9loH8bFpwAtXQIcbx7k7HjUq2I1RXb1RjZoYFNt71otXCbom4NzzbYZHkWdaNjsTdl1XMq3YvL3VCClbw3amohoXTzpTJo/gwJj7LqxMbUXyRraQfjaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lpQwiIxQ/TmQ27nLRpfXe/hbJKYOjyGveN931UB9ROs=;
 b=ePXcoW5dTSMJJ1+5RzDY25/HK4lBLYSg6R3EpmzRaarO91EDS8jZkfkvnuvTlcY13gyYQXyHUx4yrIFwNcCJ0XWU+xbCPVmwIyliKxcDUY4c7YrWVsrfKI+/X6kW5wXxdx9YPUgqDJWhol+yH+nKqLeQz9k2LSSIfWwLDeQ7ldM=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1452.namprd11.prod.outlook.com (10.172.36.135) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.18; Wed, 11 Sep 2019 08:24:37 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::a141:1974:9668:fbe2]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::a141:1974:9668:fbe2%12]) with mapi id 15.20.2241.018; Wed, 11 Sep
 2019 08:24:37 +0000
From: <Eugen.Hristev@microchip.com>
To: <wsa@the-dreams.de>, <peda@axentia.se>, <mark.rutland@arm.com>,
 <Ludovic.Desroches@microchip.com>, <linux-i2c@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <alexandre.belloni@bootlin.com>,
 <robh+dt@kernel.org>
Subject: [PATCH v5 8/9] ARM: dts: at91: sama5d2_xplained: add analog and
 digital filter for i2c
Thread-Topic: [PATCH v5 8/9] ARM: dts: at91: sama5d2_xplained: add analog and
 digital filter for i2c
Thread-Index: AQHVaHpZizwa+oOgGUChanb3VVtwpg==
Date: Wed, 11 Sep 2019 08:24:37 +0000
Message-ID: <1568189911-31641-9-git-send-email-eugen.hristev@microchip.com>
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
x-ms-office365-filtering-correlation-id: dff9160a-dc2c-43bd-9e34-08d736917ba8
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR11MB1452; 
x-ms-traffictypediagnostic: DM5PR11MB1452:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1452F1EB5DC0C1A84ED3DC83E8B10@DM5PR11MB1452.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1079;
x-forefront-prvs: 0157DEB61B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(39860400002)(396003)(366004)(136003)(189003)(199004)(52116002)(3846002)(2501003)(66556008)(66476007)(66946007)(54906003)(110136005)(478600001)(25786009)(316002)(6436002)(6116002)(76176011)(66066001)(386003)(14454004)(2906002)(102836004)(486006)(476003)(2616005)(11346002)(446003)(6506007)(186003)(26005)(4326008)(8936002)(81166006)(81156014)(7736002)(66446008)(8676002)(5660300002)(50226002)(64756008)(86362001)(2201001)(99286004)(71190400001)(4744005)(71200400001)(53936002)(36756003)(256004)(107886003)(6512007)(305945005)(6486002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1452;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 9leJnsO9GDaMNSdPo14XhkWjv2/r3lFaLF4b1CFLBEU3TFQxjclV+Of0mNlWQaND+FJFygw1ssWvRpMe8XtgRpRPFlRk8XA2mZNip8e9pdTXqu+AMSx+A/wGt+k5del77p5gZ3dkCxozjHU1r0lDq8cG5p0MSDroGkgOCXAnX+XNy9YvioaqE93BN35k7H0W3lbE50LXKtSsZWdTJhl95QhqV7k+nZ9SfztsiLeHnyaPZLoEJbh0Sf0bDQ6A0qmurzs8hf8u5E3epDe6fsXA+zYoYPmd8UhFBGidleyPLrNidImy1aG8gf9A1+Iq9maY9RE9YX8QZ5E5bSOG8mswV3ZTa6tXtL4FLXhGsane1mCuogQ5CJF+Ge7YSvftaqhCTH9fmi+Y7cnOs3DBcNERIZloaVOWpT4rr10YfQPC4AA=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: dff9160a-dc2c-43bd-9e34-08d736917ba8
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2019 08:24:37.2678 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 84PO10ajv4HVRZcgkko/eqMPvJFhqw9PDVZUfxoNx6D5wySlBEgtoBZmIM1kBlQHJ82h88W4z1NhFtxjrY63WJZuee33SAuaPhmY9KmCdE0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1452
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_012442_403465_E9C53E93 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
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

Add property for analog and digital filter for i2c1 and i2c2 nodes
for sama5d2_xplained

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 arch/arm/boot/dts/at91-sama5d2_xplained.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/at91-sama5d2_xplained.dts b/arch/arm/boot/dts/at91-sama5d2_xplained.dts
index 808e399..9d0a7fb 100644
--- a/arch/arm/boot/dts/at91-sama5d2_xplained.dts
+++ b/arch/arm/boot/dts/at91-sama5d2_xplained.dts
@@ -334,6 +334,9 @@
 					pinctrl-names = "default";
 					pinctrl-0 = <&pinctrl_flx4_default>;
 					atmel,fifo-size = <16>;
+					i2c-analog-filter;
+					i2c-digital-filter;
+					i2c-digital-filter-width-ns = <35>;
 					status = "okay";
 				};
 			};
@@ -342,6 +345,9 @@
 				dmas = <0>, <0>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_i2c1_default>;
+				i2c-analog-filter;
+				i2c-digital-filter;
+				i2c-digital-filter-width-ns = <35>;
 				status = "okay";
 
 				at24@54 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
