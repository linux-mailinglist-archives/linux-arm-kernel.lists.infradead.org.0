Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF046D3AEB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 10:22:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kg4syzP4Aapo/uRvZDwqvuX4/hKLhA3AY0ZxTMzUehE=; b=kbUQXo1DPINvPw
	eU/oHjdhdIaLsz9YjmEvgu8u/Nd+S/chAdVHrIQ25LdmqhloJPWK7t2PLV9mv4Ie4ZHMSfNtzWw1l
	Ce2Lahj81ZFpRAmT7rDQ32vmjXzEzlcVjQDsxhg2BIt2lTyXkTtaLB1UCEX9pQcyRHlWdmiz92MaW
	31wZ34sBv8y0icsUVPFb5bQbMxh0hc8k/tHo3v1LhH4MhS4FAwMAOpiilktoIH+h0FTf1X8NpCJOA
	vhyKAdsA/qtmJblALkJbsXuQzkMJrw/mfnuEaziycj5KgzLMLdDb8XYlGh3sVTnAW+xudgW0IUWLw
	YMVlcsO5YWS0VlgvKONw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIqBo-0003dY-Ji; Fri, 11 Oct 2019 08:22:20 +0000
Received: from mail-oln040092069014.outbound.protection.outlook.com
 ([40.92.69.14] helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIqBa-0003cQ-Eb; Fri, 11 Oct 2019 08:22:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hRZPaHJAwazvlzw8BVMhf9q+46IzESrBscetig4hVxsk5fEv9656DPcf1eJXGYgfPd63942dvW0CX8y2EjvhBnYPchsiOwzPOyCBqh5CTXJbhsXbAZ4hJMrJ0ppMdzGR92EnzR37XxxRc8cm9IKzyPomvoci2OjyiwLK9+ECZzBL6yj+76JXYjQtgEGWZYbJa6lC/Ql9/LLz4Vreogr44/69MtW9eA4SYCJgZcrCWFzOMI2y9terhy8iwdpXAqbmUVA+Csu9icgpoccOyP22UloxJvbGzov8DIZE1iyi+zIgOPD+wEtjhLrzIxh6JI2Js5NDesBYCHMVYg0pgS4k2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dy1r9Pnvw4BSNAQvcGWb5FbAcE6L4NrPmr1HnbCgdM4=;
 b=aPvtFHt92hCJE9WNwb9FSrpjEN7rUcyLi3VETWJ1t0Aa4C5UsZpEgTHOE5w6yMNGV+vIL9/6pOnm0JKQhlwec/qIz4f0vwhxzyYIb95ZmwqzcUNgJDGH3B0sTtw0yfrbuLjZkvRaZ/PsF+lka7s9VPuGkFOprJEc2pW7koaDYFxQkoZa5phwNsyLruw+zvSG+rG+0ly9NUnoViiN2hrqQXjtEybRRpcjggcTtXcnfxi5fHIpPbeJV4BdcMQ3t0TcE6xJw6+HoE+ZvYe0TF2JucfWVaKX26K4KVZxP1Z+zZyiJBlMQPKoNE6+RuwdCitB3tKiMGhSnygJ/bcZ8MLkzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from HE1EUR02FT034.eop-EUR02.prod.protection.outlook.com
 (10.152.10.56) by HE1EUR02HT122.eop-EUR02.prod.protection.outlook.com
 (10.152.10.252) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.16; Fri, 11 Oct
 2019 08:22:01 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com (10.152.10.55) by
 HE1EUR02FT034.mail.protection.outlook.com (10.152.10.67) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16 via Frontend Transport; Fri, 11 Oct 2019 08:22:01 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::5c5a:1160:a2e0:43d8]) by HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::5c5a:1160:a2e0:43d8%4]) with mapi id 15.20.2347.016; Fri, 11 Oct 2019
 08:22:01 +0000
From: Jonas Karlman <jonas@kwiboo.se>
To: =?utf-8?B?U8O2cmVuIE1vY2g=?= <smoch@web.de>, Shawn Lin
 <shawn.lin@rock-chips.com>, Robin Murphy <robin.murphy@arm.com>, Heiko
 Stuebner <heiko@sntech.de>
