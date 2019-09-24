Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A03FBBC3BE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 10:04:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=JgpZ0rr/3Q4isz+q81huM2ptBH5beSNWLzt6+Dd6R78=; b=E/nfYpWB4XErjL
	zxoopRo3RQOI6kIxHnuDN5JyWE5Qry7G4Z6nfB6WpIW4HdkLoDuQcWIA6f+ZjIh+sTH2I6UZZ6qE+
	cWeOA/HsdqcepAD76crj54DFQ8G0pC++M+jO4BcvCKTZDLBvP0z9szbkIN332pnPdm9t+uO8VpFxj
	qpuqKyBG6jP2F4DtVt1RbGCLL0XybnQlZWoN57s5W/uRDJHJUSM9g7uMUlFHFjTJsZeVNms2+LkgT
	Nw7r/6zPXKHM1N5kT7N5mhIQPeX+4vGDdJxpndYWsKCQxcEwmYP1ie23JrdYy80jQjJUBLzcZg3rw
	Jux0syr25D5RsFWix1cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCfoV-0004x0-Ko; Tue, 24 Sep 2019 08:04:47 +0000
Received: from mail-eopbgr140043.outbound.protection.outlook.com
 ([40.107.14.43] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCfjw-0000OJ-BY
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 08:00:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z14XAL+6OSZ6X6O0VPUyNX0QpoHaGYXvTv7m1hp+9TL9d4teKC0vnZFrlN5OXGkxfVR8wg/Lo0HpPrcg17yMKuNNkZ0ZU7s99mAkbzF+TVVMatAYnYF0UZ6H2bvKKZwGuXvw8ghqsjD+ZgLyo3pydc1gNFoz0QoTt4R46UsFwzllNrwd/AwItjVF5s1FSULBiwU9YZSwYViqENdqJDkpHZTnxC7KWE8yqO4MPORhZUaXZwTDctocv0WFlMg+s/LQ52ZhMEi5NHvpFBtWheZC5U9/FSDfYnYF6Ql732otHOPczXIhafa/uSlDfAUM8v3CZ/ujVepCu/FoaXrAHpTEbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sO2L623Xmt4wtgYZoTtEj7bIj1g6TDVd8wpk37VTgNQ=;
 b=l862RM+n37iMHq3MZPiNDan/JeIMKPGcnemuAH15iJ0+9lH+aBo/39VEx2VaZRUDdBAEPivHD3daRNe1O5unq50JQzLAQJqYZ4Hc9/mBAGhHq4vyBYwpl0LI7LsHzqKcm6+EcHjRxLMgBmJ+ek0b8pbsgmKntMJfGhjrI7pbx4n42H0vmswAwdpVJBPWUsnwNg+4X9705tkZkcoq2goOOz1sNb5nXXVZ9gKaqLrQwbehjBt0MmY9EOQdukZQBEC22bsB6VdZ9H0/JeWVWWcUD1WXE3V+aLyD85ukA4CFhfijAG3+GKZcFxogm+WExpfNGS2FHldVep4Ow99vQD2FFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sO2L623Xmt4wtgYZoTtEj7bIj1g6TDVd8wpk37VTgNQ=;
 b=cc0FcoccqakaYUnSgoBw/3v9tUNPkeiEx65R//kcBJATnbi1hZ5SRBFoQO55Kc8CbKggcclV5Z7Pom90fmx+hSh1Pu81amslIrXh4UlLh6vl9Ww1JNSjqOBhhrZxs89Cj+trm2Y8vOxanOSUl05AtR66z+rdsPFaXJajvhyjkLM=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5325.eurprd04.prod.outlook.com (20.177.52.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.23; Tue, 24 Sep 2019 08:00:01 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8%2]) with mapi id 15.20.2284.023; Tue, 24 Sep 2019
 08:00:00 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Matthias Kaehlcke <mka@chromium.org>
Subject: Re: [PATCH v7 2/6] PM / devfreq: Move more initialization before
 registration
Thread-Topic: [PATCH v7 2/6] PM / devfreq: Move more initialization before
 registration
Thread-Index: AQHVclNatwx0X7s6uU629lJ8+jRdig==
Date: Tue, 24 Sep 2019 08:00:00 +0000
Message-ID: <VI1PR04MB70233FFB9D0A36E641F8E294EE840@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1569272883.git.leonard.crestez@nxp.com>
 <CGME20190923211044epcas1p406c9e3cbfe6dd9a74e502ab63f321e4b@epcas1p4.samsung.com>
 <bf55208ff3ef868dcee46b52e91f717a6add5606.1569272883.git.leonard.crestez@nxp.com>
 <bfa991bf-7155-6294-0595-fc37e3393fdd@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [92.121.36.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bb3bc140-3aaa-4da1-3d11-08d740c5334b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5325; 
x-ms-traffictypediagnostic: VI1PR04MB5325:|VI1PR04MB5325:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB5325EC67B45D4CAA240634CBEE840@VI1PR04MB5325.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0170DAF08C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(39860400002)(366004)(396003)(346002)(199004)(189003)(476003)(54906003)(7696005)(229853002)(66556008)(66946007)(66476007)(91956017)(26005)(316002)(305945005)(7736002)(446003)(102836004)(76116006)(110136005)(6246003)(25786009)(64756008)(4326008)(6436002)(5660300002)(186003)(66446008)(2906002)(66066001)(81156014)(8936002)(99286004)(14444005)(53546011)(486006)(7416002)(256004)(71200400001)(71190400001)(74316002)(44832011)(86362001)(6506007)(52536014)(3846002)(6116002)(76176011)(14454004)(9686003)(55016002)(478600001)(33656002)(8676002)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5325;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Prwvvot73cZXzyX2X/f6nXXLE3VkwplwragoY8qKj8BBZkWs8O0+QCmpgvnHjy/PnuP4lJeROS8iebbKpqbxA7kDJJ+jwoZgOP6IpX94omlqeBaI8fY3yfcNeukC+f17cBYj/H7DInbVYzGR6EYA8ZZ0JjE6hwROH7gBNf4jRTz3DRtgIJR73Kq46pnW+6kntmeBjiqkcyk3mfRCxxktlGxdtSQkO3lN7UGk1i7+NImTcTBWI3m0ajbDv0lbFJQxQ0zre22CkDXLvBwN8kCruDnz2FxY3/V7ImIC1IOlVQu1r7v5RVVy0RJUPss32/IUbMbTObOhXNPpFk3LO2PM23Zjj4I57ZyeXW/1XVI8C7RJdCvQiAWdTN2/GkTvsnIAskC5II/qN++wn2i6hEVYLcRa8Vxbr8G4F31lEmMyq4U=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb3bc140-3aaa-4da1-3d11-08d740c5334b
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2019 08:00:00.7917 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DRBYqKwkmBcYKgWWek8NBLojusfo84sQIV3IFFYv/Alerrps9bHtmk20IouQDpoTi1GINODcoGz+36XhhTEosA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5325
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_010004_460353_6820656E 
X-CRM114-Status: GOOD (  20.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.43 listed in list.dnswl.org]
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

T24gMjAxOS0wOS0yNCA1OjUyIEFNLCBDaGFud29vIENob2kgd3JvdGU6Cj4gSGksCj4gCj4gSSdt
IG5vdCBzdXJlIHRoYXQgaXQgaXMgbmVjZXNzYXJ5LiBCZWNhdXNlLCBtYWlubGluZSBrZXJuZWwK
PiBwcm92aWRlcyB0aGUgcmVzb3VyY2UtbWFuYWdlZCBmZWF0dXJlIHdpdGggJ2Rldm1fKicKPiBp
biBvcmRlciB0byByZWR1Y2UgdGhlIG1lbW9yeSBsZWFrIGJ5IHVzZXIuCj4gCj4gSXQncyBsaWtl
IGdvaW5nIGJhY2sgdG8gYSB0aW1lIHdoZW4gJ2Rldm1fKicgZmVhdHVyZSB3YXNuJ3QgdGhlcmUu
Cj4gSSB0aGluayBqdXN0IGl0IGRlcGVuZHMgb24gdGhlIGNvZGluZyBzdHlsZSBvZiBhdXRob3Iu
Cj4gCj4gSSBsZWF2ZSB0aGUgZmluYWwgZGVjaXNpb24gb2YgdGhpcyBwYXRjaCB0byBNeXVuZ2pv
by4KCkluaXRpYWxpemluZyBiZWZvcmUgcmVnaXN0cmF0aW9uIGlzIGEgZGVwZW5kZW5jeSBvZiB0
aGUgbmV4dCBwYXRjaCB3aGljaCAKcmVsYXhlcyBsb2NraW5nIG9uIGluaXQgcGF0aC4KCkRyb3Bw
aW5nIGRldm0gaXMgaW5kZWVkIG9kZCBidXQgbWFudWFsIG1lbW9yeSBtYW5hZ2VtZW50IGluIGEg
c3Vic3lzdGVtIApjb3JlIHNlZW1zIHJlYXNvbmFibGUuIEkgdGhpbmsgZGV2bSBjb3VsZCBiZSBr
ZXB0IGFyb3VuZCBieSBzcGxpdGluZyAKZGV2aWNlX3JlZ2lzdGVyIGludG8gc2VwYXJhdGUgZGV2
aWNlX2luaXRpYWxpemUgYW5kIGRldmljZV9hZGQgc3RlcHMuCgo+IE9uIDE5LiA5LiAyNC4g7Jik
7KCEIDY6MTAsIExlb25hcmQgQ3Jlc3RleiB3cm90ZToKPj4gSW4gZ2VuZXJhbCBpdCBpcyBhIGJl
dHRlciB0byBpbml0aWFsaXplIGFuIG9iamVjdCBiZWZvcmUgbWFraW5nIGl0Cj4+IGFjY2Vzc2li
bGUgZXh0ZXJuYWxseSAodGhyb3VnaCBkZXZpY2VfcmVnaXN0ZXIpLgo+Pgo+PiBUaGlzIG1ha2Vz
IGl0IHBvc3NpYmxlIHRvIGF2b2lkIHJlbHlpbmcgb24gbG9ja2luZyBhIHBhcnRpYWxseQo+PiBp
bml0aWFsaXplZCBvYmplY3QuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IExlb25hcmQgQ3Jlc3RleiA8
bGVvbmFyZC5jcmVzdGV6QG54cC5jb20+Cj4+IFJldmlld2VkLWJ5OiBNYXR0aGlhcyBLYWVobGNr
ZSA8bWthQGNocm9taXVtLm9yZz4KPj4gLS0tCj4+ICAgZHJpdmVycy9kZXZmcmVxL2RldmZyZXEu
YyB8IDQzICsrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLQo+PiAgIDEgZmls
ZSBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspLCAxOCBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZGV2ZnJlcS9kZXZmcmVxLmMgYi9kcml2ZXJzL2RldmZyZXEvZGV2ZnJl
cS5jCj4+IGluZGV4IGY1YmVhNzM1MGY3Mi4uOGJiY2Q0ZWZhMDlmIDEwMDY0NAo+PiAtLS0gYS9k
cml2ZXJzL2RldmZyZXEvZGV2ZnJlcS5jCj4+ICsrKyBiL2RyaXZlcnMvZGV2ZnJlcS9kZXZmcmVx
LmMKPj4gQEAgLTU4OCwxMCArNTg4LDEyIEBAIHN0YXRpYyB2b2lkIGRldmZyZXFfZGV2X3JlbGVh
c2Uoc3RydWN0IGRldmljZSAqZGV2KQo+PiAgIAltdXRleF91bmxvY2soJmRldmZyZXFfbGlzdF9s
b2NrKTsKPj4gICAKPj4gICAJaWYgKGRldmZyZXEtPnByb2ZpbGUtPmV4aXQpCj4+ICAgCQlkZXZm
cmVxLT5wcm9maWxlLT5leGl0KGRldmZyZXEtPmRldi5wYXJlbnQpOwo+PiAgIAo+PiArCWtmcmVl
KGRldmZyZXEtPnRpbWVfaW5fc3RhdGUpOwo+PiArCWtmcmVlKGRldmZyZXEtPnRyYW5zX3RhYmxl
KTsKPj4gICAJbXV0ZXhfZGVzdHJveSgmZGV2ZnJlcS0+bG9jayk7Cj4+ICAgCWtmcmVlKGRldmZy
ZXEpOwo+PiAgIH0KPj4gICAKPj4gICAvKioKPj4gQEAgLTY3MSw0NCArNjczLDQzIEBAIHN0cnVj
dCBkZXZmcmVxICpkZXZmcmVxX2FkZF9kZXZpY2Uoc3RydWN0IGRldmljZSAqZGV2LAo+PiAgIAlk
ZXZmcmVxLT5tYXhfZnJlcSA9IGRldmZyZXEtPnNjYWxpbmdfbWF4X2ZyZXE7Cj4+ICAgCj4+ICAg
CWRldmZyZXEtPnN1c3BlbmRfZnJlcSA9IGRldl9wbV9vcHBfZ2V0X3N1c3BlbmRfb3BwX2ZyZXEo
ZGV2KTsKPj4gICAJYXRvbWljX3NldCgmZGV2ZnJlcS0+c3VzcGVuZF9jb3VudCwgMCk7Cj4+ICAg
Cj4+IC0JZGV2X3NldF9uYW1lKCZkZXZmcmVxLT5kZXYsICJkZXZmcmVxJWQiLAo+PiAtCQkJCWF0
b21pY19pbmNfcmV0dXJuKCZkZXZmcmVxX25vKSk7Cj4+IC0JZXJyID0gZGV2aWNlX3JlZ2lzdGVy
KCZkZXZmcmVxLT5kZXYpOwo+PiAtCWlmIChlcnIpIHsKPj4gLQkJbXV0ZXhfdW5sb2NrKCZkZXZm
cmVxLT5sb2NrKTsKPj4gLQkJcHV0X2RldmljZSgmZGV2ZnJlcS0+ZGV2KTsKPj4gLQkJZ290byBl
cnJfb3V0Owo+PiAtCX0KPj4gLQo+PiAtCWRldmZyZXEtPnRyYW5zX3RhYmxlID0gZGV2bV9remFs
bG9jKCZkZXZmcmVxLT5kZXYsCj4+ICsJZGV2ZnJlcS0+dHJhbnNfdGFibGUgPSBremFsbG9jKAo+
PiAgIAkJCWFycmF5M19zaXplKHNpemVvZih1bnNpZ25lZCBpbnQpLAo+PiAgIAkJCQkgICAgZGV2
ZnJlcS0+cHJvZmlsZS0+bWF4X3N0YXRlLAo+PiAgIAkJCQkgICAgZGV2ZnJlcS0+cHJvZmlsZS0+
bWF4X3N0YXRlKSwKPj4gICAJCQlHRlBfS0VSTkVMKTsKPj4gICAJaWYgKCFkZXZmcmVxLT50cmFu
c190YWJsZSkgewo+PiAgIAkJbXV0ZXhfdW5sb2NrKCZkZXZmcmVxLT5sb2NrKTsKPj4gICAJCWVy
ciA9IC1FTk9NRU07Cj4+IC0JCWdvdG8gZXJyX2RldmZyZXE7Cj4+ICsJCWdvdG8gZXJyX2RldjsK
Pj4gICAJfQo+PiAgIAo+PiAtCWRldmZyZXEtPnRpbWVfaW5fc3RhdGUgPSBkZXZtX2tjYWxsb2Mo
JmRldmZyZXEtPmRldiwKPj4gLQkJCWRldmZyZXEtPnByb2ZpbGUtPm1heF9zdGF0ZSwKPj4gLQkJ
CXNpemVvZih1bnNpZ25lZCBsb25nKSwKPj4gLQkJCUdGUF9LRVJORUwpOwo+PiArCWRldmZyZXEt
PnRpbWVfaW5fc3RhdGUgPSBrY2FsbG9jKGRldmZyZXEtPnByb2ZpbGUtPm1heF9zdGF0ZSwKPj4g
KwkJCQkJIHNpemVvZih1bnNpZ25lZCBsb25nKSwKPj4gKwkJCQkJIEdGUF9LRVJORUwpOwo+PiAg
IAlpZiAoIWRldmZyZXEtPnRpbWVfaW5fc3RhdGUpIHsKPj4gICAJCW11dGV4X3VubG9jaygmZGV2
ZnJlcS0+bG9jayk7Cj4+ICAgCQllcnIgPSAtRU5PTUVNOwo+PiAtCQlnb3RvIGVycl9kZXZmcmVx
Owo+PiArCQlnb3RvIGVycl9kZXY7Cj4+ICAgCX0KPj4gICAKPj4gICAJZGV2ZnJlcS0+bGFzdF9z
dGF0X3VwZGF0ZWQgPSBqaWZmaWVzOwo+PiAgIAo+PiAgIAlzcmN1X2luaXRfbm90aWZpZXJfaGVh
ZCgmZGV2ZnJlcS0+dHJhbnNpdGlvbl9ub3RpZmllcl9saXN0KTsKPj4gICAKPj4gKwlkZXZfc2V0
X25hbWUoJmRldmZyZXEtPmRldiwgImRldmZyZXElZCIsCj4+ICsJCQkJYXRvbWljX2luY19yZXR1
cm4oJmRldmZyZXFfbm8pKTsKPj4gKwllcnIgPSBkZXZpY2VfcmVnaXN0ZXIoJmRldmZyZXEtPmRl
dik7Cj4+ICsJaWYgKGVycikgewo+PiArCQltdXRleF91bmxvY2soJmRldmZyZXEtPmxvY2spOwo+
PiArCQlwdXRfZGV2aWNlKCZkZXZmcmVxLT5kZXYpOwo+PiArCQlnb3RvIGVycl9vdXQ7Cj4+ICsJ
fQo+PiArCj4+ICAgCW11dGV4X3VubG9jaygmZGV2ZnJlcS0+bG9jayk7Cj4+ICAgCj4+ICAgCW11
dGV4X2xvY2soJmRldmZyZXFfbGlzdF9sb2NrKTsKPj4gICAKPj4gICAJZ292ZXJub3IgPSB0cnlf
dGhlbl9yZXF1ZXN0X2dvdmVybm9yKGRldmZyZXEtPmdvdmVybm9yX25hbWUpOwo+PiBAQCAtNzM0
LDE0ICs3MzUsMjAgQEAgc3RydWN0IGRldmZyZXEgKmRldmZyZXFfYWRkX2RldmljZShzdHJ1Y3Qg
ZGV2aWNlICpkZXYsCj4+ICAgCj4+ICAgCXJldHVybiBkZXZmcmVxOwo+PiAgIAo+PiAgIGVycl9p
bml0Ogo+PiAgIAltdXRleF91bmxvY2soJmRldmZyZXFfbGlzdF9sb2NrKTsKPj4gLWVycl9kZXZm
cmVxOgo+PiAgIAlkZXZmcmVxX3JlbW92ZV9kZXZpY2UoZGV2ZnJlcSk7Cj4+IC0JZGV2ZnJlcSA9
IE5VTEw7Cj4+ICsJcmV0dXJuIEVSUl9QVFIoZXJyKTsKPj4gKwo+PiAgIGVycl9kZXY6Cj4+ICsJ
LyoKPj4gKwkgKiBDbGVhbnVwIHBhdGggZm9yIGVycm9ycyB0aGF0IGhhcHBlbiBiZWZvcmUgcmVn
aXN0cmF0aW9uLgo+PiArCSAqIE90aGVyd2lzZSB3ZSByZWx5IG9uIGRldmZyZXFfZGV2X3JlbGVh
c2UuCj4+ICsJICovCj4+ICsJa2ZyZWUoZGV2ZnJlcS0+dGltZV9pbl9zdGF0ZSk7Cj4+ICsJa2Zy
ZWUoZGV2ZnJlcS0+dHJhbnNfdGFibGUpOwo+PiAgIAlrZnJlZShkZXZmcmVxKTsKPj4gICBlcnJf
b3V0Ogo+PiAgIAlyZXR1cm4gRVJSX1BUUihlcnIpOwo+PiAgIH0KPj4gICBFWFBPUlRfU1lNQk9M
KGRldmZyZXFfYWRkX2RldmljZSk7Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
