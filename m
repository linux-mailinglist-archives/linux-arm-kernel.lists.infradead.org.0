Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76228EB10E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 14:21:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=fyXF015NahzjdvWvZn3sKL9C29IIHSFgIACzJd37juE=; b=sZJ3LFolBo+vE3
	wWG6RV0MaMz4FhLu+RQnBV7JybjKc1gjZRbDVdoHYaZTQJH/Bf0rM1D3MLrJvdjyoz/O56rWUpyJk
	xdYoxJ0eASN9p0qp4Z6ioKqXfBw29j4sULFGXd+6PqQxIfxade8g5PEaIRq14S5aEXzVbb81NXeRJ
	nZsYBKu503RaQq+LKq5j1EL07SUkDIsRrmnBnXxde/XFmpC58kSvGg2vKNNSI/E8B1mrsgBT9Eqi5
	+iY91lmygPRqJQ8KkG80iROodIbzmgcqQAtb/NKe6l08TE4sUTBXvQwU/4uxr3gPU1ZmbXRBExAc2
	0b1S0Eb3OYD2QUeDkZLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQAOU-0004Xt-1U; Thu, 31 Oct 2019 13:21:42 +0000
Received: from mail-eopbgr140073.outbound.protection.outlook.com
 ([40.107.14.73] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQAOE-0004XN-MQ
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 13:21:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gzSciF0GM/oVb28pBJPynBK7hNuPhjkqhobhyKdsh+j6JDs5xXLzRAdHEtANGAUigsH3GYKZ749fT59GkqEfCfMA+pUFAHjPO/q4IDZi6FNVPbJRvzWtb3eh4Gwp8vfFUSaeGguFs+jggPeW0renRfVAUDeJg3WYawWrmCrP3mTuofHEv0upPk/grvuf3v+9/RGc5ClrlRFggqX0fRaxTRbFsolHvXwN6sFUdmPay444VqW3QGQYkcXFWibkEV0KHZ28+DfmEOFBt/QU0JxHBJYZzJSPBjdCJQzKbYR/tWdD4Y3cwzNrBZSfFTROzZJLcEr5+apNYgmYBCp7tipydQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O96vu9xRzCzEMtr18bbRyN8kpX2TCliHgwPC0Vgn/18=;
 b=cm9vYiiXXJREjbh/U2mUb/+yY/mH3oqmW4SD8yeJZGcfHflrh7RqnZeDJO7cHR78GY5GFehgB/aWduzreBG24V+5Y713tdP3Zi05YJXXgFRDoCl83O3h+9xJ+K/qW4kAeR8qQ+eDwC/4lYJxfAfXUm3i3rFCJkbZ80VDp2we1diP0bcbtR2pUD7xFkuhJUMOKubukwuD8XIgJPoh1X8gfJU6KhKyxsCIb7bYsmdjvEo8IjtyOaJHAc61su1CBSCcxhinIVvEozKgVlvZM4Wylx15Cn51gryB+spD56sPPw7P4EDrUM7uHihcBydpNGozikftuYsS9xyMWvuCXOeNgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O96vu9xRzCzEMtr18bbRyN8kpX2TCliHgwPC0Vgn/18=;
 b=HDhXFWwkN5m5taoUJzpMeUMudC45SWdVuSvZUzjvNkXrbc/TWgy7/na+oCGvlT209qRh4HudbfEEnQceGu0NihiDslYmqte0n/vidQoSkpBmykj6SByFZzdK3QCTK36icxtATvZYeEG2pvqaBl6NTLyMUUxxLNU4c2lRoIzMxgc=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB2976.eurprd04.prod.outlook.com (10.170.228.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.22; Thu, 31 Oct 2019 13:21:23 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3%5]) with mapi id 15.20.2387.028; Thu, 31 Oct 2019
 13:21:23 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, Matthias Kaehlcke
 <mka@chromium.org>, MyungJoo Ham <myungjoo.ham@samsung.com>
Subject: Re: [PATCH v9 7/8] PM / devfreq: Add PM QoS support
Thread-Topic: [PATCH v9 7/8] PM / devfreq: Add PM QoS support
Thread-Index: AQHVeVckPxcmwWC+5kyW8D7IqZOmTQ==
Date: Thu, 31 Oct 2019 13:21:22 +0000
Message-ID: <VI1PR04MB7023B93005D2319BD30424FDEE630@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1570044052.git.leonard.crestez@nxp.com>
 <CGME20191002192529epcas3p3573b0d65d7b149fe3f2c073e2113a07f@epcas3p3.samsung.com>
 <f538324afaeaef3256b3ea997e67562e940c2e3c.1570044052.git.leonard.crestez@nxp.com>
 <67149311-a716-b175-ee19-fdde3a40b28a@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 87ec3901-c8af-4ae8-f310-08d75e05399a
