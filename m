Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6996F74EF4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 15:17:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xSZy7BfCtlTDZJVFFbO0jIV3EdMuNH/x4MV/gqexTsM=; b=kybmVqHHim6pu1
	aWx93IWKO2gqQcd/xmjVnYLd7ivSRLzinb3aMVbWakoYm981uqzwnfawhQ+Xii6lFtbeAG2TUS/OW
	csz/Lu7KpKQlJp+yTVPbu5eZfgehSwv5xDCSKnWhpV9p9Hpp+yOzP9QoKx4qG4CuZnqtZ6i8Joumw
	ATYnHJ8LAEESuCZ0nZOd6yUjD7N3q3C89eiFgioxnpcexJmt/fn0PAH4r1SVOKU4c2wOFPnKw6Vw0
	cKcZl9uVPPmgCUFBKGFEFKIHSh98p3KSnR1q5tRJmUwUnKnaoPg2sfaSkv2FPccnUnWzy4nfIHqrI
	uY8sHNBSNCl6OYRg9z/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqdbu-0006GI-5S; Thu, 25 Jul 2019 13:16:42 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqdbQ-00062J-PT
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 13:16:23 +0000
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
IronPort-SDR: cg16V9m0uJGmtqhTbNxUfybBgUP69b+trKe6w0TSs3arhc+l6XDUApwnVylJq6b0G6P+udimaB
 hZrfY8Ht4WBRG1L5pVINGQmeNvdz9qH7I85A81xqwlfRZQdnKXyHzqNyBZIFGx+xgEMSierXje
 OlMPif8gM4PkWbWDDnf488Ivk8UJFFsQeorW369odPdlyu35Rko1LfmRnT/J8RYuOsG9DqJL+a
 ROxP6hs17A9GTMBv0FBiqkfSvjSK3PoiQNNFwfJOccncxrrOUcqn+0ZV4EOB9w8XKP261HUMzp
 DnQ=
X-IronPort-AV: E=Sophos;i="5.64,306,1559545200"; d="scan'208";a="44117477"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Jul 2019 06:15:44 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.87.71) by
 chn-vm-ex01.mchp-main.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 25 Jul 2019 06:15:39 -0700
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 25 Jul 2019 06:15:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jHhS52aj7EU2wD3wUTaSAFBgajrPxiC4trkZqx6npnPs0kwW6pyt98nTvDKpa+UMZWVIcTUQLJpGvIBMlCsll+NFQFXhmdSWnSFPZKw6VKGgyZJajxtScIMxzrcfqpqWDAEJjLdnouZkKZWnL5iyKdw8vnlkDu/DLxiUygPtHq99yC6JMETbaN99DPagFLVWUCCMF5rugi6XYXtmuZL90VnSmG9rmjqzxhBnQ9WjsichECKsx+3VAHVhSLgTIh3p4VotBlwKB31U8bhbZi25kYrKpJkL1I97wjupzMT6Mq0NjkEs8nOOrH2Za7V7F5+5/RLxy/IygI8O8z8gy4ot9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HAzCAbOSdmIhV3sQ6dSyHH7UOBgbyE57R6YT81a3biQ=;
 b=WG+M4iSHLPlxZZGpOxeQbrxTc2ugdR6stPTuyT4R4WkWTWhe/Gne6vqJNJFUz133fjrCCH8rWPhneJkPusNsUAJm74bSUYni/Ca5zheLe17xYqgf206VT5KaIm79CpS+oFQ+8tbt7e9roWoM+QjffgrFlvbbrC1T6+u1sNhwhLwI9O7h9zxjxb0Be9FNGfzJW64Wmu4hcDejsvHKIp4mirBlBYtNa40lyuLy6ZTeX9COgj9Pv7yN1F8wRhLX92JKbQmQ0gQ8yt/ojmliluFNCz2lylLZlEK5BNAQJfKbE5pqHVLyzRLXFprreRsLSQUztEnVIT4Za0AIBRlfdVQqxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=microchip.com;dmarc=pass action=none
 header.from=microchip.com;dkim=pass header.d=microchip.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HAzCAbOSdmIhV3sQ6dSyHH7UOBgbyE57R6YT81a3biQ=;
 b=UXw1Hh8WNVc3VX1QacxDaomCUVZHOrOW9h4GjDjxMryh7VU5ClWvB1rSSAydAsJo+IU/cRrcnNcIbO9hTUFN2qJ/ZtFRS2Pf/vuQAc0CliAf2/gS5OoOyTndj5VkovQvbxebg82zYo9UXcD4Jh9k/OJ/It6zYVLy4zKEGWEfxm8=
