Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8333D78390
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 05:04:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=stp6rW1r9EaOW/iPWXKDqGkJ+v9pFwLdY21BMnqf6Xo=; b=g16ZPpOIXPGE0b
	IBl2aYmD16jaO8xn6mMDWjnsCJG8VooiqbDvJwKt0zGbnte/2+VaSiouIlOGN0G0guI8X7Ukr++fB
	KzLXaSfljhnWo+Yyo5I4bgVbnn59IZWuggTSAwd+dl3JBghz2J974sSJsF0QFFcEOlZ2YzfzFkTx5
	4Ww1Of369dVlgJsorIuY6yd+lxvKsU85qyJO0wQUmHAId6/Vk0g/5J+1cKSlBUkbIdsPu2agIl4nc
	DiJyqu41ON4hQ4d8PdQcq+fKBubH8Riq0dho0q9eXo6mb7nkWSWuMM2uK1I2hY27Kd1ce2QoW09HS
	PToLz43sZ858C5ddzJ4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrvxM-0003qE-9d; Mon, 29 Jul 2019 03:04:12 +0000
Received: from mail-eopbgr150071.outbound.protection.outlook.com
 ([40.107.15.71] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrvx8-0003ph-Lx
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 03:04:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ITVGcqMdUJEL/PZqKIx9n6Ehw4F4ldWVutVUZMWdJ3puZiHwu2zeELu9C9FGIEQpd5S2gXMLFPZpXNj4EgDHW2QAQpu+03WgbLckuT6t0+KRxI0KHGD6tub7HAgHm5V4NTErqERAhUi4bBwhF1AdH/wtVlQ+cJe3J4ls/6Mu7eDfLz9YhidwGiO9vgqLXf6d20IztqXaxlvUFh64YUkGZkSisQ7CWHfxLruPJOn1Z/VDAv3T0RbuMnF20uDUX7nfWquqg/78er/nBH9qUpOxXvkuJo+TMS2YcAw8nByN66nrnHODhbZMT/bc0XVU4MvOAic8ttx8GJzN72gJ1KE8Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Bcv+mECeiC4EbR6KOK/u5gcKDwpNg6mf2opWza5AkBQ=;
 b=Ks6YQ4ItV+KFryA32WlJdeWp7Q5DY9Quwv2s8XOoDiXLtjA3GFBldgdXilwamdzloRk5xt2azkcRXN30uUY9uin+kJvVpHohtD90Gtbs5PM2oiWu1Ii/ysWidVWcifocGMkQSli2tXfX9ZesyaoKSI3hNmrDbz2sj8EUhkKGj7wTAmT4MubN2x/IweKT7vZCDzFTFWn/p+eR7UeFWSbJY2utI08xk3SvXgRdxFlEM09JoXAWH+0usMiVwFGbu3/rskebERac7U34PL/Djw++sxANtBCkcAQbPA13fUtqbzyDNxBYELqWthDRjq/VdcRBVe4W3BeiAQucEx9mia65TQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Bcv+mECeiC4EbR6KOK/u5gcKDwpNg6mf2opWza5AkBQ=;
 b=m2/F9510RSprnPA6CTUO8eRyVywARXeA1JgEm6SJ9gVZpt5o4pKaRvdDRHBJbqRdonPOXqIxG6/jh4fHtIvJGvWl55pABd76jRHHmN+NzoOEoo9MwaNGwHSlTCRHDPpdx7M4O6/C9KEjvUtT0SxHk5QJIK4ziGcj6NvVojZNBJA=
Received: from AM0PR0402MB3570.eurprd04.prod.outlook.com (52.133.46.11) by
 AM0PR0402MB3937.eurprd04.prod.outlook.com (52.133.34.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.14; Mon, 29 Jul 2019 03:03:53 +0000
Received: from AM0PR0402MB3570.eurprd04.prod.outlook.com
 ([fe80::19ee:c210:d6cd:561f]) by AM0PR0402MB3570.eurprd04.prod.outlook.com
 ([fe80::19ee:c210:d6cd:561f%6]) with mapi id 15.20.2115.005; Mon, 29 Jul 2019
 03:03:53 +0000
From: Richard Zhu <hongxing.zhu@nxp.com>
To: Dong Aisheng <dongas86@gmail.com>
Subject: RE: [EXT] Re: [PATCH] mailbox: imx: add support for imx v1 mu
Thread-Topic: [EXT] Re: [PATCH] mailbox: imx: add support for imx v1 mu
Thread-Index: AQHVRbZnWx+VfNxTlki5PEXAXtxslqbg4RSAgAAGSTA=
Date: Mon, 29 Jul 2019 03:03:53 +0000
Message-ID: <AM0PR0402MB3570521B715B6DD092B6DA768CDD0@AM0PR0402MB3570.eurprd04.prod.outlook.com>
References: <1564366440-10970-1-git-send-email-hongxing.zhu@nxp.com>
 <CAA+hA=Qg9uu+m3iTnbu2_+s4UN=kGpSNHsoKtjUggXnvLy4hbw@mail.gmail.com>
In-Reply-To: <CAA+hA=Qg9uu+m3iTnbu2_+s4UN=kGpSNHsoKtjUggXnvLy4hbw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=hongxing.zhu@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bd7adea8-a5ea-48d1-d7c0-08d713d1638f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR0402MB3937; 
x-ms-traffictypediagnostic: AM0PR0402MB3937:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR0402MB3937E668BD9631677946DEB58CDD0@AM0PR0402MB3937.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 01136D2D90
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(366004)(396003)(376002)(346002)(13464003)(189003)(199004)(66066001)(102836004)(53546011)(33656002)(9686003)(6306002)(45080400002)(66946007)(55016002)(966005)(26005)(7696005)(54906003)(6506007)(316002)(66476007)(478600001)(66446008)(66556008)(64756008)(99286004)(52536014)(14454004)(76176011)(81166006)(81156014)(11346002)(76116006)(15650500001)(8676002)(7736002)(86362001)(14444005)(256004)(446003)(486006)(71200400001)(71190400001)(6436002)(229853002)(6916009)(476003)(305945005)(74316002)(1411001)(4326008)(68736007)(6116002)(25786009)(5660300002)(3846002)(186003)(53936002)(6246003)(2906002)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR0402MB3937;
 H:AM0PR0402MB3570.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: e4OOe5RlkonaQnM/YbC9fCDEFdwuv0wetQiFR/+5DUTcfIvy8SlueJPO+YFNRcmVKxZDhy6TXTP8LQyNcjGAZiN0Erpb3sxj+6mEMGuJrAOnJ+yGpkAO0Cszkrw5VHwxxpvnUrzsO2c0AR56OV8CYRrqfMU7WRWG2pPS5M7RQMId370rhHwrUOA9Q5SStkY+E0qe/YyuQ/m6uaON0H9qayEH6IAfYuabHtWiYwa7XInLm4yXXP3IcNTOZajUVmskgul5VyaYCI4MLs7sN9bWZWUAOjQcJrXomoDmeo9ZUCoCAecNyL6LDOzCoKVDSfbQa55ZK9frRA21p2/KMSQ23Wbg5kpxu8XnrCrrunl/ShUi+3cDqK2zVktFwF/SYp1bPVlRlat0o2aBeamtalmZHUufqaU2ylDFY8YDIGgQesc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd7adea8-a5ea-48d1-d7c0-08d713d1638f
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2019 03:03:53.4519 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hongxing.zhu@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0402MB3937
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_200358_941529_660ECB25 
X-CRM114-Status: GOOD (  20.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.71 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 Oleksij Rempel <o.rempel@pengutronix.de>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQWlzaGVuZzoNClRoYW5rcyBmb3IgeW91ciBjb21tZW50cy4NCg0KPiAtLS0tLU9yaWdpbmFs
IE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBEb25nIEFpc2hlbmcgPGRvbmdhczg2QGdtYWlsLmNvbT4N
Cj4gU2VudDogMjAxOeW5tDfmnIgyOeaXpSAxMDozNQ0KPiBUbzogUmljaGFyZCBaaHUgPGhvbmd4
aW5nLnpodUBueHAuY29tPg0KPiBDYzogamFzc2lzaW5naGJyYXJAZ21haWwuY29tOyBPbGVrc2lq
IFJlbXBlbCA8by5yZW1wZWxAcGVuZ3V0cm9uaXguZGU+Ow0KPiBBaXNoZW5nIERvbmcgPGFpc2hl
bmcuZG9uZ0BueHAuY29tPjsgb3BlbiBsaXN0DQo+IDxsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwu
b3JnPjsgbW9kZXJhdGVkIGxpc3Q6QVJNL0ZSRUVTQ0FMRSBJTVggLyBNWEMNCj4gQVJNIEFSQ0hJ
VEVDVFVSRSA8bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnPg0KPiBTdWJqZWN0
OiBbRVhUXSBSZTogW1BBVENIXSBtYWlsYm94OiBpbXg6IGFkZCBzdXBwb3J0IGZvciBpbXggdjEg
bXUNCj4gDQo+IE9uIE1vbiwgSnVsIDI5LCAyMDE5IGF0IDEwOjM2IEFNIFJpY2hhcmQgWmh1IDxo
b25neGluZy56aHVAbnhwLmNvbT4NCj4gd3JvdGU6DQo+ID4NCj4gPiBUaGVyZSBpcyBhIHZlcnNp
b24xLjAgTVUgb24gaS5NWDdVTFAgcGxhdGZvcm0uDQo+ID4gT25lIG5ldyB2ZXJzaW9uIElEIHJl
Z2lzdGVyIGlzIGFkZGVkLCBhbmQgaXQncyBvZmZzZXQgaXMgMC4NCj4gPiBUUm4gcmVnaXN0ZXJz
IGFyZSBkZWZpbmVkIGF0IHRoZSBvZmZzZXQgMHgyMCB+IDB4MkMuDQo+ID4gUlJuIHJlZ2lzdGVy
cyBhcmUgZGVmaW5lZCBhdCB0aGUgb2Zmc2V0IDB4NDAgfiAweDRDLg0KPiA+IFNSL0NSIHJlZ2lz
dGVycyBhcmUgZGVmaW5lZCBhdCAweDYwLzB4NjQuDQo+ID4gRXh0ZW5kIHRoaXMgZHJpdmVyIHRv
IHN1cHBvcnQgaXQuDQo+ID4NCj4gDQo+IElmIG9ubHkgdGhlIHJlZ2lzdGVyIGJhc2Ugb2Zmc2V0
IGlzIGRpZmZlcmVudCwgdGhlcmUncyBwcm9iYWJseSBhIG1vcmUgc2ltcGxlIHdheS4NCj4gUGxl
YXNlIHJlZmVyIHRvOg0KPiBodHRwczovL2V1cjAxLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxv
b2suY29tLz91cmw9aHR0cHMlM0ElMkYlMkZnaXQua2VybmVsDQo+IC5vcmclMkZwdWIlMkZzY20l
MkZsaW51eCUyRmtlcm5lbCUyRmdpdCUyRm5leHQlMkZsaW51eC1uZXh0LmdpdCUyRmNvbQ0KPiBt
aXQlMkZkcml2ZXJzJTJGdHR5JTJGc2VyaWFsJTJGZnNsX2xwdWFydC5jJTNGaWQlM0QyNGIxZTVm
MGU4M2MyYWNlZDgwDQo+IDk2NDczZDIwYzRjZjZjMTM1NWYzMCZhbXA7ZGF0YT0wMiU3QzAxJTdD
aG9uZ3hpbmcuemh1JTQwbnhwLmNvbSUNCj4gN0M0OGIyNmRlNzUxNDY0NDEwMjQ5MzA4ZDcxM2Nl
YWUyMiU3QzY4NmVhMWQzYmMyYjRjNmZhOTJjZDk5YzVjMzANCj4gMTYzNSU3QzAlN0MxJTdDNjM2
OTk5NjUwNzE2NTg4MDI0JmFtcDtzZGF0YT03T0VaQjhITWJRcWZlNktnRA0KPiBIdEU3QUtBdGdQ
R0pIWEdlVWlBRmpBUDI4ayUzRCZhbXA7cmVzZXJ2ZWQ9MA0KPiANCltSaWNoYXJkIFpodV0gVFJ4
LCBSUnggYW5kIHRoZSBDUi9TUiBoYXZlIHRoZSBkaWZmZXJlbnQgb2Zmc2V0IGFkZHJlc3Nlcy4N
ClRoYXQgbWVhbnMgdGhyZWUgZGlmZmVyZW50IG9mZnNldCBhZGRyZXNzZXMgc2hvdWxkIGJlIG1h
bmlwdWxhdGVkIGlmIHRoZSBzb2x1dGlvbiBsaXN0ZWQgYWJvdmUgaXMgdXNlZC4NCkl0IHNlZW1z
IHRoYXQgaXQncyBhIGxpdHRsZSBjb21wbGV4LCBhbmQgbWF5YmUgaW50cm9kdWNlIGJ1Z3Mgd2hl
biBkaWZmZXJlbnQgb2Zmc2V0IGFkZHJlc3MgaXMgbWFuaXB1bGF0ZWQuDQpBY2NvcmRpbmcsIHRo
ZSBjdXJyZW50IG1ldGhvZCBzdWdnZXN0ZWQgYnkgT2xla3NpaiBpcyBtdWNoIGNsZWFyLCBhbmQg
ZWFzeSB0byBleHRlbmQgZm9yIGZ1dHVyZSBleHRlbnNpb24uDQoNCkhpIE9sZWtpamk6DQpIb3cg
ZG8geW91IHRoaW5rIGFib3V0Pw0KDQpCZXN0IFJlZ2FyZHMNClJpY2hhcmQgWmh1DQoNCj4gUmVn
YXJkcw0KPiBBaXNoZW5nDQo+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IFJpY2hhcmQgWmh1IDxob25n
eGluZy56aHVAbnhwLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9tYWlsYm94L2lteC1tYWls
Ym94LmMgfCA2Nw0KPiA+ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0t
LS0NCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDUwIGluc2VydGlvbnMoKyksIDE3IGRlbGV0aW9ucygt
KQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWFpbGJveC9pbXgtbWFpbGJveC5jDQo+
ID4gYi9kcml2ZXJzL21haWxib3gvaW14LW1haWxib3guYyBpbmRleCAyNWJlOGJiLi44NDIzYTM4
IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvbWFpbGJveC9pbXgtbWFpbGJveC5jDQo+ID4gKysr
IGIvZHJpdmVycy9tYWlsYm94L2lteC1tYWlsYm94LmMNCj4gPiBAQCAtMTIsMTkgKzEyLDExIEBA
DQo+ID4gICNpbmNsdWRlIDxsaW51eC9vZl9kZXZpY2UuaD4NCj4gPiAgI2luY2x1ZGUgPGxpbnV4
L3NsYWIuaD4NCj4gPg0KPiA+IC0vKiBUcmFuc21pdCBSZWdpc3RlciAqLw0KPiA+IC0jZGVmaW5l
IElNWF9NVV94VFJuKHgpICAgICAgICAgKDB4MDAgKyA0ICogKHgpKQ0KPiA+IC0vKiBSZWNlaXZl
IFJlZ2lzdGVyICovDQo+ID4gLSNkZWZpbmUgSU1YX01VX3hSUm4oeCkgICAgICAgICAoMHgxMCAr
IDQgKiAoeCkpDQo+ID4gLS8qIFN0YXR1cyBSZWdpc3RlciAqLw0KPiA+IC0jZGVmaW5lIElNWF9N
VV94U1IgICAgICAgICAgICAgMHgyMA0KPiA+ICAjZGVmaW5lIElNWF9NVV94U1JfR0lQbih4KSAg
ICAgQklUKDI4ICsgKDMgLSAoeCkpKQ0KPiA+ICAjZGVmaW5lIElNWF9NVV94U1JfUkZuKHgpICAg
ICAgQklUKDI0ICsgKDMgLSAoeCkpKQ0KPiA+ICAjZGVmaW5lIElNWF9NVV94U1JfVEVuKHgpICAg
ICAgQklUKDIwICsgKDMgLSAoeCkpKQ0KPiA+ICAjZGVmaW5lIElNWF9NVV94U1JfQlJESVAgICAg
ICAgQklUKDkpDQo+ID4NCj4gPiAtLyogQ29udHJvbCBSZWdpc3RlciAqLw0KPiA+IC0jZGVmaW5l
IElNWF9NVV94Q1IgICAgICAgICAgICAgMHgyNA0KPiA+ICAvKiBHZW5lcmFsIFB1cnBvc2UgSW50
ZXJydXB0IEVuYWJsZSAqLw0KPiA+ICAjZGVmaW5lIElNWF9NVV94Q1JfR0lFbih4KSAgICAgQklU
KDI4ICsgKDMgLSAoeCkpKQ0KPiA+ICAvKiBSZWNlaXZlIEludGVycnVwdCBFbmFibGUgKi8NCj4g
PiBAQCAtNDQsNiArMzYsMTMgQEAgZW51bSBpbXhfbXVfY2hhbl90eXBlIHsNCj4gPiAgICAgICAg
IElNWF9NVV9UWVBFX1JYREIsICAgICAgIC8qIFJ4IGRvb3JiZWxsICovDQo+ID4gIH07DQo+ID4N
Cj4gPiArc3RydWN0IGlteF9tdV9kY2ZnIHsNCj4gPiArICAgICAgIHUzMiAgICAgeFRSWzRdOyAg
ICAgICAgIC8qIFRyYW5zbWl0IFJlZ2lzdGVycyAqLw0KPiA+ICsgICAgICAgdTMyICAgICB4UlJb
NF07ICAgICAgICAgLyogUmVjZWl2ZSBSZWdpc3RlcnMgKi8NCj4gPiArICAgICAgIHUzMiAgICAg
eFNSOyAgICAgICAgICAgIC8qIFN0YXR1cyBSZWdpc3RlciAqLw0KPiA+ICsgICAgICAgdTMyICAg
ICB4Q1I7ICAgICAgICAgICAgLyogQ29udHJvbCBSZWdpc3RlciAqLw0KPiA+ICt9Ow0KPiA+ICsN
Cj4gPiAgc3RydWN0IGlteF9tdV9jb25fcHJpdiB7DQo+ID4gICAgICAgICB1bnNpZ25lZCBpbnQg
ICAgICAgICAgICBpZHg7DQo+ID4gICAgICAgICBjaGFyDQo+IGlycV9kZXNjW0lNWF9NVV9DSEFO
X05BTUVfU0laRV07DQo+ID4gQEAgLTYxLDEyICs2MCwzOSBAQCBzdHJ1Y3QgaW14X211X3ByaXYg
ew0KPiA+ICAgICAgICAgc3RydWN0IG1ib3hfY2hhbiAgICAgICAgbWJveF9jaGFuc1tJTVhfTVVf
Q0hBTlNdOw0KPiA+DQo+ID4gICAgICAgICBzdHJ1Y3QgaW14X211X2Nvbl9wcml2ICBjb25fcHJp
dltJTVhfTVVfQ0hBTlNdOw0KPiA+ICsgICAgICAgY29uc3Qgc3RydWN0IGlteF9tdV9kY2ZnICAg
ICAgICAqZGNmZzsNCj4gPiAgICAgICAgIHN0cnVjdCBjbGsgICAgICAgICAgICAgICpjbGs7DQo+
ID4gICAgICAgICBpbnQgICAgICAgICAgICAgICAgICAgICBpcnE7DQo+ID4NCj4gPiAgICAgICAg
IGJvb2wgICAgICAgICAgICAgICAgICAgIHNpZGVfYjsNCj4gPiAgfTsNCj4gPg0KPiA+ICtzdGF0
aWMgY29uc3Qgc3RydWN0IGlteF9tdV9kY2ZnIGlteF9tdV9jZmdfaW14NnN4ID0gew0KPiA+ICsg
ICAgICAgLnhUUlswXSA9IDB4MCwNCj4gPiArICAgICAgIC54VFJbMV0gPSAweDQsDQo+ID4gKyAg
ICAgICAueFRSWzJdID0gMHg4LA0KPiA+ICsgICAgICAgLnhUUlszXSA9IDB4QywNCj4gPiArICAg
ICAgIC54UlJbMF0gPSAweDEwLA0KPiA+ICsgICAgICAgLnhSUlsxXSA9IDB4MTQsDQo+ID4gKyAg
ICAgICAueFJSWzJdID0gMHgxOCwNCj4gPiArICAgICAgIC54UlJbM10gPSAweDFDLA0KPiA+ICsg
ICAgICAgLnhTUiAgICA9IDB4MjAsDQo+ID4gKyAgICAgICAueENSICAgID0gMHgyNCwNCj4gPiAr
fTsNCj4gPiArDQo+ID4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaW14X211X2RjZmcgaW14X211X2Nm
Z19pbXg3dWxwID0gew0KPiA+ICsgICAgICAgLnhUUlswXSA9IDB4MjAsDQo+ID4gKyAgICAgICAu
eFRSWzFdID0gMHgyNCwNCj4gPiArICAgICAgIC54VFJbMl0gPSAweDI4LA0KPiA+ICsgICAgICAg
LnhUUlszXSA9IDB4MkMsDQo+ID4gKyAgICAgICAueFJSWzBdID0gMHg0MCwNCj4gPiArICAgICAg
IC54UlJbMV0gPSAweDQ0LA0KPiA+ICsgICAgICAgLnhSUlsyXSA9IDB4NDgsDQo+ID4gKyAgICAg
ICAueFJSWzNdID0gMHg0QywNCj4gPiArICAgICAgIC54U1IgICAgPSAweDYwLA0KPiA+ICsgICAg
ICAgLnhDUiAgICA9IDB4NjQsDQo+ID4gK307DQo+ID4gKw0KPiA+ICBzdGF0aWMgc3RydWN0IGlt
eF9tdV9wcml2ICp0b19pbXhfbXVfcHJpdihzdHJ1Y3QgbWJveF9jb250cm9sbGVyDQo+ID4gKm1i
b3gpICB7DQo+ID4gICAgICAgICByZXR1cm4gY29udGFpbmVyX29mKG1ib3gsIHN0cnVjdCBpbXhf
bXVfcHJpdiwgbWJveCk7IEBAIC04OCwxMA0KPiA+ICsxMTQsMTAgQEAgc3RhdGljIHUzMiBpbXhf
bXVfeGNyX3JtdyhzdHJ1Y3QgaW14X211X3ByaXYgKnByaXYsIHUzMiBzZXQsDQo+IHUzMiBjbHIp
DQo+ID4gICAgICAgICB1MzIgdmFsOw0KPiA+DQo+ID4gICAgICAgICBzcGluX2xvY2tfaXJxc2F2
ZSgmcHJpdi0+eGNyX2xvY2ssIGZsYWdzKTsNCj4gPiAtICAgICAgIHZhbCA9IGlteF9tdV9yZWFk
KHByaXYsIElNWF9NVV94Q1IpOw0KPiA+ICsgICAgICAgdmFsID0gaW14X211X3JlYWQocHJpdiwg
cHJpdi0+ZGNmZy0+eENSKTsNCj4gPiAgICAgICAgIHZhbCAmPSB+Y2xyOw0KPiA+ICAgICAgICAg
dmFsIHw9IHNldDsNCj4gPiAtICAgICAgIGlteF9tdV93cml0ZShwcml2LCB2YWwsIElNWF9NVV94
Q1IpOw0KPiA+ICsgICAgICAgaW14X211X3dyaXRlKHByaXYsIHZhbCwgcHJpdi0+ZGNmZy0+eENS
KTsNCj4gPiAgICAgICAgIHNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJnByaXYtPnhjcl9sb2NrLCBm
bGFncyk7DQo+ID4NCj4gPiAgICAgICAgIHJldHVybiB2YWw7DQo+ID4gQEAgLTExMSw4ICsxMzcs
OCBAQCBzdGF0aWMgaXJxcmV0dXJuX3QgaW14X211X2lzcihpbnQgaXJxLCB2b2lkICpwKQ0KPiA+
ICAgICAgICAgc3RydWN0IGlteF9tdV9jb25fcHJpdiAqY3AgPSBjaGFuLT5jb25fcHJpdjsNCj4g
PiAgICAgICAgIHUzMiB2YWwsIGN0cmwsIGRhdDsNCj4gPg0KPiA+IC0gICAgICAgY3RybCA9IGlt
eF9tdV9yZWFkKHByaXYsIElNWF9NVV94Q1IpOw0KPiA+IC0gICAgICAgdmFsID0gaW14X211X3Jl
YWQocHJpdiwgSU1YX01VX3hTUik7DQo+ID4gKyAgICAgICBjdHJsID0gaW14X211X3JlYWQocHJp
diwgcHJpdi0+ZGNmZy0+eENSKTsNCj4gPiArICAgICAgIHZhbCA9IGlteF9tdV9yZWFkKHByaXYs
IHByaXYtPmRjZmctPnhTUik7DQo+ID4NCj4gPiAgICAgICAgIHN3aXRjaCAoY3AtPnR5cGUpIHsN
Cj4gPiAgICAgICAgIGNhc2UgSU1YX01VX1RZUEVfVFg6DQo+ID4gQEAgLTEzOCwxMCArMTY0LDEw
IEBAIHN0YXRpYyBpcnFyZXR1cm5fdCBpbXhfbXVfaXNyKGludCBpcnEsIHZvaWQgKnApDQo+ID4g
ICAgICAgICAgICAgICAgIGlteF9tdV94Y3Jfcm13KHByaXYsIDAsIElNWF9NVV94Q1JfVElFbihj
cC0+aWR4KSk7DQo+ID4gICAgICAgICAgICAgICAgIG1ib3hfY2hhbl90eGRvbmUoY2hhbiwgMCk7
DQo+ID4gICAgICAgICB9IGVsc2UgaWYgKHZhbCA9PSBJTVhfTVVfeFNSX1JGbihjcC0+aWR4KSkg
ew0KPiA+IC0gICAgICAgICAgICAgICBkYXQgPSBpbXhfbXVfcmVhZChwcml2LCBJTVhfTVVfeFJS
bihjcC0+aWR4KSk7DQo+ID4gKyAgICAgICAgICAgICAgIGRhdCA9IGlteF9tdV9yZWFkKHByaXYs
IHByaXYtPmRjZmctPnhSUltjcC0+aWR4XSk7DQo+ID4gICAgICAgICAgICAgICAgIG1ib3hfY2hh
bl9yZWNlaXZlZF9kYXRhKGNoYW4sICh2b2lkICopJmRhdCk7DQo+ID4gICAgICAgICB9IGVsc2Ug
aWYgKHZhbCA9PSBJTVhfTVVfeFNSX0dJUG4oY3AtPmlkeCkpIHsNCj4gPiAtICAgICAgICAgICAg
ICAgaW14X211X3dyaXRlKHByaXYsIElNWF9NVV94U1JfR0lQbihjcC0+aWR4KSwNCj4gSU1YX01V
X3hTUik7DQo+ID4gKyAgICAgICAgICAgICAgIGlteF9tdV93cml0ZShwcml2LCBJTVhfTVVfeFNS
X0dJUG4oY3AtPmlkeCksDQo+ID4gKyBwcml2LT5kY2ZnLT54U1IpOw0KPiA+ICAgICAgICAgICAg
ICAgICBtYm94X2NoYW5fcmVjZWl2ZWRfZGF0YShjaGFuLCBOVUxMKTsNCj4gPiAgICAgICAgIH0g
ZWxzZSB7DQo+ID4gICAgICAgICAgICAgICAgIGRldl93YXJuX3JhdGVsaW1pdGVkKHByaXYtPmRl
diwgIk5vdCBoYW5kbGVkDQo+ID4gaW50ZXJydXB0XG4iKTsgQEAgLTE1OSw3ICsxODUsNyBAQCBz
dGF0aWMgaW50IGlteF9tdV9zZW5kX2RhdGEoc3RydWN0DQo+ID4gbWJveF9jaGFuICpjaGFuLCB2
b2lkICpkYXRhKQ0KPiA+DQo+ID4gICAgICAgICBzd2l0Y2ggKGNwLT50eXBlKSB7DQo+ID4gICAg
ICAgICBjYXNlIElNWF9NVV9UWVBFX1RYOg0KPiA+IC0gICAgICAgICAgICAgICBpbXhfbXVfd3Jp
dGUocHJpdiwgKmFyZywgSU1YX01VX3hUUm4oY3AtPmlkeCkpOw0KPiA+ICsgICAgICAgICAgICAg
ICBpbXhfbXVfd3JpdGUocHJpdiwgKmFyZywgcHJpdi0+ZGNmZy0+eFRSW2NwLT5pZHhdKTsNCj4g
PiAgICAgICAgICAgICAgICAgaW14X211X3hjcl9ybXcocHJpdiwgSU1YX01VX3hDUl9USUVuKGNw
LT5pZHgpLCAwKTsNCj4gPiAgICAgICAgICAgICAgICAgYnJlYWs7DQo+ID4gICAgICAgICBjYXNl
IElNWF9NVV9UWVBFX1RYREI6DQo+ID4gQEAgLTI1Nyw3ICsyODMsNyBAQCBzdGF0aWMgdm9pZCBp
bXhfbXVfaW5pdF9nZW5lcmljKHN0cnVjdCBpbXhfbXVfcHJpdg0KPiAqcHJpdikNCj4gPiAgICAg
ICAgICAgICAgICAgcmV0dXJuOw0KPiA+DQo+ID4gICAgICAgICAvKiBTZXQgZGVmYXVsdCBNVSBj
b25maWd1cmF0aW9uICovDQo+ID4gLSAgICAgICBpbXhfbXVfd3JpdGUocHJpdiwgMCwgSU1YX01V
X3hDUik7DQo+ID4gKyAgICAgICBpbXhfbXVfd3JpdGUocHJpdiwgMCwgcHJpdi0+ZGNmZy0+eENS
KTsNCj4gPiAgfQ0KPiA+DQo+ID4gIHN0YXRpYyBpbnQgaW14X211X3Byb2JlKHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYpIEBAIC0yNjUsNg0KPiA+ICsyOTEsNyBAQCBzdGF0aWMgaW50IGlt
eF9tdV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQ0KPiA+ICAgICAgICAgc3Ry
dWN0IGRldmljZSAqZGV2ID0gJnBkZXYtPmRldjsNCj4gPiAgICAgICAgIHN0cnVjdCBkZXZpY2Vf
bm9kZSAqbnAgPSBkZXYtPm9mX25vZGU7DQo+ID4gICAgICAgICBzdHJ1Y3QgaW14X211X3ByaXYg
KnByaXY7DQo+ID4gKyAgICAgICBjb25zdCBzdHJ1Y3QgaW14X211X2RjZmcgKmRjZmc7DQo+ID4g
ICAgICAgICB1bnNpZ25lZCBpbnQgaTsNCj4gPiAgICAgICAgIGludCByZXQ7DQo+ID4NCj4gPiBA
QCAtMjgyLDYgKzMwOSwxMSBAQCBzdGF0aWMgaW50IGlteF9tdV9wcm9iZShzdHJ1Y3QgcGxhdGZv
cm1fZGV2aWNlDQo+ICpwZGV2KQ0KPiA+ICAgICAgICAgaWYgKHByaXYtPmlycSA8IDApDQo+ID4g
ICAgICAgICAgICAgICAgIHJldHVybiBwcml2LT5pcnE7DQo+ID4NCj4gPiArICAgICAgIGRjZmcg
PSBvZl9kZXZpY2VfZ2V0X21hdGNoX2RhdGEoZGV2KTsNCj4gPiArICAgICAgIGlmICghZGNmZykN
Cj4gPiArICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7DQo+ID4gKyAgICAgICBwcml2LT5k
Y2ZnID0gZGNmZzsNCj4gPiArDQo+ID4gICAgICAgICBwcml2LT5jbGsgPSBkZXZtX2Nsa19nZXQo
ZGV2LCBOVUxMKTsNCj4gPiAgICAgICAgIGlmIChJU19FUlIocHJpdi0+Y2xrKSkgew0KPiA+ICAg
ICAgICAgICAgICAgICBpZiAoUFRSX0VSUihwcml2LT5jbGspICE9IC1FTk9FTlQpIEBAIC0zMzUs
NyArMzY3LDgNCj4gQEANCj4gPiBzdGF0aWMgaW50IGlteF9tdV9yZW1vdmUoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldikgIH0NCj4gPg0KPiA+ICBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2Rl
dmljZV9pZCBpbXhfbXVfZHRfaWRzW10gPSB7DQo+ID4gLSAgICAgICB7IC5jb21wYXRpYmxlID0g
ImZzbCxpbXg2c3gtbXUiIH0sDQo+ID4gKyAgICAgICB7IC5jb21wYXRpYmxlID0gImZzbCxpbXg3
dWxwLW11IiwgLmRhdGEgPSAmaW14X211X2NmZ19pbXg3dWxwIH0sDQo+ID4gKyAgICAgICB7IC5j
b21wYXRpYmxlID0gImZzbCxpbXg2c3gtbXUiLCAuZGF0YSA9ICZpbXhfbXVfY2ZnX2lteDZzeCB9
LA0KPiA+ICAgICAgICAgeyB9LA0KPiA+ICB9Ow0KPiA+ICBNT0RVTEVfREVWSUNFX1RBQkxFKG9m
LCBpbXhfbXVfZHRfaWRzKTsNCj4gPiAtLQ0KPiA+IDIuNy40DQo+ID4NCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
