Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC1DBC528
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 11:48:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=K2SY9jYKP7s4Ms/lJAbwbOmowQLp4nfiHamqNK4ltTI=; b=sxBdxY5HAgwXo7
	Tag3gJXBPu4P72g4Ns4CKfjjyQXqCCk6HxgE3Id9uxodh+hkQoz1rxoKKjaECgrS5VMjdZjPcPJvY
	z2N54XS8n97LFwGl6Q5jRF1Wb49+SzFZRVb6RFE370ugaRC+HaTnptgR8u1iejriphnaVl76+ksCR
	PYf01X+vc1hHfGl46XUSII0xUQa6aIekRA1OusrKhDjFKrkbfwA7GQ6+xHN3SHnFMEotiMPrgvHnQ
	7iBpwaLhlpG6P+4fdQGQYQ8xSpHWwxw2+g+74Yliq+1Mafc676BJfMgu5K3wNnyBdd7DaWuYQbmJV
	QDgZnR73QGitVBkf2BtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iChQu-0002FQ-EF; Tue, 24 Sep 2019 09:48:32 +0000
Received: from mail-eopbgr30057.outbound.protection.outlook.com ([40.107.3.57]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iChQh-0002F3-7p
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 09:48:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FyPbyHCKwaMcmEdsPqLoP2PHS34q2h7V1PmXvqAkKdxT1Q0Rn+cHwdKzlbepvOyVMEb/7sPHNKPPGju0lR4fR2SGnq7GslWXBXLpffPNpbuqWn9LCLScSV8AZHqdUeQ/oVFFTVhYthPx6NbQyXOn1krACEkYSWm1pZrCvqrhvhpBo6lYvsOu4hTmnMzQjMDcMqniC4tXzdDWMGuYsym36iI8UDL7b6J1aqBNQVatjT3ysNh8lUhawX/MZ7xHwGlDFHOAt14O48lZCYMLcV25P8E88BLOyQp0RHNOET+QDEGLBn3KPO4Ivj/XXcFSOEvBr2BNutBgdjDlZf8GimiEcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LoYuSdUmWhkGoH9gqlAFjwbBCr9a+pPfpJs5nudp0gg=;
 b=n2B8nUZ8/cW2vwU99pgu/XDXiRi+jUKWP7ZLBp1COsL4dSdlRb/GypSK9tbrhV8LQWEh7a8vREe7+wB2N8pQUXAffQ688I8hGHr4jD8C1mF9IUQX3AQGA2y/VthGzjUvyK4uhqsa272WI4HV02hveD3YbhVURLodA8+J1mfLhb5IfY3Ta5O1iJPs6BSTgJrQIIDXtie1DhjmLBpKsZaiV2x5WCs+5/Gte9N7mMJOE7SkJc4PQTNT4Ol+rInbazOXGb1Rbom7ap31Is8G7eR3H6Jm7j9rTSmYL6wT5W9urGLAt4b54ng+bTgDE+BgtRHuQHjkZ5Wz6Ttol9mIqj6onQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LoYuSdUmWhkGoH9gqlAFjwbBCr9a+pPfpJs5nudp0gg=;
 b=SYZZSLsl9PnOW4ATU8vuPCK4M8p1BIlSkeZ3Dz51vVnrn9OWMwnr3vAisK0iaES5ozSjZL72L2YKDitaNlhgULTjyKX1L2Y0IkJwJEookAo1oWEQI0Kt2zf5EEbUQZziNNCtPqsfyQCpS64rOmsONVK/e78WQKq5Pse9KbYrALY=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5005.eurprd04.prod.outlook.com (20.177.49.222) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.26; Tue, 24 Sep 2019 09:48:15 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8%2]) with mapi id 15.20.2284.023; Tue, 24 Sep 2019
 09:48:15 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Matthias Kaehlcke <mka@chromium.org>
