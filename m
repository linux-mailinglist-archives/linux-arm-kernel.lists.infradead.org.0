Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99373525F1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 10:05:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jpE4zZvePGeHE4LULYeHdya4xBO0KZiLIUAWQ5h0mHY=; b=UkIWk5Mgl59N8F
	9k694+PxHNWtFiQ7fWegH2R3lKAS3DjoIS4ljD/eOgd3hWm/jEjm+rX2aZjDSyNcqdcbkcU+qkj0p
	QYF/ymFkqCARgW7fObynETJReLx/ZrUpThJc3Mopji7U9g6+jYHVYFwO47NDFkMimXIcvAZ5g2o53
	DKV5fvb7exJb3LTDkUTzeDJ6ZyE2HYqyJ/d49u/Msb7ZHw2/NBoE4UtUkyUDNiOYfEOftCjgWOJ5R
	L7eqRi8vERJl8ipvmQYxBklk3P+vKV/l6MZv1IqfmfcxNB6puJ9xsqTmQUUnjRkh0p0lJqSsBOpSb
	F26OK7AI4H8V9F6gGLsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfgRv-0007l8-20; Tue, 25 Jun 2019 08:05:07 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfgRc-0007jO-2N
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 08:04:49 +0000
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
X-IronPort-AV: E=Sophos;i="5.63,415,1557212400"; d="scan'208";a="40294926"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Jun 2019 01:04:44 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.87.152) by
 chn-vm-ex04.mchp-main.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 25 Jun 2019 01:04:53 -0700
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 25 Jun 2019 01:04:53 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LIgaGxYEwUjArXVTQaBVKIZkFKtWXSFr5uRwjEQTCsc=;
 b=Mb2/+7dwkAknX6qvl/ryzlia+v2cs4D578FJWIvNwHxNKiGoOmpyvFr20rvqhTvZgidkvHXRAX60eVeLhbveCYfRk/tvJXC698PmMb/4MWNJWLg2IlLRlwyU+OpBL8t58gmK8AeR+DGI/36VL+L2s3IEwZh35AtrboR00bw/J2M=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1289.namprd11.prod.outlook.com (10.168.103.137) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Tue, 25 Jun 2019 08:04:42 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::6476:ace0:bf3a:322]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::6476:ace0:bf3a:322%9]) with mapi id 15.20.2008.017; Tue, 25 Jun 2019
 08:04:42 +0000
From: <Eugen.Hristev@microchip.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <Nicolas.Ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <Ludovic.Desroches@microchip.com>, <wsa@the-dreams.de>,
 <linux-i2c@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 0/9] i2c: at91: filters support for at91 SoCs
Thread-Topic: [PATCH v2 0/9] i2c: at91: filters support for at91 SoCs
Thread-Index: AQHVKyykOdofqrxHG0KAvE+qLlVUtQ==
Date: Tue, 25 Jun 2019 08:04:41 +0000
Message-ID: <1561449642-26956-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: ro-RO, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR10CA0105.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:803:28::34) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 05e8f00e-dbfa-4578-5c88-08d6f943c6a6
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR11MB1289; 
x-ms-traffictypediagnostic: DM5PR11MB1289:
x-microsoft-antispam-prvs: <DM5PR11MB128904E58D3F1DA74FF7EEEFE8E30@DM5PR11MB1289.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0079056367
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(6029001)(376002)(136003)(39860400002)(366004)(396003)(346002)(189003)(199004)(6512007)(14444005)(53936002)(86362001)(110136005)(6486002)(6436002)(2201001)(316002)(14454004)(2906002)(478600001)(72206003)(66556008)(5660300002)(64756008)(66946007)(66476007)(66446008)(256004)(71200400001)(71190400001)(36756003)(107886003)(305945005)(7736002)(6116002)(25786009)(73956011)(4326008)(3846002)(68736007)(386003)(52116002)(2501003)(99286004)(6506007)(486006)(476003)(2616005)(8676002)(66066001)(186003)(26005)(102836004)(50226002)(81166006)(8936002)(81156014)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1289;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: h9pL9MvsYVBUpdcP05WD8sjIDrsPmhq9MXZUJzK4wWzlfCjYTyP0Dm8vL0HAZFgxXyR/nEXs3Tiy3NJ9Kitb71T//nsrjXdGvg7aUGmaSs40oTXJCqPekHECLNaeARmU1bwIl7FU13NhshPnESAO440C/S2oVCxgFfm3rclmGMJ9Lp+ENw4Yhe8snnItOOVA4nt8ffYUZsnFHQTvHriXUgieWx01EbAamSCzs0cFO3SdC6X0jN4NgSLjen89MeX9dL9CDRLF/JE7IZwO0Z+EGiM2RtiEcI8jE0xvRZ6z0r1o1JRVOSuZ/cY6FtC6sWbAM5CNEMmzoooDTLiZnhxcRFqBCIft8CGchEJKfr1CP6JSMi9GH0SNBDzsGilaRoSS7avQ/UFPTo2tOwza21rm/hpfFTYWBrgpJdI0qyG5/X0=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 05e8f00e-dbfa-4578-5c88-08d6f943c6a6
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2019 08:04:42.0989 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eugen.hristev@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1289
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_010448_220998_C76A63C3 
X-CRM114-Status: GOOD (  10.44  )
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
Cc: Eugen.Hristev@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

This series adds the support for i2c filters: analog and digital filter

digital filter is available for sama5d4
an advanced digital filter that allows threshold configuration is available
for sama5d2 and sam9x60
analog filtering is available for sama5d2 and sam9x60

This series also adds platform data for sam9x60 to the driver

In this series version, the enablement of the filters is via Device tree,
as requested by Alexandre Belloni. The PCB/board specific noise is hardware
dependent.

The platform data properties keep the same pattern : set for each SoC
true/false value as it is done for previous properties.

Changes in v2:
- added device tree bindings and support for enable-ana-filt and
enable-dig-filt
- added the new properties to the DT for sama5d4_xplained/sama5d2_xplained

Eugen Hristev (9):
  dt-bindings: i2c: at91: add new compatible
  i2c: at91: add new platform support for sam9x60
  dt-bindings: i2c: at91: add binding for enable-dig-filtr
  i2c: at91: add support for digital filtering
  i2c: at91: add support for advanced digital filtering
  dt-bindings: i2c: at91: add binding for enable-ana-filt
  i2c: at91: add support for analog filtering
  ARM: dts: at91: sama5d2_xplained: add analogic and digital filter for
    i2c
  ARM: dts: at91: sama5d4_xplained: add analogic filter for i2c

 Documentation/devicetree/bindings/i2c/i2c-at91.txt | 11 ++++++-
 arch/arm/boot/dts/at91-sama5d2_xplained.dts        |  4 +++
 arch/arm/boot/dts/at91-sama5d4_xplained.dts        |  1 +
 drivers/i2c/busses/i2c-at91-core.c                 | 38 ++++++++++++++++++++++
 drivers/i2c/busses/i2c-at91-master.c               | 24 ++++++++++++++
 drivers/i2c/busses/i2c-at91.h                      | 12 +++++++
 6 files changed, 89 insertions(+), 1 deletion(-)

-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
