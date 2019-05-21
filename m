Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC1BF24C62
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 12:11:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TB7ChLty0NN0Wz/186H8VbZ10WpiP18jFjwzjEjYlqQ=; b=mkt1tPZp6g/qNO
	xZXRjojoFD+x7yjJwxLluEMbcBmpn9CD97kjNueakoZLDHtC3O5Y6J9j161wZqMysHfNTB0d9X8Bm
	pay7m3fjDEOQNxcsP/FbgaIArPy03sKgxS4gamjKqXlTgeUZsWYtme54Jk+xRl274xoyImyxyi0fN
	PTbHA6Z2hrrFBw5O3+3J1hT7+gcUbxy1pEUzQ+KKCL85+3kzMwiUVy4ETbegzL+bEGRwDU8zbUJrt
	lQ0SZwb1y1r63zyION3iSJ7zA4dtB4S0WHoma+V5slq+6LXhGNw98bcJrGbmG6wp5Br+8Qc3DeSYR
	0+3/yHJgxOYL9To+2Azg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT1kG-0005zl-U6; Tue, 21 May 2019 10:11:44 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT1jx-0005rW-9g
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 10:11:28 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.60,494,1549954800"; d="scan'208";a="34203048"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 21 May 2019 03:11:21 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.76.105) with Microsoft SMTP Server (TLS)
 id 14.3.352.0; Tue, 21 May 2019 03:11:21 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=68M/FY+nUw7WESU5pU5vZ3ng2vQhHkhfsJX4tSNLKcM=;
 b=Q4toLZly0khkWSn439UXBnLsjPI3pUM94rCYYFOtDmBBh/3TD8qYa4ONQ2vHczymE5jnGAEM65CbvZaf+Bp5TUjRKtmWEfkp85Vo0KrFFKAKqLrNEXJsIyzKTQZTAlHMzMs/wgewj+a03VLTBi1WRMcU3NkPV/FmtOmVFhkbRA8=
Received: from MWHPR11MB1549.namprd11.prod.outlook.com (10.172.54.17) by
 MWHPR11MB1949.namprd11.prod.outlook.com (10.175.54.136) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Tue, 21 May 2019 10:11:19 +0000
Received: from MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::f01a:9325:7a65:cdb4]) by MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::f01a:9325:7a65:cdb4%4]) with mapi id 15.20.1900.020; Tue, 21 May 2019
 10:11:19 +0000
From: <Claudiu.Beznea@microchip.com>
To: <mturquette@baylibre.com>, <sboyd@kernel.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <Nicolas.Ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>
Subject: [PATCH v4 0/4] add slow clock support for SAM9X60
Thread-Topic: [PATCH v4 0/4] add slow clock support for SAM9X60
Thread-Index: AQHVD72I8ZRJakzxaEW9m+CIsi0IRA==
Date: Tue, 21 May 2019 10:11:18 +0000
Message-ID: <1558433454-27971-1-git-send-email-claudiu.beznea@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0254.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:8a::26) To MWHPR11MB1549.namprd11.prod.outlook.com
 (2603:10b6:301:c::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 12c155bb-6f04-4684-b878-08d6ddd4aac5
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:MWHPR11MB1949; 
x-ms-traffictypediagnostic: MWHPR11MB1949:
x-microsoft-antispam-prvs: <MWHPR11MB194929C60E2344A12EE8113C87070@MWHPR11MB1949.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0044C17179
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(396003)(366004)(136003)(39860400002)(346002)(189003)(199004)(66446008)(66556008)(81156014)(486006)(66476007)(102836004)(14454004)(2906002)(64756008)(316002)(73956011)(72206003)(26005)(476003)(68736007)(66066001)(2616005)(186003)(25786009)(99286004)(50226002)(66946007)(52116002)(6636002)(2501003)(81166006)(8936002)(6436002)(86362001)(386003)(7736002)(4326008)(110136005)(54906003)(5660300002)(3846002)(6116002)(6506007)(6512007)(36756003)(107886003)(14444005)(256004)(71200400001)(6486002)(478600001)(53936002)(305945005)(71190400001)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1949;
 H:MWHPR11MB1549.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +4WJX2+fL/B6OMr/u1bZK46DOx4f1XNXb+R5AxMI1oLk4TidjF1/plNmgdAXYtRnbo6H55bo/hKDo9XD+ovmbnkZ+Th8VsxYZ98gWY+mQ/hdNKy3J/zxIb+KUR4uNhghx91jT2VEAq/XHGcu7wo3SI/fGyonh658D+jQxhIcAJy/Uo2TF2koa9TcSRZm4mEXJgjB72O3lcpveE2urIepOH5EDjSwFXjiWSuKe6Q7V8rtb6kEc2ArSfg6SR9/GGXEIsHqyz/dZoKCO//8UnMbNsXbLrv3Ikdi3FlJzuS0LOP5zv++WB32VSkmTy0ZfCWkVwnBjqOEr0kgzCN4ClreNcLOjBG/oEcJ7vuTeotNOKCUVHQiNSZiA1mCwwRjLPLbynxQfriRYWtWR/3iK/K5VvCLej/fkItzCyof5aDx4es=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 12c155bb-6f04-4684-b878-08d6ddd4aac5
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2019 10:11:18.9555 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1949
X-OriginatorOrg: microchip.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_031125_504586_D3397044 
X-CRM114-Status: GOOD (  10.28  )
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

Changes in v4:
- remove macros which were used to access IP specific bits for control
  register
- collect Acked-by, Reviewed-by tags

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
 drivers/clk/at91/sckc.c                            | 173 ++++++++++++++++-----
 2 files changed, 139 insertions(+), 41 deletions(-)

-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
