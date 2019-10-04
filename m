Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD83CBD9C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 16:42:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ul0XR29ptYmUjs39cM9xrKYtTZjcEgt2XAdlATk94b8=; b=WfAe3ht7isuYJF
	Do298cDKjaxg05Ceh8Ic7IdtxeX/BSrsybZau6lolfpzLulM0GRzVpQbWA0omz8dp5HueRy+vB90X
	0OZoDesYzlyYtUA2anWikSDYB5hbYkxhcMyLepYG0U8gHNaBNPQVb7OmbU68md8xubX3E2GNQK5EU
	kZIsbK4j/73+UHIq7ad1DNSTQwcP6K+qC5J5oVT4aeK3R2uYN3d/qHKnzMFXHkmRn42eEEmSwQMl7
	vkIutge/jq3zHX1dAdVSLyYvZDyapMy1RRmdTF1m15fdtkQTt8AZbO3NKuJevl2K2B3m6NBu+hBsD
	goLkMwnHLPRIY7K+Zb5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGOnF-0008Ec-AX; Fri, 04 Oct 2019 14:42:53 +0000
Received: from mail-oln040092066080.outbound.protection.outlook.com
 ([40.92.66.80] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGOn7-0008DK-Mu; Fri, 04 Oct 2019 14:42:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ix8uN9xw0FdiOVq6sbe6hW9rBcHgVvq7cMCcdFB6jBfL8BbHJR1qLWJRuSnJBw6Gc/W3IWfg98XFUyDJpIZ1MGTginHFiIODIbusFTu7HJxCZXJ7Xv0iLSDqk7ya/7sUtlyXvIWQzAeknaxUiMw0V28jII4/bVHBJJQdRV6A+YGSUQrCny5RdByFcc+yq2dmU+cL9UVMx80O/KsN56cCQG2HfNH/zpHKbgonupW5lVFXma+Hj5CvfRKMq8/e0HOF3O8VovEbiY4z0Cd9OD6iRtWxqGm9rRKi+a3CXS6M68X+yhV5x6btx1Y60HgKX/2uyD9koq5Ld2Z8ft20MiTEMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5E8sBNjbGYhd6RYLTEJ15IEILUzUJcRA8IZbSsmxB+w=;
 b=RrY/xbcpjc2WL1j9hUcgfS+oOLQJ6L1k2goz6HqDxkUBVYyGUzAvja1iHbd3qW5Bxqh46pwOFRxEERDO9AaJQxhtj/9HNWh5o7j10CXkOXwzU8Iv3DcRlMp4GNOspE/xX7k2IaA5ZAswcE9DiZN/zthI6F4nxHjTE5Px3Zksz/3ie2tHmVPEvpr3+GGCTeGyTUL0BkYHjla6+o4g1GhI/lskkWsNGeIZ2liOBHQImo/0/vzkUJLqui2U02Gr5RVwQ8FssANFPOVqiff5klbZVqmfUsH7pIaREwUg+Yo/Yq2Asp5yaTSXQalS9EoX1cbahiBnkOzW8ggDw4K2UpQLxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from DB5EUR01FT062.eop-EUR01.prod.protection.outlook.com
 (10.152.4.52) by DB5EUR01HT169.eop-EUR01.prod.protection.outlook.com
 (10.152.5.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2327.20; Fri, 4 Oct
 2019 14:42:42 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com (10.152.4.53) by
 DB5EUR01FT062.mail.protection.outlook.com (10.152.5.167) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.20 via Frontend Transport; Fri, 4 Oct 2019 14:42:42 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::5c5a:1160:a2e0:43d8]) by HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::5c5a:1160:a2e0:43d8%4]) with mapi id 15.20.2305.023; Fri, 4 Oct 2019
 14:42:42 +0000
From: Jonas Karlman <jonas@kwiboo.se>
To: Robin Murphy <robin.murphy@arm.com>, Soeren Moch <smoch@web.de>, Shawn Lin
 <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
