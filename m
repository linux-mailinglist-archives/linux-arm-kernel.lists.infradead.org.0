Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2CA1BF543
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 12:22:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=284rmLH38CZ3ahjwKwlyM6FT1V1engUxH99W8kVdm9A=; b=dUimL3hZVU3a/M
	wEh1i7IaJ0431/JvE9D4WJFAvdnLVJZuON9gGaWWcC1ajrBOxbWsfYezJVKIN+SBPn/BKXz7td3RY
	OSvNkQ4j4tAzm2qc64+T/8jwGCJ7Vh0HrhNxIfqvMoAzQ+BehuigrbQwCan4QkKfEs43+2zomuG1R
	Zir2kFKFXe9Ik0b88bFpEJwZ+diOZjoiURn+F8eptNHTPYXnBKtXaXPemcqn3kOUzyua0r1jj8Jb5
	xmkUMY0KmfChEj8aYyZRd4nF2nemS7DVZuSka6OjjocWNTkJdfuz24nZ/di/PKSWhuPwA0Zzw36gx
	6yVXd5Um3YJEIPg4ta9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU6Kj-00047v-1A; Thu, 30 Apr 2020 10:22:21 +0000
Received: from mail-db8eur05on2079.outbound.protection.outlook.com
 ([40.107.20.79] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU6KV-00047I-3L
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 10:22:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NKskPLZgB96fZfHWqSax+NEUdKF5CTxsJNYL1SSp+ly67acd9dHiX+AfHKg+oipiQTsJydwOoPbvthGMSxGdYkdM6JWaLkFOVdAnqewjjGssoHTLz6P78ppymiXscGlqOlCO3CsGwK+oV+hN4E5I3HYoGvL5UUrusAOMTnFF9KabB8KUOi34KEqLh/T38xrdVWYb3wVbOz/26FlJVqv9NW1nzFBpQ98yZw+9NW6B3xe4OInXWuv5O8DXupvb3m9aaDXxU+HjCWoX/0Bn7bv5WaqqyPlJoBkb+fMg7ZXGxAaodaFeoWwNlkIE0SGPZYpiba3BezewQdEXsKLjli6GTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2VPtx0Ouub0O6I3+Xlo5UPjlA2eJ2ZfTMutMP3APFGU=;
 b=lHvMTGG8juFoCFxIn+WvsHGj9IckV5HKvxfKnDf45juJ5BYWy73zVn2gU3JaqSKJKizvS3EK/HMl5MY0CPOLrCXAlXAS/jgFtphZlm3FMDjcacEbNKY7Tf416rEacHOL+eUGuLNWPnaREGzF7TxCv1HegTArt6hwB3GfqKy6iWIp1uF/6BiIlZ/cgEEnhn9/G0cf2tgcvMSD9TfafZJ0FH6ybcMpJuD2ptj/7Gsg9pwKzLF+z4iJSqu+tUjVOe32XXXdy7KDQa7R0lPc/awRunHPqjtVoxCRjplS1l0pLJIxm4sop4jO7jbYQL9aFOlGAA+WpZlOt8enUwZJzTq4IA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2VPtx0Ouub0O6I3+Xlo5UPjlA2eJ2ZfTMutMP3APFGU=;
 b=mZ/ZIDYeG0fA+XXFTcsL0e2dyQaYKHHwlKK4PuLg5wf7QmYjbjE+c3AnLQOPv3rKnXAoUwZOrLlGGaCfe7Oa3TTZcEX3AtUaT0BXdbpttjEqoBU2xIed4YIzP1g7S0LDa/0oH0eq3iPszdRc6DeaAd9Db77IYcGwfCTcL1x80ds=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB5480.eurprd04.prod.outlook.com (2603:10a6:20b:96::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20; Thu, 30 Apr
 2020 10:22:04 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3%7]) with mapi id 15.20.2937.028; Thu, 30 Apr 2020
 10:22:04 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Abel Vesa <abel.vesa@nxp.com>, Lee Jones <lee.jones@linaro.org>
