Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 285E7ED6DE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 02:22:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jqMUwGHvp6auoF4rcAFgi3Tu4UXDGu5EOmOdAO6Sn50=; b=eIn9CuQP3zulr/
	TEpgmMcxmODmhVJj6+Hqk+HgfsREw3qO5/tmpW4fyaOsmDEfkSd5rRJm8iFfWYtnbFSALFl5UcivL
	LcuNWrh0Jnp80hB81moAx4eRaxxhm4RDaL0fnDFo9gbPX9LSrdwwA1VBypVsvVwQR9CpWg3m59J0J
	IeXV3G17FDai3kcLVQLblZ/Q/YvR3FJc3mGy0yno7jRUeEFYy4cfo+ern/z1y6L0G8hnDVg4gS8Lh
	Wl+l7C8vM+YUIbDczepqOk/s3ekkD971RPqVjkpkQKzTfbZGExWbV4g9iy1pdtCNss606cNpBG46n
	ilYJjk9724TjjvTMa6nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRR4K-0001FP-AS; Mon, 04 Nov 2019 01:22:08 +0000
Received: from mail-eopbgr20046.outbound.protection.outlook.com ([40.107.2.46]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRR4A-0001Ev-1F
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 01:21:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gcDBMahkHr2bEo1R2kZedAfSYSWjnRG8GcAnsNks3WK3HDqvPxWVqLwxhEkjbtbBgRBWIMqmWNfq9J6UCQz6daCyhBrDgVUa9RHIQqiYdv8zqZ9xMnCjwwzOxfEzGipg1kE5N7dcyotr+cvAZkxMXdhspqs1t+d7jpQv2R+3FReF/12YYezjeeslVOJunodbhQ745hBk8FvBBIjrM3U1//qmK+/dpl90l5he07zk5Q4xZzkZ0dQH13tggpxBoltapBG9GaL/QyPfUX8OAvKgGCq8UZlsevyB3tM5vnDsH4WJYBVSfSt9IhQLoSjkwqzZRk73gQkR28oG1FlHillZqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=azsqy1sG4D3NULgaLfksV3MfVHU/TNs9NZAJVqKdEQk=;
 b=msi/FymXZXEm6fiMGTEO9GkTmX5wOHDJL0XkQ15dAlNaUFeJpBpiwC8sbo3ylUrjxWUq1WTgzcRaJE/0hyOBOfbWQH6s/ReKZTRTiNJoEHPwfUwvbK6eAnseYY3uQHUg0TT3O3QwfyxWwSDs5uUfKF2Ed+sp8U+4myJGkMm//kC8igOhidzfs+2NVBTc8i3dnYWMi0m/i9fSOLph8nJMiDbEU6riRZAJbWTkhJpCG22dzsJaC88dozf+uZlZrnplKWcKIa8mD4EU2S5nneaXM8epiLxwIvzuvrOYCbq79ruYON/JGhCQm/YCRtjYrMCtL130phiDFXZZ2hIgMDNpkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=azsqy1sG4D3NULgaLfksV3MfVHU/TNs9NZAJVqKdEQk=;
 b=RPNDMZ5dbyjRFRNBvjwTppLUSOWgHt/mgenXqsgusrjh8wV5FDHO6u9azntBil/Vqps4c6Be9jj62htK7gvFjt2gH97LI1rnNrg28mfjsfyg7bvZMsOrkD3dMD9tnzW08FtbN0OaZ6VBAjzPJiL0surG2jXvUmqOH3ZocdaYkO8=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4666.eurprd04.prod.outlook.com (52.135.133.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.24; Mon, 4 Nov 2019 01:21:51 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::1c96:c591:7d51:64e6]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::1c96:c591:7d51:64e6%4]) with mapi id 15.20.2408.024; Mon, 4 Nov 2019
 01:21:51 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: Will Deacon <will@kernel.org>
