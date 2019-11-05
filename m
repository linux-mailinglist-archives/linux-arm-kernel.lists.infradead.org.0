Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B74EFB11
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 11:26:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2SGrG4aGP+h4I1WjUfzMoaJH2m52jwr8ZqlPZ5Ff+QM=; b=K3DO94QhuPkxBr
	z1A2jZyRkuaKc7uBDXLV2QBhi0d5CdO/Avbo5dgKdw8UhWBv/cFmD4o+hiB0jjadR0baXwaRvusFY
	oX6kJvDA0boFcyqAgkJDE4ZETQIaZV11uvTOxKiBES0Qp5oYnqLHuh7FxROdXe7IBSIXlBd30CLr0
	oA6tx5Zc8uiThLIMUOSR3hWDX+aw9LtbUjLSOoZ2YqZAiExROOkoyC4xsg3fUqB9npsRvIYgy7LDa
	FzO2bQbptoge+MPk+nyYUtfARkE+fENHi49bOTlwm6fxWie4H0Bnjh1YOsNH7S/KxbpwqIcW7WKs2
	Ynfzf8/f119/0wK1xzLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRw2z-0002Ok-HM; Tue, 05 Nov 2019 10:26:49 +0000
Received: from mail-vi1eur04on0613.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::613]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRw2s-0002NT-1Q
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 10:26:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZqHSdgJbg/5pGT0xN53qiH8xp/psTgVxQiJB1NPF0otQs/wc0zkBnhB1IoTKvNHUCep7eRsxYoKRi1MhcDut52wZt/7MulZi9S+OWA4YlvYuawTCuNP7+JUBBodPkLpCyPdg23ziAB/J67uGmE/RuZNV5OewYD6n6kHSR3kaOYXUm7bX2IXOLDt1Xfz0ndu7EuMeBop8Wn6H0HXR7wqVVutjYnwvnLN3vJDk4Ou9q8TbChyqYhxgb3o49olQJeKheb8UpqeQVX7frpLQwveYppgJvxFih8HfDeHN1cq64J3BHA6b9Ru+HEx1rxCnw+XTL6X8lUX96EL6Xr7G348Q3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sgrenS3hFcdvlRQEop1jZvNYrg4FbV6Tnb+XWlqDCfE=;
 b=XrgCa3MA00CL+fURs2+Sz2g4tympPCxlcc0wWFHjlG/xGiFf956oFxB1FoEgH2EgSnK2OBh6OY81GvhyNPP+E+cP4HM1I6YNJ9AsAgQ4I1FFVL0muoo7y1WpwRfSo3Ku5Sr93LDNzYM48wTwYFX+eExHompBPHdiKpJrgglbwbW3h+3l0yQJiU8xl0VJXc1r+rxzkmXTifAbmd7EEoxhif6Dez/FTXvbk88KMWS/mFafEPzSxXigCyFcJzIEoP1obIFWd0Pyb5/NQRp/mLf51AZNOl09545oEWB3dsoJTTgoNARBmO2xMv/zYKuDcohkrCbhwoI1wpooMgutGJYYhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sgrenS3hFcdvlRQEop1jZvNYrg4FbV6Tnb+XWlqDCfE=;
 b=eCWhlYNJkXa7fjko+S4+0xevzA0+mgqjSWRYpLrEbcQgrmF+DyGgxrPVeAu5/qKM8/IH8wpxiDPx1yEC15GZOcLosrQWmFaSVRprQwd3mMw1j1FbP+5atUNpzfiiGp+kg0axMts3HBdNsZBXktoPopNQTcOlLVluTeMyo52Djcg=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB5532.eurprd04.prod.outlook.com (20.178.106.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Tue, 5 Nov 2019 10:26:38 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::1c96:c591:7d51:64e6]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::1c96:c591:7d51:64e6%4]) with mapi id 15.20.2408.024; Tue, 5 Nov 2019
 10:26:37 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: Will Deacon <will@kernel.org>
Subject: RE: [PATCH 2/2] perf/imx_ddr: Dump AXI ID filter info to userspace
Thread-Topic: [PATCH 2/2] perf/imx_ddr: Dump AXI ID filter info to userspace
Thread-Index: AQHVkt7JSVyxcOrde0KxiVvue8qin6d7OxEAgACMn8CAAI5yAIAACttw
Date: Tue, 5 Nov 2019 10:26:37 +0000
Message-ID: <DB7PR04MB4618A684FAC5B9E04B9F081EE67E0@DB7PR04MB4618.eurprd04.prod.outlook.com>
References: <20191104070616.29834-1-qiangqing.zhang@nxp.com>
 <20191104070616.29834-2-qiangqing.zhang@nxp.com>
 <20191104165338.GE24909@willie-the-truck>
 <DB7PR04MB4618316403D1F32CF1739CCFE67E0@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <20191105094645.GA29852@willie-the-truck>
