Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 292D7BE6B7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 22:56:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=31udSc9p7NlS30nZCIDh8AJ7x6A58AkMszMxP9NT9/E=; b=ph0K+g8x0s0DMZ
	QY23OWCEnSFZNf73/TQzOFtp+aGr0+swaajLLdFaiP4zdQZjwZL16sjiwGpHX0rX1ezf/85MU+grF
	J1kAwWVEJQIIBo7lWHg/ighC+N8WF+i15bbVZIVxuVFAug9hmmb+d5klTbs+R3W3wLqT/rNsXr5zR
	JQnmXpqqt9zmFfCyBenfhuox+3D1O0qko4jlLmyyAWC2lTieRBNGeW0Zu6fLOzvH17XB5MVYvuVyM
	uImlnK2gFf421UrQfPuN7lUAMTYXUye221wzpZWBe9T793FfJ3cPExLdVJw6xnN3cBlCXJqvc9Khu
	2dwd7o7cyQLXZ3vpkC4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDEKd-0003uK-AY; Wed, 25 Sep 2019 20:56:15 +0000
Received: from mail-eopbgr30080.outbound.protection.outlook.com ([40.107.3.80]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDEKN-0003tu-SB
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 20:56:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B86FQoDB2tYsff70Yyy3V4Fl1vPLE0BTXN0UxT9gCY1CIMCtHQOvTU7xIXh6SaeZ6rp+cTku5bFZDvn9qcMWKXOnZq6zTlYG3Gr4SACWgAeiKI6TDS6fbVVk0RzirHF+P84JRCYoONSJqGgwlHkNWgtVmqhXCrMX8hKZbLN1vlK+qNPxk0SaW+abwjnt/oTonIekz6wka/ld7esOXgdYvh1lEsUVF1LhUNCTSEpZZ+L/1ODpW8c6lyw/O407SRjzb8CNUGZDGcsjw62UFUCAAHcps4DmmF64iWnFFJe3/k0qqR9CuXjzVy0Ibic5cICOHheby33h21OVGHxJd5H2Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S83aUQ/pXN6UkB37rcmXfOj3ut6m6wfz2voR2rDInC0=;
 b=IV8V0g/wBqaOHPu+3A7alkXIb4PlozDCPymlV9Kk8KvoGUumLI69XAVtE3Qqzqp6ymLTrJ6v6oRu+cfKoiD21Vv6I1K6r82LLDnovjS2AuGiUej2Kp160F1N6+BrK5jUzjJSaGIB40MPs33zYFOIprI/LMKFdN7SL/6PO4lq5xwgHrcKMS04o1npSgh8+Jdq22cxPkKm5/E88ovl/Ku75rAuDHaJsbnIHDCs+3FmOoj29kDbd5NUUEJfkBUX3HvEVnO+T8jbNQv7VdXxSJz6JKO+pdnQ8CLAKBaNcz+xDZ/lKXyfLyAPgHYZGK0gf52g5w3IEbcF1jixCRNZmymwIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S83aUQ/pXN6UkB37rcmXfOj3ut6m6wfz2voR2rDInC0=;
 b=G1taD2/x00hfQvs5BP/gF4nSSEVdh/4OT0KgQrfGVCCQCnCRg7sc1gaM/ZFxie03w7nxt3fcYJdmDP8SrOHbwJd/RF/4MZzMYjIevoSpPeWZRxptOgkHiiYrIGZkXFnY4+IC64oatYipV7ivs5B+kCs/k2MrV7f/inXJOTpfqAk=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB6942.eurprd04.prod.outlook.com (52.133.246.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Wed, 25 Sep 2019 20:55:54 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8%2]) with mapi id 15.20.2284.023; Wed, 25 Sep 2019
 20:55:54 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Matthias Kaehlcke <mka@chromium.org>, Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH v8 4/6] PM / devfreq: Introduce get_freq_range helper