x-ms-traffictypediagnostic: VI1PR04MB2976:|VI1PR04MB2976:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB2976CD9BF3AE486BB11D0326EE630@VI1PR04MB2976.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 02070414A1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(366004)(396003)(136003)(39860400002)(189003)(199004)(305945005)(6246003)(102836004)(44832011)(71200400001)(26005)(74316002)(71190400001)(4326008)(486006)(14444005)(25786009)(476003)(3846002)(99286004)(256004)(5660300002)(7416002)(7736002)(6116002)(8936002)(14454004)(229853002)(81156014)(8676002)(9686003)(52536014)(446003)(53546011)(33656002)(6506007)(81166006)(2906002)(54906003)(64756008)(55016002)(110136005)(66446008)(76176011)(7696005)(66946007)(66476007)(316002)(76116006)(66556008)(91956017)(186003)(478600001)(86362001)(6436002)(66066001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB2976;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MaD1kAivQfrpl9eaQekqzEKx0Q9pgWDiKPdAjXmNHwTev5aZqwbXYmp58/4OedCaenDQ8iK7VJcz9FI0plgEMQ2zjB8PNH9LYRHYBUWs1mReWi0EJRnfPB5yAlTgNX24cpH0hyS32jopBRP9qzCzayXqplz0vbvmPQn+tKjjPobSplqzwrU0J7yOB5NLLrqrkTDzovpPxwTxPJ2b6f2wwmEeXEPXIgtD6ylmNQmT43kTXVA4P6BL5o7Tpxg7dghaMLSy9wDMRSo2hQoO5+Gu0lRcrXG5/pv37J78N2TzmgdYA7s1lDddhwQ0d8QZVHGcu8Qi5QlTBv5+YMA/VXpoKTl2MJAcdnoC2aO2qVTvUgg+eejZ1BpeR+qRYTyJyY/RLHC5iGGZ0E0zZAxmK6TQPLpWibxp5+JxMF/aONAe4TktY8qQHZqJLM9kp2c8bHIi
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87ec3901-c8af-4ae8-f310-08d75e05399a
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2019 13:21:22.9034 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RsChTw4xy0AGOVuYdFIsTyFsYOb7I4msqscc6n+oZykBvS5oPxwKknse28q3OweCN39JPi8QxtWaVDOJtK92sg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB2976
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_062126_901794_C6626E12 
X-CRM114-Status: GOOD (  22.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Kyungmin Park <kyungmin.park@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMzEuMTAuMjAxOSAwNDo1NSwgQ2hhbndvbyBDaG9pIHdyb3RlOgo+IEhpIExlb25hcmQsCj4g
Cj4gSXQgbG9va3MgZ29vZCB0byBtZS4gVGhhbmtzIGZvciB5b3VyIGVmZm9ydC4KPiBCdXQsIEkg
aGF2ZSBvbmUgbWlub3IgY29tbWVudCByZWxhdGVkIHRvICdvdmVyIDgwIGNoYXInLgo+IAo+IElu
IHRoZSBkZXZmcmVxX2Rldl9yZWxlYXNlKCksIHBsZWFzZSBlZGl0IHRoaXMgbGluZQo+IGFzIGZv
bGxvd2luZyB0byBwcm90ZWN0IHRoZSBvdmVyIDgwIGNoYXIgb24gb25lIGxpbmUKPiBpZiB0aGVy
ZSBhcmUgbm8gc3BlY2lmaWMgcmVhc29uLgo+IAo+IAkJZGV2X3dhcm4oZGV2LT5wYXJlbnQsCj4g
CQkJIkZhaWxlZCB0byByZW1vdmUgREVWX1BNX1FPU19NQVhfRlJFUVVFTkNZIG5vdGlmaWVyOiAl
ZFxuIiwKPiAJCQllcnIpOwo+IAo+IAkJZGV2X3dhcm4oZGV2LT5wYXJlbnQsCj4gCQkJIkZhaWxl
ZCB0byByZW1vdmUgREVWX1BNX1FPU19NSU5fRlJFUVVFTkNZIG5vdGlmaWVyOiAlZFxuIiwKPiAJ
CQllcnIpOwo+IAo+IAo+IElmIHlvdSBlZGl0IHRoZW0sIGZlZWwgZnJlZSB0byBhZGQgbXkgcmV2
aWV3ZWQtYnkgdGFnOgoKU3RpbGwgZGlkbid0IGZpbmQgaW4gODAgY2hhcnMgc28gSSBzaHJ1bmsg
IkRFVl9QTV9RT1NfTUlOX0ZSRVFVRU5DWSB0byAKIm1pbl9mcmVxIiBpbnN0ZWFkLiBTYW1lIGZv
ciBQQVRDSCA4LzgKCj4gUmV2aWV3ZWQtYnk6IENoYW53b28gQ2hvaSA8Y3cwMC5jaG9pQHNhbXN1
bmcuY29tPgo+IAo+IAo+IE9uIDE5LiAxMC4gMy4g7Jik7KCEIDQ6MjUsIExlb25hcmQgQ3Jlc3Rl
eiB3cm90ZToKPj4gUmVnaXN0ZXIgbm90aWZpZXJzIHdpdGggdGhlIFBNIFFvUyBmcmFtZXdvcmsg
aW4gb3JkZXIgdG8gcmVzcG9uZCB0bwo+PiByZXF1ZXN0cyBmb3IgREVWX1BNX1FPU19NSU5fRlJF
UVVFTkNZIGFuZCBERVZfUE1fUU9TX01BWF9GUkVRVUVOQ1kuCj4+Cj4+IE5vIG5vdGlmaWVycyBh
cmUgYWRkZWQgYnkgdGhpcyBwYXRjaCBidXQgUE0gUW9TIGNvbnN0cmFpbnRzIGNhbiBiZQo+PiBp
bXBvc2VkIGV4dGVybmFsbHkgKGZvciBleGFtcGxlIGZyb20gb3RoZXIgZGV2aWNlcykuCj4+Cj4+
IFNpZ25lZC1vZmYtYnk6IExlb25hcmQgQ3Jlc3RleiA8bGVvbmFyZC5jcmVzdGV6QG54cC5jb20+
Cj4+IC0tLQo+PiAgIGRyaXZlcnMvZGV2ZnJlcS9kZXZmcmVxLmMgfCA3OCArKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysKPj4gICBpbmNsdWRlL2xpbnV4L2RldmZyZXEuaCAg
IHwgIDUgKysrCj4+ICAgMiBmaWxlcyBjaGFuZ2VkLCA4MyBpbnNlcnRpb25zKCspCj4+Cj4+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2RldmZyZXEvZGV2ZnJlcS5jIGIvZHJpdmVycy9kZXZmcmVxL2Rl
dmZyZXEuYwo+PiBpbmRleCAyZDYzNjkyOTAzZmYuLjQ2ZjY5OWI4NGEyMiAxMDA2NDQKPj4gLS0t
IGEvZHJpdmVycy9kZXZmcmVxL2RldmZyZXEuYwo+PiArKysgYi9kcml2ZXJzL2RldmZyZXEvZGV2
ZnJlcS5jCj4+IEBAIC0yMiwxNSArMjIsMTggQEAKPj4gICAjaW5jbHVkZSA8bGludXgvcGxhdGZv
cm1fZGV2aWNlLmg+Cj4+ICAgI2luY2x1ZGUgPGxpbnV4L2xpc3QuaD4KPj4gICAjaW5jbHVkZSA8
bGludXgvcHJpbnRrLmg+Cj4+ICAgI2luY2x1ZGUgPGxpbnV4L2hydGltZXIuaD4KPj4gICAjaW5j
bHVkZSA8bGludXgvb2YuaD4KPj4gKyNpbmNsdWRlIDxsaW51eC9wbV9xb3MuaD4KPj4gICAjaW5j
bHVkZSAiZ292ZXJub3IuaCIKPj4gICAKPj4gICAjZGVmaW5lIENSRUFURV9UUkFDRV9QT0lOVFMK
Pj4gICAjaW5jbHVkZSA8dHJhY2UvZXZlbnRzL2RldmZyZXEuaD4KPj4gICAKPj4gKyNkZWZpbmUg
SFpfUEVSX0tIWgkxMDAwCj4+ICsKPj4gICBzdGF0aWMgc3RydWN0IGNsYXNzICpkZXZmcmVxX2Ns
YXNzOwo+PiAgIAo+PiAgIC8qCj4+ICAgICogZGV2ZnJlcSBjb3JlIHByb3ZpZGVzIGRlbGF5ZWQg
d29yayBiYXNlZCBsb2FkIG1vbml0b3JpbmcgaGVscGVyCj4+ICAgICogZnVuY3Rpb25zLiBHb3Zl
cm5vcnMgY2FuIHVzZSB0aGVzZSBvciBjYW4gaW1wbGVtZW50IHRoZWlyIG93bgo+PiBAQCAtMTA5
LDEwICsxMTIsMTEgQEAgc3RhdGljIHVuc2lnbmVkIGxvbmcgZmluZF9hdmFpbGFibGVfbWF4X2Zy
ZXEoc3RydWN0IGRldmZyZXEgKmRldmZyZXEpCj4+ICAgc3RhdGljIHZvaWQgZ2V0X2ZyZXFfcmFu
Z2Uoc3RydWN0IGRldmZyZXEgKmRldmZyZXEsCj4+ICAgCQkJICAgdW5zaWduZWQgbG9uZyAqbWlu
X2ZyZXEsCj4+ICAgCQkJICAgdW5zaWduZWQgbG9uZyAqbWF4X2ZyZXEpCj4+ICAgewo+PiAgIAl1
bnNpZ25lZCBsb25nICpmcmVxX3RhYmxlID0gZGV2ZnJlcS0+cHJvZmlsZS0+ZnJlcV90YWJsZTsK
Pj4gKwlzMzIgcW9zX21pbl9mcmVxLCBxb3NfbWF4X2ZyZXE7Cj4+ICAgCj4+ICAgCWxvY2tkZXBf
YXNzZXJ0X2hlbGQoJmRldmZyZXEtPmxvY2spOwo+PiAgIAo+PiAgIAkvKgo+PiAgIAkgKiBJbml0
aWFsaXplIG1pbmltdW0vbWF4aW11bSBmcmVxdWVuY3kgZnJvbSBmcmVxIHRhYmxlLgo+PiBAQCAt
MTI1LDEwICsxMjksMjAgQEAgc3RhdGljIHZvaWQgZ2V0X2ZyZXFfcmFuZ2Uoc3RydWN0IGRldmZy
ZXEgKmRldmZyZXEsCj4+ICAgCX0gZWxzZSB7Cj4+ICAgCQkqbWluX2ZyZXEgPSBmcmVxX3RhYmxl
W2RldmZyZXEtPnByb2ZpbGUtPm1heF9zdGF0ZSAtIDFdOwo+PiAgIAkJKm1heF9mcmVxID0gZnJl
cV90YWJsZVswXTsKPj4gICAJfQo+PiAgIAo+PiArCS8qIEFwcGx5IGNvbnN0cmFpbnRzIGZyb20g
UE0gUW9TICovCj4+ICsJcW9zX21pbl9mcmVxID0gZGV2X3BtX3Fvc19yZWFkX3ZhbHVlKGRldmZy
ZXEtPmRldi5wYXJlbnQsCj4+ICsJCQkJCSAgICAgREVWX1BNX1FPU19NSU5fRlJFUVVFTkNZKTsK
Pj4gKwlxb3NfbWF4X2ZyZXEgPSBkZXZfcG1fcW9zX3JlYWRfdmFsdWUoZGV2ZnJlcS0+ZGV2LnBh
cmVudCwKPj4gKwkJCQkJICAgICBERVZfUE1fUU9TX01BWF9GUkVRVUVOQ1kpOwo+PiArCSptaW5f
ZnJlcSA9IG1heCgqbWluX2ZyZXEsICh1bnNpZ25lZCBsb25nKUhaX1BFUl9LSFogKiBxb3NfbWlu
X2ZyZXEpOwo+PiArCWlmIChxb3NfbWF4X2ZyZXEgIT0gUE1fUU9TX01BWF9GUkVRVUVOQ1lfREVG
QVVMVF9WQUxVRSkKPj4gKwkJKm1heF9mcmVxID0gbWluKCptYXhfZnJlcSwKPj4gKwkJCQkodW5z
aWduZWQgbG9uZylIWl9QRVJfS0haICogcW9zX21heF9mcmVxKTsKPj4gKwo+PiAgIAkvKiBBcHBs
eSBjb25zdHJhaW50cyBmcm9tIHN5c2ZzICovCj4+ICAgCSptaW5fZnJlcSA9IG1heCgqbWluX2Zy
ZXEsIGRldmZyZXEtPm1pbl9mcmVxKTsKPj4gICAJKm1heF9mcmVxID0gbWluKCptYXhfZnJlcSwg
ZGV2ZnJlcS0+bWF4X2ZyZXEpOwo+PiAgIAo+PiAgIAkvKiBBcHBseSBjb25zdHJhaW50cyBmcm9t
IE9QUCBpbnRlcmZhY2UgKi8KPj4gQEAgLTYwOCwyNCArNjIyLDc1IEBAIHN0YXRpYyBpbnQgZGV2
ZnJlcV9ub3RpZmllcl9jYWxsKHN0cnVjdCBub3RpZmllcl9ibG9jayAqbmIsIHVuc2lnbmVkIGxv
bmcgdHlwZSwKPj4gICAJCQllcnIpOwo+PiAgIAo+PiAgIAlyZXR1cm4gTk9USUZZX09LOwo+PiAg
IH0KPj4gICAKPj4gKy8qKgo+PiArICogcW9zX25vdGlmaWVyX2NhbGwoKSAtIENvbW1vbiBoYW5k
bGVyIGZvciBRb1MgY29uc3RyYWludHMuCj4+ICsgKiBAZGV2ZnJlcTogICAgdGhlIGRldmZyZXEg
aW5zdGFuY2UuCj4+ICsgKi8KPj4gK3N0YXRpYyBpbnQgcW9zX25vdGlmaWVyX2NhbGwoc3RydWN0
IGRldmZyZXEgKmRldmZyZXEpCj4+ICt7Cj4+ICsJaW50IGVycjsKPj4gKwo+PiArCW11dGV4X2xv
Y2soJmRldmZyZXEtPmxvY2spOwo+PiArCWVyciA9IHVwZGF0ZV9kZXZmcmVxKGRldmZyZXEpOwo+
PiArCW11dGV4X3VubG9jaygmZGV2ZnJlcS0+bG9jayk7Cj4+ICsJaWYgKGVycikKPj4gKwkJZGV2
X2VycihkZXZmcmVxLT5kZXYucGFyZW50LAo+PiArCQkJImZhaWxlZCB0byB1cGRhdGUgZnJlcXVl
bmN5IGZyb20gUE0gUW9TICglZClcbiIsCj4+ICsJCQllcnIpOwo+PiArCj4+ICsJcmV0dXJuIE5P
VElGWV9PSzsKPj4gK30KPj4gKwo+PiArLyoqCj4+ICsgKiBxb3NfbWluX25vdGlmaWVyX2NhbGwo
KSAtIENhbGxiYWNrIGZvciBRb1MgbWluX2ZyZXEgY2hhbmdlcy4KPj4gKyAqIEBuYjoJCVNob3Vs
ZCBiZSBkZXZmcmVxLT5uYl9taW4KPj4gKyAqLwo+PiArc3RhdGljIGludCBxb3NfbWluX25vdGlm
aWVyX2NhbGwoc3RydWN0IG5vdGlmaWVyX2Jsb2NrICpuYiwKPj4gKwkJCQkJIHVuc2lnbmVkIGxv
bmcgdmFsLCB2b2lkICpwdHIpCj4+ICt7Cj4+ICsJcmV0dXJuIHFvc19ub3RpZmllcl9jYWxsKGNv
bnRhaW5lcl9vZihuYiwgc3RydWN0IGRldmZyZXEsIG5iX21pbikpOwo+PiArfQo+PiArCj4+ICsv
KioKPj4gKyAqIHFvc19tYXhfbm90aWZpZXJfY2FsbCgpIC0gQ2FsbGJhY2sgZm9yIFFvUyBtYXhf
ZnJlcSBjaGFuZ2VzLgo+PiArICogQG5iOgkJU2hvdWxkIGJlIGRldmZyZXEtPm5iX21heAo+PiAr
ICovCj4+ICtzdGF0aWMgaW50IHFvc19tYXhfbm90aWZpZXJfY2FsbChzdHJ1Y3Qgbm90aWZpZXJf
YmxvY2sgKm5iLAo+PiArCQkJCQkgdW5zaWduZWQgbG9uZyB2YWwsIHZvaWQgKnB0cikKPj4gK3sK
Pj4gKwlyZXR1cm4gcW9zX25vdGlmaWVyX2NhbGwoY29udGFpbmVyX29mKG5iLCBzdHJ1Y3QgZGV2
ZnJlcSwgbmJfbWF4KSk7Cj4+ICt9Cj4+ICsKPj4gICAvKioKPj4gICAgKiBkZXZmcmVxX2Rldl9y
ZWxlYXNlKCkgLSBDYWxsYmFjayBmb3Igc3RydWN0IGRldmljZSB0byByZWxlYXNlIHRoZSBkZXZp
Y2UuCj4+ICAgICogQGRldjoJdGhlIGRldmZyZXEgZGV2aWNlCj4+ICAgICoKPj4gICAgKiBSZW1v
dmUgZGV2ZnJlcSBmcm9tIHRoZSBsaXN0IGFuZCByZWxlYXNlIGl0cyByZXNvdXJjZXMuCj4+ICAg
ICovCj4+ICAgc3RhdGljIHZvaWQgZGV2ZnJlcV9kZXZfcmVsZWFzZShzdHJ1Y3QgZGV2aWNlICpk
ZXYpCj4+ICAgewo+PiAgIAlzdHJ1Y3QgZGV2ZnJlcSAqZGV2ZnJlcSA9IHRvX2RldmZyZXEoZGV2
KTsKPj4gKwlpbnQgZXJyOwo+PiAgIAo+PiAgIAltdXRleF9sb2NrKCZkZXZmcmVxX2xpc3RfbG9j
ayk7Cj4+ICAgCWxpc3RfZGVsKCZkZXZmcmVxLT5ub2RlKTsKPj4gICAJbXV0ZXhfdW5sb2NrKCZk
ZXZmcmVxX2xpc3RfbG9jayk7Cj4+ICAgCj4+ICsJZXJyID0gZGV2X3BtX3Fvc19yZW1vdmVfbm90
aWZpZXIoZGV2ZnJlcS0+ZGV2LnBhcmVudCwgJmRldmZyZXEtPm5iX21heCwKPj4gKwkJCQkJIERF
Vl9QTV9RT1NfTUFYX0ZSRVFVRU5DWSk7Cj4+ICsJaWYgKGVycikKPj4gKwkJZGV2X3dhcm4oZGV2
LT5wYXJlbnQsICJGYWlsZWQgdG8gcmVtb3ZlIERFVl9QTV9RT1NfTUFYX0ZSRVFVRU5DWSBub3Rp
ZmllcjogJWRcbiIsCj4+ICsJCQkgZXJyKTsKPiAKPiBQbGVhc2UgZWRpdCB0aGlzIGxpbmUgYXMg
Zm9sbG93aW5nIHRvIHByb3RlY3QgdGhlIG92ZXIgODAgY2hhcgo+IG9uIG9uZSBsaW5lIGlmIHRo
ZXJlIGFyZSBubyBzcGVjaWZpYyByZWFzb24uCj4gCj4gCQlkZXZfd2FybihkZXYtPnBhcmVudCwK
PiAJCQkiRmFpbGVkIHRvIHJlbW92ZSBERVZfUE1fUU9TX01BWF9GUkVRVUVOQ1kgbm90aWZpZXI6
ICVkXG4iLAo+IAkJCWVycik7Cj4gCj4gCj4+ICsJZXJyID0gZGV2X3BtX3Fvc19yZW1vdmVfbm90
aWZpZXIoZGV2ZnJlcS0+ZGV2LnBhcmVudCwgJmRldmZyZXEtPm5iX21pbiwKPj4gKwkJCURFVl9Q
TV9RT1NfTUlOX0ZSRVFVRU5DWSk7Cj4+ICsJaWYgKGVycikKPj4gKwkJZGV2X3dhcm4oZGV2LT5w
YXJlbnQsICJGYWlsZWQgdG8gcmVtb3ZlIERFVl9QTV9RT1NfTUlOX0ZSRVFVRU5DWSBub3RpZmll
cjogJWRcbiIsCj4+ICsJCQkgZXJyKTsKPj4gKwo+IAo+IFBsZWFzZSBlZGl0IHRoaXMgbGluZSBh
cyBmb2xsb3dpbmcgdG8gcHJvdGVjdCB0aGUgb3ZlciA4MCBjaGFyCj4gb24gb25lIGxpbmUgaWYg
dGhlcmUgYXJlIG5vIHNwZWNpZmljIHJlYXNvbi4KPiAKPiAKPiAJCWRldl93YXJuKGRldi0+cGFy
ZW50LAo+IAkJCSJGYWlsZWQgdG8gcmVtb3ZlIERFVl9QTV9RT1NfTUlOX0ZSRVFVRU5DWSBub3Rp
ZmllcjogJWRcbiIsCj4gCQkJZXJyKTsKPiAKPiAKPj4gICAJaWYgKGRldmZyZXEtPnByb2ZpbGUt
PmV4aXQpCj4+ICAgCQlkZXZmcmVxLT5wcm9maWxlLT5leGl0KGRldmZyZXEtPmRldi5wYXJlbnQp
Owo+PiAgIAo+PiAgIAlrZnJlZShkZXZmcmVxLT50aW1lX2luX3N0YXRlKTsKPj4gICAJa2ZyZWUo
ZGV2ZnJlcS0+dHJhbnNfdGFibGUpOwo+PiBAQCAtNzM1LDEwICs4MDAsMjIgQEAgc3RydWN0IGRl
dmZyZXEgKmRldmZyZXFfYWRkX2RldmljZShzdHJ1Y3QgZGV2aWNlICpkZXYsCj4+ICAgCWlmIChl
cnIpIHsKPj4gICAJCXB1dF9kZXZpY2UoJmRldmZyZXEtPmRldik7Cj4+ICAgCQlnb3RvIGVycl9v
dXQ7Cj4+ICAgCX0KPj4gICAKPj4gKwlkZXZmcmVxLT5uYl9taW4ubm90aWZpZXJfY2FsbCA9IHFv
c19taW5fbm90aWZpZXJfY2FsbDsKPj4gKwllcnIgPSBkZXZfcG1fcW9zX2FkZF9ub3RpZmllcihk
ZXZmcmVxLT5kZXYucGFyZW50LCAmZGV2ZnJlcS0+bmJfbWluLAo+PiArCQkJCSAgICAgIERFVl9Q
TV9RT1NfTUlOX0ZSRVFVRU5DWSk7Cj4+ICsJaWYgKGVycikKPj4gKwkJZ290byBlcnJfZGV2ZnJl
cTsKPj4gKwo+PiArCWRldmZyZXEtPm5iX21heC5ub3RpZmllcl9jYWxsID0gcW9zX21heF9ub3Rp
Zmllcl9jYWxsOwo+PiArCWVyciA9IGRldl9wbV9xb3NfYWRkX25vdGlmaWVyKGRldmZyZXEtPmRl
di5wYXJlbnQsICZkZXZmcmVxLT5uYl9tYXgsCj4+ICsJCQkJICAgICAgREVWX1BNX1FPU19NQVhf
RlJFUVVFTkNZKTsKPj4gKwlpZiAoZXJyKQo+PiArCQlnb3RvIGVycl9kZXZmcmVxOwo+PiArCj4+
ICAgCW11dGV4X2xvY2soJmRldmZyZXFfbGlzdF9sb2NrKTsKPj4gICAKPj4gICAJZ292ZXJub3Ig
PSB0cnlfdGhlbl9yZXF1ZXN0X2dvdmVybm9yKGRldmZyZXEtPmdvdmVybm9yX25hbWUpOwo+PiAg
IAlpZiAoSVNfRVJSKGdvdmVybm9yKSkgewo+PiAgIAkJZGV2X2VycihkZXYsICIlczogVW5hYmxl
IHRvIGZpbmQgZ292ZXJub3IgZm9yIHRoZSBkZXZpY2VcbiIsCj4+IEBAIC03NjIsMTAgKzgzOSwx
MSBAQCBzdHJ1Y3QgZGV2ZnJlcSAqZGV2ZnJlcV9hZGRfZGV2aWNlKHN0cnVjdCBkZXZpY2UgKmRl
diwKPj4gICAKPj4gICAJcmV0dXJuIGRldmZyZXE7Cj4+ICAgCj4+ICAgZXJyX2luaXQ6Cj4+ICAg
CW11dGV4X3VubG9jaygmZGV2ZnJlcV9saXN0X2xvY2spOwo+PiArZXJyX2RldmZyZXE6Cj4+ICAg
CWRldmZyZXFfcmVtb3ZlX2RldmljZShkZXZmcmVxKTsKPj4gICAJcmV0dXJuIEVSUl9QVFIoZXJy
KTsKPj4gICAKPj4gICBlcnJfZGV2Ogo+PiAgIAkvKgo+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9s
aW51eC9kZXZmcmVxLmggYi9pbmNsdWRlL2xpbnV4L2RldmZyZXEuaAo+PiBpbmRleCAyYmFlOWVk
M2M3ODMuLjhiOTJjY2JkMTk2MiAxMDA2NDQKPj4gLS0tIGEvaW5jbHVkZS9saW51eC9kZXZmcmVx
LmgKPj4gKysrIGIvaW5jbHVkZS9saW51eC9kZXZmcmVxLmgKPj4gQEAgLTEzNCwxMCArMTM0LDEy
IEBAIHN0cnVjdCBkZXZmcmVxX2Rldl9wcm9maWxlIHsKPj4gICAgKiBAdG90YWxfdHJhbnM6CU51
bWJlciBvZiBkZXZmcmVxIHRyYW5zaXRpb25zCj4+ICAgICogQHRyYW5zX3RhYmxlOglTdGF0aXN0
aWNzIG9mIGRldmZyZXEgdHJhbnNpdGlvbnMKPj4gICAgKiBAdGltZV9pbl9zdGF0ZToJU3RhdGlz
dGljcyBvZiBkZXZmcmVxIHN0YXRlcwo+PiAgICAqIEBsYXN0X3N0YXRfdXBkYXRlZDoJVGhlIGxh
c3QgdGltZSBzdGF0IHVwZGF0ZWQKPj4gICAgKiBAdHJhbnNpdGlvbl9ub3RpZmllcl9saXN0OiBs
aXN0IGhlYWQgb2YgREVWRlJFUV9UUkFOU0lUSU9OX05PVElGSUVSIG5vdGlmaWVyCj4+ICsgKiBA
bmJfbWluOgkJTm90aWZpZXIgYmxvY2sgZm9yIERFVl9QTV9RT1NfTUlOX0ZSRVFVRU5DWQo+PiAr
ICogQG5iX21heDoJCU5vdGlmaWVyIGJsb2NrIGZvciBERVZfUE1fUU9TX01BWF9GUkVRVUVOQ1kK
Pj4gICAgKgo+PiAgICAqIFRoaXMgc3RydWN0dXJlIHN0b3JlcyB0aGUgZGV2ZnJlcSBpbmZvcm1h
dGlvbiBmb3IgYSBnaXZlIGRldmljZS4KPj4gICAgKgo+PiAgICAqIE5vdGUgdGhhdCB3aGVuIGEg
Z292ZXJub3IgYWNjZXNzZXMgZW50cmllcyBpbiBzdHJ1Y3QgZGV2ZnJlcSBpbiBpdHMKPj4gICAg
KiBmdW5jdGlvbnMgZXhjZXB0IGZvciB0aGUgY29udGV4dCBvZiBjYWxsYmFja3MgZGVmaW5lZCBp
biBzdHJ1Y3QKPj4gQEAgLTE3NiwxMCArMTc4LDEzIEBAIHN0cnVjdCBkZXZmcmVxIHsKPj4gICAJ
dW5zaWduZWQgaW50ICp0cmFuc190YWJsZTsKPj4gICAJdW5zaWduZWQgbG9uZyAqdGltZV9pbl9z
dGF0ZTsKPj4gICAJdW5zaWduZWQgbG9uZyBsYXN0X3N0YXRfdXBkYXRlZDsKPj4gICAKPj4gICAJ
c3RydWN0IHNyY3Vfbm90aWZpZXJfaGVhZCB0cmFuc2l0aW9uX25vdGlmaWVyX2xpc3Q7Cj4+ICsK
Pj4gKwlzdHJ1Y3Qgbm90aWZpZXJfYmxvY2sgbmJfbWluOwo+PiArCXN0cnVjdCBub3RpZmllcl9i
bG9jayBuYl9tYXg7Cj4+ICAgfTsKPj4gICAKPj4gICBzdHJ1Y3QgZGV2ZnJlcV9mcmVxcyB7Cj4+
ICAgCXVuc2lnbmVkIGxvbmcgb2xkOwo+PiAgIAl1bnNpZ25lZCBsb25nIG5ldzsKPj4KPiAKPiAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
