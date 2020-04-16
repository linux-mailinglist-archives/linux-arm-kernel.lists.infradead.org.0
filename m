Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 348641AB97A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 09:15:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HdaYvApKruQMQ0s729xXgBzeBcFM0ajjBJuRemRf2jI=; b=OZFpQKCpHvOGTe
	ZL0JwB2aMt0SuW1FmQA7KlZ265q7lU5usRCZkdB4uowfhMmjfdQcFied5V9F/0Y6QUp5PuF2G4DXB
	CvA30j+WTSu6zEBgJpL8EwBiCiCRw5k8PlKKFffU7YCM2i266liqZpFUKsWiB7Ze2NFCTcaxeqYMn
	8lkuIAnybRoOT9gfhAxzst3AShJXHvWgPHpQTDvo9TYcMEZbWMM+rx5Unf5sALCoq2J5P56t46YZN
	vMFx9GNkLWM39OjkJxl4WTyktpw4//fRJsC8oD0IBNw7Aupp+n0ALahKnAeSFCdAEsKTVTmYjHH9o
	5rKMboMtWQmZcy2TtlAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOykN-0003JA-Hb; Thu, 16 Apr 2020 07:15:39 +0000
Received: from mail-am6eur05on2041.outbound.protection.outlook.com
 ([40.107.22.41] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOykD-0003Hp-UX
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 07:15:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cg/B5Hc0TYaQ332EjKza9nfIXviFFOq78TqFkzRXbfChsa/8/wYBY4Ez5Z4Alp77z3MykyZt1/Y2yh+4Nh/q85ro0IFABnZZXJ1RHaKi0QbN3tvs+q+w07nq9vPuRkjJ3NgOh4DmmVhRj3nm4ffFE8mZKGDt2rp2CDh/SsZ5JNpzozNBwvz0jBe/5ZFwK7jW05DCQoAsLpmu5lgRaifeE9SnzpEh/tG+3whBApt2zD4Pd+Cy3JZ8qMBR7XOb2DQjVadzFECDoooOZEtNLFyJy1PZlt6K5QwFVvL2760pshmghpsR0htJnZ1ssTtxhfbexUFyeCAwJpR8ltQFYlHz0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KJdVQjpqCWqhTv8KqdbAFwmLcsoP/JkZ0e7HaZTN7V0=;
 b=hiW6BR6xn+JcqtDqT6EnUhUpMyNaPbvIDZtQsa2hqROiBlFKD99Bgv5ianBl5hgyDwazbEkCCtK7mQfDzSrDni2v86nAtTTJXDmc4lgI6djE285rYVyUvLI/4lsBVfOaO1j41E9yMSQZoa7gUesXDCkjUJT/mdpM5NDaN/nnG5ABOIeSCfyLt+YgGXxai2ZjTIwq0YMIpeY44AIHEpSzajOBZwHGK+mkjhCujSUKRKewB46GVVY1XWB/MlKBvBnxbEUXKG9KXJBPXK7JOOA/3Gx51k6PzfLCio23ZbA1JsJdKQUJvWPDjP41uml+nXMw28MjLh6plF7PTe/SfRQdAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KJdVQjpqCWqhTv8KqdbAFwmLcsoP/JkZ0e7HaZTN7V0=;
 b=TwkJY6HkVDvDqg0dgS/3O892H/csir4y8XvX1n0dHa+VW/kxog0aLOWV/54NEsfhdam+lrF+0fI2Z9Z3S4ilhsWW0mqgcCjyN96UY6o3wCB3Q4/xP1S46QJM+L4Wa77w5CO72/ZYvZu6uCI6XFunRxELqX9/RtO84jvACGE+J4s=
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB8PR04MB5817.eurprd04.prod.outlook.com (2603:10a6:10:a3::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.24; Thu, 16 Apr
 2020 07:15:25 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::2924:94ba:2206:216e]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::2924:94ba:2206:216e%8]) with mapi id 15.20.2921.027; Thu, 16 Apr 2020
 07:15:24 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: John Garry <john.garry@huawei.com>