Subject: Re: [PATCH v7 6/6] PM / devfreq: Use PM QoS for sysfs min/max_freq
Thread-Topic: [PATCH v7 6/6] PM / devfreq: Use PM QoS for sysfs min/max_freq
Thread-Index: AQHVclNc49mIYj1t/UeZuf4kILqo0A==
Date: Tue, 24 Sep 2019 09:48:15 +0000
Message-ID: <VI1PR04MB7023FA11A71C5AE961FCE3EDEE840@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1569272883.git.leonard.crestez@nxp.com>
 <CGME20190923211046epcas5p40493e620f31fe8ceaba7585c85ffafcc@epcas5p4.samsung.com>
 <00747fe09746282ef4d99ffd2a4e58e592ba4f66.1569272883.git.leonard.crestez@nxp.com>
 <9ca017ca-57cc-684b-976f-25d9d9bc6306@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [92.121.36.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4ea9ae01-40b1-4164-9a8e-08d740d4523e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR04MB5005; 
x-ms-traffictypediagnostic: VI1PR04MB5005:|VI1PR04MB5005:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB50055BD4241AFF9C528CB99FEE840@VI1PR04MB5005.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1468;
x-forefront-prvs: 0170DAF08C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(396003)(39860400002)(136003)(346002)(189003)(199004)(51444003)(256004)(7736002)(305945005)(7416002)(44832011)(6506007)(14444005)(52536014)(110136005)(86362001)(33656002)(81166006)(54906003)(53546011)(6116002)(478600001)(5660300002)(76176011)(99286004)(2906002)(14454004)(102836004)(25786009)(6246003)(316002)(229853002)(81156014)(8936002)(7696005)(6436002)(8676002)(76116006)(66476007)(486006)(476003)(66446008)(66556008)(91956017)(66066001)(3846002)(966005)(446003)(71200400001)(9686003)(66946007)(64756008)(186003)(71190400001)(4326008)(55016002)(26005)(6306002)(74316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5005;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0QvQ6+P0SoAjdLDYDR0JzHeXalrPCFIRVWzG2ln8+X07zrYHY81NFq51VYYm4oeRp7suT6GYIs6XRDt+W0zf0dqN91X4Pzx+oKa69S6Oqctr6td73Z/v6PRCO3MMiP7g8fYIWWT1CwoISH7MDPqCsR+g15gS1g0LcSqlpzM/rhliFXk0gWPCAzSEuFH0/jSLUfZiB3Nql6fxBrfNBsC7iAsfOFMub+aoa9yXRQCk9+g22iCXgS3bxZotsDGV6aCiz6v9YbQoQxzzhJNqCTRiCUnyV7S6fUwyEbPP8cCZgUktpc9IS7rNhA5IFL2t7Y3SJeJDeMxxCPJjIjtUYYO2EImeoc2KvXR4AQGZsFTRoRF+a/xFkH0D2N2wo2CTd+hKHb3kcrcJYGm+x2zRQTnfJSnc+qA78xB1LFaxcCS7kdI=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ea9ae01-40b1-4164-9a8e-08d740d4523e
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2019 09:48:15.1562 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ESdQyEPXLwsLSXdBO8PpOjz5jtCuUxNedUNaJ15pAMe+i2/WJuIBWWK/TlEMYTDmE44EFaXXdHL9AdlvDzwKjA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5005
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_024819_436819_7ABE436F 
X-CRM114-Status: GOOD (  23.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.57 listed in list.dnswl.org]
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

T24gMjAxOS0wOS0yNCAxMDoyMiBBTSwgQ2hhbndvbyBDaG9pIHdyb3RlOgo+IEhpLAo+IAo+IE9u
IDE5LiA5LiAyNC4g7Jik7KCEIDY6MTAsIExlb25hcmQgQ3Jlc3RleiB3cm90ZToKPj4gU3dpdGNo
IHRoZSBoYW5kbGluZyBvZiBtaW5fZnJlcSBhbmQgbWF4X2ZyZXEgZnJvbSBzeXNmcyB0byB1c2Ug
dGhlCj4+IGRldl9wbV9xb3NfcmVxdWVzdCBpbnRlcmZhY2UuCj4+Cj4+IFNpbmNlIFBNIFFvUyBo
YW5kbGVzIGZyZXF1ZW5jaWVzIGFzIGtIeiB0aGlzIGNoYW5nZSByZWR1Y2VzIHRoZQo+PiBwcmVj
aXNpb24gb2YgbWluX2ZyZXEgYW5kIG1heF9mcmVxLiBUaGlzIHNob3VsZG4ndCBpbnRyb2R1Y2Ug
cHJvYmxlbXMKPj4gYmVjYXVzZSBmcmVxdWVuY2llcyB3aGljaCBhcmUgbm90IGFuIGludGVnZXIg
bnVtYmVyIG9mIGtIeiBhcmUgbGlrZWx5Cj4+IG5vdCBhbiBpbnRlZ2VyIG51bWJlciBvZiBIeiBl
aXRoZXIuCj4+Cj4+IFRyeSB0byBlbnN1cmUgY29tcGF0aWJpbGl0eSBieSByb3VuZGluZyBtaW4g
dmFsdWVzIGRvd24gYW5kIHJvdW5kaW5nCj4+IG1heCB2YWx1ZXMgdXAuCj4+Cj4+IFNpZ25lZC1v
ZmYtYnk6IExlb25hcmQgQ3Jlc3RleiA8bGVvbmFyZC5jcmVzdGV6QG54cC5jb20+Cj4+IFJldmll
d2VkLWJ5OiBNYXR0aGlhcyBLYWVobGNrZSA8bWthQGNocm9taXVtLm9yZz4KPj4gLS0tCj4+ICAg
ZHJpdmVycy9kZXZmcmVxL2RldmZyZXEuYyB8IDQ5ICsrKysrKysrKysrKysrKysrKysrKysrKyst
LS0tLS0tLS0tLS0tLQo+PiAgIGluY2x1ZGUvbGludXgvZGV2ZnJlcS5oICAgfCAgOSArKystLS0t
Cj4+ICAgMiBmaWxlcyBjaGFuZ2VkLCAzNiBpbnNlcnRpb25zKCspLCAyMiBkZWxldGlvbnMoLSkK
Pj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZGV2ZnJlcS9kZXZmcmVxLmMgYi9kcml2ZXJzL2Rl
dmZyZXEvZGV2ZnJlcS5jCj4+IGluZGV4IDk4ODc0MDhmMjNiYi4uYTAwNzM3ZTM0ZDM2IDEwMDY0
NAo+PiAtLS0gYS9kcml2ZXJzL2RldmZyZXEvZGV2ZnJlcS5jCj4+ICsrKyBiL2RyaXZlcnMvZGV2
ZnJlcS9kZXZmcmVxLmMKPj4gQEAgLTEzMiwxNCArMTMyLDEwIEBAIHN0YXRpYyB2b2lkIGRldmZy
ZXFfZ2V0X2ZyZXFfcmFuZ2Uoc3RydWN0IGRldmZyZXEgKmRldmZyZXEsCj4+ICAgCSptaW5fZnJl
cSA9IG1heCgqbWluX2ZyZXEsIEhaX1BFUl9LSFogKiAodW5zaWduZWQgbG9uZylkZXZfcG1fcW9z
X3JlYWRfdmFsdWUoCj4+ICAgCQkJCWRldmZyZXEtPmRldi5wYXJlbnQsIERFVl9QTV9RT1NfTUlO
X0ZSRVFVRU5DWSkpOwo+PiAgIAkqbWF4X2ZyZXEgPSBtaW4oKm1heF9mcmVxLCBIWl9QRVJfS0ha
ICogKHVuc2lnbmVkIGxvbmcpZGV2X3BtX3Fvc19yZWFkX3ZhbHVlKAo+PiAgIAkJCQlkZXZmcmVx
LT5kZXYucGFyZW50LCBERVZfUE1fUU9TX01BWF9GUkVRVUVOQ1kpKTsKPj4gICAKPj4gLQkvKiBj
b25zdHJhaW50cyBmcm9tIHN5c2ZzICovCj4+IC0JKm1pbl9mcmVxID0gbWF4KCptaW5fZnJlcSwg
ZGV2ZnJlcS0+bWluX2ZyZXEpOwo+PiAtCSptYXhfZnJlcSA9IG1pbigqbWF4X2ZyZXEsIGRldmZy
ZXEtPm1heF9mcmVxKTsKPj4gLQo+PiAgIAkvKiBjb25zdHJhaW50cyBmcm9tIE9QUCBpbnRlcmZh
Y2UgKi8KPj4gICAJKm1pbl9mcmVxID0gbWF4KCptaW5fZnJlcSwgZGV2ZnJlcS0+c2NhbGluZ19t
aW5fZnJlcSk7Cj4+ICAgCS8qIHNjYWxpbmdfbWF4X2ZyZXEgY2FuIGJlIHplcm8gb24gZXJyb3Ig
Ki8KPj4gICAJaWYgKGRldmZyZXEtPnNjYWxpbmdfbWF4X2ZyZXEpCj4+ICAgCQkqbWF4X2ZyZXEg
PSBtaW4oKm1heF9mcmVxLCBkZXZmcmVxLT5zY2FsaW5nX21heF9mcmVxKTsKPj4gQEAgLTY3OSwx
MCArNjc1LDEyIEBAIHN0YXRpYyB2b2lkIGRldmZyZXFfZGV2X3JlbGVhc2Uoc3RydWN0IGRldmlj
ZSAqZGV2KQo+PiAgIAkJCURFVl9QTV9RT1NfTUlOX0ZSRVFVRU5DWSk7Cj4+ICAgCj4+ICAgCWlm
IChkZXZmcmVxLT5wcm9maWxlLT5leGl0KQo+PiAgIAkJZGV2ZnJlcS0+cHJvZmlsZS0+ZXhpdChk
ZXZmcmVxLT5kZXYucGFyZW50KTsKPj4gICAKPj4gKwlkZXZfcG1fcW9zX3JlbW92ZV9yZXF1ZXN0
KCZkZXZmcmVxLT51c2VyX21heF9mcmVxX3JlcSk7Cj4+ICsJZGV2X3BtX3Fvc19yZW1vdmVfcmVx
dWVzdCgmZGV2ZnJlcS0+dXNlcl9taW5fZnJlcV9yZXEpOwo+PiAgIAlrZnJlZShkZXZmcmVxLT50
aW1lX2luX3N0YXRlKTsKPj4gICAJa2ZyZWUoZGV2ZnJlcS0+dHJhbnNfdGFibGUpOwo+PiAgIAlt
dXRleF9kZXN0cm95KCZkZXZmcmVxLT5sb2NrKTsKPj4gICAJa2ZyZWUoZGV2ZnJlcSk7Cj4+ICAg
fQo+PiBAQCAtNzQ3LDE4ICs3NDUsMjYgQEAgc3RydWN0IGRldmZyZXEgKmRldmZyZXFfYWRkX2Rl
dmljZShzdHJ1Y3QgZGV2aWNlICpkZXYsCj4+ICAgCWRldmZyZXEtPnNjYWxpbmdfbWluX2ZyZXEg
PSBmaW5kX2F2YWlsYWJsZV9taW5fZnJlcShkZXZmcmVxKTsKPj4gICAJaWYgKCFkZXZmcmVxLT5z
Y2FsaW5nX21pbl9mcmVxKSB7Cj4+ICAgCQllcnIgPSAtRUlOVkFMOwo+PiAgIAkJZ290byBlcnJf
ZGV2Owo+PiAgIAl9Cj4+IC0JZGV2ZnJlcS0+bWluX2ZyZXEgPSBkZXZmcmVxLT5zY2FsaW5nX21p
bl9mcmVxOwo+PiAgIAo+PiAgIAlkZXZmcmVxLT5zY2FsaW5nX21heF9mcmVxID0gZmluZF9hdmFp
bGFibGVfbWF4X2ZyZXEoZGV2ZnJlcSk7Cj4+ICAgCWlmICghZGV2ZnJlcS0+c2NhbGluZ19tYXhf
ZnJlcSkgewo+PiAgIAkJZXJyID0gLUVJTlZBTDsKPj4gICAJCWdvdG8gZXJyX2RldjsKPj4gICAJ
fQo+PiAtCWRldmZyZXEtPm1heF9mcmVxID0gZGV2ZnJlcS0+c2NhbGluZ19tYXhfZnJlcTsKPj4g
Kwo+PiArCS8qIFBNIFFvUyByZXF1ZXN0cyBmb3IgbWluL21heCBmcmVxIGZyb20gc3lzZnMgKi8K
PiAKPiBUaGUgY29tbWVudCBpcyBpbXBvcnRhbnQuIEJ1dCB0aGUgZGV2ZnJlcV9hZGRfZGV2aWNl
KCkgaGFzIHVzdWFsbHkKPiBub3QgYWRkZWQgdGhlIGNvbW1lbnQgZm9yIGVhY2ggc3RlcC4gSSdt
IG5vdCBzdXJlIHRvIGFkZCB0aGUgc29tZQo+IGNvbW1lbnRzIGZvciBvbmx5IHRoaXMuIEhvdyBh
Ym91dCByZW1vdmluZyBpdD8KCk9LLgoKPj4gKwllcnIgPSBkZXZfcG1fcW9zX2FkZF9yZXF1ZXN0
KGRldiwgJmRldmZyZXEtPnVzZXJfbWluX2ZyZXFfcmVxLAo+PiArCQkJCSAgICAgREVWX1BNX1FP
U19NSU5fRlJFUVVFTkNZLCAwKTsKPj4gKwlpZiAoZXJyIDwgMCkKPj4gKwkJZ290byBlcnJfZGV2
Owo+PiArCWVyciA9IGRldl9wbV9xb3NfYWRkX3JlcXVlc3QoZGV2LCAmZGV2ZnJlcS0+dXNlcl9t
YXhfZnJlcV9yZXEsCj4+ICsJCQkJICAgICBERVZfUE1fUU9TX01BWF9GUkVRVUVOQ1ksIFMzMl9N
QVgpOwo+PiArCWlmIChlcnIgPCAwKQo+PiArCQlnb3RvIGVycl9kZXY7Cj4+ICAgCj4+ICAgCWRl
dmZyZXEtPnN1c3BlbmRfZnJlcSA9IGRldl9wbV9vcHBfZ2V0X3N1c3BlbmRfb3BwX2ZyZXEoZGV2
KTsKPj4gICAJYXRvbWljX3NldCgmZGV2ZnJlcS0+c3VzcGVuZF9jb3VudCwgMCk7Cj4+ICAgCj4+
ICAgCWRldmZyZXEtPnRyYW5zX3RhYmxlID0ga3phbGxvYygKPj4gQEAgLTg0MywxMCArODQ5LDE0
IEBAIHN0cnVjdCBkZXZmcmVxICpkZXZmcmVxX2FkZF9kZXZpY2Uoc3RydWN0IGRldmljZSAqZGV2
LAo+PiAgIGVycl9kZXY6Cj4+ICAgCS8qCj4+ICAgCSAqIENsZWFudXAgcGF0aCBmb3IgZXJyb3Jz
IHRoYXQgaGFwcGVuIGJlZm9yZSByZWdpc3RyYXRpb24uCj4+ICAgCSAqIE90aGVyd2lzZSB3ZSBy
ZWx5IG9uIGRldmZyZXFfZGV2X3JlbGVhc2UuCj4+ICAgCSAqLwo+PiArCWlmIChkZXZfcG1fcW9z
X3JlcXVlc3RfYWN0aXZlKCZkZXZmcmVxLT51c2VyX21heF9mcmVxX3JlcSkpCj4+ICsJCWRldl9w
bV9xb3NfcmVtb3ZlX3JlcXVlc3QoJmRldmZyZXEtPnVzZXJfbWF4X2ZyZXFfcmVxKTsKPj4gKwlp
ZiAoZGV2X3BtX3Fvc19yZXF1ZXN0X2FjdGl2ZSgmZGV2ZnJlcS0+dXNlcl9taW5fZnJlcV9yZXEp
KQo+PiArCQlkZXZfcG1fcW9zX3JlbW92ZV9yZXF1ZXN0KCZkZXZmcmVxLT51c2VyX21pbl9mcmVx
X3JlcSk7Cj4+ICAgCWtmcmVlKGRldmZyZXEtPnRpbWVfaW5fc3RhdGUpOwo+PiAgIAlrZnJlZShk
ZXZmcmVxLT50cmFuc190YWJsZSk7Cj4+ICAgCWtmcmVlKGRldmZyZXEpOwo+PiAgIGVycl9vdXQ6
Cj4+ICAgCXJldHVybiBFUlJfUFRSKGVycik7Cj4+IEBAIC0xMzg3LDE0ICsxMzk3LDE3IEBAIHN0
YXRpYyBzc2l6ZV90IG1pbl9mcmVxX3N0b3JlKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRl
dmljZV9hdHRyaWJ1dGUgKmF0dHIsCj4+ICAgCj4+ICAgCXJldCA9IHNzY2FuZihidWYsICIlbHUi
LCAmdmFsdWUpOwo+PiAgIAlpZiAocmV0ICE9IDEpCj4+ICAgCQlyZXR1cm4gLUVJTlZBTDsKPj4g
ICAKPj4gLQltdXRleF9sb2NrKCZkZi0+bG9jayk7Cj4+IC0JZGYtPm1pbl9mcmVxID0gdmFsdWU7
Cj4+IC0JdXBkYXRlX2RldmZyZXEoZGYpOwo+PiAtCW11dGV4X3VubG9jaygmZGYtPmxvY2spOwo+
PiArCS8qIHJvdW5kIGRvd24gdG8ga0h6IGZvciBkZXZfcG1fcW9zICovCj4gCj4gUGxlYXNlIHJl
bW92ZSBpdC4KPiAKPj4gKwlpZiAodmFsdWUpCj4+ICsJCXZhbHVlID0gdmFsdWUgLyBIWl9QRVJf
S0haOwo+IAo+IEl0IGRvZXNuJ3QgYmUgbmVjZXNzYXJ5Lgo+IAo+PiArCj4+ICsJcmV0ID0gZGV2
X3BtX3Fvc191cGRhdGVfcmVxdWVzdCgmZGYtPnVzZXJfbWluX2ZyZXFfcmVxLCB2YWx1ZSk7Cj4g
Cj4gQ2hhbmdlIGl0IGFzIGZvbGxvd2luZzoKPiAJcmV0ID0gZGV2X3BtX3Fvc191cGRhdGVfcmVx
dWVzdCgmZGYtPnVzZXJfbWluX2ZyZXFfcmVxLCAodmFsdWUgLyBIWl9QRVJfS0haKSk7CgpPSwoK
Pj4gKwlpZiAocmV0IDwgMCkKPj4gKwkJcmV0dXJuIHJldDsKPj4gICAKPj4gICAJcmV0dXJuIGNv
dW50Owo+PiAgIH0KPj4gICAKPj4gICBzdGF0aWMgc3NpemVfdCBtaW5fZnJlcV9zaG93KHN0cnVj
dCBkZXZpY2UgKmRldiwgc3RydWN0IGRldmljZV9hdHRyaWJ1dGUgKmF0dHIsCj4+IEBAIC0xNDE5
LDE5ICsxNDMyLDE5IEBAIHN0YXRpYyBzc2l6ZV90IG1heF9mcmVxX3N0b3JlKHN0cnVjdCBkZXZp
Y2UgKmRldiwgc3RydWN0IGRldmljZV9hdHRyaWJ1dGUgKmF0dHIsCj4+ICAgCj4+ICAgCXJldCA9
IHNzY2FuZihidWYsICIlbHUiLCAmdmFsdWUpOwo+PiAgIAlpZiAocmV0ICE9IDEpCj4+ICAgCQly
ZXR1cm4gLUVJTlZBTDsKPj4gICAKPj4gLQltdXRleF9sb2NrKCZkZi0+bG9jayk7Cj4+IC0KPj4g
LQkvKiBJbnRlcnByZXQgemVybyBhcyAiZG9uJ3QgY2FyZSIgKi8KPj4gLQlpZiAoIXZhbHVlKQo+
PiAtCQl2YWx1ZSA9IFVMT05HX01BWDsKPj4gKwkvKiByb3VuZCB1cCB0byBrSHogZm9yIGRldl9w
bV9xb3MgYW5kIGludGVycHJldCB6ZXJvIGFzICJkb24ndCBjYXJlIiAqLwo+IAo+IFBsZWFzZSBy
ZW1vdmUgaXQuCj4gCj4+ICsJaWYgKHZhbHVlKQo+PiArCQl2YWx1ZSA9IERJVl9ST1VORF9VUCh2
YWx1ZSwgSFpfUEVSX0tIWik7Cj4gCj4gV2h5IGRvIHlvdSB1c2UgJ0RJVl9ST1VORF9VUCh2YWx1
ZSwgSFpfUEVSX0tIWiknCj4gaW5zdGVhZCBvZiAndmFsdWUgLyBIWl9QRVJfS0haJyBpbiBtaW5f
ZnJlcV9zdG9yZSgpPwoKSWYgYW4gdXNlciByZXF1ZXN0IG9mIG1heD02NjY2NjY2NjYgSHogaXMg
Y29udmVydGVkIHRvIG1heD02NjY2NjYga0h6IAphbmQgdGhlbiBiYWNrIHRvIDY2NjY2NjAwMCBI
eiB0aGVuIHRoZSBPUFAgd2l0aCBmcmVxPTIvMyBnSHogbWlnaHQgYmUgCmN1dCBvdXQuIEkgZGVs
aWJlcmF0ZWx5IHJvdW5kZWQgZG93biBmb3IgbWluIGFuZCB1cCBmb3IgbWF4IHRvIG1ha2UgdGhl
IApjb25zdHJhaW50IGludGVydmFsICJpbmNsdXNpdmUiLgoKRG9lcyB0aGlzIG1ha2Ugc2Vuc2U/
IEl0IHNlZW1zIGxpa2UgdGhlIHBhdGggbGVhc3QgbGlrZWx5IHRvIGNhdXNlIGlzc3Vlcy4KPj4g
KwllbHNlCj4+ICsJCXZhbHVlID0gUzMyX01BWDsgPj4gLQlkZi0+bWF4X2ZyZXEgPSB2YWx1ZTsK
Pj4gLQl1cGRhdGVfZGV2ZnJlcShkZik7Cj4+IC0JbXV0ZXhfdW5sb2NrKCZkZi0+bG9jayk7Cj4+
ICsJcmV0ID0gZGV2X3BtX3Fvc191cGRhdGVfcmVxdWVzdCgmZGYtPnVzZXJfbWF4X2ZyZXFfcmVx
LCB2YWx1ZSk7Cj4+ICsJaWYgKHJldCA8IDApCj4+ICsJCXJldHVybiByZXQ7Cj4+ICAgCj4+ICAg
CXJldHVybiBjb3VudDsKPj4gICB9Cj4+ICAgc3RhdGljIERFVklDRV9BVFRSX1JXKG1pbl9mcmVx
KTsKPj4gICAKPj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZGV2ZnJlcS5oIGIvaW5jbHVk
ZS9saW51eC9kZXZmcmVxLmgKPj4gaW5kZXggOGI5MmNjYmQxOTYyLi4zMTYyZWI5YjA5NTQgMTAw
NjQ0Cj4+IC0tLSBhL2luY2x1ZGUvbGludXgvZGV2ZnJlcS5oCj4+ICsrKyBiL2luY2x1ZGUvbGlu
dXgvZGV2ZnJlcS5oCj4+IEBAIC0xMSwxMCArMTEsMTEgQEAKPj4gICAjZGVmaW5lIF9fTElOVVhf
REVWRlJFUV9IX18KPj4gICAKPj4gICAjaW5jbHVkZSA8bGludXgvZGV2aWNlLmg+Cj4+ICAgI2lu
Y2x1ZGUgPGxpbnV4L25vdGlmaWVyLmg+Cj4+ICAgI2luY2x1ZGUgPGxpbnV4L3BtX29wcC5oPgo+
PiArI2luY2x1ZGUgPGxpbnV4L3BtX3Fvcy5oPgo+PiAgIAo+PiAgICNkZWZpbmUgREVWRlJFUV9O
QU1FX0xFTiAxNgo+PiAgIAo+PiAgIC8qIERFVkZSRVEgZ292ZXJub3IgbmFtZSAqLwo+PiAgICNk
ZWZpbmUgREVWRlJFUV9HT1ZfU0lNUExFX09OREVNQU5ECSJzaW1wbGVfb25kZW1hbmQiCj4+IEBA
IC0xMjEsMTIgKzEyMiwxMiBAQCBzdHJ1Y3QgZGV2ZnJlcV9kZXZfcHJvZmlsZSB7Cj4+ICAgICoJ
CWRldmZyZXEubmIgdG8gdGhlIGNvcnJlc3BvbmRpbmcgcmVnaXN0ZXIgbm90aWZpZXIgY2FsbCBj
aGFpbi4KPj4gICAgKiBAd29yazoJZGVsYXllZCB3b3JrIGZvciBsb2FkIG1vbml0b3JpbmcuCj4+
ICAgICogQHByZXZpb3VzX2ZyZXE6CXByZXZpb3VzbHkgY29uZmlndXJlZCBmcmVxdWVuY3kgdmFs
dWUuCj4+ICAgICogQGRhdGE6CVByaXZhdGUgZGF0YSBvZiB0aGUgZ292ZXJub3IuIFRoZSBkZXZm
cmVxIGZyYW1ld29yayBkb2VzIG5vdAo+PiAgICAqCQl0b3VjaCB0aGlzLgo+PiAtICogQG1pbl9m
cmVxOglMaW1pdCBtaW5pbXVtIGZyZXF1ZW5jeSByZXF1ZXN0ZWQgYnkgdXNlciAoMDogbm9uZSkK
Pj4gLSAqIEBtYXhfZnJlcToJTGltaXQgbWF4aW11bSBmcmVxdWVuY3kgcmVxdWVzdGVkIGJ5IHVz
ZXIgKDA6IG5vbmUpCj4+ICsgKiBAdXNlcl9taW5fZnJlcV9yZXE6CVBNIFFvUyBtaW4gZnJlcXVl
bmN5IHJlcXVlc3QgZnJvbSB1c2VyICh2aWEgc3lzZnMpCj4+ICsgKiBAdXNlcl9tYXhfZnJlcV9y
ZXE6CVBNIFFvUyBtYXggZnJlcXVlbmN5IHJlcXVlc3QgZnJvbSB1c2VyICh2aWEgc3lzZnMpCj4g
Cj4gSSB0aGluayB0aGF0ICd1c2VyJyBwcmVmaXggaXMgbm90IG5lZWRlZC4gWW91IGJldHRlciB0
byBjaGFuZ2UgaXQgYXMgZm9sbG93aW5nCgpXYXMgcmVxdWVzdGVkIGhlcmU6CiAgICAgaHR0cHM6
Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMTE0OTUwNS8jMjI4OTE4ODcKCkl0IG1ha2Vz
IHNlbnNlIHRvIG1lbnRpb24gdGhzIHJlcXVlc3QgaXMgZnJvbSB1c2Vyc3BhY2UgdmlhIHN5c2Zz
LiBPdGhlciAKZHJpdmVycyBjYW4gYWxzbyBtYWtlIFBNIFFvUyBmcmVxdWVuY3kgcmVxdWVzdHMg
Zm9yIHRoZWlyIG93biByZWFzb25zLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
