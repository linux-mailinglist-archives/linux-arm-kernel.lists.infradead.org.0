Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ACCAA0436
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 16:06:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RcmMqjFuxadaeQmuCMHobbha+gMEwQP5uwyX36qwPJU=; b=UXurlaeZgogOnl
	R9xmh0GpwL1VyERJELG+KVdFK3aQP0r4GnIhlpQO3m9ybx4IuhkXOFXeADlUuq67tSUb+shy8BIzd
	AFrQrNLjv6q8rI6YU3WKrM95k296+xQ6sPXIxlqZu6hA/3QzOYkWfF1AL/JxsuMaEzaGFGex9n3kq
	YXqtbtso4PoachKFmfv1YfdAgV5I3plK9YTrrWdMLpvl8hrNP36W1fyhzK4YWf/NyMwQ/2tXCa3iQ
	NrTRxxenVEUUd9tUi4FZSjV4eTKgDnh//jt7DSAEqnW95KNwpUusvis3I1iDl7rMLSzsdsSf7/Ewi
	jUaT3vSzwXK145b3X1Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2yaM-0005Yt-3T; Wed, 28 Aug 2019 14:06:06 +0000
Received: from mail-ve1eur02on0600.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::600]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2yaC-0005YX-0F
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 14:05:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eBjoqVAIqfEdAxpkD3L1Ejbv9Cg6OkWy6C7dhNGLbhFZ1vtOVud1+9nDH2s9IepIYoA0AU9zEWjXNlWVU5A2NqrNzr+6bpzZfDGt0i9KdaNFH/M1+ROY29fXJHxLDGDjxQiIFeGVSVocIhvvXGOzlGeYm9LB+2o0NztOAsoGUydrLTCNu1aw5YhZlNf5AnbNurkQKgvMdJyTETF3Q+xyI08XkO0YJ1Z6GkYzWy+4rA8923kwffpKCKTFDaBDQGOQ5vobvFNhDnYWsWlpqmZTP570zGFu8YvkGyR8gCtcFwGHEdKMgE4zm0jc3sO9a7CR8Rwjw1FQGT3KL3wwf3xeWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zTztq+MWSKSjLyPIOsXrkGz2XY21OHdHao9uk7jmzOM=;
 b=Vnj3GvtquLt7nvjQtWcauLFngf5ItqdiPjBr4yfxaViO/ssyBvuEOzUX/uB/6GxGWwKhP8Gruiw9GUALRHbgBV+jCNywTK4cGK/AkKwHWhQNR8mn/tozwrwRmc3c/XhJFysV49MfX6E/DK588zWOlx6Z7htsyPyIfFFIwopyV+lek8dR4RyyablsVkWWpYy5KZM4I5GHYLteg1S5SKEStulxOzzEJn3xb4vr40OyHQtLr+xjxGprfM1hi4W0aNBipZb8D44+bGf8fKCtt4H0tmpAch8PUa85tZ/erjIgs7xgSCA20uXOylyhzAv9VLZr//kNKhiXM7X7m0+E1tigcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zTztq+MWSKSjLyPIOsXrkGz2XY21OHdHao9uk7jmzOM=;
 b=Sj/GXbfRXtQk6D66dCVpslTYX2u/Ckl8M+c5foobffW4bHTVADgNI/w2EfGzqhw7RCgJ6XiOY6mioSgOGIkWo9VMGlQV6bZgpnjSJgFOvCtGh9eRWduwlCDNePK0gVCZnigXtGV85jt+PxD3M7e3gbDfx/zd+9Bx1eIfxg/mE7g=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.235.81) by
 VE1PR04MB6544.eurprd04.prod.outlook.com (20.179.234.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.20; Wed, 28 Aug 2019 14:05:50 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::8f2:412c:88c6:a365]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::8f2:412c:88c6:a365%7]) with mapi id 15.20.2199.021; Wed, 28 Aug 2019
 14:05:50 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Jurgen Lambrecht <J.Lambrecht@TELEVIC.com>, Leonard Crestez
 <leonard.crestez@nxp.com>
