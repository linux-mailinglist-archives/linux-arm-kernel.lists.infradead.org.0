Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E49EC17431
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 10:48:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Hdu1MSkwkzqqA7kSDPhpI4MNBRRWo96WGu9zz1ax54=; b=aVOfDO6i5hGecz
	FAoPi0Cgl8DhqqT9ajAMbvtxXhxhoCgVkB+8A5IKmXQL2KuUsrGvR1rLWiOPbsx7Z4lneur0wDzVZ
	ccbJnPyolV5nHBGQAmUo1cAYe7wdT9/4rZRdBbT7JSyD2oY5s4F7S+9MfDxOzqThFNl2SmNu6h1Oh
	uGKreZAO0unanSQ2RPezEP6BPL5mA5Pl/tcaAbhItpq2pHbTVOhNyyW1B5/9fHXHALvlu6P6Yq3k+
	9SmCfd+nN35VHZfDtAp6QYYSLiyjIUk81h9U5n/YwFdtLxPMeynJ994l+BqmGDE+n0NYBG/St6eFO
	z0X49fg82BL+ITfAI+Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOIFV-0007zh-7D; Wed, 08 May 2019 08:48:25 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOIFN-0007yy-8x
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 08:48:18 +0000
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
X-IronPort-AV: E=Sophos;i="5.60,445,1549954800"; d="scan'208";a="32284046"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 08 May 2019 01:48:14 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.76.49) with Microsoft SMTP Server (TLS) id
 14.3.352.0; Wed, 8 May 2019 01:48:14 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cV4pulITiLsJ9iV4m9L9W1h57U4Twyk4UpZMQ5s5cx8=;
 b=kn7w9fyJbkQ2qT66yB4wIIZWH2ot4x4VyVgI7o18IiPlge5MmF2jcujOFnHw4DmlTiJ4WKL2pSRlccaY6sxLJsWLGKalh43rh7xnGjcjVzyDPO3/T9U13IPXIZ23iFW+iSyh5ZrEgaXVWoDEH6/bHvAVk+r0dnJok7+Dp/bfdiI=
Received: from MWHPR11MB1549.namprd11.prod.outlook.com (10.172.54.17) by
 MWHPR11MB1456.namprd11.prod.outlook.com (10.172.53.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Wed, 8 May 2019 08:48:12 +0000
Received: from MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::f01a:9325:7a65:cdb4]) by MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::f01a:9325:7a65:cdb4%4]) with mapi id 15.20.1856.012; Wed, 8 May 2019
 08:48:12 +0000
From: <Claudiu.Beznea@microchip.com>
To: <lee.jones@linaro.org>
Subject: Re: [RESEND][PATCH v3 0/6] add LCD support for SAM9X60
Thread-Topic: [RESEND][PATCH v3 0/6] add LCD support for SAM9X60
Thread-Index: AQHU+2NzxFOsw6p3b0iYuTBfPVB4RaZg1lIAgAAoZAA=
Date: Wed, 8 May 2019 08:48:12 +0000
Message-ID: <d3d3006b-2c5b-6853-24bb-330d539574cf@microchip.com>
References: <1556195748-11106-1-git-send-email-claudiu.beznea@microchip.com>
 <20190508062328.GD7627@dell>
In-Reply-To: <20190508062328.GD7627@dell>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0039.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:61::27) To MWHPR11MB1549.namprd11.prod.outlook.com
 (2603:10b6:301:c::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20190508114802932
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 60b25708-bc95-46ed-d276-08d6d391e703
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:MWHPR11MB1456; 
x-ms-traffictypediagnostic: MWHPR11MB1456:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <MWHPR11MB145666650FDF370789B1DDFF87320@MWHPR11MB1456.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0031A0FFAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(346002)(396003)(39860400002)(136003)(376002)(189003)(199004)(72206003)(66066001)(5660300002)(73956011)(478600001)(2616005)(66446008)(52116002)(66946007)(66476007)(71190400001)(966005)(256004)(86362001)(14444005)(6486002)(31696002)(229853002)(53936002)(64756008)(486006)(81156014)(68736007)(3846002)(6916009)(6116002)(476003)(6512007)(11346002)(6306002)(446003)(8676002)(81166006)(386003)(14454004)(7416002)(4744005)(102836004)(76176011)(7736002)(6246003)(54906003)(316002)(8936002)(71200400001)(25786009)(2906002)(186003)(305945005)(99286004)(36756003)(6436002)(31686004)(26005)(6506007)(53546011)(66556008)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1456;
 H:MWHPR11MB1549.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 1UHy7Mt6CsHZhYFE+9dAzudK6ztymjhTGAm3O/SIW4uHysZG3K1Qh6x/fzCBTiwvoWG1OVX8vEV+TB1/rwEAJGb3JFORZRf+dqINS59gRBeshBvgVXz8vJvdzY2GyM+JLTeEmBme4mwh1vyqQ3CYiAVMSADORt+t7BYc6HRGWrlAfiaZfpM+oPjIfSKEqqDzTEk9fCjv1xzWHFXM19Kx41kcwmraj3x48Jq4L3imGBjEnMsPj5G39rjASUPVqcyjZpS68CBNPslAXg9bRNEDB2yDr9lr2bAIjarETp7dGEGQak9kImH4ycYs/WiTVwAdcXI/E35MO4dQdbp9FDyA5XqPf87S1cUnX7HVZkW6+wmRvgXSQCfQFya+obvuwLjXBlCIW2zJw7vzIcRwNPZsx+WNLnFxLdfG83uTgljptF4=
Content-ID: <2E229381D7A6A54F876CA1F7D16DEDA1@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 60b25708-bc95-46ed-d276-08d6d391e703
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2019 08:48:12.3543 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1456
X-OriginatorOrg: microchip.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_014817_408999_AD81058E 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
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
Cc: linux-pwm@vger.kernel.org, alexandre.belloni@bootlin.com,
 bbrezillon@kernel.org, airlied@linux.ie, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 thierry.reding@gmail.com, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 08.05.2019 09:23, Lee Jones wrote:
> External E-Mail
> 
> 
>>  drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c  |  18 ++--
>>  drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c    | 120 +++++++++++++++++++++++-
>>  drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.h    |   2 +
>>  drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c |   2 +-
>>  drivers/pwm/pwm-atmel-hlcdc.c                   |   1 +
>>  5 files changed, 132 insertions(+), 11 deletions(-)
> 
> Not sure why I am receiving this set.

Thierry suggested in v1 of this series to take pwm-atmel-hlcdc.c changes
though MFD tree [1]. Then, in v2 you ask me to do update a bit the changes
in pwm-atmel-hlcdc.c [2]. I send all the patches in one shot so that the
context to be more obvious. Sorry for the noise, if any.

[1] https://lore.kernel.org/lkml/20190304110517.GB5121@ulmo/
[2] https://lore.kernel.org/lkml/20190425083132.GD14758@dell/

> Could you please drop me from future submissions.
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
