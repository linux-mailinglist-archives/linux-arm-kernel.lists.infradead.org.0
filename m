Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 913191B1C0B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 04:40:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j8LnWUgVRVmDSR0kQZ9GnCMgJr0tacKzxo+HZaoADeA=; b=KFOcI57n9eu1X0
	6kNaEgQ3gtnwca02q0nsIreVgHXYfZZ4WXPtWhM8vy0Xl877ZRxHXlmk5EpltMNgNAu9FX3ixpKCv
	f3tJt9KehFCKWwcQkB46lhKkm8pnvjH7AEU0oVUI/C8dj08bJFgynb6f/9rfkGXdE/1UzC/KnPLvo
	5AW6kPJYKQAD3TCGMoNne9dleu0JwROETVqdTtMNNLd88dD/VMdAC3/I1lIDQGtn3w5zhcx8oS5fs
	M3MZ0ZQTiWIKwzggnLPle4EdGr+DaXGM2zFkLeeqHKgTxRtqZ4waLSNWLatLvANqmJD2grAB4u4Tq
	q8gyyaHtmsZE1Hjy/5Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQiph-0005sr-36; Tue, 21 Apr 2020 02:40:21 +0000
Received: from mail-eopbgr60076.outbound.protection.outlook.com ([40.107.6.76]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQipS-0004r3-7Q
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 02:40:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k+sENAXWXrh/+S71gjV5KP1+lPTBQZ5nWbCPUDMjzfe4JBWSINSOdq20wKKte2/Q1etuQfFVtC0mdQQCO+INlFoIw2g5aiXX4K3b5rvtyLW4ms7BHy5T6mV5FPPLZ6xHhTOVpYKOokok/nyaqxvXFVOJRxtcgvc5beNQImtP7NxYG2XI347VvzdvtgquLR5lqG3zDS49RqIUAVPij8Ao1iUocFsiJjvlv2i30ufFsI3+gJiTps7YRDdVRJavulymIF9GN+Me2JhA0yCDMVFyxiPlUKVIA0ZhBUZKcLVDc6iAvB++bhkA4m7b+JDBlTjs1UiDvuk9EtxvAh3WC6p1Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oVIXkRN7f4zYtYAZ2PkqtO0QTeTyRogBduGTmWeLMPI=;
 b=P2N17A61jQA5KUFh2Y7lQb6dz1zupN8FCC8jK+H+MFHpcjkQ/DvoTR69bkQrPK+rciYZEBUo/J2ksAtNxiz8XIT5sw0jJHVpQjE5Meq+ld5SmvEVtiVWYW1NJcymTTcKCSxnn1SS751CXC2+fN7iQh5MxveI8D6ZYVJQ9LJkMVMlcxrUnZ5c8FFhMUnAu4DDk+wp5YQvKV6VV6qHtHDEoI6wsnse5iZYNAni+KuOpByRRJtDpfDyjpnYO4BYgdV1JSTWsfc9H/sYtvKuckbqVtcPiU/mofrudU8gHHF6QzimjJ8ACUOBKYpd/X8PCu3fv/9qhPFbAvtefk1n5xDwlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oVIXkRN7f4zYtYAZ2PkqtO0QTeTyRogBduGTmWeLMPI=;
 b=m5gzQEKyvFSDpf8rQ+jy4yeBGb649hlPM7viZ+hCY1P7sPJ8rrgOYntTFjVaRzZSL8VAeIBYn3qfwERiuarpnD063wKVE/7l8zaI9LXbkzniii+/mY3YOWEJmByfMi9OCvw2xheqflZOl2WwWN4D1OtZIBXREavT0sGRFvXvE+s=
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB8PR04MB5865.eurprd04.prod.outlook.com (2603:10a6:10:a6::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.27; Tue, 21 Apr
 2020 02:40:03 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::2924:94ba:2206:216e]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::2924:94ba:2206:216e%8]) with mapi id 15.20.2921.030; Tue, 21 Apr 2020
 02:40:03 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: John Garry <john.garry@huawei.com>, "peterz@infradead.org"
 <peterz@infradead.org>, "mingo@redhat.com" <mingo@redhat.com>,
 "acme@kernel.org" <acme@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "alexander.shishkin@linux.intel.com"
 <alexander.shishkin@linux.intel.com>, "jolsa@redhat.com" <jolsa@redhat.com>,
 "namhyung@kernel.org" <namhyung@kernel.org>, "will@kernel.org"
 <will@kernel.org>