Subject: =?utf-8?B?UmU6IFtQQVRDSCAzLzNdIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBmaXggUm9j?=
 =?utf-8?B?a1BybzY0IHNkbW1jIHNldHRpbmdz44CQ6K+35rOo5oSP77yM6YKu5Lu255Sx?=
 =?utf-8?B?bGludXgtcm9ja2NoaXAtYm91bmNlcytzaGF3bi5saW49cm9jay1jaGlwcy5j?=
 =?utf-8?B?b21AbGlzdHMuaW5mcmFkZWFkLm9yZ+S7o+WPkeOAkQ==?=
Thread-Topic: =?utf-8?B?W1BBVENIIDMvM10gYXJtNjQ6IGR0czogcm9ja2NoaXA6IGZpeCBSb2NrUHJv?=
 =?utf-8?B?NjQgc2RtbWMgc2V0dGluZ3PjgJDor7fms6jmhI/vvIzpgq7ku7bnlLFsaW51?=
 =?utf-8?B?eC1yb2NrY2hpcC1ib3VuY2VzK3NoYXduLmxpbj1yb2NrLWNoaXBzLmNvbUBs?=
 =?utf-8?B?aXN0cy5pbmZyYWRlYWQub3Jn5Luj5Y+R44CR?=
Thread-Index: AQHVelmZzetu3oK16ky/CrX/r+rnT6dJ1g8AgACy24CAAAZUAA==
Date: Fri, 4 Oct 2019 14:42:42 +0000
Message-ID: <HE1PR06MB4011FC12B5F4D3C455DEF738AC9E0@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <20191003215036.15023-1-smoch@web.de>
 <20191003215036.15023-3-smoch@web.de>
 <31181f3c-20ec-e717-1f7e-8b35cd54d96d@arm.com>
 <a8b20c45-0426-ee42-4efc-52e56ea6bb20@web.de>
 <120e2dbc-55eb-2205-b00f-7e50928ec706@rock-chips.com>
 <1c452b8b-853f-8f58-5f3a-0bbecbe20557@web.de>
 <fc7dce53-ad39-26e3-7c19-ab60ff4cc332@arm.com>
In-Reply-To: <fc7dce53-ad39-26e3-7c19-ab60ff4cc332@arm.com>
Accept-Language: sv-SE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR0202CA0025.eurprd02.prod.outlook.com
 (2603:10a6:3:e4::11) To HE1PR06MB4011.eurprd06.prod.outlook.com
 (2603:10a6:7:9c::32)
x-incomingtopheadermarker: OriginalChecksum:7CF50A1E667196D90AF2176FE6D9CC7563319E220D78F793786DA8F4E108C6AB;
 UpperCasedChecksum:C78ACEA92EAB943C01188770F7B165E306DDB7F30EF529F8CD3DF04562636393;
 SizeAsReceived:8498; Count:50
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [Owz6KUrMWcf3Tt+4rzmu5Z0/4XjsEUF9]
x-microsoft-original-message-id: <6c592ee3-c9d7-a291-9812-c224b0832835@kwiboo.se>
x-ms-publictraffictype: Email
x-incomingheadercount: 50
x-eopattributedmessage: 0
x-ms-traffictypediagnostic: DB5EUR01HT169:
x-ms-exchange-purlcount: 2
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IKt8z7P0QxpTmlBscNAgHTRVCIM/bVTO8qDi7/RK57OWedQNEZyTHvrnZ3YzuRc/zlriV5wgN+dq3rEprKJggcFjbOFjcTa31zy4YJFe04GBoNBEPxEhJ4X9gi4qsJ3zd3eQWHyQLCreusQOHlZqvtGxQMI5TLvLsVBAurrWZlWM4afNbVmojkqDuRKbx85Z3ZXJ4o2neSbtPWOW/3AIHZmYP9T1D478pUK9VS0bdec=
x-ms-exchange-transport-forked: True
Content-ID: <3CAD63302B4A2E4EB53971FB8091A3C2@eurprd06.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: e493e80d-b542-41ac-9ec0-08d748d91c7f
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Oct 2019 14:42:42.4140 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR01HT169
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_074245_754226_F9512D24 
X-CRM114-Status: GOOD (  18.79  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.66.80 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.66.80 listed in wl.mailspike.net]
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