Subject: RE: [PATCH 0/6] perf/imx_ddr: Add namespace for i.MX8 DDR Perf
Thread-Topic: [PATCH 0/6] perf/imx_ddr: Add namespace for i.MX8 DDR Perf
Thread-Index: AQHV6W3A3nevwmck+keoVVW6IJgc3agqKT2AgAAQDjCAAeWxAIAA772QgAAzaoCAAAYD8IAAflQAgDNsawCADJBnsIAARCOAgADH/+CAAH3ngIAAD3DwgArgwQCAAWzPUA==
Date: Thu, 16 Apr 2020 07:15:24 +0000
Message-ID: <DB8PR04MB67957F63165ACC0483F6AE39E6D80@DB8PR04MB6795.eurprd04.prod.outlook.com>
References: <20200222104621.2258-1-qiangqing.zhang@nxp.com>
 <6dbeabcf-c15a-0bbd-cef4-b25d0133854f@huawei.com>
 <DB7PR04MB4618D2E1892120EB659B8695E6EC0@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <2f81eb7a-a6e4-1cc6-cd0a-ca3d749bd552@huawei.com>
 <DB7PR04MB4618C0A8DD9BAB2A529CDCECE6EA0@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <a2cc0772-4f5d-aba3-1f5c-7d4eef7a3f72@huawei.com>
 <DB7PR04MB461803AD15E47AA880F0915DE6EA0@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <55836919-41b5-0834-f7a7-1a2a34535677@huawei.com>
 <bd67910e-1522-39cd-5527-b9b18f3da96d@huawei.com>
 <DB8PR04MB6795996085AD2167E2358907E6C30@DB8PR04MB6795.eurprd04.prod.outlook.com>
 <ccab39b0-c84f-e529-4067-07466b5433a1@huawei.com>
 <VI1PR04MB68000808CEE4BC23403C35A0E6C00@VI1PR04MB6800.eurprd04.prod.outlook.com>
 <ca2db002-975a-ffe0-2dfc-c85f4e6205bb@huawei.com>
 <VI1PR04MB6800F2A5949F0AFAF2E82CE0E6C00@VI1PR04MB6800.eurprd04.prod.outlook.com>
 <0b3999b8-c307-6b4a-1a1b-e90b45f50b61@huawei.com>