Subject: =?utf-8?B?UmU6IFtQQVRDSCAzLzNdIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBmaXggUm9j?=
 =?utf-8?B?a1BybzY0IHNkbW1jIHNldHRpbmdz44CQ6K+35rOo5oSP77yM6YKu5Lu255Sx?=
 =?utf-8?B?bGludXgtcm9ja2NoaXAtYm91bmNlcytzaGF3bi5saW49cm9jay1jaGlwcy5j?=
 =?utf-8?B?b21AbGlzdHMuaW5mcmFkZWFkLm9yZ+S7o+WPkeOAkQ==?=
Thread-Topic: =?utf-8?B?W1BBVENIIDMvM10gYXJtNjQ6IGR0czogcm9ja2NoaXA6IGZpeCBSb2NrUHJv?=
 =?utf-8?B?NjQgc2RtbWMgc2V0dGluZ3PjgJDor7fms6jmhI/vvIzpgq7ku7bnlLFsaW51?=
 =?utf-8?B?eC1yb2NrY2hpcC1ib3VuY2VzK3NoYXduLmxpbj1yb2NrLWNoaXBzLmNvbUBs?=
 =?utf-8?B?aXN0cy5pbmZyYWRlYWQub3Jn5Luj5Y+R44CR?=
Thread-Index: AQHVelmZzetu3oK16ky/CrX/r+rnT6dJ1g8AgACy24CAABR8AIAAHw6AgApovYA=
Date: Fri, 11 Oct 2019 08:22:00 +0000
Message-ID: <HE1PR06MB40115FDF385886FDDE122CD6AC970@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <20191003215036.15023-1-smoch@web.de>
 <20191003215036.15023-3-smoch@web.de>
 <31181f3c-20ec-e717-1f7e-8b35cd54d96d@arm.com>
 <a8b20c45-0426-ee42-4efc-52e56ea6bb20@web.de>
 <120e2dbc-55eb-2205-b00f-7e50928ec706@rock-chips.com>
 <1c452b8b-853f-8f58-5f3a-0bbecbe20557@web.de>
 <fc7dce53-ad39-26e3-7c19-ab60ff4cc332@arm.com>
 <0c6fdb65-be2a-68e3-a686-14ce9b0a00a4@rock-chips.com>
 <e4aaddc2-441b-b835-380e-374a3d935474@web.de>
In-Reply-To: <e4aaddc2-441b-b835-380e-374a3d935474@web.de>
Accept-Language: sv-SE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR0402CA0020.eurprd04.prod.outlook.com
 (2603:10a6:208:15::33) To HE1PR06MB4011.eurprd06.prod.outlook.com
 (2603:10a6:7:9c::32)
