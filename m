Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A86A4BC4D0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 11:28:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=hcZzmSbpNQ5aOP1UI75hBSP9Ovbu4TkHf0b5D8M05pg=; b=lz0o38zyUEdirG
	eLmTiLvVlvHZCjSM+c009p4VaEyFfy9RsD2Fy4d3btmFp//Lt7bZYHY6/K3sl+38Bnv5SGacoFw8H
	WNFHHV9dYtsMkUGaKRjloix6gPQQHIWt/8XCmyGpIpjXR14xRnDlSGgaWmcRnR0BLinXRIGav/cFp
	vmU2B3eqBBr8dpTiF6YyqMR5pOOSQtx7gPNzLmraRYhr9XLeks2okTtZJPDKGntmDIL+4fTiicmaB
	mkL8P3PSxlsX7nacQeLoh6z4lBJT4xZXSGSgGS9X8KPnbtT27Q1PErYoV21xAWbJtBMjQmihiMiUm
	KpJlcSPod/y8IFUmVEqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCh79-0002t9-IN; Tue, 24 Sep 2019 09:28:07 +0000
Received: from mail-eopbgr20048.outbound.protection.outlook.com ([40.107.2.48]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCh6v-0002sg-Hh
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 09:27:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HZeiwKX+2cxu+5snltbwtm1Cf7EbRglku2+/dqPwLVHEHVJuZpSQwcatuG14DjKpgWDImZkkWVxDFoDphYtq+EIqzQJTPnwg0zGIP1TOssPz7jvfn0sQBQBe87/ulTzRCYqaNk5XYnSJgYd4vgJg7blGGusUPkWiJvH/SSxPIKwgj2HYjlVxcC41KJT1r1v5xdwhdmAyYPLDXPPdNbjQVRmH/mBIlQWzKPZLslTo8TSMQ92F071at5KBuhFpoM5/YoEtbqOTW+6XW+Zon8tARrhGHGTy10oSEhK6iQ56i4Tb7XCRWwXvrV88kQbwMjh+68Wa4IBwKkiK/MChFKL+HA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BRecr1xvzj5XaBKt1sD1Hz8x6X+oPf9Wi/gTnPHBoxI=;
 b=HQpe1X5pZsTAFXiLpbVAvaqG79/1U7H2YJU7CkaxL0zyigFFkJxz9Q9a2VW/CiaHkmsK1ZH4KmkS4nk3emt17gB+e8K9p3o9UX8NsVJGz1SikW/KZT190gEjY+YVWAYlY7mPWwIL867gZ8iISHNUybyVNJBfyGiQWgEsWQXyXIyqaw9bY5SHGIEccvTnJgr5W98ZyVGImgml8iVbABwA4ClBaM1svOHWmP7FKH7gD5lRnXqP1BnhyfLY5B8subu/y8oMlNRo3ZB7ty0qCAdnJFzbK2r+RGdIYsFE3MngZb8exkf/E8BKn6s/SGn9To4lCAa3F28rJgsqmP9oGo4XGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BRecr1xvzj5XaBKt1sD1Hz8x6X+oPf9Wi/gTnPHBoxI=;
 b=Z7XFAM+jhKpo76UXUxfHBWgff1vxPnVtAEDwU0WjUw5S9B4wpP5rR3VWMY9DAebpdrbnHlFs9p5B0x6VH15C5QYCzshiWuye+4olQZlhu0P5IBwE2UkpVUo9HnGoWgvHhTcgk76ZQzEnfqAOxZ8tY2Hg7KsYivVZ0G4n6M+6+Do=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB4366.eurprd04.prod.outlook.com (52.134.123.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.22; Tue, 24 Sep 2019 09:27:49 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8%2]) with mapi id 15.20.2284.023; Tue, 24 Sep 2019
 09:27:49 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Matthias Kaehlcke <mka@chromium.org>
