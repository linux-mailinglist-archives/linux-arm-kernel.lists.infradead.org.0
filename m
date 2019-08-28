Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E3AA00BD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 13:32:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mgluuzL+CTjd90oj2o/JXiA+wk1d6jC2g6IgZHY547w=; b=QgBsQWEzAQLCwZ
	jTuEkyayi3Pk6wDJpgqOopwecQMXQKvUVp408WiPmKrrHI+AE1/xhhh4wkZnyedGhHHIfYjy+/u+Q
	3vMe4id/EAMDZT1OW4QvFz8MiTvxSQFcUGdj0TdcKLzNCO0Kh2WR8fXM0WZ4TzcISkBhQHRA/XWZW
	IfB+NHuC+tAEs55YR3s/AvOOayjzbt1TkwW7n6igMrdiRt6cxe+/gc+zyXwv2knjhPPHKiTsoj3b7
	0mHnAD/XN17k7JCD4s94OyM6KLMKx1Dq+vFjm+8sd6mLJM4HcVIzn4pjl3xBvdpWQmYTtrbdi2Lbj
	pFuD59nrvi074jYGFkTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2wBe-0003xk-6W; Wed, 28 Aug 2019 11:32:26 +0000
Received: from mail-eopbgr140051.outbound.protection.outlook.com
 ([40.107.14.51] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2wBR-0003xL-0B
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 11:32:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hzWHEztpAd4fjQbIH+wm2TTpiuVmini2qH+H0HXwrDmzgCwOzh0H+ZbGGVlavYE1X/D03dIHq7NKGJWGUuaWxM8S1luWvuBSd8obE1atAWxiV77UqcEGy5l48+3bgUkbsk9VVR0v95qHmL2f40kJBOoUw/xRM5WYV1VX45OPbCh6FQgVrm8/ZQTGmQIjKdHfdFMmbM/RhvYcncDg+4H9RBUYxF3InA7nc2MLat8NShh+LGuTxnzKwB8atog5jBgXudtekVTGqZv5HsckBmgfwUVe7HETfLsmaQyZArQhZuJDPnRTM3YdjV2iGA6FzoKcF+Y6u4JUlSlePBEI1NxWEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O6a2BUbxnyurT5CxewCfwhKqBekMxtZgOBb8TovCZV8=;
 b=T+mok0jgud9sib9QIJk+bzy9xo+RkhPsr0K59/afqnd6gEqrTSSGHfm0P51vIIg3GQUmm8noW8dz0yxHfkNODlg67Z/Kz6osUNV1rRLUhIEqr+ncPT4RCR9zg+DqR6vv7BhTNkT2cbG/cYy54KKsBFQ1fUGzdvF7vM4qUoBW+6SUgDH3B8I8C/JzpZVs+pVvYFqYdeszmWAHBXASlzYzDoDsT0TVlXdRxhntEqZVZAd3Gj2EIF5gckeJmJEiHt8uoh/qdCFRvQvWC4qQc8Jo/WlErZpIdqwPhadr/GSlHIjRE6k7vjEgzUCbo6fc0I2RncD+zJT/KMVcxBW7hlnSZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O6a2BUbxnyurT5CxewCfwhKqBekMxtZgOBb8TovCZV8=;
 b=gHk7O0HGjBEcM8Yvyzy979lQCR0+8hdAdq9UQMJYAXWCoy+NevIoMYNX25darEBaCQYwS1ndCeZ5wqBeo0s++Wv9/fU5W6IC1HhqY7Josf2OiOEEtHKl4ybt1adqfw4f77QE+5nmOE1zBFjtZiMUYjvL0LSAQL7WePwEyvfP12w=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4665.eurprd04.prod.outlook.com (52.135.139.152) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Wed, 28 Aug 2019 11:32:09 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::c8ca:1c9c:6c3:fb6f]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::c8ca:1c9c:6c3:fb6f%4]) with mapi id 15.20.2199.021; Wed, 28 Aug 2019
 11:32:09 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: Will Deacon <will@kernel.org>