In-Reply-To: <20191105094645.GA29852@willie-the-truck>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 3d2dfa39-ab93-425e-ec2b-08d761daa40c
x-ms-traffictypediagnostic: DB7PR04MB5532:|DB7PR04MB5532:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB5532A8DC7E5D8987ABAA101FE67E0@DB7PR04MB5532.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0212BDE3BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(39860400002)(376002)(136003)(366004)(189003)(199004)(13464003)(8936002)(6116002)(6916009)(305945005)(14454004)(86362001)(76176011)(33656002)(66066001)(9686003)(55016002)(446003)(11346002)(6436002)(74316002)(53546011)(7736002)(6306002)(229853002)(316002)(478600001)(486006)(8676002)(476003)(4326008)(966005)(81156014)(81166006)(99286004)(54906003)(45080400002)(25786009)(6506007)(186003)(6246003)(102836004)(7696005)(26005)(71200400001)(66446008)(66556008)(66946007)(64756008)(76116006)(52536014)(5660300002)(66476007)(71190400001)(2906002)(3846002)(256004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB5532;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FhbBRQG6LA+KKtZp5dElnrn6dIaS4nCow2PMpGGA8pY01OwKk4gyr4p2JZi6Xx22/xVMBGy8xQ8OEbuCvR+6oIDDdenaB4RfgKyCizoS7lV4n9rh0nAcx5AjinPLt4mRGD57jC6MpaGkYiOcUmX9n6J3V/TCT+N3YUft3Sqk2V4FO06Hs1IXS0BS8WAwq4md7aV+ZR2Ojf0G3vYfv32Y1dZ0Gje39z+mRc+4ta4YVQIXpiX6tLK464WAkC0IfICh8ZGXF0hH8Hbco/HaOIVUa1GEQ5Br/UVNXd0RliomH8RbOnaREOoZTO0h7QFTgcQzBP7f+UGKXa5hAAt5eMICfwI7SYr/jWUJR/OXcdssJxSVOCtDvZ2lQNxl1VtUY21qMXGKCZEpY/j472kfcESWq/5YA7kX6WpGD+JiFCG3mQTZuSggeXsRdJl+CAqd4tXLnTGX0/H+QtWo9wK9ZsZCQXqfcRZKx4Bthx0MtVpbaJM=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d2dfa39-ab93-425e-ec2b-08d761daa40c
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2019 10:26:37.7390 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KWDyWdc/jdAJ8CEhphQCCqV5M0joS+zb/sAiJIKbYrlJ5dqRgjPX7va3Fh3+JLltY57LgRqu/1Bha4kObiCPtg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5532
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_022642_079025_10D90DE6 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:613 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.0 FORGED_SPF_HELO        No description available.
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
QGtlcm5lbC5vcmc+DQo+IFNlbnQ6IDIwMTnE6jEx1MI1yNUgMTc6NDcNCj4gVG86IEpvYWtpbSBa
aGFuZyA8cWlhbmdxaW5nLnpoYW5nQG54cC5jb20+DQo+IENjOiBtYXJrLnJ1dGxhbmRAYXJtLmNv
bTsgcm9iaW4ubXVycGh5QGFybS5jb207IGRsLWxpbnV4LWlteA0KPiA8bGludXgtaW14QG54cC5j
b20+OyBGcmFuayBMaSA8ZnJhbmsubGlAbnhwLmNvbT47DQo+IGxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZw0KPiBTdWJqZWN0OiBSZTogW1BBVENIIDIvMl0gcGVyZi9pbXhfZGRy
OiBEdW1wIEFYSSBJRCBmaWx0ZXIgaW5mbyB0byB1c2Vyc3BhY2UNCj4gDQo+IE9uIFR1ZSwgTm92
IDA1LCAyMDE5IGF0IDAxOjQ4OjQ0QU0gKzAwMDAsIEpvYWtpbSBaaGFuZyB3cm90ZToNCj4gPiA+
IEkndmUgbWFkZSB0aG9zZSB0d28gY2hhbmdlcywgc28gSSdsbCBxdWV1ZSB0aGlzIHVwIGZvciA1
LjUuIFRoYW5rcy4NCj4gPg0KPiA+IFdpbGwsIG5lZWQgbWUgc2VuZCBhIHBhdGNoIHRvIHJlbW92
ZSB0aGlzIGFycmF5IHN5bnRheCB1bmRlciB0aGUgZGlyZWN0b3J5DQo+IGRyaXZlcnMvcGVyZi8u
Li4gdG9nZXRoZXI/DQo+IA0KPiBObyBuZWVkLCBidXQgcGxlYXNlIGNoZWNrOg0KPiANCj4gaHR0
cHM6Ly9ldXIwMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0dHBzJTNB
JTJGJTJGZ2l0Lmtlcm4NCj4gZWwub3JnJTJGcHViJTJGc2NtJTJGbGludXglMkZrZXJuZWwlMkZn
aXQlMkZ3aWxsJTJGbGludXguZ2l0JTJGbG9nJTJGDQo+ICUzRmglM0Rmb3ItbmV4dCUyRnBlcmYm
YW1wO2RhdGE9MDIlN0MwMSU3Q3FpYW5ncWluZy56aGFuZyU0MG54cC5jDQo+IG9tJTdDZjcyNGQy
MTRiZjdkNDQ2ZDlhZGMwOGQ3NjFkNTE2MzIlN0M2ODZlYTFkM2JjMmI0YzZmYTkyY2Q5OWMNCj4g
NWMzMDE2MzUlN0MwJTdDMSU3QzYzNzA4NTQ0MDEzNTcxMjE2OCZhbXA7c2RhdGE9VkRYZEl6UFVs
OWtrVHUNCj4gbVJyNGJWaTdtRDZlSHIxV2wlMkZmbVRiZnJMcG5GOCUzRCZhbXA7cmVzZXJ2ZWQ9
MA0KDQpXaWxsLCBJIGhhdmUgYWxyZWFkeSBjaGVja2VkLCBubyBwcm9ibGVtLCB0aGFuayB5b3Uh
DQoNCkJlc3QgUmVnYXJkcywNCkpvYWtpbSBaaGFuZw0KPiBXaWxsDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