Subject: RE: [PATCH v3 01/13] mfd: Add i.MX generic mix support
Thread-Topic: [PATCH v3 01/13] mfd: Add i.MX generic mix support
Thread-Index: AQHWEvxM3XZiF9OGK0STX/aWr983Xqh8+JaAgAfvhwCAAfYF0IAA/r6AgAmqeICAAAQWsA==
Date: Thu, 30 Apr 2020 10:22:04 +0000
Message-ID: <AM6PR04MB496612839A11EA05D60DF6AE80AA0@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1586937773-5836-1-git-send-email-abel.vesa@nxp.com>
 <1586937773-5836-2-git-send-email-abel.vesa@nxp.com>
 <20200417080747.GE2167633@dell>
 <20200422091854.rhtkcfrdptwofngs@fsr-ub1664-175>
 <AM6PR04MB4966B3527BF97918C1689A4580D30@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <20200424062727.GI3612@dell> <20200430100355.zwl7wfbq64cikqxp@fsr-ub1664-175>
In-Reply-To: <20200430100355.zwl7wfbq64cikqxp@fsr-ub1664-175>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [218.82.155.143]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1c3abd21-0421-4268-e85d-08d7ecf0545e
x-ms-traffictypediagnostic: AM6PR04MB5480:|AM6PR04MB5480:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB5480B41E3A181E81AC2F00DA80AA0@AM6PR04MB5480.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0389EDA07F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VZLriYKuv8DjaiFwT1H7Pk64ETZ0DIkZjGTdEGBeWOX7tOBNh68ubtG4PbaRICBdFhNEwCr6/FlVgPpPGV4lu7rTudUvBH9e8a2BZK0jYU//lFdc24JTtZltReSPkaO8wCm9vZnO3zmtpYMH9l7Fvq/F+RIHEaq/UJ7D2GASbw9B6H9llyQBiegSG8l6JfgNRExs9yhsHe8Vv3KrAkaOFIBa9Jp1devUpZuIzR7evnmi9p1kg8fz1hvcRbmLR7KRs+HlnfxZn3+5GqFi/Sy2tGZIdz09bMvlRF/5QA59rB/sfAxgBVnuF84sCQ/JqDYKxHcflzeAmUvlirtuyLLml72NSjPFU3KLqbNCBl4YAYRDkcp++VQzUoR4muFA+GvxWrejbgG66+myClZ9l/NZr43GB71Hk8JNDN4U9KK5/r55U1f67GZbbZWWC9mnsWeljYA2zHs8dxdf+Qvgl6EenrD6iaJyhIK4spWcGGAwNJUrgOhLqH3zHA6RoMhHK2AtuRwpGcB916A2+xbmItLywQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(346002)(396003)(39860400002)(136003)(376002)(316002)(9686003)(6506007)(53546011)(55016002)(7696005)(26005)(8936002)(5660300002)(4326008)(44832011)(8676002)(33656002)(2906002)(86362001)(71200400001)(186003)(66476007)(110136005)(66556008)(64756008)(66446008)(52536014)(54906003)(7416002)(76116006)(478600001)(66946007)(41533002)(21314003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: WOrvJXMzhvRegkw0m1tiWIkzOXD4n0Tnk9N67HHEjEELA/NoX1yDAwbpRqM3H02xK0urSyqKwOF3fig1rlDbgD6muJUpuA4SR82hV714jZjzq1yk/9CT5nsk5VM7DfAQqmWPXv05+eQPJ12nJzY67qB8McmdfQR54QVtPopAtBpXND2yTYoCxu+RgZz+rN8MzKJFfzl1UwVZIBZzcvBWFFfdpnygUO3I25TK82DuGDHHgNbiAvufIWIVEOqQIPGtxwToCfSYDkk05tVt/ZxAqt69koR9eETBx9IYg0+BbGQXiEH1vyBVkmbSBAFRRr8ApEO6rqakFvMaOCdqbDd+RF7T17TL/yqTKHI/0lGtFnEWhZvr1RQor3ftkoB86CDP6ONyEzOOBbxWvV03F6ebX8Z98yz5bEFbjNoIU2KMexeZsIMTzB89X7zht15QXKOEqJpGlWJd6CNKEtV/i8HqYImIUDwkmmLsOugKEarjBzzRMk1TTR3wfc/RNwLhazyfVrxyXijEnp/PCVVBGfAnV/vQr5NI1RcbPSyoo9GXeWuZwS2lGsDAobqfKAIaI9HnD12wvv/m5svYZF1cQt3f5Yu9fpgu9IiYoEnaHfBjge0owqQK71kOz6MHQhc5KFcp8M/v81Lx7e95ynY1QuAN8isPRE6BZkgXy5qxsm2igRd74dWj+SQFPFkOalSbhcxmEFeKdU6k1ueFi3fr83zbCcni6J5B9sw9ci6Fghzfv29SXR0JhEHKRJ5j1X18slRDhwcX+ZBKhEkWEPAQk8aSfktD2Hnrfn9P5PPSW8ReAQI=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c3abd21-0421-4268-e85d-08d7ecf0545e
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2020 10:22:04.7257 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8e5AY3k/HK0EDqp2Kq9sP59rvPynhMs9YG6h+wO3/k7t/UB2x/ikJa4BhKu4FQacmBC1Kil24w0EGjAP0j/YsA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5480
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_032207_142297_7681DF45 
X-CRM114-Status: GOOD (  34.62  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.79 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.79 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 "arnd@arndb.de" <arnd@arndb.de>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PiBGcm9tOiBBYmVsIFZlc2EgPGFiZWwudmVzYUBueHAuY29tPg0KPiBTZW50OiBUaHVyc2RheSwg
QXByaWwgMzAsIDIwMjAgNjowNCBQTQ0KPiBUbzogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJv
Lm9yZz4NCj4gT24gMjAtMDQtMjQgMDc6Mjc6MjcsIExlZSBKb25lcyB3cm90ZToNCj4gPiBPbiBU
aHUsIDIzIEFwciAyMDIwLCBBaXNoZW5nIERvbmcgd3JvdGU6DQo+ID4NCj4gPiA+ID4gRnJvbTog
QWJlbCBWZXNhIDxhYmVsLnZlc2FAbnhwLmNvbT4NCj4gPiA+ID4gU2VudDogV2VkbmVzZGF5LCBB
cHJpbCAyMiwgMjAyMCA1OjE5IFBNIE9uIDIwLTA0LTE3IDA5OjA3OjQ3LCBMZWUNCj4gPiA+ID4g
Sm9uZXMgd3JvdGU6DQo+ID4gPiA+ID4gT24gV2VkLCAxNSBBcHIgMjAyMCwgQWJlbCBWZXNhIHdy
b3RlOg0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiBTb21lIG9mIHRoZSBpLk1YIFNvQ3MgaGF2ZSBh
IElQIGZvciBpbnRlcmZhY2luZyB0aGUgZGVkaWNhdGVkDQo+ID4gPiA+ID4gPiBJUHMgd2l0aCBj
bG9ja3MsIHJlc2V0cyBhbmQgaW50ZXJydXB0cywgcGx1cyBzb21lIG90aGVyIHNwZWNpZmljIGNv
bnRyb2wNCj4gcmVnaXN0ZXJzLg0KPiA+ID4gPiA+ID4gVG8gYWxsb3cgdGhlIGZ1bmN0aW9uYWxp
dHkgdG8gYmUgc3BsaXQgYmV0d2VlbiBkcml2ZXJzLCB0aGlzDQo+ID4gPiA+ID4gPiBNRkQgZHJp
dmVyIGlzIGFkZGVkIHRoYXQgaGFzIG9ubHkgdHdvIHB1cnBvc2VzOiByZWdpc3RlciB0aGUNCj4g
PiA+ID4gPiA+IGRldmljZXMgYW5kIG1hcCB0aGUgZW50aXJlIHJlZ2lzdGVyIGFkZHJlc3Nlcy4g
RXZlcnl0aGluZyBlbHNlDQo+ID4gPiA+ID4gPiBpcyBsZWZ0IHRvIHRoZSBkZWRpY2F0ZWQgZHJp
dmVycyB0aGF0IHdpbGwgYmluZCB0byB0aGUgcmVnaXN0ZXJlZCBkZXZpY2VzLg0KPiA+ID4gPiA+
ID4NCj4gPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEFiZWwgVmVzYSA8YWJlbC52ZXNhQG54cC5j
b20+DQo+ID4gPiA+ID4gPiAtLS0NCj4gPiA+ID4gPiA+ICBkcml2ZXJzL21mZC9LY29uZmlnICAg
fCAxMSArKysrKysrKysrKw0KPiA+ID4gPiA+ID4gIGRyaXZlcnMvbWZkL01ha2VmaWxlICB8ICAx
ICsNCj4gPiA+ID4gPiA+ICBkcml2ZXJzL21mZC9pbXgtbWl4LmMgfCA0OA0KPiA+ID4gPiA+ID4g
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrDQo+ID4gPiA+
ID4gPiAgMyBmaWxlcyBjaGFuZ2VkLCA2MCBpbnNlcnRpb25zKCspICBjcmVhdGUgbW9kZSAxMDA2
NDQNCj4gPiA+ID4gPiA+IGRyaXZlcnMvbWZkL2lteC1taXguYw0KPiA+ID4gPiA+DQo+ID4gPiA+
ID4gRm9yIGNvbXBsZXRlbmVzcyAtIEFybmQncyByZXBseSB0byB0aGlzIHBhdGNoOg0KPiA+ID4g
PiA+DQo+ID4gPiA+DQo+ID4gPiA+IEknbSByZXBseWluZyBoZXJlIHRvIEFybmQncyByZXBseS4N
Cj4gPiA+ID4NCj4gPiA+ID4gSSdtIHRyeWluZyB0byBnaXZlIGhlcmUgYSB3aG9sZSBwaWN0dXJl
IG9mIHRoZSBlbnRpcmUgcHJvYmxlbQ0KPiA+ID4gPiB3aGlsZSB0aGUgZG9jdW1lbnRhdGlvbiBm
b3IgaS5NWDhNUCBpcyBfbm90IHlldF8gcHVibGljLg0KPiA+ID4gPg0KPiA+ID4gPiBIaXN0b3Jp
Y2FsbHksIGVhY2ggSVAgd291bGQgaGF2ZSBpdHMgb3duIGVuY2xvc3VyZSBmb3IgYWxsIHRoZSBy
ZWxhdGVkIEdQUnMuDQo+ID4gPiA+IFN0YXJ0aW5nIHdpdGggaS5NWDhNUCBzb21lIEdQUnMgKGFu
ZCBzb21lIHN1YnBhcnRzKSBmcm9tIHRoZSBJUA0KPiA+ID4gPiB3ZXJlIHBsYWNlZCBpbnNpZGUg
dGhlc2UgbWl4ZXMuDQo+ID4gPiA+DQo+ID4gPiA+IEF1ZGlvbWl4IGZvciBleGFtcGxlLCBoYXMg
bXVsdGlwbGUgU0FJcywgYSBQTEwsIGFuZCBzb21lIHJlc2V0DQo+ID4gPiA+IGJpdHMgZm9yIEVB
UkMgYW5kIHNvbWUgR1BScyBmb3IgQXVkaW9EU1AuIFRoaXMgbWVhbnMgdGhhdCBpLk1YOE1QDQo+
ID4gPiA+IGhhcyA3IFNBSXMsIDEgRUFSQyBhbmQNCj4gPiA+ID4gMSBBdWRpb0RTUC4NCj4gPiA+
ID4gRnV0dXJlIHBsYXRmb3JtcyBtaWdodCBoYXZlIGRpZmZlcmVudCBudW1iZXJzIG9mIFNBSXMs
IEVBUkNzIG9yDQo+IEF1ZGlvRFNQcy4NCj4gPiA+ID4gVGhlIFBMTCBjYW4ndCBiZSBwbGFjZWQg
aW4gb25lIG9mIHRob3NlIFNBSXMgYW5kIGl0IHdhcyBwbGFjZWQgaW4gYXVkaW9taXguDQo+ID4g
PiA+IFRoZSBpLk1YOE1QIGhhcyBhdCBsZWFzdCA0IG9mIHRoZXNlIG1peGVzLg0KPiA+ID4gPg0K
PiA+ID4gPiBOb3csIHRoZSBjb21tb25hbGl0aWVzIGJldHdlZW4gYWxsIG1peGVzIGFyZToNCj4g
PiA+ID4gIC0gaGF2ZSB0aGVpciBvd24gcG93ZXIgZG9tYWlucw0KPiA+ID4gPiAgLSBkcml2ZW4g
YnkgZGVkaWNhdGVkIGNsb2NrIHNsaWNlDQo+ID4gPiA+ICAtIGNvbnRhaW4gY2xvY2tzIGFuZCBy
ZXNldHMNCj4gPiA+ID4gIC0gc29tZSB2ZXJ5IHN1YnN5c3RlbSBzcGVjaWZpYyBHUFJzDQo+ID4g
PiA+DQo+ID4gPiA+IEtub3dpbmcgdGhhdCBlYWNoIG1peCBoYXMgaXRzIG93biBwb3dlciBkb21h
aW4sIEFGQUlDVCwgaXQgbmVlZHMNCj4gPiA+ID4gdG8gYmUgcmVnaXN0ZXJlZCBhcyBhIHNpbmds
ZSBkZXZpY2UuIENvbnNpZGVyaW5nIHRoYXQgaXQgY2FuIGhhdmUNCj4gPiA+ID4gY2xvY2tzIChh
dWRpb21peCBoYXMgZ2F0ZXMsIG11eGVzIGFuZCBwbGxzKSwgSSBiZWxpZXZlIHRoYXQgbmVlZHMN
Cj4gPiA+ID4gYSBjbG9jayBkcml2ZXIsIGV2ZW4gbW9yZSBzbyBzaW5jZSB0aGUgbXV4ZXMgbmVl
ZCB0aGVpciBwYXJlbnRzDQo+ID4gPiA+IGZyb20gdGhlIHBsYXRmb3JtIGNsb2NrIGRyaXZlci4g
U2FtZSBwcmluY2lwbGUgYXBwbGllcyB0byByZXNldA0KPiA+ID4gPiBiaXRzLiBUaGUgc3Vic3lz
dGVtIHNwZWNpZmljIEdQUnMgY2FuIGJlIHJlZ2lzdGVyZWQgYXMgc3lzY29uDQo+ID4gPiA+IGRl
dmljZXMgYW5kIHRha2VuIGNhcmUgb2YgYnkgaXRzIGNvdW50ZXJwYXJ0IElQIChlLmcuIHRoZSBB
dWRpb0RTUCBzcGVjaWZpYw0KPiByZWdzIHdvdWxkIGJlIHRha2VuIGNhcmUgb2YgYnkgdGhlIERT
UCBkcml2ZXIsIGlmIHRoZXJlIGlzIG9uZSkuDQo+ID4gPiA+DQo+ID4gPiA+IE5vdyBiYXNlZCBv
biBhbGwgb2YgdGhlIGFib3ZlLCBieSB1c2luZyBNRkQgd2UgdGFrZSBjYXJlIG9mIHRoZQ0KPiA+
ID4gPiBwb3dlciBkb21haW4gY29udHJvbCBmb3IgdGhlIGVudGlyZSBtaXgsIHBsdXMsIHRoZSBN
RkQgZG9lc24ndA0KPiA+ID4gPiBoYXZlIGFueSBraW5kIG9mIGZ1bmN0aW9uYWxpdHkgYnkgaXRz
IG93biwgcmVseWluZyBvbiBpdHMgY2hpbGRyZW4NCj4gPiA+ID4gZGV2aWNlcyB0aGF0IGFyZSBw
b3B1bGF0ZWQgYmFzZWQgb24gd2hhdCBpcyBpbiB0aGUgbWl4IE1GRCBkZXZpY2V0cmVlDQo+IG5v
ZGUuDQo+ID4gPiA+DQo+ID4gPg0KPiA+ID4gSG93IGFib3V0IGRvaW5nIGxpa2UgdGhpcyB3aGlj
aCBtYXliZSBjYW4gYWRkcmVzcyBBcm5kJ3MgY29uY2VybnM/DQo+ID4gPiBhdWRpb21peDogYXVk
aW9taXhAMzBlMjAwMDAgew0KPiA+ID4gICAgICAgICBjb21wYXRpYmxlID0gImZzbCxpbXg4bXAt
YXVkaW9taXgiLCAic3lzY29uIjsNCj4gPiA+ICAgICAgICAgcmVnID0gPDB4MzBlMjAwMDAgeHh4
PiwNCj4gPiA+ICAgICAgICAgICAgICAgPDB4MzBlMjB4eHggeHh4PjsNCj4gPiA+ICAgICAgICAg
cmVnLW5hbWVzID0gImF1ZGlvIiwgInJlc2V0IiwgIi4uLiI7DQo+ID4gPiAgICAgICAgICNjbG9j
ay1jZWxscyA9IDwxPjsNCj4gPiA+ICAgICAgICAgI3Jlc2V0LWNlbGxzID0gPDE+Ow0KPiA+ID4g
ICAgICAgICBwb3dlci1kb21haW5zID0gPCZhdWRpb21peF9wZD47IH0NCj4gPiA+DQo+ID4gPiBU
aGF0IG1lYW5zIHdlIGhhdmUgb25lIGNvbWJvIGRyaXZlciByZWdpc3RlcmluZyB0d28gY29udHJv
bGxlcnMNCj4gPiA+IChjbGsvcmVzZXQpLCBib3RoIHVzZSB0aGUgc2FtZSBwb3dlciBkb21haW4g
YXMgYXVkaW9taXguDQo+ID4gPiBBbmQgaXQgY2FuIGJlIGVhc2lseSBleHRlbmRlZCB0byBzdXBw
b3J0IG1vcmUgc2VydmljZXMgcHJvdmlkZWQgYnkNCj4gPiA+IGF1ZGlvbWl4IG92ZXIgc3lzY29u
IGlmIG5lZWRlZC4NCj4gPiA+IFRoZW4gdGhlICdkdW1teScgTURGIGRyaXZlciBpcyBub3QgbmVl
ZGVkIGFueW1vcmUuDQo+ID4gPg0KPiA+ID4gSm9uZXMgJiBBcm5kLA0KPiA+ID4gSG93IGRvIHlv
dSB0aGluaz8NCj4gPg0KPiA+IFNvdW5kcyBva2F5IGluIHByaW5jaXBsZS4gIEFueXRoaW5nIHRo
YXQgcHJldmVudHMgdGhlIGV4aXN0ZW5jZSBvZiBhDQo+ID4gZHVtbXkgKGEuay5hLiBwb2ludGxl
c3MpIE1GRCBtdXN0IGJlIHNlZW4gYXMgYSBwb3NpdGl2ZSBtb3ZlLg0KPiA+DQo+IA0KPiBPSywg
SSdsbCBkbyBpdCBpbiBhIHNpbmdsZSBkcml2ZXIgYW5kIHNpbmdsZSBkdHMgbm9kZS4NCj4gDQo+
IEJ1dCB0aGVyZSBtaWdodCBiZSBhbiBpc3N1ZSB3aXRoIHRoZSBwbGFjZW1lbnQgb2YgdGhpcyBu
ZXcgZHJpdmVyLg0KPiANCj4gZHJpdmVycy9jbGsvaW14LyBjb3VsZCBiZSBhbiBvcHRpb24sIGJ1
dCB0aGUgZHJpdmVyIHdpbGwgdXNlIGEgbG90IG9mIGRpZmZlcmVudCBBUElzDQo+IGZyb20gZGlm
ZmVyZW50IHN1YnN5c3RlbXMuIE5vdCB0aGUgYXVkaW9taXgsIGJ1dCB0aGUgZnV0dXJlIG1peGVz
Lg0KDQpNYXliZSBTdGVwaGVuIGNvdWxkIGNvbW1lbnQgd2hldGhlciBpdCdzIG9rIHRvIHB1c2gg
YSBjb21ibyBkcml2ZXINCihlLmcuIGNsayZyZXNldCZzeXNjb24pIEluIGRyaXZlcnMvY2xrL2lt
eC4NCg0KRnJvbSB3aGF0IHdlIHNlZSwgaXQgc2VlbXMgYWxyZWFkeSBzb21lIHNpbWlsYXIgY29t
Ym8gZHJpdmVycyAoY2xrJnJlc2V0KSB0aGVyZS4NCg0KQlRXLCBub3Qgc3VyZSBpZiBhbnkgdGVj
aG5pY2FsIGJsb2NrIHJlYXNvbnMgdG8gcHV0IGluIGRyaXZlcnMvY2xrLg0KTWF5YmUgd2UgY2Fu
IHF1aWNrbHkgdHJ5IGludGVybmFsbHkgZmlyc3QuDQoNClJlZ2FyZHMNCkFpc2hlbmcNCg0KPiAN
Cj4gPiAtLQ0KPiA+IExlZSBKb25lcyBb5p2O55C85pavXQ0KPiA+IExpbmFybyBTZXJ2aWNlcyBU
ZWNobmljYWwgTGVhZA0KPiA+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZv
ciBBUk0gU29DcyBGb2xsb3cgTGluYXJvOiBGYWNlYm9vaw0KPiA+IHwgVHdpdHRlciB8IEJsb2cN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
