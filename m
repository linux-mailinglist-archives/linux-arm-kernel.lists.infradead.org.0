Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B3F99353
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 14:24:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=7kAsj/WjFpUh17f/NxdHQgT98fpY7VpEwWGl+K4fqK4=; b=Fo3Cf2qqNUQEnE
	RHpGfh0TMSn/BGGIdadrdG7EdpNSJj8rhm5hbW6t1ec12g2fVb42D1hZmzKVwQztCI2gjzWSdisQe
	ZjX08TUOAnrGDFQLCUqFUbPk8I30zZd/M8PQS45q5vLHBnfjHX1OB7VR1paqR0/PiMLMpDNftpN7x
	OEy7lRkAUKLxRXbuvoi1Q5BeZTXhGH16/OiROvg7EP/GKs5+su81nlE9lWPy18e/MqO4Tp32ajFw/
	1MiEuomnGaWvhy/FO2zZwguPXdruiykr8QpkWIp0odhRTELoSyiDIOmHOuWEJW+7gBfJPbxQCoFy2
	DvDY43KGSUWmtZepDRlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0m8f-0006WA-0X; Thu, 22 Aug 2019 12:24:25 +0000
Received: from mail-eopbgr50053.outbound.protection.outlook.com ([40.107.5.53]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0m8Q-0006UR-RX
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 12:24:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SzTZOzEHVbsN1eGhJCleq9yQ+0uGFQG9RrmHHTXsOXEJ4hFvCU1pgG7PWBWmwrgA3uNhjJq4hnZrAhVPBCvCQ6wDdUkAZq/X2bVa/YC7oA3WKGo0CKugHp6wQDct0S+n5huWyBd5EotWEd8vkfVdJcugTViM/+fRfI8xHU4MmBwc6mpgUCwWHdlrGPhmwMlVUUa4s29w/0VCwbOcPQBjLsqoofJ9qVSH4iMkwYNrIx+DZo56pFKB017CYxgNIYtFxZxwt2styNidIi6O6reDG86SXGDzEwJ1BCR3E4N6vCehmREG6+bnBCT8B6pdAuTNRVU1Xxq9bXJPjTJCBOMbRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QFCX5FYm2KM45A5cLfUtmOUv3fdDtwPajxY4Y867wpo=;
 b=YtIdx37LFZ+WJuGHO7cSUUaKGMjq6/5OERjF1jvLEbzHFJDNtOhK7fD80HwDx/jyQsSpRKs8oRzlLSbnrIT6KW9Eit6U10DpXxjoi7I0FIjmWl+yo5cIKbcM9IELwUa2pDx/tC4EjeWhqobbhYSWmc/ofhRsVjiAP/uNMKw3LwH2a8TgzcSNwKx3HPuk/ylU0n1mEOzMIxssNIICVA9W6dvNKeChOfSMrIkG2JSMAkja2azKnX/zEjG4iQE7yIsCU4DnG3DfKWA/Z+yMNHntBhj3A65Vo/d+5xSGkJ/vkheOc4oDEvuc5Gj99p0o3/9UBur6KHR5aki8WVbMCoq9sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QFCX5FYm2KM45A5cLfUtmOUv3fdDtwPajxY4Y867wpo=;
 b=ROkiB8fNoE7O/ERyDflV05xgGGwAfZ0GI5ZlkHM3eaFO33THyKuAkT2/zGbtm7kOqXbdtkQznEsesAYP8fY/A1ObVKwueoBUrU84VR9VRademsBBqUiVxFzv8YiYHvKZYUTJq3/WPm8s28ieEunUkyEMGEKGMvAMGJYzQMpqCeY=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB6192.eurprd04.prod.outlook.com (20.179.28.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.19; Thu, 22 Aug 2019 12:24:07 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::c5e8:90f8:da97:947e]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::c5e8:90f8:da97:947e%3]) with mapi id 15.20.2178.020; Thu, 22 Aug 2019
 12:24:07 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, Viresh Kumar
 <viresh.kumar@linaro.org>
Subject: Re: [PATCH v3 2/2] PM / devfreq: Use dev_pm_qos for sysfs min/max_freq
Thread-Topic: [PATCH v3 2/2] PM / devfreq: Use dev_pm_qos for sysfs
 min/max_freq
