Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F76CBF44B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 15:44:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=xqIy059I0hViGGsJjrsbuaMJV6OJ2asvPL0bLAxxPP8=; b=l8yZOl02KW8mx1
	+7aXi9djSQLtAhz3PbpsJTOTTNsTJcc1ZJUCmRcFs78gXPcEmexNu+6RTSK7UyT1vk6AUeae0VH1B
	pKP4ObHD02jYHHlra5ubTsHxSnvDj/8QxJCml4Gko/GgDpVICveCd45+z/CEBQAijvqBiEbSLFrMs
	Uj2AYJ2hnQx5MGm8RKWcBUdGHUeLOe5826iUex78aZzsfb7rb+DhOeh+QBXBcvnWcfvPaad1wOh8e
	eGtEUIPE+aYwDEjHy9OhudnvyiyFSl2UTNewsmRqu2XELxOy/e1TQdOh5/XBugDkV91BWYvjtkgfl
	/JMVF7ds/4KOK+RJpajg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDU43-0001Qw-2c; Thu, 26 Sep 2019 13:44:11 +0000
Received: from mail-eopbgr130087.outbound.protection.outlook.com
 ([40.107.13.87] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDU3o-0001Mz-EP
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 13:43:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KWx6fwv58QuSs2CiQf+Yu9gBJYZgFppLfn643FblQzFXsefM5K2s2walOkqrHtwlbqtK4epFLiwR/S2Xmd2VHtA/Ar3G0gErZFWkybNIolQ7dfBhxoqJqJWY8PX7y71GQHn7xgb+HitQWiwNZtDdhLsi9jPJh9HKaTHZR1gPN/rJD0KZf3tlkRqD8AP1svjfyrB96NWB9c01aj2DpmGWuDDhzlDdwt+HAzF3R51gGnyiJTsjtuXpDtxZhFFDMK5Nrv7inzp/U8ngN1MMcDmvHAUBXyoDyAGnS1sM42RpgqKOEUyigFCGrNGO74hn/R6VqfRrm/i97jc+qbXj1MDcdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gpf5pJe+3WpwVCCn0nhR97H8D1IlxWJA3ImDMZWuEZY=;
 b=R/D/m6KbuqaRTBLgCRuqdNnxO/U3zX+QKqTWQSCtMFpBGqvypOJHoXttTsn1pRfaOeik5CI/RUan9cdAXOhScTH711ElIYXLp5PO6WfyLcUhjEH37qkQKO9qucVpsZS+fGhMbXwQ5cv5pVZY2S9H7TwFcvYUMCkgK8ZbgVDIHzOsZgdmSqQbUrwSOI8PEzCJbaKuCEXY1B/NHjfugSt6Qy8CnZ2QGZ04MJscBrVv7vx/qjnbcl7Ll68qmN4YDJlrI8cHP97I7Z+/ijXh8CJAKkJ4JfSAzljFsBELWEJZKK+HYBWPAAagkyHrdfqd1bPGWehCtMKiY//6vxPrCcihAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gpf5pJe+3WpwVCCn0nhR97H8D1IlxWJA3ImDMZWuEZY=;
 b=n7ZP+oa70KPAPNUVGdL3HMFxvWS6pLN9aQ5CuPTe5oQ6k2YY7dwmB0AvCSoHT4om5X/+B7g5uRb/5QNwqCt3CKesMHfgYr+6QrRg/ma5UWNRFso9dwB+ZC0wLudNhVOFoJwdT/q3/4ZOk3XqNQAXlKEr6Mya6zjagtbHK0aT9so=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB4688.eurprd04.prod.outlook.com (20.177.56.80) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.18; Thu, 26 Sep 2019 13:43:52 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8%2]) with mapi id 15.20.2284.023; Thu, 26 Sep 2019
 13:43:52 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, Matthias Kaehlcke <mka@chromium.org>
