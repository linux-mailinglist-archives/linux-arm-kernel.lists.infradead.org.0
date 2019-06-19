Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8214B304
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 09:25:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vjoiPg8RdFDXpE98KSnaSUuHMow24Nw2779m96EwWTs=; b=F9muZThOLgpPSg
	+WNJMqADGdWueP/Xiy6ivw/aJ95ciZkfiX+lDwPoUwyKxEnnidptuGMKPW53yPJ14gRmf0Z9zonfi
	EyHiE/P3KpGQ+zJwPBEcIXhKsdYUljzsLam2t9gzuHDW9uDPliitPrfFnut+6c2C1zgh1bzWcvJ+i
	0LGasj+oSw7/z2sGTBvwMuT/Lt4XqA0+49QwE4oQcr3ApucBQtfKncstqLlEhrdpYP4ZtXjePQrd9
	BXHEFkq5y9wnTY87H6nVY1LmnGKmg+IycUtyR0UPZJlnUNrkAMC6DjpktwAKOma5UfkKMdGWxe9mX
	oda1ZIt0yMOWNy75gP4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdUyF-00049V-La; Wed, 19 Jun 2019 07:25:27 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdUxi-0002cM-Is
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 07:24:59 +0000
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
X-IronPort-AV: E=Sophos;i="5.63,392,1557212400"; d="scan'208";a="34995411"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 19 Jun 2019 00:24:44 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.87.71) by
 chn-vm-ex04.mchp-main.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 19 Jun 2019 00:24:43 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 19 Jun 2019 00:24:42 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aJej5PKt9TVAm8hYABNvHeoX3jQV+mw4zAYUK0+ogMo=;
 b=sLBvCVZue/MWe7S3tZdsGzJ9O7HXHZ8j9Q1XEEh3PMMygAt/aOs++pQY9YEygbJZclXXinrmDDr5/oYy6spYQu5xtxJHms6+v89qp/y86cN3pnMe1y67bIkRZCHwBOM6ng+1MuNdWbu+LZl1BmNUvvpUtt6L5Fn8WaeIAcD0eaY=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1500.namprd11.prod.outlook.com (10.172.37.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Wed, 19 Jun 2019 07:24:41 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::6476:ace0:bf3a:322]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::6476:ace0:bf3a:322%9]) with mapi id 15.20.1987.014; Wed, 19 Jun 2019
 07:24:41 +0000
