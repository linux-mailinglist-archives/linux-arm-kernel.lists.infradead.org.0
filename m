Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87DC2C0508
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 14:19:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cPYVaj23NGM/sbVf/jnqntL+M6IHfi9GAYPzj/WuFz4=; b=Vc//XVqGNeg6Ir
	jE6fhHpK2QdasiPTWN1RPb0YafZMXEAUuk8h2t1LxpA1rRkKAJKgFk+52XbG1XIJPo3ZGQXjHgtKF
	nnMCFPVfjtdnf0wPUUCMqIiQn2FT+yzbCF1eQFNjktMxH/LzEVcuFrIOzjEVXpRtjWsT6aWMDjwg0
	k75mQvRXzeQOmJrJzDfeXDYfrVFa7cfTe1A4RA2Azv3Rr9AG3Iqznk6PCp3mSrgSGNKRmYIgJ0Jkg
	cQ9PfT+gXa6J0YALVWLvVUgCDNgDlUOKt7t8cP+bKQ+dW6GGpM6nNw6OYL+VBa4DqP7a1pCYf1zNL
	rb5D9f5RXBnT8tBsNjlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDpDL-0006PG-T6; Fri, 27 Sep 2019 12:19:11 +0000
Received: from mail-eopbgr790083.outbound.protection.outlook.com
 ([40.107.79.83] helo=NAM03-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDpDA-0006O4-B5
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 12:19:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JNZrT9qtaYGIoPN+jQ3YS39xNw9YP4TE4QIRRK9OLuDdIKc+9YmhqzjKJqsvALyISz3UWTa4qV0d/82Bi1ZZUNm0lOCfTpYatI5rzxSY6DswUFqNterBKGDzDTh0oWvvo8MJ0HNOnQxwAMNlF9WnZPjDKI/eOENakpOC2zkfgLvB0EGRcIwRdeAuOBrcvLp1b9VR3PB8SXVhUt1WtxJytzW1kxjpvNpIkV+bbLITr6H7fiIJylpmiGUYScQ/8wV04ywaHpicAzRlv1BpkX+bI9uIsIoNuxYt+qEfevPii3mHv/aiuhB/VSqLCPfrxakLArwr7TJz0mMk1JbZhVhaXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MIG5IcxhD3GCV0LQ+RcFZHw0tlmQyq+pvU7ThnCSnXQ=;
 b=URJ+5eP/OOLdn4hu5vWLQuUmFSoGnQzATHQ05ySAZE1sgVz7RhAzYBrjtjEie3ejLyxtLWHkYuPUBr8oLJ+f5WK3nlsSq+pe1axFbinZ2Ccw0lbE9Aqs6T83QL8FLsbNteTVLTIEHiwhuRckqYNfIvgMsMXL/4HGR3OKwNu2866+KaE8VIo/U44J3wLij5iOnCweoLban5G3kONaIwbY9+b09uzxPYxrDABThNuBhaKBCW6EnLGfcRFo35Fs7uprDgBYNT1YNSsqXIR2CucUILOc6h0yuVw+kVPU9efxYCr+FLKmRtJ7Hn3FKE2ni69+agsDE3zLuDEeNzC7K0qlCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=verimatrix.com; dmarc=pass action=none
 header.from=verimatrix.com; dkim=pass header.d=verimatrix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verimatrix.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MIG5IcxhD3GCV0LQ+RcFZHw0tlmQyq+pvU7ThnCSnXQ=;
 b=L6iKMAWwRDIPYkGvY/Z6oNoIhhsHQGDUtFZF3B1jLle4f9/Tfgmy+z3a9oXWHwXx6ZQWsliDv5Mo8HvMwIhznRrM7ecJf/0UgzLCuzzx2EVNbk7d3RqdOREFFA8PKnJ+D7Hp0y1dJimBvhitJTcWAfES8FdxdZynBvn/j1KSw1E=
Received: from MN2PR20MB2973.namprd20.prod.outlook.com (52.132.172.146) by
 MN2PR20MB2925.namprd20.prod.outlook.com (10.255.7.94) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.18; Fri, 27 Sep 2019 12:18:56 +0000
Received: from MN2PR20MB2973.namprd20.prod.outlook.com
 ([fe80::6d07:5f09:97bf:c717]) by MN2PR20MB2973.namprd20.prod.outlook.com
 ([fe80::6d07:5f09:97bf:c717%7]) with mapi id 15.20.2305.017; Fri, 27 Sep 2019
 12:18:56 +0000
From: Pascal Van Leeuwen <pvanleeuwen@verimatrix.com>
To: Dave Taht <dave.taht@gmail.com>
Subject: RE: chapoly acceleration hardware [Was: Re: [RFC PATCH 00/18] crypto:
 wireguard using the existing crypto API]
Thread-Topic: chapoly acceleration hardware [Was: Re: [RFC PATCH 00/18]
 crypto: wireguard using the existing crypto API]
Thread-Index: AQHVdFs9JAWOqJZwHEeLu51sTp3KFqc97hbAgACpSoCAANgdcA==
Date: Fri, 27 Sep 2019 12:18:55 +0000
Message-ID: <MN2PR20MB29739A0D9BBF9CA5AB00CB65CA810@MN2PR20MB2973.namprd20.prod.outlook.com>
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
 <CAHmME9oDhnv7aX77oEERof0TGihk4mDe9B_A3AntaTTVsg9aoA@mail.gmail.com>
 <MN2PR20MB29733663686FB38153BAE7EACA860@MN2PR20MB2973.namprd20.prod.outlook.com>
 <CAHmME9r5m7D-oMU6Lv_ZhEyWmrNscMr5HokzdK0wg2Ayzzbeow@mail.gmail.com>
 <MN2PR20MB29733A5E504126B6F4098136CA860@MN2PR20MB2973.namprd20.prod.outlook.com>
 <CAA93jw5__kXT-WAPBjseZP1kkkftH5nfVOiFA6BZrNS9sLGdoQ@mail.gmail.com>
In-Reply-To: <CAA93jw5__kXT-WAPBjseZP1kkkftH5nfVOiFA6BZrNS9sLGdoQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pvanleeuwen@verimatrix.com; 
x-originating-ip: [188.204.2.113]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e09b059b-6636-4b34-cfa9-08d74344de37
x-ms-traffictypediagnostic: MN2PR20MB2925:
x-ms-exchange-purlcount: 5
x-microsoft-antispam-prvs: <MN2PR20MB29256890F49DD3B9CC5F9026CA810@MN2PR20MB2925.namprd20.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0173C6D4D5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(136003)(376002)(396003)(39850400004)(189003)(199004)(13464003)(76116006)(66946007)(66446008)(66556008)(64756008)(66476007)(15974865002)(6246003)(9686003)(7416002)(71200400001)(3846002)(66066001)(55016002)(6116002)(6306002)(229853002)(6436002)(305945005)(99286004)(316002)(74316002)(86362001)(2906002)(14444005)(81166006)(54906003)(966005)(8936002)(76176011)(53546011)(486006)(14454004)(7696005)(478600001)(476003)(8676002)(71190400001)(6916009)(4326008)(7736002)(25786009)(6506007)(81156014)(102836004)(26005)(5660300002)(52536014)(256004)(33656002)(66574012)(186003)(11346002)(446003)(18886075002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR20MB2925;
 H:MN2PR20MB2973.namprd20.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: verimatrix.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wa3cerXCk5KCxni3F82BKGPZgrAeZ6CgOxs7/kPZMs6aoDt2WOuc6SENDFwQqFniM9mh4Ez0VGDpmZEsIF1fdWI8YFByIFonEu6OYvJf7QBI9uilfb9qLdvTfmzDWZ4+r94jkgJoTxZyTjog2oOr8iXaSgGctJkz3+mIYDMvpTmZzLYPz+tdJGX83fzJuh0Wdjc8POcyZRGhEmMSFTeuPNPl0mU4+mr9xO77Poy25xOgex9D5whAunYFSNfvI2nvm+mNEk4PETDlmrd20Cm91FcrV8lHeKqzEXAgILLhaZL6ZDv9sodFTLKFLOUKhePsWLr9bN6gm77waRjUO4bdEWoI402BUUr4srRgat5OdB/+QAE3hmTiK/NjTn9lTm2MBrGhjS5cpJCiqHozan8Pc6GtAtS1unpJ0VV9EyjRZGwAo/Z8ZLUTIwrHAW9xdeBvmWjK3Kvgbg84Wd9WVjvStw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: verimatrix.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e09b059b-6636-4b34-cfa9-08d74344de37
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2019 12:18:55.9582 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: dcb260f9-022d-4495-8602-eae51035a0d0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ReGDGfZPx4LDduUnd5xOOF1IAYJ7CiVokwReYYLbqofUQlnyl3JUWXAX4Y/Y0FggGWiL45vHyMsoxXWTgi1X0CG4f9Nz31McEaDmDcN/EDk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR20MB2925
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_051900_529415_A313C81F 
X-CRM114-Status: GOOD (  31.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.79.83 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.79.83 listed in wl.mailspike.net]
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
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>,
 =?utf-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@toke.dk>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg KH <gregkh@linuxfoundation.org>, Eric Biggers <ebiggers@google.com>,
 Willy Tarreau <w@1wt.eu>, Samuel Neves <sneves@dei.uc.pt>,
 Will Deacon <will@kernel.org>, Netdev <netdev@vger.kernel.org>,
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

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IERhdmUgVGFodCA8ZGF2ZS50
YWh0QGdtYWlsLmNvbT4NCj4gU2VudDogRnJpZGF5LCBTZXB0ZW1iZXIgMjcsIDIwMTkgMToxNCBB
TQ0KPiBUbzogUGFzY2FsIFZhbiBMZWV1d2VuIDxwdmFubGVldXdlbkB2ZXJpbWF0cml4LmNvbT4N
Cj4gQ2M6IEphc29uIEEuIERvbmVuZmVsZCA8SmFzb25AengyYzQuY29tPjsgQXJkIEJpZXNoZXV2
ZWwgPGFyZC5iaWVzaGV1dmVsQGxpbmFyby5vcmc+Ow0KPiBMaW51eCBDcnlwdG8gTWFpbGluZyBM
aXN0IDxsaW51eC1jcnlwdG9Admdlci5rZXJuZWwub3JnPjsgbGludXgtYXJtLWtlcm5lbCA8bGlu
dXgtYXJtLQ0KPiBrZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZz47IEhlcmJlcnQgWHUgPGhlcmJl
cnRAZ29uZG9yLmFwYW5hLm9yZy5hdT47IERhdmlkIE1pbGxlcg0KPiA8ZGF2ZW1AZGF2ZW1sb2Z0
Lm5ldD47IEdyZWcgS0ggPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPjsgTGludXMgVG9ydmFs
ZHMNCj4gPHRvcnZhbGRzQGxpbnV4LWZvdW5kYXRpb24ub3JnPjsgU2FtdWVsIE5ldmVzIDxzbmV2
ZXNAZGVpLnVjLnB0PjsgRGFuIENhcnBlbnRlcg0KPiA8ZGFuLmNhcnBlbnRlckBvcmFjbGUuY29t
PjsgQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT47IEVyaWMgQmlnZ2Vycw0KPiA8ZWJpZ2dl
cnNAZ29vZ2xlLmNvbT47IEFuZHkgTHV0b21pcnNraSA8bHV0b0BrZXJuZWwub3JnPjsgV2lsbCBE
ZWFjb24gPHdpbGxAa2VybmVsLm9yZz47DQo+IE1hcmMgWnluZ2llciA8bWF6QGtlcm5lbC5vcmc+
OyBDYXRhbGluIE1hcmluYXMgPGNhdGFsaW4ubWFyaW5hc0Bhcm0uY29tPjsgV2lsbHkgVGFycmVh
dQ0KPiA8d0Axd3QuZXU+OyBOZXRkZXYgPG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc+OyBUb2tlIEjD
uGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAdG9rZS5kaz4NCj4gU3ViamVjdDogUmU6IGNoYXBvbHkg
YWNjZWxlcmF0aW9uIGhhcmR3YXJlIFtXYXM6IFJlOiBbUkZDIFBBVENIIDAwLzE4XSBjcnlwdG86
IHdpcmVndWFyZA0KPiB1c2luZyB0aGUgZXhpc3RpbmcgY3J5cHRvIEFQSV0NCj4gDQo+IE9uIFRo
dSwgU2VwIDI2LCAyMDE5IGF0IDY6NTIgQU0gUGFzY2FsIFZhbiBMZWV1d2VuDQo+IDxwdmFubGVl
dXdlbkB2ZXJpbWF0cml4LmNvbT4gd3JvdGU6DQo+ID4NCj4gPiA+IC0tLS0tT3JpZ2luYWwgTWVz
c2FnZS0tLS0tDQo+ID4gPiBGcm9tOiBKYXNvbiBBLiBEb25lbmZlbGQgPEphc29uQHp4MmM0LmNv
bT4NCj4gPiA+IFNlbnQ6IFRodXJzZGF5LCBTZXB0ZW1iZXIgMjYsIDIwMTkgMTowNyBQTQ0KPiA+
ID4gVG86IFBhc2NhbCBWYW4gTGVldXdlbiA8cHZhbmxlZXV3ZW5AdmVyaW1hdHJpeC5jb20+DQo+
ID4gPiBDYzogQXJkIEJpZXNoZXV2ZWwgPGFyZC5iaWVzaGV1dmVsQGxpbmFyby5vcmc+OyBMaW51
eCBDcnlwdG8gTWFpbGluZyBMaXN0IDxsaW51eC0NCj4gPiA+IGNyeXB0b0B2Z2VyLmtlcm5lbC5v
cmc+OyBsaW51eC1hcm0ta2VybmVsIDxsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmc+Ow0KPiA+ID4gSGVyYmVydCBYdSA8aGVyYmVydEBnb25kb3IuYXBhbmEub3JnLmF1PjsgRGF2
aWQgTWlsbGVyIDxkYXZlbUBkYXZlbWxvZnQubmV0PjsgR3JlZw0KPiBLSA0KPiA+ID4gPGdyZWdr
aEBsaW51eGZvdW5kYXRpb24ub3JnPjsgTGludXMgVG9ydmFsZHMgPHRvcnZhbGRzQGxpbnV4LWZv
dW5kYXRpb24ub3JnPjsgU2FtdWVsDQo+ID4gPiBOZXZlcyA8c25ldmVzQGRlaS51Yy5wdD47IERh
biBDYXJwZW50ZXIgPGRhbi5jYXJwZW50ZXJAb3JhY2xlLmNvbT47IEFybmQgQmVyZ21hbm4NCj4g
PiA+IDxhcm5kQGFybmRiLmRlPjsgRXJpYyBCaWdnZXJzIDxlYmlnZ2Vyc0Bnb29nbGUuY29tPjsg
QW5keSBMdXRvbWlyc2tpDQo+IDxsdXRvQGtlcm5lbC5vcmc+Ow0KPiA+ID4gV2lsbCBEZWFjb24g
PHdpbGxAa2VybmVsLm9yZz47IE1hcmMgWnluZ2llciA8bWF6QGtlcm5lbC5vcmc+OyBDYXRhbGlu
IE1hcmluYXMNCj4gPiA+IDxjYXRhbGluLm1hcmluYXNAYXJtLmNvbT47IFdpbGx5IFRhcnJlYXUg
PHdAMXd0LmV1PjsgTmV0ZGV2DQo+IDxuZXRkZXZAdmdlci5rZXJuZWwub3JnPjsNCj4gPiA+IFRv
a2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUB0b2tlLmRrPjsgRGF2ZSBUYWh0IDxkYXZlLnRh
aHRAZ21haWwuY29tPg0KPiA+ID4gU3ViamVjdDogY2hhcG9seSBhY2NlbGVyYXRpb24gaGFyZHdh
cmUgW1dhczogUmU6IFtSRkMgUEFUQ0ggMDAvMThdIGNyeXB0bzogd2lyZWd1YXJkDQo+ID4gPiB1
c2luZyB0aGUgZXhpc3RpbmcgY3J5cHRvIEFQSV0NCj4gPiA+DQo+ID4gPiBbQ0MgK3dpbGx5LCB0
b2tlLCBkYXZlLCBuZXRkZXZdDQo+ID4gPg0KPiA+ID4gSGkgUGFzY2FsDQo+ID4gPg0KPiA+ID4g
T24gVGh1LCBTZXAgMjYsIDIwMTkgYXQgMTI6MTkgUE0gUGFzY2FsIFZhbiBMZWV1d2VuDQo+ID4g
PiA8cHZhbmxlZXV3ZW5AdmVyaW1hdHJpeC5jb20+IHdyb3RlOg0KPiA+ID4gPiBBY3R1YWxseSwg
dGhhdCBhc3N1bXB0aW9uIGlzIGZhY3R1YWxseSB3cm9uZy4gSSBkb24ndCBrbm93IGlmIGFueXRo
aW5nDQo+ID4gPiA+IGlzICpwdWJsaWNseSogYXZhaWxhYmxlLCBidXQgSSBjYW4gYXNzdXJlIHlv
dSB0aGUgc2lsaWNvbiBpcyBydW5uaW5nIGluDQo+ID4gPiA+IGxhYnMgYWxyZWFkeS4gQW5kIHNv
bWV0aGluZyB3aWxsIGJlIHB1YmxpY2x5IGF2YWlsYWJsZSBlYXJseSBuZXh0IHllYXINCj4gPiA+
ID4gYXQgdGhlIGxhdGVzdC4gV2hpY2ggY291bGQgbmljZWx5IGNvaW5jaWRlIHdpdGggaGF2aW5n
IFdpcmVndWFyZCBzdXBwb3J0DQo+ID4gPiA+IGluIHRoZSBrZXJuZWwgKHdoaWNoIEkgd291bGQg
YWxzbyBsaWtlIHRvIHNlZSBoYXBwZW4gQlRXKSAuLi4NCj4gPiA+ID4NCj4gPiA+ID4gTm90ICJh
dCBzb21lIHBvaW50Ii4gSXQgd2lsbC4gVmVyeSBzb29uLiBNYXliZSBub3QgaW4gY29uc3VtZXIg
b3Igc2VydmVyDQo+ID4gPiA+IENQVXMsIGJ1dCBkZWZpbml0ZWx5IGluIHRoZSBlbWJlZGRlZCAo
bmV0d29ya2luZykgc3BhY2UuDQo+ID4gPiA+IEFuZCBpdCAqd2lsbCogYmUgbXVjaCBmYXN0ZXIg
dGhhbiB0aGUgZW1iZWRkZWQgQ1BVIG5leHQgdG8gaXQsIHNvIGl0IHdpbGwNCj4gPiA+ID4gYmUg
d29ydGggdXNpbmcgaXQgZm9yIHNvbWV0aGluZyBsaWtlIGJ1bGsgcGFja2V0IGVuY3J5cHRpb24u
DQo+ID4gPg0KPiA+ID4gU3VwZXIhIEkgd2FzIHdvbmRlcmluZyBpZiB5b3UgY291bGQgc3BlYWsg
YSBiaXQgbW9yZSBhYm91dCB0aGUNCj4gPiA+IGludGVyZmFjZS4gTXkgYmlnZ2VzdCBxdWVzdGlv
bnMgc3Vycm91bmQgbGF0ZW5jeS4gV2lsbCBpdCBiZQ0KPiA+ID4gc3luY2hyb25vdXMgb3IgYXN5
bmNocm9ub3VzPw0KPiA+ID4NCj4gPiBUaGUgaGFyZHdhcmUgYmVpbmcgZXh0ZXJuYWwgdG8gdGhl
IENQVSBhbmQgcnVubmluZyBpbiBwYXJhbGxlbCB3aXRoIGl0LA0KPiA+IG9idmlvdXNseSBhc3lu
Y2hyb25vdXMuDQo+ID4NCj4gPiA+IElmIHRoZSBsYXR0ZXIsIHdoeT8NCj4gPiA+DQo+ID4gQmVj
YXVzZSwgYXMgeW91IHByb2JhYmx5IGFscmVhZHkgZ3Vlc3NlZCwgdGhlIHJvdW5kLXRyaXAgbGF0
ZW5jeSBpcyB3YXkNCj4gPiBsb25nZXIgdGhhbiB0aGUgYWN0dWFsIHByb2Nlc3NpbmcgdGltZSwg
YXQgbGVhc3QgZm9yIHNtYWxsIHBhY2tldHMuDQo+ID4NCj4gPiBQYXJ0bHkgYmVjYXVzZSB0aGUg
b25seSB3YXkgdG8gY29tbXVuaWNhdGUgYmV0d2VlbiB0aGUgQ1BVIGFuZCB0aGUgSFcNCj4gPiBh
Y2NlbGVyYXRvciAod2hldGhlciB0aGF0IGlzIGNyeXB0bywgYSBHUFUsIGEgTklDLCBldGMuKSB0
aGF0IGRvZXNuJ3QNCj4gPiBrZWVwIHRoZSBDUFUgYnVzeSBtb3ZpbmcgZGF0YSBpcyB0aHJvdWdo
IG1lbW9yeSwgd2l0aCB0aGUgSFcgZG9pbmcgRE1BLg0KPiA+IEFuZCwgYXMgYW55IHByb2dyYW1t
ZXIgc2hvdWxkIG5vdywgcm91bmQgdHJpcCB0aW1lcyB0byBtZW1vcnkgYXJlIGh1Z2UNCj4gPiBy
ZWxhdGl2ZSB0byB0aGUgcHJvY2Vzc2luZyBzcGVlZC4NCj4gPg0KPiA+IEFuZCBwYXJ0bHkgYmVj
YXVzZSB0aGVzZSBhY2NlbGVyYXRvcnMgYXJlIHZlcnkgc2ltaWxhciB0byBDUFUncyBpbg0KPiA+
IHRlcm1zIG9mIGFyY2hpdGVjdHVyZSwgZG9pbmcgcGlwZWxpbmVkIHByb2Nlc3NpbmcgYW5kIGhh
dmluZyBtdWx0aXBsZQ0KPiA+IG9mIHN1Y2ggcGlwZWxpbmVzIGluIHBhcmFsbGVsLiBFeGNlcHQg
dGhhdCB0aGVzZSBwaXBlbGluZXMgYXJlIG5vdA0KPiA+IHdvcmtpbmcgb24gbG93LWxldmVsIGlu
c3RydWN0aW9ucyBidXQgb24gZnVsbCBwYWNrZXRzL2Jsb2Nrcy4gU28gdGhleQ0KPiA+IG5lZWQg
dG8gaGF2ZSBtYW55IHBhY2tldHMgaW4gZmxpZ2h0IHRvIGtlZXAgdGhvc2UgcGlwZWxpbmVzIGZ1
bGx5DQo+ID4gb2NjdXBpZWQuIEFuZCBwYWNrZXRzIG5lZWQgdG8gbW92ZSB0aHJvdWdoIHRoZSB2
YXJpb3VzIHBpcGVsaW5lIHN0YWdlcywNCj4gPiBzbyB0aGV5IGluY3VyIHRoZSB0aW1lIG5lZWRl
ZCB0byBwcm9jZXNzIHRoZW0gbXVsdGlwbGUgdGltZXMuIChqdXN0DQo+ID4gbGlrZSBlLmcuIGEg
bXVsdGlwbHkgaW5zdHJ1Y3Rpb24gd2l0aCBhIHRocm91Z2hwdXQgb2YgMSBwZXIgY3ljbGUNCj4g
PiBhY3R1YWxseSBtYXkgbmVlZCA0IG9yIG1vcmUgY3ljbGVzIHRvIGFjdHVhbGx5IHByb3ZpZGUg
aXRzIHJlc3VsdCkNCj4gPg0KPiA+IENvdWxkIHlvdSBkbyB0aGF0IGZyb20gYSBzeW5jaHJvbm91
cyBpbnRlcmZhY2U/IEluIHRoZW9yeSwgcHJvYmFibHksDQo+ID4gaWYgeW91IHdvdWxkIHNwYXdu
IGEgbmV3IHRocmVhZCBmb3IgZXZlcnkgbmV3IHBhY2tldCBhcnJpdmluZyBhbmQNCj4gPiByZWx5
IG9uIHRoZSBzY2hlZHVsZXIgdG8gcHJlZW1wdCB0aGUgd2FpdGluZyB0aHJlYWRzLiBCdXQgeW91
J2QgbmVlZA0KPiA+IGFzIG1hbnkgdGhyZWFkcyBhcyB0aGUgSFcgIGFjY2VsZXJhdG9yIGNhbiBo
YXZlIHBhY2tldHMgaW4gZmxpZ2h0LA0KPiA+IHdoaWxlIGFuIGFzeW5jIHdvdWxkIG5lZWQgb25s
eSAyIHRocmVhZHM6IG9uZSB0byBoYW5kbGUgdGhlIGlucHV0IHRvDQo+ID4gdGhlIGFjY2VsZXJh
dG9yIGFuZCBvbmUgdG8gaGFuZGxlIHRoZSBvdXRwdXQgKG9yIGF0IG1vc3Qgb25lIHRocmVhZA0K
PiA+IHBlciBDUFUsIGlmIHlvdSB3YW50IHRvIGRpdmlkZSB0aGUgd29ya2xvYWQpDQo+ID4NCj4g
PiBTdWNoIGEgbWFueS10aHJlYWQgYXBwcm9hY2ggc2VlbXMgdmVyeSBpbmVmZmljaWVudCB0byBt
ZS4NCj4gPg0KPiA+ID4gV2hhdCB3aWxsIGl0cyBsYXRlbmNpZXMgYmU/DQo+ID4gPg0KPiA+IERl
cGVuZHMgdmVyeSBtdWNoIG9uIHRoZSBzcGVjaWZpYyBpbnRlZ3JhdGlvbiBzY2VuYXJpbyAoaS5l
LiBidXMNCj4gPiBzcGVlZCwgYnVzIGhpZXJhcmNoeSwgY2FjaGUgaGllcmFyY2h5LCBtZW1vcnkg
c3BlZWQsIGV0Yy4pIGJ1dCBvbg0KPiA+IHRoZSBvcmRlciBvZiBhIGZldyB0aG91c2FuZCBDUFUg
Y2xvY2tzIGlzIG5vdCB1bmhlYXJkIG9mLg0KPiA+IFdoaWNoIGlzIGFuIGV0ZXJuaXR5IGZvciB0
aGUgQ1BVLCBidXQgc3RpbGwgb25seSBhIGZldyB1U2VjIGluDQo+ID4gaHVtYW4gdGltZS4gTm90
IGEgcHJvYmxlbSB1bmxlc3MgeW91J3JlIGEgaGlnaC1mcmVxdWVuY3kgdHJhZGVyIGFuZA0KPiA+
IGV2ZXJ5IG5zIGNvdW50cyAuLi4NCj4gPiBJdCdzIG5vdCBsaWtlIHRoZSBDUFUgd291bGQgcHJv
Y2VzcyB0aG9zZSBwYWNrZXRzIGluIHplcm8gdGltZS4NCj4gPg0KPiA+ID4gSG93IGRlZXAgd2ls
bCBpdHMgYnVmZmVycyBiZT8NCj4gPiA+DQo+ID4gVGhhdCBvZiBjb3Vyc2UgZGVwZW5kcyBvbiB0
aGUgc3BlY2lmaWMgYWNjZWxlcmF0b3IgaW1wbGVtZW50YXRpb24sDQo+ID4gYnV0IHBvc3NpYmx5
IGRvemVucyBvZiBzbWFsbCBwYWNrZXRzIGluIG91ciBjYXNlLCBhcyB5b3UnZCBuZWVkDQo+ID4g
YXQgbGVhc3Qgd2lkdGggeCBkZXB0aCBwYWNrZXRzIGluIHRoZXJlIHRvIGtlZXAgdGhlIHBpcGVz
IGJ1c3kuDQo+ID4gSnVzdCBsaWtlIGEgbW9kZXJuIENQVSBuZWVkcyBodW5kcmVkcyBvZiBpbnN0
cnVjdGlvbnMgaW4gZmxpZ2h0DQo+ID4gdG8ga2VlcCBhbGwgaXRzIHJlc291cmNlcyBidXN5Lg0K
PiA+DQo+ID4gPiBUaGUgcmVhc29uIEkgYXNrIGlzIHRoYXQgYQ0KPiA+ID4gbG90IG9mIGNyeXB0
byBhY2NlbGVyYXRpb24gaGFyZHdhcmUgb2YgdGhlIHBhc3QgaGFzIGJlZW4gZmFzdCBhbmQNCj4g
PiA+IGhhdmluZyB2ZXJ5IGRlZXAgYnVmZmVycywgYnV0IGF0IGdyZWF0IGV4cGVuc2Ugb2YgbGF0
ZW5jeS4NCj4gPiA+DQo+ID4gRGVmaW5lICJncmVhdCBleHBlbnNlIi4gRXZlcnl0aGluZyBpcyBy
ZWxhdGl2ZS4gVGhlIGxhdGVuY3kgaXMgdmVyeQ0KPiA+IGhpZ2ggY29tcGFyZWQgdG8gcGVyLXBh
Y2tldCBwcm9jZXNzaW5nIHRpbWUgYnV0IGF0IHRoZSBzYW1lIHRpbWUgaXQncw0KPiA+IG9ubHkg
b24gdGhlIG9yZGVyIG9mIGEgZmV3IHVTZWMuIFdoaWNoIG1heSBub3QgZXZlbiBiZSBzaWduaWZp
Y2FudCBvbg0KPiA+IHRoZSB0b3RhbCB0aW1lIGl0IHRha2VzIGZvciB0aGUgcGFja2V0IHRvIHRy
YXZlbCBmcm9tIGlucHV0IE1BQyB0bw0KPiA+IG91dHB1dCBNQUMsIGNvbnNpZGVyaW5nIHRoZSBD
UFUgd2lsbCBzdGlsbCBuZWVkIHRvIHBhcnNlIGFuZCBjbGFzc2lmeQ0KPiA+IGl0IGFuZCBkbyBw
cmUtIGFuZCBwb3N0cHJvY2Vzc2luZyBvbiBpdC4NCj4gPg0KPiA+ID4gSW4gdGhlIG5ldHdvcmtp
bmcgY29udGV4dCwga2VlcGluZyBsYXRlbmN5IGxvdyBpcyBwcmV0dHkgaW1wb3J0YW50Lg0KPiA+
ID4NCj4gPiBJJ3ZlIGJlZW4gZG9pbmcgdGhpcyBmb3IgSVBzZWMgZm9yIG5lYXJseSAyMCB5ZWFy
cyBub3cgYW5kIEkndmUgbmV2ZXINCj4gPiBoZWFyZCBhbnlvbmUgY29tcGxhaW4gYWJvdXQgb3Vy
IGxhdGVuY3ksIHNvIGl0IG11c3QgYmUgT0suDQo+IA0KPiBXZWxsLCBpdCBkZXBlbmRzIG9uIHdo
ZXJlIHlvdXIgYm90dGxlbmVja3MgYXJlLiBPbiBsb3ctZW5kIGhhcmR3YXJlDQo+IHlvdSBjYW4g
YW5kIGRvIHRlbmQgdG8gYm90dGxlbmVjayBvbiB0aGUgY3J5cHRvIHN0ZXAsIGFuZCB3aXRoDQo+
IHVuY29udHJvbGxlZCwgbm9uLWZxJ2Qgbm9uLWFxbSdkIGJ1ZmZlcmluZyB5b3UgZ2V0IHJlc3Vs
dHMgbGlrZSB0aGlzOg0KPiANCj4gaHR0cDovL2Jsb2cuY2Vyb3dydC5vcmcvcG9zdC93aXJlZ3Vh
cmQvDQo+IA0KPiBzbyBpbiB0ZXJtcyBvZiAidGhyZWFkcyIgSSB3b3VsZCBwcmVmZXIgdG8gdGhp
bmsgb2YgZmxvd3MgZW50ZXJpbmcNCj4gdGhlIHR1bm5lbCBhbmQgYXR0ZW1wdGluZyB0byBtdWx0
aXBsZXggdGhlbSBhcyBiZXN0IGFzIHBvc3NpYmxlDQo+IGFjcm9zcyB0aGUgY3J5cHRvIGhhcmQv
c29mdHdhcmUgc28gdGhhdCBtaW5pbWFsIGluLWh3IGxhdGVuY2llcyBhcmUgZXhwZXJpZW5jZWQN
Cj4gZm9yIG1vc3QgcGFja2V0cyBhbmQgdGhhdCB0aGUgY291cGxlZCBxdWV1ZSBsZW5ndGggZG9l
cyBub3QgZ3JvdyBvdXQgb2YgY29udHJvbCwNCj4gDQo+IEFkZGluZyBmcV9jb2RlbCdzIGhhc2hp
bmcgYWxnbyBhbmQgcXVldWluZyB0byBpcHNlYyBhcyB3YXMgZG9uZSBpbg0KPiBjb21taXQ6IDI2
NGI4N2ZhNjE3ZTc1ODk2NjEwOGRiNDhkYjIyMDU3MWZmM2Q2MGUgdG8gbGV2ZXJhZ2UNCj4gdGhl
IGlubmVyIGhhc2guLi4NCj4gDQo+IEhhZCBzb21lIG5pY2UgcmVzdWx0czoNCj4gDQo+IGJlZm9y
ZTogaHR0cDovL3d3dy50YWh0Lm5ldC9+ZC9pcHNlY19mcV9jb2RlbC9vbGRxb3MucG5nICgxMDBt
cyBzcGlrZXMpDQo+IEFmdGVyOiBodHRwOi8vd3d3LnRhaHQubmV0L35kL2lwc2VjX2ZxX2NvZGVs
L25ld3Fvcy5wbmcgKDJtcyBzcGlrZXMpDQo+IA0KPiBJJ2QgbG92ZSB0byBzZWUgbW9yZSB2cG4g
dmVuZG9ycyB1c2luZyB0aGUgcnJ1bCB0ZXN0IG9yIHNvbWV0aGluZyBldmVuDQo+IG5hc3RpZXIg
dG8gZXZhbHVhdGUgdGhlaXIgcmVzdWx0cywgcmF0aGVyIHRoYW4gZHJhZ3N0cmlwIGJ1bGsgdGhy
b3VnaHB1dCB0ZXN0cywNCj4gc3RlZXJpbmcgbXVsdGlwbGUgZmxvd3Mgb3ZlciBtdWx0aXBsZSBj
b3Jlcy4NCj4gDQo+ID4gV2UncmUgYWxzbyBkb2luZyAoZnVsbHkgaW5saW5lLCBubyBDUFUgaW52
b2x2ZWQpIE1BQ3NlYyBjb3Jlcywgd2hpY2gNCj4gPiBvcGVyYXRlIGF0IGxheWVyIDIgYW5kIEkg
a25vdyBpdCdzIGEgY29uY2VybiB0aGVyZSBmb3IgdmVyeSBzcGVjaWZpYw0KPiA+IHVzZSBjYXNl
cyAoaGlnaCBmcmVxdWVuY3kgdHJhZGluZywgcHJlY2lzaW9uIHRpbWUgcHJvdG9jb2wsIC4uLiku
DQo+ID4gRm9yICJub3JtYWwiIFZQTidzIHRob3VnaCwgYSBmZXcgdVNlYyBtb3JlIG9yIGxlc3Mg
c2hvdWxkIGJlIGEgbm9uLWlzc3VlLg0KPiANCj4gTWVhc3VyZWQgYnVmZmVyaW5nIGlzIHR5cGlj
YWxseSAxMDAwIHBhY2tldHMgaW4gdXNlcnNwYWNlIHZwbnMuIElmIHlvdQ0KPiBjYW4gcHV0IGRh
dGEgaW4sIGZhc3RlciB0aGFuIHlvdSBjYW4gZ2V0IGl0IG91dCwgd2VsbC4uLi4NCj4gDQpXZSBk
b24ndCBidWZmZXIgYW55d2hlcmUgbmVhciAxMDAwIHBhY2tldHMgaW4gdGhlIGhhcmR3YXJlIGl0
c2VsZi4NCkluIGZhY3QsIG91ciBidWZmZXJzIGFyZSBkZXNpZ25lZCB0byBiZSBjYXJlZnVsbHkg
dHVuYWJsZSB0byBhY2NlcHQNCnRoZSBtaW5pbXVtIG51bWJlciBvZiBwYWNrZXRzIHJlcXVpcmVk
IGJ5IHRoZSBzeXN0ZW0gYXMgYSB3aG9sZS4NCg0KQnV0IHdlIGRvIG5lZWQgdG8gcG90ZW50aWFs
bHkga2VlcCBhIGRlZXAgJiB3aWRlIHBpcGVsaW5lIGJ1c3ksIHNvIGZvcg0KdGhlIGJpZywgaGln
aC1zcGVlZCBlbmdpbmVzIHNvbWUgZG91YmxlLWRpZ2l0IGJ1ZmZlcmluZyBpcyBpbmV2aXRhYmxl
LiANCkl0IHdvbid0IGdldCBhbnl3aGVyZSBuZWFyIGV2ZW4gYSAxMDAgcGFja2V0cyB0aG91Z2gs
IGxldCBhbG9uZSAxMDAwLg0KDQpBbHNvLCB0aGUgd2hvbGUgcG9pbnQgb2YgY3J5cHRvIEhXIGFj
Y2VsZXJhdGlvbiBpcyBlbnN1cmUgdGhlIGNyeXB0bw0KaXMgKm5vdCogdGhlIGJvdHRsZW5lY2ss
IG5vdCBldmVuIGZvciB0aG9zZSBwZXNreSBzbWFsbCBUQ1AgQUNLIHBhY2tldHMNCndoZW4gdGhl
eSBjb21lIGJhY2stdG8tYmFjayAoYWx0aG91Z2ggSSBkb3VidCB0aGUgY3J5cHRvIGl0c2VsZiBp
cyB0aGUgDQpib3R0bGVuZWNrIHRoZXJlLCBhcyB0aGVyZSBpcyBhY3R1YWxseSB2ZXJ5IGxpdHRs
ZSBjcnlwdG8gdG8gZG8gdGhlbikuDQpXZSB3b3JrIHZlcnkgaGFyZCB0byBlbnN1cmUgZGVjZW50
ICpzbWFsbCogcGFja2V0IHBlcmZvcm1hbmNlIGFuZCANCmdlbmVyYWxseSB5b3Ugc2hvdWxkIHNj
YWxlIHlvdXIgY3J5cHRvIEhXIHRvIGJlIGFibGUgdG8ga2VlcCB1cCB3aXRoIA0KdGhlIHdvcnN0
IGNhc2UgdGhlcmUsIHdpdGggbWFyZ2luIHRvIHNwYXJlIC4uLg0KDQo+ID4gPiBBbHJlYWR5DQo+
ID4gPiBXaXJlR3VhcmQgaXMgbXVsdGktdGhyZWFkZWQgd2hpY2ggaXNuJ3Qgc3VwZXIgZ3JlYXQg
YWxsIHRoZSB0aW1lIGZvcg0KPiA+ID4gbGF0ZW5jeSAoaW1wcm92ZW1lbnRzIGFyZSBhIHdvcmsg
aW4gcHJvZ3Jlc3MpLiBJZiB5b3UncmUgaW52b2x2ZWQgd2l0aA0KPiA+ID4gdGhlIGRlc2lnbiBv
ZiB0aGUgaGFyZHdhcmUsIHBlcmhhcHMgdGhpcyBpcyBzb21ldGhpbmcgeW91IGNhbiBoZWxwDQo+
ID4gPiBlbnN1cmUgd2luZHMgdXAgd29ya2luZyB3ZWxsPyBGb3IgZXhhbXBsZSwgQUVTLU5JIGlz
IHN0cmFpZ2h0Zm9yd2FyZA0KPiA+ID4gYW5kIGdvb2QsIGJ1dCBJbnRlbCBjYW4gZG8gdGhhdCBi
ZWNhdXNlIHRoZXkgYXJlIHRoZSBDUFUuIEl0IHNvdW5kcw0KPiA+ID4gbGlrZSB5b3VyIHNpbGlj
b24gd2lsbCBiZSBhZGphY2VudC4gSG93IGRvIHlvdSBlbnZpc2lvbiB0aGlzIHdvcmtpbmcNCj4g
PiA+IGluIGEgbG93IGxhdGVuY3kgZW52aXJvbm1lbnQ/DQo+ID4gPg0KPiA+IERlcGVuZHMgb24g
aG93IGxvdyBsb3ctbGF0ZW5jeSBpcy4gSWYgeW91IHJlYWxseSBuZWVkIG1pbmltYWwgbGF0ZW5j
eSwNCj4gPiB5b3UgbmVlZCBhbiBpbmxpbmUgaW1wbGVtZW50YXRpb24uIFdoaWNoIHdlIGNhbiBh
bHNvIHByb3ZpZGUsIEJUVyA6LSkNCj4gPg0KPiA+IFJlZ2FyZHMsDQo+ID4gUGFzY2FsIHZhbiBM
ZWV1d2VuDQo+ID4gU2lsaWNvbiBJUCBBcmNoaXRlY3QsIE11bHRpLVByb3RvY29sIEVuZ2luZXMg
QCBWZXJpbWF0cml4DQo+ID4gd3d3Lmluc2lkZXNlY3VyZS5jb20NCj4gDQo+IA0KPiANCj4gLS0N
Cj4gDQo+IERhdmUgVMOkaHQNCj4gQ1RPLCBUZWtMaWJyZSwgTExDDQo+IGh0dHA6Ly93d3cudGVr
bGlicmUuY29tDQo+IFRlbDogMS04MzEtMjA1LTk3NDANCg0KUmVnYXJkcywNClBhc2NhbCB2YW4g
TGVldXdlbg0KU2lsaWNvbiBJUCBBcmNoaXRlY3QsIE11bHRpLVByb3RvY29sIEVuZ2luZXMgQCBW
ZXJpbWF0cml4DQp3d3cuaW5zaWRlc2VjdXJlLmNvbQ0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