Subject: RE: [RFC PATCH v2 09/13] perf vendor events: Add JSON metrics for
 imx8mm DDR Perf
Thread-Topic: [RFC PATCH v2 09/13] perf vendor events: Add JSON metrics for
 imx8mm DDR Perf
Thread-Index: AQHWFKVVX4GZScOVYUWAj3jiI1Adb6iBYhwQgAB3pYCAAAOmIIAANv2AgAC7g0A=
Date: Tue, 21 Apr 2020 02:40:03 +0000
Message-ID: <DB8PR04MB6795E2C668C959D4B551F9C3E6D50@DB8PR04MB6795.eurprd04.prod.outlook.com>
References: <1587120084-18990-1-git-send-email-john.garry@huawei.com>
 <1587120084-18990-10-git-send-email-john.garry@huawei.com>
 <DB8PR04MB67959336311C0CF525BB24ADE6D40@DB8PR04MB6795.eurprd04.prod.outlook.com>
 <3486ee3b-7240-d5a7-5a3c-952133a5e9f0@huawei.com>
 <DB8PR04MB679576DAC6EBFFD13F129488E6D40@DB8PR04MB6795.eurprd04.prod.outlook.com>
 <d54e6c6b-0fe6-0cda-e93e-151ce50d0f66@huawei.com>
