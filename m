Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84570BE821
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 00:11:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=8OY6EVPAUSKbP+Z6XWfxZ11JZO8+tzhBBtULW8KGALA=; b=sjy0mpj1EsZzl9
	ksufeKyJ8vLwMx/ioYwiv5vD3xzn3MuQuppGIYVroK98ATe7kRckRQKX/4+Fw5FZForstIVnkR5cF
	33MmBo+CF+uKEWidYAva3XQ+lpmu/mgntx7ql6c2wPAD0pyeDmPdVPrdeu5X4U4pqlJolsR4oYe33
	Zpynj3qQ+NyQa/Mv8KVis1MO+teMACOec5wAxBgwjaABepsEa00vB91kggUzHTA8arUNFC6WzWR2/
	AWajf3HFxDM2fwWvR/eu0rp+8GOQeyCX15Unepw6QFnAso5xjWS3uMLLFnpHH+q/xzjXNVW2Wqu6V
	zkwqDMRoFzit1l7/E+sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDFVd-0004Ot-6E; Wed, 25 Sep 2019 22:11:41 +0000
Received: from mail-eopbgr130071.outbound.protection.outlook.com
 ([40.107.13.71] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDFVR-0004OX-4k
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 22:11:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PLF9GgywQTG8K6rWt1dsXXlTD8uSOy9aSCSVgBN54en3gEMPVne5Rq9l5hLtmZ9+L35JpTgRvwBDyjzN8npjXA5IM6sjNzKzEWR0/5atx66LHKR+HMgNSHKKGvkgDLkqKQQi17I5BfwCjPQWVRqz6IZsEAtk6GJeOrmuBzwAn4Zc8BHN+ABiZsngTdYuwuKV9ke8zqAZQSdC4XqTIJWcvP1+nl2s94xk8nJq86jLTN3FDqtV62k/9EWQuSHlVKachIyQqEt3+m1VR7Ch4a3iiyKZKMCkStJRRZtAfj+6mYUekkLdUBTPM7GfL0fMxLWgZ3qw6/+wlQkE/Vj4ezPt+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jGzxG3192MwZE7odkrOKAr/x92L0dTUK5ZJk5d1v9FE=;
 b=P8lrCLLN0n8pl1GkvaZrUEXNbdHD2TeHk+MyQZ4Rr1db0r5huiTOhrkBRqs9rMNOviNTD4N9JLmvLpMzNl5pQs4b9zBwOlCSeYUhbl5fV0+EpKNgOkSxM79R6JTFqq3nN+s8n0JZ5tUsasNdA+Qcvb6kITWwjUVQ5uyVXo4fraWU64dru5tlG32c6H3+mfQ24BhvA6HgmbVMa/rsgI52J7JycOYFmqg9aaJ1U1AaIff+tPL/G9JDlU9t8IAK1q0b+BrXFfmHujkWvZwE02jb6I9PA4p0B0i2EEaej6+gjjiZbj58kGj7DsQxvjqkenvxwpB+ojB35b9Yvw4A4RugUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jGzxG3192MwZE7odkrOKAr/x92L0dTUK5ZJk5d1v9FE=;
 b=MqMAY/yCejau9ZfadOVWciOpX3a9y8ySrdQs+592qlKtJ48SRYqDOZFqnk+nE1aMl8xqHInTHx736nUWVsVlT2GW62DizSZ1rzpFD3rwrD78C1ieGM1jFFV/Nq6MGoJtZUKtGnnCTXM0KoqhhPS0kcO5fP98Y/h2Q277Kuc54NU=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5133.eurprd04.prod.outlook.com (20.177.50.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Wed, 25 Sep 2019 22:11:25 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8%2]) with mapi id 15.20.2284.023; Wed, 25 Sep 2019
 22:11:25 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, Matthias Kaehlcke <mka@chromium.org>
