Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB76EBE6F8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 23:18:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=YcJKCSKfJ8yf56HGX01N/enbqC4CqMnTGcsgtFgyUlM=; b=AnVt3zjQoW8Z9b
	wvfiVnPzEYIIeK3YQCy5aL1ejxm8LLi7fQKhwE1jP4NrQiVG5MsbEipX6mlzG+pcWECU4THxNhW/M
	uLiN9jk2Y8JTlNyFN3aiyPboYQK0v8vneeSGj00vetCcKQwzVXVBvS+ObTW01ycL/nXq+VtPJv4F6
	NFyY+Fe028idLW2D+szbENFSXzMxl6Gbme3UNBqEQHTfqgxXKXbzNFtt+vW442DmTr4DPkOwoNZVR
	qiT63CRilGUauh3qb4dwD20wkIvNKUdBc6TYwc97YOvO1ykUKkSy7o+7x3fS1vOqOln1Ir6C860Z2
	xQkip7tJHJaVeS3x87VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDEgC-0001u5-TP; Wed, 25 Sep 2019 21:18:33 +0000
Received: from mail-eopbgr130082.outbound.protection.outlook.com
 ([40.107.13.82] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDEfs-0001t8-Nd
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 21:18:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R8wns/rfWsPi9J/cbfsF96xjNpBr/KkQdU2nJkRxfNbPQF8eAfVx5yNZpCH/04e48MpmKWlka8PYk2Qj1U2/x17Zwb7g1SZWDhPM8QHPJ+i2uCc51HNjnngtXTbbxzPx8gbE5fzlgSQzUTqBey2vJKmkhVWRHE+VB9Awb9TUVUakJIwOdFtyI4s9rM1zHhKqStebSOOLkJ4KoRkHd5OI8RwUW0v6eiVIvTl0UiDf14rHWkzAIN1ibWGGAE9/N0Apuoys6nuMMdVpjpGNaGTCbN9HS8Tr/MW22MTnhMSGlypRSWZnnatA1CyZ+HYyrMyPQ0Mv3TohjCtw7D/17pWhqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QcihNOMO5tLwYKFoRxSGhkKKwSa+NTb92UOTGv/14eE=;
 b=WY3A3ogewNeC++xe9jReeGgJh9dQtXIV3yfmmZoIJkpcLLF1eRSUUIvuvaQlV5gkzsji0AHI887GQEzcOo9+PZIsNMCjVMlnlgHc9I6/3r/Zn6/Z0heATXqoksFkKpT9G5XsahvPRA9Vyt46rDkxjpl52+Dkos9+wWcVIQBgIqlQCbJ1kCBa5COB7CsIwT0GAXCbLGhUZ6tvDTTPgxmq4MdT5ueOlxdQOiQ5EEX9mzUsHicD8+0bbSaL4vQstZ1iIAFElAApXmWpW/p5/sQFFsE9S6Gms28deBB/4gnqmOU6zzuOwCyXhI3eveMlvWod2ufd7u5U9Fytk6rbOyyOFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QcihNOMO5tLwYKFoRxSGhkKKwSa+NTb92UOTGv/14eE=;
 b=b70QDZcwHhCL1xHMu9VaWSLuzKincgO8xbFHP2oMo2NpM7UBERkj7WB1GkVW4u8CPg1LImUvXcgR/lPsOJbsUaFKIbIrD65WeeCYnbW4VXR4EP7t9fQrSxzSYRztSm4Qr2wzT4sB0nlf2cK6vtlmhCO6XkWw1c/hrbhI1E1sq/g=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB6302.eurprd04.prod.outlook.com (20.179.28.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Wed, 25 Sep 2019 21:18:04 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8%2]) with mapi id 15.20.2284.023; Wed, 25 Sep 2019
 21:18:04 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, Matthias Kaehlcke <mka@chromium.org>