In-Reply-To: <d54e6c6b-0fe6-0cda-e93e-151ce50d0f66@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b9e4d70f-6f72-4811-724c-08d7e59d4b7e
x-ms-traffictypediagnostic: DB8PR04MB5865:
x-microsoft-antispam-prvs: <DB8PR04MB58650A0856E18ED4D0F758DBE6D50@DB8PR04MB5865.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 038002787A
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR04MB6795.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(39860400002)(346002)(376002)(136003)(366004)(396003)(76116006)(66446008)(64756008)(81156014)(66556008)(66946007)(52536014)(8936002)(8676002)(33656002)(53546011)(71200400001)(6506007)(5660300002)(7696005)(26005)(54906003)(110136005)(66476007)(316002)(2906002)(7416002)(186003)(4326008)(478600001)(9686003)(86362001)(55016002)(32563001);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uNBTluWTpq/sbOgYL7kHRT8hL9Wv9FBCIvH933bU6nnzVnOSVkRopafq6Wmj+CK79Tyzga2hufEQDD3tzf0Z+BlvoAuXAWhpscQllLotfrSkz67X3b3P1Esmk5j7FI0MWNeGBpB+EDmbcwUDIVUfb2QXlgBl/qBH0ES3i5bBuZ6EFYoAJzECDffSYtGrDQqYIqC+dj5L0USJL0AtPXSa3RHHfpmwuZlDRRDQLYhyqD5iHOeAbkKoepHoGtifM4eJKrFlLmqCHxj+BbUf31zAweUdDbH38u0IdQ3VakMeFfHXGL1qYrgi2CqXkEgdHdxxURDbHwt48EFx+fUb4rxJtH0xTUk1r1TfDkpWRUlm0quCB3/px6JLegUQANeCeQkvOs1Tq3KYF1ervHxX0R+6LEhOqBbj3cInguhEDHmBxGi9F5n3BIcHGjOWBVwWhqp1pMk3YSdxcPEl+3dKt/WIIEkxcMwzXB7wRQUEPJ/C6HCQFvc8mQJlHObGTQLi6ews
x-ms-exchange-antispam-messagedata: xZEGPBkf+ZWwxtd60cFKegi87cw+Zd/AENss1ynkTKmqX6FHfnEqDl1ZEMCVSXrb4V094wmjm0Qt6fVKAKiytl0Zzec5z3D8tzbuuSUcfXgBVsf3Wbx6fWc28zSJCcEkpBCCZ6apLLQK4OLs7YlImA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b9e4d70f-6f72-4811-724c-08d7e59d4b7e
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2020 02:40:03.4602 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tclKpsdRvq36VZ8tF0KFQI9LnhhhBGfpglOhzwMqeq0+yZRYsBsXOeRku84paiBet5L+HH+mr0t63CAejkfQVw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB5865
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_194007_598841_2C9D8EE2 
X-CRM114-Status: GOOD (  14.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.76 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.76 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "irogers@google.com" <irogers@google.com>,
 "ak@linux.intel.com" <ak@linux.intel.com>, Linuxarm <linuxarm@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Zhangshaokun <zhangshaokun@hisilicon.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEpvaG4gR2FycnkgPGpvaG4u
Z2FycnlAaHVhd2VpLmNvbT4NCj4gU2VudDogMjAyMMTqNNTCMjDI1SAyMjoyMA0KPiBUbzogSm9h
a2ltIFpoYW5nIDxxaWFuZ3FpbmcuemhhbmdAbnhwLmNvbT47IHBldGVyekBpbmZyYWRlYWQub3Jn
Ow0KPiBtaW5nb0ByZWRoYXQuY29tOyBhY21lQGtlcm5lbC5vcmc7IG1hcmsucnV0bGFuZEBhcm0u
Y29tOw0KPiBhbGV4YW5kZXIuc2hpc2hraW5AbGludXguaW50ZWwuY29tOyBqb2xzYUByZWRoYXQu
Y29tOw0KPiBuYW1oeXVuZ0BrZXJuZWwub3JnOyB3aWxsQGtlcm5lbC5vcmcNCj4gQ2M6IGlyb2dl
cnNAZ29vZ2xlLmNvbTsgYWtAbGludXguaW50ZWwuY29tOyBMaW51eGFybQ0KPiA8bGludXhhcm1A
aHVhd2VpLmNvbT47IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IFpoYW5nc2hhb2t1bg0K
PiA8emhhbmdzaGFva3VuQGhpc2lsaWNvbi5jb20+OyByb2Jpbi5tdXJwaHlAYXJtLmNvbTsNCj4g
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnDQo+IFN1YmplY3Q6IFJlOiBbUkZD
IFBBVENIIHYyIDA5LzEzXSBwZXJmIHZlbmRvciBldmVudHM6IEFkZCBKU09OIG1ldHJpY3MgZm9y
DQo+IGlteDhtbSBERFIgUGVyZg0KPiANCj4gT24gMjAvMDQvMjAyMCAxMjoyNSwgSm9ha2ltIFpo
YW5nIHdyb3RlOg0KPiA+Pj4gaW14OF9kZHIud3JpdGVfY3ljbGVzOiAxMzE1MyAxMDAwNDk1MTI1
IDEwMDA0OTUxMjUNCj4gPj4+ICMgICAgICAgICAgIHRpbWUgICAgICAgICAgICAgY291bnRzIHVu
aXQgZXZlbnRzDQo+ID4+PiAgICAgICAgMS4wMDA0NzY2MjUgICAgICAgICAgICAgIDEzMTUzDQo+
IGlteDhfZGRyLndyaXRlX2N5Y2xlcw0KPiA+PiAjICAgIDIwNS41IE1CICBpbXg4bW1fZGRyX3dy
aXRlLmFsbA0KPiA+Pj4gaW14OF9kZHIud3JpdGVfY3ljbGVzOiAzNTgyIDEwMDA2ODEzNzUgMTAw
MDY4MTM3NQ0KPiA+Pj4gICAgICAgIDIuMDAxMTY3NzUwICAgICAgICAgICAgICAgMzU4Mg0KPiBp
bXg4X2Rkci53cml0ZV9jeWNsZXMNCj4gPj4gIyAgICAgNTYuMCBNQiAgaW14OG1tX2Rkcl93cml0
ZS5hbGwNCj4gPj4+DQo+ID4+PiA4UU06DQo+ID4+PiByb290QGlteDhxbW1lazp+IyAuL3BlcmYg
c3RhdCAtdiAtYSAtSSAxMDAwIC1NIGlteDhxbV9kZHJfcmVhZC5hbGwNCj4gPj4gTm90ZTogZm9y
IHRoaXMgZXhhbXBsZSwgSSBkb24ndCBrbm93IHdoeSB5b3UgZGlkbid0IHVzZQ0KPiA+PiBpbXg4
bW1fZGRyX3dyaXRlLmFsbCwgYXMgZm9yIHlvdXIgOE1NIHRlc3QsIHNvIHdlIGNhbiBjb21wYXJl
IHRoZSBzYW1lLg0KPiA+IFllcywgSSB1c2UgdGhlIGlteDhtbV9kZHJfd3JpdGUuYWxsLCBJIGp1
c3QgcmUtbmFtZSB0aGUgbWV0cmljLCBjaGFuZ2UNCj4gbm90aGluZyBlbHNlLg0KPiANCj4gV2Vs
bCBpdCdzIGhhcmQgdG8gZXZlbiBrZWVwIHVwIC0gbGV0IGFsb25lIGhlbHAgLSAgd2hlbiB5b3Un
cmUgZGVidWdnaW5nIFFNDQo+IHN1cHBvcnQsIHdoaWNoIGlzIG5vdCBzdXBwb3J0ZWQgaW4gdGhp
cyBzZXJpZXMgKG9ubHkgTU0gaXMpLCBhbmQgSSBkb24ndCBrbm93DQo+IGV4YWN0bHkgd2hhdCBp
cyBpbiB0aGlzIEpTT04gd2hvIGhhdmUgY3JlYXRlZCAoZm9yIFFNKS4NCj4gDQo+IEZvciBhIHN0
YXJ0LCB0aGUgTU0ganNvbiB3aWxsIHVzZSAiaS5teDhtbSIgY29tcGF0LCB3aGljaCBJIGZpZ3Vy
ZSBzaG91bGQgbm90DQo+IHdvcmsgZm9yIFFNLiBQbGVhc2UgZXhwbGFpbiB0aGlzLg0KDQpGb3Ig
Y29tbW9uIGV2ZW50cywgY3ljbGVzKGV2ZW50PTB4MDApLCByZWFkLWN5Y2xlcyhldmVudD0weDJh
KSwgd3JpdGUtY3ljbGVzKGV2ZW50PTB4MmIpLCByZWFkKGV2ZW50PTB4MzUpLCB3cml0ZShldmVu
dD0weDM4KSwgYWxsIHRoZXNlIGV2ZW50cyBsaXN0ZWQgaW4gZmlsZSAodG9vbHMvcGVyZi9wbXUt
ZXZlbnRzL2FyY2gvYXJtNjQvZnJlZXNjYWxlL2lteDhtbS9zeXMvZGRyYy5qc29uKSBhcmUgY29t
cGF0aWJsZSBmb3IgYWxsIGkuTVg4IEREUiBQZXJmLCBvbmx5IEFYSSBldmVudHMgYXJlIHZhcmlv
dXMgZnJvbSBlYWNoIFNvQy4gVGhlc2UgZXZlbnRzIHRlc3RlZCBva2F5IGZvciBNWDhNTSBhbmQg
TVg4UU0uDQoNClNhbWUgc2l0dWF0aW9uLCBtZXRyaWNzIGxpc3RlZCBpbiBmaWxlICh0b29scy9w
ZXJmL3BtdS1ldmVudHMvYXJjaC9hcm02NC9mcmVlc2NhbGUvaW14OG1tL3N5cy9tZXRyaWNzLmpz
b24pIGlzIGFsc28gY29tcGF0aWJsZSBmb3IgYWxsIGkuTVg4IEREUiBQZXJmLCBzaW5jZSBtZXRy
aWMgZXhwcmVzc2lvbiBvbmx5IGNvbnRhaW5zIHJlYWQtY3ljbGVzKGV2ZW50PTB4MmEpIGFuZCB3
cml0ZS1jeWNsZXMoZXZlbnQ9MHgyYikuDQoNCkdlbmVyYWxseSBzcGVha2luZywgbm93IHBtdSBl
dmVudHMgYW5kIG1ldHJpY3Mgb24geW91ciBicmFuY2ggc2hvdWxkIHN1cHBvcnQgYm90aCBNWDhN
TSBhbmQgTVg4UU0gd2l0aG91dCBhbnkgY2hhbmdlLCBhcyBsb25nIGFzIHRoZXkgZXhwb3J0ICJp
Lm14OG1tIiBpZGVudGlmaWVyLg0KDQpBcyBJIG1lbnRpb25lZCBiZWZvcmUsIHBtdSBldmVudHMg
dGVzdGVkIG9rYXkgZm9yIE1YOE1NIGFuZCBNWDhRTS4gTWV0cmljIGFsc28gdGVzdGVkIG9rYXkg
Zm9yIE1YOE1NLg0KRm9yIE1YOFFNIHdoaWNoIGhhcyB0d28gSFcgUE1VKGRkcjAvZGRyMSksIG1l
dHJpYyBjYW4gd29yaywgYnV0IGl0IHdvdWxkIGFkZCBtZXRyaWMgdHdpY2Ugd2hpY2ggSSB0aGlu
ayBpZiBpdCBpcyBwb3NzaWJsZSB0byBpbXByb3ZlIGl0IGluIHlvdXIgc2VyaWFscy4gDQoNCkkg
Z3Vlc3MgdGhlIHJvb3QgY2F1c2UgaXMgdGhhdCAiaW14OF9kZHIucmVhZF9jeWNsZXMiIGNvbnRh
aW5zIHR3byBIVyBQTVUgZXZlbnRzIChpbXg4X2RkcjAvcmVhZC1jeWNsZXMvIGFuZCBpbXg4X2Rk
cjEvcmVhZC1jeWNsZXMvKSBhbmQgbWV0cmljZ3JvdXAgY2FuJ3QgaGFuZGxlIGl0IGF0IHByZXNl
bnQuDQoNCjhRTToNCnJvb3RAaW14OHFtbWVrOn4jIC4vcGVyZiBzdGF0IC12IC1hIC1JIDEwMDAg
LU0gaW14OG1tX2Rkcl9yZWFkLmFsbCANClVzaW5nIENQVUlEIDB4MDAwMDAwMDA0MTBmZDAzMA0K
bWV0cmljIGV4cHIgaW14OF9kZHIucmVhZF9jeWNsZXMgKiA0ICogNCBmb3IgaW14OG1tX2Rkcl9y
ZWFkLmFsbCANCmZvdW5kIGV2ZW50IGlteDhfZGRyLnJlYWRfY3ljbGVzDQptZXRyaWMgZXhwciBp
bXg4X2Rkci5yZWFkX2N5Y2xlcyAqIDQgKiA0IGZvciBpbXg4bW1fZGRyX3JlYWQuYWxsIA0KZm91
bmQgZXZlbnQgaW14OF9kZHIucmVhZF9jeWNsZXMNCmFkZGluZyB7aW14OF9kZHIucmVhZF9jeWNs
ZXN9Olcse2lteDhfZGRyLnJlYWRfY3ljbGVzfTpXDQppbXg4X2Rkci5yZWFkX2N5Y2xlcyAtPiBp
bXg4X2RkcjAvZXZlbnQ9MHgyYS8NCmlteDhfZGRyLnJlYWRfY3ljbGVzIC0+IGlteDhfZGRyMS9l
dmVudD0weDJhLw0KaW14OF9kZHIucmVhZF9jeWNsZXMgLT4gaW14OF9kZHIwL2V2ZW50PTB4MmEv
DQppbXg4X2Rkci5yZWFkX2N5Y2xlcyAtPiBpbXg4X2RkcjEvZXZlbnQ9MHgyYS8NCmlteDhfZGRy
LnJlYWRfY3ljbGVzOiAyMjc0OCAxMDAwMzc4NzUwIDEwMDAzNzg3NTANCmlteDhfZGRyLnJlYWRf
Y3ljbGVzOiAyNDY0MCAxMDAwMzc2NjI1IDEwMDAzNzY2MjUNCmlteDhfZGRyLnJlYWRfY3ljbGVz
OiAyMjgwMCAxMDAwMzc1MTI1IDEwMDAzNzUxMjUNCmlteDhfZGRyLnJlYWRfY3ljbGVzOiAyNDYx
NiAxMDAwMzcyNjI1IDEwMDAzNzI2MjUNCiMgICAgICAgICAgIHRpbWUgICAgICAgICAgICAgY291
bnRzIHVuaXQgZXZlbnRzDQogICAgIDEuMDAwMzc3MjUwICAgICAgICAgICAgICA0NzM4OCAgICAg
IGlteDhfZGRyLnJlYWRfY3ljbGVzICAgICAgIyAgICA3NDAuNCBNQiAgaW14OHFtX2Rkcl9yZWFk
LmFsbA0KICAgICAxLjAwMDM3NzI1MCAgICAgICAgICAgICAgNDc0MTYgICAgICBpbXg4X2Rkci5y
ZWFkX2N5Y2xlcw0KDQpCZXN0IFJlZ2FyZHMsDQpKb2FraW0gWmhhbmcNCj4gVGhhbmtzLA0KPiBK
b2huDQo+IA0KPiA+DQo+ID4+PiBVc2luZyBDUFVJRCAweDAwMDAwMDAwNDEwZmQwMzANCj4gPj4+
IG1ldHJpYyBleHByIGlteDhfZGRyLnJlYWRfY3ljbGVzICogNCAqIDQgZm9yIGkNCg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
