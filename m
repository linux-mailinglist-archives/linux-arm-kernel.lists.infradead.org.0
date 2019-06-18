Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8FE498C1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 08:09:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WjMPLSSCs7NRykHjvKtTG8SpHuRn2g8t13+oTF1IluE=; b=HrcC4POmosqBT6
	DB1CPlrsBWJux3RwIgdl0zZyofNz+RF1lC6ZqGvXlszMH7gNOb4KaIatti/5iKsMp7Y31j5qpcbHB
	XhMeG9xHsh9Al1WMfCGSSOyK2vVxIO6wtYMX1Weku3ZnAJZLbaEUAV0fxCJLDxYofmfFY90IedE0A
	UWW/ZGNCRE92YCUAK1mDpw5aBnHN/KeUqqDctSjPXyEzaZKULkOhuu2Y/EfF9zb+jqN40OWYlLxDX
	U9a27ScelkaxVCSkUKHhARd6yLdaAb/50NzmArYXpJAOQG0H5SQrKIJ2CPxw3zh7D6J931MKajH+f
	yrmwyUWhgu2cA+zd5EGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd7Iq-0006LS-Lf; Tue, 18 Jun 2019 06:09:08 +0000
Received: from mail-eopbgr80042.outbound.protection.outlook.com ([40.107.8.42]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd7Id-0006Kq-Oo
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 06:08:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3+78JCi/QLemCVzCRPqNn66OuKeOg0HDAXAPOrbTxe8=;
 b=PCxHcqID7oaA9jrXnP51n/iNk8FoEQPGwEQYj/QGAT8vCC4DVYIB/uPqm5U1HoCu/IJEL0zF1XuIlctJfbaa1LTdRNMJTYhGEQ+jL7kjZIO5dsCYnPZsspXQfMvpMZXh2n99rIMqCDONPPFgKO4fRbIhdJcT3QZ8I4H6H5f+bkk=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.235.81) by
 VE1PR04MB6431.eurprd04.prod.outlook.com (20.179.232.156) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.13; Tue, 18 Jun 2019 06:08:51 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::a4a8:729f:e664:fa8]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::a4a8:729f:e664:fa8%2]) with mapi id 15.20.1987.014; Tue, 18 Jun 2019
 06:08:51 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: "m.olbrich@pengutronix.de" <m.olbrich@pengutronix.de>
Subject: Re: [PATCH v1] dmaengine: imx-sdma: remove BD_INTR for channel0
Thread-Topic: [PATCH v1] dmaengine: imx-sdma: remove BD_INTR for channel0
Thread-Index: AQHVIoyD1XkewTwW3U6Cbo4mPhim06aa+IgAgAArvYCAAE8sgIAEM14A////LACAAdSaAA==
Date: Tue, 18 Jun 2019 06:08:50 +0000
Message-ID: <1560867140.26847.12.camel@nxp.com>
References: <20190614083959.37944-1-yibin.gong@nxp.com>
 <CAOMZO5Do+BsZEX43w283yWed8fQVtTC+zAvoktPLTj4c_f798w@mail.gmail.com>
 <CAGngYiUWy5FM-zsT55-yY=kahLObZGYw=zU0F9Tzp9T2S3G6LA@mail.gmail.com>
 <20190614180913.d66bbjrnw3gxt663@pengutronix.de>
 <1560766686.30149.36.camel@nxp.com>
 <20190617101508.47jk72yrtplxpgzs@pengutronix.de>