Subject: RE: [PATCH V3 3/4] perf/imx_ddr: Add enhanced AXI ID filter support
Thread-Topic: [PATCH V3 3/4] perf/imx_ddr: Add enhanced AXI ID filter support
Thread-Index: AQHVkI9tmOl/phINXEWndRHoKw3Ipad2ba8AgAPND8A=
Date: Mon, 4 Nov 2019 01:21:51 +0000
Message-ID: <DB7PR04MB4618F9CF365DB9EF35DE40EFE67F0@DB7PR04MB4618.eurprd04.prod.outlook.com>
References: <20191101083317.29510-1-qiangqing.zhang@nxp.com>
 <20191101083317.29510-3-qiangqing.zhang@nxp.com>
 <20191101151657.GB3287@willie-the-truck>
In-Reply-To: <20191101151657.GB3287@willie-the-truck>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7e4ee42d-3275-47e0-8da0-08d760c55ed4
x-ms-traffictypediagnostic: DB7PR04MB4666:|DB7PR04MB4666:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB46668CB2A96E3E96483AA68FE67F0@DB7PR04MB4666.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0211965D06
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(39860400002)(376002)(346002)(366004)(199004)(189003)(13464003)(86362001)(66066001)(74316002)(26005)(6246003)(229853002)(316002)(102836004)(478600001)(2906002)(14454004)(7696005)(71200400001)(25786009)(6116002)(76176011)(186003)(71190400001)(446003)(9686003)(3846002)(53546011)(6436002)(54906003)(33656002)(76116006)(66446008)(486006)(5660300002)(55016002)(11346002)(66556008)(81166006)(6506007)(66476007)(8936002)(64756008)(256004)(8676002)(99286004)(81156014)(305945005)(4326008)(6916009)(66946007)(52536014)(7736002)(476003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4666;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +17SS4JbDvdusdky57iEiFMQRlGCX/E0jOL+xwIAiqkMraC9f8mx3Tr9beHU5rKdt150V0quoJigyMbrAo27J7cfVs6JDUSuUFn1tm7Oin/1Ym8Y0xcnISGuBUiOijt1Z07lnhrINkQWx/MOQbvwnGk7eHqheH7qczi5bzZeyvQeUnH/T1D4ygZJAQdN23J7SSQwT2fjrqQExiL/Zd81GzUFb/ImhdvptAF4VwiEoDD6E0BxNT51cW0/dU8XD5fCcTJbZkjphS3Sr+uqZQuU5ZhKBepkdSA3MGbmDz/ELv3bTqe3SWhl9VY6YzryVj8ZOwi7hCuoN7mrs95eI8qPRhIvlHcZQsNRrYgpxkxbbRa+ZJV+UOsWiDZ5TiPCkqpY/8ZjJMmnLOoeaibYuBkhMGN+Oday8XfbDo69dP+8N1lRosPPuJgqVrYolNXT48Pu
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e4ee42d-3275-47e0-8da0-08d760c55ed4
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2019 01:21:51.0717 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tgaxiofB4BkKm4P7xkGgnPoyhITLaeVHlgTwjTeIl1lFJkWXVXRP7m4tH2zgZ9inUusIc7MGTCDWrJ+8U9xjsw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4666
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_172158_157136_BF0A3194 
X-CRM114-Status: GOOD (  14.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.46 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.2.46 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Frank Li <frank.li@nxp.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFdpbGwgRGVhY29uIDx3aWxs
QGtlcm5lbC5vcmc+DQo+IFNlbnQ6IDIwMTnE6jEx1MIxyNUgMjM6MTcNCj4gVG86IEpvYWtpbSBa
aGFuZyA8cWlhbmdxaW5nLnpoYW5nQG54cC5jb20+DQo+IENjOiBtYXJrLnJ1dGxhbmRAYXJtLmNv
bTsgcm9iaW4ubXVycGh5QGFybS5jb207IGRsLWxpbnV4LWlteA0KPiA8bGludXgtaW14QG54cC5j
b20+OyBGcmFuayBMaSA8ZnJhbmsubGlAbnhwLmNvbT47DQo+IGxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZw0KPiBTdWJqZWN0OiBSZTogW1BBVENIIFYzIDMvNF0gcGVyZi9pbXhf
ZGRyOiBBZGQgZW5oYW5jZWQgQVhJIElEIGZpbHRlciBzdXBwb3J0DQo+IA0KPiBPbiBGcmksIE5v
diAwMSwgMjAxOSBhdCAwODozNjoxNkFNICswMDAwLCBKb2FraW0gWmhhbmcgd3JvdGU6DQo+ID4g
V2l0aCBERFJfQ0FQX0FYSV9JRF9GSUxURVIgcXVpcmssIGluZGljYXRpbmcgSFcgc3VwcG9ydHMg
QVhJIElEIGZpbHRlcg0KPiA+IHdoaWNoIG9ubHkgY2FuIGdldCBidXJzdHMgZnJvbSBERFIgdHJh
bnNhY3Rpb24sIGkuZS4gRERSIHJlYWQvd3JpdGUNCj4gPiByZXF1ZXN0cy4NCj4gPg0KPiA+IFRo
aXMgcGF0Y2ggYWRkIEREUl9DQVBfQVhJX0lEX0VOSEFOQ0VEX0ZJTFRFUiBxdWlyaywgaW5kaWNh
dGluZyBIVw0KPiA+IHN1cHBvcnRzIEFYSSBJRCBmaWx0ZXIgd2hpY2ggY2FuIGdldCBidXJzdHMg
YW5kIGJ5dGVzIGZyb20gRERSDQo+ID4gdHJhbnNhY3Rpb24gYXQgdGhlIHNhbWUgdGltZS4gV2Ug
aG9wZSBQTVUgYWx3YXlzIHJldHVybiBieXRlcyBpbiB0aGUNCj4gPiBkcml2ZXIgZHVlIHRvIGl0
IGlzIG1vcmUgbWVhbmluZ2Z1bCBmb3IgdXNlcnMuDQo+IA0KPiBUaGFua3MuIEkndmUgcXVldWVk
IHRoZSBzZXJpZXMgbG9jYWxseSwgYnV0IHRoZSBwYXJ0IEknbSBzdGlsbCB3b25kZXJpbmcgYWJv
dXQgaXMNCj4gaG93IHdlIGFkdmVydGlzZSB0aGUgZW5oYW5jZWQgZmlsdGVyLg0KPiANCj4gRm9y
IGV4YW1wbGUsIGhvdyBkb2VzIHVzZXJzcGFjZSBrbm93IHdoZXRoZXIgb3Igbm90IGl0IHdpbGwg
Z2V0IGJ1cnN0cyBvcg0KPiBieXRlcyBiYWNrIHdoZW4gc3BlY2lmeWluZyBhbiBBWEkgZmlsdGVy
PyBTaG91bGQgd2UgY3JlYXRlIHNvbWV0aGluZyBsaWtlDQo+IGNhcHMvZW5oYW5jZWRfZmlsdGVy
IHdoaWNoIHJlYWRzIGFzIDAvMSBkZXBlbmRpbmcgb24gd2hldGhlciBvciBub3QgdGhlIHF1aXJr
DQo+IGlzIHNldD8gWW91IGNhbiBsb29rIGF0IGludGVsLXB0LmMgYW5kIGFybV9zcGVfcG11LmMg
Zm9yIGV4YW1wbGVzIG9mIHRoaXMgc29ydA0KPiBvZiB0aGluZy4NCj4gDQo+IElmIHlvdSBhZ3Jl
ZSwgcGxlYXNlIHNlbmQgYSBwYXRjaCBvbiB0b3AgdG8gaW1wbGVtZW50IHRoaXMuDQoNClRoYW5r
cyBXaWxsLCBhZ3JlZSwgSSB3aWxsIGltcGxlbWVudCB0aGlzIGxhdGVyLg0KDQpCZXN0IFJlZ2Fy
ZHMsDQpKb2FraW0gWmhhbmcNCj4gV2lsbA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