Received: from BN6PR11MB0051.namprd11.prod.outlook.com (10.161.153.153) by
 BN6PR11MB1729.namprd11.prod.outlook.com (10.175.98.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Thu, 25 Jul 2019 13:15:36 +0000
Received: from BN6PR11MB0051.namprd11.prod.outlook.com
 ([fe80::7972:d14b:4c60:adb2]) by BN6PR11MB0051.namprd11.prod.outlook.com
 ([fe80::7972:d14b:4c60:adb2%3]) with mapi id 15.20.2094.013; Thu, 25 Jul 2019
 13:15:36 +0000
From: <Codrin.Ciubotariu@microchip.com>
To: <mirq-linux@rere.qmqm.pl>, <alsa-devel@alsa-project.org>
Subject: Re: [PATCH 3/5] ASoC: atmel_ssc_dai: implement left-justified data
 mode
Thread-Topic: [PATCH 3/5] ASoC: atmel_ssc_dai: implement left-justified data
 mode
Thread-Index: AQHVQLs7+spV2uxe5UKPaglefx2Ya6bbVJcA
Date: Thu, 25 Jul 2019 13:15:36 +0000
Message-ID: <1da85885-4b5c-fcfa-a7b7-d8ef8102debe@microchip.com>
References: <cover.1563819483.git.mirq-linux@rere.qmqm.pl>
 <ca3d0b124cdf6e2d0ec158a7948f08dd8abfd3b7.1563819483.git.mirq-linux@rere.qmqm.pl>
In-Reply-To: <ca3d0b124cdf6e2d0ec158a7948f08dd8abfd3b7.1563819483.git.mirq-linux@rere.qmqm.pl>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR0P264CA0226.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1e::22) To BN6PR11MB0051.namprd11.prod.outlook.com
 (2603:10b6:405:65::25)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 35b437d6-0093-401c-0837-08d711022e29
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN6PR11MB1729; 
x-ms-traffictypediagnostic: BN6PR11MB1729:
x-microsoft-antispam-prvs: <BN6PR11MB1729BBE7E5C733CF2BEB226FE7C10@BN6PR11MB1729.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:449;
x-forefront-prvs: 0109D382B0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(136003)(396003)(346002)(39860400002)(366004)(199004)(189003)(478600001)(66556008)(66066001)(476003)(2616005)(102836004)(3846002)(66946007)(316002)(52116002)(6486002)(76176011)(6436002)(64756008)(86362001)(110136005)(6506007)(53546011)(66476007)(25786009)(66446008)(11346002)(31696002)(6116002)(26005)(186003)(66574012)(8936002)(99286004)(71200400001)(31686004)(81166006)(305945005)(6246003)(81156014)(14444005)(36756003)(8676002)(6512007)(7736002)(386003)(446003)(53936002)(68736007)(14454004)(54906003)(5660300002)(229853002)(256004)(71190400001)(2501003)(486006)(4326008)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB1729;
 H:BN6PR11MB0051.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: biE1kXmWd0xEuTYRJg/4gFTVpMmK89EOcDcMNBwNzDaK6PaaHBexyhDXe6h/Fu4o+VI1OzEz2lwWkRRwMGdIeaCaj+GNK97aPFyxea2qrlQOreOk0SxobEdKJaWa5B4FYIcdaHP3NvrUpEs76CJlNDhmwiii6uHCQ2HSNnSZIC4i4xSrZsEd3qTdUF0Pt6VFp1sSOpornzyIUncGd9obm3ZahET4tgTZ+JP+rjk9VRMsD1UMcCn21jBNXUekNxBcYp2rNpcBIEERhS2ZWj4iSURy0vL1UT+6Eyo0moevT4RQ9oinoc+nEGcc8xMyLOFHipn3YObDl7wd5aXoN6nPgfhxErhY+/zOeecRjDsEj9YnKrIUSb7IqYl0yUj6VIhA+3hinCJZCItSRpSifZz1yDOIc9COdJItU5qEzgWTG5s=
