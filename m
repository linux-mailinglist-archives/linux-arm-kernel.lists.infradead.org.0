Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6FEBC20C9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 14:44:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=3u/bMBab4JyeuuO+T5xe/txX/QcbB87hIiwVkTYMf7g=; b=VulZSiOFuVcMbY
	iP8toNCR1t8kkPNwbAaHP9ghZLyut/2l+H6k5aMGI4ONBC3VF9scXuZnpuqdmGzhIJvO29LG88jED
	ZKOdBYi38OLwtuKU8ID7neyMsnvDxk+JcL6HvrKciHr3s/fIdX5Vkf/warS+keqCwPI9cc4eZ5ohI
	Kl06WpWbjEBZX+1hWTvlGZsbRhB+aLriEYF5IyeRnkZRi5rUFnoAhdyqLQIMbqB+zG/jHvBBjuLfI
	hdoOhVpmfQt4+vsy3e54m6NBO2kfCoYXrb62go/aJTfQf1xqzchR+LIS4CHvEQ7kBbZZ/mWbPOqAl
	Ma9xq8vvWhUNs3zTS2oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEv1y-0000bJ-4u; Mon, 30 Sep 2019 12:43:58 +0000
Received: from mail-eopbgr130075.outbound.protection.outlook.com
 ([40.107.13.75] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEv1n-0000ah-57
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 12:43:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X/1cIMl1cDLxZ1VwFcR+1v6RBfwvBewWAaxz9Z7KvRQRQeBW+tn9RBMrY26kyYegiTYtY6gXWlV7IUl+YwTDLe04gVWYQQRuwrfUwJr5WnRMOnFjVIp1+WfIwepB8nTQZJOZy5R8qzTweytJncOkEcVlFMt+exMBQBEAwhcu3uVLq5K6kTGhXP15fCKC5G+OLSVUhS3cxYF+qROaardmntL9+VKeoxF7Rfr1heiFC9raTDXv/S9/qDEgELd2uM9JvDRSMWutb/Ma8WqWgalr98G/lIq6tJJvutNhEDlBMxt7w+AWqbvC/U322ttcN/3b/M0ZQCEsamqBp0VUCYLKaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3s6nN4zx1NfdOs0spRIoGBKRH+IN9YSXwLaURs4wa6Q=;
 b=PtHhHO2utwJhNS6digCgKc+EOSHt2QVCecEH91GE9x/VFEteXft4Fe7uDAWKziIMSfEFTUUq5Ipx++77RiP/pCxgbj9UVrokFCBoOIxIU7UNT4jCU1JHIHov4NAWjNWH7s6kT2RmXz0AsbvmgOFPjbDIjG26FqX2azl/Z4RCEGUSw+gqWuKyrrsV+PJECDawWCu4gYvmq8CNe1lGwvTptgu07LqeX4F4b0z0IyYm3qOdptYOghBT8C7FHAJSb4dOzjfNjHi/CrJZBQmywNiTPKlBWmbLGZQLY4+vhjttjZU5csrybqZcbaWsC9one7OpJjsxBCLBn/Gu5H41llDLkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3s6nN4zx1NfdOs0spRIoGBKRH+IN9YSXwLaURs4wa6Q=;
 b=bWRKl5TaD+h23eX4CE4gFDHi/oMfNBLk61YY64E6eDyOylIgZtKp+NxJBJ2BAo1KP0oqy+58DvIklGYBEz2d9zT9mOPVHghaYZ4y5xrgDH4VtV7rk8ylsdh5t1WN7wIgNAphi25fR2HwttJm+kHdOcM1npy/khELcEx4sakyqgs=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB3021.eurprd04.prod.outlook.com (10.170.228.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Mon, 30 Sep 2019 12:43:42 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2ce6:267:b2a6:9902]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2ce6:267:b2a6:9902%2]) with mapi id 15.20.2305.017; Mon, 30 Sep 2019
 12:43:41 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, Matthias Kaehlcke <mka@chromium.org>
