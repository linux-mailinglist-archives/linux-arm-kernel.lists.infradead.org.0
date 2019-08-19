Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E658192044
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 11:26:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f6TPFImfAwSzIfmtBLRBNYDH7TBclZ3fI6xWIa/huW0=; b=mw4Q8LxJPh13PJ
	K8jml+LrUsEavzauY0S9BFaVtxsXA/jDWSktviFbAiCS0CP62f7RNLe2YKd7MHsweZ0GQkOxGPYco
	o8y9JSrz5tRduHgVOd+I4/G7aWLhCFHaQd5u/Y1U64LVJOa9/2FFoUr9lo/AC+meEjBXRAxLo9wTs
	UTezpTeLlNj+sENtvnBlVTOp3ovS7VtLir1nfhUPDH0Sjj7hTCaitTXaa45Sb+Y4aNqj5t629BafX
	yt/3qQAoAGwLtrDAIcwpqFjQdCEBN8uTNzeJY8kRnPoGZtRG7I9L3OIhZowXzU2HqlZkrz5w0Up8u
	4fW6F+/FmRxfVRsFVCWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzdwC-0008Vw-ED; Mon, 19 Aug 2019 09:26:52 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzdvf-0008Gf-Mb
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 09:26:21 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: wT/HeGJu9xLooKHjdLxCFwJzn03pAP/pq/Rrg0rCXhnj+WfSyDfLpswGFmtB+3/GHR56Zu3vga
 i2B6hrU2uCqJ+77rVFhKaZzQZz/DRvLsiwGUA0t85rOpVNkADK9pCt2Je8txiAIdqGj9oeKslj
 DJXS5KPFtEaYXcM7qQHn4f76lYnNGDg0z0ri68+v7++zh4mTqx4+zMva8jFx52scSXbxGJnHzw
 Cl+lFwSfjdYSBfxGFoEsaDtLU7KGX/bFl+CZ+4y9K8OE0yvhqGt/PryWwqUieqGwXBOLnjj83f
 S1U=
X-IronPort-AV: E=Sophos;i="5.64,403,1559545200"; d="scan'208";a="47022766"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 19 Aug 2019 02:26:15 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 19 Aug 2019 02:26:15 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 19 Aug 2019 02:26:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hu860PE1+Q7kyJhRAyWGHohd9p4mnQomSpUc9TolmATQaSMGSW2Yh2tz569sUWQjie1pvKMpT8Gsr+IEdAEdBeXPOfF+BYXClYPRIZMapH9H06a4R3gvwKeD3Q4pYt9GYEr4M294yCwFhBOz6YEPWELb+0NVnlv0QeUFXUxlVp9LP8E7lyOuVJbe8I2dlvugn3wFYUNsNPisH82Th302L9a4Y0x9JAyPjjlXCvcCYGuEoB+7Ozl61nDgJDLuwrYptoWp+WG5PorRs4Itq2W9O8mH+PkPPxxDFGcu4UrKZsBI2Eo/Kpm0UhOLnyyjDWK0E2b05G3l1fFG8mDNuUbUbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Et390hVTzv3WzKKjzRw+TnfstY6i6W8QK2sA7u4rAL8=;
 b=Bm4mnzB+X1nQeIxFK+HLFaXokGHunC9ZLVJ8/QJg41mBBmRltKtyHekzNtkXXjh9T+bwo0xx5TaHQdCa1qv//CeZQEwO6rKhJXDxEx0DKhjxnZYgg9KpBCQOrQ8A4riKflSgRsvi1zRXGPqL2noYmYk5CawFxTZPhpCaaozlVOpmGyHEBD9GBEJ+7aPJQHGRhgLiapzFMaruN84wqnY2tX2girWikKf8e02e8AwARgw2qE3fvJ5kRIkZXzG+3X25TeAB0kMOP1vevieEd0PF5USB5pyG6Lnby2SovHnsNtBKFWYXrJkrnRI/jpccfSj15sUEeZ7lb8yqxGlnLF7SyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Et390hVTzv3WzKKjzRw+TnfstY6i6W8QK2sA7u4rAL8=;
 b=u2+NEW++MFT/J7z6YoYxPibwth9d/PvPIKdO/OZ/Y73xSTV/bU2kOS7qNrUxhqK1UN2ift8JZsws2oYcrd1gfB1jrHz8VPebORsxsAzSTxd5Xj6orus2tBg9qWPhfZd01itQ4fQ8F0DaKrsf1U1pEn84ng5pp13cPHZyRzl5vB4=
