Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D5DBF479
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 15:53:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vUuU7C0pHeRoKg+fQQ9UPQrxoEu8ZLtgKOkk/EE9XNQ=; b=HbB2X14pij0Idt
	vazqtmORY7yGrJtuF7Y+RnGOw16n76AMHOFM16tnvRJkkuQK6VNTDURe+Aa+per1G8eLS87G0/gW1
	Mw+mRqcwGwgYwyJiftJ/DpM0A9vty9dzUEqrGV5KhBC1eeONn8XaRoyxF+XGg46b57t2Hgbn6O0y3
	mK638tw3XK68TMeIFIJT0DYB4adQ2CSTXuULzm/FwRKd8o5aAlJAjDqlFXvDBO6oNEJ+LG6TgrKGa
	qtda4uMas9jomvZ5Kw8mRsMzb+x4FAvT8jhXr9bBjUAOUZw9/JcG3RSVO98eo9drrajhOgYqSAMv4
	OSFASAXDo4M7YCz+PGkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDUCf-0005H8-RH; Thu, 26 Sep 2019 13:53:06 +0000
Received: from mail-eopbgr740077.outbound.protection.outlook.com
 ([40.107.74.77] helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDUCS-0005GG-PZ
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 13:52:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XRmsEici0kBVcJT6HIu86r1LK+PwTgOk+VRczaQdWtuZqg32fcw+l1HWJu6bSnwL774MYBoUpjn0vFVmAB7WP0SZXU2KLf5CvRqPDg7ch9O9zERk9rVZZtdXnUtrT/RM+w8PFKWM1WZDZ8h4z8LiHDS6r/E8RNhVrUiGKIX3I5HR2gNMdC62tR5LPFfSYWcujmGl24oJfv1vuqTeskKZvWm5JSsn3WgLMmAUa+kbrPYFoiEgZl5mFO4CKTxvdSU7a4vS5kHPAAXtQFakN1cPArNoFAIjUN8yxQUfCTIyt5AuOqdjE0dLX/pqljc5pRDTe2uZY51hcf1OxzQSvduEUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5gRBa9MPkwpHYiEAurWwYDx4CKqS09JbmMVJP335urc=;
 b=bp2+/JQbDPKPrcPJT9CMWKd9TFe4Y5p0KwMUnFXdtOqbAMAc0etZOgqWrNjCpuSzJk998Hn8eTXrXDBmRaa+UYexCSDgu7TSTA31ImLpAO3UTDmKroM0Xv1A0ViNZ8KGa1vOCjgyUBohaNpXfjpKwPji7E+BMudlFvlfCenYUqyqm0b/TPsHFL/RGlO9JFkBJeMk19ZJu84XpQntO51U2mNXhNclzERULCi33WlLJ8S93wo0jrPq6rf4Y2AdtDo5/se+wVTN0zz/E0oS4/zqOxVfUdg/ukVYU/BOZ5N1Hynu5rnXUaWqHRr8TVB8KJTIPp4jT11ZhY2uR2wsEqGBxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=verimatrix.com; dmarc=pass action=none
 header.from=verimatrix.com; dkim=pass header.d=verimatrix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verimatrix.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5gRBa9MPkwpHYiEAurWwYDx4CKqS09JbmMVJP335urc=;
 b=kb+TP9o2tf71NtRammuXoXcqBEFhB1wybFDuXQiqUDt/xqrxdCpDjwQ4gqePdbgrGKwmHWXGboFg9TZH9nlQ/XuopJUdWDhW3LkcDnb4Dx3F9gN6F5oa4X3t8iH9ARmyJHeVYd/pmQtEFRXQZVkxTZCaSF6aYTb8VJjtva+w2tc=
Received: from MN2PR20MB2973.namprd20.prod.outlook.com (52.132.172.146) by
 MN2PR20MB3184.namprd20.prod.outlook.com (52.132.175.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.15; Thu, 26 Sep 2019 13:52:46 +0000
Received: from MN2PR20MB2973.namprd20.prod.outlook.com
 ([fe80::6d07:5f09:97bf:c717]) by MN2PR20MB2973.namprd20.prod.outlook.com
 ([fe80::6d07:5f09:97bf:c717%7]) with mapi id 15.20.2305.017; Thu, 26 Sep 2019
 13:52:46 +0000
From: Pascal Van Leeuwen <pvanleeuwen@verimatrix.com>
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
Subject: RE: chapoly acceleration hardware [Was: Re: [RFC PATCH 00/18] crypto:
 wireguard using the existing crypto API]
Thread-Topic: chapoly acceleration hardware [Was: Re: [RFC PATCH 00/18]
 crypto: wireguard using the existing crypto API]
Thread-Index: AQHVdFs9JAWOqJZwHEeLu51sTp3KFqc97hbA
Date: Thu, 26 Sep 2019 13:52:46 +0000
Message-ID: <MN2PR20MB29733A5E504126B6F4098136CA860@MN2PR20MB2973.namprd20.prod.outlook.com>
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
 <CAHmME9oDhnv7aX77oEERof0TGihk4mDe9B_A3AntaTTVsg9aoA@mail.gmail.com>
 <MN2PR20MB29733663686FB38153BAE7EACA860@MN2PR20MB2973.namprd20.prod.outlook.com>
 <CAHmME9r5m7D-oMU6Lv_ZhEyWmrNscMr5HokzdK0wg2Ayzzbeow@mail.gmail.com>
In-Reply-To: <CAHmME9r5m7D-oMU6Lv_ZhEyWmrNscMr5HokzdK0wg2Ayzzbeow@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pvanleeuwen@verimatrix.com; 
x-originating-ip: [188.204.2.113]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a8ce5082-d9b9-4748-8a51-08d74288cfb5
x-ms-traffictypediagnostic: MN2PR20MB3184:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <MN2PR20MB3184882CAD05E1EB9C19381DCA860@MN2PR20MB3184.namprd20.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0172F0EF77
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39850400004)(366004)(136003)(396003)(376002)(189003)(199004)(13464003)(25786009)(33656002)(8936002)(478600001)(11346002)(66066001)(316002)(76176011)(7416002)(2906002)(54906003)(446003)(476003)(6246003)(186003)(71190400001)(6436002)(26005)(6116002)(4326008)(76116006)(71200400001)(6916009)(66556008)(64756008)(66476007)(66946007)(53546011)(6506007)(66446008)(486006)(14454004)(81166006)(8676002)(15974865002)(9686003)(86362001)(102836004)(229853002)(7696005)(55016002)(305945005)(81156014)(3846002)(99286004)(74316002)(7736002)(14444005)(256004)(52536014)(5660300002)(66574012)(18886075002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR20MB3184;
 H:MN2PR20MB2973.namprd20.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: verimatrix.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3+/2dkU/2O/DlUhq+P7apnMZCkA0yQmJ/NQZlT/bjV+hx18OL55aQcdWksOa80l4GwGqhlgn6oZgzkIwcghA2w1C1dJwJnQJZMIR21BPb3BbUu7yPklsIM7Dk6OfLcolp2yXIkAqkZIizvrct+Rk+s6hfxckka39L2QdxsV//ScjaPZos5HGUSbHzcYhW9LydjthVgqkqZOB1fjcKgOLnXaAIkU4nyfXsrbZ7R6ryvluK85pDwxEGkuxYKJdC7Nya8dNZvMmJqXxOjIacPJDVh9WXDt2YSI0Mfud8EbZk/AZjJD+lXdZkNMLGghgv1CXfuB6iS8U/SFoe7POzmO9XJc9qHmcenPmiOI7FqKVPnbLYxcNyKoXyjI3lvWLM6F5jh8ZifcB9D2iZuUcthnQND8URTvD6IuHzXyREdqbo3k=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: verimatrix.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a8ce5082-d9b9-4748-8a51-08d74288cfb5
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2019 13:52:46.2721 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: dcb260f9-022d-4495-8602-eae51035a0d0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HuaTf29Ob0EzzXk4LCshNMT6KyX+w1l4yEb9U+uJh2tmoLP4o4D53NoQ9NNHVodf+iuOFuzjV7JN3CF2CNKjFMIl3tZCCcQNifEyoCdrsy0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR20MB3184
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_065252_906798_00F586EA 
X-CRM114-Status: GOOD (  28.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.74.77 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.74.77 listed in wl.mailspike.net]
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
Cc: =?utf-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@toke.dk>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg KH <gregkh@linuxfoundation.org>, Eric Biggers <ebiggers@google.com>,
 Dave Taht <dave.taht@gmail.com>, Willy Tarreau <w@1wt.eu>,
 Samuel Neves <sneves@dei.uc.pt>, Will Deacon <will@kernel.org>,
 Netdev <netdev@vger.kernel.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Andy Lutomirski <luto@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 David Miller <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBKYXNvbiBBLiBEb25lbmZlbGQg
PEphc29uQHp4MmM0LmNvbT4NCj4gU2VudDogVGh1cnNkYXksIFNlcHRlbWJlciAyNiwgMjAxOSAx
OjA3IFBNDQo+IFRvOiBQYXNjYWwgVmFuIExlZXV3ZW4gPHB2YW5sZWV1d2VuQHZlcmltYXRyaXgu
Y29tPg0KPiBDYzogQXJkIEJpZXNoZXV2ZWwgPGFyZC5iaWVzaGV1dmVsQGxpbmFyby5vcmc+OyBM
aW51eCBDcnlwdG8gTWFpbGluZyBMaXN0IDxsaW51eC0NCj4gY3J5cHRvQHZnZXIua2VybmVsLm9y
Zz47IGxpbnV4LWFybS1rZXJuZWwgPGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
Zz47DQo+IEhlcmJlcnQgWHUgPGhlcmJlcnRAZ29uZG9yLmFwYW5hLm9yZy5hdT47IERhdmlkIE1p
bGxlciA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD47IEdyZWcgS0gNCj4gPGdyZWdraEBsaW51eGZvdW5k
YXRpb24ub3JnPjsgTGludXMgVG9ydmFsZHMgPHRvcnZhbGRzQGxpbnV4LWZvdW5kYXRpb24ub3Jn
PjsgU2FtdWVsDQo+IE5ldmVzIDxzbmV2ZXNAZGVpLnVjLnB0PjsgRGFuIENhcnBlbnRlciA8ZGFu
LmNhcnBlbnRlckBvcmFjbGUuY29tPjsgQXJuZCBCZXJnbWFubg0KPiA8YXJuZEBhcm5kYi5kZT47
IEVyaWMgQmlnZ2VycyA8ZWJpZ2dlcnNAZ29vZ2xlLmNvbT47IEFuZHkgTHV0b21pcnNraSA8bHV0
b0BrZXJuZWwub3JnPjsNCj4gV2lsbCBEZWFjb24gPHdpbGxAa2VybmVsLm9yZz47IE1hcmMgWnlu
Z2llciA8bWF6QGtlcm5lbC5vcmc+OyBDYXRhbGluIE1hcmluYXMNCj4gPGNhdGFsaW4ubWFyaW5h
c0Bhcm0uY29tPjsgV2lsbHkgVGFycmVhdSA8d0Axd3QuZXU+OyBOZXRkZXYgPG5ldGRldkB2Z2Vy
Lmtlcm5lbC5vcmc+Ow0KPiBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAdG9rZS5kaz47
IERhdmUgVGFodCA8ZGF2ZS50YWh0QGdtYWlsLmNvbT4NCj4gU3ViamVjdDogY2hhcG9seSBhY2Nl
bGVyYXRpb24gaGFyZHdhcmUgW1dhczogUmU6IFtSRkMgUEFUQ0ggMDAvMThdIGNyeXB0bzogd2ly
ZWd1YXJkDQo+IHVzaW5nIHRoZSBleGlzdGluZyBjcnlwdG8gQVBJXQ0KPiANCj4gW0NDICt3aWxs
eSwgdG9rZSwgZGF2ZSwgbmV0ZGV2XQ0KPiANCj4gSGkgUGFzY2FsDQo+IA0KPiBPbiBUaHUsIFNl
cCAyNiwgMjAxOSBhdCAxMjoxOSBQTSBQYXNjYWwgVmFuIExlZXV3ZW4NCj4gPHB2YW5sZWV1d2Vu
QHZlcmltYXRyaXguY29tPiB3cm90ZToNCj4gPiBBY3R1YWxseSwgdGhhdCBhc3N1bXB0aW9uIGlz
IGZhY3R1YWxseSB3cm9uZy4gSSBkb24ndCBrbm93IGlmIGFueXRoaW5nDQo+ID4gaXMgKnB1Ymxp
Y2x5KiBhdmFpbGFibGUsIGJ1dCBJIGNhbiBhc3N1cmUgeW91IHRoZSBzaWxpY29uIGlzIHJ1bm5p
bmcgaW4NCj4gPiBsYWJzIGFscmVhZHkuIEFuZCBzb21ldGhpbmcgd2lsbCBiZSBwdWJsaWNseSBh
dmFpbGFibGUgZWFybHkgbmV4dCB5ZWFyDQo+ID4gYXQgdGhlIGxhdGVzdC4gV2hpY2ggY291bGQg
bmljZWx5IGNvaW5jaWRlIHdpdGggaGF2aW5nIFdpcmVndWFyZCBzdXBwb3J0DQo+ID4gaW4gdGhl
IGtlcm5lbCAod2hpY2ggSSB3b3VsZCBhbHNvIGxpa2UgdG8gc2VlIGhhcHBlbiBCVFcpIC4uLg0K
PiA+DQo+ID4gTm90ICJhdCBzb21lIHBvaW50Ii4gSXQgd2lsbC4gVmVyeSBzb29uLiBNYXliZSBu
b3QgaW4gY29uc3VtZXIgb3Igc2VydmVyDQo+ID4gQ1BVcywgYnV0IGRlZmluaXRlbHkgaW4gdGhl
IGVtYmVkZGVkIChuZXR3b3JraW5nKSBzcGFjZS4NCj4gPiBBbmQgaXQgKndpbGwqIGJlIG11Y2gg
ZmFzdGVyIHRoYW4gdGhlIGVtYmVkZGVkIENQVSBuZXh0IHRvIGl0LCBzbyBpdCB3aWxsDQo+ID4g
YmUgd29ydGggdXNpbmcgaXQgZm9yIHNvbWV0aGluZyBsaWtlIGJ1bGsgcGFja2V0IGVuY3J5cHRp
b24uDQo+IA0KPiBTdXBlciEgSSB3YXMgd29uZGVyaW5nIGlmIHlvdSBjb3VsZCBzcGVhayBhIGJp
dCBtb3JlIGFib3V0IHRoZQ0KPiBpbnRlcmZhY2UuIE15IGJpZ2dlc3QgcXVlc3Rpb25zIHN1cnJv
dW5kIGxhdGVuY3kuIFdpbGwgaXQgYmUNCj4gc3luY2hyb25vdXMgb3IgYXN5bmNocm9ub3VzPw0K
Pg0KVGhlIGhhcmR3YXJlIGJlaW5nIGV4dGVybmFsIHRvIHRoZSBDUFUgYW5kIHJ1bm5pbmcgaW4g
cGFyYWxsZWwgd2l0aCBpdCwNCm9idmlvdXNseSBhc3luY2hyb25vdXMuDQoNCj4gSWYgdGhlIGxh
dHRlciwgd2h5PyANCj4NCkJlY2F1c2UsIGFzIHlvdSBwcm9iYWJseSBhbHJlYWR5IGd1ZXNzZWQs
IHRoZSByb3VuZC10cmlwIGxhdGVuY3kgaXMgd2F5DQpsb25nZXIgdGhhbiB0aGUgYWN0dWFsIHBy
b2Nlc3NpbmcgdGltZSwgYXQgbGVhc3QgZm9yIHNtYWxsIHBhY2tldHMuDQoNClBhcnRseSBiZWNh
dXNlIHRoZSBvbmx5IHdheSB0byBjb21tdW5pY2F0ZSBiZXR3ZWVuIHRoZSBDUFUgYW5kIHRoZSBI
VyANCmFjY2VsZXJhdG9yICh3aGV0aGVyIHRoYXQgaXMgY3J5cHRvLCBhIEdQVSwgYSBOSUMsIGV0
Yy4pIHRoYXQgZG9lc24ndA0Ka2VlcCB0aGUgQ1BVIGJ1c3kgbW92aW5nIGRhdGEgaXMgdGhyb3Vn
aCBtZW1vcnksIHdpdGggdGhlIEhXIGRvaW5nIERNQS4NCkFuZCwgYXMgYW55IHByb2dyYW1tZXIg
c2hvdWxkIG5vdywgcm91bmQgdHJpcCB0aW1lcyB0byBtZW1vcnkgYXJlIGh1Z2UNCnJlbGF0aXZl
IHRvIHRoZSBwcm9jZXNzaW5nIHNwZWVkLg0KDQpBbmQgcGFydGx5IGJlY2F1c2UgdGhlc2UgYWNj
ZWxlcmF0b3JzIGFyZSB2ZXJ5IHNpbWlsYXIgdG8gQ1BVJ3MgaW4NCnRlcm1zIG9mIGFyY2hpdGVj
dHVyZSwgZG9pbmcgcGlwZWxpbmVkIHByb2Nlc3NpbmcgYW5kIGhhdmluZyBtdWx0aXBsZQ0Kb2Yg
c3VjaCBwaXBlbGluZXMgaW4gcGFyYWxsZWwuIEV4Y2VwdCB0aGF0IHRoZXNlIHBpcGVsaW5lcyBh
cmUgbm90DQp3b3JraW5nIG9uIGxvdy1sZXZlbCBpbnN0cnVjdGlvbnMgYnV0IG9uIGZ1bGwgcGFj
a2V0cy9ibG9ja3MuIFNvIHRoZXkNCm5lZWQgdG8gaGF2ZSBtYW55IHBhY2tldHMgaW4gZmxpZ2h0
IHRvIGtlZXAgdGhvc2UgcGlwZWxpbmVzIGZ1bGx5DQpvY2N1cGllZC4gQW5kIHBhY2tldHMgbmVl
ZCB0byBtb3ZlIHRocm91Z2ggdGhlIHZhcmlvdXMgcGlwZWxpbmUgc3RhZ2VzLA0Kc28gdGhleSBp
bmN1ciB0aGUgdGltZSBuZWVkZWQgdG8gcHJvY2VzcyB0aGVtIG11bHRpcGxlIHRpbWVzLiAoanVz
dCANCmxpa2UgZS5nLiBhIG11bHRpcGx5IGluc3RydWN0aW9uIHdpdGggYSB0aHJvdWdocHV0IG9m
IDEgcGVyIGN5Y2xlDQphY3R1YWxseSBtYXkgbmVlZCA0IG9yIG1vcmUgY3ljbGVzIHRvIGFjdHVh
bGx5IHByb3ZpZGUgaXRzIHJlc3VsdCkNCg0KQ291bGQgeW91IGRvIHRoYXQgZnJvbSBhIHN5bmNo
cm9ub3VzIGludGVyZmFjZT8gSW4gdGhlb3J5LCBwcm9iYWJseSwgDQppZiB5b3Ugd291bGQgc3Bh
d24gYSBuZXcgdGhyZWFkIGZvciBldmVyeSBuZXcgcGFja2V0IGFycml2aW5nIGFuZA0KcmVseSBv
biB0aGUgc2NoZWR1bGVyIHRvIHByZWVtcHQgdGhlIHdhaXRpbmcgdGhyZWFkcy4gQnV0IHlvdSdk
IG5lZWQNCmFzIG1hbnkgdGhyZWFkcyBhcyB0aGUgSFcgIGFjY2VsZXJhdG9yIGNhbiBoYXZlIHBh
Y2tldHMgaW4gZmxpZ2h0LA0Kd2hpbGUgYW4gYXN5bmMgd291bGQgbmVlZCBvbmx5IDIgdGhyZWFk
czogb25lIHRvIGhhbmRsZSB0aGUgaW5wdXQgdG8NCnRoZSBhY2NlbGVyYXRvciBhbmQgb25lIHRv
IGhhbmRsZSB0aGUgb3V0cHV0IChvciBhdCBtb3N0IG9uZSB0aHJlYWQNCnBlciBDUFUsIGlmIHlv
dSB3YW50IHRvIGRpdmlkZSB0aGUgd29ya2xvYWQpDQoNClN1Y2ggYSBtYW55LXRocmVhZCBhcHBy
b2FjaCBzZWVtcyB2ZXJ5IGluZWZmaWNpZW50IHRvIG1lLg0KDQo+IFdoYXQgd2lsbCBpdHMgbGF0
ZW5jaWVzIGJlPw0KPg0KRGVwZW5kcyB2ZXJ5IG11Y2ggb24gdGhlIHNwZWNpZmljIGludGVncmF0
aW9uIHNjZW5hcmlvIChpLmUuIGJ1cyANCnNwZWVkLCBidXMgaGllcmFyY2h5LCBjYWNoZSBoaWVy
YXJjaHksIG1lbW9yeSBzcGVlZCwgZXRjLikgYnV0IG9uDQp0aGUgb3JkZXIgb2YgYSBmZXcgdGhv
dXNhbmQgQ1BVIGNsb2NrcyBpcyBub3QgdW5oZWFyZCBvZi4NCldoaWNoIGlzIGFuIGV0ZXJuaXR5
IGZvciB0aGUgQ1BVLCBidXQgc3RpbGwgb25seSBhIGZldyB1U2VjIGluDQpodW1hbiB0aW1lLiBO
b3QgYSBwcm9ibGVtIHVubGVzcyB5b3UncmUgYSBoaWdoLWZyZXF1ZW5jeSB0cmFkZXIgYW5kDQpl
dmVyeSBucyBjb3VudHMgLi4uDQpJdCdzIG5vdCBsaWtlIHRoZSBDUFUgd291bGQgcHJvY2VzcyB0
aG9zZSBwYWNrZXRzIGluIHplcm8gdGltZS4NCg0KPiBIb3cgZGVlcCB3aWxsIGl0cyBidWZmZXJz
IGJlPyANCj4NClRoYXQgb2YgY291cnNlIGRlcGVuZHMgb24gdGhlIHNwZWNpZmljIGFjY2VsZXJh
dG9yIGltcGxlbWVudGF0aW9uLA0KYnV0IHBvc3NpYmx5IGRvemVucyBvZiBzbWFsbCBwYWNrZXRz
IGluIG91ciBjYXNlLCBhcyB5b3UnZCBuZWVkIA0KYXQgbGVhc3Qgd2lkdGggeCBkZXB0aCBwYWNr
ZXRzIGluIHRoZXJlIHRvIGtlZXAgdGhlIHBpcGVzIGJ1c3kuDQpKdXN0IGxpa2UgYSBtb2Rlcm4g
Q1BVIG5lZWRzIGh1bmRyZWRzIG9mIGluc3RydWN0aW9ucyBpbiBmbGlnaHQNCnRvIGtlZXAgYWxs
IGl0cyByZXNvdXJjZXMgYnVzeS4NCg0KPiBUaGUgcmVhc29uIEkgYXNrIGlzIHRoYXQgYQ0KPiBs
b3Qgb2YgY3J5cHRvIGFjY2VsZXJhdGlvbiBoYXJkd2FyZSBvZiB0aGUgcGFzdCBoYXMgYmVlbiBm
YXN0IGFuZA0KPiBoYXZpbmcgdmVyeSBkZWVwIGJ1ZmZlcnMsIGJ1dCBhdCBncmVhdCBleHBlbnNl
IG9mIGxhdGVuY3kuDQo+DQpEZWZpbmUgImdyZWF0IGV4cGVuc2UiLiBFdmVyeXRoaW5nIGlzIHJl
bGF0aXZlLiBUaGUgbGF0ZW5jeSBpcyB2ZXJ5DQpoaWdoIGNvbXBhcmVkIHRvIHBlci1wYWNrZXQg
cHJvY2Vzc2luZyB0aW1lIGJ1dCBhdCB0aGUgc2FtZSB0aW1lIGl0J3MNCm9ubHkgb24gdGhlIG9y
ZGVyIG9mIGEgZmV3IHVTZWMuIFdoaWNoIG1heSBub3QgZXZlbiBiZSBzaWduaWZpY2FudCBvbg0K
dGhlIHRvdGFsIHRpbWUgaXQgdGFrZXMgZm9yIHRoZSBwYWNrZXQgdG8gdHJhdmVsIGZyb20gaW5w
dXQgTUFDIHRvDQpvdXRwdXQgTUFDLCBjb25zaWRlcmluZyB0aGUgQ1BVIHdpbGwgc3RpbGwgbmVl
ZCB0byBwYXJzZSBhbmQgY2xhc3NpZnkNCml0IGFuZCBkbyBwcmUtIGFuZCBwb3N0cHJvY2Vzc2lu
ZyBvbiBpdC4NCg0KPiBJbiB0aGUgbmV0d29ya2luZyBjb250ZXh0LCBrZWVwaW5nIGxhdGVuY3kg
bG93IGlzIHByZXR0eSBpbXBvcnRhbnQuDQo+DQpJJ3ZlIGJlZW4gZG9pbmcgdGhpcyBmb3IgSVBz
ZWMgZm9yIG5lYXJseSAyMCB5ZWFycyBub3cgYW5kIEkndmUgbmV2ZXINCmhlYXJkIGFueW9uZSBj
b21wbGFpbiBhYm91dCBvdXIgbGF0ZW5jeSwgc28gaXQgbXVzdCBiZSBPSy4NCg0KV2UncmUgYWxz
byBkb2luZyAoZnVsbHkgaW5saW5lLCBubyBDUFUgaW52b2x2ZWQpIE1BQ3NlYyBjb3Jlcywgd2hp
Y2gNCm9wZXJhdGUgYXQgbGF5ZXIgMiBhbmQgSSBrbm93IGl0J3MgYSBjb25jZXJuIHRoZXJlIGZv
ciB2ZXJ5IHNwZWNpZmljDQp1c2UgY2FzZXMgKGhpZ2ggZnJlcXVlbmN5IHRyYWRpbmcsIHByZWNp
c2lvbiB0aW1lIHByb3RvY29sLCAuLi4pLg0KRm9yICJub3JtYWwiIFZQTidzIHRob3VnaCwgYSBm
ZXcgdVNlYyBtb3JlIG9yIGxlc3Mgc2hvdWxkIGJlIGEgbm9uLWlzc3VlLg0KDQo+IEFscmVhZHkN
Cj4gV2lyZUd1YXJkIGlzIG11bHRpLXRocmVhZGVkIHdoaWNoIGlzbid0IHN1cGVyIGdyZWF0IGFs
bCB0aGUgdGltZSBmb3INCj4gbGF0ZW5jeSAoaW1wcm92ZW1lbnRzIGFyZSBhIHdvcmsgaW4gcHJv
Z3Jlc3MpLiBJZiB5b3UncmUgaW52b2x2ZWQgd2l0aA0KPiB0aGUgZGVzaWduIG9mIHRoZSBoYXJk
d2FyZSwgcGVyaGFwcyB0aGlzIGlzIHNvbWV0aGluZyB5b3UgY2FuIGhlbHANCj4gZW5zdXJlIHdp
bmRzIHVwIHdvcmtpbmcgd2VsbD8gRm9yIGV4YW1wbGUsIEFFUy1OSSBpcyBzdHJhaWdodGZvcndh
cmQNCj4gYW5kIGdvb2QsIGJ1dCBJbnRlbCBjYW4gZG8gdGhhdCBiZWNhdXNlIHRoZXkgYXJlIHRo
ZSBDUFUuIEl0IHNvdW5kcw0KPiBsaWtlIHlvdXIgc2lsaWNvbiB3aWxsIGJlIGFkamFjZW50LiBI
b3cgZG8geW91IGVudmlzaW9uIHRoaXMgd29ya2luZw0KPiBpbiBhIGxvdyBsYXRlbmN5IGVudmly
b25tZW50Pw0KPiANCkRlcGVuZHMgb24gaG93IGxvdyBsb3ctbGF0ZW5jeSBpcy4gSWYgeW91IHJl
YWxseSBuZWVkIG1pbmltYWwgbGF0ZW5jeSwNCnlvdSBuZWVkIGFuIGlubGluZSBpbXBsZW1lbnRh
dGlvbi4gV2hpY2ggd2UgY2FuIGFsc28gcHJvdmlkZSwgQlRXIDotKQ0KDQpSZWdhcmRzLA0KUGFz
Y2FsIHZhbiBMZWV1d2VuDQpTaWxpY29uIElQIEFyY2hpdGVjdCwgTXVsdGktUHJvdG9jb2wgRW5n
aW5lcyBAIFZlcmltYXRyaXgNCnd3dy5pbnNpZGVzZWN1cmUuY29tDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