T24gMjAxOS0xMC0wNCAxNjoyMCwgUm9iaW4gTXVycGh5IHdyb3RlOg0KPiBPbiAwNC8xMC8yMDE5
IDA0OjM5LCBTb2VyZW4gTW9jaCB3cm90ZToNCj4+DQo+PiBPbiAwNC4xMC4xOSAwNDoxMywgU2hh
d24gTGluIHdyb3RlOg0KPj4+IE9uIDIwMTkvMTAvNCA4OjUzLCBTb2VyZW4gTW9jaCB3cm90ZToN
Cj4+Pj4NCj4+Pj4gT24gMDQuMTAuMTkgMDI6MDEsIFJvYmluIE11cnBoeSB3cm90ZToNCj4+Pj4+
IE9uIDIwMTktMTAtMDMgMTA6NTAgcG0sIFNvZXJlbiBNb2NoIHdyb3RlOg0KPj4+Pj4+IEFjY29y
ZGluZyB0byB0aGUgUm9ja1BybzY0IHNjaGVtYXRpYyBbMV0gdGhlIHJrMzM5OSBzZG1tYw0KPj4+
Pj4+IGNvbnRyb2xsZXIgaXMNCj4+Pj4+PiBjb25uZWN0ZWQgdG8gYSBtaWNyb1NEIChURiBjYXJk
KSBzbG90LCB3aGljaCBjYW5ub3QgYmUgc3dpdGNoZWQgdG8NCj4+Pj4+PiAxLjhWLg0KPj4+Pj4g
UmVhbGx5PyBBRkFJQ1MgdGhlIFNETU1DMCB3aXJpbmcgbG9va3MgcHJldHR5IG11Y2ggaWRlbnRp
Y2FsIHRvIHRoZQ0KPj4+Pj4gTmFub1BDLVQ0IHNjaGVtYXRpYyAoaXQncyB0aGUgc2FtZSByZWZl
cmVuY2UgZGVzaWduLCBhZnRlciBhbGwpLCBhbmQgSQ0KPj4+Pj4ga25vdyB0aGF0IGJvYXJkIGNh
biBoYXBwaWx5IGRyaXZlIGEgVUhTLUkgbWljcm9TRCBjYXJkIHdpdGggMS44diBJL09zLA0KPj4+
Pj4gYmVjYXVzZSBtaW5lJ3MgZG9pbmcgc28gcmlnaHQgbm93Lg0KPj4+Pj4NCj4+Pj4+IFJvYmlu
Lg0KPj4+PiBPSywgdGhlIFJvY2tQcm82NCBkb2VzIG5vdCBhbGxvdyBhIGNhcmQgcmVzZXQgKHBv
d2VyIGN5Y2xlKSBzaW5jZQ0KPj4+PiBWQ0MzVjBfU0QgaXMgZGlyZWN0bHkgY29ubmVjdGVkIHRv
IFZDQzNWM19TWVMgKHZpYSBSODk1NTUpLCB0aGUNCj4+Pj4gU0RNTUMwX1BXSF9IIHNpZ25hbCBp
cyBub3QgY29ubmVjdGVkLiBTbyB0aGUgY2FyZCBmYWlscyB0byBpZGVudGlmeQ0KPj4+PiBpdHNl
bGYgYWZ0ZXIgc3VzcGVuZCBvciByZWJvb3Qgd2hlbiBzd2l0Y2hlZCB0byAxLjhWIG9wZXJhdGlv
bi4NCj4gQWgsIHRoYW5rcyBmb3IgY2xhcmlmeWluZyAtIEkgZGlkIG92ZXJsb29rIHRoZSBzdWJ0
bGV0eSB0aGF0IFUxMiBhbmQgDQo+IGZyaWVuZHMgaGF2ZSAiTkMiIGFzIGFsdGVybmF0aXZlIHBh
cnQgbnVtYmVycywgZXZlbiB0aG91Z2ggdGhleSBhcmVuJ3QgDQo+IGFjdHVhbGx5IG1hcmtlZCBh
cyBETlAuIFNvIGl0J3Mgc3RpbGwgbm90IHNvIG11Y2ggImNhbm5vdCBiZSBzd2l0Y2hlZCIgDQo+
IGFzICJzd2l0Y2hpbmcgY2FuIGxlYWQgdG8gb3RoZXIgcHJvYmxlbXMiLg0KPg0KPj4+IEkgYmVs
aWV2ZSB3ZSBhZGRyZXNzZWQgdGhpcyBpc3N1ZSBsb25nIHRpbWUgYWdvLCBwbGVhc2UgY2hlY2s6
DQo+Pj4NCj4+PiBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dp
dC90b3J2YWxkcy9saW51eC5naXQvY29tbWl0Lz9pZD02YTExZmM0N2YxNzVjOGQ4NzAxOGU4OWNi
NThlMmQzNmM2NjUzNGNiDQo+Pj4NCj4+IFRoYW5rcyBmb3IgdGhlIHBvaW50ZXIuDQo+PiBJbiB0
aGlzIGNhc2UgSSBndWVzcyBJIHNob3VsZCB1c2UgZm9sbG93aW5nIHBhdGNoIGluc3RlYWQ6DQo+
Pg0KPj4gLS0tIHJrMzM5OS1yb2NrcHJvNjQuZHRzLmJhayDCoMKgIDIwMTktMTAtMDMgMjI6MTQ6
MDAuMDY3NzQ1Nzk5ICswMjAwDQo+PiArKysgcmszMzk5LXJvY2twcm82NC5kdHPCoMKgwqAgMjAx
OS0xMC0wNCAwMDowMjo1MC4wNDc4OTIzNjYgKzAyMDANCj4+IEBAIC02MTksNiArNjE5LDggQEAN
Cj4+ICDCoMKgwqDCoCBtYXgtZnJlcXVlbmN5ID0gPDE1MDAwMDAwMD47DQo+PiAgwqDCoMKgwqAg
cGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsNCj4+ICDCoMKgwqDCoCBwaW5jdHJsLTAgPSA8JnNk
bW1jX2NsayAmc2RtbWNfY21kICZzZG1tY19idXM0PjsNCj4+ICvCoMKgwqAgc2QtdWhzLXNkcjEw
NDsNCj4+ICvCoMKgwqAgdnFtbWMtc3VwcGx5ID0gPCZ2Y2Nfc2Rpbz47DQo+PiAgwqDCoMKgwqAg
c3RhdHVzID0gIm9rYXkiOw0KPj4gIMKgfTsNCj4+ICAgDQo+PiBXaGVuIEkgZG8gc28sIHRoZSBz
ZCBjYXJkIGlzIGRldGVjdGVkIGFzIFNEUjEwNCwgYnV0IGEgcmVib290IGhhbmdzOg0KPj4NCj4+
IEJvb3QxOiAyMDE4LTA2LTI2LCB2ZXJzaW9uOiAxLjE0DQo+PiBDUFVJZCA9IDB4MA0KPj4gQ2hp
cFR5cGUgPSAweDEwLCAyODYNCj4+IFNwaV9DaGlwSWQgPSBjODQwMTgNCj4+IG5vIGZpbmQgcmtw
YXJ0aXRpb24NCj4+IFNwaUJvb3RJbml0OmZmZmZmZmZmDQo+PiBtbWM6IEVSUk9SOiBTREhDSSBF
UlI6Y21kOjB4MTAyLHN0YXQ6MHgxODAwMA0KPj4gbW1jOiBFUlJPUjogQ2FyZCBkaWQgbm90IHJl
c3BvbmQgdG8gdm9sdGFnZSBzZWxlY3QhDQo+PiBlbW1jIHJlaW5pdA0KPj4gbW1jOiBFUlJPUjog
U0RIQ0kgRVJSOmNtZDoweDEwMixzdGF0OjB4MTgwMDANCj4+IG1tYzogRVJST1I6IENhcmQgZGlk
IG5vdCByZXNwb25kIHRvIHZvbHRhZ2Ugc2VsZWN0IQ0KPj4gZW1tYyByZWluaXQNCj4+IG1tYzog
RVJST1I6IFNESENJIEVSUjpjbWQ6MHgxMDIsc3RhdDoweDE4MDAwDQo+PiBtbWM6IEVSUk9SOiBD
YXJkIGRpZCBub3QgcmVzcG9uZCB0byB2b2x0YWdlIHNlbGVjdCENCj4+IFNkbW1jSW5pdD0yIDEN
Cj4+IG1tYzA6Y21kNSwzMg0KPj4gbW1jMDpjbWQ3LDMyDQo+PiBtbWMwOmNtZDUsMzINCj4+IG1t
YzA6Y21kNywzMg0KPj4gbW1jMDpjbWQ1LDMyDQo+PiBtbWMwOmNtZDcsMzINCj4+IFNkbW1jSW5p
dD0wIDENCj4+DQo+PiBTbyBJIGd1ZXNzIEkgc2hvdWxkIHVzZSBhIGRpZmZlcmVudCBtaW5pbG9h
ZGVyIGZvciB0aGlzIHJlYm9vdCB0byB3b3JrIT8NCj4+IE9yIHdoYXQgZWxzZSBjb3VsZCBiZSB3
cm9uZyBoZXJlPw0KPiBIbW0sIEkgZ3Vlc3MgdGhpcyBpcyAidGhlIFRpbmtlcmJvYXJkIHByb2Js
ZW0iIGFnYWluIC0gdGhlIHBhdGNoIGFib3ZlIA0KPiB3b3VsZCBiZSBPSyBpZiB3ZSBjb3VsZCBn
ZXQgYXMgZmFyIGFzIHRoZSBrZXJuZWwsIGJ1dCBjYW4ndCBoZWxwIGlmIHRoZSANCj4gb2ZmZW5k
aW5nIGNhcmQgaXMgaXRzZWxmIHRoZSBib290IG1lZGl1bS4gVGhlcmUgd2FzIGEgcHJvcG9zYWwg
aGVyZToNCj4NCj4gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMDgxNzIxNy8N
Cj4NCj4gYWx0aG91Z2ggSSdtIG5vdCBzdXJlIHdoYXQgaWYgYW55IHByb2dyZXNzIGhhcyBiZWVu
IG1hZGUgc2luY2UgdGhlbi4NCg0KQ29ycmVjdCwgSSBuZXZlciBnb3QgYXJvdW5kIHRvIGNvbXBs
ZXRlIHRlc3Rpbmcgb24gb3RoZXIgZGV2aWNlcy4NCk1heWJlIHNvbWVvbmUgbW9yZSBmYW1pbGlh
ciB3aXRoIG1tYyBzdWJzeXN0ZW0gY2FuIHBpY2sgdGhhdCB1cCBpZiBpdCBub3cgdHVybnMgb3V0
IG90aGVyIGRldmljZXMgc2hvdyB0aGUgc2FtZS9zaW1pbGFyIGlzc3VlPw0KDQpmd2l3IHRoZSAi
bW1jOiBjb3JlOiBzZXQgaW5pdGlhbCBzaWduYWwgdm9sdGFnZSBvbiBwb3dlciBvZmYiIHJmYy9w
YXRjaCBoYXZlIGJlZW4gdXNlZCBpbiBMaWJyZUVMRUMgcm9ja2NoaXAgYnVpbGRzIGZvciB3ZWxs
IG92ZXIgYSB5ZWFyIG5vdy4NCg0KUmVnYXJkcywNCkpvbmFzDQoNCj4NCj4gUm9iaW4uDQo+DQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
