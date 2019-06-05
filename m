Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF94358DA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 10:44:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m3vDMHu69ayEq1aJmRzCyuS3gqYri9iPyYtoqeUN2FE=; b=fOCSqTJASTalfZ
	u17ccJL7UXgiDcjILniCngkr2STWdtor2tfEn5NTKjur8Fa1D+rVFARHmc1LioGeB15b3lq5WAtuM
	XrD4/LzgHq38Vuv8SsACp2T+Zv+30o/XJ1ZTxTk3hHS47Zajt5p4a7N75jr9OLohN7eVJswslVLwF
	TdwP+9TWhIC5N92qaeWel+dby3+wrh96zhvv/1YJvcFEvXSHJui5mG9a6cs0zg+YCYXpC0esWBhfQ
	uplkv2dz8jr8Qlc8AvRHdURG2OTBpMNRmP6EdQxj/EycxifKepfzqC4jMjXmE/CQPLkkq8frYSAdO
	0JOpEJDqcgUaFO8ftpLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYRWn-0005qJ-C4; Wed, 05 Jun 2019 08:44:13 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYRWg-0005px-Ak
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 08:44:07 +0000
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
X-IronPort-AV: E=Sophos;i="5.60,550,1549954800"; d="scan'208";a="35658835"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 05 Jun 2019 01:44:04 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.87.71) by
 chn-vm-ex03.mchp-main.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 5 Jun 2019 01:43:57 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 5 Jun 2019 01:43:57 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ndpe7qI8Nn3TggX3YDVteH/xqjgGej+SPms7N5tbswo=;
 b=Y/lJQXRoIz10k8JczUz0GlL8s90IOuHn6R3IqmNDUbeoRbrt3FzJi9XIm123ofChe6OKAfb9ctBaLm8j2+tX9kwN0tIzZ6ioKqeA8BTmrkm+n83oBAMwu3NoWdvtoUmxVvNbh6+uHJkEKyn+HP4ms2Yq+tv/ngW41ptfO2u6bgE=
Received: from DM5PR11MB1547.namprd11.prod.outlook.com (10.172.37.15) by
 DM5PR11MB1817.namprd11.prod.outlook.com (10.175.89.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Wed, 5 Jun 2019 08:43:37 +0000
Received: from DM5PR11MB1547.namprd11.prod.outlook.com
 ([fe80::11dc:d9db:1a6a:a0b8]) by DM5PR11MB1547.namprd11.prod.outlook.com
 ([fe80::11dc:d9db:1a6a:a0b8%6]) with mapi id 15.20.1965.011; Wed, 5 Jun 2019
 08:43:37 +0000
From: <Claudiu.Beznea@microchip.com>
To: <lee.jones@linaro.org>
Subject: Re: [RESEND][PATCH v3 0/6] add LCD support for SAM9X60
Thread-Topic: [RESEND][PATCH v3 0/6] add LCD support for SAM9X60
Thread-Index: AQHU+2NzxFOsw6p3b0iYuTBfPVB4RaaM3vQAgAAfvgA=
Date: Wed, 5 Jun 2019 08:43:36 +0000
Message-ID: <0bf41938-b64c-b505-0a30-0abf4ad72a4b@microchip.com>
References: <1556195748-11106-1-git-send-email-claudiu.beznea@microchip.com>
 <20190605064948.GI4797@dell>
In-Reply-To: <20190605064948.GI4797@dell>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0359.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:d::35) To DM5PR11MB1547.namprd11.prod.outlook.com
 (2603:10b6:4:a::15)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20190605114324182
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5689a2e9-6613-458f-e0ff-08d6e991e62e
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR11MB1817; 
x-ms-traffictypediagnostic: DM5PR11MB1817:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <DM5PR11MB1817A7928950917899D766C087160@DM5PR11MB1817.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 00594E8DBA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(366004)(376002)(346002)(396003)(39860400002)(199004)(189003)(6486002)(6436002)(11346002)(229853002)(53936002)(66556008)(5660300002)(966005)(2906002)(6306002)(54906003)(72206003)(8676002)(52116002)(2616005)(73956011)(446003)(486006)(66946007)(64756008)(71200400001)(31686004)(71190400001)(14444005)(256004)(14454004)(66446008)(66476007)(305945005)(76176011)(8936002)(6512007)(7416002)(7736002)(81156014)(476003)(316002)(36756003)(6116002)(3846002)(25786009)(6246003)(478600001)(4326008)(6916009)(102836004)(26005)(186003)(6506007)(99286004)(386003)(31696002)(66066001)(86362001)(53546011)(68736007)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1817;
 H:DM5PR11MB1547.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: jsG8GA5WR8GoKREzBSpi85d+12Ca0oHVBdnkKwv/+6iekxcgVAon7jjyi1KZjlpA7+uVJTh4wsj+NiEGWnC3MtFyALeiMzj2HJFr1ClTkC+BDfofAxeZyZ6K2Pg54RWyUdg127rTtQhbB36WrtONyy+pDpLwgjKaqvQF46+qV9d2MArtoLh5xn5u7bgmXudZOX/YJKSp7JzDK5OYzbDPgyMeIlieRboFICw2lMO5XLw5nA3WrNM854yYxqRUalBoPYo1P+iZ1xEMO1Uc7oFUkXjQIg4uqKX1KkoV0xWmOPPjzJufpQIy0lyoUzYVMKUqXkThoWCcfuXf7DU5ZjDhJSLlKv0q8ZXSL0dNSsTra/YcxKUV+aib0MmV6CsBPnNy3I03EXPjG+yAj7TUm59pEFTyGpTTu1phKO2xwma36Fo=