Subject: Re: [PATCH v8 5/6] PM / devfreq: Add PM QoS support
Thread-Topic: [PATCH v8 5/6] PM / devfreq: Add PM QoS support
Thread-Index: AQHVcsB0h3rfWi61w06V80OWKl85wg==
Date: Mon, 30 Sep 2019 12:43:41 +0000
Message-ID: <VI1PR04MB7023FDB02BCC9E4248F05CF9EE820@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1569319738.git.leonard.crestez@nxp.com>
 <CGME20190924101145epcas4p37f7d25b8743c25520b33fa392cd80d45@epcas4p3.samsung.com>
 <58fdd2c226a4e76a3d9427baab7dd5c23af842ab.1569319738.git.leonard.crestez@nxp.com>
 <40885624-8f11-4eea-d5bf-d6bb50fa44dd@samsung.com>
 <VI1PR04MB7023573BA3D5C5D521DB689CEE870@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <10b7f567-3d07-d4b0-b555-48c03a26461e@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [82.144.34.2]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5b82063b-63d1-4122-7367-08d745a3d31b
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: VI1PR04MB3021:|VI1PR04MB3021:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB3021C45C20BC4990FF32120DEE820@VI1PR04MB3021.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 01762B0D64
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(39860400002)(136003)(376002)(366004)(199004)(189003)(66476007)(76176011)(186003)(64756008)(102836004)(91956017)(53546011)(71200400001)(71190400001)(6246003)(6506007)(7696005)(476003)(33656002)(446003)(7736002)(74316002)(305945005)(44832011)(486006)(7416002)(256004)(14444005)(66946007)(76116006)(4326008)(26005)(478600001)(66446008)(66556008)(66066001)(5660300002)(52536014)(14454004)(86362001)(81156014)(3846002)(6116002)(8676002)(229853002)(316002)(54906003)(99286004)(8936002)(81166006)(110136005)(6436002)(9686003)(55016002)(2906002)(25786009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3021;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: L5O3W1Dlagrt6CnZnPSl8hmEcM/trqLqpzuwkBkKMUvg3Htt1i9CGa6GxxHJ1THpGKmLHvLp/Kg62kIDPdXhjegFGCjn0+ekiIuSMGK4MDE6LXIZ6OZQAkb8f5N/AVlAevDpk5stfINXbWCPdYTGHBwLTDpLc4Pkw7V6xr8AAaDAOKf4aLLimWKHZC4rBhpe+oufx//cz4WMoNvpq/Le2S3UqhIcIMQ7t+682lMwcpKVsV3aPH/JioAhNjpDhDvIADR39bw3Wdlscc0XHrts8u7qtIOBPCbkxiMtuE6qRqtq3eV/nDmydnVkj63F8vLte91CG46Ns7V4JbLee5LZqVsEaLsZsJOzHfevDEgmY3/cFxzdASgUgim7BFfktiJJUWnEW46esd95tu1I8R4POH4iJS6+OC+TyWMI6pcGjhg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b82063b-63d1-4122-7367-08d745a3d31b
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2019 12:43:41.9031 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bUvd0AsQRGccNQtVn2KxuSIJ8Fkul+0klep7uFFbUanXRTDFVgPVFsTbkFgB9d3DA+5t4Ti9HX9oDiBuQxFnBA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3021
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_054347_372728_311EE1A7 
X-CRM114-Status: GOOD (  19.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.75 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.13.75 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

T24gMjAxOS0wOS0yNiA0OjE0IEFNLCBDaGFud29vIENob2kgd3JvdGU6Cj4gT24gMTkuIDkuIDI2
LiDsmKTsoIQgNjoxOCwgTGVvbmFyZCBDcmVzdGV6IHdyb3RlOgo+PiBPbiAyNS4wOS4yMDE5IDA1
OjExLCBDaGFud29vIENob2kgd3JvdGU6Cj4+PiBPbiAxOS4gOS4gMjQuIOyYpO2bhCA3OjExLCBM
ZW9uYXJkIENyZXN0ZXogd3JvdGU6Cj4+Pj4gUmVnaXN0ZXIgbm90aWZpZXJzIHdpdGggdGhlIFBN
IFFvUyBmcmFtZXdvcmsgaW4gb3JkZXIgdG8gcmVzcG9uZCB0bwo+Pj4+IHJlcXVlc3RzIGZvciBE
RVZfUE1fUU9TX01JTl9GUkVRVUVOQ1kgYW5kIERFVl9QTV9RT1NfTUFYX0ZSRVFVRU5DWS4KPj4+
Pgo+Pj4+IE5vIG5vdGlmaWVycyBhcmUgYWRkZWQgYnkgdGhpcyBwYXRjaCBidXQgUE0gUW9TIGNv
bnN0cmFpbnRzIGNhbiBiZQo+Pj4+IGltcG9zZWQgZXh0ZXJuYWxseSAoZm9yIGV4YW1wbGUgZnJv
bSBvdGhlciBkZXZpY2VzKS4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IExlb25hcmQgQ3Jlc3Rl
eiA8bGVvbmFyZC5jcmVzdGV6QG54cC5jb20+Cj4+Pj4gUmV2aWV3ZWQtYnk6IE1hdHRoaWFzIEth
ZWhsY2tlIDxta2FAY2hyb21pdW0ub3JnPgo+Pj4+IC0tLQo+Pj4+ICAgIGRyaXZlcnMvZGV2ZnJl
cS9kZXZmcmVxLmMgfCA3NSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysK
Pj4+PiAgICBpbmNsdWRlL2xpbnV4L2RldmZyZXEuaCAgIHwgIDUgKysrCj4+Pj4gICAgMiBmaWxl
cyBjaGFuZ2VkLCA4MCBpbnNlcnRpb25zKCspCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9kZXZmcmVxL2RldmZyZXEuYyBiL2RyaXZlcnMvZGV2ZnJlcS9kZXZmcmVxLmMKPj4+PiBpbmRl
eCBlZWU0MDNlNzBjODQuLjc4NGYzZTQwNTM2YSAxMDA2NDQKPj4+PiAtLS0gYS9kcml2ZXJzL2Rl
dmZyZXEvZGV2ZnJlcS5jCj4+Pj4gKysrIGIvZHJpdmVycy9kZXZmcmVxL2RldmZyZXEuYwo+Pj4+
IEBAIC0yMiwxNSArMjIsMTggQEAKPj4+PiAgICAjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2
aWNlLmg+Cj4+Pj4gICAgI2luY2x1ZGUgPGxpbnV4L2xpc3QuaD4KPj4+PiAgICAjaW5jbHVkZSA8
bGludXgvcHJpbnRrLmg+Cj4+Pj4gICAgI2luY2x1ZGUgPGxpbnV4L2hydGltZXIuaD4KPj4+PiAg
ICAjaW5jbHVkZSA8bGludXgvb2YuaD4KPj4+PiArI2luY2x1ZGUgPGxpbnV4L3BtX3Fvcy5oPgo+
Pj4+ICAgICNpbmNsdWRlICJnb3Zlcm5vci5oIgo+Pj4+ICAgIAo+Pj4+ICAgICNkZWZpbmUgQ1JF
QVRFX1RSQUNFX1BPSU5UUwo+Pj4+ICAgICNpbmNsdWRlIDx0cmFjZS9ldmVudHMvZGV2ZnJlcS5o
Pgo+Pj4+ICAgIAo+Pj4+ICsjZGVmaW5lIEhaX1BFUl9LSFoJMTAwMAo+Pj4+ICsKPj4+PiAgICBz
dGF0aWMgc3RydWN0IGNsYXNzICpkZXZmcmVxX2NsYXNzOwo+Pj4+ICAgIAo+Pj4+ICAgIC8qCj4+
Pj4gICAgICogZGV2ZnJlcSBjb3JlIHByb3ZpZGVzIGRlbGF5ZWQgd29yayBiYXNlZCBsb2FkIG1v
bml0b3JpbmcgaGVscGVyCj4+Pj4gICAgICogZnVuY3Rpb25zLiBHb3Zlcm5vcnMgY2FuIHVzZSB0
aGVzZSBvciBjYW4gaW1wbGVtZW50IHRoZWlyIG93bgo+Pj4+IEBAIC0xMDksMTAgKzExMiwxMSBA
QCBzdGF0aWMgdW5zaWduZWQgbG9uZyBmaW5kX2F2YWlsYWJsZV9tYXhfZnJlcShzdHJ1Y3QgZGV2
ZnJlcSAqZGV2ZnJlcSkKPj4+PiAgICBzdGF0aWMgdm9pZCBnZXRfZnJlcV9yYW5nZShzdHJ1Y3Qg
ZGV2ZnJlcSAqZGV2ZnJlcSwKPj4+PiAgICAJCQkgICB1bnNpZ25lZCBsb25nICptaW5fZnJlcSwK
Pj4+PiAgICAJCQkgICB1bnNpZ25lZCBsb25nICptYXhfZnJlcSkKPj4+PiAgICB7Cj4+Pj4gICAg
CXVuc2lnbmVkIGxvbmcgKmZyZXFfdGFibGUgPSBkZXZmcmVxLT5wcm9maWxlLT5mcmVxX3RhYmxl
Owo+Pj4+ICsJdW5zaWduZWQgbG9uZyBxb3NfbWluX2ZyZXEsIHFvc19tYXhfZnJlcTsKPj4+PiAg
ICAKPj4+PiAgICAJbG9ja2RlcF9hc3NlcnRfaGVsZCgmZGV2ZnJlcS0+bG9jayk7Cj4+Pj4gICAg
Cj4+Pj4gICAgCS8qCj4+Pj4gICAgCSAqIEluaXQgbWluL21heCBmcmVxdWVuY3kgZnJvbSBmcmVx
IHRhYmxlLgo+Pj4+IEBAIC0xMjUsMTAgKzEyOSwxOCBAQCBzdGF0aWMgdm9pZCBnZXRfZnJlcV9y
YW5nZShzdHJ1Y3QgZGV2ZnJlcSAqZGV2ZnJlcSwKPj4+PiAgICAJfSBlbHNlIHsKPj4+PiAgICAJ
CSptaW5fZnJlcSA9IGZyZXFfdGFibGVbZGV2ZnJlcS0+cHJvZmlsZS0+bWF4X3N0YXRlIC0gMV07
Cj4+Pj4gICAgCQkqbWF4X2ZyZXEgPSBmcmVxX3RhYmxlWzBdOwo+Pj4+ICAgIAl9Cj4+Pj4gICAg
Cj4+Pj4gKwkvKiBjb25zdHJhaW50cyBmcm9tIFBNIFFvUyAqLwo+Pj4KPj4+IEFzIEkgY29tbWVu
dGVkIG9uIHBhdGNoNCwKPj4+ICdjb25zdHJhaW50cycgLT4gJ0NvbnN0cmFpbnQnIGJlY2F1c2Ug
Zmlyc3QgdmVyYiBoYXZlIHRvIGJlIHVzZWQKPj4+IGFzIHRoZSBzaWd1bGFyIHZlcmJzLgo+Pgo+
PiBBbHJlYWR5IGRpc2N1c3NlZCBmb3IgYW5vdGhlciBwYXRjaDsgSSB3aWxsIG1vZGlmeSB0byAi
QXBwbHkgY29uc3RyYWludHMKPj4gZnJvbSBQTSBRb1MiIGluc3RlYWQuCj4+Cj4+PiBJIHByZWZl
ciB0byB1c2UgZm9sbG93aW5nIGNvbW1lbnRzOgo+Pj4KPj4+IAkvKiBDb25zdHJhaW50IG1pbmlt
dW0vbWF4aW11bSBmcmVxdWVuY3kgZnJvbSBQTSBRb1MgY29uc3RyYWludHMgKi8KPj4+Cj4+Pj4g
Kwlxb3NfbWluX2ZyZXEgPSBkZXZfcG1fcW9zX3JlYWRfdmFsdWUoZGV2ZnJlcS0+ZGV2LnBhcmVu
dCwKPj4+PiArCQkJCQkgICAgIERFVl9QTV9RT1NfTUlOX0ZSRVFVRU5DWSk7Cj4+Pj4gKwlxb3Nf
bWF4X2ZyZXEgPSBkZXZfcG1fcW9zX3JlYWRfdmFsdWUoZGV2ZnJlcS0+ZGV2LnBhcmVudCwKPj4+
PiArCQkJCQkgICAgIERFVl9QTV9RT1NfTUlOX0ZSRVFVRU5DWSk7Cj4+Pj4gKwkqbWluX2ZyZXEg
PSBtYXgoKm1pbl9mcmVxLCBIWl9QRVJfS0haICogcW9zX21pbl9mcmVxKTsKPj4+PiArCSptYXhf
ZnJlcSA9IG1pbigqbWF4X2ZyZXEsIEhaX1BFUl9LSFogKiBxb3NfbWF4X2ZyZXEpOwo+Pj4+ICsK
Pj4+PiAgICAJLyogY29uc3RyYWludHMgZnJvbSBzeXNmcyAqLwo+Pj4+ICAgIAkqbWluX2ZyZXEg
PSBtYXgoKm1pbl9mcmVxLCBkZXZmcmVxLT5taW5fZnJlcSk7Cj4+Pj4gICAgCSptYXhfZnJlcSA9
IG1pbigqbWF4X2ZyZXEsIGRldmZyZXEtPm1heF9mcmVxKTsKPj4+PiAgICAKPj4+PiAgICAJLyog
Y29uc3RyYWludHMgZnJvbSBPUFAgaW50ZXJmYWNlICovCj4+Pj4gQEAgLTYwNiwxMCArNjE4LDQ5
IEBAIHN0YXRpYyBpbnQgZGV2ZnJlcV9ub3RpZmllcl9jYWxsKHN0cnVjdCBub3RpZmllcl9ibG9j
ayAqbmIsIHVuc2lnbmVkIGxvbmcgdHlwZSwKPj4+PiAgICAJbXV0ZXhfdW5sb2NrKCZkZXZmcmVx
LT5sb2NrKTsKPj4+PiAgICAKPj4+PiAgICAJcmV0dXJuIHJldDsKPj4+PiAgICB9Cj4+Pj4gICAg
Cj4+Pj4gKy8qKgo+Pj4+ICsgKiBxb3Nfbm90aWZpZXJfY2FsbCgpIC0gQ29tbW9uIGhhbmRsZXIg
Zm9yIFFvUyBjb25zdHJhaW50cy4KPj4+PiArICogQGRldmZyZXE6ICAgIHRoZSBkZXZmcmVxIGlu
c3RhbmNlLgo+Pj4+ICsgKi8KPj4+PiArc3RhdGljIGludCBxb3Nfbm90aWZpZXJfY2FsbChzdHJ1
Y3QgZGV2ZnJlcSAqZGV2ZnJlcSkKPj4+PiArewo+Pj4+ICsJaW50IGVycjsKPj4+PiArCj4+Pj4g
KwltdXRleF9sb2NrKCZkZXZmcmVxLT5sb2NrKTsKPj4+PiArCWVyciA9IHVwZGF0ZV9kZXZmcmVx
KGRldmZyZXEpOwo+Pj4+ICsJbXV0ZXhfdW5sb2NrKCZkZXZmcmVxLT5sb2NrKTsKPj4+PiArCWlm
IChlcnIpCj4+Pj4gKwkJZGV2X2VycihkZXZmcmVxLT5kZXYucGFyZW50LAo+Pj4+ICsJCQkJImZh
aWxlZCB0byB1cGRhdGUgZnJlcXVlbmN5IGZvciBQTSBRb1MgY29uc3RyYWludHMgKCVkKVxuIiwK
Pj4+Cj4+PiBJcyBpdCBub3Qgb3ZlciA4MCBjaGFyPwo+Pgo+PiBZZXMgYnV0IGNvZGluZyBzdHls
ZSBleHBsaWNpdGx5IGZvcmJpZHMgYnJlYWtpbmcgc3RyaW5ncy4KPiAKPiBJIHdhbnQgdG8gbWFr
ZSBpdCB3aXRoaW4gODAgY2hhci4gSG93IGFib3V0IGZvbGxvd2luZyBjb21tZW50Pwo+IAo+IAkJ
ZGV2X2VycihkZXZmcmVxLT5kZXYucGFyZW50LAo+IAkJCSJmYWlsZWQgdG8gdXBkYXRlIGZyZXF1
ZW5jeSBmcm9tIFBNIFFvUyAoJWQpXG4iLAoKWWVzLCBzaHJpbmtpbmcgdGhlIGNvbW1lbnQgYW5k
IGFsaWduaW5nIHdpdGggb3BlbiBwYXJlbnRoZXNpcyBjYW4ga2VlcCAKaXQgdW5kZXIgODAgY2hh
cnMuIE1heWJlIGl0IGNvdWxkIGJlIHNocnVuayBmdXJ0aGVyIHRvCgogICAgICJmYWlsZWQgdXBk
YXRlIGZvciBQTSBRb1MiCgo+Pj4+ICsJCQkJZXJyKTsKPj4+PiArCj4+Pj4gKwlyZXR1cm4gTk9U
SUZZX09LOwo+Pj4+ICt9Cj4+Pj4gKwo+Pj4+ICsvKioKPj4+PiArICogcW9zX21pbl9ub3RpZmll
cl9jYWxsKCkgLSBDYWxsYmFjayBmb3IgUW9TIG1pbl9mcmVxIGNoYW5nZXMuCj4+Pj4gKyAqIEBu
YjoJCVNob3VsZCBiZSBkZXZmcmVxLT5uYl9taW4KPj4+PiArICovCj4+Pj4gK3N0YXRpYyBpbnQg
cW9zX21pbl9ub3RpZmllcl9jYWxsKHN0cnVjdCBub3RpZmllcl9ibG9jayAqbmIsCj4+Pj4gKwkJ
CQkJIHVuc2lnbmVkIGxvbmcgdmFsLCB2b2lkICpwdHIpCj4+Pj4gK3sKPj4+PiArCXJldHVybiBx
b3Nfbm90aWZpZXJfY2FsbChjb250YWluZXJfb2YobmIsIHN0cnVjdCBkZXZmcmVxLCBuYl9taW4p
KTsKPj4+PiArfQo+Pj4+ICsKPj4+PiArLyoqCj4+Pj4gKyAqIHFvc19tYXhfbm90aWZpZXJfY2Fs
bCgpIC0gQ2FsbGJhY2sgZm9yIFFvUyBtYXhfZnJlcSBjaGFuZ2VzLgo+Pj4+ICsgKiBAbmI6CQlT
aG91bGQgYmUgZGV2ZnJlcS0+bmJfbWF4Cj4+Pj4gKyAqLwo+Pj4+ICtzdGF0aWMgaW50IHFvc19t
YXhfbm90aWZpZXJfY2FsbChzdHJ1Y3Qgbm90aWZpZXJfYmxvY2sgKm5iLAo+Pj4+ICsJCQkJCSB1
bnNpZ25lZCBsb25nIHZhbCwgdm9pZCAqcHRyKQo+Pj4+ICt7Cj4+Pj4gKwlyZXR1cm4gcW9zX25v
dGlmaWVyX2NhbGwoY29udGFpbmVyX29mKG5iLCBzdHJ1Y3QgZGV2ZnJlcSwgbmJfbWF4KSk7Cj4+
Pj4gK30KPj4+PiArCj4+Pj4gICAgLyoqCj4+Pj4gICAgICogZGV2ZnJlcV9kZXZfcmVsZWFzZSgp
IC0gQ2FsbGJhY2sgZm9yIHN0cnVjdCBkZXZpY2UgdG8gcmVsZWFzZSB0aGUgZGV2aWNlLgo+Pj4+
ICAgICAqIEBkZXY6CXRoZSBkZXZmcmVxIGRldmljZQo+Pj4+ICAgICAqCj4+Pj4gICAgICogUmVt
b3ZlIGRldmZyZXEgZnJvbSB0aGUgbGlzdCBhbmQgcmVsZWFzZSBpdHMgcmVzb3VyY2VzLgo+Pj4+
IEBAIC02MjAsMTAgKzY3MSwxNSBAQCBzdGF0aWMgdm9pZCBkZXZmcmVxX2Rldl9yZWxlYXNlKHN0
cnVjdCBkZXZpY2UgKmRldikKPj4+PiAgICAKPj4+PiAgICAJbXV0ZXhfbG9jaygmZGV2ZnJlcV9s
aXN0X2xvY2spOwo+Pj4+ICAgIAlsaXN0X2RlbCgmZGV2ZnJlcS0+bm9kZSk7Cj4+Pj4gICAgCW11
dGV4X3VubG9jaygmZGV2ZnJlcV9saXN0X2xvY2spOwo+Pj4+ICAgIAo+Pj4+ICsJZGV2X3BtX3Fv
c19yZW1vdmVfbm90aWZpZXIoZGV2ZnJlcS0+ZGV2LnBhcmVudCwgJmRldmZyZXEtPm5iX21heCwK
Pj4+PiArCQkJREVWX1BNX1FPU19NQVhfRlJFUVVFTkNZKTsKPj4+PiArCWRldl9wbV9xb3NfcmVt
b3ZlX25vdGlmaWVyKGRldmZyZXEtPmRldi5wYXJlbnQsICZkZXZmcmVxLT5uYl9taW4sCj4+Pj4g
KwkJCURFVl9QTV9RT1NfTUlOX0ZSRVFVRU5DWSk7Cj4+Pj4gKwo+Pj4KPj4+IEp1c3QgcHJpbnQg
ZXJyb3Igd2l0aCBkZXZfZXJyKCkgd2l0aG91dCBzdG9wcGluZyB0aGUgcmVsZWFzZSBzdGVwLgo+
Pj4KPj4+IEkgcHJlZmVyIHRvIGhhbmRsZSB0aGUgcmV0dXJuIHZhbHVlIGlmIGtlcm5lbCBBUEkg
cHJvdmlkZXMKPj4+IHRoZSBlcnJvciBjb2RlLgo+Pj4KPj4+PiAgICAJaWYgKGRldmZyZXEtPnBy
b2ZpbGUtPmV4aXQpCj4+Pj4gICAgCQlkZXZmcmVxLT5wcm9maWxlLT5leGl0KGRldmZyZXEtPmRl
di5wYXJlbnQpOwo+Pj4+ICAgIAo+Pj4+ICAgIAlrZnJlZShkZXZmcmVxLT50aW1lX2luX3N0YXRl
KTsKPj4+PiAgICAJa2ZyZWUoZGV2ZnJlcS0+dHJhbnNfdGFibGUpOwo+Pj4+IEBAIC03MzMsMTAg
Kzc4OSwyOCBAQCBzdHJ1Y3QgZGV2ZnJlcSAqZGV2ZnJlcV9hZGRfZGV2aWNlKHN0cnVjdCBkZXZp
Y2UgKmRldiwKPj4+PiAgICAJaWYgKGVycikgewo+Pj4+ICAgIAkJcHV0X2RldmljZSgmZGV2ZnJl
cS0+ZGV2KTsKPj4+PiAgICAJCWdvdG8gZXJyX291dDsKPj4+PiAgICAJfQo+Pj4+ICAgIAo+Pj4+
ICsJLyoKPj4+PiArCSAqIFJlZ2lzdGVyIG5vdGlmaWVycyBmb3IgdXBkYXRlcyB0byBtaW4vbWF4
X2ZyZXEgYWZ0ZXIgZGV2aWNlIGlzCj4+Pj4gKwkgKiBpbml0aWFsaXplZCAoYW5kIHdlIGNhbiBo
YW5kbGUgbm90aWZpY2F0aW9ucykgYnV0IGJlZm9yZSB0aGUKPj4+PiArCSAqIGdvdmVybm9yIGlz
IHN0YXJ0ZWQgKHdoaWNoIHNob3VsZCBkbyBhbiBpbml0aWFsIGVuZm9yY2VtZW50IG9mCj4+Pj4g
KwkgKiBjb25zdHJhaW50cykuCj4+Pj4gKwkgKi8KPj4+Cj4+PiBNeSBwcmV2aW91cyBjb21tZW50
IGlzIG5vdCBlbm91Z2ggd2h5IEkgcHJlZmVyIHRvIHJlbW92ZSBpdC4gU29ycnkuCj4+PiBBY3R1
YWxseSwgdW50aWwgbm93LCB0aGUgZGV2ZnJlcV9hZGRfZGV2aWNlKCkgZG9uJ3QgaGF2ZSB0aGUg
ZGV0YWlsZWQKPj4+IGNvbW1lbnRzIGJlY2F1c2UgdGhlIGxpbmUgY29kZSBpcyBub3QgdG9vIGxv
bmcuIEJ1dCwgYXQgdGhlIHByZXNlbnQgdGltZSwKPj4+IGRldmZyZXFfYWRkX2RldmljZSgpIGlz
IHRvbyBsb25nLiBJdCBtZWFucyB0aGF0IHRoZSBkZXRhaWxlZCBjb21tZW50Cj4+PiBhcmUgbmVj
ZXNzYXJ5Lgo+Pj4KPj4+IFNvLCBJJ2xsIGFkZCB0aGUgZGV0YWlsZWQgY29tbWVudCBmb3IgZWFj
aCBzdGVwIG9mIGRldmZyZXFfYWRkX2RldmljZSgpCj4+PiBvbiBzZXBhcmF0ZSBwYXRjaCB0byBr
ZWVwIHRoZSBzYW1lIHN0eWxlLiBJJ2xsIHNlbmQgdGhlIHBhdGNoIHRvIHlvdQo+Pj4gZm9yIHRo
ZSByZXZpZXcuCj4+Cj4+IFRoaXMgaXMgdmVyeSBsaWtlbHkgdG8gcmVzdWx0IGluIG1lcmdlIGNv
bmZsaWN0cywgbWF5YmUgd2FpdCBmb3IgbXkKPj4gc2VyaWVzIHRvIGdvIGluIGZpcnN0Pwo+Pgo+
Pj4+ICsJZGV2ZnJlcS0+bmJfbWluLm5vdGlmaWVyX2NhbGwgPSBxb3NfbWluX25vdGlmaWVyX2Nh
bGw7Cj4+Pj4gKwllcnIgPSBkZXZfcG1fcW9zX2FkZF9ub3RpZmllcihkZXZmcmVxLT5kZXYucGFy
ZW50LCAmZGV2ZnJlcS0+bmJfbWluLAo+Pj4+ICsJCQkJICAgICAgREVWX1BNX1FPU19NSU5fRlJF
UVVFTkNZKTsKPj4+PiArCWlmIChlcnIpCj4+Pj4gKwkJZ290byBlcnJfZGV2ZnJlcTsKPj4+PiAr
Cj4+Pj4gKwlkZXZmcmVxLT5uYl9tYXgubm90aWZpZXJfY2FsbCA9IHFvc19tYXhfbm90aWZpZXJf
Y2FsbDsKPj4+PiArCWVyciA9IGRldl9wbV9xb3NfYWRkX25vdGlmaWVyKGRldmZyZXEtPmRldi5w
YXJlbnQsICZkZXZmcmVxLT5uYl9tYXgsCj4+Pj4gKwkJCQkgICAgICBERVZfUE1fUU9TX01BWF9G
UkVRVUVOQ1kpOwo+Pj4+ICsJaWYgKGVycikKPj4+PiArCQlnb3RvIGVycl9kZXZmcmVxOwo+Pj4+
ICsKPj4+PiAgICAJbXV0ZXhfbG9jaygmZGV2ZnJlcV9saXN0X2xvY2spOwo+Pj4+ICAgIAo+Pj4+
ICAgIAlnb3Zlcm5vciA9IHRyeV90aGVuX3JlcXVlc3RfZ292ZXJub3IoZGV2ZnJlcS0+Z292ZXJu
b3JfbmFtZSk7Cj4+Pj4gICAgCWlmIChJU19FUlIoZ292ZXJub3IpKSB7Cj4+Pj4gICAgCQlkZXZf
ZXJyKGRldiwgIiVzOiBVbmFibGUgdG8gZmluZCBnb3Zlcm5vciBmb3IgdGhlIGRldmljZVxuIiwK
Pj4+PiBAQCAtNzYwLDEwICs4MzQsMTEgQEAgc3RydWN0IGRldmZyZXEgKmRldmZyZXFfYWRkX2Rl
dmljZShzdHJ1Y3QgZGV2aWNlICpkZXYsCj4+Pj4gICAgCj4+Pj4gICAgCXJldHVybiBkZXZmcmVx
Owo+Pj4+ICAgIAo+Pj4+ICAgIGVycl9pbml0Ogo+Pj4+ICAgIAltdXRleF91bmxvY2soJmRldmZy
ZXFfbGlzdF9sb2NrKTsKPj4+PiArZXJyX2RldmZyZXE6Cj4+Pj4gICAgCWRldmZyZXFfcmVtb3Zl
X2RldmljZShkZXZmcmVxKTsKPj4+PiAgICAJcmV0dXJuIEVSUl9QVFIoZXJyKTsKPj4+PiAgICAK
Pj4+PiAgICBlcnJfZGV2Ogo+Pj4+ICAgIAkvKgo+Pj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xp
bnV4L2RldmZyZXEuaCBiL2luY2x1ZGUvbGludXgvZGV2ZnJlcS5oCj4+Pj4gaW5kZXggYzNjYmMx
NWZkZjA4Li5kYWMwZGZmZWFiYjQgMTAwNjQ0Cj4+Pj4gLS0tIGEvaW5jbHVkZS9saW51eC9kZXZm
cmVxLmgKPj4+PiArKysgYi9pbmNsdWRlL2xpbnV4L2RldmZyZXEuaAo+Pj4+IEBAIC0xMzQsMTAg
KzEzNCwxMiBAQCBzdHJ1Y3QgZGV2ZnJlcV9kZXZfcHJvZmlsZSB7Cj4+Pj4gICAgICogQHRvdGFs
X3RyYW5zOglOdW1iZXIgb2YgZGV2ZnJlcSB0cmFuc2l0aW9ucwo+Pj4+ICAgICAqIEB0cmFuc190
YWJsZToJU3RhdGlzdGljcyBvZiBkZXZmcmVxIHRyYW5zaXRpb25zCj4+Pj4gICAgICogQHRpbWVf
aW5fc3RhdGU6CVN0YXRpc3RpY3Mgb2YgZGV2ZnJlcSBzdGF0ZXMKPj4+PiAgICAgKiBAbGFzdF9z
dGF0X3VwZGF0ZWQ6CVRoZSBsYXN0IHRpbWUgc3RhdCB1cGRhdGVkCj4+Pj4gICAgICogQHRyYW5z
aXRpb25fbm90aWZpZXJfbGlzdDogbGlzdCBoZWFkIG9mIERFVkZSRVFfVFJBTlNJVElPTl9OT1RJ
RklFUiBub3RpZmllcgo+Pj4+ICsgKiBAbmJfbWluOgkJTm90aWZpZXIgYmxvY2sgZm9yIERFVl9Q
TV9RT1NfTUlOX0ZSRVFVRU5DWQo+Pj4+ICsgKiBAbmJfbWF4OgkJTm90aWZpZXIgYmxvY2sgZm9y
IERFVl9QTV9RT1NfTUFYX0ZSRVFVRU5DWQo+Pj4+ICAgICAqCj4+Pj4gICAgICogVGhpcyBzdHJ1
Y3R1cmUgc3RvcmVzIHRoZSBkZXZmcmVxIGluZm9ybWF0aW9uIGZvciBhIGdpdmUgZGV2aWNlLgo+
Pj4+ICAgICAqCj4+Pj4gICAgICogTm90ZSB0aGF0IHdoZW4gYSBnb3Zlcm5vciBhY2Nlc3NlcyBl
bnRyaWVzIGluIHN0cnVjdCBkZXZmcmVxIGluIGl0cwo+Pj4+ICAgICAqIGZ1bmN0aW9ucyBleGNl
cHQgZm9yIHRoZSBjb250ZXh0IG9mIGNhbGxiYWNrcyBkZWZpbmVkIGluIHN0cnVjdAo+Pj4+IEBA
IC0xNzYsMTAgKzE3OCwxMyBAQCBzdHJ1Y3QgZGV2ZnJlcSB7Cj4+Pj4gICAgCXVuc2lnbmVkIGlu
dCAqdHJhbnNfdGFibGU7Cj4+Pj4gICAgCXVuc2lnbmVkIGxvbmcgKnRpbWVfaW5fc3RhdGU7Cj4+
Pj4gICAgCXVuc2lnbmVkIGxvbmcgbGFzdF9zdGF0X3VwZGF0ZWQ7Cj4+Pj4gICAgCj4+Pj4gICAg
CXN0cnVjdCBzcmN1X25vdGlmaWVyX2hlYWQgdHJhbnNpdGlvbl9ub3RpZmllcl9saXN0Owo+Pj4+
ICsKPj4+PiArCXN0cnVjdCBub3RpZmllcl9ibG9jayBuYl9taW47Cj4+Pj4gKwlzdHJ1Y3Qgbm90
aWZpZXJfYmxvY2sgbmJfbWF4Owo+Pj4+ICAgIH07Cj4+Pj4gICAgCj4+Pj4gICAgc3RydWN0IGRl
dmZyZXFfZnJlcXMgewo+Pj4+ICAgIAl1bnNpZ25lZCBsb25nIG9sZDsKPj4+PiAgICAJdW5zaWdu
ZWQgbG9uZyBuZXc7Cj4+Pj4KPj4+Cj4+Pgo+Pgo+IAo+IAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
