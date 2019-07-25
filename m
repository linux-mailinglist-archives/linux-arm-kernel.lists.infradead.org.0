Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F4FE74F6C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 15:29:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LASEaJ98R44SQutwdxFasp4Gq8Is0D/Mn4YoXl0bxEQ=; b=Z5I4A24/UGpzGh
	gta+QufIR2LFOpC9DlPDFm113gPc4PMHhbIvhLwdcp583AyiFmevmYdJGMZluu/WTJlp3jYywt8g3
	+gE6u/7lDuSAKwf3WFagBboImYxkP1E4bqtyq6IT8aa37NLHT7j4oTi2U18nnkhS6TbXO+WaMxA2e
	RGvBxlcC++6t2LLkDg+noSHN5H1qwqcuccdMbwpBY9vWi4yFLLCR6l1Tz4ew7B4+KuWhfremHle34
	6wUzqdObTsCxDG40pRxAdrv0bXGZMWb+6S6A1wD46Ri6eZqHIqX6zqyBhKrC9aGaTnu+eUzky+wv3
	1uJPeO2RSG0qpPrhlL5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqdnm-0003RU-UT; Thu, 25 Jul 2019 13:28:59 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqdnY-0003R4-EU
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 13:28:45 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Codrin.Ciubotariu@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="Codrin.Ciubotariu@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Codrin.Ciubotariu@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: IajfUkZYiLkzEnb7pNn/kR9sEaFkh2nBaX1NlXrKvVfEiZnQamSwRxAT6pLZIjB1pzqObn8kLo
 ddQ4rwJGKaVJtOkgX/plrWOLLOTztryVw74Srus1SY/A16M9scHeK2B0fmLwXr0+r1CFYRvUJm
 0ZJioeCBtnZCytML2vFSSti9tuEb4wIUgyGBaSivbSwTBPOJgNsv5HOFc1KiucMKqg90P82lx8
 1GchCQN6a7of6UlzaYrXxXud9ZAn/mE3eIaDA4WJfXwTiT3rBMD5jKikPIPpR9HLgIhZK5dsTE
 AQ0=
X-IronPort-AV: E=Sophos;i="5.64,306,1559545200"; d="scan'208";a="44120357"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Jul 2019 06:28:43 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.87.152) by
 chn-vm-ex01.mchp-main.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 25 Jul 2019 06:28:42 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 25 Jul 2019 06:28:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZtaApeu1joC/esM97oG9WbczAznslM6kbksQuZAAIVuAfQiNO5b7y0ZKTs3t6K2wzuEjYCemKUHi31ryL3xFAMwEaoJekad7RyLQLj9Qj51r4/3tek4Q17Cd7gkClS02lIgpnk4NQlCgS6CK0bFWujyl6THPWOPcbXbHCe4v1YD9tbSf0rFDGQaUfyveDLFVcyt1cqHHT+PoOihS/g09EPYPfOrDg71MUfPRhWtDCqRqH6bAaADCsUzs38xcD7dwCo17TK8B2/69jNrnlFsyPSrQhE+bZeTvfh3gCTWp8QClKqVbtB/T7a5opkYxZVvAhOJpurDUigZJI7iJRAPr0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a5VI8dS669EIuaPvWQFH272YAmTh+0HiL6ALBZYRpUU=;
 b=f1e+p5FO3EQw8c41WrplzP7AoyCq9S//9ieHNINciQLL2q2Io/tlVI7m0Y9AagLRJVIVEgCjRbUT8dOcqKfPU2agQ3bg0cEXBMFBkbrIQtVPPNgAzt6AW68/K5aN9cvzHnhRS5JqyiYk+o0RpowW0Chzq+bb6gjDeshSppNUq8UsTBzM5sy4mr1v4WHEbN7qK1frOdJ8ArVdR1JBePnEnSVyFLN/nb9tcBc72lLoHBe041tcVYFaX5wNMPSwnY24KufNw+xSShWyrCmL0Yt7erBi0Rth82aRFpthtSoCJ+gB0SKx94zvSnCPUHtt+Mhdq7PvZjvrichy6dAdjNf9JA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=microchip.com;dmarc=pass action=none
 header.from=microchip.com;dkim=pass header.d=microchip.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a5VI8dS669EIuaPvWQFH272YAmTh+0HiL6ALBZYRpUU=;
 b=YKjkuVXE6TCTx7aufXVm5wnC7WI08preo891urvsYB/uQSo+V3UsgnNKXKTt20T0ksm7xd46cXBpVmkJ0X2G2SjXccek59/TWt8p3Ju1Ov0C1kKkelI3ZHHY0zA8khDkRY22j2EVI1qZKelQOpWt/V/aLZbFPxQAlBSexaDu1H8=
