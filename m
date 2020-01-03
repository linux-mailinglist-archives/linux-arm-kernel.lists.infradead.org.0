Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C32CD12F65F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 10:50:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bzYky6F08HaFFK3zAa/SJluqHo3PlaCcttvGTGInibY=; b=rtnaSiUEm19x/O
	IpXnBRDO/H0i81pg/bxCyUcJwnG3Ni1PGZKm3lSM/lZd+WN6yKN5Ooby0CEwEzlFXjUeK7W06g+yQ
	NQA+P9IRigiIhZoeKu2ZFjR1bfZWA3UnUN+L0IbklGcsmeKRp8DnFUtkuow6EVT1Gs0vzdBlO4pHt
	GuUgWkvg5GVR7wkGB9PTzUHlZmQDBPVjrKYTOQMkVh43ulQeOAUS198u7lBhPuzgnNn0rQfRRhKNJ
	YP8VZLsRFKD/EpYpr6AdxIG7KR7TkUCBsd6qrGgCL0QZxMMEIj/lfQyD3ApLxlTb9LFZ5mq6h39lr
	X1k34FB6ez1yOMZamu+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inJb9-0001AY-68; Fri, 03 Jan 2020 09:50:27 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inJZy-0008QO-8q
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 09:49:16 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Codrin.Ciubotariu@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="Codrin.Ciubotariu@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Codrin.Ciubotariu@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: lt1iGyig/hzavnR2EK27QnIpAGY4nevCHUp1wkPyz7h8hBlQvGYx4Jz0+bmNKn78B/BwrLPQQC
 +7LTF/XLFEjalYlrLfpjogcT58ctyCubK3TI1QeCz3e2JbEaEga6qRauV/S5RpPxlPEGnfOK8u
 Hyv8rQf3v6gq/nxNBOuJVtRSJp/dcDwcJpNNpQNTahMnHEfo9cEJEoh4Wfg4YoQWk5T9VGBhgE
 hVddm0DS2jyYQQ9rV5dpJJFZY9fcp1CMVwR4cbaCvBDXi+EWVvZl7U2UDW3uOCWL5bUo9LPcgd
 mOM=
X-IronPort-AV: E=Sophos;i="5.69,390,1571727600"; d="scan'208";a="62108718"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 03 Jan 2020 02:49:09 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 3 Jan 2020 02:49:09 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 3 Jan 2020 02:49:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VSAzN+aJsjopcTYfmc6OieQt205m9FnDfGKH+ODM3meKd3fpiKwqvhaud5ZDUWH1zHBZ5fwKMKTtBoZbB6pV/Zi2s6RLuTTfp3GgvSNRCsoWxrE4wdSUbZRCKohr9tuq/JgQ6UNZ44gR78U0fvoVtSAGsdwP3FHBU/ei84ri2DZTTbf2qyJv9yGzDRIRtci2OxKc7cQ0iJ6SR9am6S27anu4nxQveQIVJidGHu60O73F5HB8+2PN81xppgaZ/2SrmiiKGhkThcaYlifPvmZbcfI9pJFKzZRcDrCYQxRT0SGLzgvJ7mZvh+i6ISrhjXEWZgPijMhF3t1LHW40Yyqdxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tSoxW5u6A/VO0Yp3B5/E7fMNKvUBbbFfgkOXZYFAi/A=;
 b=RbG2OkUUjck6Uhh5/HggHTsDuVVCQSJQVgvW4OZeCSWTrBpv+uneYTD6yAvqZRtr9Q4hcq3DFdDhpukJStzRi5DrN8dlX5Iq4N7KfkNZhIO8RG+47AlTHWaV2efOyHx8uqQwYyeCIkn2AuFLf2IWSDeu2AqIU0uSHAhWyDRAnWLfI1gR5bKa12zEW5S3DH3zNmzdtwu4VQkSjLSB9PZjoPPKgfz658+xkd8Vy4m/iY0tf+ogF4BYSWrLpm8+WrUytTxeNI8FNA8sGg4ug9Iu+bvEd6ctvhGs0MNx19bQmHedAlKfZDAPIZqclAVuyOetaYJHLSsLzWgQQLBt2utzVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tSoxW5u6A/VO0Yp3B5/E7fMNKvUBbbFfgkOXZYFAi/A=;
 b=NwEdZrfCKDyX/X93qfz0HGCg7OL2OTGap4fgBI+FFdfB+yNK2s//AHdsDBx+x3S3141OQ8qalFye3d3T149lVe/2j/g1X/RkUuBUgfJcV20pMiPyGOZR+8aQ5Q1pdSDb5MRl+MunzAtlLm/q2YNti6moFE0py97/WGW8F2Onfjo=
Received: from BY5PR11MB4497.namprd11.prod.outlook.com (52.132.255.220) by
 BY5PR11MB4322.namprd11.prod.outlook.com (10.255.89.90) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.10; Fri, 3 Jan 2020 09:49:06 +0000