Thread-Topic: [PATCH v8 4/6] PM / devfreq: Introduce get_freq_range helper
Thread-Index: AQHVcsBzJohl2Bg18U6dcKhg4vJ8hg==
Date: Wed, 25 Sep 2019 20:55:54 +0000
Message-ID: <VI1PR04MB70235A2C13E47029B3093D33EE870@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1569319738.git.leonard.crestez@nxp.com>
 <CGME20190924101141epcas4p357c10af190e97f1c77098cd66cb313ab@epcas4p3.samsung.com>
 <674fe91065034083fd7c8c1810305cd01551bb80.1569319738.git.leonard.crestez@nxp.com>
 <fe6845b9-4e20-3dad-0178-97b216e858e7@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 86e14a87-66a5-47fb-3903-08d741fac197
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB6942; 
x-ms-traffictypediagnostic: VI1PR04MB6942:|VI1PR04MB6942:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB69429011711AD993F6D3AE15EE870@VI1PR04MB6942.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 01713B2841
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(396003)(376002)(39860400002)(346002)(51444003)(189003)(199004)(6506007)(478600001)(6436002)(86362001)(66066001)(446003)(66446008)(486006)(7696005)(76176011)(476003)(71200400001)(3846002)(6116002)(2906002)(14454004)(66476007)(66556008)(66946007)(7736002)(64756008)(305945005)(7416002)(71190400001)(76116006)(91956017)(74316002)(44832011)(316002)(186003)(110136005)(25786009)(8936002)(26005)(33656002)(81166006)(81156014)(54906003)(8676002)(102836004)(229853002)(256004)(6246003)(53546011)(9686003)(55016002)(99286004)(4326008)(5660300002)(14444005)(52536014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6942;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: REhuffuESCDOMap81rAh6NBmbVNx2HCY5yoad3ktdo8XFYY9lcu4WhYXxFaaLJ56xn6ePpxWbfU6bj8vTxaLpUMEKiV6Cke6h0rk2hon0UslcAvDHj7ixahtq8+p/g5jTn6co3O4r4cS5lw6KmzOxLVe+rC5APx0H7TFvXYSlHJd6XsFi1/t4lkQfXlsKUP6usVWCz2nhovAcwXPlB0Mb15GqU8/+2WiGLTClZj9JOrK/c/iN+bkxdq2ALP3zXSe/++0t+OLq6Zk+uWctf4X3kvc8Rx3j0oa0bN7nkHpE37qP20Dza6JOknPvlTgKNyqUDHm7lJNp3EG5+8hqD2Sgmq7Mb7LOo6/uUVOqJD9GbgNSqLU89Kgx6STr10+5V2HFV+o4eXIaBZQk99TWfVX2Ue7B2Ae63HYpWhmRpFLd4k=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 86e14a87-66a5-47fb-3903-08d741fac197
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2019 20:55:54.0676 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: r4MHbj3Cz9J96ZE4sm/gDOU9mWETy3ME5YwpaD7KsqHgb1hZqsOarIlfLiVjTc/ta0Q6mYDPZXplFyk3qdPrwg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6942
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_135600_156874_09EB740D 
X-CRM114-Status: GOOD (  26.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.80 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.3.80 listed in wl.mailspike.net]
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
 dl-linux-imx <linux-imx@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjUuMDkuMjAxOSAwNDozMiwgQ2hhbndvbyBDaG9pIHdyb3RlOgo+IE9uIDE5LiA5LiAyNC4g
7Jik7ZuEIDc6MTEsIExlb25hcmQgQ3Jlc3RleiB3cm90ZToKPj4gTW92aW5nIGhhbmRsaW5nIG9m
IG1pbi9tYXggZnJlcSB0byBhIHNpbmdsZSBmdW5jdGlvbiBhbmQgY2FsbCBpdCBmcm9tCj4+IHVw
ZGF0ZV9kZXZmcmVxIGFuZCBmb3IgcHJpbnRpbmcgbWluL21heCBmcmVxIHZhbHVlcyBpbiBzeXNm
cy4KPj4KPj4gVGhpcyBjaGFuZ2VzIHRoZSBiZWhhdmlvciBvZiBvdXQtb2YtcmFuZ2UgbWluX2Zy
ZXEvbWF4X2ZyZXE6IGNsYW1waW5nCj4+IGlzIG5vdyBkb25lIGF0IGV2YWx1YXRpb24gdGltZS4g
VGhpcyBtZWFucyB0aGF0IGlmIGFuIG91dC1vZi1yYW5nZQo+PiBjb25zdHJhaW50IGlzIGltcG9z
ZWQgYnkgc3lzZnMgYW5kIGl0IGxhdGVyIGJlY29tZXMgdmFsaWQgdGhlbiBpdCB3aWxsCj4+IGJl
IGVuZm9yY2VkLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBMZW9uYXJkIENyZXN0ZXogPGxlb25hcmQu
Y3Jlc3RlekBueHAuY29tPgo+PiBSZXZpZXdlZC1ieTogTWF0dGhpYXMgS2FlaGxja2UgPG1rYUBj
aHJvbWl1bS5vcmc+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvZGV2ZnJlcS9kZXZmcmVxLmMgfCAxMTIg
KysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0KPj4gICAxIGZpbGUgY2hhbmdl
ZCwgNjQgaW5zZXJ0aW9ucygrKSwgNDggZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2RldmZyZXEvZGV2ZnJlcS5jIGIvZHJpdmVycy9kZXZmcmVxL2RldmZyZXEuYwo+PiBp
bmRleCA0YTg3OGJhYTgwOWUuLmVlZTQwM2U3MGM4NCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9k
ZXZmcmVxL2RldmZyZXEuYwo+PiArKysgYi9kcml2ZXJzL2RldmZyZXEvZGV2ZnJlcS5jCj4+IEBA
IC05NiwxMCArOTYsNTQgQEAgc3RhdGljIHVuc2lnbmVkIGxvbmcgZmluZF9hdmFpbGFibGVfbWF4
X2ZyZXEoc3RydWN0IGRldmZyZXEgKmRldmZyZXEpCj4+ICAgCQlkZXZfcG1fb3BwX3B1dChvcHAp
Owo+PiAgIAo+PiAgIAlyZXR1cm4gbWF4X2ZyZXE7Cj4+ICAgfQo+PiAgIAo+PiArLyoqCj4+ICsg
KiBnZXRfZnJlcV9yYW5nZSgpIC0gR2V0IHRoZSBjdXJyZW50IGZyZXEgcmFuZ2UKPj4gKyAqIEBk
ZXZmcmVxOgl0aGUgZGV2ZnJlcSBpbnN0YW5jZQo+PiArICogQG1pbl9mcmVxOgl0aGUgbWluIGZy
ZXF1ZW5jeQo+PiArICogQG1heF9mcmVxOgl0aGUgbWF4IGZyZXF1ZW5jeQo+PiArICoKPj4gKyAq
IFRoaXMgdGFrZXMgaW50byBjb25zaWRlcmF0aW9uIGFsbCBjb25zdHJhaW50cy4KPj4gKyAqLwo+
PiArc3RhdGljIHZvaWQgZ2V0X2ZyZXFfcmFuZ2Uoc3RydWN0IGRldmZyZXEgKmRldmZyZXEsCj4+
ICsJCQkgICB1bnNpZ25lZCBsb25nICptaW5fZnJlcSwKPj4gKwkJCSAgIHVuc2lnbmVkIGxvbmcg
Km1heF9mcmVxKQo+PiArewo+PiArCXVuc2lnbmVkIGxvbmcgKmZyZXFfdGFibGUgPSBkZXZmcmVx
LT5wcm9maWxlLT5mcmVxX3RhYmxlOwo+PiArCj4+ICsJbG9ja2RlcF9hc3NlcnRfaGVsZCgmZGV2
ZnJlcS0+bG9jayk7Cj4+ICsKPj4gKwkvKgo+PiArCSAqIEluaXQgbWluL21heCBmcmVxdWVuY3kg
ZnJvbSBmcmVxIHRhYmxlLgo+IAo+IEluaXQgLT4gSW5pdGlhbGl6ZQo+IG1pbi9tYXggLT4gbWlu
aW11bS9tYXhpbXVtCj4gCj4+ICsJICogRHJpdmVycyBjYW4gaW5pdGlhbGl6ZSB0aGlzIGluIGVp
dGhlciBhc2NlbmRpbmcgb3IgZGVzY2VuZGluZyBvcmRlcgo+IAo+IERyaXZlcnMgLT4gZGV2ZnJl
cSBkcml2ZXJzCj4gCj4+ICsJICogYW5kIGRldmZyZXEgY29yZSBzdXBwb3J0cyBib3RoLgo+PiAr
CSAqLwo+IAo+IAo+IEluIHJlc3VsdCwgSSBwcmVmZXIgdG8gY2hhbmdlIHRoZSBjb21tZW50cyBh
cyBmb2xsb3dpbmc6Cj4gCS8qCj4gCSAqIEluaXRpYWxpemUgdGhlIG1pbmltdW0vbWF4aW11bSBm
cmVxdWVuY3kgZnJvbSBmcmVxX3RhYmxlLgo+ICAgCSAqIFRoZSBkZXZmcmVxIGRyaXZlcnMgY2Fu
IGluaXRpYWxpemUgZnJlcV90YWJsZSBpbiBlaXRoZXIKPiAJICogYXNjZW5kaW5nIG9yIGRlc2Nl
bmRpbmcgb3JkZXIgYW5kIGRldmZyZXEgY29yZSBzdXBwb3J0cyBib3RoLgo+IAkgKi8KCk9LCgo+
PiArCWlmIChmcmVxX3RhYmxlWzBdIDwgZnJlcV90YWJsZVtkZXZmcmVxLT5wcm9maWxlLT5tYXhf
c3RhdGUgLSAxXSkgewo+PiArCQkqbWluX2ZyZXEgPSBmcmVxX3RhYmxlWzBdOwo+PiArCQkqbWF4
X2ZyZXEgPSBmcmVxX3RhYmxlW2RldmZyZXEtPnByb2ZpbGUtPm1heF9zdGF0ZSAtIDFdOwo+PiAr
CX0gZWxzZSB7Cj4+ICsJCSptaW5fZnJlcSA9IGZyZXFfdGFibGVbZGV2ZnJlcS0+cHJvZmlsZS0+
bWF4X3N0YXRlIC0gMV07Cj4+ICsJCSptYXhfZnJlcSA9IGZyZXFfdGFibGVbMF07Cj4+ICsJfQo+
PiArCj4+ICsJLyogY29uc3RyYWludHMgZnJvbSBzeXNmcyAqLwo+IAo+ICdjb25zdHJhaW50cycg
LT4gQ29uc3RyYWludCBiZWNhdXNlIGZpcnN0IHZlcmIgaGF2ZSB0byBiZSB1c2VkCj4gYXMgdGhl
IHNpZ3VsYXIgdmVyYnMuIEFsc28sIEkgdGhpbmsgdGhhdCBoYXZlIHRvIGVuaGFuY2UgdGhlIGNv
bW1lbnRzCj4gSSBwcmVmZXIgdG8gdXNlIGZvbGxvd2luZyBjb21tZW50czoKPiAKPiAJIC8qIENv
bnN0cmFpbnQgbWluaW11bS9tYXhpbXVtIGZyZXF1ZW5jeSBmcm9tIHVzZXIgaW5wdXQgdmlhIHN5
c2ZzICovCj4gCj4gCj4gCj4+ICsJKm1pbl9mcmVxID0gbWF4KCptaW5fZnJlcSwgZGV2ZnJlcS0+
bWluX2ZyZXEpOwo+PiArCSptYXhfZnJlcSA9IG1pbigqbWF4X2ZyZXEsIGRldmZyZXEtPm1heF9m
cmVxKTsKPj4gKwo+PiArCS8qIGNvbnN0cmFpbnRzIGZyb20gT1BQIGludGVyZmFjZSAqLwo+IAo+
IGRpdHRvLiBJIHByZWZlciB0byB1c2UgZm9sbG93aW5nIGNvbW1lbnRzOgo+IAo+IAkvKiBDb25z
dHJhaW50IG1pbmltdW0vbWF4aW11bSBmcmVxdWVuY3kgZnJvbSBPUFAgaW50ZXJmYWNlICovCj4g
Cj4gCj4+ICsJKm1pbl9mcmVxID0gbWF4KCptaW5fZnJlcSwgZGV2ZnJlcS0+c2NhbGluZ19taW5f
ZnJlcSk7Cj4+ICsJLyogc2NhbGluZ19tYXhfZnJlcSBjYW4gYmUgemVybyBvbiBlcnJvciAqLwo+
IAo+IFBsZWFzZSByZW1vdmUgaXQuCj4gCj4+ICsJaWYgKGRldmZyZXEtPnNjYWxpbmdfbWF4X2Zy
ZXEpCj4gCj4gQXMgSSBrbmV3LCBkZXZmcmVxLT5zY2FsaW5nX21heF9mcmVxIGlzIG5ldmVyIHpl
cm8uCj4gU28sIGl0IGlzIGFsd2F5cyB0cnVlLiBUaGlzIGlmIHN0YXRlbWVudCBpcyBuZWVkZWQu
CgpJdCBjYW4gaGFwcGVuIGlmIGZpbmRfYXZhaWxhYmxlX21heF9mcmVxIGVuY291bnRlcnMgYW4g
ZXJyb3Igd2hlbiBjYWxsZWQgCmZyb20gZGV2ZnJlcV9ub3RpZmllcl9jYWxsLgoKTWF5YmUgdGhh
dCBzaG91bGQgYmUgc2VwYXJhdGVseSBmaXhlZCB0byBzZXQgc2NhbGluZ19tYXhfZnJlcSB0byBh
IApuZXV0cmFsIHZhbHVlIHN1Y2ggYXMgIlVMT05HX01BWCIgaW5zdGVhZD8KCkJUVzogdGhlIGRl
dmZyZXFfbm90aWZpZXJfY2FsbCBmdW5jdGlvbiByZXR1cm5zIC1FSU5WQUwgb24gZXJyb3IgYnV0
IGl0IApzaG91bGQgcmV0dXJuIG9uZSBvZiB0aGUgTk9USUZZX09LL0RPTkUvU1RPUCB2YWx1ZXMg
aW5zdGVhZC4gVGhlIE9QUCAKZnJhbWV3b3JrIGlnbm9yZXMgbm90aWZpZXIgcmVzdWx0cyBidXQg
KC1FSU5WQUwgJiBOT1RJRllfU1RPUCkgZXZhbHVhdGVzIAphcyB0cnVlIHNvIG90aGVyIG5vdGlm
aWVycyB3aWxsIGJlIHNraXBwZWQgdW5pbnRlbnRpb25hbGx5LgoKPj4gKwkJKm1heF9mcmVxID0g
bWluKCptYXhfZnJlcSwgZGV2ZnJlcS0+c2NhbGluZ19tYXhfZnJlcSk7Cj4+ICsKPj4gKwkvKiBt
YXhfZnJlcSB0YWtlcyBwcmVjZWRlbmNlIG92ZXIgbWluX2ZyZXEgKi8KPiAKPiBBcyBJIHNhaWQs
IGFsbW9zdCBwZW9wbGUga25vdyB0aGF0IG1pbl9mcmVxIGhhdmUgYmUgdW5kZXIgdGhhbiBtYXhf
ZnJlcS4KPiBQbGVhc2UgcmVtb3ZlIGl0LiBBbmQgdW50aWwgZmluaXNoaW5nIHRoZSBkaXNjdXNz
aW9uIG9uIG1haWxpbmcgbGlzdCwKPiBwbGVhc2UgZG9uJ3Qgc2VuZCB0aGUgbmV4dCB2ZXJzaW9u
LiBJZiB5b3UganVzdCByZXBsaWVkIGZyb20gbXkgY29tbWVudAo+IGFuZCB0aGVuIHdhaXQgbXkg
bmV4dCBjb21tZW50LCB3ZSBjYW4gc2F2ZSB0aGUgdGltZSB3aXRob3V0IHJlcGx5aW5nCj4gdGhl
IHJlcGV0aXRpdmUgYW5kIHNhbWUgY29tbWVudCBmb3Igc2FtZSBwb2ludC4KClRoaXMgc2VyaWVz
IG1ha2VzIGl0IHBvc3NpYmxlIHRvIHNldCBhIG1pbl9mcmVxIGhpZ2hlciB0aGFuIG1heF9mcmVx
IAooZm9yIGV4YW1wbGUgdmlhIFBNIFFvUyBmcm9tIHZhcmlvdXMgZGV2aWNlcykuCgpJdCBpcyBu
b3Qgb2J2aW91cyB0aGF0IG1pbl9mcmVxIHRha2VzIHByZWNlZGVuY2Ugb3ZlciBtYXhfZnJlcSBi
dXQgdGhlIApjb2RlIGlzIHNlbGYtZXZpZGVudCBzbyBJIHdpbGwgcmVtb3ZlIHRoZSBjb21tZW50
LgoKPj4gKwlpZiAoKm1pbl9mcmVxID4gKm1heF9mcmVxKQo+PiArCQkqbWluX2ZyZXEgPSAqbWF4
X2ZyZXE7Cj4+ICt9Cj4+ICsKPj4gICAvKioKPj4gICAgKiBkZXZmcmVxX2dldF9mcmVxX2xldmVs
KCkgLSBMb29rdXAgZnJlcV90YWJsZSBmb3IgdGhlIGZyZXF1ZW5jeQo+PiAgICAqIEBkZXZmcmVx
Ogl0aGUgZGV2ZnJlcSBpbnN0YW5jZQo+PiAgICAqIEBmcmVxOgl0aGUgdGFyZ2V0IGZyZXF1ZW5j
eQo+PiAgICAqLwo+PiBAQCAtMzQ5LDIwICszOTMsMTEgQEAgaW50IHVwZGF0ZV9kZXZmcmVxKHN0
cnVjdCBkZXZmcmVxICpkZXZmcmVxKQo+PiAgIAo+PiAgIAkvKiBSZWV2YWx1YXRlIHRoZSBwcm9w
ZXIgZnJlcXVlbmN5ICovCj4+ICAgCWVyciA9IGRldmZyZXEtPmdvdmVybm9yLT5nZXRfdGFyZ2V0
X2ZyZXEoZGV2ZnJlcSwgJmZyZXEpOwo+PiAgIAlpZiAoZXJyKQo+PiAgIAkJcmV0dXJuIGVycjsK
Pj4gLQo+PiAtCS8qCj4+IC0JICogQWRqdXN0IHRoZSBmcmVxdWVuY3kgd2l0aCB1c2VyIGZyZXEs
IFFvUyBhbmQgYXZhaWxhYmxlIGZyZXEuCj4+IC0JICoKPj4gLQkgKiBMaXN0IGZyb20gdGhlIGhp
Z2hlc3QgcHJpb3JpdHkKPj4gLQkgKiBtYXhfZnJlcQo+PiAtCSAqIG1pbl9mcmVxCj4+IC0JICov
Cj4+IC0JbWF4X2ZyZXEgPSBtaW4oZGV2ZnJlcS0+c2NhbGluZ19tYXhfZnJlcSwgZGV2ZnJlcS0+
bWF4X2ZyZXEpOwo+PiAtCW1pbl9mcmVxID0gbWF4KGRldmZyZXEtPnNjYWxpbmdfbWluX2ZyZXEs
IGRldmZyZXEtPm1pbl9mcmVxKTsKPj4gKwlnZXRfZnJlcV9yYW5nZShkZXZmcmVxLCAmbWluX2Zy
ZXEsICZtYXhfZnJlcSk7Cj4+ICAgCj4+ICAgCWlmIChmcmVxIDwgbWluX2ZyZXEpIHsKPj4gICAJ
CWZyZXEgPSBtaW5fZnJlcTsKPj4gICAJCWZsYWdzICY9IH5ERVZGUkVRX0ZMQUdfTEVBU1RfVVBQ
RVJfQk9VTkQ7IC8qIFVzZSBHTEIgKi8KPj4gICAJfQo+PiBAQCAtMTI5OCw0MCArMTMzMywyOCBA
QCBzdGF0aWMgc3NpemVfdCBtaW5fZnJlcV9zdG9yZShzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVj
dCBkZXZpY2VfYXR0cmlidXRlICphdHRyLAo+PiAgIAlyZXQgPSBzc2NhbmYoYnVmLCAiJWx1Iiwg
JnZhbHVlKTsKPj4gICAJaWYgKHJldCAhPSAxKQo+PiAgIAkJcmV0dXJuIC1FSU5WQUw7Cj4+ICAg
Cj4+ICAgCW11dGV4X2xvY2soJmRmLT5sb2NrKTsKPj4gLQo+PiAtCWlmICh2YWx1ZSkgewo+PiAt
CQlpZiAodmFsdWUgPiBkZi0+bWF4X2ZyZXEpIHsKPj4gLQkJCXJldCA9IC1FSU5WQUw7Cj4+IC0J
CQlnb3RvIHVubG9jazsKPj4gLQkJfQo+PiAtCX0gZWxzZSB7Cj4+IC0JCXVuc2lnbmVkIGxvbmcg
KmZyZXFfdGFibGUgPSBkZi0+cHJvZmlsZS0+ZnJlcV90YWJsZTsKPj4gLQo+PiAtCQkvKiBHZXQg
bWluaW11bSBmcmVxdWVuY3kgYWNjb3JkaW5nIHRvIHNvcnRpbmcgb3JkZXIgKi8KPj4gLQkJaWYg
KGZyZXFfdGFibGVbMF0gPCBmcmVxX3RhYmxlW2RmLT5wcm9maWxlLT5tYXhfc3RhdGUgLSAxXSkK
Pj4gLQkJCXZhbHVlID0gZnJlcV90YWJsZVswXTsKPj4gLQkJZWxzZQo+PiAtCQkJdmFsdWUgPSBm
cmVxX3RhYmxlW2RmLT5wcm9maWxlLT5tYXhfc3RhdGUgLSAxXTsKPj4gLQl9Cj4+IC0KPj4gICAJ
ZGYtPm1pbl9mcmVxID0gdmFsdWU7Cj4+ICAgCXVwZGF0ZV9kZXZmcmVxKGRmKTsKPj4gLQlyZXQg
PSBjb3VudDsKPj4gLXVubG9jazoKPj4gICAJbXV0ZXhfdW5sb2NrKCZkZi0+bG9jayk7Cj4+IC0J
cmV0dXJuIHJldDsKPj4gKwo+PiArCXJldHVybiBjb3VudDsKPj4gICB9Cj4+ICAgCj4+ICAgc3Rh
dGljIHNzaXplX3QgbWluX2ZyZXFfc2hvdyhzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkZXZp
Y2VfYXR0cmlidXRlICphdHRyLAo+PiAgIAkJCSAgICAgY2hhciAqYnVmKQo+PiAgIHsKPj4gICAJ
c3RydWN0IGRldmZyZXEgKmRmID0gdG9fZGV2ZnJlcShkZXYpOwo+PiArCXVuc2lnbmVkIGxvbmcg
bWluX2ZyZXEsIG1heF9mcmVxOwo+PiArCj4+ICsJbXV0ZXhfbG9jaygmZGYtPmxvY2spOwo+PiAr
CWdldF9mcmVxX3JhbmdlKGRmLCAmbWluX2ZyZXEsICZtYXhfZnJlcSk7Cj4+ICsJbXV0ZXhfdW5s
b2NrKCZkZi0+bG9jayk7Cj4+ICAgCj4+IC0JcmV0dXJuIHNwcmludGYoYnVmLCAiJWx1XG4iLCBt
YXgoZGYtPnNjYWxpbmdfbWluX2ZyZXEsIGRmLT5taW5fZnJlcSkpOwo+PiArCXJldHVybiBzcHJp
bnRmKGJ1ZiwgIiVsdVxuIiwgbWluX2ZyZXEpOwo+PiAgIH0KPj4gICAKPj4gICBzdGF0aWMgc3Np
emVfdCBtYXhfZnJlcV9zdG9yZShzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkZXZpY2VfYXR0
cmlidXRlICphdHRyLAo+PiAgIAkJCSAgICAgIGNvbnN0IGNoYXIgKmJ1Ziwgc2l6ZV90IGNvdW50
KQo+PiAgIHsKPj4gQEAgLTEzNDMsNDAgKzEzNjYsMzMgQEAgc3RhdGljIHNzaXplX3QgbWF4X2Zy
ZXFfc3RvcmUoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlX2F0dHJpYnV0ZSAqYXR0
ciwKPj4gICAJaWYgKHJldCAhPSAxKQo+PiAgIAkJcmV0dXJuIC1FSU5WQUw7Cj4+ICAgCj4+ICAg
CW11dGV4X2xvY2soJmRmLT5sb2NrKTsKPj4gICAKPj4gLQlpZiAodmFsdWUpIHsKPj4gLQkJaWYg
KHZhbHVlIDwgZGYtPm1pbl9mcmVxKSB7Cj4+IC0JCQlyZXQgPSAtRUlOVkFMOwo+PiAtCQkJZ290
byB1bmxvY2s7Cj4+IC0JCX0KPj4gLQl9IGVsc2Ugewo+PiAtCQl1bnNpZ25lZCBsb25nICpmcmVx
X3RhYmxlID0gZGYtPnByb2ZpbGUtPmZyZXFfdGFibGU7Cj4+IC0KPj4gLQkJLyogR2V0IG1heGlt
dW0gZnJlcXVlbmN5IGFjY29yZGluZyB0byBzb3J0aW5nIG9yZGVyICovCj4+IC0JCWlmIChmcmVx
X3RhYmxlWzBdIDwgZnJlcV90YWJsZVtkZi0+cHJvZmlsZS0+bWF4X3N0YXRlIC0gMV0pCj4+IC0J
CQl2YWx1ZSA9IGZyZXFfdGFibGVbZGYtPnByb2ZpbGUtPm1heF9zdGF0ZSAtIDFdOwo+PiAtCQll
bHNlCj4+IC0JCQl2YWx1ZSA9IGZyZXFfdGFibGVbMF07Cj4+IC0JfQo+PiArCS8qIEludGVycHJl
dCB6ZXJvIGFzICJkb24ndCBjYXJlIiAqLwo+IAo+IFBsZWFzZSByZW1vdmUgaXQuIEFsc28sIHRo
ZSBkZXRhaWxlZCBjb21tZW50IGZvciB1c2VyIGhhdmUgdG8gYWRkCj4gdGhlIGRvY3VtZW50YXRp
b24gZmlsZS4KCk9LCgo+IAo+PiArCWlmICghdmFsdWUpCj4+ICsJCXZhbHVlID0gVUxPTkdfTUFY
Owo+PiAgIAo+PiAgIAlkZi0+bWF4X2ZyZXEgPSB2YWx1ZTsKPj4gICAJdXBkYXRlX2RldmZyZXEo
ZGYpOwo+PiAtCXJldCA9IGNvdW50Owo+PiAtdW5sb2NrOgo+PiAgIAltdXRleF91bmxvY2soJmRm
LT5sb2NrKTsKPj4gLQlyZXR1cm4gcmV0Owo+PiArCj4+ICsJcmV0dXJuIGNvdW50Owo+PiAgIH0K
Pj4gICBzdGF0aWMgREVWSUNFX0FUVFJfUlcobWluX2ZyZXEpOwo+PiAgIAo+PiAgIHN0YXRpYyBz
c2l6ZV90IG1heF9mcmVxX3Nob3coc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlX2F0
dHJpYnV0ZSAqYXR0ciwKPj4gICAJCQkgICAgIGNoYXIgKmJ1ZikKPj4gICB7Cj4+ICAgCXN0cnVj
dCBkZXZmcmVxICpkZiA9IHRvX2RldmZyZXEoZGV2KTsKPj4gKwl1bnNpZ25lZCBsb25nIG1pbl9m
cmVxLCBtYXhfZnJlcTsKPj4gKwo+PiArCW11dGV4X2xvY2soJmRmLT5sb2NrKTsKPj4gKwlnZXRf
ZnJlcV9yYW5nZShkZiwgJm1pbl9mcmVxLCAmbWF4X2ZyZXEpOwo+PiArCW11dGV4X3VubG9jaygm
ZGYtPmxvY2spOwo+PiAgIAo+PiAtCXJldHVybiBzcHJpbnRmKGJ1ZiwgIiVsdVxuIiwgbWluKGRm
LT5zY2FsaW5nX21heF9mcmVxLCBkZi0+bWF4X2ZyZXEpKTsKPj4gKwlyZXR1cm4gc3ByaW50Zihi
dWYsICIlbHVcbiIsIG1heF9mcmVxKTsKPj4gICB9Cj4+ICAgc3RhdGljIERFVklDRV9BVFRSX1JX
KG1heF9mcmVxKTsKPj4gICAKPj4gICBzdGF0aWMgc3NpemVfdCBhdmFpbGFibGVfZnJlcXVlbmNp
ZXNfc2hvdyhzdHJ1Y3QgZGV2aWNlICpkLAo+PiAgIAkJCQkJICBzdHJ1Y3QgZGV2aWNlX2F0dHJp
YnV0ZSAqYXR0ciwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