In-Reply-To: <20190617101508.47jk72yrtplxpgzs@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.18.5.2-0ubuntu3.2 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 155a43e3-fae3-41c5-b0b5-08d6f3b36f37
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR04MB6431; 
x-ms-traffictypediagnostic: VE1PR04MB6431:
x-microsoft-antispam-prvs: <VE1PR04MB6431FAA851FB8CA0FC459A3489EA0@VE1PR04MB6431.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 007271867D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(346002)(136003)(39860400002)(376002)(189003)(199004)(478600001)(186003)(6246003)(53936002)(86362001)(476003)(2616005)(50226002)(2501003)(2351001)(2906002)(25786009)(3846002)(6916009)(103116003)(54906003)(316002)(6116002)(8676002)(81166006)(81156014)(7416002)(66066001)(8936002)(486006)(446003)(11346002)(14444005)(6512007)(256004)(7736002)(99286004)(68736007)(64756008)(6486002)(71190400001)(71200400001)(6436002)(91956017)(5640700003)(76116006)(5660300002)(66556008)(66446008)(14454004)(66476007)(102836004)(305945005)(53546011)(229853002)(26005)(36756003)(66946007)(6506007)(76176011)(73956011)(4326008)(99106002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6431;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ZXJeNy8Op05gvF08uZhLyRFBsMpnuh4/5h7+4dqt7XkA1XaRlGu47c/CtJQ6q6ZMqD6YqtbMuzX4GbF1FqAzgDK0M5oY/kxRQij6BitF/kXe7u//TdJqDPpldFbb99nNFSH9i12nc24BOI16K39uvWmBARklj2zLeyHMkKt0eMEQK3lV0dGtBhX27fh+mbjZ3xDFW6gYSDyBVmx2BLHG1xBWzT8odi7xjiBSD5lcICgdrh34Z6oJ4CAPWfbiJnRAl/tYcSweOl3z9ggDnPckzOfvG7rpwWZKXrc+FJjvB324rD81qXkSUwrVsh2Qs/UqV7TyzN4n810uc/OoX7mHSLsgkvFQWdNvkRvtoqPjTKg6TW71P+feS95QQhS6KECgbo9Ug97t3ThXgpNIqu4JPYCOwXdHRK6qZ0APgIbtFkA=
Content-ID: <2C508FB99D27AF42876DF2577F1DB308@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 155a43e3-fae3-41c5-b0b5-08d6f3b36f37
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2019 06:08:50.8770 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yibin.gong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6431
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_230855_898938_66C914F9 
X-CRM114-Status: GOOD (  30.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.42 listed in list.dnswl.org]
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
Cc: "thesven73@gmail.com" <thesven73@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "vkoul@kernel.org" <vkoul@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS0wNi0xNyBhdCAxMjoxNSArMDIwMCwgbS5vbGJyaWNoQHBlbmd1dHJvbml4LmRlIHdy
b3RlOg0KPiBPbiBNb24sIEp1biAxNywgMjAxOSBhdCAwMjoxNDozNEFNICswMDAwLCBSb2JpbiBH
b25nIHdyb3RlOg0KPiA+IA0KPiA+IE9uIDIwMTktMDYtMTQgYXQgMTg6MDkgKzAwMDAsIE1pY2hh
ZWwgT2xicmljaCB3cm90ZToNCj4gPiA+IA0KPiA+ID4gT24gRnJpLCBKdW4gMTQsIDIwMTkgYXQg
MDk6MjU6NTFBTSAtMDQwMCwgU3ZlbiBWYW4gQXNicm9lY2sNCj4gPiA+IHdyb3RlOg0KPiA+ID4g
PiANCj4gPiA+ID4gDQo+ID4gPiA+IE9uIEZyaSwgSnVuIDE0LCAyMDE5IGF0IDY6NDkgQU0gRmFi
aW8gRXN0ZXZhbSA8ZmVzdGV2YW1AZ21haWwuYw0KPiA+ID4gPiBvbT4NCj4gPiA+ID4gd3JvdGU6
DQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gQWNjb3JkaW5n
IHRvIHRoZSBvcmlnaW5hbCByZXBvcnQgZnJvbSBTdmVuIHRoZSBpc3N1ZSBzdGFydGVkDQo+ID4g
PiA+ID4gdG8NCj4gPiA+ID4gPiBoYXBwZW4NCj4gPiA+ID4gPiBvbiA1LjAsIHNvIGl0IHdvdWxk
IGJlIGdvb2QgdG8gYWRkIGEgRml4ZXMgdGFnIGFuZCBDYyBzdGFibGUNCj4gPiA+ID4gPiBzbw0K
PiA+ID4gPiA+IHRoYXQNCj4gPiA+ID4gPiB0aGlzIGZpeCBjb3VsZCBiZSBiYWNrcG9ydGVkIHRv
IDUuMC81LjEgc3RhYmxlIHRyZWVzLg0KPiA+ID4gPiBHb29kIGNhdGNoICENCj4gPiA+ID4gDQo+
ID4gPiA+IEhvd2V2ZXIsIHRoZSBpc3N1ZSBpcyBoaWdobHkgdGltaW5nLWRlcGVuZGVudC4gSXQg
d2lsbCBjb21lIGFuZA0KPiA+ID4gPiBnbw0KPiA+ID4gPiBkZXBlbmRpbmcNCj4gPiA+ID4gb24g
dGhlIGtlcm5lbCB2ZXJzaW9uLCBkZXZpY2V0cmVlIGFuZCBkZWZjb25maWcuIElmIGl0IHdvcmtz
DQo+ID4gPiA+IGZvciBtZQ0KPiA+ID4gPiBvbg0KPiA+ID4gPiA0LjE5LCB0aGF0DQo+ID4gPiA+
IGRvZXNuJ3QgbWVhbiB0aGUgYnVnIGlzIGdvbmUgb24gNC4xOS4NCj4gPiA+ID4gDQo+ID4gPiA+
IExvb2tpbmcgYXQgdGhlIGNvbW1pdCBoaXN0b3J5LCBJIHRoaW5rIHRoZSBjb21taXQgYmVsb3cN
Cj4gPiA+ID4gcG9zc2libHkNCj4gPiA+ID4gaW50cm9kdWNlZCB0aGUNCj4gPiA+ID4gaXNzdWUu
IFVudGlsIHRoaXMgY29tbWl0LCBzZG1hX3J1bl9jaGFubmVsKCkgd291bGQgd2FpdCBvbiB0aGUN
Cj4gPiA+ID4gaW50ZXJydXB0DQo+ID4gPiA+IGJlZm9yZSBwcm9jZWVkaW5nLiBJdCBoYXMgYmVl
biB0aGVyZSBzaW5jZSA0Ljg6DQo+ID4gPiA+IA0KPiA+ID4gPiBGaXhlczogMWQwNjliZmEzYzc4
ICgiZG1hZW5naW5lOiBpbXgtc2RtYTogYWNrIGNoYW5uZWwgMCBJUlEgaW4NCj4gPiA+ID4gdGhl
DQo+ID4gPiA+IGludGVycnVwdCBoYW5kbGVyIikNCj4gPiA+IEkgdGhpbmsgdGhpcyBpcyBjb3Jy
ZWN0LiBTdGFydGluZyB3aXRoIHRoaXMgY29tbWl0LCB0aGUgaW50ZXJydXB0DQo+ID4gPiBzdGF0
dXMgZnINCj4gPiA+IGNoYW5uZWwgMCBpcyBubyBsb25nZXIgY2xlYXJlZCBpbiBzZG1hX3J1bl9j
aGFubmVsMCgpIGFuZA0KPiA+ID4gc2RtYV9pbnRfaGFuZGxlcigpIGlzIGFsd2F5cyBjYWxsZWQg
Zm9yIGNoYW5uZWwgMC4NCj4gPiA+IER1cmluZyBmaXJtd2FyZSBsb2FkaW5nIHRoZSBpbnRlcnJ1
cHRzIGFyZSBlbmFibGVkIGFnYWluIGp1c3QNCj4gPiA+IGJlZm9yZQ0KPiA+ID4gdGhlDQo+ID4g
PiBjbG9ja3MgYXJlIGRpc2FibGVkLiBUaGUgaW50ZXJydXB0IGlzIHBlbmRpbmcgYXQgdGhpcyBt
b21lbnQgc28NCj4gPiA+IG9uIGENCj4gPiA+IHNpbmdsZQ0KPiA+ID4gY29yZSBzeXN0ZW0gSSB0
aGluayB0aGlzIHdpbGwgYWx3YXlzIHdvcmsgYXMgZXhwZWN0ZWQuIElmIHRoZQ0KPiA+ID4gZmly
bXdhcmUNCj4gPiA+IGxvYWRpbmcgYW5kIHRoZSBpbnRlcnJ1cHQgaGFuZGxlciBydW4gb24gZGlm
ZmVyZW50IGNvcmVzIHRoZW4NCj4gPiA+IHRoaXMgaXMNCj4gPiA+IHJhY3kuDQo+ID4gPiBNYXli
ZSBzb21ldGhpbmcgZWxzZSBjaGFuZ2VkIHRvIG1ha2UgdGhpcyBtb3JlIGxpa2VseT8NCj4gPiA+
IA0KPiA+ID4gV2l0aCB0aGlzIG5ldyBjaGFuZ2Ugc2RtYV9pbnRfaGFuZGxlcigpIGlzIG5vIGxv
bmdlciBjYWxsZWQgZm9yDQo+ID4gPiBjaGFubmVsIDANCj4gPiA+IHJpZ2h0LCBzbyB5b3Ugc2hv
dWxkIGFsc28gcmVtb3ZlIHRoZSBzcGVjaWFsIGhhbmRsaW5nIHRoZXJlLg0KPiA+IFdoYXQncyAn
c3BlY2lhbCBoYW5kbGluZycgc2hvdWxkIGJlIHJlbW92ZWQgaGVyZT8gRG8geW91IG1lYW4gcHV0
DQo+ID4gYmVsb3cNCj4gPiBwaWVjZXMgb2YgeW91ciBwYXRjaCBiYWNrPw0KPiA+IMKgc3RhdGlj
IGludCBzZG1hX2xvYWRfc2NyaXB0KHN0cnVjdCBzZG1hX2VuZ2luZSAqc2RtYSwgdm9pZCAqYnVm
LA0KPiA+IGludA0KPiA+IHNpemUsDQo+ID4gQEAgLTcyNyw5ICs3MjAsOSBAQCBzdGF0aWMgaXJx
cmV0dXJuX3Qgc2RtYV9pbnRfaGFuZGxlcihpbnQgaXJxLA0KPiA+IHZvaWQNCj4gPiAqZGV2X2lk
KQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqB1bnNpZ25lZCBsb25nIHN0YXQ7DQo+ID4gwqANCj4gPiDC
oMKgwqDCoMKgwqDCoMKgc3RhdCA9IHJlYWRsX3JlbGF4ZWQoc2RtYS0+cmVncyArIFNETUFfSF9J
TlRSKTsNCj4gPiAtwqDCoMKgwqDCoMKgwqAvKiBub3QgaW50ZXJlc3RlZCBpbiBjaGFubmVsIDAg
aW50ZXJydXB0cyAqLw0KPiA+IC3CoMKgwqDCoMKgwqDCoHN0YXQgJj0gfjE7DQo+ID4gwqDCoMKg
wqDCoMKgwqDCoHdyaXRlbF9yZWxheGVkKHN0YXQsIHNkbWEtPnJlZ3MgKyBTRE1BX0hfSU5UUik7
DQo+ID4gK8KgwqDCoMKgwqDCoMKgLyogY2hhbm5lbCAwIGlzIHNwZWNpYWwgYW5kIG5vdCBoYW5k
bGVkIGhlcmUsIHNlZQ0KPiA+IHJ1bl9jaGFubmVsMCgpICovDQo+ID4gK8KgwqDCoMKgwqDCoMKg
c3RhdCAmPSB+MTsNCj4gSSB0aGluayB0aGUgInN0YXQgJj0gfjE7IiBjYW4gYmUgcmVtb3ZlZCBj
b21wbGV0ZWx5LiBUaGlzIGJpdCBzaG91bGQNCj4gbmV2ZXINCj4gYmUgc2V0LCBub3cgdGhhdCB0
aGUgaW50ZXJydXB0IGZvciBjaGFubmVsIDAgaXMgZGlzYWJsZWQuDQpPa2F5LCBidXQgdGhhdCdz
IGhhcm1sZXNzLCBtb3Jlb3ZlciwgSSBsaWtlIHlvdXIgY29tbWVudCAnLyogY2hhbm5lbCAwDQpp
cyBzcGVjaWFsIGFuZCBub3QgaGFuZGxlZCBoZXJlLCBzZWUgcnVuX2NoYW5uZWwwKCkgKi8nIHdo
aWNoIHNhaWQNCmNsZWFybHkgY2hhbm5lbDAgaW50ZXJydXB0IGlzIGEgc3BlY2lhbCBvbmUgYW5k
IE5PVCBoYW5kbGVkIGluDQpzZG1hX2ludF9oYW5kbGVyLiBTbyBJJ2QgbGlrZSB0byBrZWVwIGl0
Li4uIMKgDQo+IA0KPiBNaWNoYWVsDQo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
