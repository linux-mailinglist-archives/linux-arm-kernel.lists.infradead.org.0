Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE4971A4A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 16:27:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=acMvUT6o+hzT6XfGfKlJlbqtm9DPV+Zv48sJGHJA5Mg=; b=t2EosCyvSDXSL+
	kALVH2VyYqit3VHv++R+iqg6cbXI3/7wiSU1m58CtuUD9Azqn2Km8yMdhLmWJobX2Px4D0Ut5Rla7
	HrXfYmD9xDoK9UcA+e1a1CvCVHUui3+Uha/z2P12dY2GxcOmskqHuIfaSP23Cwyl+/g2pTLVB0HN5
	CCt4fVMrbSSNZymuGdDbSBoJsQvDuczVAGf5A7c8LQOrogNDX5c9v59xuMW2tpxnZb81t/LNzJfRL
	6AljV5iIa5MXlLIHQU2ZlwdmIYDEH5fljRxPc6d4+VcREzTw0Vi/SN5/2dTW+tzF2CJvza8Nub5Vi
	dnp1ZzuHy/4Se5KNf74A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpvl0-0000jc-4V; Tue, 23 Jul 2019 14:27:10 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpvkn-0000j6-5B
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 14:26:58 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Codrin.Ciubotariu@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="Codrin.Ciubotariu@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Codrin.Ciubotariu@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: irdh4VULUK2LgM+QftAZmo58DGSv492irnwyIcVSMTjaeuLr7yrm2Qbsn/B7Uj1R9zKObiZaxS
 wqsUyppZQEAPC0KpapbojSEXApd+5446ga8jzkGEi5lol3c4wCfuvgZSFUc3nY3xIyD4dcGkCJ
 3F1hJaHiUDiHmul5YKE6Jd3v+t0il5wkrheNU8bAgPK5zkMDP102rq6UG1u5HXnq6OG/AlYpco
 NLbvEdr0D9EROX3zL3E4ajG6hut9TTaSLarPRg5bI2qg5OIBQE6a9XOQjO2GfX1rlhKOSDTv1t
 XZc=
X-IronPort-AV: E=Sophos;i="5.64,299,1559545200"; d="scan'208";a="42410022"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Jul 2019 07:26:53 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.87.152) by
 chn-vm-ex04.mchp-main.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 23 Jul 2019 07:26:53 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 23 Jul 2019 07:26:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J4MOeXPUxZNcMFqA2woSWJJmZocE1MfCGaRwwwmZMdF58fJXo8SLsRrt1s6n+PK+XQCIDCus2q75+H+3AsSdaSqbJ24FJvrJ3i8wd8h/vPDAefG+V1lcmlr0f0I/fWf+47YZKYnoLKnbr3BPsyLM+pIjatnk3L5oU/ScXjTmxTzb2F0gI4SSoLhryK/FE9GiMMvRYBZBfWccnkgkeO6NX0Hgme4dNKnFh5oyysSKteqY/s0v3dHz/A0d0VvUfCeDYlKBc/wrZZaut1rKKTcZQPyVGWqpwB38VVs40J1i6SwxYh97HI2ONF7ne1/1cG0sEXVb65GFTe6HmfuOeVznRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FjcMarN/NqLs6Erp73MiJw9BTDCfQPG5Ko2AqOOb1ZU=;
 b=e+qHN5OvcHmIgpZS2Y5HLFEOCtLSkNYh/h0dJ7QUDzQ9B5VnaG4wY7KU33dN0YzWuusoyvcjT7lDuzncTS6PdfraNaX6vhNtWuaMB06i6BH3hYub3DYMpQRkGnYmOFThQvFWKJQIMFr5iZWh0Se8itEonQ269ek06TCz7iINnqBkVY4wxioEXMwxpnE/zCkIEWUSRELv7zyYcfX2m/ZKjzHwAogtOAuImViCTnvo2HUnxZ4D7CRZo5gD0lQFOsodmo5bTZs0WqqaWcISW9bXnt7aZk0nIWQ5s/WW31+uVb8ZqfEfWpzsJppeLEf6ewr8o2VBfOWs14onGW5hF4W9zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=microchip.com;dmarc=pass action=none
 header.from=microchip.com;dkim=pass header.d=microchip.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FjcMarN/NqLs6Erp73MiJw9BTDCfQPG5Ko2AqOOb1ZU=;
 b=cKzgdKpappEutFss0mXaz9A/mgjPwhBZBv2I82Tg2MX8apgMR+jUp4dRY6RY76khT1L6HimObj4XzRiZm7+jJVKEFPpJNiblsp2qptkm94+QUIobLcfuCat9o/1FGLmg7y2V12u2cJSffbIny5YE1vYvGXkk5lMlvgi27iLQjlc=