Received: from BN6PR11MB0051.namprd11.prod.outlook.com (10.161.153.153) by
 BN6PR11MB1587.namprd11.prod.outlook.com (10.172.24.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Thu, 25 Jul 2019 13:28:39 +0000
Received: from BN6PR11MB0051.namprd11.prod.outlook.com
 ([fe80::7972:d14b:4c60:adb2]) by BN6PR11MB0051.namprd11.prod.outlook.com
 ([fe80::7972:d14b:4c60:adb2%3]) with mapi id 15.20.2094.013; Thu, 25 Jul 2019
 13:28:39 +0000
From: <Codrin.Ciubotariu@microchip.com>
To: <mirq-linux@rere.qmqm.pl>, <alsa-devel@alsa-project.org>
Subject: Re: [PATCH 4/5] ASoC: atmel_ssc_dai: split TX/RX FS constants
Thread-Topic: [PATCH 4/5] ASoC: atmel_ssc_dai: split TX/RX FS constants
Thread-Index: AQHVQLsvFTLKPuBgqkW4GcOYU3JrC6bbWDsA
Date: Thu, 25 Jul 2019 13:28:38 +0000
Message-ID: <57d6fb37-7472-e6fc-8cb7-9832ab78a171@microchip.com>
References: <cover.1563819483.git.mirq-linux@rere.qmqm.pl>
 <718983d82091da8cf619010c026dca541af3f4d1.1563819483.git.mirq-linux@rere.qmqm.pl>
In-Reply-To: <718983d82091da8cf619010c026dca541af3f4d1.1563819483.git.mirq-linux@rere.qmqm.pl>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0390.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:f::18) To BN6PR11MB0051.namprd11.prod.outlook.com
 (2603:10b6:405:65::25)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c34d6f63-5153-4218-9951-08d71104008e
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN6PR11MB1587; 
x-ms-traffictypediagnostic: BN6PR11MB1587:
x-microsoft-antispam-prvs: <BN6PR11MB15870C1F193FE99398672D28E7C10@BN6PR11MB1587.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0109D382B0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(366004)(346002)(396003)(136003)(376002)(189003)(199004)(64756008)(81166006)(2616005)(66574012)(66446008)(66946007)(66476007)(53936002)(25786009)(256004)(99286004)(86362001)(4326008)(52116002)(81156014)(14444005)(66556008)(8936002)(31696002)(486006)(3846002)(110136005)(54906003)(14454004)(68736007)(6436002)(76176011)(6246003)(5660300002)(31686004)(229853002)(11346002)(386003)(102836004)(66066001)(478600001)(26005)(186003)(53546011)(6506007)(305945005)(2501003)(446003)(7736002)(2906002)(71200400001)(71190400001)(8676002)(6116002)(6512007)(6486002)(476003)(316002)(36756003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB1587;
 H:BN6PR11MB0051.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +PzCRvtQqKwx7boQVLHm1ayhjKtrhqatFlED8RHnaNt6joWIIzbt0jARX+TwYpUJ7JZiCDO5c9ZrQIl/YbvcHsEjcyVrOQ9qi2yjOrHOZ7LQ25IZuNFjPtohfDgifrw66/v8lkSG0Svfp7C7Jcn15etJvaG3y+AGRUZQOLxXF1YVtvNSx1/yXhRsqWqo+awI059EwQnc1ruURplGThj8xL8X+mwAZ1yRC9ELTMHmue5k+JbaZ/78CLyty4b/qLmtieT+FJFXQFuXA4dkQ36r/B9rzzs6uHmdlDhSjNt1gInC3LUbAwvWcm8Y+zA9baas1ZpFtgKOItaGufn7AFh2tAW+/FlVmVzKEbrR3yX7E7R/Rh2ifRBCkKhc0QtVTFevrVnrJcsRpJ68Ppyg4ifFe9EH287h8A4UeCFlGFTA5No=
Content-ID: <91900320333BAF4A9358F26125287B60@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c34d6f63-5153-4218-9951-08d71104008e
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2019 13:28:38.9187 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Codrin.Ciubotariu@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1587
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_062844_602146_73EB7B78 
X-CRM114-Status: GOOD (  10.58  )
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
Cc: alexandre.belloni@bootlin.com, lgirdwood@gmail.com, tiwai@suse.com,
 Ludovic.Desroches@microchip.com, broonie@kernel.org, perex@perex.cz,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjIuMDcuMjAxOSAyMToyNywgTWljaGHFgiBNaXJvc8WCYXcgd3JvdGU6DQo+IEV4dGVybmFs
IEUtTWFpbA0KPiANCj4gDQo+IFRoZSBjb25zdGFudHMgYXJlIHRoZSBzYW1lLCBidXQgdGhlIG5h
bWVzIGFyZSBtaXNsZWFkaW5nIHdoZW4gdXNlZCBmb3INCj4gVENNUiBjb25maWd1cmF0aW9uLiBV
c2UgbmFtZXMgZnJvbSBTQU1BNUQyIGRhdGFzaGVldC4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IE1p
Y2hhxYIgTWlyb3PFgmF3IDxtaXJxLWxpbnV4QHJlcmUucW1xbS5wbD4NCj4gLS0tDQo+ICAgc291
bmQvc29jL2F0bWVsL2F0bWVsX3NzY19kYWkuYyB8IDYgKysrLS0tDQo+ICAgc291bmQvc29jL2F0
bWVsL2F0bWVsX3NzY19kYWkuaCB8IDkgKysrKysrKystDQo+ICAgMiBmaWxlcyBjaGFuZ2VkLCAx
MSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL3NvdW5k
L3NvYy9hdG1lbC9hdG1lbF9zc2NfZGFpLmMgYi9zb3VuZC9zb2MvYXRtZWwvYXRtZWxfc3NjX2Rh
aS5jDQo+IGluZGV4IDA0NTQxZDdjMzNmZS4uY2YyY2ZjMzQ1Njc2IDEwMDY0NA0KPiAtLS0gYS9z
b3VuZC9zb2MvYXRtZWwvYXRtZWxfc3NjX2RhaS5jDQo+ICsrKyBiL3NvdW5kL3NvYy9hdG1lbC9h
dG1lbF9zc2NfZGFpLmMNCj4gQEAgLTU3Miw3ICs1NzIsNyBAQCBzdGF0aWMgaW50IGF0bWVsX3Nz
Y19od19wYXJhbXMoc3RydWN0IHNuZF9wY21fc3Vic3RyZWFtICpzdWJzdHJlYW0sDQo+ICAgCQkJ
fCBTU0NfQkYoUkNNUl9TVEFSVCwgU1NDX1NUQVJUX1JJU0lOR19SRik7DQo+ICAgDQo+ICAgCQl0
Y21yID0JICBTU0NfQkYoVENNUl9TVFRETFksIDApDQo+IC0JCQl8IFNTQ19CRihUQ01SX1NUQVJU
LCBTU0NfU1RBUlRfUklTSU5HX1JGKTsNCj4gKwkJCXwgU1NDX0JGKFRDTVJfU1RBUlQsIFNTQ19T
VEFSVF9SSVNJTkdfVEYpOw0KPiAgIA0KPiAgIAkJYnJlYWs7DQo+ICAgDQo+IEBAIC01ODQsNyAr
NTg0LDcgQEAgc3RhdGljIGludCBhdG1lbF9zc2NfaHdfcGFyYW1zKHN0cnVjdCBzbmRfcGNtX3N1
YnN0cmVhbSAqc3Vic3RyZWFtLA0KPiAgIAkJCXwgU1NDX0JGKFJDTVJfU1RBUlQsIFNTQ19TVEFS
VF9GQUxMSU5HX1JGKTsNCj4gICANCj4gICAJCXRjbXIgPQkgIFNTQ19CRihUQ01SX1NUVERMWSwg
MSkNCj4gLQkJCXwgU1NDX0JGKFRDTVJfU1RBUlQsIFNTQ19TVEFSVF9GQUxMSU5HX1JGKTsNCj4g
KwkJCXwgU1NDX0JGKFRDTVJfU1RBUlQsIFNTQ19TVEFSVF9GQUxMSU5HX1RGKTsNCj4gICANCj4g
ICAJCWJyZWFrOw0KPiAgIA0KPiBAQCAtNjAzLDcgKzYwMyw3IEBAIHN0YXRpYyBpbnQgYXRtZWxf
c3NjX2h3X3BhcmFtcyhzdHJ1Y3Qgc25kX3BjbV9zdWJzdHJlYW0gKnN1YnN0cmVhbSwNCj4gICAJ
CQl8IFNTQ19CRihSQ01SX1NUQVJULCBTU0NfU1RBUlRfUklTSU5HX1JGKTsNCj4gICANCj4gICAJ
CXRjbXIgPQkgIFNTQ19CRihUQ01SX1NUVERMWSwgMSkNCj4gLQkJCXwgU1NDX0JGKFRDTVJfU1RB
UlQsIFNTQ19TVEFSVF9SSVNJTkdfUkYpOw0KPiArCQkJfCBTU0NfQkYoVENNUl9TVEFSVCwgU1ND
X1NUQVJUX1JJU0lOR19URik7DQo+ICAgDQo+ICAgCQlicmVhazsNCj4gICANCj4gZGlmZiAtLWdp
dCBhL3NvdW5kL3NvYy9hdG1lbC9hdG1lbF9zc2NfZGFpLmggYi9zb3VuZC9zb2MvYXRtZWwvYXRt
ZWxfc3NjX2RhaS5oDQo+IGluZGV4IGFlNzY0Y2I1NDFjNy4uZWZiNDU4YjZkMTg3IDEwMDY0NA0K
PiAtLS0gYS9zb3VuZC9zb2MvYXRtZWwvYXRtZWxfc3NjX2RhaS5oDQo+ICsrKyBiL3NvdW5kL3Nv
Yy9hdG1lbC9hdG1lbF9zc2NfZGFpLmgNCj4gQEAgLTQyLDEzICs0MiwyMCBAQA0KPiAgICAqLw0K
PiAgIC8qIFNUQVJUIGJpdCBmaWVsZCB2YWx1ZXMgKi8NCj4gICAjZGVmaW5lIFNTQ19TVEFSVF9D
T05USU5VT1VTCTANCj4gLSNkZWZpbmUgU1NDX1NUQVJUX1RYX1JYCQkxDQo+ICsjZGVmaW5lIFNT
Q19TVEFSVF9UUkFOU01JVAkxDQo+ICsjZGVmaW5lIFNTQ19TVEFSVF9SRUNFSVZFCTENCj4gICAj
ZGVmaW5lIFNTQ19TVEFSVF9MT1dfUkYJMg0KPiArI2RlZmluZSBTU0NfU1RBUlRfTE9XX1RGCTIN
Cj4gICAjZGVmaW5lIFNTQ19TVEFSVF9ISUdIX1JGCTMNCj4gKyNkZWZpbmUgU1NDX1NUQVJUX0hJ
R0hfVEYJMw0KPiAgICNkZWZpbmUgU1NDX1NUQVJUX0ZBTExJTkdfUkYJNA0KPiArI2RlZmluZSBT
U0NfU1RBUlRfRkFMTElOR19URgk0DQo+ICAgI2RlZmluZSBTU0NfU1RBUlRfUklTSU5HX1JGCTUN
Cj4gKyNkZWZpbmUgU1NDX1NUQVJUX1JJU0lOR19URgk1DQo+ICAgI2RlZmluZSBTU0NfU1RBUlRf
TEVWRUxfUkYJNg0KPiArI2RlZmluZSBTU0NfU1RBUlRfTEVWRUxfVEYJNg0KPiAgICNkZWZpbmUg
U1NDX1NUQVJUX0VER0VfUkYJNw0KPiArI2RlZmluZSBTU0NfU1RBUlRfRURHRV9URgk3DQo+ICAg
I2RlZmluZSBTU1NfU1RBUlRfQ09NUEFSRV8wCTgNCj4gICANCj4gICAvKiBDS0kgYml0IGZpZWxk
IHZhbHVlcyAqLw0KPiANCg0KV291bGRuJ3QgaXQgYmUgZWFzaWVyIHRvIGp1c3QgdXNlIFNTQ19T
VEFSVCwgU1NDX1NUQVJUX0xPVywgDQpTU0NfU1RBUlRfSElHSCwgZXRjLj8gSWYgbm90Li4uDQoN
ClJldmlld2VkLWJ5OiBDb2RyaW4gQ2l1Ym90YXJpdSA8Y29kcmluLmNpdWJvdGFyaXVAbWljcm9j
aGlwLmNvbT4NCg0KVGhhbmtzIGFuZCBiZXN0IHJlZ2FyZHMsDQpDb2RyaW4NCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