Received: from MWHPR11MB1549.namprd11.prod.outlook.com (10.172.54.17) by
 MWHPR11MB1840.namprd11.prod.outlook.com (10.175.55.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Mon, 19 Aug 2019 09:26:13 +0000
Received: from MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::512b:adf0:597f:3dec]) by MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::512b:adf0:597f:3dec%11]) with mapi id 15.20.2178.018; Mon, 19 Aug
 2019 09:26:13 +0000
From: <Claudiu.Beznea@microchip.com>
To: <uwe@kleine-koenig.org>, <thierry.reding@gmail.com>
Subject: Re: [PATCH 1/3] pwm: atmel: Add link to reference manual
Thread-Topic: [PATCH 1/3] pwm: atmel: Add link to reference manual
Thread-Index: AQHVU7JPf2QVf5aAHUqil3NIolSKX6cCONcA
Date: Mon, 19 Aug 2019 09:26:13 +0000
Message-ID: <488f7c7e-6de5-f860-4a48-8f8a67cdcbc6@microchip.com>
References: <20190815214133.11134-1-uwe@kleine-koenig.org>
In-Reply-To: <20190815214133.11134-1-uwe@kleine-koenig.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P194CA0004.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:800:be::14) To MWHPR11MB1549.namprd11.prod.outlook.com
 (2603:10b6:301:c::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20190819122602794
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2d5d314b-77e0-4a2c-845f-08d724874787
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MWHPR11MB1840; 
x-ms-traffictypediagnostic: MWHPR11MB1840:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB1840053F93B129D233E5D8D187A80@MWHPR11MB1840.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0134AD334F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(366004)(376002)(136003)(346002)(396003)(189003)(199004)(5660300002)(14454004)(6246003)(31686004)(966005)(478600001)(186003)(52116002)(76176011)(7736002)(305945005)(53546011)(102836004)(6486002)(6436002)(6306002)(229853002)(26005)(386003)(6512007)(6506007)(2616005)(11346002)(476003)(86362001)(446003)(25786009)(486006)(4326008)(31696002)(66066001)(256004)(66446008)(99286004)(66946007)(66476007)(66556008)(71200400001)(71190400001)(64756008)(3846002)(6116002)(53936002)(316002)(36756003)(8676002)(81156014)(81166006)(8936002)(2906002)(54906003)(110136005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1840;
 H:MWHPR11MB1549.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: wVxXOwpYLkWszXNEud5X7r6vdwMpvxz5VVGP7xRKrpK7Vgq/pSf2AZBy9WAfugVQtz9T7HPAmyJNafFx7O1qYsep5ZB7HZUNKI2APVFZCjMzNyEUMXWr9OtORfxkhrQ2mRKYA8EtAsZRSPhHFDnEoNA3hyXKEEXLU7oF9DU/XQ/G3mTuVG1o1d+ZeY3SjETlDp5Hu5BAS5aMrMMN2wPiV6iqbJSUFHBlry+ogGhjBfIxvNzZHp6eoYmBjHV6HHsNijTZvxKgNFD8B/8oEE/DRHiCZuYtZghsrxezlB2wSD/fdLFtF2SLeoCqzKMeRPMIregodAD+D5l+O8yHe7FdZZq5ebj9AAbhHcnemuV7TwR+ln31yfByozqH9FlnfkvMEQin99na8xVQk33llIvP5GngUj6Jb+ORFVFl5Q+Du5s=
Content-ID: <3DC0E3FB1FBE9E4CBCFECD4C93129B86@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d5d314b-77e0-4a2c-845f-08d724874787
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2019 09:26:13.7312 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EOgE6ntEfUWt55LOgqA9wWnP9q9adVeVG3zNkuCpARZU9CloyjjoK5/iz+ob7p3lhfDSXGxmSatjZqgixurFKg7lxfYWTZw38ecrIuJ7Mr4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1840
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_022619_881233_F7D60350 
X-CRM114-Status: GOOD (  14.88  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
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
Cc: linux-pwm@vger.kernel.org, alexandre.belloni@bootlin.com,
 Ludovic.Desroches@microchip.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCk9uIDE2LjA4LjIwMTkgMDA6NDEsIFV3ZSBLbGVpbmUtS8O2bmlnIHdyb3RlOg0KPiBUaGUg
cmVmZXJlbmNlIG1hbnVhbCBmb3IgYXQgbGVhc3Qgb25lIG9mIHRoZSBzdXBwb3J0ZWQgdmFyaWFu
dHMgaXMNCj4gcHVibGljbHkgYXZhaWxhYmxlLiBBZGQgYSBsaW5rIHRvIGl0IGF0IHRoZSB0b3Ag
b2YgdGhlIGRyaXZlci4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1
d2VAa2xlaW5lLWtvZW5pZy5vcmc+DQo+IC0tLQ0KPiAgZHJpdmVycy9wd20vcHdtLWF0bWVsLmMg
fCAzICsrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvcHdtL3B3bS1hdG1lbC5jIGIvZHJpdmVycy9wd20vcHdtLWF0bWVsLmMN
Cj4gaW5kZXggZTVlMWVhZjM3MmZhLi5hYzNkN2EyMDBiOWUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvcHdtL3B3bS1hdG1lbC5jDQo+ICsrKyBiL2RyaXZlcnMvcHdtL3B3bS1hdG1lbC5jDQo+IEBA
IC00LDYgKzQsOSBAQA0KPiAgICoNCj4gICAqIENvcHlyaWdodCAoQykgMjAxMyBBdG1lbCBDb3Jw
b3JhdGlvbg0KPiAgICoJCSBCbyBTaGVuIDx2b2ljZS5zaGVuQGF0bWVsLmNvbT4NCj4gKyAqDQo+
ICsgKiBSZWZlcmVuY2UgbWFudWFsIGZvciAiYXRtZWwsYXQ5MXNhbTlybC1wd20iOg0KPiArICog
ICBodHRwOi8vd3cxLm1pY3JvY2hpcC5jb20vZG93bmxvYWRzL2VuL0RldmljZURvYy9BdG1lbC0x
MTAzMi0zMi1iaXQtQVJNOTI2RUotUy1NaWNyb2NvbnRyb2xsZXItU0FNOUcyNV9EYXRhc2hlZXQu
cGRmDQoNCkV2ZW4gU0FNOUcyNSBQV00gaGF2ZSBhbG1vc3QgdGhlIHNhbWUgcmVnaXN0ZXJzIHdp
dGggQVQ5MVNBTTlSTCwgdGhlDQpkYXRhc2hlZXQgZm9yIEFUOTFTQU05UkwgaXMgbG9jYXRlZCBh
dDoNCmh0dHA6Ly93dzEubWljcm9jaGlwLmNvbS9kb3dubG9hZHMvZW4vRGV2aWNlRG9jL2RvYzYy
ODkucGRmDQpNYXliZSB3ZSBzaG91bGQgdXNlIHRoaXMgb25lLg0KDQpJJ20gbm90IGZhbWlsaWFy
IHdpdGggaGF2aW5nIHJlZmVyZW5jZSBtYW51YWxzIGluIHRoaXMgcGFydCBvZiB0aGUgZHJpdmVy
DQpidXQgaWYgd2UgYXJlIGRvaW5nIHNvIHdvdWxkIGl0IGJlIGZlYXNpYmxlIHRvIGFsc28gaGF2
ZSBsaW5rcyBmb3IgdGhlIHJlc3QNClNvQ3MgdGhhdCBpbnRyb2R1Y2VzIG5ldyBQV00gdmVyc2lv
bnM/IEknbSB0aGlua2luZyBoZXJlIGF0IGFsbCB0aGUNCmNvbXBhdGlibGVzIGZyb20gYXRtZWxf
cHdtX2R0X2lkc1tdOg0KLSBhdG1lbCxzYW1hNWQzLXB3bQ0KLSBhdG1lbCxzYW1hNWQyLXB3bQ0K
LSBtaWNyb2NoaXAsc2FtOXg2MC1wd20NCg0KQWx0aG91Z2ggdGhlIGxhc3Qgb25lIGlzIG5vdCBh
bHJlYWR5IHB1YmxpYy4NCg0KPiAgICovDQo+ICANCj4gICNpbmNsdWRlIDxsaW51eC9jbGsuaD4N
Cj4gDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
