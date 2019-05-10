Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F4DC19C77
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 13:23:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XLcb+vkbmbndgWwdtaWQPPtGX4Lny4Bjsbe8eJqgLEs=; b=iHV7nDRJYSjl+b
	a+71jVLGlBfxDL2Bf6ftLGrzWodSv6AwqRkGVrfFmkTk2S4Ge39CirkhzbmSUn96U6k7lnbn0fY1c
	DauU1b13FpHh86QOO90gjpVtjBL656oQrQ0g2x8V06vD2+9qwbNu0jIHHnvnF9f43sUymFM1/JEhJ
	kxic3rzRrA0UOvPWxqMHP8kB5duU4ipBiqNj4YBGYDhbarfRLRjELoeMY1Iff3FVY7xs3lRYDGLlU
	7S0WYFuHyY/OX5cxFlu93t+gHHp69PDQmoZTCiuOgTX3pcOm8PBVfc5cNE3q+uWZn7qpHsqI1c9m+
	QckknjV9wcLgLsqvwYfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP3ct-0007YE-Kj; Fri, 10 May 2019 11:23:43 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP3cm-0007X1-3U
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 11:23:37 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.60,453,1549954800"; d="scan'208";a="32481275"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 10 May 2019 04:23:33 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.76.108) with Microsoft SMTP Server (TLS)
 id 14.3.352.0; Fri, 10 May 2019 04:23:33 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1O0LlmyDZYkM6Z73Frz1BVNUWeFkBXK/TsGcKsV4eH4=;
 b=eMUFDcm6gRQb7Y4S68HMpLmAzugSdlgBNfF9LLwBwcXU2BSD0JjnDiC4HnYmcHQUTyJ8yeL8m5EUtDVWf9j229CgONeQdpOS0CRgVOfC5psu7Qu7vPNNiRPvvhhY9zJtMPtr6Sd2dV6oY5pxrg1BhrvgRgnCBEkmtJPsDzSqw9s=
Received: from MWHPR11MB1549.namprd11.prod.outlook.com (10.172.54.17) by
 MWHPR11MB1935.namprd11.prod.outlook.com (10.175.54.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.22; Fri, 10 May 2019 11:23:24 +0000
Received: from MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::f01a:9325:7a65:cdb4]) by MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::f01a:9325:7a65:cdb4%4]) with mapi id 15.20.1878.022; Fri, 10 May 2019
 11:23:24 +0000
From: <Claudiu.Beznea@microchip.com>
To: <mturquette@baylibre.com>, <sboyd@kernel.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <Nicolas.Ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>
Subject: [PATCH v3 0/4] add slow clock support for SAM9X60
Thread-Topic: [PATCH v3 0/4] add slow clock support for SAM9X60
Thread-Index: AQHVByLHeJKlvNrK60qOrSCn+DEu0Q==
Date: Fri, 10 May 2019 11:23:23 +0000
Message-ID: <1557487388-32098-1-git-send-email-claudiu.beznea@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0701CA0031.eurprd07.prod.outlook.com
 (2603:10a6:800:90::17) To MWHPR11MB1549.namprd11.prod.outlook.com
 (2603:10b6:301:c::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5e7c9a22-cb5e-4e77-35df-08d6d539e9e3
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:MWHPR11MB1935; 
x-ms-traffictypediagnostic: MWHPR11MB1935:
x-microsoft-antispam-prvs: <MWHPR11MB193550D7E90626DF7C4BCE98870C0@MWHPR11MB1935.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0033AAD26D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(39860400002)(136003)(366004)(376002)(199004)(189003)(256004)(52116002)(478600001)(3846002)(99286004)(72206003)(68736007)(26005)(5660300002)(6116002)(66446008)(110136005)(107886003)(2906002)(4326008)(186003)(386003)(6506007)(66476007)(64756008)(66946007)(102836004)(66556008)(54906003)(2501003)(14454004)(6512007)(73956011)(6436002)(2616005)(6486002)(7736002)(305945005)(53936002)(66066001)(25786009)(316002)(71200400001)(71190400001)(86362001)(8676002)(81166006)(50226002)(36756003)(81156014)(476003)(8936002)(486006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1935;
 H:MWHPR11MB1549.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Yg6Sde9l5p1RhWndYADdDoAk/qCUmCeE9yvNw8Vc/ZnxWkVbyxv82YC7E8durjDDqDSJ+bUb4IYAyd2o1DcXukcur+77qv17Mlj6Ay10kOLXaxpPu1KXPMkeYC2nXQsNpzvDB/GBEIYpFYPypD7NQEJcX44jx+c+Wl72DsGzavWIYiR4XcLLQlbH6jN3fgugkAyWDozq5UkkW2SyDl2lxFj8myVjghNUscGlpmGByf5Ger33v2LLC0VOOBDSHtviVfEXvR+9wuBzRIZVFoKuV/0h8tiRjwTKry8fh0EjxcF0apXOK8YBXJAQPmgsx1YjoGjlusVdOHg/S2HVmaUO+UXDaPWOj9nq4JO34B0GiupnKL3QilQcOg23GUy5a5FZfDP9OuIBY2ItIlTnebWM0hjmopzdMFNC/rnROI9tZsU=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e7c9a22-cb5e-4e77-35df-08d6d539e9e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2019 11:23:23.9392 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1935
X-OriginatorOrg: microchip.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_042336_221599_246143F9 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Claudiu.Beznea@microchip.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Claudiu Beznea <claudiu.beznea@microchip.com>

Hi,

This series add slow clock support for SAM9X60. Apart from previous IPs, this
one uses different offsets in control register for different functionalities.
The series adapt current driver to work for all IPs using per IP
configurations initialized at probe.

Thank you,
Claudiu Beznea

Changes in v3:
- add patch 1/1 that remove bypass code in the code specific to SAMA5D4
  (there is no bypass support on SAMA5D4)
- adapt review comments
- register clock with of_clk_hw_onecell_get to emphasize that this IP has
  2 output clocks MD_SLKC and TD_SLCK (I considered not necessary to
  introduce new constants to be shared b/w driver and DT bindings; if
  you consider otherwise, let me know)
- adapt dt-binding patch with clock-cells changes (thus didn't introduced
  Reviewed-by tag)
- renamed struct clk_slow_offsets to struct clk_slow_bits and the
  corresponding instances of it

Changes in v2:
- split patch 1/1 from v1 in 2 patches: one adding register bit offsets
  support (patch 1/3 from this series), one adding support for SAM9X60
  (patch 2/3 from this series)
- fix compatible string from "microchip,at91sam9x60-sckc" to
  "microchip,sam9x60-sckc"

Claudiu Beznea (4):
  clk: at91: sckc: sama5d4 has no bypass support
  clk: at91: sckc: add support to specify registers bit offsets
  dt-bindings: clk: at91: add bindings for SAM9X60's slow clock
    controller
  clk: at91: sckc: add support for SAM9X60

 .../devicetree/bindings/clock/at91-clock.txt       |   7 +-
 drivers/clk/at91/sckc.c                            | 180 ++++++++++++++++-----
 2 files changed, 145 insertions(+), 42 deletions(-)

-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