Thread-Index: AQHVV8RskIGk1lt2FkKxkb2XApS7YQ==
Date: Thu, 22 Aug 2019 12:24:07 +0000
Message-ID: <VI1PR04MB70231FF65C1A50FD6830D88FEEA50@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1566314535.git.leonard.crestez@nxp.com>
 <CGME20190820152411epcas4p33e2ef4d271ddd82a4401c0286b53d2f1@epcas4p3.samsung.com>
 <af14021b98254032e856397b54329756c1cc59c0.1566314535.git.leonard.crestez@nxp.com>
 <e2ba9b0d-1930-0d2a-c262-72f0f85c86d0@samsung.com>
 <VI1PR04MB7023A7AC7DDE349BF6D2D2C9EEAA0@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <921d9eb8-aa38-6e67-ac2e-55e01bf630f5@samsung.com>
 <VI1PR04MB7023D551332373BE98CA60E8EEA50@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <4bdc0742-42ab-1ab6-4868-409eb9738cd8@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5ebe5693-1539-48fe-52f1-08d726fba107
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR04MB6192; 
x-ms-traffictypediagnostic: VI1PR04MB6192:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB619225BB4BDEFCB24F52956AEEA50@VI1PR04MB6192.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 01371B902F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(396003)(346002)(376002)(39860400002)(189003)(51444003)(199004)(86362001)(446003)(5660300002)(476003)(102836004)(486006)(66446008)(6246003)(229853002)(26005)(186003)(53936002)(66946007)(76116006)(66556008)(64756008)(33656002)(7416002)(6116002)(53546011)(74316002)(110136005)(54906003)(2906002)(66066001)(71190400001)(316002)(71200400001)(14454004)(55016002)(52536014)(76176011)(7696005)(256004)(305945005)(44832011)(66476007)(7736002)(478600001)(99286004)(6506007)(8936002)(81156014)(8676002)(25786009)(4326008)(9686003)(6436002)(14444005)(3846002)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6192;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: pUYW04n462TiM/e+GyhseXiKhnCngTmvfZ/U8k6rqS0AgiDqCqh1VM/hN2I1qE6+enbSv7Cb5+tfHicOT0wooxAjvohPEg616bhcRaG+xleM82n/aHAiVmjiG/hEShzbB0ZOUoPqHBjp3PYifhRdNzIUcSzMvcQCvzWfRaUMdKKZosNxk1IJ7vQAZ2XLiZl40Gy/6AndNNEUKZ44fnT+OQSICJrwgPs/5CTocjEeudqR/h+EBmQfJ047QPivJET3693YvIU7T1a0iZJO/DS5Xri8q1MjS16aIA9LHv/ifHEOdGcdUJFDZC9hnIMyzkbl3HQFaLbERhdzkojwp0f/Lmijd5cgwo3+bPdENdwpiglGo96nybjmC+Ninil4/5oh1QktKMlrctEA93sQk973KJ54ZBIXasiqj8g3f7SwT24=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ebe5693-1539-48fe-52f1-08d726fba107
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2019 12:24:07.5272 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zv9eBriXgJl2Dqnid9sdEEUlWouwuzY2H8GbVAGdB6D2vU4oXfAAbBP3avzdAzzIlugtK/RU2Sbs2sJHwUX1yQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6192
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_052410_986189_6E017D23 
X-CRM114-Status: GOOD (  15.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.53 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.5.53 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Jacky Bai <ping.bai@nxp.com>, Saravana Kannan <saravanak@google.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 "cpgs \(cpgs@samsung.com\)" <cpgs@samsung.com>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjIuMDguMjAxOSAxNDowNiwgQ2hhbndvbyBDaG9pIHdyb3RlOgo+IE9uIDE5LiA4LiAyMi4g
7Jik7ZuEIDc6NTgsIExlb25hcmQgQ3Jlc3RleiB3cm90ZToKPj4gT24gOC8yMi8yMDE5IDE6MDMg
UE0sIENoYW53b28gQ2hvaSB3cm90ZToKPj4+IFRoaXMgcGF0Y2ggZG9lc24ndCBjaGVjayB0aGUg
cmFuZ2Ugb2YgaW5wdXQgdmFsdWUKPj4+IHdpdGggdGhlIHN1cHBvcnRlZCBmcmVxdWVuY2llcyBv
ZiBkZXZmcmVxIGRldmljZS4KPj4+Cj4+PiBGb3IgZXhhbXBsZSwKPj4+IFRoZSBkZXZmcmVxMCBk
ZXZpY2UgaGFzIHRoZSBmb2xsb3dpbmcgYXZhaWxhYmxlIGZyZXF1ZW5jaWVzCj4+PiAxMDAwMDAw
MDAgMjAwMDAwMDAwIDMwMDAwMDAwMAo+Pj4KPj4+IGFuZCB0aGVuIHVzZXIgZW50ZXJzIHRoZSA1
MDAwMDAwMDAgYXMgZm9sbG93aW5nOgo+Pj4gZWNobyA1MDAwMDAwMDAgPiAvc3lzL2NsYXNzL2Rl
dmZyZXEvZGV2ZnJlcTAvbWluX2ZyZXEKPj4+Cj4+PiBJbiByZXN1bHQsIGdldF9lZmZlY3RpdmVf
bWluX2ZyZXEoKSB3aWxsIHJldHVybiB0aGUgNTAwMDAwMDAwLgo+Pj4gSXQgaXMgd3JvbmcgdmFs
dWUuIGl0IHNob3cgdGhlIHVuc3VwcG9ydGVkIGZyZXF1ZW5jeSB0aHJvdWdoCj4+PiBtaW5fZnJl
cSBzeXNmcyBwYXRoLgo+Pgo+PiBUaHJvdWdoIGRldl9wbV9xb3MgZGV2aWNlcyBjYW4gYWxzbyBh
c2sgZm9yIGEgZnJlcSBoaWdoZXIgdGhhbiB0aGUKPj4gbWF4aW11bSBPUFAgYW5kIHVubGlrZSBz
eXNmcyB0aGVyZSBpcyBubyB3YXkgdG8gcmVqZWN0IHN1Y2ggcmVxdWVzdHMsCj4+IGluc3RlYWQg
UE0gcW9zIGNsYWltcyBpdCdzIGJhc2VkIG9uICJiZXN0IGVmZm9ydCIuCj4+Cj4+IFRoZXJlIGFy
ZSBtYW55IHJlcXVlc3RzIGluIHRoZSBrZXJuZWwgZm9yICJQTV9RT1NfQ1BVX0RNQV9MQVRFTkNZ
IDAiIGFuZAo+PiBJIHRoaW5rIHRoYXQgREVWX1BNX1FPU19NSU5fRlJFUVVFTkNZLCBNQVhfUzMy
IGlzIGEgcmVhc29uYWJsZSB3YXkgZm9yIGEKPj4gZGV2aWNlIHRvIHJlcXVlc3QgIm1heCBwZXJm
b3JtYW5jZSIgZnJvbSBkZXZmcmVxLgo+Pgo+PiBSZWplY3RpbmcgbWluID4gbWF4IGlzIGNvbXBs
aWNhdGVkICh3aGF0IGhhcHBlbnMgdG8gcmVqZWN0ZWQgcmVxdWVzdHMKPj4gd2hlbiBtYXggZ29l
cyBiYWNrIHVwPykgYW5kIEkgdGhpbmsgaXQncyBiZXR0ZXIgdG8ganVzdCBzdGljayB3aXRoIGEK
Pj4gIm1heCBvdmVycmlkZXMgbWluIiBwb2xpY3kgc2luY2UgaXQgY2FuIGFscmVhZHkgZGVhbCB3
aXRoIGNvbmZsaWN0cy4KPj4KPj4gRG8geW91IGhhdmUgYSB1c2VjYXNlIGZvciByZWplY3Rpbmcg
b3V0LW9mLXJhbmdlIG1pbl9mcmVxIGZyb20KPj4gdXNlcnNwYWNlPyBjcHVmcmVxIGFsc28gYWNj
ZXB0cyBhcmJpdHJhcnkgbWluL21heCB2YWx1ZXMgYW5kIGhhbmRsZXMgdGhlbS4KPiAKPiBJIGRv
bid0IG1lYW4gdGhlIHJlamVjdGluZyB3aGVuIHVzZXIgZW50ZXIgdGhlIG91dC1vZi1yYW5nZSBm
cmVxdWVuY3kuCj4gQXMgSSBjb21tZW50ZWQsIHVzZXIgY2FuIGVudGVyIHRoZSB2YWx1ZSB0aGV5
IHdhbnQuIEJ1dCwgd2Ugc2hvdWxkCj4gY2hlY2sgdGhlIHJhbmdlIG9mIGlucHV0IGJlY2F1c2Ug
ZGV2ZnJlcSBoYXZlIHRvIHNob3cgdGhlIGNvcnJlY3Qgc3VwcG9ydGVkCj4gZnJlcXVlbmN5IHRo
cm91Z2ggc3lzZnMuCgpXZSBjYW4gYXZvaWQgc2hvd2luZyBhbiBvdXQtb2YtcmFuZ2UgdmFsdWUg
aW4gbWluX2ZyZXEgYnkgcHJpbnRpbmcgCm1pbihtaW5fZnJlcSwgbWF4X2ZyZXEpLgoKVGhlIG1h
eF9mcmVxIHZhbHVlIGZyb20gcG1fcW9zIGNhbiBzdGlsbCBiZSBiZXR3ZWVuIE9QUHMgc28gbWF5
YmUgcHJpbnQgCmRldmZyZXFfcmVjb21tZW5kZWRfb3BwKG1heF9mcmVxLCBERVZGUkVRX0ZMQUdf
TEVBU1RfVVBQRVJfQk9VTkQpLgoKPj4gSW4gdGhlb3J5IHBtX3FvcyBjb3VsZCBiZSBleHRlbmRl
ZCB0byBkaWZmZXJlbnRpYXRlIGJldHdlZW4gInNvZnQiCj4+IHJlcXVlc3RzIChjdXJyZW50IGJl
aGF2aW9yKSBhbmQgImhhcmQiIHJlcXVlc3RzIHdoaWNoIHJldHVybiBlcnJvcnMgaWYKPj4gdGhl
eSBjYW4ndCBiZSBndWFyYW50ZWVkIGJ1dCB0aGlzIGlzIGZhciBvdXQgb2Ygc2NvcGUuCj4gCj4g
SSB0aGluayB0aGF0IHlvdSBhZ3JlZWQgdGhlIGxpbWl0YXRpb24gb2YgZGV2X3BtX3FvcyB3aGVu
IGVudGVyaW5nCj4gb3IgcmVxdWVzdGluZyB0aGUgdW5zdXBwb3J0ZWQgZnJlcXVlbmN5LgoKWWVz
LCAiYmVzdCBlZmZvcnQgcW9zIiBpcyBhY2NlcHRhYmxlIGZvciBub3cuCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