Subject: RE: FYI: imx-sdma firmware is not compatible with SLUB slab allocator
Thread-Topic: FYI: imx-sdma firmware is not compatible with SLUB slab allocator
Thread-Index: AQHVXNw+wzto4eeux06zQsdxRt35zKcQS7yAgABK/MA=
Date: Wed, 28 Aug 2019 14:05:50 +0000
Message-ID: <VE1PR04MB663818AE90C9997DC340250989A30@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <1e2fe2dc-f5ea-db73-59cf-c61ec558131a@televic.com>
 <VI1PR04MB7023FB06F79F31334905D34EEEA00@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <7282882c-1c79-9685-4bfe-80195976c8d6@televic.com>
In-Reply-To: <7282882c-1c79-9685-4bfe-80195976c8d6@televic.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-originating-ip: [116.228.16.42]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 46cfb9ca-d2d1-44e0-4b10-08d72bc0d54a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR04MB6544; 
x-ms-traffictypediagnostic: VE1PR04MB6544:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB654452218BDF865AB8231B5B89A30@VE1PR04MB6544.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 014304E855
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(376002)(346002)(39860400002)(366004)(199004)(189003)(8676002)(476003)(64756008)(66446008)(25786009)(66476007)(7736002)(99286004)(74316002)(54906003)(76116006)(6636002)(110136005)(486006)(66946007)(52536014)(2906002)(66066001)(4326008)(305945005)(6116002)(256004)(3846002)(66556008)(53936002)(14454004)(5024004)(478600001)(71190400001)(229853002)(316002)(8936002)(81156014)(81166006)(71200400001)(26005)(186003)(76176011)(7696005)(55016002)(102836004)(53546011)(6506007)(11346002)(6436002)(5660300002)(446003)(86362001)(6246003)(9686003)(33656002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6544;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: yByz5nsW5+5n9JNz0Y8lWKXAhArfJxctGxKSL4YEOCKzkRPYjuSB2WJvdy5c8RSTtwqWIKyFcLmOBPvSktIjnikFabBDvC4vJaIaWY3UjOjc7IKWmsNm/2RSZQvWzin740DZTZb/D/LQ+Ri8u8oQWzQhoIp4+VjOFJtd2n7/9sZ4bW0DSGUpK7RGvOgfHslv9vDPexkoSLxyC+swpS3ErS9vFEJoHarRiPcej1DNJZsoi55iitEriZYvuLyzrx1sCSyJYYgdbVLmV0DC9sOnk7KcVNjNpM3QrfitgdoR9SceoCH9/Qh4A7DZuciLgwv70z80ktMWYLhp5RG0Q6BUSWW2XaUxIPH17qIXxyxkTJDY3dMCM1geWgKrCGsU1uZSXsldBNab3Dm7X3ylkJRDMsckYCgfWMwh1Nl86UfcLnQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46cfb9ca-d2d1-44e0-4b10-08d72bc0d54a
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2019 14:05:50.6656 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Xq7AL0ivcv019RPpBGOPSlq7tHxfr+MA3efPUBnZSKOu4Eu41mC4Rzjd1L2U335nP+XKPTfMG6hCujFWPGXcMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6544
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_070556_051019_0BD3CE04 
X-CRM114-Status: GOOD (  19.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:600 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gOC8yOC8xOSAxNzoyNywgSnVyZ2VuIExhbWJyZWNodCB3cm90ZToNCj4gDQo+IE9uIDgvMjcv
MTkgNTowNCBQTSwgTGVvbmFyZCBDcmVzdGV6IHdyb3RlOg0KPiA+IENBVVRJT046IFRoaXMgRW1h
aWwgb3JpZ2luYXRlZCBmcm9tIG91dHNpZGUgVGVsZXZpYy4gRG8gbm90IGNsaWNrIGxpbmtzIG9y
DQo+IG9wZW4gYXR0YWNobWVudHMgdW5sZXNzIHlvdSByZWNvZ25pemUgdGhlIHNlbmRlciBhbmQg
a25vdyB0aGUgY29udGVudCBpcw0KPiBzYWZlLg0KPiA+DQo+ID4NCj4gPiBPbiAyNy4wOC4yMDE5
IDE2OjM1LCBKdXJnZW4gTGFtYnJlY2h0IHdyb3RlOg0KPiA+PiBXZSBhcmUgdXBkYXRpbmcgb3Vy
IGtlcm5lbCBvbiBvdXIgY3VzdG9tIGJvYXJkIHdpdGggYW4gaU1YNlVMIGZyb20NCj4gPj4gMy4x
NCB0byA0LjE5LCBhbmQgd2hlbiBsb2FkaW5nIGxpbnV4LWZpcm13YXJlL2lteC9zZG1hL3NkbWEt
aW14NnEuYmluDQo+ID4+IHYzLjUgdGhlIGtlcm5lbCBoYW5ncyB3aGVuIGJvb3RpbmcsIG9ubHkg
IlN0YXJ0aW5nIGtlcm5lbCAuLi4iIGlzDQo+ID4+IHByaW50ZWQgKGJ5IHVCb290IEkgdGhpbmsp
Lg0KPiA+IElmIHlvdSBlbmFibGUgImVhcmx5Y29uIiB5b3Ugc2hvdWxkIGJlIGFibGUgdG8gc2Vl
IGFuIHVzZWZ1bCBlcnJvcg0KPiA+IG1lc3NhZ2UgZnJvbSBjcmFzaGVzIGluIGVhcmx5IGJvb3Qu
DQo+ID4NCj4gPiBFbmFibGluZyBlYXJseWNvbiBpcyBib2FyZC1zcGVjaWZpYzogaWYgeW91IGhh
dmUgYSBjb3JyZWN0DQo+ID4gL2Nob3Nlbi9zdGRvdXQtcGF0aCByZWZlcmVuY2UgaW4gZHRzIGp1
c3QgYWRkaW5nICJlYXJseWNvbiIgdG8ga2VybmVsDQo+ID4gY21kbGluZSBzaG91bGQgd29yayBv
dGhlcndpc2UgeW91IGNhbiBzcGVjaWZ5DQo+ID4gZWFybHljb249ZWNfaW14NnEsMHgyMDIwMDAs
MTE1MjAwIHdpdGggdGhlIGV4YWN0IGFkZHJlc3MgZGVwZW5kaW5nIG9uDQo+ID4gd2hpY2ggdWFy
dCBpcyBjb25zb2xlIG9uIHlvdXIgYm9hcmQuDQo+IA0KPiBPSywgdGhhbmtzLiBGaXJzdCB0aW1l
IEkgaGVhciBvZiBlYXJseWNvbi4NCj4gDQo+IEJ1dCBhcyBJIHRob3VnaHQgKGJlY2F1c2Ugb2Yg
bG9ncyB3aXRoIG90aGVyIGtlcm5lbCB2ZXJzaW9ucykgdGhlIGtlcm5lbCBqdXN0DQo+IGhhbmdz
IHdoZW4gbG9hZGluZyB0aGUgc2RtYSBkcml2ZXIuDQo+IE5vdyBpdCBpcyB2My41LCBidXQgSSBh
bHNvIHRyaWVkIHYzLjMgYSBmZXcgd2Vla3MgYWdvLg0KPiANCj4gVGhpcyBpcyB0aGUgbGFzdCBr
ZXJuZWwgbG9nIChiZWxvdyB0aGUgZnVsbCBsb2cpOg0KPiANCj4gW8KgwqDCoCAyLjMxMjMzNl0g
aW14LXNkbWEgMjBlYzAwMC5zZG1hOiBsb2FkZWQgZmlybXdhcmUgMy41DQo+IA0KPiBBYm91dCB0
aGUgRFQgY29uZmlnLCBJIGVuYWJsZWQgc2RtYSBvbiBhbGwgdGhhdCBJIGZvdW5kOiBzdGFuZGFy
ZCBkdHNpIG9ubHkNCj4gaGFzIHNkbWEgZW5hYmxlZCBmb3IgU0FJLiBCdXQgdGhlIGZyZWVzY2Fs
ZSA0LjEga2VybmVsIGhhcyBtb3JlOiBJIGFsc28NCj4gZW5hYmxlZCBzZG1hIGZvciBlY3NwaTEg
dG8gZWNzcGk0LCB1YXJ0MSB0byB1YXJ0OC4NCj4gQnV0IGFzIGEgdGVzdCBJIGhhdmUgYWxzbyBy
ZW1vdmVkIGFsbCBzZG1hIGVudHJpZXMgZnJvbSBEVCwgYW5kIHN0aWxsIGl0IGhhbmdzLg0KQ291
bGQgeW91IGhlbHAgY2hlY2sgaWYgYmVsb3cgY29tbWl0IGluIHlvdXIgc2lkZT8NCmNvbW1pdCBl
YmI4NTNiMWJkNWY2NTliOTJjNzFkYzZhOWRlNDRjZmMzN2M3OGMwDQpBdXRob3I6IEx1Y2FzIFN0
YWNoIDxsLnN0YWNoQHBlbmd1dHJvbml4LmRlPg0KRGF0ZTogICBUdWUgTm92IDYgMDM6NDA6Mjgg
MjAxOCArMDAwMA0KDQogICAgUmV2ZXJ0ICJkbWFlbmdpbmU6IGlteC1zZG1hOiBhbGxvY2xhdGUg
YmQgbWVtb3J5IGZyb20gZG1hIHBvb2wiDQoNCiAgICBUaGlzIHJldmVydHMgY29tbWl0IGZlNWI4
NWM2NTZiYy4gVGhlIFNETUEgZW5naW5lIG5lZWRzIHRoZSBkZXNjcmlwdG9ycyB0bw0KICAgIGJl
IGNvbnRpZ3VvdXMgaW4gbWVtb3J5LiBBcyB0aGUgZG1hIHBvb2wgQVBJIGlzIG9ubHkgYWJsZSB0
byBwcm92aWRlIGENCiAgICBzaW5nbGUgZGVzY3JpcHRvciBwZXIgYWxsb2MgaW52b2NhdGlvbiB0
aGVyZSBpcyBubyBndWFyYW50ZWUgdGhhdCBtdWx0aXBsZQ0KICAgIGRlc2NyaXB0b3JzIHNhdGlz
ZnkgdGhpcyByZXF1aXJlbWVudC4gQWxzbyB0aGUgY29kZSBpbiBxdWVzdGlvbiBpcyBicm9rZW4N
CiAgICBhcyBpdCBvbmx5IGFsbG9jYXRlcyBtZW1vcnkgZm9yIGEgc2luZ2xlIGRlc2NyaXB0b3Is
IHdpdGhvdXQgbG9va2luZyBhdCB0aGUNCiAgICBudW1iZXIgb2YgZGVzY3JpcHRvcnMgcmVxdWly
ZWQgZm9yIHRoZSB0cmFuc2ZlciwgbGVhZGluZyB0byBvdXQtb2YtYm91bmRzDQogICAgYWNjZXNz
ZXMgd2hlbiB0aGUgZGVzY3JpcHRvcnMgYXJlIHdyaXR0ZW4uDQoNCiAgICBTaWduZWQtb2ZmLWJ5
OiBMdWNhcyBTdGFjaCA8bC5zdGFjaEBwZW5ndXRyb25peC5kZT4NCiAgICBTaWduZWQtb2ZmLWJ5
OiBSb2JpbiBHb25nIDx5aWJpbi5nb25nQG54cC5jb20+DQogICAgQ2M6IHN0YWJsZSA8c3RhYmxl
QHZnZXIua2VybmVsLm9yZz4NCiAgICBTaWduZWQtb2ZmLWJ5OiBWaW5vZCBLb3VsIDx2a291bEBr
ZXJuZWwub3JnPg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
