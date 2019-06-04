Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D924334D15
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 18:19:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M6gqZ2U26yZLVLLPvsnBgd1BiD/AsUqmZL7xzWPyuU4=; b=Fb95zhCiG++qgv
	BlXiNGoYhVUw25wq1oDwow0c5UGAOz3IQ0TtzOXIimTX6fMUEe5AoexRJlaJcYCOJHs1QWbEMjfDr
	8siKpxzjC2mDSFU/OI66hUTEpwLOQmngTnVrb/o/ReP8vgLwP5Pm88QC4XOA2Td9JKW90clMU+Hm9
	HQ8Pbdk/52tJf6Gq4CZ+IK85kbuq5SvWY/dKNCw+nrRuRTO3z2+Z/52LDvzSagm21DHiPpqgjOk7q
	qynYfzej93BQH78xx5c3ztABLb4XUBjBJUgb5gGEObhKy5Ah1rQngaY+D5LHfHVabdTI46T/7XVOr
	2qNvmLxSmGwP6w0yy71g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYC9K-0000bk-DM; Tue, 04 Jun 2019 16:18:58 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYC93-0000aA-Eg
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 16:18:44 +0000
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
X-IronPort-AV: E=Sophos;i="5.60,550,1549954800"; d="scan'208";a="35533999"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 04 Jun 2019 09:18:38 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex01.mchp-main.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 4 Jun 2019 09:18:37 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 4 Jun 2019 09:18:38 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+3tI8LXi5R3L7VQnDezNvjooeBm3q62YSN/CRKjnfe4=;
 b=Imyztnv0YaM49ySTHizWxKmSKC1DXvAYzcYluxBdmyDi2F9UO3b7AE21Y/knd3AMX06uDWJX01QmEe6P4Nb/jMd2KzelsPt7Td3MfSNcGEHu3kaTBbmrY885hZcnEK6YdKhj4xSsqiEGESN1mXJ0SkbLaIl4d2+jYktkf70qp+A=
Received: from MWHPR11MB1549.namprd11.prod.outlook.com (10.172.54.17) by
 MWHPR11MB1583.namprd11.prod.outlook.com (10.172.53.136) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.20; Tue, 4 Jun 2019 16:18:34 +0000
Received: from MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::316b:7774:8db6:30ec]) by MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::316b:7774:8db6:30ec%7]) with mapi id 15.20.1943.018; Tue, 4 Jun 2019
 16:18:34 +0000
From: <Claudiu.Beznea@microchip.com>
To: <sam@ravnborg.org>, <thierry.reding@gmail.com>
Subject: Re: [RESEND][PATCH v3 0/6] add LCD support for SAM9X60
Thread-Topic: [RESEND][PATCH v3 0/6] add LCD support for SAM9X60
Thread-Index: AQHU+2NzxFOsw6p3b0iYuTBfPVB4RaZgDjOAgCvdRQA=
Date: Tue, 4 Jun 2019 16:18:33 +0000
Message-ID: <c361b013-2d98-76e3-d30f-cec83000933c@microchip.com>
References: <1556195748-11106-1-git-send-email-claudiu.beznea@microchip.com>
 <20190507182713.GA16862@ravnborg.org>
In-Reply-To: <20190507182713.GA16862@ravnborg.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0701CA0032.eurprd07.prod.outlook.com
 (2603:10a6:800:90::18) To MWHPR11MB1549.namprd11.prod.outlook.com
 (2603:10b6:301:c::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20190604191820598
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8622c385-bc4e-430f-465f-08d6e9084a4d
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR11MB1583; 
x-ms-traffictypediagnostic: MWHPR11MB1583:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <MWHPR11MB1583EDA94CA77947B5B5DB6B87150@MWHPR11MB1583.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0058ABBBC7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(396003)(39860400002)(366004)(346002)(199004)(189003)(52116002)(76176011)(316002)(66476007)(66556008)(64756008)(66446008)(5660300002)(446003)(26005)(486006)(66946007)(73956011)(2906002)(66066001)(2616005)(3846002)(31696002)(6506007)(386003)(7416002)(68736007)(6116002)(8676002)(86362001)(72206003)(81156014)(186003)(8936002)(81166006)(14444005)(476003)(305945005)(7736002)(478600001)(256004)(6436002)(229853002)(25786009)(14454004)(6512007)(6306002)(11346002)(53936002)(966005)(54906003)(110136005)(31686004)(6246003)(102836004)(99286004)(71190400001)(71200400001)(6486002)(4326008)(36756003)(53546011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1583;
 H:MWHPR11MB1549.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: d3gRv7rqLimiMosEx4WSpSnFA41PAJYeK+DYVDlFUzW6TWXPYWQeHqf8u06t5qbCwdyLorTdFYBhtcQO2iU4I5XMNKub1DwRy4a2Jg7CMlaCb+iadRICGWcRB2UZaEcjXv8os7uvVLbIvE7HZBrUSFd6FFJoQGq8hVYUpkbsAt74V9XUzAQZCpl0HRRxSyf3ZTFH/XHSbUXkp7VSGLqH1i/FZstjBq6cviMMEwgGHj2HxcNeiRnrzqGQqE9xMXX7cwS762Pn4lr2mvGPoqJbDmXK2WLj8InOzaXc9K0kalOjm1IC+bD4S48EafdGx+e5mJru7tkLbCVQOfz0nrX/W33JO3nSPQR6mcB0aKryfdPNjDBTyX22veJgouT3ZCj9Qd0+wCJZznGYFID9REYiExpasWKHlCi9yAW4hKzQfao=
Content-ID: <4EDBCAD05C24604EBEFA9A6EEF02CDE8@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 8622c385-bc4e-430f-465f-08d6e9084a4d
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2019 16:18:33.8565 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: claudiu.beznea@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1583
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_091841_675697_AFE69832 
X-CRM114-Status: GOOD (  18.69  )
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
 daniel@ffwll.ch, lee.jones@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sam,

On 07.05.2019 21:27, Sam Ravnborg wrote:
> External E-Mail
> 
> 
> Hi Thierry.
> 
>>   pwm: atmel-hlcdc: add compatible for SAM9X60 HLCDC's PWM
> OK to add the "pwm: atmel-hlcdc: add compatible for SAM9X60 HLCDC's PWM"
> patch via drm-misc?
> Then we can add all 6 patches in one go.

Since we don't have an answer from Thierry till now, do you think it could
be feasible to take the rest of the patches in this series? After that I
will re-send the PWM patch to PWM list.

Thank you,
Claudiu Beznea

> 
> 	Sam
> 
> (Kept remaining of mail for reference)
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
>>
>> -- 
>> 2.7.4
>>
>> _______________________________________________
>> dri-devel mailing list
>> dri-devel@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/dri-devel
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