Subject: Re: [PATCH v8 5/6] PM / devfreq: Add PM QoS support
Thread-Topic: [PATCH v8 5/6] PM / devfreq: Add PM QoS support
Thread-Index: AQHVcsB0h3rfWi61w06V80OWKl85wg==
Date: Thu, 26 Sep 2019 13:43:52 +0000
Message-ID: <VI1PR04MB702397D04A0F2FFE8111E341EE860@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1569319738.git.leonard.crestez@nxp.com>
 <CGME20190924101145epcas4p37f7d25b8743c25520b33fa392cd80d45@epcas4p3.samsung.com>
 <58fdd2c226a4e76a3d9427baab7dd5c23af842ab.1569319738.git.leonard.crestez@nxp.com>
 <40885624-8f11-4eea-d5bf-d6bb50fa44dd@samsung.com>
 <VI1PR04MB7023573BA3D5C5D521DB689CEE870@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <5f12931b-92f8-15d8-8498-f02a7c2e999f@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [92.121.36.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d7348040-98dc-42a9-de8d-08d7428791b5
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB4688; 
x-ms-traffictypediagnostic: VI1PR04MB4688:|VI1PR04MB4688:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB46884F024122250598D36471EE860@VI1PR04MB4688.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0172F0EF77
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(39860400002)(396003)(366004)(376002)(189003)(199004)(7736002)(52536014)(229853002)(305945005)(81156014)(8936002)(81166006)(8676002)(25786009)(4326008)(6246003)(5660300002)(256004)(14444005)(14454004)(86362001)(478600001)(9686003)(316002)(102836004)(110136005)(54906003)(476003)(486006)(2906002)(44832011)(446003)(99286004)(71190400001)(71200400001)(186003)(6116002)(26005)(76176011)(7696005)(91956017)(7416002)(76116006)(53546011)(6506007)(66066001)(6436002)(74316002)(33656002)(66476007)(64756008)(66446008)(66556008)(3846002)(55016002)(66946007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4688;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: vqs8s77ce1rRIrDiIq2TjFJazjlwaFs6H6c8FipK6Xpyv9K8IXHVjM28y02u+2GknWzAei1w+qPpDlIJglfRobDtnCwf6Jnn7HtLAIWbmaO5tR4HcpmbAGJ6G2r+Y4epMn1gDx8UpJaGE+ntWE10bd1dOeDtWm/0sdaxfal0As3Q+F0H53p/vmgMPMqdijJpeQ+a64juUSOlra4zekwe+ZuWE7L2H5FBqfLNapNuG/9AZmASoV9M1U7TeCOsS5JEy9H9L/RSDkgZGkNbhrI39c0ASodP/CK8gewxSwVelNtylTCBtovXGcTCscouw86OVX8iNBnZppAOGu5WCUH6uFNREwveTl7NYZ9GlDobIbFY2NtUkc0G7tB1i5KxIe41sx28Z3MYjxxUEiig8ewaD3BOVEIv+wb5XEovfOM3F70=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d7348040-98dc-42a9-de8d-08d7428791b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2019 13:43:52.7336 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cTC+liW/7I+1lUrTmLOckFCanS2QxoesH74PHcHW0nbVI39lB5YfWAi5F2pj0HBclavwQVWVxJ0WIV6pCvg68w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4688
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_064356_732647_C3E812F1 
X-CRM114-Status: GOOD (  19.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.87 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.13.87 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

T24gMjAxOS0wOS0yNiA0OjA3IEFNLCBDaGFud29vIENob2kgd3JvdGU6Cj4gT24gMTkuIDkuIDI2
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
QXBwbHkgY29uc3RyYWludHMKPj4gZnJvbSBQTSBRb1MiIGluc3RlYWQuCj4gCj4gSSBhZ3JlZSB0
aGUgbmV3IGNvbW1lbnQgd2l0aCAnQXBwbHkgY29uc3RyYWludHMgLi4uICcuCj4gCj4+Cj4+PiBJ
IHByZWZlciB0byB1c2UgZm9sbG93aW5nIGNvbW1lbnRzOgo+Pj4KPj4+IAkvKiBDb25zdHJhaW50
IG1pbmltdW0vbWF4aW11bSBmcmVxdWVuY3kgZnJvbSBQTSBRb1MgY29uc3RyYWludHMgKi8KPj4+
Cj4+Pj4gKwlxb3NfbWluX2ZyZXEgPSBkZXZfcG1fcW9zX3JlYWRfdmFsdWUoZGV2ZnJlcS0+ZGV2
LnBhcmVudCwKPj4+PiArCQkJCQkgICAgIERFVl9QTV9RT1NfTUlOX0ZSRVFVRU5DWSk7Cj4+Pj4g
Kwlxb3NfbWF4X2ZyZXEgPSBkZXZfcG1fcW9zX3JlYWRfdmFsdWUoZGV2ZnJlcS0+ZGV2LnBhcmVu
dCwKPj4+PiArCQkJCQkgICAgIERFVl9QTV9RT1NfTUlOX0ZSRVFVRU5DWSk7Cj4+Pj4gKwkqbWlu
X2ZyZXEgPSBtYXgoKm1pbl9mcmVxLCBIWl9QRVJfS0haICogcW9zX21pbl9mcmVxKTsKPj4+PiAr
CSptYXhfZnJlcSA9IG1pbigqbWF4X2ZyZXEsIEhaX1BFUl9LSFogKiBxb3NfbWF4X2ZyZXEpOwo+
Pj4+ICsKPj4+PiAgICAJLyogY29uc3RyYWludHMgZnJvbSBzeXNmcyAqLwo+Pj4+ICAgIAkqbWlu
X2ZyZXEgPSBtYXgoKm1pbl9mcmVxLCBkZXZmcmVxLT5taW5fZnJlcSk7Cj4+Pj4gICAgCSptYXhf
ZnJlcSA9IG1pbigqbWF4X2ZyZXEsIGRldmZyZXEtPm1heF9mcmVxKTsKPj4+PiAgICAKPj4+PiAg
ICAJLyogY29uc3RyYWludHMgZnJvbSBPUFAgaW50ZXJmYWNlICovCj4+Pj4gQEAgLTYwNiwxMCAr
NjE4LDQ5IEBAIHN0YXRpYyBpbnQgZGV2ZnJlcV9ub3RpZmllcl9jYWxsKHN0cnVjdCBub3RpZmll
cl9ibG9jayAqbmIsIHVuc2lnbmVkIGxvbmcgdHlwZSwKPj4+PiAgICAJbXV0ZXhfdW5sb2NrKCZk
ZXZmcmVxLT5sb2NrKTsKPj4+PiAgICAKPj4+PiAgICAJcmV0dXJuIHJldDsKPj4+PiAgICB9Cj4+
Pj4gICAgCj4+Pj4gKy8qKgo+Pj4+ICsgKiBxb3Nfbm90aWZpZXJfY2FsbCgpIC0gQ29tbW9uIGhh
bmRsZXIgZm9yIFFvUyBjb25zdHJhaW50cy4KPj4+PiArICogQGRldmZyZXE6ICAgIHRoZSBkZXZm
cmVxIGluc3RhbmNlLgo+Pj4+ICsgKi8KPj4+PiArc3RhdGljIGludCBxb3Nfbm90aWZpZXJfY2Fs
bChzdHJ1Y3QgZGV2ZnJlcSAqZGV2ZnJlcSkKPj4+PiArewo+Pj4+ICsJaW50IGVycjsKPj4+PiAr
Cj4+Pj4gKwltdXRleF9sb2NrKCZkZXZmcmVxLT5sb2NrKTsKPj4+PiArCWVyciA9IHVwZGF0ZV9k
ZXZmcmVxKGRldmZyZXEpOwo+Pj4+ICsJbXV0ZXhfdW5sb2NrKCZkZXZmcmVxLT5sb2NrKTsKPj4+
PiArCWlmIChlcnIpCj4+Pj4gKwkJZGV2X2VycihkZXZmcmVxLT5kZXYucGFyZW50LAo+Pj4+ICsJ
CQkJImZhaWxlZCB0byB1cGRhdGUgZnJlcXVlbmN5IGZvciBQTSBRb1MgY29uc3RyYWludHMgKCVk
KVxuIiwKPj4+Cj4+PiBJcyBpdCBub3Qgb3ZlciA4MCBjaGFyPwo+Pgo+PiBZZXMgYnV0IGNvZGlu
ZyBzdHlsZSBleHBsaWNpdGx5IGZvcmJpZHMgYnJlYWtpbmcgc3RyaW5ncy4KPj4KPj4+PiArCQkJ
CWVycik7Cj4+Pj4gKwo+Pj4+ICsJcmV0dXJuIE5PVElGWV9PSzsKPj4+PiArfQo+Pj4+ICsKPj4+
PiArLyoqCj4+Pj4gKyAqIHFvc19taW5fbm90aWZpZXJfY2FsbCgpIC0gQ2FsbGJhY2sgZm9yIFFv
UyBtaW5fZnJlcSBjaGFuZ2VzLgo+Pj4+ICsgKiBAbmI6CQlTaG91bGQgYmUgZGV2ZnJlcS0+bmJf
bWluCj4+Pj4gKyAqLwo+Pj4+ICtzdGF0aWMgaW50IHFvc19taW5fbm90aWZpZXJfY2FsbChzdHJ1
Y3Qgbm90aWZpZXJfYmxvY2sgKm5iLAo+Pj4+ICsJCQkJCSB1bnNpZ25lZCBsb25nIHZhbCwgdm9p
ZCAqcHRyKQo+Pj4+ICt7Cj4+Pj4gKwlyZXR1cm4gcW9zX25vdGlmaWVyX2NhbGwoY29udGFpbmVy
X29mKG5iLCBzdHJ1Y3QgZGV2ZnJlcSwgbmJfbWluKSk7Cj4+Pj4gK30KPj4+PiArCj4+Pj4gKy8q
Kgo+Pj4+ICsgKiBxb3NfbWF4X25vdGlmaWVyX2NhbGwoKSAtIENhbGxiYWNrIGZvciBRb1MgbWF4
X2ZyZXEgY2hhbmdlcy4KPj4+PiArICogQG5iOgkJU2hvdWxkIGJlIGRldmZyZXEtPm5iX21heAo+
Pj4+ICsgKi8KPj4+PiArc3RhdGljIGludCBxb3NfbWF4X25vdGlmaWVyX2NhbGwoc3RydWN0IG5v
dGlmaWVyX2Jsb2NrICpuYiwKPj4+PiArCQkJCQkgdW5zaWduZWQgbG9uZyB2YWwsIHZvaWQgKnB0
cikKPj4+PiArewo+Pj4+ICsJcmV0dXJuIHFvc19ub3RpZmllcl9jYWxsKGNvbnRhaW5lcl9vZihu
Yiwgc3RydWN0IGRldmZyZXEsIG5iX21heCkpOwo+Pj4+ICt9Cj4+Pj4gKwo+Pj4+ICAgIC8qKgo+
Pj4+ICAgICAqIGRldmZyZXFfZGV2X3JlbGVhc2UoKSAtIENhbGxiYWNrIGZvciBzdHJ1Y3QgZGV2
aWNlIHRvIHJlbGVhc2UgdGhlIGRldmljZS4KPj4+PiAgICAgKiBAZGV2Ogl0aGUgZGV2ZnJlcSBk
ZXZpY2UKPj4+PiAgICAgKgo+Pj4+ICAgICAqIFJlbW92ZSBkZXZmcmVxIGZyb20gdGhlIGxpc3Qg
YW5kIHJlbGVhc2UgaXRzIHJlc291cmNlcy4KPj4+PiBAQCAtNjIwLDEwICs2NzEsMTUgQEAgc3Rh
dGljIHZvaWQgZGV2ZnJlcV9kZXZfcmVsZWFzZShzdHJ1Y3QgZGV2aWNlICpkZXYpCj4+Pj4gICAg
Cj4+Pj4gICAgCW11dGV4X2xvY2soJmRldmZyZXFfbGlzdF9sb2NrKTsKPj4+PiAgICAJbGlzdF9k
ZWwoJmRldmZyZXEtPm5vZGUpOwo+Pj4+ICAgIAltdXRleF91bmxvY2soJmRldmZyZXFfbGlzdF9s
b2NrKTsKPj4+PiAgICAKPj4+PiArCWRldl9wbV9xb3NfcmVtb3ZlX25vdGlmaWVyKGRldmZyZXEt
PmRldi5wYXJlbnQsICZkZXZmcmVxLT5uYl9tYXgsCj4+Pj4gKwkJCURFVl9QTV9RT1NfTUFYX0ZS
RVFVRU5DWSk7Cj4+Pj4gKwlkZXZfcG1fcW9zX3JlbW92ZV9ub3RpZmllcihkZXZmcmVxLT5kZXYu
cGFyZW50LCAmZGV2ZnJlcS0+bmJfbWluLAo+Pj4+ICsJCQlERVZfUE1fUU9TX01JTl9GUkVRVUVO
Q1kpOwo+Pj4+ICsKPj4+Cj4+PiBKdXN0IHByaW50IGVycm9yIHdpdGggZGV2X2VycigpIHdpdGhv
dXQgc3RvcHBpbmcgdGhlIHJlbGVhc2Ugc3RlcC4KPj4+Cj4+PiBJIHByZWZlciB0byBoYW5kbGUg
dGhlIHJldHVybiB2YWx1ZSBpZiBrZXJuZWwgQVBJIHByb3ZpZGVzCj4+PiB0aGUgZXJyb3IgY29k
ZS4KPiAKPiBIb3cgYWJvdXQ/CgpNb2RpZmllZCB0byBkZXZfd2Fybi4gVGhpcyBhbHNvIGFwcGxp
ZXMgdG8gUEFUQ0ggNiBzbyBJIHJlcGxpZWQgdGhlcmUuCgo+Pj4+ICAgIAlpZiAoZGV2ZnJlcS0+
cHJvZmlsZS0+ZXhpdCkKPj4+PiAgICAJCWRldmZyZXEtPnByb2ZpbGUtPmV4aXQoZGV2ZnJlcS0+
ZGV2LnBhcmVudCk7Cj4+Pj4gICAgCj4+Pj4gICAgCWtmcmVlKGRldmZyZXEtPnRpbWVfaW5fc3Rh
dGUpOwo+Pj4+ICAgIAlrZnJlZShkZXZmcmVxLT50cmFuc190YWJsZSk7Cj4+Pj4gQEAgLTczMywx
MCArNzg5LDI4IEBAIHN0cnVjdCBkZXZmcmVxICpkZXZmcmVxX2FkZF9kZXZpY2Uoc3RydWN0IGRl
dmljZSAqZGV2LAo+Pj4+ICAgIAlpZiAoZXJyKSB7Cj4+Pj4gICAgCQlwdXRfZGV2aWNlKCZkZXZm
cmVxLT5kZXYpOwo+Pj4+ICAgIAkJZ290byBlcnJfb3V0Owo+Pj4+ICAgIAl9Cj4+Pj4gICAgCj4+
Pj4gKwkvKgo+Pj4+ICsJICogUmVnaXN0ZXIgbm90aWZpZXJzIGZvciB1cGRhdGVzIHRvIG1pbi9t
YXhfZnJlcSBhZnRlciBkZXZpY2UgaXMKPj4+PiArCSAqIGluaXRpYWxpemVkIChhbmQgd2UgY2Fu
IGhhbmRsZSBub3RpZmljYXRpb25zKSBidXQgYmVmb3JlIHRoZQo+Pj4+ICsJICogZ292ZXJub3Ig
aXMgc3RhcnRlZCAod2hpY2ggc2hvdWxkIGRvIGFuIGluaXRpYWwgZW5mb3JjZW1lbnQgb2YKPj4+
PiArCSAqIGNvbnN0cmFpbnRzKS4KPj4+PiArCSAqLwo+Pj4KPj4+IE15IHByZXZpb3VzIGNvbW1l
bnQgaXMgbm90IGVub3VnaCB3aHkgSSBwcmVmZXIgdG8gcmVtb3ZlIGl0LiBTb3JyeS4KPj4+IEFj
dHVhbGx5LCB1bnRpbCBub3csIHRoZSBkZXZmcmVxX2FkZF9kZXZpY2UoKSBkb24ndCBoYXZlIHRo
ZSBkZXRhaWxlZAo+Pj4gY29tbWVudHMgYmVjYXVzZSB0aGUgbGluZSBjb2RlIGlzIG5vdCB0b28g
bG9uZy4gQnV0LCBhdCB0aGUgcHJlc2VudCB0aW1lLAo+Pj4gZGV2ZnJlcV9hZGRfZGV2aWNlKCkg
aXMgdG9vIGxvbmcuIEl0IG1lYW5zIHRoYXQgdGhlIGRldGFpbGVkIGNvbW1lbnQKPj4+IGFyZSBu
ZWNlc3NhcnkuCj4+Pgo+Pj4gU28sIEknbGwgYWRkIHRoZSBkZXRhaWxlZCBjb21tZW50IGZvciBl
YWNoIHN0ZXAgb2YgZGV2ZnJlcV9hZGRfZGV2aWNlKCkKPj4+IG9uIHNlcGFyYXRlIHBhdGNoIHRv
IGtlZXAgdGhlIHNhbWUgc3R5bGUuIEknbGwgc2VuZCB0aGUgcGF0Y2ggdG8geW91Cj4+PiBmb3Ig
dGhlIHJldmlldy4KPj4KPj4gVGhpcyBpcyB2ZXJ5IGxpa2VseSB0byByZXN1bHQgaW4gbWVyZ2Ug
Y29uZmxpY3RzLCBtYXliZSB3YWl0IGZvciBteQo+PiBzZXJpZXMgdG8gZ28gaW4gZmlyc3Q/Cj4g
Cj4gSSdsbCBzZW5kIHRoZSBzZXBhcmF0ZSBwYXRjaCBhZnRlciBmaW5pc2hlZCB0aGUgcmV2aWV3
IG9mIHRoZXNlIHBhdGNoZXMuCj4gU28sIGlmIHlvdSBhZ3JlZSwgcGxlYXNlIHJlbW92ZSB0aGlz
IGNvbW1lbnQgb24gdGhpcyBwYXRjaC4KPiAKPiBZb3UgY2FuIHJldmlldyB0aGUgZGV0YWlsZWQg
Y29tbWVudHMgb24gc2VwYXJhdGUgcGF0Y2ggd2hlbiBJIHNlbmQuClRoaXMgcGF0Y2ggYWxyZWFk
eSBjb250YWlucyBjb21tZW50cyBhbmQgdGhleSBleHBsYWluIHRoZSBjb2RlIGJlaW5nIAphZGRl
ZC4gRG9lc24ndCBpdCBtYWtlIG1vcmUgc2Vuc2UgZm9yIGNvbW1lbnRzIGFuZCBjb2RlIHRvIGdv
IGluIHRvZ2V0aGVyPwoKSSB0aGluayB0aGUgY29tbWVudCBpcyBhIHJlc29uYWJsZSBleHBsYW5h
dGlvbiBhcyB0byB3aHkgbm90aWZpZXJzIGFyZSAKcmVnaXN0ZXJlZCBhdCB0aGF0IHNwZWNpZmlj
IHN0ZXAgaW4gdGhlIGluaXRpYWxpemF0aW9uIHNlcXVlbmNlLgoKPj4+PiArCWRldmZyZXEtPm5i
X21pbi5ub3RpZmllcl9jYWxsID0gcW9zX21pbl9ub3RpZmllcl9jYWxsOwo+Pj4+ICsJZXJyID0g
ZGV2X3BtX3Fvc19hZGRfbm90aWZpZXIoZGV2ZnJlcS0+ZGV2LnBhcmVudCwgJmRldmZyZXEtPm5i
X21pbiwKPj4+PiArCQkJCSAgICAgIERFVl9QTV9RT1NfTUlOX0ZSRVFVRU5DWSk7Cj4+Pj4gKwlp
ZiAoZXJyKQo+Pj4+ICsJCWdvdG8gZXJyX2RldmZyZXE7Cj4+Pj4gKwo+Pj4+ICsJZGV2ZnJlcS0+
bmJfbWF4Lm5vdGlmaWVyX2NhbGwgPSBxb3NfbWF4X25vdGlmaWVyX2NhbGw7Cj4+Pj4gKwllcnIg
PSBkZXZfcG1fcW9zX2FkZF9ub3RpZmllcihkZXZmcmVxLT5kZXYucGFyZW50LCAmZGV2ZnJlcS0+
bmJfbWF4LAo+Pj4+ICsJCQkJICAgICAgREVWX1BNX1FPU19NQVhfRlJFUVVFTkNZKTsKPj4+PiAr
CWlmIChlcnIpCj4+Pj4gKwkJZ290byBlcnJfZGV2ZnJlcTsKPj4+PiArCj4+Pj4gICAgCW11dGV4
X2xvY2soJmRldmZyZXFfbGlzdF9sb2NrKTsKPj4+PiAgICAKPj4+PiAgICAJZ292ZXJub3IgPSB0
cnlfdGhlbl9yZXF1ZXN0X2dvdmVybm9yKGRldmZyZXEtPmdvdmVybm9yX25hbWUpOwo+Pj4+ICAg
IAlpZiAoSVNfRVJSKGdvdmVybm9yKSkgewo+Pj4+ICAgIAkJZGV2X2VycihkZXYsICIlczogVW5h
YmxlIHRvIGZpbmQgZ292ZXJub3IgZm9yIHRoZSBkZXZpY2VcbiIsCj4+Pj4gQEAgLTc2MCwxMCAr
ODM0LDExIEBAIHN0cnVjdCBkZXZmcmVxICpkZXZmcmVxX2FkZF9kZXZpY2Uoc3RydWN0IGRldmlj
ZSAqZGV2LAo+Pj4+ICAgIAo+Pj4+ICAgIAlyZXR1cm4gZGV2ZnJlcTsKPj4+PiAgICAKPj4+PiAg
ICBlcnJfaW5pdDoKPj4+PiAgICAJbXV0ZXhfdW5sb2NrKCZkZXZmcmVxX2xpc3RfbG9jayk7Cj4+
Pj4gK2Vycl9kZXZmcmVxOgo+Pj4+ICAgIAlkZXZmcmVxX3JlbW92ZV9kZXZpY2UoZGV2ZnJlcSk7
Cj4+Pj4gICAgCXJldHVybiBFUlJfUFRSKGVycik7Cj4+Pj4gICAgCj4+Pj4gICAgZXJyX2RldjoK
Pj4+PiAgICAJLyoKPj4+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kZXZmcmVxLmggYi9p
bmNsdWRlL2xpbnV4L2RldmZyZXEuaAo+Pj4+IGluZGV4IGMzY2JjMTVmZGYwOC4uZGFjMGRmZmVh
YmI0IDEwMDY0NAo+Pj4+IC0tLSBhL2luY2x1ZGUvbGludXgvZGV2ZnJlcS5oCj4+Pj4gKysrIGIv
aW5jbHVkZS9saW51eC9kZXZmcmVxLmgKPj4+PiBAQCAtMTM0LDEwICsxMzQsMTIgQEAgc3RydWN0
IGRldmZyZXFfZGV2X3Byb2ZpbGUgewo+Pj4+ICAgICAqIEB0b3RhbF90cmFuczoJTnVtYmVyIG9m
IGRldmZyZXEgdHJhbnNpdGlvbnMKPj4+PiAgICAgKiBAdHJhbnNfdGFibGU6CVN0YXRpc3RpY3Mg
b2YgZGV2ZnJlcSB0cmFuc2l0aW9ucwo+Pj4+ICAgICAqIEB0aW1lX2luX3N0YXRlOglTdGF0aXN0
aWNzIG9mIGRldmZyZXEgc3RhdGVzCj4+Pj4gICAgICogQGxhc3Rfc3RhdF91cGRhdGVkOglUaGUg
bGFzdCB0aW1lIHN0YXQgdXBkYXRlZAo+Pj4+ICAgICAqIEB0cmFuc2l0aW9uX25vdGlmaWVyX2xp
c3Q6IGxpc3QgaGVhZCBvZiBERVZGUkVRX1RSQU5TSVRJT05fTk9USUZJRVIgbm90aWZpZXIKPj4+
PiArICogQG5iX21pbjoJCU5vdGlmaWVyIGJsb2NrIGZvciBERVZfUE1fUU9TX01JTl9GUkVRVUVO
Q1kKPj4+PiArICogQG5iX21heDoJCU5vdGlmaWVyIGJsb2NrIGZvciBERVZfUE1fUU9TX01BWF9G
UkVRVUVOQ1kKPj4+PiAgICAgKgo+Pj4+ICAgICAqIFRoaXMgc3RydWN0dXJlIHN0b3JlcyB0aGUg
ZGV2ZnJlcSBpbmZvcm1hdGlvbiBmb3IgYSBnaXZlIGRldmljZS4KPj4+PiAgICAgKgo+Pj4+ICAg
ICAqIE5vdGUgdGhhdCB3aGVuIGEgZ292ZXJub3IgYWNjZXNzZXMgZW50cmllcyBpbiBzdHJ1Y3Qg
ZGV2ZnJlcSBpbiBpdHMKPj4+PiAgICAgKiBmdW5jdGlvbnMgZXhjZXB0IGZvciB0aGUgY29udGV4
dCBvZiBjYWxsYmFja3MgZGVmaW5lZCBpbiBzdHJ1Y3QKPj4+PiBAQCAtMTc2LDEwICsxNzgsMTMg
QEAgc3RydWN0IGRldmZyZXEgewo+Pj4+ICAgIAl1bnNpZ25lZCBpbnQgKnRyYW5zX3RhYmxlOwo+
Pj4+ICAgIAl1bnNpZ25lZCBsb25nICp0aW1lX2luX3N0YXRlOwo+Pj4+ICAgIAl1bnNpZ25lZCBs
b25nIGxhc3Rfc3RhdF91cGRhdGVkOwo+Pj4+ICAgIAo+Pj4+ICAgIAlzdHJ1Y3Qgc3JjdV9ub3Rp
Zmllcl9oZWFkIHRyYW5zaXRpb25fbm90aWZpZXJfbGlzdDsKPj4+PiArCj4+Pj4gKwlzdHJ1Y3Qg
bm90aWZpZXJfYmxvY2sgbmJfbWluOwo+Pj4+ICsJc3RydWN0IG5vdGlmaWVyX2Jsb2NrIG5iX21h
eDsKPj4+PiAgICB9Owo+Pj4+ICAgIAo+Pj4+ICAgIHN0cnVjdCBkZXZmcmVxX2ZyZXFzIHsKPj4+
PiAgICAJdW5zaWduZWQgbG9uZyBvbGQ7Cj4+Pj4gICAgCXVuc2lnbmVkIGxvbmcgbmV3OwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