Subject: Re: [PATCH v8 6/6] PM / devfreq: Use PM QoS for sysfs min/max_freq
Thread-Topic: [PATCH v8 6/6] PM / devfreq: Use PM QoS for sysfs min/max_freq
Thread-Index: AQHVcsB023kul6E4VEi8K0208A4BhA==
Date: Wed, 25 Sep 2019 22:11:25 +0000
Message-ID: <VI1PR04MB7023A6F6F6DF39FC273F020AEE870@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1569319738.git.leonard.crestez@nxp.com>
 <CGME20190924101141epcas4p37956967e2f06b8a857cb53ff12ca791b@epcas4p3.samsung.com>
 <3eb8a1d1e7d738f7599d54348d6b474196581693.1569319738.git.leonard.crestez@nxp.com>
 <c521989f-51b6-84eb-b4f1-c4469494345e@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 125fb1c8-972e-4a0d-35a3-08d742054e88
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR04MB5133; 
x-ms-traffictypediagnostic: VI1PR04MB5133:|VI1PR04MB5133:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB51334C0C17428592694CB821EE870@VI1PR04MB5133.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01713B2841
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(136003)(346002)(396003)(366004)(199004)(189003)(51444003)(25786009)(52536014)(14444005)(99286004)(6116002)(71190400001)(71200400001)(53546011)(186003)(3846002)(76176011)(5660300002)(6506007)(4326008)(256004)(26005)(33656002)(478600001)(2906002)(74316002)(55016002)(7736002)(102836004)(305945005)(7696005)(486006)(6436002)(44832011)(6246003)(316002)(91956017)(76116006)(66066001)(9686003)(110136005)(66946007)(54906003)(66476007)(446003)(476003)(66556008)(66446008)(64756008)(8676002)(8936002)(7416002)(86362001)(14454004)(229853002)(81156014)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5133;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: cNxY4Jn0Px5VXVaJrkQZhjQHUNr89ictk+G6mqTmVu83OmbM9hxhnf56diNkvz+qjQ3BullyZ+wju9x2kl+UxVeYbbvnDNU3Az24o/P+UScwyACZh4fN39GGyElZQiVWKZIJB/rgTe1wcJjONut+iE6MORlviLKUVQ4oxaADclhTwNvn75o90afubQm5mbOI4sVYjAP/Oc8RqTIZIuJBoCy2gsE6wLJoahvAQhS+uxRnHPStGVrvTZmn+gImv4jhCJiqf7xUBxSeG3Es/EcR6O6FDZIah4WltHGEmo2CO+yvK26UZNy06d/H+ljcMWmi2Ljp8/BLAkiGYPuwwhTtsaH8QTzybq46n0eRtVCeISZbC/V0IewIuDouaAwVSUfexly3Zl6vlZr8uft/WiVOxE3FocxaacqAErIsKHAxL4E=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 125fb1c8-972e-4a0d-35a3-08d742054e88
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2019 22:11:25.4442 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i5Jc85ncj8jOeN6AJNKUREWYiY6TomKha1HO4O0a/HbAgLkUbR8wfnutbGFa6wmV+HoFkqjsGp76YJw/ICc7uA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5133
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_151129_534922_845ABE7C 
X-CRM114-Status: GOOD (  19.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.71 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjUuMDkuMjAxOSAwNTozNiwgQ2hhbndvbyBDaG9pIHdyb3RlOgo+IE9uIDE5LiA5LiAyNC4g
7Jik7ZuEIDc6MTEsIExlb25hcmQgQ3Jlc3RleiB3cm90ZToKPj4gU3dpdGNoIHRoZSBoYW5kbGlu
ZyBvZiBtaW5fZnJlcSBhbmQgbWF4X2ZyZXEgZnJvbSBzeXNmcyB0byB1c2UgdGhlCj4+IGRldl9w
bV9xb3NfcmVxdWVzdCBpbnRlcmZhY2UuCj4+Cj4+IFNpbmNlIFBNIFFvUyBoYW5kbGVzIGZyZXF1
ZW5jaWVzIGFzIGtIeiB0aGlzIGNoYW5nZSByZWR1Y2VzIHRoZQo+PiBwcmVjaXNpb24gb2YgbWlu
X2ZyZXEgYW5kIG1heF9mcmVxLiBUaGlzIHNob3VsZG4ndCBpbnRyb2R1Y2UgcHJvYmxlbXMKPj4g
YmVjYXVzZSBmcmVxdWVuY2llcyB3aGljaCBhcmUgbm90IGFuIGludGVnZXIgbnVtYmVyIG9mIGtI
eiBhcmUgbGlrZWx5Cj4+IG5vdCBhbiBpbnRlZ2VyIG51bWJlciBvZiBIeiBlaXRoZXIuCj4+Cj4+
IFRyeSB0byBlbnN1cmUgY29tcGF0aWJpbGl0eSBieSByb3VuZGluZyBtaW4gdmFsdWVzIGRvd24g
YW5kIHJvdW5kaW5nCj4+IG1heCB2YWx1ZXMgdXAuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IExlb25h
cmQgQ3Jlc3RleiA8bGVvbmFyZC5jcmVzdGV6QG54cC5jb20+Cj4+IFJldmlld2VkLWJ5OiBNYXR0
aGlhcyBLYWVobGNrZSA8bWthQGNocm9taXVtLm9yZz4KPj4gLS0tCj4+ICAgZHJpdmVycy9kZXZm
cmVxL2RldmZyZXEuYyB8IDQ2ICsrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0t
LQo+PiAgIGluY2x1ZGUvbGludXgvZGV2ZnJlcS5oICAgfCAgOSArKysrLS0tLQo+PiAgIDIgZmls
ZXMgY2hhbmdlZCwgMzMgaW5zZXJ0aW9ucygrKSwgMjIgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2RldmZyZXEvZGV2ZnJlcS5jIGIvZHJpdmVycy9kZXZmcmVxL2RldmZy
ZXEuYwo+PiBpbmRleCA3ODRmM2U0MDUzNmEuLjhiYjdlZmQ4MjFhYiAxMDA2NDQKPj4gLS0tIGEv
ZHJpdmVycy9kZXZmcmVxL2RldmZyZXEuYwo+PiArKysgYi9kcml2ZXJzL2RldmZyZXEvZGV2ZnJl
cS5jCj4+IEBAIC0xMzcsMTQgKzEzNywxMCBAQCBzdGF0aWMgdm9pZCBnZXRfZnJlcV9yYW5nZShz
dHJ1Y3QgZGV2ZnJlcSAqZGV2ZnJlcSwKPj4gICAJcW9zX21heF9mcmVxID0gZGV2X3BtX3Fvc19y
ZWFkX3ZhbHVlKGRldmZyZXEtPmRldi5wYXJlbnQsCj4+ICAgCQkJCQkgICAgIERFVl9QTV9RT1Nf
TUlOX0ZSRVFVRU5DWSk7Cj4+ICAgCSptaW5fZnJlcSA9IG1heCgqbWluX2ZyZXEsIEhaX1BFUl9L
SFogKiBxb3NfbWluX2ZyZXEpOwo+PiAgIAkqbWF4X2ZyZXEgPSBtaW4oKm1heF9mcmVxLCBIWl9Q
RVJfS0haICogcW9zX21heF9mcmVxKTsKPj4gICAKPj4gLQkvKiBjb25zdHJhaW50cyBmcm9tIHN5
c2ZzICovCj4+IC0JKm1pbl9mcmVxID0gbWF4KCptaW5fZnJlcSwgZGV2ZnJlcS0+bWluX2ZyZXEp
Owo+PiAtCSptYXhfZnJlcSA9IG1pbigqbWF4X2ZyZXEsIGRldmZyZXEtPm1heF9mcmVxKTsKPj4g
LQo+PiAgIAkvKiBjb25zdHJhaW50cyBmcm9tIE9QUCBpbnRlcmZhY2UgKi8KPj4gICAJKm1pbl9m
cmVxID0gbWF4KCptaW5fZnJlcSwgZGV2ZnJlcS0+c2NhbGluZ19taW5fZnJlcSk7Cj4+ICAgCS8q
IHNjYWxpbmdfbWF4X2ZyZXEgY2FuIGJlIHplcm8gb24gZXJyb3IgKi8KPj4gICAJaWYgKGRldmZy
ZXEtPnNjYWxpbmdfbWF4X2ZyZXEpCj4+ICAgCQkqbWF4X2ZyZXEgPSBtaW4oKm1heF9mcmVxLCBk
ZXZmcmVxLT5zY2FsaW5nX21heF9mcmVxKTsKPj4gQEAgLTY3OSwxMCArNjc1LDEyIEBAIHN0YXRp
YyB2b2lkIGRldmZyZXFfZGV2X3JlbGVhc2Uoc3RydWN0IGRldmljZSAqZGV2KQo+PiAgIAkJCURF
Vl9QTV9RT1NfTUlOX0ZSRVFVRU5DWSk7Cj4+ICAgCj4+ICAgCWlmIChkZXZmcmVxLT5wcm9maWxl
LT5leGl0KQo+PiAgIAkJZGV2ZnJlcS0+cHJvZmlsZS0+ZXhpdChkZXZmcmVxLT5kZXYucGFyZW50
KTsKPj4gICAKPj4gKwlkZXZfcG1fcW9zX3JlbW92ZV9yZXF1ZXN0KCZkZXZmcmVxLT51c2VyX21h
eF9mcmVxX3JlcSk7Cj4+ICsJZGV2X3BtX3Fvc19yZW1vdmVfcmVxdWVzdCgmZGV2ZnJlcS0+dXNl
cl9taW5fZnJlcV9yZXEpOwo+IAo+IFBsZWFzZSBjaGVjayB0aGUgcmV0dXJuIHZhbHVlIGlmIGVy
cm9yIGhhcHBlbiwganVzdCBwcmludCB0aGUgZXJyIHdpdGggZGV2X2VycigpCj4gd2l0aG91dCBz
dG9wcGluZyB0aGUgcmVsZWFzZSBzdGVwcy4KCk9LLCB3aWxsIHByaW50IGVycm9ycwoKPj4gICAJ
a2ZyZWUoZGV2ZnJlcS0+dGltZV9pbl9zdGF0ZSk7Cj4+ICAgCWtmcmVlKGRldmZyZXEtPnRyYW5z
X3RhYmxlKTsKPj4gICAJbXV0ZXhfZGVzdHJveSgmZGV2ZnJlcS0+bG9jayk7Cj4+ICAgCWtmcmVl
KGRldmZyZXEpOwo+PiAgIH0KPj4gQEAgLTc0NywxOCArNzQ1LDI1IEBAIHN0cnVjdCBkZXZmcmVx
ICpkZXZmcmVxX2FkZF9kZXZpY2Uoc3RydWN0IGRldmljZSAqZGV2LAo+PiAgIAlkZXZmcmVxLT5z
Y2FsaW5nX21pbl9mcmVxID0gZmluZF9hdmFpbGFibGVfbWluX2ZyZXEoZGV2ZnJlcSk7Cj4+ICAg
CWlmICghZGV2ZnJlcS0+c2NhbGluZ19taW5fZnJlcSkgewo+PiAgIAkJZXJyID0gLUVJTlZBTDsK
Pj4gICAJCWdvdG8gZXJyX2RldjsKPj4gICAJfQo+PiAtCWRldmZyZXEtPm1pbl9mcmVxID0gZGV2
ZnJlcS0+c2NhbGluZ19taW5fZnJlcTsKPj4gICAKPj4gICAJZGV2ZnJlcS0+c2NhbGluZ19tYXhf
ZnJlcSA9IGZpbmRfYXZhaWxhYmxlX21heF9mcmVxKGRldmZyZXEpOwo+PiAgIAlpZiAoIWRldmZy
ZXEtPnNjYWxpbmdfbWF4X2ZyZXEpIHsKPj4gICAJCWVyciA9IC1FSU5WQUw7Cj4+ICAgCQlnb3Rv
IGVycl9kZXY7Cj4+ICAgCX0KPj4gLQlkZXZmcmVxLT5tYXhfZnJlcSA9IGRldmZyZXEtPnNjYWxp
bmdfbWF4X2ZyZXE7Cj4+ICsKPj4gKwllcnIgPSBkZXZfcG1fcW9zX2FkZF9yZXF1ZXN0KGRldiwg
JmRldmZyZXEtPnVzZXJfbWluX2ZyZXFfcmVxLAo+PiArCQkJCSAgICAgREVWX1BNX1FPU19NSU5f
RlJFUVVFTkNZLCAwKTsKPj4gKwlpZiAoZXJyIDwgMCkKPj4gKwkJZ290byBlcnJfZGV2Owo+PiAr
CWVyciA9IGRldl9wbV9xb3NfYWRkX3JlcXVlc3QoZGV2LCAmZGV2ZnJlcS0+dXNlcl9tYXhfZnJl
cV9yZXEsCj4+ICsJCQkJICAgICBERVZfUE1fUU9TX01BWF9GUkVRVUVOQ1ksIFMzMl9NQVgpOwo+
PiArCWlmIChlcnIgPCAwKQo+PiArCQlnb3RvIGVycl9kZXY7Cj4+ICAgCj4+ICAgCWRldmZyZXEt
PnN1c3BlbmRfZnJlcSA9IGRldl9wbV9vcHBfZ2V0X3N1c3BlbmRfb3BwX2ZyZXEoZGV2KTsKPj4g
ICAJYXRvbWljX3NldCgmZGV2ZnJlcS0+c3VzcGVuZF9jb3VudCwgMCk7Cj4+ICAgCj4+ICAgCWRl
dmZyZXEtPnRyYW5zX3RhYmxlID0ga3phbGxvYygKPj4gQEAgLTg0MywxMCArODQ4LDE0IEBAIHN0
cnVjdCBkZXZmcmVxICpkZXZmcmVxX2FkZF9kZXZpY2Uoc3RydWN0IGRldmljZSAqZGV2LAo+PiAg
IGVycl9kZXY6Cj4+ICAgCS8qCj4+ICAgCSAqIENsZWFudXAgcGF0aCBmb3IgZXJyb3JzIHRoYXQg
aGFwcGVuIGJlZm9yZSByZWdpc3RyYXRpb24uCj4+ICAgCSAqIE90aGVyd2lzZSB3ZSByZWx5IG9u
IGRldmZyZXFfZGV2X3JlbGVhc2UuCj4+ICAgCSAqLwo+PiArCWlmIChkZXZfcG1fcW9zX3JlcXVl
c3RfYWN0aXZlKCZkZXZmcmVxLT51c2VyX21heF9mcmVxX3JlcSkpCj4+ICsJCWRldl9wbV9xb3Nf
cmVtb3ZlX3JlcXVlc3QoJmRldmZyZXEtPnVzZXJfbWF4X2ZyZXFfcmVxKTsKPiAKPiBQbGVhc2Ug
Y2hlY2sgdGhlIHJldHVybiB2YWx1ZSBpZiBlcnJvciBoYXBwZW4sIGp1c3QgcHJpbnQgdGhlIGVy
ciB3aXRoIGRldl9lcnIoKQo+IHdpdGhvdXQgc3RvcHBpbmcgdGhlIHJlbGVhc2Ugc3RlcHMuCgpP
Sywgd2lsbCBwcmludCBlcnJvcnMKCj4gCj4gCWRldl9lcnIoLi4uICJmYWlsZWQgdG8gcmVtb3Zl
IHJlcXVlc3Qgb2YgREVWX1BNX1FPU19NQVhfRlJFUVVFTkNZXG4iKTsKPiAKPj4gKwlpZiAoZGV2
X3BtX3Fvc19yZXF1ZXN0X2FjdGl2ZSgmZGV2ZnJlcS0+dXNlcl9taW5fZnJlcV9yZXEpKQo+PiAr
CQlkZXZfcG1fcW9zX3JlbW92ZV9yZXF1ZXN0KCZkZXZmcmVxLT51c2VyX21pbl9mcmVxX3JlcSk7
Cj4gCQo+IAlkZXZfZXJyKC4uLiAiZmFpbGVkIHRvIHJlbW92ZSByZXF1ZXN0IG9mIERFVl9QTV9R
T1NfTUlOX0ZSRVFVRU5DWVxuIik7Cj4gCj4+ICAgCWtmcmVlKGRldmZyZXEtPnRpbWVfaW5fc3Rh
dGUpOwo+PiAgIAlrZnJlZShkZXZmcmVxLT50cmFuc190YWJsZSk7Cj4+ICAgCWtmcmVlKGRldmZy
ZXEpOwo+PiAgIGVycl9vdXQ6Cj4+ICAgCXJldHVybiBFUlJfUFRSKGVycik7Cj4+IEBAIC0xNDA3
LDE0ICsxNDE2LDE1IEBAIHN0YXRpYyBzc2l6ZV90IG1pbl9mcmVxX3N0b3JlKHN0cnVjdCBkZXZp
Y2UgKmRldiwgc3RydWN0IGRldmljZV9hdHRyaWJ1dGUgKmF0dHIsCj4+ICAgCj4+ICAgCXJldCA9
IHNzY2FuZihidWYsICIlbHUiLCAmdmFsdWUpOwo+PiAgIAlpZiAocmV0ICE9IDEpCj4+ICAgCQly
ZXR1cm4gLUVJTlZBTDsKPj4gICAKPj4gLQltdXRleF9sb2NrKCZkZi0+bG9jayk7Cj4+IC0JZGYt
Pm1pbl9mcmVxID0gdmFsdWU7Cj4+IC0JdXBkYXRlX2RldmZyZXEoZGYpOwo+PiAtCW11dGV4X3Vu
bG9jaygmZGYtPmxvY2spOwo+PiArCS8qIHJvdW5kIGRvd24gdG8ga0h6IGZvciBQTSBRb1MgKi8K
PiAKPiBJIHByZWZlciBtb3JlIGRldGFpbGVkIGRlc2NyaXB0aW9uIGFzIGZvbGxvd2luZzoKPiAK
PiAJLyoKPiAJICogUm91bmQgZG93biB0byBLSHogdG8gZGVjaWRlIHRoZSBwcm9wZXIgbWluaW11
bSBmcmVxdWVuY3kKPiAJICogd2hpY2ggaXMgY2xvc2VkIHRvIHVzZXIgcmVxdWVzdC4KPiAgIAkg
Ki8KPiAKPiAKPj4gKwlyZXQgPSBkZXZfcG1fcW9zX3VwZGF0ZV9yZXF1ZXN0KCZkZi0+dXNlcl9t
aW5fZnJlcV9yZXEsCj4+ICsJCQkJCXZhbHVlIC8gSFpfUEVSX0tIWik7Cj4+ICsJaWYgKHJldCA8
IDApCj4+ICsJCXJldHVybiByZXQ7Cj4+ICAgCj4+ICAgCXJldHVybiBjb3VudDsKPj4gICB9Cj4+
ICAgCj4+ICAgc3RhdGljIHNzaXplX3QgbWluX2ZyZXFfc2hvdyhzdHJ1Y3QgZGV2aWNlICpkZXYs
IHN0cnVjdCBkZXZpY2VfYXR0cmlidXRlICphdHRyLAo+PiBAQCAtMTQzOSwxOSArMTQ0OSwxOSBA
QCBzdGF0aWMgc3NpemVfdCBtYXhfZnJlcV9zdG9yZShzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVj
dCBkZXZpY2VfYXR0cmlidXRlICphdHRyLAo+PiAgIAo+PiAgIAlyZXQgPSBzc2NhbmYoYnVmLCAi
JWx1IiwgJnZhbHVlKTsKPj4gICAJaWYgKHJldCAhPSAxKQo+PiAgIAkJcmV0dXJuIC1FSU5WQUw7
Cj4+ICAgCj4+IC0JbXV0ZXhfbG9jaygmZGYtPmxvY2spOwo+PiAtCj4+IC0JLyogSW50ZXJwcmV0
IHplcm8gYXMgImRvbid0IGNhcmUiICovCj4+IC0JaWYgKCF2YWx1ZSkKPj4gLQkJdmFsdWUgPSBV
TE9OR19NQVg7Cj4+ICsJLyogcm91bmQgdXAgdG8ga0h6IGZvciBQTSBRb1MgYW5kIGludGVycHJl
dCB6ZXJvIGFzICJkb24ndCBjYXJlIiAqLwo+IAo+IEkgdGhpbmsgdGhhdCAiZG9uJ3QgY2FyZSIg
Y29tbWVudCBzdHlsZSBpcyBub3QgZ29vZC4KPiAKPiBJIHJlZmVycmVkIHRvIHRoZSBEb2N1bWVu
dGF0aW9uL0FCSS90ZXN0aW5nL3N5c2ZzLWNsYXNzLWRldmZyZXEgZmlsZS4KPiBJIHByZWZlciBt
b3JlIGRldGFpbGVkIGRlc2NyaXB0aW9uIGFzIGZvbGxvd2luZzoKPiAJLyoKPiAJICogUm91bmQg
dXAgdG8gS0h6IHRvIGRlY2lkZSB0aGUgcHJvcGVyIG1heGltdW0gZnJlcXVlbmN5Cj4gCSAqIHdo
aWNoIGlzIGNsb3NlZCB0byB1c2VyIHJlcXVlc3QuIElmIHZhbHVlIGlzIHplcm8sCj4gCSAqIHRo
ZSB1c2VyIGRvZXMgbm90IGNhcmUuCj4gICAJICovCgpPSywgd2lsbCB1cGRhdGUgdGhpcyBjb21t
ZW50Cgo+PiArCWlmICh2YWx1ZSkKPj4gKwkJdmFsdWUgPSBESVZfUk9VTkRfVVAodmFsdWUsIEha
X1BFUl9LSFopOwo+PiArCWVsc2UKPj4gKwkJdmFsdWUgPSBTMzJfTUFYOwo+PiAgIAo+PiAtCWRm
LT5tYXhfZnJlcSA9IHZhbHVlOwo+PiAtCXVwZGF0ZV9kZXZmcmVxKGRmKTsKPj4gLQltdXRleF91
bmxvY2soJmRmLT5sb2NrKTsKPj4gKwlyZXQgPSBkZXZfcG1fcW9zX3VwZGF0ZV9yZXF1ZXN0KCZk
Zi0+dXNlcl9tYXhfZnJlcV9yZXEsIHZhbHVlKTsKPj4gKwlpZiAocmV0IDwgMCkKPj4gKwkJcmV0
dXJuIHJldDsKPj4gICAKPj4gICAJcmV0dXJuIGNvdW50Owo+PiAgIH0KPj4gICBzdGF0aWMgREVW
SUNFX0FUVFJfUlcobWluX2ZyZXEpOwo+PiAgIAo+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51
eC9kZXZmcmVxLmggYi9pbmNsdWRlL2xpbnV4L2RldmZyZXEuaAo+PiBpbmRleCBkYWMwZGZmZWFi
YjQuLjc4NDlmZTRjNjY2ZCAxMDA2NDQKPj4gLS0tIGEvaW5jbHVkZS9saW51eC9kZXZmcmVxLmgK
Pj4gKysrIGIvaW5jbHVkZS9saW51eC9kZXZmcmVxLmgKPj4gQEAgLTExLDEwICsxMSwxMSBAQAo+
PiAgICNkZWZpbmUgX19MSU5VWF9ERVZGUkVRX0hfXwo+PiAgIAo+PiAgICNpbmNsdWRlIDxsaW51
eC9kZXZpY2UuaD4KPj4gICAjaW5jbHVkZSA8bGludXgvbm90aWZpZXIuaD4KPj4gICAjaW5jbHVk
ZSA8bGludXgvcG1fb3BwLmg+Cj4+ICsjaW5jbHVkZSA8bGludXgvcG1fcW9zLmg+Cj4+ICAgCj4+
ICAgI2RlZmluZSBERVZGUkVRX05BTUVfTEVOIDE2Cj4+ICAgCj4+ICAgLyogREVWRlJFUSBnb3Zl
cm5vciBuYW1lICovCj4+ICAgI2RlZmluZSBERVZGUkVRX0dPVl9TSU1QTEVfT05ERU1BTkQJInNp
bXBsZV9vbmRlbWFuZCIKPj4gQEAgLTEyMSwxMiArMTIyLDEyIEBAIHN0cnVjdCBkZXZmcmVxX2Rl
dl9wcm9maWxlIHsKPj4gICAgKgkJZGV2ZnJlcS5uYiB0byB0aGUgY29ycmVzcG9uZGluZyByZWdp
c3RlciBub3RpZmllciBjYWxsIGNoYWluLgo+PiAgICAqIEB3b3JrOglkZWxheWVkIHdvcmsgZm9y
IGxvYWQgbW9uaXRvcmluZy4KPj4gICAgKiBAcHJldmlvdXNfZnJlcToJcHJldmlvdXNseSBjb25m
aWd1cmVkIGZyZXF1ZW5jeSB2YWx1ZS4KPj4gICAgKiBAZGF0YToJUHJpdmF0ZSBkYXRhIG9mIHRo
ZSBnb3Zlcm5vci4gVGhlIGRldmZyZXEgZnJhbWV3b3JrIGRvZXMgbm90Cj4+ICAgICoJCXRvdWNo
IHRoaXMuCj4+IC0gKiBAbWluX2ZyZXE6CUxpbWl0IG1pbmltdW0gZnJlcXVlbmN5IHJlcXVlc3Rl
ZCBieSB1c2VyICgwOiBub25lKQo+PiAtICogQG1heF9mcmVxOglMaW1pdCBtYXhpbXVtIGZyZXF1
ZW5jeSByZXF1ZXN0ZWQgYnkgdXNlciAoMDogbm9uZSkKPj4gKyAqIEB1c2VyX21pbl9mcmVxX3Jl
cToJUE0gUW9TIG1pbiBmcmVxdWVuY3kgcmVxdWVzdCBmcm9tIHVzZXIgKHZpYSBzeXNmcykKPiAK
PiBtaW4gLT4gbWluaW11bSBhbmQgdGhlbiByZW1vdmUgcGFyZW50aGVzaXMgYXMgZm9sbG93aW5n
Ogo+IAlQTSBRb1MgbWluaW11bSBmcmVxdWVuY3kgcmVxdWVzdCBieSB1c2VyIHZpYSBzeXNmcwo+
IAo+PiArICogQHVzZXJfbWF4X2ZyZXFfcmVxOglQTSBRb1MgbWF4IGZyZXF1ZW5jeSByZXF1ZXN0
IGZyb20gdXNlciAodmlhIHN5c2ZzKQo+IAo+IGRpdHRvLiBtYXggLT4gbWF4aW11bQo+IAlQTSBR
b1MgbWF4aW11bSBmcmVxdWVuY3kgcmVxdWVzdCBieSB1c2VyIHZpYSBzeXNmcwoKT0sKCj4+ICAg
ICogQHNjYWxpbmdfbWluX2ZyZXE6CUxpbWl0IG1pbmltdW0gZnJlcXVlbmN5IHJlcXVlc3RlZCBi
eSBPUFAgaW50ZXJmYWNlCj4+ICAgICogQHNjYWxpbmdfbWF4X2ZyZXE6CUxpbWl0IG1heGltdW0g
ZnJlcXVlbmN5IHJlcXVlc3RlZCBieSBPUFAgaW50ZXJmYWNlCj4+ICAgICogQHN0b3BfcG9sbGlu
ZzoJIGRldmZyZXEgcG9sbGluZyBzdGF0dXMgb2YgYSBkZXZpY2UuCj4+ICAgICogQHN1c3BlbmRf
ZnJlcToJIGZyZXF1ZW5jeSBvZiBhIGRldmljZSBzZXQgZHVyaW5nIHN1c3BlbmQgcGhhc2UuCj4+
ICAgICogQHJlc3VtZV9mcmVxOgkgZnJlcXVlbmN5IG9mIGEgZGV2aWNlIHNldCBpbiByZXN1bWUg
cGhhc2UuCj4+IEBAIC0xNjEsMTIgKzE2MiwxMiBAQCBzdHJ1Y3QgZGV2ZnJlcSB7Cj4+ICAgCXVu
c2lnbmVkIGxvbmcgcHJldmlvdXNfZnJlcTsKPj4gICAJc3RydWN0IGRldmZyZXFfZGV2X3N0YXR1
cyBsYXN0X3N0YXR1czsKPj4gICAKPj4gICAJdm9pZCAqZGF0YTsgLyogcHJpdmF0ZSBkYXRhIGZv
ciBnb3Zlcm5vcnMgKi8KPj4gICAKPj4gLQl1bnNpZ25lZCBsb25nIG1pbl9mcmVxOwo+PiAtCXVu
c2lnbmVkIGxvbmcgbWF4X2ZyZXE7Cj4+ICsJc3RydWN0IGRldl9wbV9xb3NfcmVxdWVzdCB1c2Vy
X21pbl9mcmVxX3JlcTsKPj4gKwlzdHJ1Y3QgZGV2X3BtX3Fvc19yZXF1ZXN0IHVzZXJfbWF4X2Zy
ZXFfcmVxOwo+PiAgIAl1bnNpZ25lZCBsb25nIHNjYWxpbmdfbWluX2ZyZXE7Cj4+ICAgCXVuc2ln
bmVkIGxvbmcgc2NhbGluZ19tYXhfZnJlcTsKPj4gICAJYm9vbCBzdG9wX3BvbGxpbmc7Cj4+ICAg
Cj4+ICAgCXVuc2lnbmVkIGxvbmcgc3VzcGVuZF9mcmVxOwo+Pgo+IAo+IAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