From: <Eugen.Hristev@microchip.com>
To: <hverkuil@xs4all.nl>, <linux-media@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <sakari.ailus@iki.fi>
Subject: [PATCH] media: atmel: atmel-isc: fix i386 build error
Thread-Topic: [PATCH] media: atmel: atmel-isc: fix i386 build error
Thread-Index: AQHVJnAPpYn50G6JgEmaux5BLDnFhg==
Date: Wed, 19 Jun 2019 07:24:41 +0000
Message-ID: <1560928828-31471-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: ro-RO, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR07CA0177.eurprd07.prod.outlook.com
 (2603:10a6:802:3e::25) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 401107cc-9bfc-4ff9-0088-08d6f4873162
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DM5PR11MB1500; 
x-ms-traffictypediagnostic: DM5PR11MB1500:
x-microsoft-antispam-prvs: <DM5PR11MB150027794B5B8C490BB80359E8E50@DM5PR11MB1500.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0073BFEF03
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(39860400002)(376002)(136003)(396003)(366004)(189003)(199004)(3846002)(8936002)(386003)(64756008)(25786009)(8676002)(256004)(66556008)(66446008)(6506007)(36756003)(6116002)(14454004)(2201001)(99286004)(50226002)(52116002)(53936002)(86362001)(316002)(5660300002)(2501003)(68736007)(71190400001)(478600001)(26005)(71200400001)(73956011)(66946007)(66476007)(186003)(107886003)(102836004)(4326008)(72206003)(6486002)(486006)(305945005)(6512007)(110136005)(81156014)(2906002)(476003)(81166006)(66066001)(2616005)(7736002)(6436002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1500;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 9l9N9Gbzf0gd3o4zdFBmPQni6YwBDhBuuePPFjsAp3oNDDL9aajm34rtJ3LkFoNr8q2dmgGZnABQBX4K0xfquHglexs0myt4vNQke2VDUMkRfiQYaCZAaYahlhmLPEZuqigrbzjx3jBavrbwxXwW3LHrsxMI1NnwfjKYrtEGzFuinhM9W1xZIlVBhphbCsmu60sDi1gTL1q6JbZ+EXKoorsFEjyeHKZD6Z3A7ul/MjqywEoPoLq3ZKsv2RgXSGjLimfPjuvkcTtH0cZ/Lf7qX1mg1oj0TDlyLqsWXhdl5HX5VV2k3JWOP/AqI3RdKLiiuP5SWFC1FbzakDChIXeAmWMUM2dURLU2FeFuTXkvCTZzG5/Da/xIvkELOLYMun7u0/WJNpggwkLZsFRWN+vO/uEfawvimeJtADE+EKqOtew=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 401107cc-9bfc-4ff9-0088-08d6f4873162
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2019 07:24:41.0496 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eugen.hristev@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1500
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_002454_724326_ACD48989 
X-CRM114-Status: GOOD (  12.60  )
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
Cc: Eugen.Hristev@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

ld: drivers/media/platform/atmel/atmel-isc-base.o:(.bss+0x0): multiple definition of `debug'; arch/x86/entry/entry_32.o:(.entry.text+0x21ac): first defined here

Changed module parameters to static.

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---

Hello Hans,

Sorry for this, it looks like i386 has a stray weird 'debug' symbol which
causes an error.
I changed the module parameters of the atmel-isc to 'static' but now they
cannot be accessed in the other module files.
Will have to create a get function to be used in the other files if needed
later. Any other way to make a symbol static to current module and not
current file ? It would be useful for other config variables as well.
I was not sure if you want to squash this over the faulty patch or add it
as a separate patch.
If you want me to squash it let me know and I will come up with a squashed
new version.

Thanks,
Eugen

 drivers/media/platform/atmel/atmel-isc-base.c | 4 ++--
 drivers/media/platform/atmel/atmel-isc.h      | 4 ----
 2 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/media/platform/atmel/atmel-isc-base.c b/drivers/media/platform/atmel/atmel-isc-base.c
index eb1f5d4..c1c776b 100644
--- a/drivers/media/platform/atmel/atmel-isc-base.c
+++ b/drivers/media/platform/atmel/atmel-isc-base.c
@@ -35,11 +35,11 @@
 #include "atmel-isc-regs.h"
 #include "atmel-isc.h"
 
-unsigned int debug;
+static unsigned int debug;
 module_param(debug, int, 0644);
 MODULE_PARM_DESC(debug, "debug level (0-2)");
 
-unsigned int sensor_preferred = 1;
+static unsigned int sensor_preferred = 1;
 module_param(sensor_preferred, uint, 0644);
 MODULE_PARM_DESC(sensor_preferred,
 		 "Sensor is preferred to output the specified format (1-on 0-off), default 1");
diff --git a/drivers/media/platform/atmel/atmel-isc.h b/drivers/media/platform/atmel/atmel-isc.h
index f5f5932..bfaed2f 100644
--- a/drivers/media/platform/atmel/atmel-isc.h
+++ b/drivers/media/platform/atmel/atmel-isc.h
@@ -230,10 +230,6 @@ struct isc_device {
 
 #define ATMEL_ISC_NAME "atmel-isc"
 
-/* module parameters */
-extern unsigned int debug;
-extern unsigned int sensor_preferred;
-
 extern struct isc_format formats_list[];
 extern const struct isc_format controller_formats[];
 extern const u32 isc_gamma_table[GAMMA_MAX + 1][GAMMA_ENTRIES];
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
