Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB57124464
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 11:22:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p99yseeqe74720jdO/2syOsgY88++/EtJl3ayEWcVvU=; b=i26kFcg1nECCHO
	wLW3K/rnTfVwdzkAE05X8f5Evs3z02mgTUCVSM5pkvgiKmmi1FLzJifyOcNnGn0iwdrIIYn3Ommks
	uZDnJuG9OopX5gihJ+aYjIPapl009jECSBHbQ2TsryriZ1K6CZyh9n7VSifa9P6i/Nz6FyXrHsy0W
	5YA4NMFy/NCaPu8EZbNEqELaG7w4Bsz1xdwHLf/M5+yhUQIo/tctZH46BoO0tqKxCOIToyNjG8Mmv
	rO9EX7Hm+CtscKW7jYaUCeUJQInOluEEp/2sfAq4DkoFENyTHATVWDszJPvq7grwiYbktOIMQCDKk
	6WF1in/E+nAwxjnB5SXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihWTd-0001Et-Bu; Wed, 18 Dec 2019 10:22:45 +0000
Received: from helmsgagent01.f-secure.com ([193.110.108.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihWQ3-0005b4-V9
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 10:19:07 +0000
Received: from pps.filterd (helmsgagent01.f-secure.com [127.0.0.1])
 by helmsgagent01.f-secure.com (8.16.0.27/8.16.0.27) with SMTP id
 xBIAFbIN004946; Wed, 18 Dec 2019 12:18:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=f-secure.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=msg2048;
 bh=VHwfoPp13/BxPAGyfAUQ4ezOY7gWz2oJM2Gqrer0pBo=;
 b=O5WtqTkBylcRe2KGwlqfasBcORwjpGoO5CAU5p8p98fPanIA7TPOqTl6O2GyzaJGoRrT
 dg6Y/UqNJUj7RAvNyiNjO4S5wWuS7Wjy8B9SWGD7xM6KbVIZdBe3fQOowP8bQZvOphEb
 /9xS6A5cLbT1quwYlI92HqKbBLPj1MxzMTLuiKrKcgBhinDj33xQXtrZCsMJk5I4Qr6d
 evQBH6yYWLhelo+oD3GGowQZ0h4nyC4og8z3l6+BGoNgq7HEIu6gsOAMptm671iuCnko
 TWMA/OKwYy6BTF+bQpyJFUcJQF4xgWaDNXLUa22/fNCde3pwrLXVXgdCkotPYu0P9RAj tg== 
Received: from helex01.fi.f-secure.com ([10.190.48.70])
 by helmsgagent01.f-secure.com with ESMTP id 2wy22hhsgn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Wed, 18 Dec 2019 12:18:52 +0200
Received: from EUR02-VE1-obe.outbound.protection.outlook.com (104.47.6.51) by
 helex01.FI.F-Secure.com (10.190.48.70) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Wed, 18 Dec 2019 12:18:51 +0200
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ha66gDRCc831cEFUB/YHxPYDRMmxi5Mmq340DZSaBN+VEcy9nphlF9xR/PMPBrz4UQyDgZLNtau6RS7U5NQ38IB63xtaiiEjh+TQ0LPw+Wc8nr+Vr8/6uePFBHkHZoPGEqdHoDdHYg6k/ykNMj8IDVHNJtpG12Q2kgICCDEoHKHlGp9kgBzGxeqBYfvDRzZjofwYeyKB9bydnZ1yIE1dOkcYjac3AEbJrEUV93IdTm4PrXJ2p7QC6sE3sAvSpJ6RyudnBcndlrHENi/P0Iyj3GeCJboNYThCQPc8h68vMHN/jkjLDymaAKPBtg37pt/bcS/z4kWTiKYzYEI8mHwZ0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VHwfoPp13/BxPAGyfAUQ4ezOY7gWz2oJM2Gqrer0pBo=;
 b=VWQnOX0iyZyNTUi5oOv+fnOWk1CVGieG5ojUPVmRsmnnI9nP76SEbw76M3zbHcNZzAZpiD1a97nhgVsYXNQsnZPLgIFREoJTL5EDFAshxkrkDM9lt4XB42wPeMK5eyV8Tx94TmdXcaY+YxVlceDED6hHfh627g4uFHGtJ57X3CPDLrair9aJ2y8B3QtHUt8D1kEx/ox3HdNnekekRI4442pJHXpb8vjEth1qllAHy7WRQH+H0JKhQboiq5AtwYL7G4ghqxxQkQh1z3HRrimXWLOVuBoFD1v4SgVTqg9H+IPinLqWzYd8yCuYzym6WrBS9jc0xDlUajo252auOW4vyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=f-secure.com; dmarc=pass action=none header.from=f-secure.com;
 dkim=pass header.d=f-secure.com; arc=none
Received: from VI1PR08MB4350.eurprd08.prod.outlook.com (20.179.26.16) by
 VI1PR08MB4157.eurprd08.prod.outlook.com (20.178.204.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.18; Wed, 18 Dec 2019 10:18:51 +0000
Received: from VI1PR08MB4350.eurprd08.prod.outlook.com
 ([fe80::515e:a7a9:de14:e682]) by VI1PR08MB4350.eurprd08.prod.outlook.com
 ([fe80::515e:a7a9:de14:e682%7]) with mapi id 15.20.2538.019; Wed, 18 Dec 2019
 10:18:51 +0000
From: "Barisani, Andrea" <andrea.barisani@f-secure.com>
To: Stefan Agner <stefan@agner.ch>
Subject: Re: nvmem: imx-ocotp: fusing write tools
Thread-Topic: nvmem: imx-ocotp: fusing write tools
Thread-Index: AQHVtYuF2mOxgOPx0kCDp/x60I7HtKe/rfkA
Date: Wed, 18 Dec 2019 10:18:51 +0000
Message-ID: <20191218101846.GC4754@lambda.inversepath.com>
References: <2d527ebfde26459b7fa57e519610a8a5@agner.ch>
In-Reply-To: <2d527ebfde26459b7fa57e519610a8a5@agner.ch>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR0802CA0008.eurprd08.prod.outlook.com
 (2603:10a6:3:bd::18) To VI1PR08MB4350.eurprd08.prod.outlook.com
 (2603:10a6:803:f8::16)
x-ms-exchange-messagesentrepresentingtype: 1
x-gpg-key: 0x864C9B9E
x-gpg-fingerprint: 0A76 074A 02CD E989 CE7F  AC3F DA47 578E 864C 9B9E
x-originating-ip: [193.110.108.35]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f23f9f5b-6c20-4b15-12b3-08d783a3ad6a
x-ms-traffictypediagnostic: VI1PR08MB4157:
x-microsoft-antispam-prvs: <VI1PR08MB4157BFA6A88B2CEC98644662D7530@VI1PR08MB4157.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0255DF69B9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10001)(10009020)(366004)(39850400004)(396003)(136003)(376002)(346002)(189003)(199004)(66946007)(5660300002)(64756008)(1076003)(4326008)(54906003)(66446008)(186003)(66556008)(478600001)(6916009)(52116002)(6486002)(66476007)(8676002)(8936002)(81156014)(81166006)(15974865002)(316002)(86362001)(33656002)(6512007)(2906002)(9686003)(26005)(966005)(71200400001)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB4157;
 H:VI1PR08MB4350.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: f-secure.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: blCz9kNAHv2+JKzCzPEwFDhuAvSD1zY8/kBubBfddhVM4P6t4QO+ri8/wlX+bJou53VOujSVm60Q8mKglmNNH+m+x4aDnEcaTgkOCBlbaeVSLneDh8lYD3Qsdw31Ky1puFVH3p3kP0RldC6wpM0tLjfW2Xr3Ez4klB00Iqw3thLLkSd1BfK1BEdomUbWDPWhqvfThsgym4uozfkITAZn7GcCq0Mrxjq+Oha3z7BOeVIF+DnX9s9I3vpalrOmdh7y+0BbddoQTsahDJKGayziJ3S9nQoCJgnsxmvJzMVjcNYTv28b5/6pH/3+d7t/SmCLU2fbpovQtFwsBTmGjBYr/v6wOu528K+g6EJI2fLITVg3nYl6QpChdbgFp+vMksqdmxpAyibF0glpLXMbwSltyR+r7HBLZAiDMHxm34RWR7TIa6sbTfTun/GGiEPjIweE3x4xACmnAy+QdjjXMizabZPt04v7crbKZDvJTFNehZa0JB/GolHRegXGU/cfYZ/iU43MYxOvtkfa7CSHzNe9fI5b569aZjbcqZ19zHPcnYo=
x-ms-exchange-transport-forked: True
Content-ID: <89CB127600D8644ABA8D21F1D7480333@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f23f9f5b-6c20-4b15-12b3-08d783a3ad6a
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2019 10:18:51.0181 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d5bc339e-b691-425e-9d05-4181afc9e065
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yD8C+Fnk40DWZDOcXBTQ11V7Rblleb1abTNII6lg/6vy9rQnC8RD1Ez4kSjR9dRuxz5hwB7V9iItzHFyngnKOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB4157
X-OriginatorOrg: f-secure.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_021904_401593_3651FF10 
X-CRM114-Status: GOOD (  19.52  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [193.110.108.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "peng.fan@nxp.com" <peng.fan@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "pure.logic@nexus-software.ie" <pure.logic@nexus-software.ie>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "richard.leitner@skidata.com" <richard.leitner@skidata.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBEZWMgMTgsIDIwMTkgYXQgMTE6MTA6NTlBTSArMDEwMCwgU3RlZmFuIEFnbmVyIHdy
b3RlOg0KPiBIaSwNCj4gDQo+IFdlIGFyZSBsb29raW5nIHRvIHJlcGxhY2UgdGhlIE5YUCBkb3du
c3RyZWFtIE9UUCBkcml2ZXIgKENPTkZJR19GU0xfT1RQKQ0KPiB3aXRoIHRoZSBuZXcgdXBzdHJl
YW0gbnZtZW0gYmFzZWQgZHJpdmVyLiBJIHdhcyB3b25kZXJpbmcgaWYgdGhlcmUgaXMNCj4gdXNl
ci1zcGFjZSB0b29saW5nIGFyb3VuZCB3aGljaCBjYW4gYmUgdXNlZCB0byB3cml0ZSBmdXNlcy4g
VGhlIE5YUA0KPiBkcml2ZXIgaGFkIHRoZSBmdXNlIG1hcCBhcyBwYXJ0IG9mIHRoZSBBUEksIHNv
IGZ1c2luZyB3YXMgcmF0aGVyIHNpbXBsZQ0KPiBhbmQgb25seSByZXF1aXJlZCBhbiBlY2hvIGlu
dG8gdGhlIHJpZ2h0IGZpbGUuIFRoZSBuZXcgZHJpdmVyIHJlcXVpcmVzIGENCj4gc2VlayB0byB0
aGUgcmlnaHQgb2Zmc2V0LiANCj4gDQo+IEkgZm91bmQgdGhpcyB0b29sIHdoaWNoIHByb3ZpZGVz
IGZ1c2UgbWFwcyBhcyB5YW1sIGZpbGVzIGFuZCBtYWtlcw0KPiBmdXNpbmcgcmF0aGVyIHNpbXBs
ZToNCj4gaHR0cHM6Ly9naXRodWIuY29tL2ludmVyc2VwYXRoL2NydWNpYmxlDQo+IA0KPiBBdCB0
aGlzIHBvaW50IGl0IHNlZW1zIHRvIG1pc3MgaS5NWCA4IHNlcmllcyBmdXNlIG1hcHMuIEFsc28g
d2Ugc28gZmFyDQo+IGhhdmUgbm8gZ28gcnVudGltZSBvbiBvdXIgcHJvZHVjdGlvbiBzeXN0ZW0s
IHdlIGNvbnNpZGVyIHdyaXRpbmcgYQ0KPiAocHJvYmFibHkgc2ltcGxlcikgQyBpbXBsZW1lbnRh
dGlvbiB0aGVyZW9mLg0KPiANCg0KR28gcnVudGltZSBpcyBub3QgbmVlZGVkIHRvIGV4ZWN1dGUg
Y3J1Y2libGUgd2hpY2ggY2FuIGJlIGNvbXBpbGVkIGxpa2UgYW55IEMNCmFwcGxpY2F0aW9uIHRv
IGdlbmVyYXRlIGEgYmluYXJ5IHdoaWNoIHJlcXVpcmVzIG5vIHN1cHBvcnRpbmcgZmlsZXMgKG90
aGVyDQp0aGFuIHRoZSBmdXNlbWFwIFlBTUwpLg0KDQpDcnVjaWJsZSBkb2VzIHN1cHBvcnQgTlZN
RU0gYmFzZWQgZHJpdmVycyBhbmQgdGhlcmVmb3JlIEkgdGhpbmsgaXQgY2FuIGJlDQphZGFwdGVk
IGFsc28gdG8gaW5jbHVkZSBpLk1YOCBzdXBwb3J0Lg0KDQpJZiB3b3VsZCBsaWtlIHRvIHNwb25z
b3IgaXQgd2Ugd291bGQgYmUgaGFwcHkgdG8gZ2VuZXJhdGUgdGhlIGZ1c2VtYXAgZmlsZQ0KZm9y
IHRoZSBpLk1YOC4gSWYgeW91IHNlbmQgdXMgYSBkZXZlbG9wbWVudCBib2FyZCwgb3Igd2UgY2Fu
IHB1cmNoYXNlIG9uZSBhcw0KcGFydCBvZiB0aGUgc3BvbnNvcnNoaXAsIGl0IHdvdWxkIGJlIGlk
ZWFsIHRvIHRlc3QgaXQuDQoNCkNoZWVycw0KDQo+IFdoYXQgaXMgZ2VuZXJhbGx5IHVzZWQgdG8g
d3JpdGUgZnVzZXMgdXNpbmcgdGhlIG52bWVtIGRyaXZlcj8NCj4gDQo+IC0tDQo+IFN0ZWZhbg0K
DQotLSANCkFuZHJlYSBCYXJpc2FuaSB8IEhlYWQgb2YgSGFyZHdhcmUgU2VjdXJpdHkgfCBGLVNl
Y3VyZQ0KDQogd3d3LmYtc2VjdXJlLmNvbSDigKIgZm91bmRyeS5mLXNlY3VyZS5jb20g4oCiIGFu
ZHJlYS5iaW8NCiAgMEE3NiAwNzRBIDAyQ0QgRTk4OSBDRTdGIEFDM0YgREE0NyA1NzhFIDg2NEMg
OUI5RQ0KICAgICJQbHVyYWxpdGFzIG5vbiBlc3QgcG9uZW5kYSBzaW5lIG5lY2Vzc2l0YXRlIg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