Received: from BN6PR11MB0051.namprd11.prod.outlook.com (10.161.153.153) by
 BN6PR11MB1682.namprd11.prod.outlook.com (10.173.27.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Tue, 23 Jul 2019 14:26:49 +0000
Received: from BN6PR11MB0051.namprd11.prod.outlook.com
 ([fe80::7972:d14b:4c60:adb2]) by BN6PR11MB0051.namprd11.prod.outlook.com
 ([fe80::7972:d14b:4c60:adb2%3]) with mapi id 15.20.2094.013; Tue, 23 Jul 2019
 14:26:49 +0000
From: <Codrin.Ciubotariu@microchip.com>
To: <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 1/5] ASoC: atmel: enable SSC_PCM_DMA in Kconfig
Thread-Topic: [PATCH 1/5] ASoC: atmel: enable SSC_PCM_DMA in Kconfig
Thread-Index: AQHVQLssYvZ9YoKrUEmAJfgllXwkpabYNckAgAAOCoA=
Date: Tue, 23 Jul 2019 14:26:49 +0000
Message-ID: <b002ce67-5a86-0936-3f40-9eac8d152cdd@microchip.com>
References: <cover.1563819483.git.mirq-linux@rere.qmqm.pl>
 <ee65cc7b889b2a8d1139d1d25977842c956d1cf4.1563819483.git.mirq-linux@rere.qmqm.pl>
 <1f3a4256-58de-27a4-8095-54fc6baa6d89@microchip.com>
In-Reply-To: <1f3a4256-58de-27a4-8095-54fc6baa6d89@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR0802CA0010.eurprd08.prod.outlook.com
 (2603:10a6:3:bd::20) To BN6PR11MB0051.namprd11.prod.outlook.com
 (2603:10b6:405:65::25)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a8ed5974-c00d-444c-dc86-08d70f79cc8d
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN6PR11MB1682; 
x-ms-traffictypediagnostic: BN6PR11MB1682:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BN6PR11MB1682240084C29814D25E8371E7C70@BN6PR11MB1682.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0107098B6C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(136003)(396003)(346002)(376002)(189003)(199004)(51444003)(52116002)(31696002)(305945005)(386003)(81166006)(14454004)(2616005)(26005)(5660300002)(99286004)(446003)(6246003)(5640700003)(68736007)(81156014)(53936002)(6512007)(11346002)(76176011)(7736002)(86362001)(6306002)(3846002)(6116002)(66574012)(2906002)(8936002)(66066001)(66556008)(6436002)(14444005)(966005)(256004)(316002)(66446008)(64756008)(71190400001)(71200400001)(102836004)(66946007)(25786009)(186003)(476003)(66476007)(229853002)(6486002)(478600001)(36756003)(31686004)(486006)(2351001)(53546011)(6916009)(6506007)(2501003)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB1682;
 H:BN6PR11MB0051.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: DQBH1V5QNhaMduvreO397Sub7kh5biZQV8EV4tPjC6Pgo7H+CK+bQOmev7IiHSet2oXgCzeSz5z6IigkWii/8L3OsGKA+5Fd6pWFSjkmLT0tggwbFEs8U1gFBxAgZ/OXpDYo3ZZtZLCX9AwGtDYMokwDD9GYEv3SWGhwK1wIOMkFnxEzB6zsrOfy+TDvqMcb3j1ORLmhQL94avB5tdFVl1mX61z1JHnX8XXtZIjtXJoeksWXifutRlfncw1ksuP8cMYApQidn7bhV7G0AY+iApFDl082RGI1KFH7bvLyv2ljrgLLHqiqkWM5m89bSHgciJFdoKSVBEUCpdJg0QDm6svAhFPl6Jf/T+UsAJIXE5xalhAtojdi5TUFcZlw9e9KGlJ772+y77PL6a6j+yX9nf6WwdOMii/nEquMecqi1fM=