x-incomingtopheadermarker: OriginalChecksum:F34B5086F0E17399F427021C2311EC2CF71A416B635E772FA6DFFA2D76CC1725;
 UpperCasedChecksum:7C8509298C9245B1B95B5AD23E653EE7E1E48F7EA5877F930C0373A32A0A638E;
 SizeAsReceived:8664; Count:50
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [nyk11NJ/Y2lOoyD9PEkSBWfsgEKqX/77]
x-microsoft-original-message-id: <d0e428b4-8d59-e508-e76b-53ff6bc2a75f@kwiboo.se>
x-ms-publictraffictype: Email
x-incomingheadercount: 50
x-eopattributedmessage: 0
x-ms-traffictypediagnostic: HE1EUR02HT122:
x-ms-exchange-purlcount: 4
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pMA8sp039R1YZF9dLDCugmp1eCLxjpO0q1P8QWOShohnfBJvrSieHCUSyJbomhSSKJCEBpPqHodc0XgYpfvwxSZaHTlA1CtyjmrLMXkGzGPMWMXxdjL3AtZgbDnVLEi0tFaRlcX2KyFbdJICEHGqJSddmTYWKeSWFSm5iX4yKUOeiK+f7TGImJORcr6YU/1A7wWtysO6+1Yk4ErQ+qeZtFm9fGD+4cD9YmrgfXdTKJ0=
x-ms-exchange-transport-forked: True
Content-ID: <43A809E331C7B7498DB269FB490E9B3C@eurprd06.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 232642e3-d6d3-4f5a-e3f3-08d74e2416c1
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2019 08:22:00.9336 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR02HT122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_012206_493064_76748B36 
X-CRM114-Status: GOOD (  27.89  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.69.14 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS0xMC0wNCAxOToyNCwgU8O2cmVuIE1vY2ggd3JvdGU6DQo+DQo+IE9uIDA0LjEwLjE5
IDE3OjMzLCBTaGF3biBMaW4gd3JvdGU6DQo+PiBPbiAyMDE5LzEwLzQgMjI6MjAsIFJvYmluIE11
cnBoeSB3cm90ZToNCj4+PiBPbiAwNC8xMC8yMDE5IDA0OjM5LCBTb2VyZW4gTW9jaCB3cm90ZToN
Cj4+Pj4NCj4+Pj4gT24gMDQuMTAuMTkgMDQ6MTMsIFNoYXduIExpbiB3cm90ZToNCj4+Pj4+IE9u
IDIwMTkvMTAvNCA4OjUzLCBTb2VyZW4gTW9jaCB3cm90ZToNCj4+Pj4+Pg0KPj4+Pj4+IE9uIDA0
LjEwLjE5IDAyOjAxLCBSb2JpbiBNdXJwaHkgd3JvdGU6DQo+Pj4+Pj4+IE9uIDIwMTktMTAtMDMg
MTA6NTAgcG0sIFNvZXJlbiBNb2NoIHdyb3RlOg0KPj4+Pj4+Pj4gQWNjb3JkaW5nIHRvIHRoZSBS
b2NrUHJvNjQgc2NoZW1hdGljIFsxXSB0aGUgcmszMzk5IHNkbW1jDQo+Pj4+Pj4+PiBjb250cm9s
bGVyIGlzDQo+Pj4+Pj4+PiBjb25uZWN0ZWQgdG8gYSBtaWNyb1NEIChURiBjYXJkKSBzbG90LCB3
aGljaCBjYW5ub3QgYmUgc3dpdGNoZWQgdG8NCj4+Pj4+Pj4+IDEuOFYuDQo+Pj4+Pj4+IFJlYWxs
eT8gQUZBSUNTIHRoZSBTRE1NQzAgd2lyaW5nIGxvb2tzIHByZXR0eSBtdWNoIGlkZW50aWNhbCB0
byB0aGUNCj4+Pj4+Pj4gTmFub1BDLVQ0IHNjaGVtYXRpYyAoaXQncyB0aGUgc2FtZSByZWZlcmVu
Y2UgZGVzaWduLCBhZnRlciBhbGwpLA0KPj4+Pj4+PiBhbmQgSQ0KPj4+Pj4+PiBrbm93IHRoYXQg
Ym9hcmQgY2FuIGhhcHBpbHkgZHJpdmUgYSBVSFMtSSBtaWNyb1NEIGNhcmQgd2l0aCAxLjh2DQo+
Pj4+Pj4+IEkvT3MsDQo+Pj4+Pj4+IGJlY2F1c2UgbWluZSdzIGRvaW5nIHNvIHJpZ2h0IG5vdy4N
Cj4+Pj4+Pj4NCj4+Pj4+Pj4gUm9iaW4uDQo+Pj4+Pj4gT0ssIHRoZSBSb2NrUHJvNjQgZG9lcyBu
b3QgYWxsb3cgYSBjYXJkIHJlc2V0IChwb3dlciBjeWNsZSkgc2luY2UNCj4+Pj4+PiBWQ0MzVjBf
U0QgaXMgZGlyZWN0bHkgY29ubmVjdGVkIHRvIFZDQzNWM19TWVMgKHZpYSBSODk1NTUpLCB0aGUN
Cj4+Pj4+PiBTRE1NQzBfUFdIX0ggc2lnbmFsIGlzIG5vdCBjb25uZWN0ZWQuIFNvIHRoZSBjYXJk
IGZhaWxzIHRvIGlkZW50aWZ5DQo+Pj4+Pj4gaXRzZWxmIGFmdGVyIHN1c3BlbmQgb3IgcmVib290
IHdoZW4gc3dpdGNoZWQgdG8gMS44ViBvcGVyYXRpb24uDQo+Pj4gQWgsIHRoYW5rcyBmb3IgY2xh
cmlmeWluZyAtIEkgZGlkIG92ZXJsb29rIHRoZSBzdWJ0bGV0eSB0aGF0IFUxMiBhbmQNCj4+PiBm
cmllbmRzIGhhdmUgIk5DIiBhcyBhbHRlcm5hdGl2ZSBwYXJ0IG51bWJlcnMsIGV2ZW4gdGhvdWdo
IHRoZXkNCj4+PiBhcmVuJ3QgYWN0dWFsbHkgbWFya2VkIGFzIEROUC4gU28gaXQncyBzdGlsbCBu
b3Qgc28gbXVjaCAiY2Fubm90IGJlDQo+Pj4gc3dpdGNoZWQiIGFzICJzd2l0Y2hpbmcgY2FuIGxl
YWQgdG8gb3RoZXIgcHJvYmxlbXMiLg0KPj4+DQo+Pj4+PiBJIGJlbGlldmUgd2UgYWRkcmVzc2Vk
IHRoaXMgaXNzdWUgbG9uZyB0aW1lIGFnbywgcGxlYXNlIGNoZWNrOg0KPj4+Pj4NCj4+Pj4+IGh0
dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xp
bnV4LmdpdC9jb21taXQvP2lkPTZhMTFmYzQ3ZjE3NWM4ZDg3MDE4ZTg5Y2I1OGUyZDM2YzY2NTM0
Y2INCj4+Pj4+DQo+Pj4+Pg0KPj4+PiBUaGFua3MgZm9yIHRoZSBwb2ludGVyLg0KPj4+PiBJbiB0
aGlzIGNhc2UgSSBndWVzcyBJIHNob3VsZCB1c2UgZm9sbG93aW5nIHBhdGNoIGluc3RlYWQ6DQo+
Pj4+DQo+Pj4+IC0tLSByazMzOTktcm9ja3BybzY0LmR0cy5iYWsgwqDCoCAyMDE5LTEwLTAzIDIy
OjE0OjAwLjA2Nzc0NTc5OSArMDIwMA0KPj4+PiArKysgcmszMzk5LXJvY2twcm82NC5kdHPCoMKg
wqAgMjAxOS0xMC0wNCAwMDowMjo1MC4wNDc4OTIzNjYgKzAyMDANCj4+Pj4gQEAgLTYxOSw2ICs2
MTksOCBAQA0KPj4+PiDCoMKgwqDCoMKgIG1heC1mcmVxdWVuY3kgPSA8MTUwMDAwMDAwPjsNCj4+
Pj4gwqDCoMKgwqDCoCBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOw0KPj4+PiDCoMKgwqDCoMKg
IHBpbmN0cmwtMCA9IDwmc2RtbWNfY2xrICZzZG1tY19jbWQgJnNkbW1jX2J1czQ+Ow0KPj4+PiAr
wqDCoMKgIHNkLXVocy1zZHIxMDQ7DQo+Pj4+ICvCoMKgwqAgdnFtbWMtc3VwcGx5ID0gPCZ2Y2Nf
c2Rpbz47DQo+Pj4+IMKgwqDCoMKgwqAgc3RhdHVzID0gIm9rYXkiOw0KPj4+PiDCoMKgfTsNCj4+
Pj4gV2hlbiBJIGRvIHNvLCB0aGUgc2QgY2FyZCBpcyBkZXRlY3RlZCBhcyBTRFIxMDQsIGJ1dCBh
IHJlYm9vdCBoYW5nczoNCj4+Pj4NCj4+Pj4gQm9vdDE6IDIwMTgtMDYtMjYsIHZlcnNpb246IDEu
MTQNCj4+Pj4gQ1BVSWQgPSAweDANCj4+Pj4gQ2hpcFR5cGUgPSAweDEwLCAyODYNCj4+Pj4gU3Bp
X0NoaXBJZCA9IGM4NDAxOA0KPj4+PiBubyBmaW5kIHJrcGFydGl0aW9uDQo+Pj4+IFNwaUJvb3RJ
bml0OmZmZmZmZmZmDQo+Pj4+IG1tYzogRVJST1I6IFNESENJIEVSUjpjbWQ6MHgxMDIsc3RhdDow
eDE4MDAwDQo+Pj4+IG1tYzogRVJST1I6IENhcmQgZGlkIG5vdCByZXNwb25kIHRvIHZvbHRhZ2Ug
c2VsZWN0IQ0KPj4+PiBlbW1jIHJlaW5pdA0KPj4+PiBtbWM6IEVSUk9SOiBTREhDSSBFUlI6Y21k
OjB4MTAyLHN0YXQ6MHgxODAwMA0KPj4+PiBtbWM6IEVSUk9SOiBDYXJkIGRpZCBub3QgcmVzcG9u
ZCB0byB2b2x0YWdlIHNlbGVjdCENCj4+Pj4gZW1tYyByZWluaXQNCj4+Pj4gbW1jOiBFUlJPUjog
U0RIQ0kgRVJSOmNtZDoweDEwMixzdGF0OjB4MTgwMDANCj4+Pj4gbW1jOiBFUlJPUjogQ2FyZCBk
aWQgbm90IHJlc3BvbmQgdG8gdm9sdGFnZSBzZWxlY3QhDQo+Pj4+IFNkbW1jSW5pdD0yIDENCj4+
Pj4gbW1jMDpjbWQ1LDMyDQo+Pj4+IG1tYzA6Y21kNywzMg0KPj4+PiBtbWMwOmNtZDUsMzINCj4+
Pj4gbW1jMDpjbWQ3LDMyDQo+Pj4+IG1tYzA6Y21kNSwzMg0KPj4+PiBtbWMwOmNtZDcsMzINCj4+
Pj4gU2RtbWNJbml0PTAgMQ0KPj4+Pg0KPj4+PiBTbyBJIGd1ZXNzIEkgc2hvdWxkIHVzZSBhIGRp
ZmZlcmVudCBtaW5pbG9hZGVyIGZvciB0aGlzIHJlYm9vdCB0bw0KPj4+PiB3b3JrIT8NCj4+Pj4g
T3Igd2hhdCBlbHNlIGNvdWxkIGJlIHdyb25nIGhlcmU/DQo+Pj4gSG1tLCBJIGd1ZXNzIHRoaXMg
aXMgInRoZSBUaW5rZXJib2FyZCBwcm9ibGVtIiBhZ2FpbiAtIHRoZSBwYXRjaA0KPj4+IGFib3Zl
IHdvdWxkIGJlIE9LIGlmIHdlIGNvdWxkIGdldCBhcyBmYXIgYXMgdGhlIGtlcm5lbCwgYnV0IGNh
bid0DQo+Pj4gaGVscCBpZiB0aGUgDQo+PiBJIGRpZG4ndCByZWFsaXplIHRoYXQgU0Qgd2FzIHVz
ZWQgYXMgYm9vdCBtZWRpdW0gZm9yIFJvY2tQcm82NCwgYnV0IEkNCj4+IGRpZCBwYXRjaCB0aGUg
dmVuZG9yIHRyZWUgdG8gc29sdmUgdGhlIGlzc3VlIGZvciBUaW5rZXJib2FyZCwgc2VlDQo+PiBo
dHRwczovL2dpdGh1Yi5jb20vcm9ja2NoaXAtbGludXgva2VybmVsL2NvbW1pdC9hNGNjZGUyMWY1
YTlmMDRmOTk2ZmIwMjQ3OWNiOWYxNmQzZGM4ZGMwDQo+Pg0KPj4NCj4+IE15IGluaXRpYWwgcGxh
biB3YXMgdG8gcGF0Y2hpbmcgdXBzdHJlYW0ga2VybmVsIGJ5IGFkZGluZyAtPnNodXRkb3duLGJ1
dA0KPj4gbmV2ZXIgZmluaXNoIGl0Lg0KPj4NCj4+PiBvZmZlbmRpbmcgY2FyZCBpcyBpdHNlbGYg
dGhlIGJvb3QgbWVkaXVtLiBUaGVyZSB3YXMgYSBwcm9wb3NhbCBoZXJlOg0KPj4+DQo+Pj4gaHR0
cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMDgxNzIxNy8NCj4+IFRoaXMgUkZDIGFs
c28gbG9va3MgZ29vZCB0byBtZSwgYnV0IHNlZW1zIGl0IG5lZWRzIHZvbHVudGVlcnMNCj4+IHRv
IHB1c2ggaXQgYWdhaW4uDQo+IE9oLCBJIHRoaW5rIHRoaXMgaXMgYSB0b3RhbGx5IHdyb25nIHdh
eS4NCj4NCj4gV2hpbGUgdGhpcyBtaWdodCB3b3JrIGZvciBzb21lIGNhcmRzLCBzZXR0aW5nIHRo
ZSBjb250cm9sbGVyJ3MgaS9vDQo+IHZvbHRhZ2UgdG8gMy4zViB3aGlsZSBsZWF2aW5nIHRoZSBj
YXJkIGF0IDEuOFYgY29uZmlndXJhdGlvbiBpcyB0b3RhbGx5DQo+IGFnYWluc3QgdGhlIHNwZWNp
ZmljYXRpb24sIGNhbiBsZWFkIHRvIGFsbCBraW5kcyBvZiBzdHJhbmdlIGJlaGF2aW91cg0KPiBh
bmQgZXZlbiBjYXVzZSBoYXJkd2FyZSBkYW1hZ2UuIEl0IGFsc28gd291bGQgYWN0aXZlbHkgZGVm
ZW5kIHRoZQ0KPiBwdXJwb3NlIG9mIHRoZSBhYm92ZSBtZW50aW9uZWQgcGF0Y2ggKDZhMTFmYzQp
IHdoZXJlIHRoZSBrZXJuZWwgZ3Vlc3Nlcw0KPiB0aGUgaS9vIHZvbHRhZ2UgZnJvbSB0aGUgY2Fy
ZCBjb25maWd1cmF0aW9uIGFuZCBzd2l0Y2hlcyB0aGUgY29udHJvbGxlcg0KPiBhY2NvcmRpbmds
eS4gV2Ugd291bGQgZW5kIHVwIHdpdGggYSAxLjhWIGNhcmQgYW5kIGNvbnRyb2xsZXINCj4gY29u
ZmlndXJhdGlvbiBhbmQgYSByZWd1bGF0b3Igdm9sdGFnZSBvZiAzLjNWLiBUaGlzIHdvdWxkIG9u
bHkgd29yayB3aXRoDQo+IGdvb2QgbHVjay4gRXZlbiBpZiB0aGUga2VybmVsIGRyaXZlciB3b3Vs
ZCBzd2l0Y2ggdGhlIHJlZ3VsYXRvciBiYWNrIHRvDQo+IDEuOFYgaW4gdGhpcyBjYXNlLCB0aGUg
dm9sdGFnZSBtaXNtYXRjaCByZW1haW5zIGluIHRoZSBib290bG9hZGVyIHdoZW4NCj4gdGhpcyBj
YXJkIGNvbnRhaW5zIHRoZSBib290IGltYWdlLg0KPg0KPiBUaGUgb25seSBzYW5lIHdheSBJIHNl
ZSB0byBoYW5kbGUgdGhpcyBpcyBpbXBsZW1lbnRpbmcgdGhlIHNhbWUNCj4gd29ya2Fyb3VuZCAo
bW9kZSBndWVzc2luZykgYWxzbyBpbiB0aGUgYm9vdGxvYWRlciAocm9ja2NoaXAgbWluaWxvYWRl
cg0KPiBhbmQgdS1ib290IFNQTCBzaW5jZSBib3RoIGJvb3Rsb2FkZXIgY2hhaW5zIGFyZSBzdXBw
b3J0ZWQgZm9yIHRoaXMgYm9hcmQpLg0KPg0KPiBPciBtYXliZSBJIG1pc3Mgc29tZXRoaW5nPw0K
DQpUaGFua3MgZm9yIHlvdXIgaW5wdXQsIEkgaGF2ZSBtYWRlIGEgbmV3IHNlcmllcyBbMV0gd2l0
aCBhIHNpbWlsYXIgYXBwcm9hY2ggYnV0IGlzIGxpbWl0ZWQgdG8gZHdfbW1jLXJvY2tjaGlwDQph
bmQgb25seSBjaGFuZ2VzIHRoZSByZWd1bGF0b3IgYXQgcG93ZXJfb2ZmIGFmdGVyIHRoZSByZWd1
bGF0b3IgaGFzIGJlZW4gZGlzYWJsZWQgKHRoZSB2cW1tYyByZWd1bGF0b3IgaW4gYWZmZWN0ZWQg
ZGV2aWNlcyBpcyBhbHdheXMtb24pLg0KDQpUbyBteSBrbm93bGVkZ2UgdGhlIHByb2JsZW0gaXMg
bm90IHdpdGggdGhlIHJvY2tjaGlwIG1pbmlsb2FkZXIgb3IgdS1ib290IFNQTCwgaXQgaXMgdGhl
IGluaXRpYWwgYm9vdCByb20gdGhhdCB0cmllcyB0byBsb2FkDQp0aGUgbWluaWxvYWRlci9TUEwg
ZnJvbSBhIFNELWNhcmQsIHNvIG5vdGhpbmcgdGhhdCBjYW4gYmUgdXBkYXRlZC4NCg0KSSBoYXZl
IG9ic2VydmVkIHRoaXMgaXNzdWUgb24gdGhlIGZvbGxvd2luZyBkZXZpY2VzLCBhbmQgdGhlIHBh
dGNoZXMgYXQgWzFdIG1ha2VzIGl0IHBvc3NpYmxlIHRvIHJlYm9vdCBmcm9tIFNELWNhcmQgYWZ0
ZXIgVUhTIGhhcyBiZWVuIGVuYWJsZWQuDQotIEFzdXMgVGlua2VyIEJvYXJkIChSSzMyODgpDQot
IFJvY2tjaGlwIFNhcHBoaXJlIEJvYXJkIChSSzMzOTkpDQotIFJhZHhhIFJvY2sgUGkgNCAoUksz
Mzk5KQ0KLSBQaW5lNjQgUm9ja1BybzY0IChSSzMzOTkpDQpBbGwgb2YgdGhlIGFib3ZlIHNlZW0g
dG8gdXNlIHRoZSBSSzgwOCByZWd1bGF0b3IgZm9yIHNkIGlvIHZvbHRhZ2UuDQoNClRoZSBST0Mt
UkszMzI4LUNDIGRpZCBub3QgaGF2ZSB0aGlzIGlzc3VlIGFuZCBzZWVtIHRvIGF1dG9tYXRpY2Fs
bHkgcmVzZXQgdG8gMy4zdi4NCg0KWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS9Ld2lib28vbGludXgt
cm9ja2NoaXAvY29tcGFyZS9uZXh0LTIwMTkxMDExLi4ubmV4dC0yMDE5MTAxMS1tbWMNCg0KUmVn
YXJkcywNCkpvbmFzDQoNCj4NCj4gU29lcmVuDQo+DQo+DQo+Pj4gYWx0aG91Z2ggSSdtIG5vdCBz
dXJlIHdoYXQgaWYgYW55IHByb2dyZXNzIGhhcyBiZWVuIG1hZGUgc2luY2UgdGhlbi4NCj4+Pg0K
Pj4+IFJvYmluLg0KPj4+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
