Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F531BC450
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 10:55:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=a65Vv4P3WW3PM6Glh33Eb6FrUde1s9hsxyRy7IbniGs=; b=LBipAUxVizG4XQ
	9lvpRolQOgdvDnRG853nvl3anMvNvZKM7u/Lr7xoKE+/QplRxyVZkQVhDzxGyQXVL5Y55lj696a2g
	Zi5IaRwTTLZpOvM2Lt6xguZpan8atL1am4C7igMAFS3Yeap+OSnrfnHfJiblBWVi/jW2FepwKny0T
	piPaqL8kgjGkmzIKkcScERcRe+BeG4jiw/xW5Gse0YQZ/XZrmLGjU8oVQzCl3Kk8yRyfZh+LA442v
	hODbPeS9ej8EP6EzqZ0y/kgFsTNBIDuB0+qiNn2N3SdclO9ETr1QabbV3tEuj41aNEjIr9GwP/g1p
	/WO+1Yqfi1ncckg2OXUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCgbB-0007Hw-23; Tue, 24 Sep 2019 08:55:05 +0000
Received: from mail-eopbgr10083.outbound.protection.outlook.com ([40.107.1.83]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCgav-0007HK-Sk
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 08:54:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HrPOhYok8PsWYcLova08gAjWQC9SXSRcrf3COwO/xEM5PphgKEUEym/74hewavq6Bt1UU1EhT5NvawhpxqMqpUYaMejE64eHoj7tnkivKo9LHL8UToQLTskvjotWPMmsY6kb70jfjH+Uq2Gv2RpASD5duTKf+L7k3gSUAgR2iIrrpJokBmM0xgWJ9fwYfLYY9IDeU2aY9C8yqvslCNqdHiSAmNmM/OC84U2bBABdtK034J6ZlpN/jkJiXNwViDt86yShOVkl2JRO1K/ZU4pwTnwO+3jVPGVu47zCwcoj5Ri3DERwJrRFqgXjmVFOsI3ebGzybWzGa65Bo9f+GdLnvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X1q/ZZ7XCw4DbeOFmWFBhrfYSTKtX10+KJnhidgekcM=;
 b=KEIgm4GhPiKYc4KTIsVRb3QA2VbHkAQGwGOlMTnMJW5e6J3q1ct3ski1mJwDZ29GR9zJebKriJehNA/QpqIbSrlMBsL7byMCFqnI6p/KtqygV0PPPDkzty7kD1i3JZmJilXK7imgTv/pLen4ZHD64CxZGpMXkwOPdnzWpFsn26df/RGrqo0+aEcqehy/fqwPRAUfo41/Bx4E4UHKRllzZDD/64sgPsQ85yHHJroFgPs6wDoMhYW00iFUGPoIS2VyMCn3ueCoWtu2Ogq2ageaGF+dBVoh42NpZEABdxJuNcpE42m2xcKlGJ6zEYwLpvEeNnASGKUlwinE3nZLW/4uLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X1q/ZZ7XCw4DbeOFmWFBhrfYSTKtX10+KJnhidgekcM=;
 b=fFLeZufPG7CPUJYCzVWeZFMKsLC4ELRkt2AWzYEWJ0NY/qJOtu7ui5WQkAmVFePJhKFf889ZapioFsvxeJ2JjJnikSuH+F2ZOCxkzu9eL6/RoSsz2oeuN2HgD7CbtvSGCbFb/poPXbueqOmN4wBhrIi12L/6HvZ9zZ2NZ8HXa3A=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB3183.eurprd04.prod.outlook.com (10.170.229.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.26; Tue, 24 Sep 2019 08:54:45 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8%2]) with mapi id 15.20.2284.023; Tue, 24 Sep 2019
 08:54:45 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Matthias Kaehlcke <mka@chromium.org>