Content-ID: <E0CC02D8A42C3844AF3645A1BCA91C23@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 35b437d6-0093-401c-0837-08d711022e29
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2019 13:15:36.0740 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Codrin.Ciubotariu@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1729
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_061613_060289_D46B8FE9 
X-CRM114-Status: GOOD (  11.19  )
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
IEUtTWFpbA0KPiANCj4gDQo+IFNpZ25lZC1vZmYtYnk6IE1pY2hhxYIgTWlyb3PFgmF3IDxtaXJx
LWxpbnV4QHJlcmUucW1xbS5wbD4NCj4gLS0tDQo+ICAgc291bmQvc29jL2F0bWVsL2F0bWVsX3Nz
Y19kYWkuYyB8IDEzICsrKysrKysrKysrKysNCj4gICAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0
aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL3NvdW5kL3NvYy9hdG1lbC9hdG1lbF9zc2NfZGFp
LmMgYi9zb3VuZC9zb2MvYXRtZWwvYXRtZWxfc3NjX2RhaS5jDQo+IGluZGV4IGIyOTkyNDk2ZTUy
Zi4uMDQ1NDFkN2MzM2ZlIDEwMDY0NA0KPiAtLS0gYS9zb3VuZC9zb2MvYXRtZWwvYXRtZWxfc3Nj
X2RhaS5jDQo+ICsrKyBiL3NvdW5kL3NvYy9hdG1lbC9hdG1lbF9zc2NfZGFpLmMNCj4gQEAgLTU2
NCw3ICs1NjQsMjAgQEAgc3RhdGljIGludCBhdG1lbF9zc2NfaHdfcGFyYW1zKHN0cnVjdCBzbmRf
cGNtX3N1YnN0cmVhbSAqc3Vic3RyZWFtLA0KPiAgIA0KPiAgIAlzd2l0Y2ggKHNzY19wLT5kYWlm
bXQgJiBTTkRfU09DX0RBSUZNVF9GT1JNQVRfTUFTSykgew0KPiAgIA0KPiArCWNhc2UgU05EX1NP
Q19EQUlGTVRfTEVGVF9KOg0KPiArCQkvKiBsZWZ0LWp1c3RpZmllZCBmb3JtYXQgKi8NCj4gKwkJ
ZnNfb3N5bmMgPSBTU0NfRlNPU19QT1NJVElWRTsNCj4gKw0KPiArCQlyY21yID0JICBTU0NfQkYo
UkNNUl9TVFRETFksIDApDQo+ICsJCQl8IFNTQ19CRihSQ01SX1NUQVJULCBTU0NfU1RBUlRfUklT
SU5HX1JGKTsNCj4gKw0KPiArCQl0Y21yID0JICBTU0NfQkYoVENNUl9TVFRETFksIDApDQo+ICsJ
CQl8IFNTQ19CRihUQ01SX1NUQVJULCBTU0NfU1RBUlRfUklTSU5HX1JGKTsNCj4gKw0KPiArCQli
cmVhazsNCj4gKw0KPiAgIAljYXNlIFNORF9TT0NfREFJRk1UX0kyUzoNCj4gKwkJLyogSTJTIGZv
cm1hdCA9IGxlZnQtanVzdGlmaWVkIHdpdGggc3RhcnQgYml0IGFuZCBpbnZlcnRlZCBMUkNMSyAq
Lw0KPiAgIAkJZnNfb3N5bmMgPSBTU0NfRlNPU19ORUdBVElWRTsNCj4gICANCj4gICAJCXJjbXIg
PQkgIFNTQ19CRihSQ01SX1NUVERMWSwgMSkNCj4gDQoNClJldmlld2VkLWJ5OiBDb2RyaW4gQ2l1
Ym90YXJpdSA8Y29kcmluLmNpdWJvdGFyaXVAbWljcm9jaGlwLmNvbT4NCg0KVGhhbmtzIGFuZCBi
ZXN0IHJlZ2FyZHMsDQpDb2RyaW4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
