Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65CAFEA8E9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 02:43:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RT7QC1OZPQP3MmxnMVIly03KRyAk2cJOcs7jTFKR+jA=; b=oosReo+4iHC9iy
	JyNw4dCTTVlaYNmLSpblIZFtc3dVpSizPGDQdfuQSn++1MBdfgmH3n7IqH0OCH/SW6Ks2NEGi5VEo
	mX9K59KAAWJOW/TZJXmADmS+asRAIlsL95PqOmsmXeFYZ30V+A+Wy/NkVtVKpW1kcilVFgsKXNPPm
	UDmBdhIW1x90+Gzo9yhfdnyL10NJx23rdzR9LhLIDUuAtl4erqKLJRSdSy73tRlEJGd7IUsqbBzOJ
	eYvJtwXWdf+HCCDYJR+Qm3MiHbPR649Nb1E8RMyyBkyImHnkOHxlhBi7twY89lNGrVkjqC7tAgltK
	eUo+Tz/xti0vi8EUjSjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPzUN-0006IB-VV; Thu, 31 Oct 2019 01:43:03 +0000
Received: from mail-eopbgr80074.outbound.protection.outlook.com ([40.107.8.74]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPzUD-0006HF-Q9
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 01:42:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RxYm8QlRfOr7G8ZBD0dFilVMlQFrdV0u4cBY2+JVfcN21s/aLA1IScZX6Myyjq3UuAmLTowuDXLxZC2W2sny3lolL+IPv8ZkLpVNH+NFKBhrG8M0sxKByd9JFUrQ8XO8HK9kL5/fAfly/aHggvk9dEkD0OK7YYIHvhwTDQHqfcJ/hATBrnTgic8heJ/cAOMg9w9LEM/FRoX6WsjZzvu68tVfdL7d3hjIY4V5i86g6azxiJZm8oTxlY3Bgd53Mto9rLV0qf4ulVWLVMHM3jYVxsOn5XLuOrFJaBqKFMdPjTYhtkVKn+8pYW3rgA97HdgVX5PdqivfYvldMuLcpytxhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eUS3jQN/IfTxeMRWotleOpObysUracT47ubT4EW6FyA=;
 b=P/1ykPA3Jfp4jkYTW8bEi5wXjO/W1apkY5+db0ZLoiVpyYqZFPvvBX+XT6VIHpuIE2gqokhy5aWxm4A6Pl2E93ZLuObi9KG09eh00r6IElCjDX7WFjbXNww33vS3BfwXcsdEnMYEO6YLGM8LiGg90h3PTy7F/Nv28x5Pegqg3s+FCqrEtv9Ss8a1AXRJIauiagTblPUPL/Or5tTQlfEKKA4dNTJbAa4tDGWuzmdpB256ti/d0A8vinLd6HMZI5Xk3WC890MDPP0HGybbjsMUabUfqqBo4UjM/ZheyElX/t/lQWn+x7cJ1MO+HVGNUUzaoamTNGWvYvpIjdNK5XEg2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eUS3jQN/IfTxeMRWotleOpObysUracT47ubT4EW6FyA=;
 b=qWrSZn2z3E59YyeYASeXybGXD/OnAtMQAC+iAY3gYTVx5ynGhHohnO79YUfo8Kezic9gAtMu3N1y7wWLABA+u8zL5DydN6ZEnRqJ5xPwpq7crV2bDdq08PEUNf4UwekIMGHgVhJvAQdyKi7MEMdtTs162xKyzkJTWtou2NwEG+Q=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4780.eurprd04.prod.outlook.com (20.176.235.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.17; Thu, 31 Oct 2019 01:42:46 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::79f1:61a7:4076:8679]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::79f1:61a7:4076:8679%3]) with mapi id 15.20.2367.031; Thu, 31 Oct 2019
 01:42:46 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: Will Deacon <will@kernel.org>
Subject: RE: [PATCH 1/2] perf/imx_ddr: add enhanced AXI ID filter support
Thread-Topic: [PATCH 1/2] perf/imx_ddr: add enhanced AXI ID filter support
Thread-Index: AQHVZIzXxnEyO/p2cU+i3CnZc4qNBqdwdiKAgADCnLCAAm3NAIAAoPIA
Date: Thu, 31 Oct 2019 01:42:46 +0000
Message-ID: <DB7PR04MB4618B1B8CEFBE5EAB59257CBE6630@DB7PR04MB4618.eurprd04.prod.outlook.com>
References: <20190906082356.25485-1-qiangqing.zhang@nxp.com>
 <20191028145436.GA5576@willie-the-truck>
 <DB7PR04MB4618B90121FE884B8864E7AFE6610@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <20191030153640.GB19096@willie-the-truck>