Content-ID: <005EA3C534B61B43A0105B4B98057786@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a8ed5974-c00d-444c-dc86-08d70f79cc8d
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2019 14:26:49.7190 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Codrin.Ciubotariu@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1682
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_072657_421007_A1517C01 
X-CRM114-Status: GOOD (  14.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjMuMDcuMjAxOSAxNjozNiwgQ29kcmluLkNpdWJvdGFyaXVAbWljcm9jaGlwLmNvbSB3cm90
ZToNCj4gT24gMjIuMDcuMjAxOSAyMToyNywgTWljaGHFgiBNaXJvc8WCYXcgd3JvdGU6DQo+PiBB
bGxvdyBTU0MgdG8gYmUgdXNlZCBvbiBwbGF0Zm9ybXMgZGVzY3JpYmVkIHVzaW5nIGF1ZGlvLWdy
YXBoLWNhcmQNCj4+IGluIERldmljZSBUcmVlLg0KPj4NCj4+IFNpZ25lZC1vZmYtYnk6IE1pY2hh
xYIgTWlyb3PFgmF3IDxtaXJxLWxpbnV4QHJlcmUucW1xbS5wbD4NCj4+IC0tLQ0KPj4gICAgc291
bmQvc29jL2F0bWVsL0tjb25maWcgfCAyICstDQo+PiAgICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvc291bmQvc29jL2F0
bWVsL0tjb25maWcgYi9zb3VuZC9zb2MvYXRtZWwvS2NvbmZpZw0KPj4gaW5kZXggMDZjMWQ1Y2U2
NDJjLi45ZWY5ZDI1YmI1MTcgMTAwNjQ0DQo+PiAtLS0gYS9zb3VuZC9zb2MvYXRtZWwvS2NvbmZp
Zw0KPj4gKysrIGIvc291bmQvc29jL2F0bWVsL0tjb25maWcNCj4+IEBAIC0yNSw3ICsyNSw3IEBA
IGNvbmZpZyBTTkRfQVRNRUxfU09DX0RNQQ0KPj4gICAgCWRlZmF1bHQgeSBpZiBTTkRfQVRNRUxf
U09DX1NTQ19ETUE9eSB8fCAoU05EX0FUTUVMX1NPQ19TU0NfRE1BPW0gJiYgU05EX0FUTUVMX1NP
Q19TU0M9eSkNCj4+ICAgIA0KPj4gICAgY29uZmlnIFNORF9BVE1FTF9TT0NfU1NDX0RNQQ0KPj4g
LQl0cmlzdGF0ZQ0KPj4gKwl0cmlzdGF0ZSAiU29DIFBDTSBEQUkgc3VwcG9ydCBmb3IgQVQ5MSBT
U0MgY29udHJvbGxlciB1c2luZyBETUEiDQo+IA0KPiBDb3VsZCB5b3UgcGxlYXNlIG1ha2Ugc29t
ZXRoaW5nIHNpbWlsYXIgZm9yIFNORF9BVE1FTF9TT0NfU1NDX1BEQz8gQWxzbywNCj4gSSB0aGlu
ayB0aGF0IGl0IHNob3VsZCBzZWxlY3QgQVRNRUxfU1NDLCB0byBiZSBhYmxlIHRvIHVzZQ0KPiBz
aW1wbGUvZ3JhcGgtY2FyZCB3aXRoIFNTQy4NCg0KSXQgbG9va3MgbGlrZSAnc2VsZWN0JyBjcmVh
dGVzIGEgcmVjdXJzaXZlIGRlcGVuZGVuY3kgd2l0aCBhdWRpbyBtYWNoaW5lIA0KZHJpdmVycywg
c28gdHJ5ICdkZXBlbmRzIG9uJyBpbnN0ZWFkLg0KDQo+IA0KPiBUaGFua3MgYW5kIGJlc3QgcmVn
YXJkcywNCj4gQ29kcmluDQo+IA0KPj4gICAgDQo+PiAgICBjb25maWcgU05EX0FUTUVMX1NPQ19T
U0MNCj4+ICAgIAl0cmlzdGF0ZQ0KPj4NCj4gDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fDQo+IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0DQo+
IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZw0KPiBodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwNCj4gDQoNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