Subject: Re: [PATCH v8 5/6] PM / devfreq: Add PM QoS support
Thread-Topic: [PATCH v8 5/6] PM / devfreq: Add PM QoS support
Thread-Index: AQHVcsB0h3rfWi61w06V80OWKl85wg==
Date: Wed, 25 Sep 2019 21:18:04 +0000
Message-ID: <VI1PR04MB7023573BA3D5C5D521DB689CEE870@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1569319738.git.leonard.crestez@nxp.com>
 <CGME20190924101145epcas4p37f7d25b8743c25520b33fa392cd80d45@epcas4p3.samsung.com>
 <58fdd2c226a4e76a3d9427baab7dd5c23af842ab.1569319738.git.leonard.crestez@nxp.com>
 <40885624-8f11-4eea-d5bf-d6bb50fa44dd@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0b13127e-5345-4513-ec06-08d741fddaa6
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB6302; 
x-ms-traffictypediagnostic: VI1PR04MB6302:|VI1PR04MB6302:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB6302472386DABC2E908293BBEE870@VI1PR04MB6302.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01713B2841
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(366004)(396003)(376002)(39860400002)(189003)(199004)(316002)(76116006)(74316002)(81166006)(6506007)(476003)(66446008)(71200400001)(26005)(66066001)(64756008)(71190400001)(110136005)(66946007)(7416002)(8936002)(54906003)(44832011)(5660300002)(53546011)(81156014)(6246003)(186003)(14444005)(8676002)(256004)(91956017)(66556008)(229853002)(66476007)(4326008)(9686003)(14454004)(76176011)(3846002)(55016002)(486006)(6116002)(102836004)(86362001)(478600001)(7696005)(33656002)(2906002)(446003)(52536014)(6436002)(25786009)(99286004)(7736002)(305945005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6302;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: daQR70/cMMWVazvhugMgoq+e6XI0uIp6Xx/VTK0EW/3HxSWPCRF9sF4zav3iBmO7NDWiP6xfCpmvm8Mqo22HO2JeKjBWqJ7sAUuZFy0HmCdAHRdgIIyMnaGB3juhKJLlvVtshk65yc92k/FtyWiyCDF4PxOfwKLQOEqb+2p6jyx6tAe0npgpfOFKUkjNI6v6D7iL6kR7RbzRpM7suagApYrwLfYJTuGZfArbgzu1+UheBU1MtzAdEjfqgB7cOPEX7ot9Ph00GsP6y1G3p7uQ3JdSqQMVEDQ6jnQPPj34sP4iNQJQAbl60+Z4n5aDIXvYw+kgEaOCiCNKMfEUFQWBpyVqPF2qAJGiu2kG6W0jROJWlnXPP6UVRjUNRWuRIbkhADxYmwmsUZaDDGQkuMC/jtGF7KNnobw8zr2Ms9S3Ktg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b13127e-5345-4513-ec06-08d741fddaa6
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2019 21:18:04.5997 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g49LE7/dzlHzWYenLzWm1arPkirqUmDICrVzk/XJPivYyNWW77zONXYeQjuO1tN84zcV9LCF15jifmcczoL7Ug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6302
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_141813_099313_767F94A7 
X-CRM114-Status: GOOD (  24.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.82 listed in list.dnswl.org]
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

T24gMjUuMDkuMjAxOSAwNToxMSwgQ2hhbndvbyBDaG9pIHdyb3RlOgo+IE9uIDE5LiA5LiAyNC4g
7Jik7ZuEIDc6MTEsIExlb25hcmQgQ3Jlc3RleiB3cm90ZToKPj4gUmVnaXN0ZXIgbm90aWZpZXJz
IHdpdGggdGhlIFBNIFFvUyBmcmFtZXdvcmsgaW4gb3JkZXIgdG8gcmVzcG9uZCB0bwo+PiByZXF1
ZXN0cyBmb3IgREVWX1BNX1FPU19NSU5fRlJFUVVFTkNZIGFuZCBERVZfUE1fUU9TX01BWF9GUkVR
VUVOQ1kuCj4+Cj4+IE5vIG5vdGlmaWVycyBhcmUgYWRkZWQgYnkgdGhpcyBwYXRjaCBidXQgUE0g
UW9TIGNvbnN0cmFpbnRzIGNhbiBiZQo+PiBpbXBvc2VkIGV4dGVybmFsbHkgKGZvciBleGFtcGxl
IGZyb20gb3RoZXIgZGV2aWNlcykuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IExlb25hcmQgQ3Jlc3Rl
eiA8bGVvbmFyZC5jcmVzdGV6QG54cC5jb20+Cj4+IFJldmlld2VkLWJ5OiBNYXR0aGlhcyBLYWVo
bGNrZSA8bWthQGNocm9taXVtLm9yZz4KPj4gLS0tCj4+ICAgZHJpdmVycy9kZXZmcmVxL2RldmZy
ZXEuYyB8IDc1ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+PiAgIGlu
Y2x1ZGUvbGludXgvZGV2ZnJlcS5oICAgfCAgNSArKysKPj4gICAyIGZpbGVzIGNoYW5nZWQsIDgw
IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZGV2ZnJlcS9kZXZmcmVx
LmMgYi9kcml2ZXJzL2RldmZyZXEvZGV2ZnJlcS5jCj4+IGluZGV4IGVlZTQwM2U3MGM4NC4uNzg0
ZjNlNDA1MzZhIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2RldmZyZXEvZGV2ZnJlcS5jCj4+ICsr
KyBiL2RyaXZlcnMvZGV2ZnJlcS9kZXZmcmVxLmMKPj4gQEAgLTIyLDE1ICsyMiwxOCBAQAo+PiAg
ICNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KPj4gICAjaW5jbHVkZSA8bGludXgv
bGlzdC5oPgo+PiAgICNpbmNsdWRlIDxsaW51eC9wcmludGsuaD4KPj4gICAjaW5jbHVkZSA8bGlu
dXgvaHJ0aW1lci5oPgo+PiAgICNpbmNsdWRlIDxsaW51eC9vZi5oPgo+PiArI2luY2x1ZGUgPGxp
bnV4L3BtX3Fvcy5oPgo+PiAgICNpbmNsdWRlICJnb3Zlcm5vci5oIgo+PiAgIAo+PiAgICNkZWZp
bmUgQ1JFQVRFX1RSQUNFX1BPSU5UUwo+PiAgICNpbmNsdWRlIDx0cmFjZS9ldmVudHMvZGV2ZnJl
cS5oPgo+PiAgIAo+PiArI2RlZmluZSBIWl9QRVJfS0haCTEwMDAKPj4gKwo+PiAgIHN0YXRpYyBz
dHJ1Y3QgY2xhc3MgKmRldmZyZXFfY2xhc3M7Cj4+ICAgCj4+ICAgLyoKPj4gICAgKiBkZXZmcmVx
IGNvcmUgcHJvdmlkZXMgZGVsYXllZCB3b3JrIGJhc2VkIGxvYWQgbW9uaXRvcmluZyBoZWxwZXIK
Pj4gICAgKiBmdW5jdGlvbnMuIEdvdmVybm9ycyBjYW4gdXNlIHRoZXNlIG9yIGNhbiBpbXBsZW1l
bnQgdGhlaXIgb3duCj4+IEBAIC0xMDksMTAgKzExMiwxMSBAQCBzdGF0aWMgdW5zaWduZWQgbG9u
ZyBmaW5kX2F2YWlsYWJsZV9tYXhfZnJlcShzdHJ1Y3QgZGV2ZnJlcSAqZGV2ZnJlcSkKPj4gICBz
dGF0aWMgdm9pZCBnZXRfZnJlcV9yYW5nZShzdHJ1Y3QgZGV2ZnJlcSAqZGV2ZnJlcSwKPj4gICAJ
CQkgICB1bnNpZ25lZCBsb25nICptaW5fZnJlcSwKPj4gICAJCQkgICB1bnNpZ25lZCBsb25nICpt
YXhfZnJlcSkKPj4gICB7Cj4+ICAgCXVuc2lnbmVkIGxvbmcgKmZyZXFfdGFibGUgPSBkZXZmcmVx
LT5wcm9maWxlLT5mcmVxX3RhYmxlOwo+PiArCXVuc2lnbmVkIGxvbmcgcW9zX21pbl9mcmVxLCBx
b3NfbWF4X2ZyZXE7Cj4+ICAgCj4+ICAgCWxvY2tkZXBfYXNzZXJ0X2hlbGQoJmRldmZyZXEtPmxv
Y2spOwo+PiAgIAo+PiAgIAkvKgo+PiAgIAkgKiBJbml0IG1pbi9tYXggZnJlcXVlbmN5IGZyb20g
ZnJlcSB0YWJsZS4KPj4gQEAgLTEyNSwxMCArMTI5LDE4IEBAIHN0YXRpYyB2b2lkIGdldF9mcmVx
X3JhbmdlKHN0cnVjdCBkZXZmcmVxICpkZXZmcmVxLAo+PiAgIAl9IGVsc2Ugewo+PiAgIAkJKm1p
bl9mcmVxID0gZnJlcV90YWJsZVtkZXZmcmVxLT5wcm9maWxlLT5tYXhfc3RhdGUgLSAxXTsKPj4g
ICAJCSptYXhfZnJlcSA9IGZyZXFfdGFibGVbMF07Cj4+ICAgCX0KPj4gICAKPj4gKwkvKiBjb25z
dHJhaW50cyBmcm9tIFBNIFFvUyAqLwo+IAo+IEFzIEkgY29tbWVudGVkIG9uIHBhdGNoNCwKPiAn
Y29uc3RyYWludHMnIC0+ICdDb25zdHJhaW50JyBiZWNhdXNlIGZpcnN0IHZlcmIgaGF2ZSB0byBi
ZSB1c2VkCj4gYXMgdGhlIHNpZ3VsYXIgdmVyYnMuCgpBbHJlYWR5IGRpc2N1c3NlZCBmb3IgYW5v
dGhlciBwYXRjaDsgSSB3aWxsIG1vZGlmeSB0byAiQXBwbHkgY29uc3RyYWludHMgCmZyb20gUE0g
UW9TIiBpbnN0ZWFkLgoKPiBJIHByZWZlciB0byB1c2UgZm9sbG93aW5nIGNvbW1lbnRzOgo+IAo+
IAkvKiBDb25zdHJhaW50IG1pbmltdW0vbWF4aW11bSBmcmVxdWVuY3kgZnJvbSBQTSBRb1MgY29u
c3RyYWludHMgKi8KPiAKPj4gKwlxb3NfbWluX2ZyZXEgPSBkZXZfcG1fcW9zX3JlYWRfdmFsdWUo
ZGV2ZnJlcS0+ZGV2LnBhcmVudCwKPj4gKwkJCQkJICAgICBERVZfUE1fUU9TX01JTl9GUkVRVUVO
Q1kpOwo+PiArCXFvc19tYXhfZnJlcSA9IGRldl9wbV9xb3NfcmVhZF92YWx1ZShkZXZmcmVxLT5k
ZXYucGFyZW50LAo+PiArCQkJCQkgICAgIERFVl9QTV9RT1NfTUlOX0ZSRVFVRU5DWSk7Cj4+ICsJ
Km1pbl9mcmVxID0gbWF4KCptaW5fZnJlcSwgSFpfUEVSX0tIWiAqIHFvc19taW5fZnJlcSk7Cj4+
ICsJKm1heF9mcmVxID0gbWluKCptYXhfZnJlcSwgSFpfUEVSX0tIWiAqIHFvc19tYXhfZnJlcSk7
Cj4+ICsKPj4gICAJLyogY29uc3RyYWludHMgZnJvbSBzeXNmcyAqLwo+PiAgIAkqbWluX2ZyZXEg
PSBtYXgoKm1pbl9mcmVxLCBkZXZmcmVxLT5taW5fZnJlcSk7Cj4+ICAgCSptYXhfZnJlcSA9IG1p
bigqbWF4X2ZyZXEsIGRldmZyZXEtPm1heF9mcmVxKTsKPj4gICAKPj4gICAJLyogY29uc3RyYWlu
dHMgZnJvbSBPUFAgaW50ZXJmYWNlICovCj4+IEBAIC02MDYsMTAgKzYxOCw0OSBAQCBzdGF0aWMg
aW50IGRldmZyZXFfbm90aWZpZXJfY2FsbChzdHJ1Y3Qgbm90aWZpZXJfYmxvY2sgKm5iLCB1bnNp
Z25lZCBsb25nIHR5cGUsCj4+ICAgCW11dGV4X3VubG9jaygmZGV2ZnJlcS0+bG9jayk7Cj4+ICAg
Cj4+ICAgCXJldHVybiByZXQ7Cj4+ICAgfQo+PiAgIAo+PiArLyoqCj4+ICsgKiBxb3Nfbm90aWZp
ZXJfY2FsbCgpIC0gQ29tbW9uIGhhbmRsZXIgZm9yIFFvUyBjb25zdHJhaW50cy4KPj4gKyAqIEBk
ZXZmcmVxOiAgICB0aGUgZGV2ZnJlcSBpbnN0YW5jZS4KPj4gKyAqLwo+PiArc3RhdGljIGludCBx
b3Nfbm90aWZpZXJfY2FsbChzdHJ1Y3QgZGV2ZnJlcSAqZGV2ZnJlcSkKPj4gK3sKPj4gKwlpbnQg
ZXJyOwo+PiArCj4+ICsJbXV0ZXhfbG9jaygmZGV2ZnJlcS0+bG9jayk7Cj4+ICsJZXJyID0gdXBk
YXRlX2RldmZyZXEoZGV2ZnJlcSk7Cj4+ICsJbXV0ZXhfdW5sb2NrKCZkZXZmcmVxLT5sb2NrKTsK
Pj4gKwlpZiAoZXJyKQo+PiArCQlkZXZfZXJyKGRldmZyZXEtPmRldi5wYXJlbnQsCj4+ICsJCQkJ
ImZhaWxlZCB0byB1cGRhdGUgZnJlcXVlbmN5IGZvciBQTSBRb1MgY29uc3RyYWludHMgKCVkKVxu
IiwKPiAKPiBJcyBpdCBub3Qgb3ZlciA4MCBjaGFyPwoKWWVzIGJ1dCBjb2Rpbmcgc3R5bGUgZXhw
bGljaXRseSBmb3JiaWRzIGJyZWFraW5nIHN0cmluZ3MuCgo+PiArCQkJCWVycik7Cj4+ICsKPj4g
KwlyZXR1cm4gTk9USUZZX09LOwo+PiArfQo+PiArCj4+ICsvKioKPj4gKyAqIHFvc19taW5fbm90
aWZpZXJfY2FsbCgpIC0gQ2FsbGJhY2sgZm9yIFFvUyBtaW5fZnJlcSBjaGFuZ2VzLgo+PiArICog
QG5iOgkJU2hvdWxkIGJlIGRldmZyZXEtPm5iX21pbgo+PiArICovCj4+ICtzdGF0aWMgaW50IHFv
c19taW5fbm90aWZpZXJfY2FsbChzdHJ1Y3Qgbm90aWZpZXJfYmxvY2sgKm5iLAo+PiArCQkJCQkg
dW5zaWduZWQgbG9uZyB2YWwsIHZvaWQgKnB0cikKPj4gK3sKPj4gKwlyZXR1cm4gcW9zX25vdGlm
aWVyX2NhbGwoY29udGFpbmVyX29mKG5iLCBzdHJ1Y3QgZGV2ZnJlcSwgbmJfbWluKSk7Cj4+ICt9
Cj4+ICsKPj4gKy8qKgo+PiArICogcW9zX21heF9ub3RpZmllcl9jYWxsKCkgLSBDYWxsYmFjayBm
b3IgUW9TIG1heF9mcmVxIGNoYW5nZXMuCj4+ICsgKiBAbmI6CQlTaG91bGQgYmUgZGV2ZnJlcS0+
bmJfbWF4Cj4+ICsgKi8KPj4gK3N0YXRpYyBpbnQgcW9zX21heF9ub3RpZmllcl9jYWxsKHN0cnVj
dCBub3RpZmllcl9ibG9jayAqbmIsCj4+ICsJCQkJCSB1bnNpZ25lZCBsb25nIHZhbCwgdm9pZCAq
cHRyKQo+PiArewo+PiArCXJldHVybiBxb3Nfbm90aWZpZXJfY2FsbChjb250YWluZXJfb2YobmIs
IHN0cnVjdCBkZXZmcmVxLCBuYl9tYXgpKTsKPj4gK30KPj4gKwo+PiAgIC8qKgo+PiAgICAqIGRl
dmZyZXFfZGV2X3JlbGVhc2UoKSAtIENhbGxiYWNrIGZvciBzdHJ1Y3QgZGV2aWNlIHRvIHJlbGVh
c2UgdGhlIGRldmljZS4KPj4gICAgKiBAZGV2Ogl0aGUgZGV2ZnJlcSBkZXZpY2UKPj4gICAgKgo+
PiAgICAqIFJlbW92ZSBkZXZmcmVxIGZyb20gdGhlIGxpc3QgYW5kIHJlbGVhc2UgaXRzIHJlc291
cmNlcy4KPj4gQEAgLTYyMCwxMCArNjcxLDE1IEBAIHN0YXRpYyB2b2lkIGRldmZyZXFfZGV2X3Jl
bGVhc2Uoc3RydWN0IGRldmljZSAqZGV2KQo+PiAgIAo+PiAgIAltdXRleF9sb2NrKCZkZXZmcmVx
X2xpc3RfbG9jayk7Cj4+ICAgCWxpc3RfZGVsKCZkZXZmcmVxLT5ub2RlKTsKPj4gICAJbXV0ZXhf
dW5sb2NrKCZkZXZmcmVxX2xpc3RfbG9jayk7Cj4+ICAgCj4+ICsJZGV2X3BtX3Fvc19yZW1vdmVf
bm90aWZpZXIoZGV2ZnJlcS0+ZGV2LnBhcmVudCwgJmRldmZyZXEtPm5iX21heCwKPj4gKwkJCURF
Vl9QTV9RT1NfTUFYX0ZSRVFVRU5DWSk7Cj4+ICsJZGV2X3BtX3Fvc19yZW1vdmVfbm90aWZpZXIo
ZGV2ZnJlcS0+ZGV2LnBhcmVudCwgJmRldmZyZXEtPm5iX21pbiwKPj4gKwkJCURFVl9QTV9RT1Nf
TUlOX0ZSRVFVRU5DWSk7Cj4+ICsKPiAKPiBKdXN0IHByaW50IGVycm9yIHdpdGggZGV2X2Vycigp
IHdpdGhvdXQgc3RvcHBpbmcgdGhlIHJlbGVhc2Ugc3RlcC4KPiAKPiBJIHByZWZlciB0byBoYW5k
bGUgdGhlIHJldHVybiB2YWx1ZSBpZiBrZXJuZWwgQVBJIHByb3ZpZGVzCj4gdGhlIGVycm9yIGNv
ZGUuCj4gCj4+ICAgCWlmIChkZXZmcmVxLT5wcm9maWxlLT5leGl0KQo+PiAgIAkJZGV2ZnJlcS0+
cHJvZmlsZS0+ZXhpdChkZXZmcmVxLT5kZXYucGFyZW50KTsKPj4gICAKPj4gICAJa2ZyZWUoZGV2
ZnJlcS0+dGltZV9pbl9zdGF0ZSk7Cj4+ICAgCWtmcmVlKGRldmZyZXEtPnRyYW5zX3RhYmxlKTsK
Pj4gQEAgLTczMywxMCArNzg5LDI4IEBAIHN0cnVjdCBkZXZmcmVxICpkZXZmcmVxX2FkZF9kZXZp
Y2Uoc3RydWN0IGRldmljZSAqZGV2LAo+PiAgIAlpZiAoZXJyKSB7Cj4+ICAgCQlwdXRfZGV2aWNl
KCZkZXZmcmVxLT5kZXYpOwo+PiAgIAkJZ290byBlcnJfb3V0Owo+PiAgIAl9Cj4+ICAgCj4+ICsJ
LyoKPj4gKwkgKiBSZWdpc3RlciBub3RpZmllcnMgZm9yIHVwZGF0ZXMgdG8gbWluL21heF9mcmVx
IGFmdGVyIGRldmljZSBpcwo+PiArCSAqIGluaXRpYWxpemVkIChhbmQgd2UgY2FuIGhhbmRsZSBu
b3RpZmljYXRpb25zKSBidXQgYmVmb3JlIHRoZQo+PiArCSAqIGdvdmVybm9yIGlzIHN0YXJ0ZWQg
KHdoaWNoIHNob3VsZCBkbyBhbiBpbml0aWFsIGVuZm9yY2VtZW50IG9mCj4+ICsJICogY29uc3Ry
YWludHMpLgo+PiArCSAqLwo+IAo+IE15IHByZXZpb3VzIGNvbW1lbnQgaXMgbm90IGVub3VnaCB3
aHkgSSBwcmVmZXIgdG8gcmVtb3ZlIGl0LiBTb3JyeS4KPiBBY3R1YWxseSwgdW50aWwgbm93LCB0
aGUgZGV2ZnJlcV9hZGRfZGV2aWNlKCkgZG9uJ3QgaGF2ZSB0aGUgZGV0YWlsZWQKPiBjb21tZW50
cyBiZWNhdXNlIHRoZSBsaW5lIGNvZGUgaXMgbm90IHRvbyBsb25nLiBCdXQsIGF0IHRoZSBwcmVz
ZW50IHRpbWUsCj4gZGV2ZnJlcV9hZGRfZGV2aWNlKCkgaXMgdG9vIGxvbmcuIEl0IG1lYW5zIHRo
YXQgdGhlIGRldGFpbGVkIGNvbW1lbnQKPiBhcmUgbmVjZXNzYXJ5Lgo+IAo+IFNvLCBJJ2xsIGFk
ZCB0aGUgZGV0YWlsZWQgY29tbWVudCBmb3IgZWFjaCBzdGVwIG9mIGRldmZyZXFfYWRkX2Rldmlj
ZSgpCj4gb24gc2VwYXJhdGUgcGF0Y2ggdG8ga2VlcCB0aGUgc2FtZSBzdHlsZS4gSSdsbCBzZW5k
IHRoZSBwYXRjaCB0byB5b3UKPiBmb3IgdGhlIHJldmlldy4KClRoaXMgaXMgdmVyeSBsaWtlbHkg
dG8gcmVzdWx0IGluIG1lcmdlIGNvbmZsaWN0cywgbWF5YmUgd2FpdCBmb3IgbXkgCnNlcmllcyB0
byBnbyBpbiBmaXJzdD8KCj4+ICsJZGV2ZnJlcS0+bmJfbWluLm5vdGlmaWVyX2NhbGwgPSBxb3Nf
bWluX25vdGlmaWVyX2NhbGw7Cj4+ICsJZXJyID0gZGV2X3BtX3Fvc19hZGRfbm90aWZpZXIoZGV2
ZnJlcS0+ZGV2LnBhcmVudCwgJmRldmZyZXEtPm5iX21pbiwKPj4gKwkJCQkgICAgICBERVZfUE1f
UU9TX01JTl9GUkVRVUVOQ1kpOwo+PiArCWlmIChlcnIpCj4+ICsJCWdvdG8gZXJyX2RldmZyZXE7
Cj4+ICsKPj4gKwlkZXZmcmVxLT5uYl9tYXgubm90aWZpZXJfY2FsbCA9IHFvc19tYXhfbm90aWZp
ZXJfY2FsbDsKPj4gKwllcnIgPSBkZXZfcG1fcW9zX2FkZF9ub3RpZmllcihkZXZmcmVxLT5kZXYu
cGFyZW50LCAmZGV2ZnJlcS0+bmJfbWF4LAo+PiArCQkJCSAgICAgIERFVl9QTV9RT1NfTUFYX0ZS
RVFVRU5DWSk7Cj4+ICsJaWYgKGVycikKPj4gKwkJZ290byBlcnJfZGV2ZnJlcTsKPj4gKwo+PiAg
IAltdXRleF9sb2NrKCZkZXZmcmVxX2xpc3RfbG9jayk7Cj4+ICAgCj4+ICAgCWdvdmVybm9yID0g
dHJ5X3RoZW5fcmVxdWVzdF9nb3Zlcm5vcihkZXZmcmVxLT5nb3Zlcm5vcl9uYW1lKTsKPj4gICAJ
aWYgKElTX0VSUihnb3Zlcm5vcikpIHsKPj4gICAJCWRldl9lcnIoZGV2LCAiJXM6IFVuYWJsZSB0
byBmaW5kIGdvdmVybm9yIGZvciB0aGUgZGV2aWNlXG4iLAo+PiBAQCAtNzYwLDEwICs4MzQsMTEg
QEAgc3RydWN0IGRldmZyZXEgKmRldmZyZXFfYWRkX2RldmljZShzdHJ1Y3QgZGV2aWNlICpkZXYs
Cj4+ICAgCj4+ICAgCXJldHVybiBkZXZmcmVxOwo+PiAgIAo+PiAgIGVycl9pbml0Ogo+PiAgIAlt
dXRleF91bmxvY2soJmRldmZyZXFfbGlzdF9sb2NrKTsKPj4gK2Vycl9kZXZmcmVxOgo+PiAgIAlk
ZXZmcmVxX3JlbW92ZV9kZXZpY2UoZGV2ZnJlcSk7Cj4+ICAgCXJldHVybiBFUlJfUFRSKGVycik7
Cj4+ICAgCj4+ICAgZXJyX2RldjoKPj4gICAJLyoKPj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGlu
dXgvZGV2ZnJlcS5oIGIvaW5jbHVkZS9saW51eC9kZXZmcmVxLmgKPj4gaW5kZXggYzNjYmMxNWZk
ZjA4Li5kYWMwZGZmZWFiYjQgMTAwNjQ0Cj4+IC0tLSBhL2luY2x1ZGUvbGludXgvZGV2ZnJlcS5o
Cj4+ICsrKyBiL2luY2x1ZGUvbGludXgvZGV2ZnJlcS5oCj4+IEBAIC0xMzQsMTAgKzEzNCwxMiBA
QCBzdHJ1Y3QgZGV2ZnJlcV9kZXZfcHJvZmlsZSB7Cj4+ICAgICogQHRvdGFsX3RyYW5zOglOdW1i
ZXIgb2YgZGV2ZnJlcSB0cmFuc2l0aW9ucwo+PiAgICAqIEB0cmFuc190YWJsZToJU3RhdGlzdGlj
cyBvZiBkZXZmcmVxIHRyYW5zaXRpb25zCj4+ICAgICogQHRpbWVfaW5fc3RhdGU6CVN0YXRpc3Rp
Y3Mgb2YgZGV2ZnJlcSBzdGF0ZXMKPj4gICAgKiBAbGFzdF9zdGF0X3VwZGF0ZWQ6CVRoZSBsYXN0
IHRpbWUgc3RhdCB1cGRhdGVkCj4+ICAgICogQHRyYW5zaXRpb25fbm90aWZpZXJfbGlzdDogbGlz
dCBoZWFkIG9mIERFVkZSRVFfVFJBTlNJVElPTl9OT1RJRklFUiBub3RpZmllcgo+PiArICogQG5i
X21pbjoJCU5vdGlmaWVyIGJsb2NrIGZvciBERVZfUE1fUU9TX01JTl9GUkVRVUVOQ1kKPj4gKyAq
IEBuYl9tYXg6CQlOb3RpZmllciBibG9jayBmb3IgREVWX1BNX1FPU19NQVhfRlJFUVVFTkNZCj4+
ICAgICoKPj4gICAgKiBUaGlzIHN0cnVjdHVyZSBzdG9yZXMgdGhlIGRldmZyZXEgaW5mb3JtYXRp
b24gZm9yIGEgZ2l2ZSBkZXZpY2UuCj4+ICAgICoKPj4gICAgKiBOb3RlIHRoYXQgd2hlbiBhIGdv
dmVybm9yIGFjY2Vzc2VzIGVudHJpZXMgaW4gc3RydWN0IGRldmZyZXEgaW4gaXRzCj4+ICAgICog
ZnVuY3Rpb25zIGV4Y2VwdCBmb3IgdGhlIGNvbnRleHQgb2YgY2FsbGJhY2tzIGRlZmluZWQgaW4g
c3RydWN0Cj4+IEBAIC0xNzYsMTAgKzE3OCwxMyBAQCBzdHJ1Y3QgZGV2ZnJlcSB7Cj4+ICAgCXVu
c2lnbmVkIGludCAqdHJhbnNfdGFibGU7Cj4+ICAgCXVuc2lnbmVkIGxvbmcgKnRpbWVfaW5fc3Rh
dGU7Cj4+ICAgCXVuc2lnbmVkIGxvbmcgbGFzdF9zdGF0X3VwZGF0ZWQ7Cj4+ICAgCj4+ICAgCXN0
cnVjdCBzcmN1X25vdGlmaWVyX2hlYWQgdHJhbnNpdGlvbl9ub3RpZmllcl9saXN0Owo+PiArCj4+
ICsJc3RydWN0IG5vdGlmaWVyX2Jsb2NrIG5iX21pbjsKPj4gKwlzdHJ1Y3Qgbm90aWZpZXJfYmxv
Y2sgbmJfbWF4Owo+PiAgIH07Cj4+ICAgCj4+ICAgc3RydWN0IGRldmZyZXFfZnJlcXMgewo+PiAg
IAl1bnNpZ25lZCBsb25nIG9sZDsKPj4gICAJdW5zaWduZWQgbG9uZyBuZXc7Cj4+Cj4gCj4gCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