In-Reply-To: <20191030153640.GB19096@willie-the-truck>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6137b26e-9416-4f0e-a210-08d75da3a188
x-ms-traffictypediagnostic: DB7PR04MB4780:|DB7PR04MB4780:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB4780FF85E8CAD1825F0F6DA2E6630@DB7PR04MB4780.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 02070414A1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(346002)(366004)(396003)(39860400002)(13464003)(189003)(199004)(6916009)(305945005)(186003)(229853002)(52536014)(64756008)(76116006)(66446008)(66556008)(66946007)(74316002)(6246003)(6436002)(4326008)(55016002)(446003)(486006)(476003)(66476007)(7736002)(9686003)(11346002)(5660300002)(54906003)(6506007)(53546011)(102836004)(33656002)(76176011)(99286004)(7696005)(25786009)(316002)(14454004)(66066001)(8936002)(6116002)(3846002)(86362001)(71200400001)(71190400001)(256004)(2906002)(81156014)(45080400002)(478600001)(81166006)(8676002)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4780;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: k0XyczmSHUJuxscd43LurYHBg/7T06xF3sppfmNf/rNAChAkFzBtf03gOJu5UrdKD7gtGa1VUHLomTT3hmdDczxkPcNi/6P86Svch/YZ7hQgPJ2c3YvXn9hn95Djk/DdUMDzJT9ROsHymYluPj77sWn5I3PneltmB5GFNgdp7PMDos5Zf4eWN7orbULCUv8eV+Xi+LztLvb9uNSpGztml5SAU7LbUbACVnivlonP/i7oe1Z/nJdIsvy9sBdes0N58ZIi9N2NW6QpupwrzQNzeTW6rvWGRmRqUMV5rJwv1oWwIsDefs6K6ACqAEat1mXC3Mnh6HVvuub8ZPBmnmGd5mNXAXrbBubDac19EZ117eSW7qSA1Wy644EMclaexs0P2MW2RUeRnraW8db+c8Onf9cH9rlCFi0mRki68jv99CLa0v9M3N0JwgyEcl7+BOA2
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6137b26e-9416-4f0e-a210-08d75da3a188
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2019 01:42:46.5474 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Xy/5FF2mT471P15dUHEBwmuxc9ePX2tBVoImg4Bbj/muTULzoHY8QesokAMCdqRnyEfXjMq1N9jvWkLy3Seduw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4780
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_184253_920279_97F477F2 
X-CRM114-Status: GOOD (  17.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFdpbGwgRGVhY29uIDx3aWxs
QGtlcm5lbC5vcmc+DQo+IFNlbnQ6IDIwMTnlubQxMOaciDMw5pelIDIzOjM3DQo+IFRvOiBKb2Fr
aW0gWmhhbmcgPHFpYW5ncWluZy56aGFuZ0BueHAuY29tPg0KPiBDYzogbWFyay5ydXRsYW5kQGFy
bS5jb207IHJvYmluLm11cnBoeUBhcm0uY29tOyBGcmFuayBMaQ0KPiA8ZnJhbmsubGlAbnhwLmNv
bT47IGRsLWxpbnV4LWlteCA8bGludXgtaW14QG54cC5jb20+Ow0KPiBsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcNCj4gU3ViamVjdDogUmU6IFtQQVRDSCAxLzJdIHBlcmYvaW14
X2RkcjogYWRkIGVuaGFuY2VkIEFYSSBJRCBmaWx0ZXIgc3VwcG9ydA0KPiANCj4gSGkgSm9ha2lt
LA0KPiANCj4gUGxlYXNlIGNhbiB5b3UgdHJ5IHRvIGNvbmZpZ3VyZSB5b3VyIGVtYWlsIGNsaWVu
dCBjb3JyZWN0bHksIHNvIHRoYXQgeW91IGRvbid0DQo+IGhhdmUgdG8gcHJlZml4IHlvdXIgcmVw
bGllcyB3aXRoICdbSm9ha2ltXSc/IEkgdXNlIG11dHQsIHdoaWNoIHdvcmtzIHByZXR0eSB3ZWxs
LA0KPiBidXQgeW91IGNhbiBsb29rIGF0IERvY3VtZW50YXRpb24vcHJvY2Vzcy9lbWFpbC1jbGll
bnRzLnJzdA0KPiBmb3IgaGludHMgYWJvdXQgdXNpbmcgb3RoZXIgY2xpZW50cy4NCg0KSGkgV2ls
bCwNCg0KSSB1c2Ugb3V0bG9vaywgYW5kIHRoZSB0YWcgW0pvYWtpbV0gYWRkZWQgbWFudWFsbHkg
YnkgbWUgZm9yIGNsZWFyIGluZGljYXRpb24uIEkgd2lsbCByZXBseSB0aGlzIGVtYWlsIHdpdGhv
dXQgaXQuIElmIHlvdSBmaW5kIHRoZSBpbmNvcnJlY3QgZm9ybWF0IGluIHJlcGxpZWQgZW1haWws
IHBsZWFzZSBwb2ludCB0byBtZSBpbiBkZXRhaWwsIGFzIHRoaXMgY29uZmlndXJhdGlvbiBvZiBt
eSBjbGllbnQgY2FuIHdvcmsgZmluZSBpbiBsb2NhbCBwYXRjaCByZXZpZXcuIFRoYW5rcyBXaWxs
Lg0KDQo+IE9uIFR1ZSwgT2N0IDI5LCAyMDE5IGF0IDA3OjAyOjI4QU0gKzAwMDAsIEpvYWtpbSBa
aGFuZyB3cm90ZToNCj4gPiA+IEZyb206IFdpbGwgRGVhY29uIDx3aWxsQGtlcm5lbC5vcmc+DQo+
ID4gPiBPbiBGcmksIFNlcCAwNiwgMjAxOSBhdCAwODoyNjo1NUFNICswMDAwLCBKb2FraW0gWmhh
bmcgd3JvdGU6DQo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BlcmYvZnNsX2lteDhfZGRy
X3BlcmYuYw0KPiA+ID4gPiBiL2RyaXZlcnMvcGVyZi9mc2xfaW14OF9kZHJfcGVyZi5jDQo+ID4g
PiA+IGluZGV4IGNlNzM0NTc0NWI0Mi4uNWY3MGRiZmE5NjA3IDEwMDY0NA0KPiA+ID4gPiAtLS0g
YS9kcml2ZXJzL3BlcmYvZnNsX2lteDhfZGRyX3BlcmYuYw0KPiA+ID4gPiArKysgYi9kcml2ZXJz
L3BlcmYvZnNsX2lteDhfZGRyX3BlcmYuYw0KPiA+ID4gPiBAQCAtNDUsNyArNDUsOCBAQA0KPiA+
ID4gPiAgc3RhdGljIERFRklORV9JREEoZGRyX2lkYSk7DQo+ID4gPiA+DQo+ID4gPiA+ICAvKiBE
RFIgUGVyZiBoYXJkd2FyZSBmZWF0dXJlICovDQo+ID4gPiA+IC0jZGVmaW5lIEREUl9DQVBfQVhJ
X0lEX0ZJTFRFUiAgICAgICAgICAweDEgICAgIC8qIHN1cHBvcnQgQVhJIElEDQo+ID4gPiBmaWx0
ZXIgKi8NCj4gPiA+ID4gKyNkZWZpbmUgRERSX0NBUF9BWElfSURfRklMVEVSCQkJQklUKDEpICAg
ICAvKiBzdXBwb3J0DQo+IEFYSSBJRA0KPiA+ID4gZmlsdGVyICovDQo+ID4gPg0KPiA+ID4gSXMg
dGhpcyBhIGRlbGliZXJhdGUgY2hhbmdlIGZyb20gdGhlIHByZXZpb3VzIGNvZGUgYW5kLCBpZiBz
bywgd2h5Pw0KPiA+DQo+ID4gW0pvYWtpbV0gRERSIFBNVSBpbnRlZ3JhdGVkIGluIHZhcmlvdXMg
U29DcyBtYXkgaGF2ZSBkaWZmZXJlbnQNCj4gPiBmZWF0dXJlcyhleHRlbmQgbW9yZSBmZWF0dXJl
cyksIHVzZSBCSVQoMSkvQklUKDIpL0JJVCgzKS4uLiBpbnN0ZWFkIG9mDQo+ID4gMHgxLzB4Mi8w
eDQuLi4sIEkgdGhpbmsgaXQgaXMgbW9yZSBlYXNpZXIuICBUaGlzIGRlbGliZXJhdGUgY2hhbmdl
DQo+ID4gZnJvbSBwcmV2aW91cyBjb2RlIGhhcyBubyBmdW5jdGlvbmFsIGVmZmVjdC4NCj4gDQo+
IE15IHBvaW50IHdhcyB0aGF0IEkgZG9uJ3QgdGhpbmsgQklUKDEpID09IDB4MS4NCg0KU29ycnkg
Zm9yIG15IG1pc3Rha2UuIEkgd2lsbCBjaGFuZ2UgaW50byBCSVQoMCkgZm9yIDB4MSB0byBhbGln
biB0byBwcmV2aW91cyBjb2RlIGluIG5leHQgdmVyc2lvbi4gQ291bGQgeW91IGZpcnN0bHkgaWdu
b3JlIHRoaXMgYW5kIHRoZW4gcmV2aWV3IG90aGVycyBpbiBWMj8gSSB3aWxsIGZpeCBhbGwgb2Yg
dGhlbSB0b2dldGhlciBpbiBWMy4NCg0KQmVzdCBSZWdhcmRzLA0KSm9ha2ltIFpoYW5nDQo+IFdp
bGwNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