Received: from BY5PR11MB4497.namprd11.prod.outlook.com
 ([fe80::6189:c32:b55b:b3fd]) by BY5PR11MB4497.namprd11.prod.outlook.com
 ([fe80::6189:c32:b55b:b3fd%5]) with mapi id 15.20.2602.012; Fri, 3 Jan 2020
 09:49:06 +0000
From: <Codrin.Ciubotariu@microchip.com>
To: <linux-i2c@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 0/6] i2c bus recovery for Microchip SoCs
Thread-Topic: [PATCH v2 0/6] i2c bus recovery for Microchip SoCs
Thread-Index: AQHVwhsJN8+B8BrAj0ahyw6tlDm+jg==
Date: Fri, 3 Jan 2020 09:49:06 +0000
Message-ID: <20200103094821.13185-1-codrin.ciubotariu@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [188.25.143.200]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dfbb639c-0e07-459c-94a6-08d790322c5b
x-ms-traffictypediagnostic: BY5PR11MB4322:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB4322091B9189AC94058D6000E7230@BY5PR11MB4322.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0271483E06
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(6029001)(366004)(376002)(136003)(39860400002)(396003)(346002)(189003)(199004)(36756003)(478600001)(4326008)(6512007)(6486002)(110136005)(54906003)(316002)(5660300002)(107886003)(186003)(66946007)(66446008)(64756008)(66476007)(66556008)(8676002)(86362001)(6506007)(1076003)(8936002)(76116006)(26005)(81166006)(2906002)(91956017)(71200400001)(81156014)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR11MB4322;
 H:BY5PR11MB4497.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Az6ffLFFZinIRtC8Xae2ZvfoGwcoqEU3mU+1MkkA9+MkmwipojhvxBb5KLx8Fc8hO3xTgkpkTlOEu6Mt7qkTpBXR1TbsitqjxpWt0i2YT2R/7Z1AZtwFjBltDefMLTTCU2pUNA/jKxUF7RgMQgEhxm4hx1eTF+MkIbTIo6kXOVplIVIHsKTJLHdZab4ffN27OhRu6cEOudJk/HWt7fE8+wZ6QUJ+V+Oi4m6Hsyq5pAhbcUuMDHcsdseYilhM6vDkmlrFC80H/VedZKOCkbZZr/V6jyBc4e32I3KRqxSTmMx/lPtzausffoOmeCr2xgfjpNNNVZ6EnT3GPNQDmBXncLymzc8W6roF0sCoksysvq/jQS2J4yi/soLE+LXKB+wuzTDovG9Km8eJ2pZ7OM5XFpYuxQk5vtYNUIQHlGluta6JgSptsZtRk15rrV3K/Zxh
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: dfbb639c-0e07-459c-94a6-08d790322c5b
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jan 2020 09:49:06.1829 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eBEaXFFTSSX3RFMt67Xm90CoNaxSCdDnBAa2QnXD3n1oZW6IlZHEpEN0RjgNh8hd0HgouJwfb67M1JnzlfUxVXUT7GkwGVZBeBynJRw0FOU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4322
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_014914_318672_9C92238E 
X-CRM114-Status: UNSURE (   6.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
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
Cc: robh@kernel.org, alexandre.belloni@bootlin.com, kamel.bouhara@bootlin.com,
 wsa@the-dreams.de, Ludovic.Desroches@microchip.com,
 Codrin.Ciubotariu@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series introduce the i2c bus recovery mechanism
for the Microchip SoCs. Some SoCs have hardware support for
recovery, while for those who don't the i2c-gpio bus recovery
mechanism is used. Updated the corresponding dts to add i2c
gpio pinctrl. The bus recovery is configured for the sama5d2/3/4
xplained and sama5d27 som1 EK boards in dts.

Changes in v2:
 - integrated the HW CLEAR command patch;
 - call i2c_recover_bus() after an error occurs, if SDA is down;
 - added i2c gpio pinctrl in sama5d2 xplained and sama5d27 som1 EK
   boards;


Codrin Ciubotariu (1):
  i2c: at91: Send bus clear command if SCL is down

Kamel Bouhara (5):
  dt-bindings: i2c: at91: document optional bus recovery properties
  i2c: at91: implement i2c bus recovery
  ARM: at91/dt: sama5d3: add i2c gpio pinctrl
  ARM: at91/dt: sama5d4: add i2c gpio pinctrl
  ARM: at91/dt: sama5d2: add i2c gpio pinctrl

 .../devicetree/bindings/i2c/i2c-at91.txt      |  10 ++
 arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts     |  33 +++++-
 arch/arm/boot/dts/at91-sama5d2_xplained.dts   |  33 +++++-
 arch/arm/boot/dts/sama5d3.dtsi                |  33 +++++-
 arch/arm/boot/dts/sama5d4.dtsi                |  33 +++++-
 drivers/i2c/busses/i2c-at91-core.c            |   9 ++
 drivers/i2c/busses/i2c-at91-master.c          | 101 ++++++++++++++++++
 drivers/i2c/busses/i2c-at91.h                 |  15 ++-
 8 files changed, 254 insertions(+), 13 deletions(-)

-- 
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
