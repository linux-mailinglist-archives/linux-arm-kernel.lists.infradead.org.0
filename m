Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD42A35A68
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 12:26:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pbpNFS2uwbOjB6tu92sj3KlFrAM3othlmXZD1RK6AcE=; b=SkEgKvXPhW2Kn4
	lN+Mkx7FuLWM3b1Vf6nNIOrIBgcQjP2G+imw0TA0U8vT5WGvqe/xaw7TlflkHOMUKE/f9mXMBfgNG
	2IP/J/x8alRTgda8FINEVTRcCFh0qT6HN+U7HMAysC/BGgJ4acJ0weGbhugtdVkrN1U/l6DO1n7be
	2y8XInxek52NkEdik+VnBeaeTr3JRsDvm/VJByFNLKu1euuUW44l3Y7poTfTYViFEjAvCBbDrr/C4
	gU7bEbQQx3ijL5iDE71qap93Ax6kUNs/d/Am7OLsINOgRWcnpveQR+WYKxl+zELQgLxCodF86pfuv
	WeakGWAgyQdXOPJF42wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYT7J-0005zN-NR; Wed, 05 Jun 2019 10:26:01 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYT7A-0005yW-MT
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 10:25:55 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.60,550,1549954800"; d="scan'208";a="36045944"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 05 Jun 2019 03:25:48 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.87.71) by
 chn-vm-ex01.mchp-main.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 5 Jun 2019 03:25:48 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 5 Jun 2019 03:25:48 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5n/UdsYgRDi+6yGxKYVp9FWhHREYaLtnbYNb1/UP8jU=;
 b=HCzBISTFZhXN+uRUUHnzC0o1bmE8kPl8gx5DlmXUZGvrrurVaFHTEX3A+VBY/jNSJJAx66DsDRmvO7nLkaLvF9CetFmYofl2Unm9LMp51czXo6WL79MGeRElWfG9Q70dLqRgGtWU2FH/KsjeBoaHwKWnBEhFKRTsVE88+zod5e8=
Received: from DM5PR11MB1547.namprd11.prod.outlook.com (10.172.37.15) by
 DM5PR11MB1722.namprd11.prod.outlook.com (10.168.105.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.20; Wed, 5 Jun 2019 10:25:44 +0000
Received: from DM5PR11MB1547.namprd11.prod.outlook.com
 ([fe80::11dc:d9db:1a6a:a0b8]) by DM5PR11MB1547.namprd11.prod.outlook.com
 ([fe80::11dc:d9db:1a6a:a0b8%6]) with mapi id 15.20.1965.011; Wed, 5 Jun 2019
 10:25:44 +0000
From: <Claudiu.Beznea@microchip.com>
To: <thierry.reding@gmail.com>, <Nicolas.Ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>
Subject: [PATCH] pwm: atmel-hlcdc: add compatible for SAM9X60 HLCDC's PWM
Thread-Topic: [PATCH] pwm: atmel-hlcdc: add compatible for SAM9X60 HLCDC's PWM
Thread-Index: AQHVG4kIxBHHCWR2MkOz22b5c6HhUQ==
Date: Wed, 5 Jun 2019 10:25:44 +0000
Message-ID: <1559730328-22131-1-git-send-email-claudiu.beznea@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR10CA0117.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:803:28::46) To DM5PR11MB1547.namprd11.prod.outlook.com
 (2603:10b6:4:a::15)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-originating-ip: [213.233.110.227]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cfb76f2b-74a6-4332-c048-08d6e9a02abe
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR11MB1722; 
x-ms-traffictypediagnostic: DM5PR11MB1722:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <DM5PR11MB1722C4202B52F8AF47B66F7F87160@DM5PR11MB1722.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 00594E8DBA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(39860400002)(346002)(376002)(396003)(366004)(199004)(189003)(8936002)(81166006)(81156014)(316002)(7736002)(476003)(256004)(26005)(486006)(6486002)(52116002)(71200400001)(4326008)(36756003)(66556008)(3846002)(66476007)(6436002)(99286004)(305945005)(6512007)(2616005)(86362001)(50226002)(6116002)(66066001)(6306002)(64756008)(186003)(66446008)(54906003)(102836004)(71190400001)(73956011)(14454004)(66946007)(25786009)(8676002)(478600001)(72206003)(2906002)(6506007)(4744005)(110136005)(386003)(68736007)(53936002)(107886003)(2501003)(5660300002)(966005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1722;
 H:DM5PR11MB1547.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 5xlTh6OYPNeBt52R7wCgtaR3qeCJdmxqd7tT2mP9m2LlPaf6MyvowSgFHahrvsW+NtlwzeuKDFtCVTz71VpKxpnWrptdcbh/H/DiaySm8mKBlcjZ71UrX+pjsk0pcRU2YZ/tpzqlekCQtzeM1TskJtjNsfFE93WGe/QzrEjR69rqyahWtuld7nxQam5D/V+Xy2R0wnMKPXrJKHijQ/35/ET8s5qjSLzKENHNeBlskVaDxDB3QSkUlCsaJsxUpT59Ha4uE4aqxOaD5f4KHmNqedvFOv5JkBWolnFC4TVuhy6Q8EHmr4FjiJrXCCL3FUp5r2vRNY/92J6LxKGvBEc0ZN1qc3b7+vBwek5L8qZ9eT6aZnH4W60/39sFK5bJGdWgfvOEYEG2R2CT9yzvU4gEcLieCm2XRG2r7AdVQJbl3cw=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: cfb76f2b-74a6-4332-c048-08d6e9a02abe
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2019 10:25:44.5090 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: claudiu.beznea@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1722
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_032552_767497_D5EB3B39 
X-CRM114-Status: UNSURE (   8.29  )
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
Cc: linux-pwm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Claudiu.Beznea@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Claudiu Beznea <claudiu.beznea@microchip.com>

Add compatible string for SAM9X60 HLCDC's PWM.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
Acked-by: Thierry Reding <thierry.reding@gmail.com>
---

Hi Thierry,

This patch was initially part of series at [1]. The rest of the patches in
that series were taken though drm-misc-next. Only this one remained.

[1] https://lore.kernel.org/lkml/1556195748-11106-1-git-send-email-claudiu.beznea@microchip.com/

 drivers/pwm/pwm-atmel-hlcdc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pwm/pwm-atmel-hlcdc.c b/drivers/pwm/pwm-atmel-hlcdc.c
index 54c6633d9b5d..6bfbe1a902fc 100644
--- a/drivers/pwm/pwm-atmel-hlcdc.c
+++ b/drivers/pwm/pwm-atmel-hlcdc.c
@@ -246,6 +246,7 @@ static const struct of_device_id atmel_hlcdc_dt_ids[] = {
 		.compatible = "atmel,sama5d4-hlcdc",
 		.data = &atmel_hlcdc_pwm_sama5d3_errata,
 	},
+	{	.compatible = "microchip,sam9x60-hlcdc", },
 	{ /* sentinel */ },
 };
 MODULE_DEVICE_TABLE(of, atmel_hlcdc_dt_ids);
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
