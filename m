Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABB4485A4D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 08:12:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8OZZTmh2gTTLOg/F2sfDjbgHg96goVrl3FXm47WMoVk=; b=P25a+SKFLvYV3p
	F+FurYhbfhB3krlOgc+WCw3BUXkAHHKJVXbm0tuZsyuYH1xLtapqx5GiVOb1HtBc9eAMNd1VE+J/Y
	Ht+MGT7k7AFNbZmtvFyBLT5pzl/ppfmMHa3Vxj2PYckIICNKmCseSmNMxTCfG/hoHsu7Zpt1RHolP
	ZqHNvxBzud/qAcMmgweNLfMZFtc3VUhP4WGfFUq+FjM/KSodwJZrxavgECgwrpjmhSOzZv29FZOeq
	F0EyyOS56nUcP+YThlwT2JdEXUxt0hetmrACHOAD6zSUp11F/KarfVHNr8tHU0an6gT9jEMkoDryv
	YkG+8vEl+8zxZPLQVPFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvbfC-0001Oj-Eg; Thu, 08 Aug 2019 06:12:38 +0000
Received: from mail-eopbgr40088.outbound.protection.outlook.com ([40.107.4.88]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvbeP-0001Ni-PP
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 06:11:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jOitiBLtpVZTOKNJS+FavbvP6i58pXOD5Go3QGsX8B1Tba/zqVSVUlVTSl8/ANVBtlY4t0oPcfsUTlx+qqkz+zcRi9Pe2i/WitiWEpl2t8+xseNnoL3Aqh3ndQiJTeyoFAs2kaXbTauyVk5AZ1XcOitLDmtEELon+sH+Xua4Zz0alK36ru5jmgxNLpnwJW0X5/h7S6gZRGTx67nEERyL36JfyCVc+ZljPm6BwXX3wbCyBu8hWrF3QSj8129JaRFSm7aeBkC4ZRANah6HQMYqSCIB75aM2shr5cjs7ViEW6Rb5SgOiWt9FlG31tE6agu4ZpzNbJ8UoeYabx/wZAQscw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L9Ch+DPAtrJUu9DX8YC7Bd5QTtBsqTJAva0cXh0ZIQI=;
 b=DJ3NQMhLaFeV2EwZhjJPRUfegh4EIUBKbzPwF8h+hPF0MEdapQa8omncNhrCZIdL8oPCpnIXvtzNrmnM+ncXE4fKtI/hHP541HxBBZSdPXw6r3y/rtjs4lFk1WzC1u/+fSVZTMRcntRuqMXpuSLN8TCIKLLzZ05eRWG7jY60ksoNahKbW6hcmHMV7Hpn07IGyoRSYKTGz4UAXvsM6kZaN3YKhoqftRGQ4TSIDt+n7WFF+Y1gLb8RlJVKacx2Bs/vZm07D1CaKINqiIwa5sHlTlXDs9ALgR/EYR758I2s9RrS5zyRWlW1sAcW26LLC7WF1sGuVFG1xmmBzQGxIz47Mw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L9Ch+DPAtrJUu9DX8YC7Bd5QTtBsqTJAva0cXh0ZIQI=;
 b=er4KOHKk12NMzhsZd9Jb52v242Rib4Ut63eD5NHc8yqJN/lkn+Qmz/BJci5IP6X4pXbNs5V25h4K4DUtsodJ5zYbdsYfbIqAmeurX5e6kL5q7fAK8/4szwKIB5uNr9JkgaQRR605XI1zfDp0eqdVIxXV2+3hiuvBCbOAtlGz3rY=
Received: from VI1PR04MB4622.eurprd04.prod.outlook.com (20.177.56.21) by
 VI1PR04MB6270.eurprd04.prod.outlook.com (20.179.26.206) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.14; Thu, 8 Aug 2019 06:11:33 +0000
Received: from VI1PR04MB4622.eurprd04.prod.outlook.com
 ([fe80::f1df:2dd:501c:5986]) by VI1PR04MB4622.eurprd04.prod.outlook.com
 ([fe80::f1df:2dd:501c:5986%6]) with mapi id 15.20.2157.015; Thu, 8 Aug 2019
 06:11:33 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: Robin Murphy <robin.murphy@arm.com>, "will@kernel.org" <will@kernel.org>, 
 "mark.rutland@arm.com" <mark.rutland@arm.com>, Frank Li <frank.li@nxp.com>
Subject: RE: [PATCH V4 1/2] perf: imx8_ddr_perf: add AXI ID filter support
Thread-Topic: [PATCH V4 1/2] perf: imx8_ddr_perf: add AXI ID filter support
Thread-Index: AQHVR40oByyn0YjPrkGeE3hz4834O6bkqhiAgAEQJ/CAAFZdAIABXRHQgATuIuCABHQW0A==
Date: Thu, 8 Aug 2019 06:11:33 +0000
Message-ID: <VI1PR04MB46222929B2B418C8BE0EB12AE6D70@VI1PR04MB4622.eurprd04.prod.outlook.com>
References: <20190731104351.3117-1-qiangqing.zhang@nxp.com>
 <ad9491ed-24c5-8553-94be-cc96479adaf6@arm.com>
 <DB7PR04MB46183D09C6AB61E6AA90386FE6DE0@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <5988bae3-e0db-a64d-8399-8ce65a92d970@arm.com>
 <DB7PR04MB4618301170B4E09F8B855B52E6D90@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <DB7PR04MB46180FDE0FD470C035AF2892E6DA0@DB7PR04MB4618.eurprd04.prod.outlook.com>
In-Reply-To: <DB7PR04MB46180FDE0FD470C035AF2892E6DA0@DB7PR04MB4618.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7973d0c7-82f8-4b55-9af7-08d71bc74320
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR04MB6270; 
x-ms-traffictypediagnostic: VI1PR04MB6270:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB6270D63D4C96766F771A2C6CE6D70@VI1PR04MB6270.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 012349AD1C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(136003)(376002)(39860400002)(396003)(189003)(199004)(13464003)(66946007)(6506007)(2501003)(66556008)(76116006)(66476007)(66446008)(81166006)(6436002)(64756008)(229853002)(4326008)(3846002)(5660300002)(6116002)(33656002)(2906002)(14454004)(316002)(6636002)(54906003)(52536014)(81156014)(8676002)(66066001)(2201001)(110136005)(7696005)(53546011)(5024004)(86362001)(26005)(14444005)(486006)(478600001)(102836004)(8936002)(476003)(11346002)(76176011)(446003)(186003)(74316002)(25786009)(99286004)(55016002)(53936002)(6246003)(71200400001)(305945005)(256004)(71190400001)(7736002)(9686003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6270;
 H:VI1PR04MB4622.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: aUgGLUCu4TXIadmLfl5zqTkneQt5dzh87wUV3mnDmQ/KKXw1BazW+Z3Eqb6E3gjQUq/4gpw3geMo3KJWFweG3zuLj8Dizzz+hleDkU1Wema7fOTeLDzbl9vv/k9PKrEizA6Rufhv9Wvafu/OJCSsuelxvEDIgPIXzfRzxKHTY5YOXew2s+adCmaLmj2m0IWx+M5AAIWDNV9kFi7DEGt5IYjHoR6E6TafKFiXACFZdVpy4ha2xdO/hyV0VdHUGKWCZHJEAYJgPD3Kb5rN/ObAO0cQ3uFhlxlh0uupuBmnyE9bEdPdZjav6OXB50Jzr/GKkYGWVYKUY5go0lH7ndVXAGoIyx7/meqUauavPvUFh8v62X1wkRyJRuh0U0lvQ+4RjbWBNYFemxTnVJjey5ndbcFXuVCwrJZAnGVPgHcpoXw=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7973d0c7-82f8-4b55-9af7-08d71bc74320
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2019 06:11:33.3848 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HgLWkeAN8cyGH0l+J5ebwOtwxEbA168IuSFZFAHy3/w4aHWxXOWrgdkcmQx7wXM8FtSZSe9P3yD8prUmcdNcDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6270
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_231150_207830_CD52CAFD 
X-CRM114-Status: GOOD (  38.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.88 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEpvYWtpbSBaaGFuZw0KPiBT
ZW50OiAyMDE55bm0OOaciDXml6UgMTg6MzMNCj4gVG86IFJvYmluIE11cnBoeSA8cm9iaW4ubXVy
cGh5QGFybS5jb20+OyB3aWxsQGtlcm5lbC5vcmc7DQo+IG1hcmsucnV0bGFuZEBhcm0uY29tOyBG
cmFuayBMaSA8ZnJhbmsubGlAbnhwLmNvbT4NCj4gQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZzsga2VybmVsQHBlbmd1dHJvbml4LmRlOyBkbC1saW51eC1pbXgNCj4gPGxp
bnV4LWlteEBueHAuY29tPg0KPiBTdWJqZWN0OiBSRTogW1BBVENIIFY0IDEvMl0gcGVyZjogaW14
OF9kZHJfcGVyZjogYWRkIEFYSSBJRCBmaWx0ZXIgc3VwcG9ydA0KPiANCj4gDQo+ID4gLS0tLS1P
cmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBKb2FraW0gWmhhbmcNCj4gPiBTZW50OiAy
MDE55bm0OOaciDLml6UgMTU6MjANCj4gPiBUbzogUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJwaHlA
YXJtLmNvbT47IHdpbGxAa2VybmVsLm9yZzsNCj4gPiBtYXJrLnJ1dGxhbmRAYXJtLmNvbTsgRnJh
bmsgTGkgPGZyYW5rLmxpQG54cC5jb20+DQo+ID4gQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZzsga2VybmVsQHBlbmd1dHJvbml4LmRlOw0KPiA+IGRsLWxpbnV4LWlteCA8
bGludXgtaW14QG54cC5jb20+DQo+ID4gU3ViamVjdDogUkU6IFtQQVRDSCBWNCAxLzJdIHBlcmY6
IGlteDhfZGRyX3BlcmY6IGFkZCBBWEkgSUQgZmlsdGVyDQo+ID4gc3VwcG9ydA0KPiA+DQo+ID4N
Cj4gPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gPiBGcm9tOiBSb2JpbiBNdXJw
aHkgPHJvYmluLm11cnBoeUBhcm0uY29tPg0KPiA+ID4gU2VudDogMjAxOeW5tDjmnIgx5pelIDE4
OjAwDQo+ID4gPiBUbzogSm9ha2ltIFpoYW5nIDxxaWFuZ3FpbmcuemhhbmdAbnhwLmNvbT47IHdp
bGxAa2VybmVsLm9yZzsNCj4gPiA+IG1hcmsucnV0bGFuZEBhcm0uY29tOyBGcmFuayBMaSA8ZnJh
bmsubGlAbnhwLmNvbT4NCj4gPiA+IENjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmc7IGtlcm5lbEBwZW5ndXRyb25peC5kZTsNCj4gPiA+IGRsLWxpbnV4LWlteCA8bGludXgt
aW14QG54cC5jb20+DQo+ID4gPiBTdWJqZWN0OiBSZTogW1BBVENIIFY0IDEvMl0gcGVyZjogaW14
OF9kZHJfcGVyZjogYWRkIEFYSSBJRCBmaWx0ZXINCj4gPiA+IHN1cHBvcnQNCj4gPiA+DQo+ID4g
PiBPbiAyMDE5LTA4LTAxIDY6MjUgYW0sIEpvYWtpbSBaaGFuZyB3cm90ZToNCj4gPiA+IFsuLi5d
DQo+ID4gPiA+Pj4gQEAgLTE5NSw2ICsyMTQsMTggQEAgc3RhdGljIGludCBkZHJfcGVyZl9ldmVu
dF9pbml0KHN0cnVjdA0KPiA+ID4gPj4+IHBlcmZfZXZlbnQNCj4gPiA+ID4+ICpldmVudCkNCj4g
PiA+ID4+PiAgICAJc3RydWN0IGh3X3BlcmZfZXZlbnQgKmh3YyA9ICZldmVudC0+aHc7DQo+ID4g
PiA+Pj4gICAgCXN0cnVjdCBwZXJmX2V2ZW50ICpzaWJsaW5nOw0KPiA+ID4gPj4+DQo+ID4gPiA+
Pj4gKwlpZiAocG11LT5kZXZ0eXBlX2RhdGEtPnF1aXJrcyAmIEREUl9DQVBfQVhJX0lEX0ZJTFRF
Uikgew0KPiA+ID4gPj4+ICsJCWlmIChldmVudC0+YXR0ci5jb25maWcgPT0gMHg0MSkNCj4gPiA+
ID4+PiArCQkJcG11LT5heGlfaWRfcmVhZCA9IGV2ZW50LT5hdHRyLmNvbmZpZzE7DQo+ID4gPiA+
Pj4gKw0KPiA+ID4gPj4+ICsJCWlmIChldmVudC0+YXR0ci5jb25maWcgPT0gMHg0MikNCj4gPiA+
ID4+PiArCQkJcG11LT5heGlfaWRfd3JpdGUgPSBldmVudC0+YXR0ci5jb25maWcxOw0KPiA+ID4g
Pj4+ICsNCj4gPiA+ID4+PiArCQlpZiAocG11LT5heGlfaWRfcmVhZCAmJiBwbXUtPmF4aV9pZF93
cml0ZSAmJg0KPiA+ID4gPj4+ICsJCSAgICAocG11LT5heGlfaWRfcmVhZCAhPSBwbXUtPmF4aV9p
ZF93cml0ZSkpDQo+ID4gPiA+Pj4gKwkJCXJldHVybiAtRUlOVkFMOw0KPiA+ID4gPj4+ICsJfQ0K
PiA+ID4gPj4NCj4gPiA+ID4+IFRoaXMgaXNuJ3QgdGhlIGNvcnJlY3QgYXBwcm9hY2ggdGhhdCBN
YXJrIG91dGxpbmVkIDooDQo+ID4gPiA+Pg0KPiA+ID4gPj4gSW4gZXZlbnRfaW5pdCwgeW91IHNo
b3VsZCB2YWxpZGF0ZSB0aGF0IGFueSBmaWx0ZXJpbmcgZm9yIHRoZQ0KPiA+ID4gPj4gZ2l2ZW4g
ZXZlbnQgaXMgY29tcGF0aWJsZSB3aXRoIGFueSBvdGhlciBzaWJsaW5nIGV2ZW50cyBpbiB0aGUN
Cj4gPiA+ID4+IHNhbWUgZ3JvdXAsIGJ1dCB5b3Ugc2hvdWxkIG5vdCBjb25zaWRlciAoYW5kIHNo
b3VsZCBkZWZpbml0ZWx5DQo+ID4gPiA+PiBub3QNCj4gPiA+ID4+IGNoYW5nZSkgdGhlIGN1cnJl
bnQgc3RhdGUgb2YgdGhlIFBNVSBhdCB0aGF0IHBvaW50LiBUaGlzIHN0ZXAgaXMNCj4gPiA+ID4+
IGFib3V0IHJlamVjdGluZyBldmVudCBjb25maWd1cmF0aW9ucyB3aGljaCBjb3VsZA0KPiA+ID4g
Pj4gKm5ldmVyKiBiZSBzdWNjZXNzZnVsbHkgc2NoZWR1bGVkIChzaW5jZSBhIGdyb3VwIHJlcHJl
c2VudHMgYSBzZXQNCj4gPiA+ID4+IG9mIGV2ZW50cyB3aGljaCBtdXN0IGJlIHNjaGVkdWxlZCBh
bGwgYXQgdGhlIHNhbWUgdGltZSkuDQo+ID4gPiA+Pg0KPiA+ID4gPj4gSW4gZXZlbnRfYWRkLCB5
b3Uga25vdyB0aGUgZ2l2ZW4gZXZlbnQvZ3JvdXAgaXMgc3VmZmljaWVudGx5DQo+ID4gPiA+PiB2
YWxpZCB0bw0KPiA+ID4gPj4gKnBvdGVudGlhbGx5KiBiZSBzY2hlZHVsZWQsIGdpdmVuIHRoYXQg
aXQgaGFzIHBhc3NlZCB0aGUNCj4gPiA+ID4+IGV2ZW50X2luaXQgY2hlY2tzLCBidXQgeW91IHRo
ZW4gbmVlZCB0byBjaGVjayB0aGF0IHRoZSBmaWx0ZXJpbmcNCj4gPiA+ID4+IGlzIGNvbXBhdGli
bGUgd2l0aCBhbGwgb3RoZXIgZXZlbnRzDQo+ID4gPiA+PiAqY3VycmVudGx5KiBjb3VudGluZyBv
biB0aGUgUE1VLiBJZiB0aGlzIGZhaWxzLCBwZXJmIGNvcmUgd2lsbA0KPiA+ID4gPj4gdHJ5IHRv
IHJlc2NoZWR1bGUgdGhlIGN1cnJlbnQgZXZlbnRzIHVudGlsIHRoZSBuZXcgb25lIGlzIGFibGUg
dG8gcnVuLg0KPiA+ID4gPj4gVGhhdCdzIHdoeSB5b3UgbmVlZCB0aGUgYWRkaXRpb25hbCBzdGVw
IG9mIHZhbGlkYXRpbmcgZ3JvdXBzDQo+ID4gPiA+PiBiZWZvcmVoYW5kLCBiZWNhdXNlIG90aGVy
d2lzZSB5b3UgY291bGQgZW5kIHVwIHdpdGggY29udHJhZGljdG9yeQ0KPiA+ID4gPj4gc2NoZWR1
bGluZyBjb25zdHJhaW50cyBhdCB0aGlzIHBvaW50IGFuZCBuZXZlciBtYWtlIHByb2dyZXNzLg0K
PiA+ID4gPg0KPiA+ID4gPiBIaSBNYXJrIGFuZCBSb2JpbiwNCj4gPiA+ID4NCj4gPiA+ID4gVGhh
bmtzIGZvciBhbGwgeW91ciBraW5kbHkgZGV0YWlsZWQgZXhwbGFuYXRpb24gZmlyc3RseS4NCj4g
PiA+ID4NCj4gPiA+ID4gTXkgdW5kZXJzdGFuZGluZyBmcm9tIHlvdXIgY29tbWVudHMsIEkgbmVl
ZCB0byB2YWxpZGF0ZSB0aGUgZmlsdGVyaW5nDQo+IChpLmUuDQo+ID4gPiBjb25maWcxL2F4aV9p
ZCkgZm9yICphbGwqIGV2ZW50cyBpbiBzYW1lIGdyb3VwIGR1cmluZyBldmVudF9pbml0LCByaWdo
dD8NCj4gPiA+ID4gQnV0IGl0J3Mgc28gc3RyYW5nZSBmb3IgdGhhdCBheGlfaWQgaXMgb25seSBm
b3IgYXhpLWlkLXJlYWQgYW5kDQo+ID4gPiA+IGF4aS1pZC13cml0ZQ0KPiA+IGV2ZW50Lg0KPiA+
ID4gV2UgZG9uJ3QgbmVlZCB0byBzcGVjaWZ5IGF4aV9pZCBmb3IgYW55IG90aGVyIGV2ZW50cyB3
aGVuIG1peGVkIHdpdGgNCj4gPiA+IHRoZXNlIHR3byBldmVudHMuDQo+ID4gPg0KPiA+ID4gU29y
cnksIEkgaW1wbGljaXRseSBtZWFudCBhbGwgKnJlbGV2YW50KiBldmVudHMgLSBvYnZpb3VzbHkg
dGhlcmUncw0KPiA+ID4gbm90aGluZyB0byBjaGVjayBmb3IgZXZlbnRzIHdoaWNoIGRvbid0IGhh
dmUgZmlsdGVyaW5nIGFueXdheS4gQWxsDQo+ID4gPiB0aGF0IG1hdHRlcnMgaXMgdGhlIGNhc2Ug
d2hlcmUgd2UncmUgYXNrZWQgdG8gY3JlYXRlIGEgcmVhZC93cml0ZQ0KPiA+ID4gZXZlbnQgaW4g
YSBncm91cCB3aGljaCBhbHJlYWR5IGhhcyBhdCBsZWFzdCBvbmUgb3RoZXIgcmVhZC93cml0ZQ0K
PiA+ID4gZXZlbnQgYXMgYSBzaWJsaW5nLiBJJ3ZlIHNrZXRjaGVkIG91dCBhIHF1aWNrIChjb21w
bGV0ZWx5IHVudGVzdGVkKQ0KPiA+ID4gZXhhbXBsZSBvZiBvbmUgd2F5IHRvIGRvIHRoYXQgcGFy
dCBiZWxvdy4gVGhlIGxvZ2ljIGZvciBldmVudF9hZGQNCj4gPiA+IHdvdWxkIGJlIHZlcnkgc2lt
aWxhciwgZXhjZXB0IGluc3RlYWQgb2YgY29tcGFyaW5nIHRoZSBzaWJsaW5nDQo+ID4gPiBhZ2Fp
bnN0IHRoZSBldmVudCwgdGhlcmUgeW91J2QgY29tcGFyZSB0aGUgZXZlbnQgYWdhaW5zdCB0aGUg
Y3VycmVudCBQTVUNCj4gc3RhdGUuDQo+ID4gPg0KPiA+ID4gPiBJZiBJIGNhbiBqdXN0IGNoZWNr
IHRoZSBheGktaWQtcmVhZCBhbmQgYXhpLWlkLXdyaXRlIGV2ZW50IGR1cmluZw0KPiA+ID4gPiBl
dmVudF9hZGQgYW5kIHRoZW4gcGFzcyB0aGUgYXhpX2lkIHZhbHVlIHRvIHRoZSBmaWx0ZXIgcmVn
aXN0ZXIuDQo+ID4gPiA+IERvbid0IGNoZWNrIHRoZSBjYXNlIHRoYXQgdXNlciBzcGVjaWZ5IGJv
dGggb2YgdGhlbSBhdCB0aGUgc2FtZQ0KPiA+ID4gPiB0aW1lIHdpdGggZGlmZmVyZW50DQo+ID4g
PiBmaWx0ZXJpbmcgdmFsdWUuIEluc3RlYWQgb2YgY2hlY2tpbmcgaXQgaW4gdGhlIGRyaXZlciwg
SSBhZGQgdGhlIGRvYw0KPiA+ID4gaW4gRG9jdW1lbnRhdGlvbi9hZG1pbi1ndWlkZS9wZXJmLyBk
aXJlY3RvcnkgdG8gbm90ZSB0aGF0DQo+ID4gPiBheGktaWQtcmVhZCBhbmQgYXhpLWlkLXdyaXRl
IGV2ZW50IHNob3VsZCBiZSBzcGVjaWZpZWQgc2VwYXJhdGVseSwNCj4gPiA+IG9yIHNwZWNpZmll
ZCBhdCB0aGUgc2FtZSB0aW1lIHdpdGggc2FtZSBheGlfaWQgdmFsdWUuDQo+ID4gPg0KPiA+ID4g
U3VyZSwgd2UgY291bGQganVzdCByZWx5IG9uIHRoZSB1c2VyIHRvIGdldCBpdCByaWdodCwgYnV0
IHRoYXQgbWVhbnMNCj4gPiA+IHRoZXJlJ3MgYSBmYWlyIGNoYW5jZSB0aGF0IHRoZSB1c2VyIGNh
biBpbmFkdmVydGVudGx5IGdldCBpdCB3cm9uZywNCj4gPiA+IGdldCBub25zZW5zaWNhbCByZXN1
bHRzLCBhbmQgd2FzdGUgYSB3ZWVrIHRyeWluZyB0byBkZWJ1ZyBhDQo+ID4gPiBwZXJjZWl2ZWQg
cHJvYmxlbSB3aGljaCBkb2Vzbid0IGFjdHVhbGx5IGV4aXN0LiBJdCdzIG5vdCBkaWZmaWN1bHQN
Cj4gPiA+IGZvciB0aGUgZHJpdmVyIHRvIHBlcmZvcm0gdGhlIGNvcnJlY3QgdmFsaWRhdGlvbiwg
c28gaXQncyBiZXR0ZXIgZm9yIGV2ZXJ5b25lIGlmDQo+IGl0IGRvZXMuDQo+ID4gPg0KPiA+ID4g
SXQgYWxzbyBzZWVtcyByZWFzb25hYmxlIHRoYXQgYSB1c2VyIG1pZ2h0IHdhbnQgdG8gaW50ZW50
aW9uYWxseQ0KPiA+ID4gbWVhc3VyZSBldmVudHMgb24gZGlmZmVyZW50IElEcyBvdmVyIHRoZSBz
YW1lIHJ1biAoYnV0IG5vdCBpbiB0aGUNCj4gPiA+IHNhbWUgZ3JvdXApLCBlLmcuIHRvIGNvbXBh
cmUgdGhlIHJlbGF0aXZlIGF2ZXJhZ2UgYmFuZHdpZHRoIG9mIHR3bw0KPiA+ID4gZGV2aWNlcywg
cGVyaGFwcyB0byB0dW5lIFFvUyBwYXJhbWV0ZXJzLiBUaGF0IHJlcXVpcmVzIHBlcmYgY29yZSB0
bw0KPiA+ID4ga25vdyBpdCBuZWVkcyB0byByb3RhdGUgdGhlIGV2ZW50cyBkdXJpbmcgdGhlIHJ1
biwgd2hpY2ggd2lsbCBvbmx5DQo+ID4gPiBoYXBwZW4gaWYNCj4gPiBldmVudF9hZGQgZG9lcyB0
aGUgcmlnaHQgdGhpbmcuDQo+ID4gPg0KPiA+ID4gUm9iaW4uDQo+ID4NCj4gPiBIaSBSb2JpbiwN
Cj4gPg0KPiA+IEkgY29tcGxldGVseSB1bmRlcnN0b29kIHdoYXQgeW91IHNhaWQgbm93LCB0aGFu
ayB5b3UgdmVyeSBtdWNoLiBCdXQgSQ0KPiA+IGNhbWUgYWNyb3NzIGFub3RoZXIgaXNzdWUgd2hl
biBJIHRlc3QgdGhpcyBjYXNlLiBZb3UgY2FuIHNlZSBiZWxvdy4NCj4gPg0KPiA+IFsuLi5dDQo+
ID4gPiAgICAgICAgICBmb3JfZWFjaF9zaWJsaW5nX2V2ZW50KHNpYmxpbmcsIGV2ZW50LT5ncm91
cF9sZWFkZXIpIHsNCj4gPiA+ICAgICAgICAgICAgICAgICAgaWYgKHNpYmxpbmctPnBtdSAhPSBl
dmVudC0+cG11ICYmDQo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAhaXNf
c29mdHdhcmVfZXZlbnQoc2libGluZykpDQo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAg
cmV0dXJuIC1FSU5WQUw7DQo+ID4gPiArDQo+ID4gPiArICAgICAgICAgICAgICAgaWYgKGlzX2Zp
bHRlcmVkICYmIGRkcl9wZXJmX2lzX2ZpbHRlcmVkKHNpYmxpbmcpICYmDQo+ID4gPiArICAgICAg
ICAgICAgICAgICAgIGRkcl9wZXJmX2ZpbHRlcl92YWwoc2libGluZykgIT0gZmlsdGVyX3ZhbCkN
Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOw0KPiA+ID4gICAg
ICAgICAgfQ0KPiA+IFsuLi5dDQo+ID4NCj4gPiBOZWVkIHRvIGNoZWNrIHRoZSBheGkgaWQgdmFs
dWUgb2Ygc2libGluZyBldmVudHMgaW4gb25lIHNhbWUgZ3JvdXANCj4gPiB3aXRoIGZvcl9lYWNo
X3NpYmxpbmdfZXZlbnQgKCk6DQo+ID4gI2RlZmluZSBmb3JfZWFjaF9zaWJsaW5nX2V2ZW50KHNp
YmxpbmcsIGV2ZW50KSAgICAgICAgICAgICAgICAgIFwNCj4gPiAgICAgICAgICBpZiAoKGV2ZW50
KS0+Z3JvdXBfbGVhZGVyID09IChldmVudCkpICAgICAgICAgICAgICAgICAgIFwNCj4gPiAgICAg
ICAgICAgICAgICAgIGxpc3RfZm9yX2VhY2hfZW50cnkoKHNpYmxpbmcpLA0KPiA+ICYoZXZlbnQp
LT5zaWJsaW5nX2xpc3QsDQo+ID4gc2libGluZ19saXN0KQ0KPiA+DQo+ID4gQnV0IEkgZm91bmQg
dGhhdCBhbGwgY2hlY2sgaW4gdGhpcyBGb3IgbG9vcCB3aWxsIG5ldmVyIGJlIGNoZWNrZWQsDQo+
ID4gdGhhdCBtZWFucyB0aGUgY29kZSBuZXZlciBydW5zIGludG8gdGhpcyBGb3IgbG9vcC4NCj4g
PiAgICAgICAgICAgICAgICBpZiAoc2libGluZy0+cG11ICE9IGV2ZW50LT5wbXUgJiYNCj4gPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAhaXNfc29mdHdhcmVfZXZlbnQoc2libGluZykp
DQo+ID4gICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsNCj4gPg0KPiA+ICAg
ICAgICAgICAgICAgIGlmIChpc19maWx0ZXJlZCAmJiBkZHJfcGVyZl9pc19maWx0ZXJlZChzaWJs
aW5nKSAmJg0KPiA+ICAgICAgICAgICAgICAgICAgIGRkcl9wZXJmX2ZpbHRlcl92YWwoc2libGlu
ZykgIT0gZmlsdGVyX3ZhbCkNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiAtRUlO
VkFMOw0KPiA+DQo+ID4gRmluYWxseSBJIGZvdW5kIHRoYXQgaXQgY2FuJ3QgaXRlcmF0ZSBvdmVy
IHRoZSBsaXN0IHdpdGgNCj4gPiBsaXN0X2Zvcl9lYWNoX2VudHJ5KChzaWJsaW5nKSwgJihldmVu
dCktPnNpYmxpbmdfbGlzdCwgc2libGluZ19saXN0KS4NCj4gPiBTbyBkcml2ZXIgY2FuJ3QgcmVq
ZWN0IGV2ZW50IGdyb3VwIHdpdGggYXhpIGlkIGlsbGVnYWwgdmFsdWUgZHVyaW5nDQo+ID4gZXZl
bnRfaW5pdCgpIG5vdy4gRG8geW91IGtub3cgd2h5IGl0IGNhbid0IGl0ZXJhdGUgdG8gc2libGlu
ZyBldmVudHM/DQo+IA0KPiBIaSBSb2JpbiwNCj4gDQo+IEkgaGF2ZSBhbiBhbm90aGVyIHF1ZXN0
aW9uLCB3aXRoIGJlbG93IGNvbmZpZ3VyYXRpb24sIGlmIHRoaXMgbWVhbnMgY3ljbGVzLCByZWFk
DQo+IGFuZCB3cml0ZSBldmVudHMgaXMgYW4gZXZlbnQgZ3JvdXA/DQo+IAlwZXJmIHN0YXQgLWUg
aW14OF9kZHIwL2N5Y2xlcy8saW14OF9kZHIwL3JlYWQvLGlteDhfZGRyMC93cml0ZS8gc2xlZXAg
MQ0KPiANCj4gSWYgeWVzLCBJIGZvdW5kIHRoYXQgcGVyZiBldmVudCBjb3JlIGF0dGFjaCBldmVu
dCBncm91cChwZXJmX2dyb3VwX2F0dGFjaCgpIGluDQo+IGtlcm5lbC9ldmVudHMvY29yZS5jKSBh
ZnRlciBwZXJmIGV2ZW50IGluaXRpYWxpemF0aW9uIChwZXJmX3RyeV9pbml0X2V2ZW50KCkgY2Fs
bA0KPiBwbXUtPmV2ZW50X2luaXQoKSBjYWxsYmFjayBpbiBrZXJuZWwvZXZlbnRzL2NvcmUuYyku
DQo+IElzIGl0IHJlYXNvbmFibGUgYXMgd2UgYWx3YXlzIGNoZWNrIHRoZSBzaWJsaW5nIGV2ZW50
IGZvcm0gZXZlbnRfaW5pdCBjYWxsYmFjaz8NCj4gQW5kIGVhY2ggcGVyZiBldmVudCBwYXNzIHRv
IHBlcmZfZ3JvdXBfYXR0YWNoKCkgYWx3YXlzIHBvaW50IHRvIGl0J3MgZ3JvdXANCj4gbGVhZGVy
LCBzbyBmb3JfZWFjaF9zaWJsaW5nX2V2ZW50KCkgaW4gZXZlbnRfaW5pdCgpIGNhbid0IGl0ZXJh
dGUgdG8gaXQncyBzaWJsaW5nDQo+IGV2ZW50cywgYXMgaXQgaGFzIG5vIHNpYmxpbmcgZXZlbnRz
IGZyb20gcGVyZl9mcm91cF9hdHRhY2goKS4NCj4gDQo+IERvIEkgbWlzdW5kZXJzdGFuZCBhbmd0
aGluZz8NCg0KSGkgUm9iaW4sDQoNCkkgaGF2ZSBrbm93biB0aGF0IGJlbG93IGlzIGNvcnJlY3Qg
bWV0aG9kIHRvIGNvbmZpZ3VyZSBhbiBldmVudCBncm91cDoNCglwZXJmIHN0YXQgLWUgJ3tpbXg4
X2RkcjAvY3ljbGVzLyxpbXg4X2RkcjAvcmVhZC8saW14OF9kZHIwL3dyaXRlL30nIHNsZWVwIDEN
Cg0KSSB3aWxsIHNlbmQgb3V0IFBBVENIIFY1LCBwbGVhc2UgaGVscCByZXZpZXcsIHRoYW5rIHlv
dS4NCiANCkJlc3QgUmVnYXJkcywNCkpvYWtpbSBaaGFuZw0KPiBCZXN0IFJlZ2FyZHMsDQo+IEpv
YWtpbSBaaGFuZw0KPiA+IEJlc3QgUmVnYXJkcywNCj4gPiBKb2FraW0gWmhhbmcNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
