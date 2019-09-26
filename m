Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CDD6BEF6F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 12:19:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8FM8XdPR51qIn9fN8yKBGc0k2SgUsFi1SnV4GYVTcUg=; b=jl526NJ6kQuX3t
	rf5No1If8oW5kl59DuG7TWRyUV3g8fbf/fgSXvoD9bItVd7OUci4NOgDR/V/M0YPbEYWo4LLYLfFP
	5ZNcKrlx+dw5bhHJgb685muokFgfVLLkjjYAQpN1c4ZNZpiuwB69K18mTlE2qOeDdWBynOdKIMwTB
	OOu1wJgyxY4k+IAx8Rjq9/QY7ELCmp/gJziAPOvbmVS2hc582mGoGkj+N8GSp8tOmnav8gYX6jPiB
	QYPoo5g4Ux88P0/VRqHGQAD4YApMkQ8oAH+QnRsSGYv2UHiYD459LMFkvxM7PdsRGSlB4afqEg6lm
	osRYkaL3JGxWPYgMXsHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDQs5-0002Ir-8D; Thu, 26 Sep 2019 10:19:37 +0000
Received: from mail-eopbgr810079.outbound.protection.outlook.com
 ([40.107.81.79] helo=NAM01-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDQru-0002IO-4g
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 10:19:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W8s27oQ1fe1SPDM2L4DLaJ0uPhd7Sc6ZRL0YqJNgf/Rv6faDWZPM1qAK21Y/DU5OfLr1tqOuliWKLFtiax9QaW0O1sqpNx6Q48+kv9kRQ8lrP4cI+uyh1VfTBpFQZ6Iw23n0Tgy1qoeQ4mDN9K25oHOiy78c5pdmrA8YBkqI5N9UAWrq2jWi5MXWgh6vJM2dyLmBEvVXzAJ8u912lCTP4RxDSzxCxrUzlg66ezBHNDQ1/QB2CW9O5IUCP46u2pYsx0c/j04GQ02zxExZRrAuDkAGxkLqOerMu9SoXVM9FAerWHuSBM7t+iAcbn/Me98Fv3RMoD3OKlI4UbUstKzZ6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qAOIItoJtzjHgT3VgXzrizF6GeAZHPrIhl0VwL5HiEk=;
 b=M+icVshusRp0ypT1SUKtrhP8w5PEkxoYHv06kdvhQR/TroyJVciLJ1VSulMZ2xHaxa2P2SEdrE0YnOztV7P7bfki6AkG+qRUhDdARpvYL47rgQFnFUtLAObC2vugUqucR9rDmpmi8XLiN0Ts8Y9t3x+kBXy1dGl4x1l+6oeZU4/uUyGVA3Kv3zwskAThbSSJukrNDp2js9oijDUDtTJzkUSRFHdOLTN0vndfnEA8F+WH3NU6HPoujHnMeu7rGShOiy9VHzAE0N8ty3bF/PJQ1pbsjo37Hs+R565D1A+VLCCSac6wsS14anPDA8AI2KGc89N0wLncyavMux8b8sR3gw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=verimatrix.com; dmarc=pass action=none
 header.from=verimatrix.com; dkim=pass header.d=verimatrix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verimatrix.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qAOIItoJtzjHgT3VgXzrizF6GeAZHPrIhl0VwL5HiEk=;
 b=pX/kAJtmQ1RwDu2bDxdxeZfgQL33ko8F1XReoR4RyrDQ0z+TfQLGTAYQv/APT7JlwYYVtRiWihlYvONowErHi1ft8a6LFgM4CGrGfQ4u5Ietf/W6P8QoPguoeRwbfapI6Ox3YtzD4qXqzxn1ehjzB8woMfv0pEt6exq2phc/QG0=
Received: from MN2PR20MB2973.namprd20.prod.outlook.com (52.132.172.146) by
 MN2PR20MB2559.namprd20.prod.outlook.com (20.179.145.91) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.17; Thu, 26 Sep 2019 10:19:22 +0000
Received: from MN2PR20MB2973.namprd20.prod.outlook.com
 ([fe80::6d07:5f09:97bf:c717]) by MN2PR20MB2973.namprd20.prod.outlook.com
 ([fe80::6d07:5f09:97bf:c717%7]) with mapi id 15.20.2305.017; Thu, 26 Sep 2019
 10:19:22 +0000
From: Pascal Van Leeuwen <pvanleeuwen@verimatrix.com>
To: "Jason A. Donenfeld" <Jason@zx2c4.com>, Ard Biesheuvel
 <ard.biesheuvel@linaro.org>
Subject: RE: [RFC PATCH 00/18] crypto: wireguard using the existing crypto API
Thread-Topic: [RFC PATCH 00/18] crypto: wireguard using the existing crypto API
Thread-Index: AQHVc7w6foOeRxVj+U6Yc++T56fqIac9qd4AgAAO6oA=
Date: Thu, 26 Sep 2019 10:19:22 +0000
Message-ID: <MN2PR20MB29733663686FB38153BAE7EACA860@MN2PR20MB2973.namprd20.prod.outlook.com>
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
 <CAHmME9oDhnv7aX77oEERof0TGihk4mDe9B_A3AntaTTVsg9aoA@mail.gmail.com>
In-Reply-To: <CAHmME9oDhnv7aX77oEERof0TGihk4mDe9B_A3AntaTTVsg9aoA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pvanleeuwen@verimatrix.com; 
x-originating-ip: [188.204.2.113]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 01404587-89bf-4bd1-c8d5-08d7426b0021
x-ms-traffictypediagnostic: MN2PR20MB2559:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <MN2PR20MB2559D543BD65EB3921AEC1E0CA860@MN2PR20MB2559.namprd20.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0172F0EF77
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(366004)(396003)(136003)(39850400004)(189003)(199004)(229853002)(6436002)(66446008)(64756008)(66476007)(66556008)(76116006)(66946007)(7736002)(110136005)(4326008)(54906003)(478600001)(316002)(305945005)(14454004)(55016002)(66066001)(74316002)(86362001)(7416002)(2906002)(33656002)(15974865002)(7696005)(476003)(99286004)(76176011)(9686003)(11346002)(3846002)(446003)(6116002)(25786009)(81156014)(26005)(8676002)(81166006)(6506007)(186003)(102836004)(6246003)(256004)(52536014)(71200400001)(71190400001)(486006)(8936002)(5660300002)(18886075002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR20MB2559;
 H:MN2PR20MB2973.namprd20.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: verimatrix.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 29e2ap8m9VXYbJRXzIcQuxwSlvKluCKQg5aOnOjqr+fYMeKwWpzHwR8i9Sq/t1dpz5BCEJQNxS2vJjk7Q2ruSAWWWv1MJ+bpL4AOD/kxpl7DZ6QLUEdPQRkCHcg9Uhfb7RoUuG/zzIkR8ZPTJF++3dU3mFmyY0YWt+Kky7MZGjpr2/0HiN+/qyW7H7k0zvQ5j9ppv+OBSZt2qKxCbKx0hNMD+j6H4ubVnl/mvybhgNDClIFdpsvWlFg7DYoCnjd1rKzm60CqqPEU7WNCHNy0aqAYHWb/e484/pU2ySoF5GS2sdbYx5u1UdroUK7coFWCmdmG/IiboLByrHN5fClgSQsXdlhi5j57Mo0/G/Itm4WoVE/C+meRaryaVHEqZqedIN6YB/LlP2mr1Cw2VhCRhdmLcWhhEsCniFSKxYrypLs=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: verimatrix.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01404587-89bf-4bd1-c8d5-08d7426b0021
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2019 10:19:22.6642 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: dcb260f9-022d-4495-8602-eae51035a0d0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6nRLslS6ayKPqc/YTelEJBrp5A19M65r3g/9poTO8F6ciFlTOAEVwSL9sE2cvafyndw8WrjQ5wkJBb0mCe2aoqD0TNdKgtQCQ0s7b90eO2g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR20MB2559
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_031926_190120_3057C72F 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.81.79 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Eric Biggers <ebiggers@google.com>, Greg KH <gregkh@linuxfoundation.org>,
 Samuel Neves <sneves@dei.uc.pt>, Will Deacon <will@kernel.org>,
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

PiBUaGVyZeKAmXMgYWxzbyBhIGRlZ3JlZSBvZiBwcmFjdGljYWxpdHk6IHJpZ2h0IG5vdyB0aGVy
ZSBpcyB6ZXJvIENoYVBvbHkNCj4gYXN5bmMgYWNjZWxlcmF0aW9uIGhhcmR3YXJlIGFueXdoZXJl
IHRoYXQgd291bGQgZml0IGludG8gdGhlIGNyeXB0bw0KPiBBUEkuDQo+DQpBY3R1YWxseSwgdGhh
dCBhc3N1bXB0aW9uIGlzIGZhY3R1YWxseSB3cm9uZy4gSSBkb24ndCBrbm93IGlmIGFueXRoaW5n
DQppcyAqcHVibGljbHkqIGF2YWlsYWJsZSwgYnV0IEkgY2FuIGFzc3VyZSB5b3UgdGhlIHNpbGlj
b24gaXMgcnVubmluZyBpbg0KbGFicyBhbHJlYWR5LiBBbmQgc29tZXRoaW5nIHdpbGwgYmUgcHVi
bGljbHkgYXZhaWxhYmxlIGVhcmx5IG5leHQgeWVhcg0KYXQgdGhlIGxhdGVzdC4gV2hpY2ggY291
bGQgbmljZWx5IGNvaW5jaWRlIHdpdGggaGF2aW5nIFdpcmVndWFyZCBzdXBwb3J0DQppbiB0aGUg
a2VybmVsICh3aGljaCBJIHdvdWxkIGFsc28gbGlrZSB0byBzZWUgaGFwcGVuIEJUVykgLi4uDQoN
Cj4gQXQgc29tZSBwb2ludCwgaXQgbWlnaHQgY29tZSB0byBleGlzdCBhbmQgaGF2ZSBpbmNyZWRp
YmxlDQo+IHBlcmZvcm1hbmNlLCBhbmQgdGhlbiB3ZeKAmWxsIGJvdGggZmVlbCB2ZXJ5IG1vdGl2
YXRlZCB0byBtYWtlIHRoaXMgd29yaw0KPiBmb3IgV2lyZUd1YXJkLiBCdXQgaXQgbWlnaHQgYWxz
byBub3QgY29tZSB0byBiZSAoQUVTIHNlZW1zIHRvIGhhdmUgd29uDQo+IG92ZXIgbW9zdCBvZiB0
aGUgaW5kdXN0cnkpLCBpbiB3aGljaCBjYXNlLCB3aHkgaGFzc2xlPw0KPg0KTm90ICJhdCBzb21l
IHBvaW50Ii4gSXQgd2lsbC4gVmVyeSBzb29uLiBNYXliZSBub3QgaW4gY29uc3VtZXIgb3Igc2Vy
dmVyDQpDUFVzLCBidXQgZGVmaW5pdGVseSBpbiB0aGUgZW1iZWRkZWQgKG5ldHdvcmtpbmcpIHNw
YWNlLg0KQW5kIGl0ICp3aWxsKiBiZSBtdWNoIGZhc3RlciB0aGFuIHRoZSBlbWJlZGRlZCBDUFUg
bmV4dCB0byBpdCwgc28gaXQgd2lsbCANCmJlIHdvcnRoIHVzaW5nIGl0IGZvciBzb21ldGhpbmcg
bGlrZSBidWxrIHBhY2tldCBlbmNyeXB0aW9uLg0KDQpSZWdhcmRzLA0KUGFzY2FsIHZhbiBMZWV1
d2VuDQpTaWxpY29uIElQIEFyY2hpdGVjdCwgTXVsdGktUHJvdG9jb2wgRW5naW5lcyBAIFZlcmlt
YXRyaXgNCnd3dy5pbnNpZGVzZWN1cmUuY29tDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