Subject: Re: [PATCH v7 5/6] PM / devfreq: Add PM QoS support
Thread-Topic: [PATCH v7 5/6] PM / devfreq: Add PM QoS support
Thread-Index: AQHVclNbsLj46RRvH0SAlOW8ggV4sw==
Date: Tue, 24 Sep 2019 09:27:49 +0000
Message-ID: <VI1PR04MB7023557A8B3CFB5580187E43EE840@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1569272883.git.leonard.crestez@nxp.com>
 <CGME20190923211052epcas4p2ab1e4a6a1f50048752d2b90274ff6abf@epcas4p2.samsung.com>
 <e9868310f9543b4f4a6c7bbe5d4d015da9a0e71d.1569272883.git.leonard.crestez@nxp.com>
 <3eb36ce6-a9df-7f9a-1492-8747f2648e78@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [92.121.36.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 02ec19e7-d894-491c-1051-08d740d17789
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB4366; 
x-ms-traffictypediagnostic: VI1PR04MB4366:|VI1PR04MB4366:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB43664FE50F3D9A9FE56B53F3EE840@VI1PR04MB4366.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0170DAF08C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(396003)(39860400002)(376002)(366004)(51444003)(199004)(189003)(66446008)(74316002)(2906002)(64756008)(81156014)(7736002)(8676002)(4326008)(81166006)(6116002)(476003)(66476007)(3846002)(66066001)(7416002)(14444005)(76116006)(14454004)(6246003)(99286004)(91956017)(86362001)(66556008)(8936002)(66946007)(305945005)(33656002)(44832011)(6436002)(5660300002)(229853002)(26005)(55016002)(486006)(256004)(76176011)(9686003)(186003)(52536014)(478600001)(7696005)(25786009)(110136005)(316002)(54906003)(71190400001)(71200400001)(6506007)(53546011)(102836004)(446003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4366;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 2o2vp0cA55AN2hPsrI6MD6xQvJsFInpp59BfJQgpSqGviI+ccVAUQsa1TlAqFwPaJ0O1EDgSkfGLp4QqBOV2xD+O/M70kZgS+yf8IIM/UMuUwukKbVJmW4jFJIsBhLoZFFhFfwfxn1Sq7vho+DaCC25Hi2Ob50lZ0fK3nuknA6WmPfzcLu68PZt2smXxxD261km3PTObr0JL5qpOGDq+/8Vr87ntZac8tSus5gWLyX4MG1T7RWH+B+kf8jO65Ignx8yszMOX+MQYwk/cXS04ZKvEz6iHkvyUUaEkTWzZ2OeAOEoS7ra8cVbQW40qJH3bz0ov1gKleBq5S7tP7IOQiGqduLARbXXAJ0srHsnF5w6qdz224wKfYri7QmOK8cyVLdac9VWBHVKgAtNy45xlRDOdD5PtKLABlLDqCCCWtXA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02ec19e7-d894-491c-1051-08d740d17789
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2019 09:27:49.2997 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9cE7TJnRVLlF3sC7qFnBK5ydeYzTs/2cgRFMJnHYJWY2w+lIguFLu38X4dO784nual5nlE/o0GpzPdDnurp7zQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4366
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_022753_920321_03204AF8 
X-CRM114-Status: GOOD (  31.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.48 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?utf-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, dl-linux-imx <linux-imx@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>, Martin Kepplinger <martink@posteo.de>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS0wOS0yNCA5OjQ3IEFNLCBDaGFud29vIENob2kgd3JvdGU6Cj4gSGksCj4gCj4gT24g
MTkuIDkuIDI0LiDsmKTsoIQgNjoxMCwgTGVvbmFyZCBDcmVzdGV6IHdyb3RlOgo+PiBSZWdpc3Rl
ciBub3RpZmllcnMgd2l0aCB0aGUgUE0gUW9TIGZyYW1ld29yayBpbiBvcmRlciB0byByZXNwb25k
IHRvCj4+IHJlcXVlc3RzIGZvciBERVZfUE1fUU9TX01JTl9GUkVRVUVOQ1kgYW5kIERFVl9QTV9R
T1NfTUFYX0ZSRVFVRU5DWS4KPj4KPj4gTm8gbm90aWZpZXJzIGFyZSBhZGRlZCBieSB0aGlzIHBh
dGNoIGJ1dCBQTSBRb1MgY29uc3RyYWludHMgY2FuIGJlCj4+IGltcG9zZWQgZXh0ZXJuYWxseSAo
Zm9yIGV4YW1wbGUgZnJvbSBvdGhlciBkZXZpY2VzKS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogTGVv
bmFyZCBDcmVzdGV6IDxsZW9uYXJkLmNyZXN0ZXpAbnhwLmNvbT4KPj4gLS0tCj4+ICAgZHJpdmVy
cy9kZXZmcmVxL2RldmZyZXEuYyB8IDc2ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKwo+PiAgIGluY2x1ZGUvbGludXgvZGV2ZnJlcS5oICAgfCAgNSArKysKPj4gICAyIGZp
bGVzIGNoYW5nZWQsIDgxIGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
ZGV2ZnJlcS9kZXZmcmVxLmMgYi9kcml2ZXJzL2RldmZyZXEvZGV2ZnJlcS5jCj4+IGluZGV4IDdm
MTUyYTU4MmU3OC4uOTg4NzQwOGYyM2JiIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2RldmZyZXEv
ZGV2ZnJlcS5jCj4+ICsrKyBiL2RyaXZlcnMvZGV2ZnJlcS9kZXZmcmVxLmMKPj4gQEAgLTIyLDE3
ICsyMiwyMCBAQAo+PiAgICNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KPj4gICAj
aW5jbHVkZSA8bGludXgvbGlzdC5oPgo+PiAgICNpbmNsdWRlIDxsaW51eC9wcmludGsuaD4KPj4g
ICAjaW5jbHVkZSA8bGludXgvaHJ0aW1lci5oPgo+PiAgICNpbmNsdWRlIDxsaW51eC9vZi5oPgo+
PiArI2luY2x1ZGUgPGxpbnV4L3BtX3Fvcy5oPgo+PiAgICNpbmNsdWRlICJnb3Zlcm5vci5oIgo+
PiAgIAo+PiAgICNkZWZpbmUgSFpfUEVSX0tIWiAxMDAwCj4gCj4gWW91IGhhdmUgdG8gcmVtb3Zl
IGl0IG9uIHBhdGNoNC4KCkRvbmUuIFRoaXMgd2FzIGFkZGVkIHR3aWNlLCBwcm9iYWJseSBtZXNz
ZWQgdXAgZHVyaW5nIHJlYmFzaW5nLgoKPj4gICAvKgo+PiAgICAqIGRldmZyZXEgY29yZSBwcm92
aWRlcyBkZWxheWVkIHdvcmsgYmFzZWQgbG9hZCBtb25pdG9yaW5nIGhlbHBlcgo+PiAgICAqIGZ1
bmN0aW9ucy4gR292ZXJub3JzIGNhbiB1c2UgdGhlc2Ugb3IgY2FuIGltcGxlbWVudCB0aGVpciBv
d24KPj4gQEAgLTEyMywxMCArMTI2LDE2IEBAIHN0YXRpYyB2b2lkIGRldmZyZXFfZ2V0X2ZyZXFf
cmFuZ2Uoc3RydWN0IGRldmZyZXEgKmRldmZyZXEsCj4+ICAgCX0gZWxzZSB7Cj4+ICAgCQkqbWlu
X2ZyZXEgPSBmcmVxX3RhYmxlW2RldmZyZXEtPnByb2ZpbGUtPm1heF9zdGF0ZSAtIDFdOwo+PiAg
IAkJKm1heF9mcmVxID0gZnJlcV90YWJsZVswXTsKPj4gICAJfQo+PiAgIAo+PiArCS8qIGNvbnN0
cmFpbnRzIGZyb20gUE0gUW9TICovCj4gCj4gSSB0aGluayB0aGF0IGl0IGlzIG5vdCBuZWNlc3Nh
cnkuIEJ1dCwgaWYgeW91IHRoaW5rIGl0IGlzIHJlcXVpcmVkLAo+IFBsZWFzZSBhZGQgdGhlIGRl
dGFpbGVkIGNvbW1lbnQgd2l0aCBjb25zaXN0ZW50IGNvbW1lbnQgc3R5bGUuCgpOb3Qgc3VyZSB3
aGF0IGNvbW1lbnQgc3R5bGUgeW91IG1lYW4sIGl0IHNlZW1zIGxpa2UgYSByZWFzb25hYmxlIApz
aW5nbGUtbGluZSBjb21tZW50Lgo+PiArCSptaW5fZnJlcSA9IG1heCgqbWluX2ZyZXEsIEhaX1BF
Ul9LSFogKiAodW5zaWduZWQgbG9uZylkZXZfcG1fcW9zX3JlYWRfdmFsdWUoCj4+ICsJCQkJZGV2
ZnJlcS0+ZGV2LnBhcmVudCwgREVWX1BNX1FPU19NSU5fRlJFUVVFTkNZKSk7Cj4+ICsJKm1heF9m
cmVxID0gbWluKCptYXhfZnJlcSwgSFpfUEVSX0tIWiAqICh1bnNpZ25lZCBsb25nKWRldl9wbV9x
b3NfcmVhZF92YWx1ZSgKPj4gKwkJCQlkZXZmcmVxLT5kZXYucGFyZW50LCBERVZfUE1fUU9TX01B
WF9GUkVRVUVOQ1kpKTsKPiAKPiBJZiB5b3UgdXNlIHRoZSBzZXBhcmF0ZSB2YXJpYWJsZSBmb3Ig
Z2V0dGluZyB0aGUgdmFsdWUgZnJvbSBkZXZfcG1fcW9zX3JlYWRfdmFsdWUoKSwKPiB5b3UgY2Fu
IGFkZCB0aGlzIGxpbmUgdW5kZXIgODAgY2hhci4gSWYgdGhlcmUgYXJlIGFueSBzcGVjaWFsIHJl
YXNvbiwKPiBJIHByZWZlciB0byBrZWVwIHRoZSBsaW5lIHVuZGVyIDgwIGNoYXIuCgpPSwoKPj4g
ICAJLyogY29uc3RyYWludHMgZnJvbSBzeXNmcyAqLwo+PiAgIAkqbWluX2ZyZXEgPSBtYXgoKm1p
bl9mcmVxLCBkZXZmcmVxLT5taW5fZnJlcSk7Cj4+ICAgCSptYXhfZnJlcSA9IG1pbigqbWF4X2Zy
ZXEsIGRldmZyZXEtPm1heF9mcmVxKTsKPj4gICAKPj4gICAJLyogY29uc3RyYWludHMgZnJvbSBP
UFAgaW50ZXJmYWNlICovCj4+IEBAIC02MDUsMTAgKzYxNCw1MyBAQCBzdGF0aWMgaW50IGRldmZy
ZXFfbm90aWZpZXJfY2FsbChzdHJ1Y3Qgbm90aWZpZXJfYmxvY2sgKm5iLCB1bnNpZ25lZCBsb25n
IHR5cGUsCj4+ICAgCW11dGV4X3VubG9jaygmZGV2ZnJlcS0+bG9jayk7Cj4+ICAgCj4+ICAgCXJl
dHVybiByZXQ7Cj4+ICAgfQo+PiAgIAo+PiArLyoqCj4+ICsgKiBkZXZmcmVxX3Fvc19ub3RpZmll
cl9jYWxsKCkgLSBDb21tb24gaGFuZGxlciBmb3IgUW9TIGNvbnN0cmFpbnRzLgo+PiArICogQGRl
dmZyZXE6ICAgIHRoZSBkZXZmcmVxIGluc3RhbmNlLgo+PiArICovCj4+ICtzdGF0aWMgaW50IGRl
dmZyZXFfcW9zX25vdGlmaWVyX2NhbGwoc3RydWN0IGRldmZyZXEgKmRldmZyZXEpCj4gCj4gQWxz
bywgYXMgSSBjb21tZW50ZWQgb24gcGF0Y2g0LCB3ZSBiZXR0ZXIgdG8gcmVtb3ZlICdkZXZmcmVx
JyBwcmVmaXgKPiBmb3IgaW50ZXJuYWwgZnVuY3Rpb24gYXMgZm9sbG93aW5nOgo+IAlkZXZmcmVx
X3Fvc19ub3RpZmllcl9jYWxsIC0+IHFvc19ub3RpZmllcl9jYWxsCgpPSwoKPj4gK3sKPj4gKwlp
bnQgZXJyOwo+PiArCj4+ICsJbXV0ZXhfbG9jaygmZGV2ZnJlcS0+bG9jayk7Cj4+ICsJZXJyID0g
dXBkYXRlX2RldmZyZXEoZGV2ZnJlcSk7Cj4+ICsJbXV0ZXhfdW5sb2NrKCZkZXZmcmVxLT5sb2Nr
KTsKPj4gKwlpZiAoZXJyKQo+PiArCQlkZXZfZXJyKCZkZXZmcmVxLT5kZXYsICJkdmZzIGZvciBR
b1MgY29uc3RyYWludHMiCj4+ICsJCQkJIiBmYWlsZWQgd2l0aCAoJWQpIGVycm9yXG4iLCBlcnIp
Owo+IAo+ICdkdmZzJyBpcyBub3QgZnVsbCBuYW1lLiBBbHNvLCB0aGUgY2FwaXRhbCBsZXR0ZXIg
aXMgbW9yZSBjb3JyZWN0Lgo+IEJ1dCwgdGhlIGRldmZyZXEgdXNlZCAnZmFpbGVkIHRvIC4uLicg
Y29tbWVudCBzdHlsZSBvbiBzb21lIHBvaW50cy4KPiAKPiBJIHN1Z2dlc3QgdGhlIGNvbW1lbnQg
YXMgZm9sbG93aW5nOgo+IAo+IC0tLSBhL2RyaXZlcnMvZGV2ZnJlcS9kZXZmcmVxLmMKPiArKysg
Yi9kcml2ZXJzL2RldmZyZXEvZGV2ZnJlcS5jCj4gQEAgLTYyOCw4ICs2MjgsOCBAQCBzdGF0aWMg
aW50IGRldmZyZXFfcW9zX25vdGlmaWVyX2NhbGwoc3RydWN0IGRldmZyZXEgKmRldmZyZXEpCj4g
ICAgICAgICAgZXJyID0gdXBkYXRlX2RldmZyZXEoZGV2ZnJlcSk7Cj4gICAgICAgICAgbXV0ZXhf
dW5sb2NrKCZkZXZmcmVxLT5sb2NrKTsKPiAgICAgICAgICBpZiAoZXJyKQo+IC0gICAgICAgICAg
ICAgICBkZXZfZXJyKCZkZXZmcmVxLT5kZXYsICJkdmZzIGZvciBRb1MgY29uc3RyYWludHMiCj4g
LSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiIGZhaWxlZCB3aXRoICglZCkgZXJyb3Jc
biIsIGVycik7Cj4gKyAgICAgICAgICAgICAgIGRldl9lcnIoJmRldmZyZXEtPmRldiwKPiArICAg
ICAgICAgICAgICAgICAgICAgICAiZmFpbGVkIHRvIHVwZGF0ZSBmcmVxdWVuY3kgd2l0aCBQTVFv
UyAoJWQpXG4iLCBlcnIpOwoKSSB0cmllZCB0byBtaXJyb3IgY29tbWVudCBpbiBtb25pdG9yX2Rl
dmZyZXEsIEknbGwgYWRqdXN0LiBUaGUgZGV2X25hbWUgCm9mIGRldmZyZXEtPmRldiBpcyB1c3Vh
bGx5IHNvbWV0aGluZyB1bmhlbHBmdWwgbGlrZSAiZGV2ZnJlcTEiIHNvIG1heWJlIAomZGV2ZnJl
cS0+ZGV2LnBhcmVudCBzaG91bGQgYmUgcGFzc2VkIGluc3RlYWQuCj4gCj4+ICsKPj4gKwkvKiBR
b1MgaXMgYmVzdCBlZmZvcnQgLSBsZXQgYWxsIG5vdGlmaWVycyBydW4gb24gZXJyb3IgKi8KPiAK
PiBQbGVhc2UgcmVtb3ZlIGl0LgoKT0sgYnV0IGFuIGV4cGxhbmF0aW9uIGFzIHRvIHdoeSBlcnJv
cnMgYXJlIG5vdCBwcm9wYWdhdGVkIHNlZW1zIHdvcnRoIAprZWVwaW5nLgoKPj4gKwlyZXR1cm4g
Tk9USUZZX09LOwo+PiArfQo+PiArCj4+ICsvKioKPj4gKyAqIGRldmZyZXFfcW9zX21pbl9ub3Rp
Zmllcl9jYWxsKCkgLSBDYWxsYmFjayBmb3IgUW9TIG1pbl9mcmVxIGNoYW5nZXMuCj4+ICsgKiBA
bmI6CQlTaG91bGQgYmUgZGV2ZnJlcS0+bmJfbWluCj4+ICsgKi8KPj4gK3N0YXRpYyBpbnQgZGV2
ZnJlcV9xb3NfbWluX25vdGlmaWVyX2NhbGwoc3RydWN0IG5vdGlmaWVyX2Jsb2NrICpuYiwKPiAK
PiBkaXR0by4KPiAJZGV2ZnJlcV9xb3NfbWluX25vdGlmaWVyX2NhbGwgLT4gcW9zX21pbl9ub3Rp
Zmllcl9jYWxsCj4gCj4+ICsJCQkJCSB1bnNpZ25lZCBsb25nIHZhbCwgdm9pZCAqcHRyKQo+PiAr
ewo+PiArCXN0cnVjdCBkZXZmcmVxICpkZXZmcmVxID0gY29udGFpbmVyX29mKG5iLCBzdHJ1Y3Qg
ZGV2ZnJlcSwgbmJfbWluKTsKPj4gKwo+IAo+IG5pdHBpY2suIFlvdSBjYW4gcmVtb3ZlIHRoaXMg
bGluZS4KCk9LLCBpZiB0aGUgZGV2ZnJlcV8gcHJlZml4IGlzIHJlbW92ZWQgdGhpcyBjYW4gYmUg
dW5kZXIgODAgY2hhcnMuCgo+PiBAQCAtNjE5LDEwICs2NzEsMTUgQEAgc3RhdGljIHZvaWQgZGV2
ZnJlcV9kZXZfcmVsZWFzZShzdHJ1Y3QgZGV2aWNlICpkZXYpCj4+ICAgCj4+ICAgCW11dGV4X2xv
Y2soJmRldmZyZXFfbGlzdF9sb2NrKTsKPj4gICAJbGlzdF9kZWwoJmRldmZyZXEtPm5vZGUpOwo+
PiAgIAltdXRleF91bmxvY2soJmRldmZyZXFfbGlzdF9sb2NrKTsKPj4gICAKPj4gKwlkZXZfcG1f
cW9zX3JlbW92ZV9ub3RpZmllcihkZXZmcmVxLT5kZXYucGFyZW50LCAmZGV2ZnJlcS0+bmJfbWF4
LAo+PiArCQkJREVWX1BNX1FPU19NQVhfRlJFUVVFTkNZKTsKPj4gKwlkZXZfcG1fcW9zX3JlbW92
ZV9ub3RpZmllcihkZXZmcmVxLT5kZXYucGFyZW50LCAmZGV2ZnJlcS0+bmJfbWluLAo+PiArCQkJ
REVWX1BNX1FPU19NSU5fRlJFUVVFTkNZKTsKPiAKPiBFdmVuIGlmIGRldmZyZXFfZGV2X3JlbGVh
c2UoKSBpcyBjYWxsZWQgYXQgdGhlIGVuZCBvZiBkZXZpY2UgZHJpdmVyLAo+IGRldl9wbV9yZW1v
dmVfbm90aWZpZXIoKSBoYXZlIHJldHVybmVkIHRoZSB2YWx1ZS4gTmVlZCB0byBjaGVjawo+IHRo
ZSByZXR1cm4gdmFsdWUgZm9yIGNoZWNraW5nIHRoZSBlcnJvciBzdGF0ZS4KCkFuZCBpZiBkZXZf
cG1fcW9zX3JlbW92ZV9ub3RpZmllciByZXR1cm5zIGFuIGVycm9yIHdoYXQgbmV4dD8KCkluIGNs
ZWFudXAgZnVuY3Rpb25zIHRoZXJlIGlzIG5vdCBtdWNoIHlvdSBjYW4gZG8gb24gZXJyb3Igb3Ro
ZXIgdGhhbiB0byAKY29udGludWUgY2xlYW5pbmcgdXAuIFRoaXMgaXMgd2h5IHRoZXkgdXN1YWxs
eSByZXR1cm4gdm9pZC4KCj4+ICAgCWlmIChkZXZmcmVxLT5wcm9maWxlLT5leGl0KQo+PiAgIAkJ
ZGV2ZnJlcS0+cHJvZmlsZS0+ZXhpdChkZXZmcmVxLT5kZXYucGFyZW50KTsKPj4gICAKPj4gICAJ
a2ZyZWUoZGV2ZnJlcS0+dGltZV9pbl9zdGF0ZSk7Cj4+ICAgCWtmcmVlKGRldmZyZXEtPnRyYW5z
X3RhYmxlKTsKPj4gQEAgLTczMiwxMCArNzg5LDI4IEBAIHN0cnVjdCBkZXZmcmVxICpkZXZmcmVx
X2FkZF9kZXZpY2Uoc3RydWN0IGRldmljZSAqZGV2LAo+PiAgIAlpZiAoZXJyKSB7Cj4+ICAgCQlw
dXRfZGV2aWNlKCZkZXZmcmVxLT5kZXYpOwo+PiAgIAkJZ290byBlcnJfb3V0Owo+PiAgIAl9Cj4+
ICAgCj4+ICsJLyoKPj4gKwkgKiBSZWdpc3RlciBub3RpZmllcnMgZm9yIHVwZGF0ZXMgdG8gbWlu
L21heF9mcmVxIGFmdGVyIGRldmljZSBpcwo+PiArCSAqIGluaXRpYWxpemVkIChhbmQgd2UgY2Fu
IGhhbmRsZSBub3RpZmljYXRpb25zKSBidXQgYmVmb3JlIHRoZQo+PiArCSAqIGdvdmVybm9yIGlz
IHN0YXJ0ZWQgKHdoaWNoIHNob3VsZCBkbyBhbiBpbml0aWFsIGVuZm9yY2VtZW50IG9mCj4+ICsJ
ICogY29uc3RyYWludHMpLj4gKwkgKi8KPiAKPiBJbiB0aGUgZGV2ZnJlcV9hZGRfZGV2aWNlKCks
IGVhY2ggc3RlcCBoYXMgbm90IGNvbnRhaW5lZAo+IHRoZSBkZXRhaWxlZCBjb21tZW50LiBJZiBw
b3NzaWJsZSwgaW4gb3JkZXIgdG8ga2VlcCB0aGUgZXhpc3Rpbmcgc3R5bGUsCj4gcGxlYXNlIHJl
bW92ZSBpdC4KCkkgY2FuIHJlbW92ZSBpdCBidXQgdGhlIGNvbW1lbnQgZXhwbGFpbnMgd2h5IHRo
aXMgaXMgdGhlIHJpZ2h0IHN0ZXAgYXQgCndoaWNoIG5vdGlmaWVycyBzaG91bGQgYmUgcmVnaXN0
ZXJlZCBzbyBpdCBzZWVtcyB1c2VmdWwuCgo+PiArCWRldmZyZXEtPm5iX21pbi5ub3RpZmllcl9j
YWxsID0gZGV2ZnJlcV9xb3NfbWluX25vdGlmaWVyX2NhbGw7Cj4+ICsJZXJyID0gZGV2X3BtX3Fv
c19hZGRfbm90aWZpZXIoZGV2ZnJlcS0+ZGV2LnBhcmVudCwgJmRldmZyZXEtPm5iX21pbiwKPj4g
KwkJCQkgICAgICBERVZfUE1fUU9TX01JTl9GUkVRVUVOQ1kpOwo+PiArCWlmIChlcnIpCj4+ICsJ
CWdvdG8gZXJyX2RldmZyZXE7Cj4+ICsKPj4gKwlkZXZmcmVxLT5uYl9tYXgubm90aWZpZXJfY2Fs
bCA9IGRldmZyZXFfcW9zX21heF9ub3RpZmllcl9jYWxsOwo+PiArCWVyciA9IGRldl9wbV9xb3Nf
YWRkX25vdGlmaWVyKGRldmZyZXEtPmRldi5wYXJlbnQsICZkZXZmcmVxLT5uYl9tYXgsCj4+ICsJ
CQkJICAgICAgREVWX1BNX1FPU19NQVhfRlJFUVVFTkNZKTsKPj4gKwlpZiAoZXJyKQo+PiArCQln
b3RvIGVycl9kZXZmcmVxOwo+PiArCj4+ICAgCW11dGV4X2xvY2soJmRldmZyZXFfbGlzdF9sb2Nr
KTsKPj4gICAKPj4gICAJZ292ZXJub3IgPSB0cnlfdGhlbl9yZXF1ZXN0X2dvdmVybm9yKGRldmZy
ZXEtPmdvdmVybm9yX25hbWUpOwo+PiAgIAlpZiAoSVNfRVJSKGdvdmVybm9yKSkgewo+PiAgIAkJ
ZGV2X2VycihkZXYsICIlczogVW5hYmxlIHRvIGZpbmQgZ292ZXJub3IgZm9yIHRoZSBkZXZpY2Vc
biIsCj4+IEBAIC03NTksMTAgKzgzNCwxMSBAQCBzdHJ1Y3QgZGV2ZnJlcSAqZGV2ZnJlcV9hZGRf
ZGV2aWNlKHN0cnVjdCBkZXZpY2UgKmRldiwKPj4gICAKPj4gICAJcmV0dXJuIGRldmZyZXE7Cj4+
ICAgCj4+ICAgZXJyX2luaXQ6Cj4+ICAgCW11dGV4X3VubG9jaygmZGV2ZnJlcV9saXN0X2xvY2sp
Owo+PiArZXJyX2RldmZyZXE6Cj4+ICAgCWRldmZyZXFfcmVtb3ZlX2RldmljZShkZXZmcmVxKTsK
Pj4gICAJcmV0dXJuIEVSUl9QVFIoZXJyKTsKPj4gICAKPj4gICBlcnJfZGV2Ogo+PiAgIAkvKgo+
PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kZXZmcmVxLmggYi9pbmNsdWRlL2xpbnV4L2Rl
dmZyZXEuaAo+PiBpbmRleCAyYmFlOWVkM2M3ODMuLjhiOTJjY2JkMTk2MiAxMDA2NDQKPj4gLS0t
IGEvaW5jbHVkZS9saW51eC9kZXZmcmVxLmgKPj4gKysrIGIvaW5jbHVkZS9saW51eC9kZXZmcmVx
LmgKPj4gQEAgLTEzNCwxMCArMTM0LDEyIEBAIHN0cnVjdCBkZXZmcmVxX2Rldl9wcm9maWxlIHsK
Pj4gICAgKiBAdG90YWxfdHJhbnM6CU51bWJlciBvZiBkZXZmcmVxIHRyYW5zaXRpb25zCj4+ICAg
ICogQHRyYW5zX3RhYmxlOglTdGF0aXN0aWNzIG9mIGRldmZyZXEgdHJhbnNpdGlvbnMKPj4gICAg
KiBAdGltZV9pbl9zdGF0ZToJU3RhdGlzdGljcyBvZiBkZXZmcmVxIHN0YXRlcwo+PiAgICAqIEBs
YXN0X3N0YXRfdXBkYXRlZDoJVGhlIGxhc3QgdGltZSBzdGF0IHVwZGF0ZWQKPj4gICAgKiBAdHJh
bnNpdGlvbl9ub3RpZmllcl9saXN0OiBsaXN0IGhlYWQgb2YgREVWRlJFUV9UUkFOU0lUSU9OX05P
VElGSUVSIG5vdGlmaWVyCj4+ICsgKiBAbmJfbWluOgkJTm90aWZpZXIgYmxvY2sgZm9yIERFVl9Q
TV9RT1NfTUlOX0ZSRVFVRU5DWQo+PiArICogQG5iX21heDoJCU5vdGlmaWVyIGJsb2NrIGZvciBE
RVZfUE1fUU9TX01BWF9GUkVRVUVOQ1kKPj4gICAgKgo+PiAgICAqIFRoaXMgc3RydWN0dXJlIHN0
b3JlcyB0aGUgZGV2ZnJlcSBpbmZvcm1hdGlvbiBmb3IgYSBnaXZlIGRldmljZS4KPj4gICAgKgo+
PiAgICAqIE5vdGUgdGhhdCB3aGVuIGEgZ292ZXJub3IgYWNjZXNzZXMgZW50cmllcyBpbiBzdHJ1
Y3QgZGV2ZnJlcSBpbiBpdHMKPj4gICAgKiBmdW5jdGlvbnMgZXhjZXB0IGZvciB0aGUgY29udGV4
dCBvZiBjYWxsYmFja3MgZGVmaW5lZCBpbiBzdHJ1Y3QKPj4gQEAgLTE3NiwxMCArMTc4LDEzIEBA
IHN0cnVjdCBkZXZmcmVxIHsKPj4gICAJdW5zaWduZWQgaW50ICp0cmFuc190YWJsZTsKPj4gICAJ
dW5zaWduZWQgbG9uZyAqdGltZV9pbl9zdGF0ZTsKPj4gICAJdW5zaWduZWQgbG9uZyBsYXN0X3N0
YXRfdXBkYXRlZDsKPj4gICAKPj4gICAJc3RydWN0IHNyY3Vfbm90aWZpZXJfaGVhZCB0cmFuc2l0
aW9uX25vdGlmaWVyX2xpc3Q7Cj4+ICsKPj4gKwlzdHJ1Y3Qgbm90aWZpZXJfYmxvY2sgbmJfbWlu
Owo+PiArCXN0cnVjdCBub3RpZmllcl9ibG9jayBuYl9tYXg7Cj4+ICAgfTsKPj4gICAKPj4gICBz
dHJ1Y3QgZGV2ZnJlcV9mcmVxcyB7Cj4+ICAgCXVuc2lnbmVkIGxvbmcgb2xkOwo+PiAgIAl1bnNp
Z25lZCBsb25nIG5ldzsKPj4KPiAKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