Content-ID: <518B9938BFF0F946ADC161C9F98296A0@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5689a2e9-6613-458f-e0ff-08d6e991e62e
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2019 08:43:37.3936 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: claudiu.beznea@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1817
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_014406_409631_C1A2B902 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
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
Cc: linux-pwm@vger.kernel.org, alexandre.belloni@bootlin.com,
 bbrezillon@kernel.org, airlied@linux.ie, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Ludovic.Desroches@microchip.com,
 thierry.reding@gmail.com, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05.06.2019 09:49, Lee Jones wrote:
> External E-Mail
> 
> 
> On Thu, 25 Apr 2019, Claudiu.Beznea@microchip.com wrote:
> 
>> From: Claudiu Beznea <claudiu.beznea@microchip.com>
>>
>> Hi,
>>
>> These patches adds support for SAM9X60's LCD controller.
>>
>> First patches add option to specify if controller clock source is fixed.
>> Second patch avoid a variable initialization in atmel_hlcdc_crtc_mode_set_nofb().
>> The 3rd add compatibles in pwm-atmel-hlcdc driver.
>> The 4th patch enables sys_clk in probe since SAM9X60 needs this.
>> Specific support was added also in suspend/resume hooks.
>> The 5th patch adds SAM9X60's LCD configuration and enabled it.
>>
>> I took the changes of this series and introduced also a fix
>> (this is the 6th patch in this series) - if you want to send it separately
>> I would gladly do it.
>>
>> I resend this to also include Lee Jones for pwm-atmel-hlcdc changes.
>>
>> Thank you,
>> Claudiu Beznea
>>
>> Changes in v3:
>> - keep compatible string on patch 3/6 on a single line (I keep here a tab
>>   in front of ".compatible" to be aligned with the rest of the code in
>>   atmel_hlcdc_dt_ids[])
>> - patches 4/7 and 3/7 from v2 were applied so remove them from this version
>> - add a fix for atmel_hlcdc (patch 6/6)
>>
>> Changes in v2:
>> - use "|" operator in patch 1/7 to set ATMEL_HLCDC_CLKSEL on cfg
>> - collect Acked-by, Reviewed-by tags
>>
>> Claudiu Beznea (4):
>>   drm: atmel-hlcdc: add config option for clock selection
>>   drm: atmel-hlcdc: avoid initializing cfg with zero
>>   pwm: atmel-hlcdc: add compatible for SAM9X60 HLCDC's PWM
>>   drm/atmel-hclcdc: revert shift by 8
>>
>> Sandeep Sheriker Mallikarjun (2):
>>   drm: atmel-hlcdc: enable sys_clk during initalization.
>>   drm: atmel-hlcdc: add sam9x60 LCD controller
>>
>>  drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c  |  18 ++--
>>  drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c    | 120 +++++++++++++++++++++++-
>>  drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.h    |   2 +
>>  drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c |   2 +-
>>  drivers/pwm/pwm-atmel-hlcdc.c                   |   1 +
>>  5 files changed, 132 insertions(+), 11 deletions(-)
> 
> Why is this being sent to me?

Sorry, you were in the original "to" list due to changes that you asked for
in v2 on mfd part.

Thierry suggested in v1 of this series to take pwm-atmel-hlcdc.c changes
though MFD tree [1]. Then, in v2 you ask me to do update a bit the changes
in pwm-atmel-hlcdc.c [2].

And in this reply I forgot to remove your email as you previously
suggested. My bad!

Thank you,
Claudiu Beznea

[1] https://lore.kernel.org/lkml/20190304110517.GB5121@ulmo/
[2] https://lore.kernel.org/lkml/20190425083132.GD14758@dell/


> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