Subject: RE: [PATCH V8 2/3] Documentation: admin-guide: perf: add i.MX8 ddr
 pmu user doc
Thread-Topic: [PATCH V8 2/3] Documentation: admin-guide: perf: add i.MX8 ddr
 pmu user doc
Thread-Index: AQHVXU14VR6r+19rHEqH7pzjIUBnLKcQVWmAgAATZJA=
Date: Wed, 28 Aug 2019 11:32:09 +0000
Message-ID: <DB7PR04MB461813AC9C4CF6C937F71CA7E6A30@DB7PR04MB4618.eurprd04.prod.outlook.com>
References: <20190828030305.7190-1-qiangqing.zhang@nxp.com>
 <20190828030305.7190-2-qiangqing.zhang@nxp.com>
 <20190828100440.melcuvu6hz5mrm3h@willie-the-truck>
In-Reply-To: <20190828100440.melcuvu6hz5mrm3h@willie-the-truck>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 354b703a-f7de-48f9-fce6-08d72bab5d15
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR04MB4665; 
x-ms-traffictypediagnostic: DB7PR04MB4665:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB4665A06F0FDDCCD8B832C861E6A30@DB7PR04MB4665.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 014304E855
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(39860400002)(396003)(136003)(376002)(54534003)(13464003)(189003)(199004)(256004)(4326008)(6246003)(25786009)(52536014)(86362001)(9686003)(6916009)(99286004)(486006)(71200400001)(71190400001)(6506007)(53936002)(81166006)(26005)(53546011)(66446008)(5660300002)(476003)(76176011)(66476007)(55016002)(186003)(316002)(14444005)(11346002)(66946007)(76116006)(6436002)(64756008)(102836004)(66556008)(446003)(7696005)(3846002)(6116002)(33656002)(14454004)(305945005)(8936002)(74316002)(7736002)(54906003)(66066001)(478600001)(229853002)(2906002)(8676002)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4665;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: S8/GuEriSsCj7ad8z8mCKWfd4PP0rgi7LaUOIWt2mPyGIa1gCe0HnJfR73eWYNQG4XqkMAYCksGwaVwsW9PJcrPdpLJHoxsPEV7oTc+W/LeOO6bTxiRjg8qqaDziU2DOjT67AHzd7POt4DZhzOh+X5o9epUrS86XvOt88+PuPlK/NM8fM4R1uFz6KppnP67PXMB7Bu6ew20+bOkMIoKljoFKRp+g7gwsVP1W0RzXC7jWP/y1Zr8QOB9HHwxZLdOXhP7Y2Xtvwr65YuL0v3ApMrWZJGN33BLQajrjWL5M1JzTW8dfSp+lFpec2mn508AQcMivIbNDTwr58QrndL55LUs93MktG2MuqWyxGHcevuKS0jrlWq5pG9ufZlryf001QcEF+Ddpd+Pvu/hkBtCdzm1tVHuj+h3W8F7O+DvJLfY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 354b703a-f7de-48f9-fce6-08d72bab5d15
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2019 11:32:09.6419 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D5jJnPcO/5No68V4ofM0LjQmMaFKtIzRsprPqw38DAdNHHnuH5IWXhCGZPiMsFPi3ahweU+UxnWtlsPs3q6vMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4665
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_043213_047531_C0C11C3A 
X-CRM114-Status: GOOD (  23.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.51 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
QGtlcm5lbC5vcmc+DQo+IFNlbnQ6IDIwMTnlubQ45pyIMjjml6UgMTg6MDUNCj4gVG86IEpvYWtp
bSBaaGFuZyA8cWlhbmdxaW5nLnpoYW5nQG54cC5jb20+DQo+IENjOiBtYXJrLnJ1dGxhbmRAYXJt
LmNvbTsgcm9iaW4ubXVycGh5QGFybS5jb207IEZyYW5rIExpDQo+IDxmcmFuay5saUBueHAuY29t
PjsgZGwtbGludXgtaW14IDxsaW51eC1pbXhAbnhwLmNvbT47DQo+IGxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZw0KPiBTdWJqZWN0OiBSZTogW1BBVENIIFY4IDIvM10gRG9jdW1l
bnRhdGlvbjogYWRtaW4tZ3VpZGU6IHBlcmY6IGFkZCBpLk1YOCBkZHINCj4gcG11IHVzZXIgZG9j
DQo+IA0KPiBPbiBXZWQsIEF1ZyAyOCwgMjAxOSBhdCAwMzowNTozOUFNICswMDAwLCBKb2FraW0g
Wmhhbmcgd3JvdGU6DQo+ID4gQWRkIGkuTVg4IGRkciBwbXUgdXNlciBkb2MuDQo+ID4NCj4gPiBD
aGFuZ2VMb2c6DQo+ID4gVjEgLT4gVjQ6DQo+ID4gCSogbmV3IGFkZCBpbiBWNC4NCj4gPiBWNCAt
PiBWNToNCj4gPiAJKiBubyBjaGFuZ2UuDQo+ID4gVjUgLT4gVjY6DQo+ID4gCSogY2hhbmdlIHRo
ZSBldmVudCBuYW1lDQo+ID4gVjYgLT4gVjc6DQo+ID4gCSogbm8gY2hhbmdlLg0KPiA+IFY3IC0+
IFY4Og0KPiA+IAkqIGltcHJvdmUgdGhlIGRvYywgYWRkIG1vcmUgZGV0YWlscy4NCj4gPg0KPiA+
IFNpZ25lZC1vZmYtYnk6IEpvYWtpbSBaaGFuZyA8cWlhbmdxaW5nLnpoYW5nQG54cC5jb20+DQo+
ID4gLS0tDQo+ID4gIERvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUvcGVyZi9pbXgtZGRyLnJzdCB8
IDUxDQo+ID4gKysrKysrKysrKysrKysrKysrKysrKw0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgNTEg
aW5zZXJ0aW9ucygrKQ0KPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9hZG1p
bi1ndWlkZS9wZXJmL2lteC1kZHIucnN0DQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRh
dGlvbi9hZG1pbi1ndWlkZS9wZXJmL2lteC1kZHIucnN0DQo+ID4gYi9Eb2N1bWVudGF0aW9uL2Fk
bWluLWd1aWRlL3BlcmYvaW14LWRkci5yc3QNCj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiA+
IGluZGV4IDAwMDAwMDAwMDAwMC4uNDM4ZGUzYmU2NjdiDQo+ID4gLS0tIC9kZXYvbnVsbA0KPiA+
ICsrKyBiL0RvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUvcGVyZi9pbXgtZGRyLnJzdA0KPiA+IEBA
IC0wLDAgKzEsNTEgQEANCj4gPiArPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT0NCj4gPiArRnJlZXNjYWxlIGkuTVg4IEREUiBQZXJmb3JtYW5jZSBN
b25pdG9yaW5nIFVuaXQgKFBNVSkNCj4gPiArPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT0NCj4gPiArDQo+ID4gK1RoZXJlIGFyZSBubyBwZXJmb3Jt
YW5jZSBjb3VudGVycyBpbnNpZGUgdGhlIERSQU0gY29udHJvbGxlciwgc28NCj4gPiArcGVyZm9y
bWFuY2Ugc2lnbmFscyBhcmUgYnJvdWdodCBvdXQgdG8gdGhlIGVkZ2Ugb2YgdGhlIGNvbnRyb2xs
ZXINCj4gPiArd2hlcmUgYSBzZXQgb2YgNCB4IDMyIGJpdCBjb3VudGVycyBpcyBpbXBsZW1lbnRl
ZC4gVGhpcyBpcyBjb250cm9sbGVkDQo+ID4gK2J5IHRoZSBQZXJmb3JtYW5jZSBsb2cgb24gcGFy
YW1ldGVyDQo+DQo+IEkgZG9uJ3QgdW5kZXJzdGFuZCB3aGF0IHlvdSBtZWFuIGJ5ICJQZXJmb3Jt
YW5jZSBsb2cgb24gcGFyYW1ldGVyIi4NCg0KW0pvYWtpbV0gRnJvbSBJQyBSTSwgaXQgbWVhbnMg
UGVyZm9ybWFuY2UgbG9nIG9uIHBhcmFtZXRlciBmaWVsZChldmVudCBpZClvbiBjb3VudGVycyBj
b250cm9sIHJlZ2lzdGVyLiBJIHdpbGwgaW1wcm92ZSBpdC4NCg0KPiA+ICt3aGljaCBjYXVzZXMg
YSBsYXJnZSBudW1iZXIgb2YgUEVSRiBzaWduYWxzIHRvIGJlIGdlbmVyYXRlZC4NCj4gPiArDQo+
ID4gK1NlbGVjdGlvbiBvZiB0aGUgdmFsdWUgZm9yIGVhY2ggY291bnRlciBpcyBkb25lIHZpYSB0
aGUgY29uZmlnDQo+ID4gK3JlZ2lzdGllcnMuIFRoZXJlDQo+IA0KPiByZWdpc3RlcnMNCg0KW0pv
YWtpbV0gV2lsbCBGaXggaXQuDQoNCj4gPiAraXMgb25lIHJlZ2lzdGVyIGZvciBlYWNoIGNvdW50
ZXIuIENvdW50ZXIgMCBpcyBzcGVjaWFsIGluIHRoYXQgaXQNCj4gPiArYWx3YXlzIGNvdW50cyDi
gJx0aW1l4oCdIGFuZCB3aGVuIGV4cGlyZWQgY2F1c2VzIGEgbG9jayBvbiBpdHNlbGYgYW5kIHRo
ZQ0KPiA+ICtvdGhlciBjb3VudGVycyBhbmQgYW4gaW50ZXJydXB0IGllIGVuYWJsZSBvZiBjb3Vu
dGVyIDAgaXMgYSBnbG9iYWwgZnVuY3Rpb24uDQo+IA0KPiBieSAiY2F1c2VzIGEgbG9jayBvbiBp
dHNlbGYgYW5kIHRoZSBvdGhlciBjb3VudGVycyIgZG8geW91IG1lYW4gdGhhdCBDb3VudGVyDQo+
IDAgY291bnRzIGRvd24gYW5kLCB3aGVuIGl0IGhpdHMgMCwgYWxsIHRoZSBjb3VudGVycyBzdG9w
IGNvdW50aW5nPw0KDQpbSm9ha2ltXSBZZXMsIGFzIGl0IGNvbW1lbnRlZCBpbiBkZHJfcGVyZl9p
cnFfaGFuZGxlcigpOg0KLyoNCiAqIFdoZW4gdGhlIGN5Y2xlIGNvdW50ZXIgb3ZlcmZsb3dzLCBh
bGwgY291bnRlcnMgYXJlIHN0b3BwZWQsDQogKiBhbmQgYW4gSVJRIGlzIHJhaXNlZC4gSWYgYW55
IG90aGVyIGNvdW50ZXIgb3ZlcmZsb3dzLCBpdA0KICogY29udGludWVzIGNvdW50aW5nLCBhbmQg
bm8gSVJRIGlzIHJhaXNlZC4NCiAqDQogKiBDeWNsZXMgb2NjdXIgYXQgbGVhc3QgNCB0aW1lcyBh
cyBvZnRlbiBhcyBvdGhlciBldmVudHMsIHNvIHdlDQogKiBjYW4gdXBkYXRlIGFsbCBldmVudHMg
b24gYSBjeWNsZSBjb3VudGVyIG92ZXJmbG93IGFuZCBub3QNCiAqIGxvc2UgZXZlbnRzLg0KICov
DQoNCkJlc3QgUmVnYXJkcywNCkpvYWtpbSBaaGFuZw0KPiBXaWxsDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