Subject: Re: [PATCH v7 4/6] PM / devfreq: Introduce devfreq_get_freq_range
Thread-Topic: [PATCH v7 4/6] PM / devfreq: Introduce devfreq_get_freq_range
Thread-Index: AQHVclNaWsVeYEJULUekJkA0O4nZjw==
Date: Tue, 24 Sep 2019 08:54:45 +0000
Message-ID: <VI1PR04MB70236E264427C0CFF8F38E3AEE840@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1569272883.git.leonard.crestez@nxp.com>
 <CGME20190923211045epcas1p2358d39cbc6f38af8ae0b7923550d919e@epcas1p2.samsung.com>
 <15e599188c5b50edad3efc37787dc2b70d6efead.1569272883.git.leonard.crestez@nxp.com>
 <e8d1d04a-1e8e-0765-179f-2146271787bb@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [92.121.36.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4e32d905-826a-4b03-6ef6-08d740ccd8de
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR04MB3183; 
x-ms-traffictypediagnostic: VI1PR04MB3183:|VI1PR04MB3183:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB3183E71D4D40228566F8D3EEEE840@VI1PR04MB3183.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0170DAF08C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(366004)(396003)(136003)(376002)(51444003)(199004)(189003)(71190400001)(14454004)(76176011)(2906002)(6246003)(7416002)(26005)(6506007)(3846002)(6116002)(102836004)(53546011)(186003)(71200400001)(99286004)(7736002)(5660300002)(478600001)(7696005)(256004)(14444005)(81156014)(81166006)(4326008)(55016002)(8676002)(316002)(44832011)(476003)(54906003)(33656002)(446003)(52536014)(66946007)(66476007)(25786009)(66556008)(66446008)(64756008)(110136005)(66066001)(74316002)(486006)(229853002)(6436002)(9686003)(76116006)(91956017)(305945005)(8936002)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3183;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: /onGmDRJcdJ78SicanzAt/7/Uu+FvyRUrEPlv4D3jcSvBAP8+O1XVtFk8OggcDu/j6IC+vXCqLFo/TjcMbabv8x2q8Edfs6ntQAJ4r8F1Y8ZCRuT+f4f/GFSOodkx9So5l1FDkOXRdhXxZOJEKq9h/QexIiKUNg3g3Z8fN01FLfmBG4gpNGLucVg4hN/eshDINRmG/eoutmUyt//2iW4aE5F3IgxzPqKatTurEf7HWmaNwoofKV1uAKK2I8DrzjDBiGYDo4mBZu38qWLQr4KnBOJ1bbPC9iTy2/vpTsAZkoDS/eesTW0kRxRImwRAN4I/n0MCNIry8h4uLjYI1eWRHKe/ZyqYxi8eA14Qjnl3fUadVXxghPyDC4Iq+eVqiYFhRRjeVVfIN3Z7XnRqrgbyEIyJknye9VUd170e2NIfjk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e32d905-826a-4b03-6ef6-08d740ccd8de
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2019 08:54:45.0605 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LL3DgWsP946gq7C4FMBWtnWay30xJJ/m3y5LQCLivLANqf+3uEGUSwX2Z5yGllbRTli78DMjScR9b5zrCNh6/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3183
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_015450_106723_BED98D89 
X-CRM114-Status: GOOD (  30.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.83 listed in list.dnswl.org]
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

T24gMjAxOS0wOS0yNCA4OjA5IEFNLCBDaGFud29vIENob2kgd3JvdGU6Cj4gSGksCj4gCj4gT24g
MTkuIDkuIDI0LiDsmKTsoIQgNjoxMCwgTGVvbmFyZCBDcmVzdGV6IHdyb3RlOgo+PiBNb3Zpbmcg
aGFuZGxpbmcgb2YgbWluL21heCBmcmVxIHRvIGEgc2luZ2xlIGZ1bmN0aW9uIGFuZCBjYWxsIGl0
IGZyb20KPj4gdXBkYXRlX2RldmZyZXEgYW5kIGZvciBwcmludGluZyBtaW4vbWF4IGZyZXEgdmFs
dWVzIGluIHN5c2ZzLgo+Pgo+PiBUaGlzIGNoYW5nZXMgdGhlIGJlaGF2aW9yIG9mIG91dC1vZi1y
YW5nZSBtaW5fZnJlcS9tYXhfZnJlcTogY2xhbXBpbmcKPj4gaXMgbm93IGRvbmUgYXQgZXZhbHVh
dGlvbiB0aW1lLiBUaGlzIG1lYW5zIHRoYXQgaWYgYW4gb3V0LW9mLXJhbmdlCj4+IGNvbnN0cmFp
bnQgaXMgaW1wb3NlZCBieSBzeXNmcyBhbmQgaXQgbGF0ZXIgYmVjb21lcyB2YWxpZCB0aGVuIGl0
IHdpbGwKPj4gYmUgZW5mb3JjZWQuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IExlb25hcmQgQ3Jlc3Rl
eiA8bGVvbmFyZC5jcmVzdGV6QG54cC5jb20+Cj4+IFJldmlld2VkLWJ5OiBNYXR0aGlhcyBLYWVo
bGNrZSA8bWthQGNocm9taXVtLm9yZz4KPj4gLS0tCj4+ICAgZHJpdmVycy9kZXZmcmVxL2RldmZy
ZXEuYyB8IDExMSArKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLQo+PiAgIDEg
ZmlsZSBjaGFuZ2VkLCA2MyBpbnNlcnRpb25zKCspLCA0OCBkZWxldGlvbnMoLSkKPj4KPj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZGV2ZnJlcS9kZXZmcmVxLmMgYi9kcml2ZXJzL2RldmZyZXEvZGV2
ZnJlcS5jCj4+IGluZGV4IDFjZWM4MTZkM2QwMC4uN2YxNTJhNTgyZTc4IDEwMDY0NAo+PiAtLS0g
YS9kcml2ZXJzL2RldmZyZXEvZGV2ZnJlcS5jCj4+ICsrKyBiL2RyaXZlcnMvZGV2ZnJlcS9kZXZm
cmVxLmMKPj4gQEAgLTI0LDEwICsyNCwxMiBAQAo+PiAgICNpbmNsdWRlIDxsaW51eC9wcmludGsu
aD4KPj4gICAjaW5jbHVkZSA8bGludXgvaHJ0aW1lci5oPgo+PiAgICNpbmNsdWRlIDxsaW51eC9v
Zi5oPgo+PiAgICNpbmNsdWRlICJnb3Zlcm5vci5oIgo+PiAgIAo+PiArI2RlZmluZSBIWl9QRVJf
S0haIDEwMDAKPiAKPiBJdCBpcyBub3QgdXNlZCBvbiB0aGlzIHBhdGNoLiBJZiBpdCBpcyB1c2Vk
IG9uIGxhdGVyIHBhdGNoLAo+IG1vdmUgaXQgdG8gb3RoZXIgcGF0Y2guCgpHb29kIGNhdGNoLgoK
Pj4gICAjZGVmaW5lIENSRUFURV9UUkFDRV9QT0lOVFMKPj4gICAjaW5jbHVkZSA8dHJhY2UvZXZl
bnRzL2RldmZyZXEuaD4KPj4gICAKPj4gICBzdGF0aWMgc3RydWN0IGNsYXNzICpkZXZmcmVxX2Ns
YXNzOwo+PiAgIAo+PiBAQCAtOTYsMTAgKzk4LDUwIEBAIHN0YXRpYyB1bnNpZ25lZCBsb25nIGZp
bmRfYXZhaWxhYmxlX21heF9mcmVxKHN0cnVjdCBkZXZmcmVxICpkZXZmcmVxKQo+PiAgIAkJZGV2
X3BtX29wcF9wdXQob3BwKTsKPj4gICAKPj4gICAJcmV0dXJuIG1heF9mcmVxOwo+PiAgIH0KPj4g
ICAKPj4gKy8qKgo+PiArICogZGV2ZnJlcV9nZXRfZnJlcV9yYW5nZSgpIC0gR2V0IHRoZSBjdXJy
ZW50IGZyZXEgcmFuZ2UKPj4gKyAqIEBkZXZmcmVxOgl0aGUgZGV2ZnJlcSBpbnN0YW5jZQo+PiAr
ICogQG1pbl9mcmVxOgl0aGUgbWluIGZyZXF1ZW5jeQo+PiArICogQG1heF9mcmVxOgl0aGUgbWF4
IGZyZXF1ZW5jeQo+PiArICoKPj4gKyAqIFRoaXMgdGFrZXMgaW50byBjb25zaWRlcmF0aW9uIGFs
bCBjb25zdHJhaW50cy4KPj4gKyAqLwo+PiArc3RhdGljIHZvaWQgZGV2ZnJlcV9nZXRfZnJlcV9y
YW5nZShzdHJ1Y3QgZGV2ZnJlcSAqZGV2ZnJlcSwKPiAKPiBUaGlzIGZ1bmN0aW9uIGlzIHVzZWQg
aW4gdGhlIG9ubHkgZGV2ZnJlcSBjb3JlLgo+IEkgdGhpbmsgdGhhdCB0aGUgaW50ZXJuYWwgZnVu
Y3Rpb24gZG9lc24ndCBuZWVkIHRvIGFkZCAnZGV2ZnJlcScgcHJlZml4Lgo+IEFsc28sIHdoZW4g
SSBkZXZlbG9wZWQgdGhlIHBhdGNoZXMsIEkgZGlkbid0IHVzZSAnZGV2ZnJlcScgcHJlZml4Cj4g
Zm9yIGludGVybmFsIGZ1bmN0aW9uLgoKVGhpcyBkb2VzIG5vdCBhcHBlYXIgdG8gYSBjbGVhciBj
b252ZW50aW9uLCB0aGVyZSBhcmUgb3RoZXIgaW50ZXJuYWwgCmZ1bmN0aW9ucyB3aXRoIGEgZGV2
ZnJlcSBwcmVmaXguIEkgdXN1YWxseSBrZWVwIHByZWZpeGVzIGFsd2F5cyBidXQgaXQgCmRvZXMg
cmVzdWx0IGluIGV4dHJhIHZlcmJvc2l0eS4KPj4gKwkJCQkgICB1bnNpZ25lZCBsb25nICptaW5f
ZnJlcSwKPj4gKwkJCQkgICB1bnNpZ25lZCBsb25nICptYXhfZnJlcSkKPj4gK3sKPj4gKwl1bnNp
Z25lZCBsb25nICpmcmVxX3RhYmxlID0gZGV2ZnJlcS0+cHJvZmlsZS0+ZnJlcV90YWJsZTsKPj4g
Kwo+PiArCWxvY2tkZXBfYXNzZXJ0X2hlbGQoJmRldmZyZXEtPmxvY2spOwo+PiArCj4+ICsJLyog
SW5pdCBtaW4vbWF4IGZyZXF1ZW5jeSBmcm9tIGZyZXEgdGFibGUgKi8KPiAKPiBJIHRoaW5rIHRo
YXQgdGhlIGNvbW1lbnRzIGluIHRoZSBkZXZmcmVxX2dldF9mcmVxX3JhbmdlKCksCj4gaXQgaXMg
bm90IG5lY2Vzc2FyeS4gQnV0IGlmIHlvdSB0aGluayB0aGF0IGl0IGlzIG5lY2Vzc2FyeSwKPiBw
bGVhc2UgYWRkIG1vcmUgZGV0YWlsZWQgZGVzY3JpcHRpb24gbGlrZSBhcyBmb2xsb3dpbmc6Cj4g
Cj4gCS8qCj4gCSAqIFRoZSBkZXZmcmVxIHJlY29tbWVuZCB0aGF0IGZyZXFfdGFibGUgbXVzdCBi
ZSBnZW5lcmF0ZWQKPiAJICogaW4gYXNjZW5kaW5nIG9yZGVyIGJ1dCwgc29tZSBkZXZmcmVxIGRy
aXZlciB1c2VkIHRoZSBkZXNjZW5kaW5nIG9yZGVyCj4gCSAqIGZvciBmcmVxX3RhYmxlLiBJbiBv
cmRlciB0byBzdXBwb3J0IGFsbCBjYXNlcywgY2hlY2sgdGhlIG9yZGVyCj4gCSAqIG9mIGZyZXFf
dGFibGUgYW5kIHRoZW4gaW5pdGlhbGl6ZSB0aGUgbWluL21heCBmcmVxdWVuY3kgZnJvbSBmcmVx
X3RhYmxlLgo+IAkgKi8KCk9LLiBOb3Qgc3RyaWN0bHkgcmVsYXRlZCB0byB0aGlzIHNlcmllczog
d291bGRuJ3QgaXQgbWFrZSBzZW5zZSB0byBqdXN0IApmaXggdGhlIGRyaXZlcnM/IEluIGxpbnV4
IGtlcm5lbCBBUEkgY29tcGF0aWJpbGl0eSBoYWNrcyBhcmUgdXN1YWxseSAKYXZvaWRlZC4KCj4+
ICsJaWYgKGZyZXFfdGFibGVbMF0gPCBmcmVxX3RhYmxlW2RldmZyZXEtPnByb2ZpbGUtPm1heF9z
dGF0ZSAtIDFdKSB7Cj4+ICsJCSptaW5fZnJlcSA9IGZyZXFfdGFibGVbMF07Cj4+ICsJCSptYXhf
ZnJlcSA9IGZyZXFfdGFibGVbZGV2ZnJlcS0+cHJvZmlsZS0+bWF4X3N0YXRlIC0gMV07Cj4+ICsJ
fSBlbHNlIHsKPj4gKwkJKm1pbl9mcmVxID0gZnJlcV90YWJsZVtkZXZmcmVxLT5wcm9maWxlLT5t
YXhfc3RhdGUgLSAxXTsKPj4gKwkJKm1heF9mcmVxID0gZnJlcV90YWJsZVswXTsKPj4gKwl9Cj4+
ICsKPj4gKwkvKiBjb25zdHJhaW50cyBmcm9tIHN5c2ZzICovCj4gCj4gZGl0dG8uIE5lZWQgdG8g
YWRkIG1vcmUgZGV0YWlsZWQgY29tbWVudCBieSBrZWVwaW5nIHRoZSBjb21tZW50IHN0eWxlIG9m
IGRldmZyZXEuCgpXaGF0IGNvbW1lbnQgc3R5bGUsIGNhcGl0YWxpemF0aW9uIGFuZCBwdW5jdHVh
dGlvbj8gVGhpcyBpcyBzaW1pbGFyIHRvIAp0aGUgcmVzdCBvZiB0aGUgZmlsZS4KCj4+ICsJKm1p
bl9mcmVxID0gbWF4KCptaW5fZnJlcSwgZGV2ZnJlcS0+bWluX2ZyZXEpOwo+PiArCSptYXhfZnJl
cSA9IG1pbigqbWF4X2ZyZXEsIGRldmZyZXEtPm1heF9mcmVxKTsKPj4gKwo+PiArCS8qIGNvbnN0
cmFpbnRzIGZyb20gT1BQIGludGVyZmFjZSAqLwo+IAo+IGRpdHRvLgo+IAo+PiArCSptaW5fZnJl
cSA9IG1heCgqbWluX2ZyZXEsIGRldmZyZXEtPnNjYWxpbmdfbWluX2ZyZXEpOwo+PiArCS8qIHNj
YWxpbmdfbWF4X2ZyZXEgY2FuIGJlIHplcm8gb24gZXJyb3IgKi8KPj4gKwlpZiAoZGV2ZnJlcS0+
c2NhbGluZ19tYXhfZnJlcSkKPj4gKwkJKm1heF9mcmVxID0gbWluKCptYXhfZnJlcSwgZGV2ZnJl
cS0+c2NhbGluZ19tYXhfZnJlcSk7Cj4+ICsKPj4gKwkvKiBtYXhfZnJlcSB0YWtlcyBwcmVjZWRl
bmNlIG92ZXIgbWluX2ZyZXEgKi8KPiAKPiBJdCBpcyBub3QgbmVjZXNzYXJ5LiBXZSBjYW4ga25v
dyB0aGF0IG1pbl9mcmVxIGhhdmUgdG8gYmUKPiB1bmRlciBtYXhfZnJlcSB3aXRob3V0IGFueSBj
b21tZW50Lgo+IAo+PiArCWlmICgqbWluX2ZyZXEgPiAqbWF4X2ZyZXEpCj4+ICsJCSptaW5fZnJl
cSA9ICptYXhfZnJlcTsKClRoaXMgaXMgYSBkZWxpYmVyYXRlIGNoYW5nZSBpbnRyb2R1Y2VkIGJ5
IHRoaXMgcGF0Y2g6IGluc3RlYWQgb2YgCmVuc3VyaW5nIG1pbl9mcmVxIDw9IG1heF9mcmVxIGF0
IHN5c2ZzIHdyaXRlIHRpbWUgd2UgbWFrZSBtaW5fZnJlcSB0YWtlIApwcmVjZWRlbmNlIGF0IGV2
YWx1YXRpb24gdGltZS4KCldpdGggUE0gUW9TIHRoZXJlIGlzIG5vIHdheSB0byBlbnN1cmUgdGhh
dCB0aGUgdmFsdWUgY29taW5nIHRocm91Z2ggCkRFVl9QTV9RT1NfTUlOX0ZSRVEgaXMgbGVzcyB0
aGFuIHRocm91Z2ggREVWX1BNX1FPU19NQVhfRlJFUS4KCj4+ICt9Cj4+ICsKPj4gICAvKioKPj4g
ICAgKiBkZXZmcmVxX2dldF9mcmVxX2xldmVsKCkgLSBMb29rdXAgZnJlcV90YWJsZSBmb3IgdGhl
IGZyZXF1ZW5jeQo+PiAgICAqIEBkZXZmcmVxOgl0aGUgZGV2ZnJlcSBpbnN0YW5jZQo+PiAgICAq
IEBmcmVxOgl0aGUgdGFyZ2V0IGZyZXF1ZW5jeQo+PiAgICAqLwo+PiBAQCAtMzQ5LDIxICszOTEs
MTMgQEAgaW50IHVwZGF0ZV9kZXZmcmVxKHN0cnVjdCBkZXZmcmVxICpkZXZmcmVxKQo+PiAgIAo+
PiAgIAkvKiBSZWV2YWx1YXRlIHRoZSBwcm9wZXIgZnJlcXVlbmN5ICovCj4+ICAgCWVyciA9IGRl
dmZyZXEtPmdvdmVybm9yLT5nZXRfdGFyZ2V0X2ZyZXEoZGV2ZnJlcSwgJmZyZXEpOwo+PiAgIAlp
ZiAoZXJyKQo+PiAgIAkJcmV0dXJuIGVycjsKPj4gKwlkZXZmcmVxX2dldF9mcmVxX3JhbmdlKGRl
dmZyZXEsICZtaW5fZnJlcSwgJm1heF9mcmVxKTsKPj4gICAKPj4gLQkvKgo+PiAtCSAqIEFkanVz
dCB0aGUgZnJlcXVlbmN5IHdpdGggdXNlciBmcmVxLCBRb1MgYW5kIGF2YWlsYWJsZSBmcmVxLgo+
PiAtCSAqCj4+IC0JICogTGlzdCBmcm9tIHRoZSBoaWdoZXN0IHByaW9yaXR5Cj4+IC0JICogbWF4
X2ZyZXEKPj4gLQkgKiBtaW5fZnJlcQo+PiAtCSAqLwo+PiAtCW1heF9mcmVxID0gbWluKGRldmZy
ZXEtPnNjYWxpbmdfbWF4X2ZyZXEsIGRldmZyZXEtPm1heF9mcmVxKTsKPj4gLQltaW5fZnJlcSA9
IG1heChkZXZmcmVxLT5zY2FsaW5nX21pbl9mcmVxLCBkZXZmcmVxLT5taW5fZnJlcSk7Cj4+IC0K
Pj4gKwkvKiBtYXggZnJlcSB0YWtlcyBwcmlvcml0eSBvdmVyIG1pbiBmcmVxICovCj4gCj4gUGxl
YXNlIHJlbW92ZSBpdC4KCk9LCgo+PiAgIAlpZiAoZnJlcSA8IG1pbl9mcmVxKSB7Cj4+ICAgCQlm
cmVxID0gbWluX2ZyZXE7Cj4+ICAgCQlmbGFncyAmPSB+REVWRlJFUV9GTEFHX0xFQVNUX1VQUEVS
X0JPVU5EOyAvKiBVc2UgR0xCICovCj4+ICAgCX0KPj4gICAJaWYgKGZyZXEgPiBtYXhfZnJlcSkg
ewo+PiBAQCAtMTI3OCw0MCArMTMxMiwyOCBAQCBzdGF0aWMgc3NpemVfdCBtaW5fZnJlcV9zdG9y
ZShzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkZXZpY2VfYXR0cmlidXRlICphdHRyLAo+PiAg
IAlyZXQgPSBzc2NhbmYoYnVmLCAiJWx1IiwgJnZhbHVlKTsKPj4gICAJaWYgKHJldCAhPSAxKQo+
PiAgIAkJcmV0dXJuIC1FSU5WQUw7Cj4+ICAgCj4+ICAgCW11dGV4X2xvY2soJmRmLT5sb2NrKTsK
Pj4gLQo+PiAtCWlmICh2YWx1ZSkgewo+PiAtCQlpZiAodmFsdWUgPiBkZi0+bWF4X2ZyZXEpIHsK
Pj4gLQkJCXJldCA9IC1FSU5WQUw7Cj4+IC0JCQlnb3RvIHVubG9jazsKPj4gLQkJfQo+PiAtCX0g
ZWxzZSB7Cj4+IC0JCXVuc2lnbmVkIGxvbmcgKmZyZXFfdGFibGUgPSBkZi0+cHJvZmlsZS0+ZnJl
cV90YWJsZTsKPj4gLQo+PiAtCQkvKiBHZXQgbWluaW11bSBmcmVxdWVuY3kgYWNjb3JkaW5nIHRv
IHNvcnRpbmcgb3JkZXIgKi8KPj4gLQkJaWYgKGZyZXFfdGFibGVbMF0gPCBmcmVxX3RhYmxlW2Rm
LT5wcm9maWxlLT5tYXhfc3RhdGUgLSAxXSkKPj4gLQkJCXZhbHVlID0gZnJlcV90YWJsZVswXTsK
Pj4gLQkJZWxzZQo+PiAtCQkJdmFsdWUgPSBmcmVxX3RhYmxlW2RmLT5wcm9maWxlLT5tYXhfc3Rh
dGUgLSAxXTsKPj4gLQl9Cj4+IC0+ICAJZGYtPm1pbl9mcmVxID0gdmFsdWU7PiAgCXVwZGF0ZV9k
ZXZmcmVxKGRmKTsKPj4gLQlyZXQgPSBjb3VudDsKPj4gLXVubG9jazoKPj4gICAJbXV0ZXhfdW5s
b2NrKCZkZi0+bG9jayk7Cj4+IC0JcmV0dXJuIHJldDsKPj4gKwo+PiArCXJldHVybiBjb3VudDsK
Pj4gICB9Cj4+ICAgCj4+ICAgc3RhdGljIHNzaXplX3QgbWluX2ZyZXFfc2hvdyhzdHJ1Y3QgZGV2
aWNlICpkZXYsIHN0cnVjdCBkZXZpY2VfYXR0cmlidXRlICphdHRyLAo+PiAgIAkJCSAgICAgY2hh
ciAqYnVmKQo+PiAgIHsKPj4gICAJc3RydWN0IGRldmZyZXEgKmRmID0gdG9fZGV2ZnJlcShkZXYp
Owo+PiArCXVuc2lnbmVkIGxvbmcgbWluX2ZyZXEsIG1heF9mcmVxOwo+PiAgIAo+PiAtCXJldHVy
biBzcHJpbnRmKGJ1ZiwgIiVsdVxuIiwgbWF4KGRmLT5zY2FsaW5nX21pbl9mcmVxLCBkZi0+bWlu
X2ZyZXEpKTsKPj4gKwltdXRleF9sb2NrKCZkZi0+bG9jayk7Cj4+ICsJZGV2ZnJlcV9nZXRfZnJl
cV9yYW5nZShkZiwgJm1pbl9mcmVxLCAmbWF4X2ZyZXEpOwo+PiArCW11dGV4X3VubG9jaygmZGYt
PmxvY2spOwo+PiArCj4+ICsJcmV0dXJuIHNwcmludGYoYnVmLCAiJWx1XG4iLCBtaW5fZnJlcSk7
Cj4+ICAgfQo+PiAgIAo+PiAgIHN0YXRpYyBzc2l6ZV90IG1heF9mcmVxX3N0b3JlKHN0cnVjdCBk
ZXZpY2UgKmRldiwgc3RydWN0IGRldmljZV9hdHRyaWJ1dGUgKmF0dHIsCj4+ICAgCQkJICAgICAg
Y29uc3QgY2hhciAqYnVmLCBzaXplX3QgY291bnQpCj4+ICAgewo+PiBAQCAtMTMyMyw0MCArMTM0
NSwzMyBAQCBzdGF0aWMgc3NpemVfdCBtYXhfZnJlcV9zdG9yZShzdHJ1Y3QgZGV2aWNlICpkZXYs
IHN0cnVjdCBkZXZpY2VfYXR0cmlidXRlICphdHRyLAo+PiAgIAlpZiAocmV0ICE9IDEpCj4+ICAg
CQlyZXR1cm4gLUVJTlZBTDsKPj4gICAKPj4gICAJbXV0ZXhfbG9jaygmZGYtPmxvY2spOwo+PiAg
IAo+PiAtCWlmICh2YWx1ZSkgewo+PiAtCQlpZiAodmFsdWUgPCBkZi0+bWluX2ZyZXEpIHsKPj4g
LQkJCXJldCA9IC1FSU5WQUw7Cj4+IC0JCQlnb3RvIHVubG9jazsKPj4gLQkJfQo+PiAtCX0gZWxz
ZSB7Cj4+IC0JCXVuc2lnbmVkIGxvbmcgKmZyZXFfdGFibGUgPSBkZi0+cHJvZmlsZS0+ZnJlcV90
YWJsZTsKPj4gLQo+PiAtCQkvKiBHZXQgbWF4aW11bSBmcmVxdWVuY3kgYWNjb3JkaW5nIHRvIHNv
cnRpbmcgb3JkZXIgKi8KPj4gLQkJaWYgKGZyZXFfdGFibGVbMF0gPCBmcmVxX3RhYmxlW2RmLT5w
cm9maWxlLT5tYXhfc3RhdGUgLSAxXSkKPj4gLQkJCXZhbHVlID0gZnJlcV90YWJsZVtkZi0+cHJv
ZmlsZS0+bWF4X3N0YXRlIC0gMV07Cj4+IC0JCWVsc2UKPj4gLQkJCXZhbHVlID0gZnJlcV90YWJs
ZVswXTsKPj4gLQl9Cj4+ICsJLyogSW50ZXJwcmV0IHplcm8gYXMgImRvbid0IGNhcmUiICovCj4g
Cj4gUGxlYXNlIHJlbW92ZSB0aGlzIGNvbW1lbnQuCgpUaGlzIGlzIGRvY3VtZW50ZWQgaW4gRG9j
dW1lbnRhdGlvbi9BQkkvdGVzdGluZy9zeXNmcy1jbGFzcy1kZXZmcmVxIGJ1dCAKbm90IGltbWVk
aWF0ZWx5IG9idmlvdXMuIFNldHRpbmcgbWF4IHRvICJ6ZXJvIiBjb3VsZCBoYXZlIG1lYW50ICJt
aW4gCnBvc3NpYmxlIiBpbnN0ZWFkIG9mICJkb24ndCBjYXJlIi4KCj4+ICsJaWYgKCF2YWx1ZSkK
Pj4gKwkJdmFsdWUgPSBVTE9OR19NQVg7Cj4+ICAgCj4+ICAgCWRmLT5tYXhfZnJlcSA9IHZhbHVl
Owo+PiAgIAl1cGRhdGVfZGV2ZnJlcShkZik7Cj4+IC0JcmV0ID0gY291bnQ7Cj4+IC11bmxvY2s6
Cj4+ICAgCW11dGV4X3VubG9jaygmZGYtPmxvY2spOwo+PiAtCXJldHVybiByZXQ7Cj4+ICsKPj4g
KwlyZXR1cm4gY291bnQ7Cj4+ICAgfQo+PiAgIHN0YXRpYyBERVZJQ0VfQVRUUl9SVyhtaW5fZnJl
cSk7Cj4+ICAgCj4+ICAgc3RhdGljIHNzaXplX3QgbWF4X2ZyZXFfc2hvdyhzdHJ1Y3QgZGV2aWNl
ICpkZXYsIHN0cnVjdCBkZXZpY2VfYXR0cmlidXRlICphdHRyLAo+PiAgIAkJCSAgICAgY2hhciAq
YnVmKQo+PiAgIHsKPj4gICAJc3RydWN0IGRldmZyZXEgKmRmID0gdG9fZGV2ZnJlcShkZXYpOwo+
PiArCXVuc2lnbmVkIGxvbmcgbWluX2ZyZXEsIG1heF9mcmVxOwo+PiArCj4+ICsJbXV0ZXhfbG9j
aygmZGYtPmxvY2spOwo+PiArCWRldmZyZXFfZ2V0X2ZyZXFfcmFuZ2UoZGYsICZtaW5fZnJlcSwg
Jm1heF9mcmVxKTsKPj4gKwltdXRleF91bmxvY2soJmRmLT5sb2NrKTsKPj4gICAKPj4gLQlyZXR1
cm4gc3ByaW50ZihidWYsICIlbHVcbiIsIG1pbihkZi0+c2NhbGluZ19tYXhfZnJlcSwgZGYtPm1h
eF9mcmVxKSk7Cj4+ICsJcmV0dXJuIHNwcmludGYoYnVmLCAiJWx1XG4iLCBtYXhfZnJlcSk7Cj4+
ICAgfQo+PiAgIHN0YXRpYyBERVZJQ0VfQVRUUl9SVyhtYXhfZnJlcSk7Cj4+ICAgCj4+ICAgc3Rh
dGljIHNzaXplX3QgYXZhaWxhYmxlX2ZyZXF1ZW5jaWVzX3Nob3coc3RydWN0IGRldmljZSAqZCwK
Pj4gICAJCQkJCSAgc3RydWN0IGRldmljZV9hdHRyaWJ1dGUgKmF0dHIsCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