In-Reply-To: <0b3999b8-c307-6b4a-1a1b-e90b45f50b61@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d8d87813-658a-4cf9-f09d-08d7e1d5eee6
x-ms-traffictypediagnostic: DB8PR04MB5817:|DB8PR04MB5817:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB5817B54819BC055C7AE93D37E6D80@DB8PR04MB5817.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0375972289
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR04MB6795.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(396003)(136003)(376002)(366004)(39860400002)(346002)(64756008)(66556008)(76116006)(66946007)(8676002)(66446008)(81156014)(7696005)(8936002)(54906003)(6916009)(186003)(66476007)(478600001)(316002)(9686003)(4326008)(86362001)(2906002)(5660300002)(71200400001)(6506007)(26005)(52536014)(53546011)(33656002)(55016002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AudjnDs7WIoenLgCkODPeo2zIuh2458kLCUV3jWC75K7K64SzaidDOacZQ9PtiBfiCj5e7mPY+hSV+Z1MAE6W4nBCVa+0mKtsvusv7BtKerJm2v0s/vchJ1t4XC1AI9+ckpbhOdqfOngEeg0JGxh5lwiR5bTkO7lIlHXTCqCTNSN3UbaSZ4ah0h11sNRu4PEBf3U3YRuTKKKixnA4SOosVuIL+zRzIOt8u67oO7zaM0KvN9T6yg0sXFStUuLB18ucLyoddkxA6BVJg45ReH5baktzUG/qeFZMLOIzB2maNmEO9kJhCZ60hg6pFfdWshB70E/QjxeJJC9imqR2YgpYW5xl2AcQJF49PEELnkmy9ExnCq2phzrr9lExeZEatW2tqPZne73yPjr0bl7lMThVdoQxlWxLTOseomsQifuFZg3QyJLcgWuf4cp2cv+DloT
x-ms-exchange-antispam-messagedata: cfxhpI4C4+XG6woYmlbKOt9V9pZZtxovinPyyBNrZiqIKqFKPD/srLUFxCy2Ypw7AH1eeU/f2jTK97QkzNE4MUklyHqGufbLJ3iwUBdARFchu7tJrx4B+jLTshPLFMUX1/S5OGkMORRZlhhR3Icu8Q==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8d87813-658a-4cf9-f09d-08d7e1d5eee6
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Apr 2020 07:15:24.7475 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OLJJiFuiRuj0idWLndA5i/RoBheh5gDKEm8qHC27tGhzhn9dO9enBAnW4PqYqiMuNikexadvVMoKR4L7zE83kg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB5817
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_001529_986907_F05F001B 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.41 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Zhangshaokun <zhangshaokun@hisilicon.com>, "will@kernel.org" <will@kernel.org>,
 Linuxarm <linuxarm@huawei.com>, "acme@kernel.org" <acme@kernel.org>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Jiri Olsa <jolsa@redhat.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEpvaG4gR2FycnkgPGpvaG4u
Z2FycnlAaHVhd2VpLmNvbT4NCj4gU2VudDogMjAyMOW5tDTmnIgxNeaXpSAxNzoyOA0KPiBUbzog
Sm9ha2ltIFpoYW5nIDxxaWFuZ3FpbmcuemhhbmdAbnhwLmNvbT4NCj4gQ2M6IHdpbGxAa2VybmVs
Lm9yZzsgbWFyay5ydXRsYW5kQGFybS5jb207IGFjbWVAa2VybmVsLm9yZzsNCj4gbGludXgtcGVy
Zi11c2Vyc0B2Z2VyLmtlcm5lbC5vcmc7IGRsLWxpbnV4LWlteCA8bGludXgtaW14QG54cC5jb20+
OyBKaXJpIE9sc2ENCj4gPGpvbHNhQHJlZGhhdC5jb20+OyBaaGFuZ3NoYW9rdW4gPHpoYW5nc2hh
b2t1bkBoaXNpbGljb24uY29tPjsNCj4gTGludXhhcm0gPGxpbnV4YXJtQGh1YXdlaS5jb20+OyBs
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcNCj4gU3ViamVjdDogUmU6IFtQQVRD
SCAwLzZdIHBlcmYvaW14X2RkcjogQWRkIG5hbWVzcGFjZSBmb3IgaS5NWDggRERSIFBlcmYNCj4g
DQo+IE9uIDA4LzA0LzIwMjAgMTI6NDEsIEpvYWtpbSBaaGFuZyB3cm90ZToNCj4gPj4gVGhhdCBj
b2RlIHNob3VsZCBiZSBlZmZlY3RpdmVseSB0aGUgc2FtZS4NCj4gPj4NCj4gPj4gV2hhdCBkb2Vz
IHBlcmYgbGlzdCBzaG93IGZvciB0aGUgbWV0cmljcyBub3c/DQo+ID4gcm9vdEBpbXg4bW1ldms6
fiMgLi9wZXJmIGxpc3QgZGRyYw0KPiA+DQo+ID4gTGlzdCBvZiBwcmUtZGVmaW5lZCBldmVudHMg
KHRvIGJlIHVzZWQgaW4gLWUpOg0KPiA+DQo+ID4NCj4gPiBkZHJjOg0KPiA+ICAgIGlteDhfZGRy
LmN5Y2xlcw0KPiA+ICAgICAgICAgW2RkciBjeWNsZXMgZXZlbnQuIFVuaXQ6IGlteDhfZGRyXQ0K
PiA+ICAgIGlteDhfZGRyLnJlYWQNCj4gPiAgICAgICAgIFtkZHIgcmVhZCBldmVudC4gVW5pdDog
aW14OF9kZHJdDQo+ID4gICAgaW14OF9kZHIucmVhZF9jeWNsZXMNCj4gPiAgICAgICAgIFtkZHIg
cmVhZC1jeWNsZXMgZXZlbnQuIFVuaXQ6IGlteDhfZGRyXQ0KPiA+ICAgIGlteDhfZGRyLndyaXRl
DQo+ID4gICAgICAgICBbZGRyIHdyaXRlIGV2ZW50LiBVbml0OiBpbXg4X2Rkcl0NCj4gPiAgICBp
bXg4X2Rkci53cml0ZV9jeWNsZXMNCj4gPiAgICAgICAgIFtkZHIgd3JpdGUtY3ljbGVzIGV2ZW50
LiBVbml0OiBpbXg4X2Rkcl0NCj4gPg0KPiA+IHJvb3RAaW14OG1tZXZrOn4jIC4vcGVyZiBsaXN0
IG1ldHJpYw0KPiA+DQo+ID4gTGlzdCBvZiBwcmUtZGVmaW5lZCBldmVudHMgKHRvIGJlIHVzZWQg
aW4gLWUpOg0KPiA+DQo+ID4NCj4gPiBNZXRyaWNzOg0KPiA+DQo+ID4gICAgaW14OG1tX2Rkcl9y
ZWFkLmFsbA0KPiA+ICAgICAgICAgW2J5dGVzIGFsbCBtYXN0ZXJzIHJlYWQgZnJvbSBkZHIgYmFz
ZWQgb24gcmVhZC1jeWNsZXMgZXZlbnQuDQo+ID4gVW5pdDogaW14OF9kIGRyIF0NCj4gPiAgICBp
bXg4bW1fZGRyX3dyaXRlLmFsbA0KPiA+ICAgICAgICAgW2J5dGVzIGFsbCBtYXN0ZXJzIHdyaXRl
IHRvIGRkciBiYXNlZCBvbiByZWFkLWN5Y2xlcyBldmVudC4NCj4gPiBVbml0OiBpbXg4X2RkIHIg
XQ0KPiA+DQo+ID4gcm9vdEBpbXg4bW1ldms6fiMgLi9wZXJmIHN0YXQgLWEgLUkgMTAwMCAtdiAt
TSBpbXg4bW1fZGRyX3JlYWQuYWxsDQo+ID4gVXNpbmcgQ1BVSUQgMHgwMDAwMDAwMDQxMGZkMDQw
IGFkZGluZyBldmVudCBzeW50YXggZXJyb3I6ICcnDQo+ID4gICAgICAgICAgICAgICAgICAgICAg
ICBcX19fIHBhcnNlciBlcnJvcg0KPiA+DQo+ID4gICBVc2FnZTogcGVyZiBzdGF0IFs8b3B0aW9u
cz5dIFs8Y29tbWFuZD5dDQo+ID4NCj4gPiAgICAgIC1NLCAtLW1ldHJpY3MgPG1ldHJpYy9tZXRy
aWMgZ3JvdXAgbGlzdD4NCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICBtb25pdG9yIHNw
ZWNpZmllZCBtZXRyaWNzIG9yIG1ldHJpYyBncm91cHMNCj4gPiAoc2VwYXJhdGVkIGJ5ICwpDQo+
ID4NCj4gPiBJdCBzZWVtcyB0aGF0IG1ldHJpY2dyb3VwIGZhaWxzIHRvIHBhcnNlIHRoZSBtZXRy
aWMgZXhwcmVzc2lvbi4NCj4gPiBtZXRyaWMuanNvbjoNCj4gPiBbDQo+ID4gICAgIHsNCj4gPiAJ
ICAgICJCcmllZkRlc2NyaXB0aW9uIjogImJ5dGVzIGFsbCBtYXN0ZXJzIHJlYWQgZnJvbSBkZHIg
YmFzZWQgb24NCj4gcmVhZC1jeWNsZXMgZXZlbnQiLA0KPiA+IAkgICAgIk1ldHJpY05hbWUiOiAi
aW14OG1tX2Rkcl9yZWFkLmFsbCIsDQo+ID4gCSAgICAiTWV0cmljRXhwciI6ICJpbXg4X2Rkci5y
ZWFkX2N5Y2xlcyAqIDQgKiA0IiwNCj4gPiAJICAgICJTY2FsZVVuaXQiOiAiOS43NjU2MjVlLTRN
QiIsDQo+ID4gCSAgICAiVW5pdCI6ICJpbXg4X2RkciIsDQo+IA0KPiBJIG5vdGljZWQgdGhhdCBw
cmV2aW91c2x5IHdlIHVzZWQgaW14OCxkZHIsIHdoaWNoIEkgdGhpbmsgd2FzIHdyb25nLCBzbyBj
YW4geW91DQo+IHRyeSB0byByZW1vdmUgdGhpcyBoZXJlPw0KPiANCj4gSWYgdGhhdCBkb2Vzbid0
IHdvcmssIHRoZW4gSSdsbCB0cnkgdGhpcyBteXNlbGYuDQoNCkhpIEpvaG4sDQoNCkl0IHN0aWxs
IGNhbm5vdCB3b3JrIHdpdGggdGhpcyBjb2RlIGNoYW5nZS4NCg0KQmVzdCBSZWdhcmRzLA0KSm9h
a2ltIFpoYW5nDQo+IFRoYW5rcywNCj4gSm9obg0KPiANCj4gPiAJICAgICJDb21wYXQiOiAiaS5t
eDhtbSINCj4gPiAgICAgIH0sDQo+ID4gICAgIHsNCj4gPiAJICAgICJCcmllZkRlc2NyaXB0aW9u
IjogImJ5dGVzIGFsbCBtYXN0ZXJzIHdyaXRlIHRvIGRkciBiYXNlZCBvbg0KPiB3cml0ZS1jeWNs
ZXMgZXZlbnQiLA0KPiA+IAkgICAgIk1ldHJpY05hbWUiOiAiaW14OG1tX2Rkcl93cml0ZS5hbGwi
LA0KPiA+IAkgICAgIk1ldHJpY0V4cHIiOiAiaW14OF9kZHIud3JpdGVfY3ljbGVzICogNCAqIDQi
LA0KPiA+IAkgICAgIlNjYWxlVW5pdCI6ICI5Ljc2NTYyNWUtNE1CIiwNCj4gPiAJICAgICJVbml0
IjogImlteDhfZGRyIiwNCj4gPiAJICAgICJDb21wYXQiOiAiaS5teDhtbSINCj4gPiAgICAgIH0N
Cj4gPiBdDQo+ID4NCj4gPj4+Pj4gcm9vdEBpbXg4bW1ldms6fiMgLi9wZXJmIHN0YXQNCg0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
