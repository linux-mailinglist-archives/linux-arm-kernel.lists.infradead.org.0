Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E761F0D45
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 04:46:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dVJruC6AGNQ2kqujWTNG0sBcAo0RMtnMUyRTdlgxUVw=; b=X9ugdprXDEP/Ql
	002POH8Z8Me2abCN0+e6EqsCKiRe9v7AOcRlkyPZBF86mGA8DsN5Nh4tQYhXYxl/OQbWNqQZmUI+e
	5YGTeXbuoUpnarnFt+SUXPItTsS5CEwC8UBa2DTVtbQBHVJJcBpNJpMABgMO4l1wr9zN+30AVre1/
	BNU67p224vKZJzzBqE/ruXYJgz1PBwI2cUbZvdDX2J8Iyzya9LcfgciAx614rNx+fMM+42oID4p6o
	b12PyAlOrKoj4efORUlCYcNGqS2PJb+OwmxzOXXAfV6wXtSjFfZcj3Rn3uHczXA2mmuzcAYdn8RN4
	X6Uy5uPSQxbhX2gIn5oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSCHC-0003tv-Cd; Wed, 06 Nov 2019 03:46:34 +0000
Received: from mail-eopbgr40040.outbound.protection.outlook.com ([40.107.4.40]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSCH2-0003sM-9u
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 03:46:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cIMbOqOEbdeZaNS6jdABL+6GGOxy7Ru4DmkNqIoRRcNelsO8Ln0GrLlNn49AI5HsIi3AdF9fO3zEwywqE5F4jNAGemJwCHpSfZDF6p3+JEEV1skAalKgSytf/Dsy3Hq/Pv93LUTZ3TWZ/REP5lj3dLC3Lo3SticFV/sp9zeCz/3Kx7jkIgOyUGkNwoqc+wpi4kJqij7xot0WX6LIuTvktBpZupSpLGhuJx/6qEDvSNAvKjFdOd3OffXIbo5/5IRuznX7VxAh9e/RrUavsIlcqMv4+pyr8LWGhk9ZZxWB38IfC4QkFctdGfSrz/dswsaesgYMyR8P4iLTuxsEIiSZHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P68tMLpWq9kFEBhnHN69n57VwGyIoQLcKTrKde2RcyM=;
 b=SqJr9nKR3HUmdnYkFDvSxCFkQzjJYrWuIxGVg32XaAkGpKTQJs9yjzLFBjiAjAsXPOn9y1dJhzhGGtY7J5MIIDuiPvJUVcuy/8OnrgF3eUDc0w8hzt+MlHxQGQE2pgZiX/GsGuP94fXaEdA10Qa3eaMt+aRpLnfzZx/9oXpcPPLtEygVimqr4mJxMnVoSJOAHLosu6W8v00z+MVoaE5Bfwhln9+vO2ZVX6CLGUgOEeXd8hkZkB04dzoCobl6jZLLOmA1gZX/uEqe0XQqUQaCj0cyBX2FYobiqxHv6mrT7WieA5pFaOkZ5Ubv6k5ailVwHYJYOOLwzZKo5+4RyJwODw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P68tMLpWq9kFEBhnHN69n57VwGyIoQLcKTrKde2RcyM=;
 b=SPOZRLbqosgCagKQ2mpteTOF49VMK5soKXPGWJwxrdkUHcK8EaDwiawNIupRi2/frrZjBEfz+NnuhbX4rlemHvkqR00UhQKaCIVdowp6ipnNJoiHB4Cgl+4Hk9fd44NHeUNA+zo1+alPyymILQy+/El26yAdQEvr9ZAbgn3BFL8=
Received: from VI1PR0401MB2237.eurprd04.prod.outlook.com (10.169.132.138) by
 VI1PR0401MB2352.eurprd04.prod.outlook.com (10.169.134.137) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Wed, 6 Nov 2019 03:46:17 +0000
Received: from VI1PR0401MB2237.eurprd04.prod.outlook.com
 ([fe80::2d81:2d60:747c:d0ad]) by VI1PR0401MB2237.eurprd04.prod.outlook.com
 ([fe80::2d81:2d60:747c:d0ad%3]) with mapi id 15.20.2408.024; Wed, 6 Nov 2019
 03:46:17 +0000
From: "M.h. Lian" <minghuan.lian@nxp.com>
To: Xiaowei Bao <xiaowei.bao@nxp.com>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>
Subject: RE: [PATCH v6 3/3] PCI: layerscape: Add LS1028a support
Thread-Topic: [PATCH v6 3/3] PCI: layerscape: Add LS1028a support
Thread-Index: AQHVlFNBk08WsOHby0SolYA/Js4oiKd9gAVQ
Date: Wed, 6 Nov 2019 03:46:17 +0000
Message-ID: <VI1PR0401MB22372AF4F02D3F22EA2184BEE8790@VI1PR0401MB2237.eurprd04.prod.outlook.com>
References: <20190902034319.14026-1-xiaowei.bao@nxp.com>
 <20190902034319.14026-3-xiaowei.bao@nxp.com>
 <20191105123233.GA26960@e121166-lin.cambridge.arm.com>
 <AM5PR04MB32999C59EE51DACC030E13D7F5790@AM5PR04MB3299.eurprd04.prod.outlook.com>
In-Reply-To: <AM5PR04MB32999C59EE51DACC030E13D7F5790@AM5PR04MB3299.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=minghuan.lian@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f99e9545-d31c-455e-4ed0-08d7626be115
x-ms-traffictypediagnostic: VI1PR0401MB2352:|VI1PR0401MB2352:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0401MB23522885BC1D7E465C616B66E8790@VI1PR0401MB2352.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 02135EB356
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(366004)(396003)(39860400002)(376002)(199004)(189003)(13464003)(7736002)(7416002)(486006)(55016002)(6436002)(81156014)(64756008)(11346002)(476003)(26005)(8676002)(6506007)(7696005)(81166006)(76176011)(53546011)(186003)(66946007)(66556008)(8936002)(316002)(102836004)(66476007)(229853002)(110136005)(86362001)(54906003)(3846002)(6116002)(305945005)(66066001)(76116006)(74316002)(66446008)(99286004)(4326008)(71190400001)(14454004)(33656002)(25786009)(52536014)(71200400001)(5660300002)(14444005)(256004)(9686003)(6246003)(2906002)(478600001)(446003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0401MB2352;
 H:VI1PR0401MB2237.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8RlyC+F704Tsa4Un8luDcZeE+6jsRhFfanJHZuTyfP2QMAIP+j5KYNNa/i2//mcK9qDV429BhjOLOQei6qlcHwFQIJS42uvIhI6HWpXdueu8Y6pKIkdkgy84/G+G2y9iOXCqePouPQAJODDzd3HPc8vwv3ni9k31WZVs99t6kI4V6zhAsFkYX7XaIpTJmKvw4UPqPU3MzHAGHjsu/BvFz6YP6/aZn9DAK096vByOeMk+Bry4oGNAL33ac4Wei+8CG0wzuxV1r38nI/dhUMnA1gana7yJTYdDwXafTWHTWcr1ZFSY5XGC3/UN3Ib1E4MRw1FzCCvNn6t5hwuYkIwuY4gRG2zJzaQAIHd+vy9EzKzi/+QAxjnXLVjfs5WqTrVJCKpcFL59g9+4Ncm99oYSM1mI6nZbXZJw2q/j//t2m/1aTE1bxuKgVtUGHN8xyeoU
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f99e9545-d31c-455e-4ed0-08d7626be115
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2019 03:46:17.2967 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hxJVY/IUmlPvq2OO6Evi5oJN5ISICEuEkZeXjX7WTCHwFXHc/InrBMqoZqKNZ1T5SHW1JgUTda3TpeDNkJ77hw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2352
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_194624_350064_C2C0CD13 
X-CRM114-Status: GOOD (  21.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.40 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Roy Zang <roy.zang@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "Z.q. Hou" <zhiqiang.hou@nxp.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTG9yZW56bywNCg0KU29ycnkgZm9yIHRoZSBsYXRlIHJlcGx5Lg0KDQpBY2tlZC1ieTogTWlu
Z2h1YW4gTGlhbiA8bWluZ2h1YW4uTGlhbkBueHAuY29tPg0KDQpUaGFua3MsDQpNaW5naHVhbg0K
DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFhpYW93ZWkgQmFvIDx4aWFv
d2VpLmJhb0BueHAuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIE5vdmVtYmVyIDYsIDIwMTkgMTE6
MzYgQU0NCj4gVG86IExvcmVuem8gUGllcmFsaXNpIDxsb3JlbnpvLnBpZXJhbGlzaUBhcm0uY29t
Pg0KPiBDYzogcm9iaCtkdEBrZXJuZWwub3JnOyBtYXJrLnJ1dGxhbmRAYXJtLmNvbTsgc2hhd25n
dW9Aa2VybmVsLm9yZzsNCj4gTGVvIExpIDxsZW95YW5nLmxpQG54cC5jb20+OyBNLmguIExpYW4g
PG1pbmdodWFuLmxpYW5AbnhwLmNvbT47IE1pbmdrYWkNCj4gSHUgPG1pbmdrYWkuaHVAbnhwLmNv
bT47IFJveSBaYW5nIDxyb3kuemFuZ0BueHAuY29tPjsgbGludXgtDQo+IHBjaUB2Z2VyLmtlcm5l
bC5vcmc7IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnOyBsaW51eC0NCj4ga2VybmVsQHZnZXIu
a2VybmVsLm9yZzsgbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBsaW51eHBw
Yy0NCj4gZGV2QGxpc3RzLm96bGFicy5vcmc7IGJoZWxnYWFzQGdvb2dsZS5jb207IFoucS4gSG91
DQo+IDx6aGlxaWFuZy5ob3VAbnhwLmNvbT4NCj4gU3ViamVjdDogUkU6IFtQQVRDSCB2NiAzLzNd
IFBDSTogbGF5ZXJzY2FwZTogQWRkIExTMTAyOGEgc3VwcG9ydA0KPiANCj4gDQo+IA0KPiA+IC0t
LS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogTG9yZW56byBQaWVyYWxpc2kgPGxv
cmVuem8ucGllcmFsaXNpQGFybS5jb20+DQo+ID4gU2VudDogMjAxOcTqMTHUwjXI1SAyMDozMw0K
PiA+IFRvOiBYaWFvd2VpIEJhbyA8eGlhb3dlaS5iYW9AbnhwLmNvbT4NCj4gPiBDYzogcm9iaCtk
dEBrZXJuZWwub3JnOyBtYXJrLnJ1dGxhbmRAYXJtLmNvbTsgc2hhd25ndW9Aa2VybmVsLm9yZzsN
Cj4gTGVvDQo+ID4gTGkgPGxlb3lhbmcubGlAbnhwLmNvbT47IE0uaC4gTGlhbiA8bWluZ2h1YW4u
bGlhbkBueHAuY29tPjsgTWluZ2thaQ0KPiBIdQ0KPiA+IDxtaW5na2FpLmh1QG54cC5jb20+OyBS
b3kgWmFuZyA8cm95LnphbmdAbnhwLmNvbT47DQo+ID4gbGludXgtcGNpQHZnZXIua2VybmVsLm9y
ZzsgZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7DQo+ID4gbGludXgta2VybmVsQHZnZXIua2Vy
bmVsLm9yZzsgbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOw0KPiA+IGxpbnV4
cHBjLWRldkBsaXN0cy5vemxhYnMub3JnOyBiaGVsZ2Fhc0Bnb29nbGUuY29tOyBaLnEuIEhvdQ0K
PiA+IDx6aGlxaWFuZy5ob3VAbnhwLmNvbT4NCj4gPiBTdWJqZWN0OiBSZTogW1BBVENIIHY2IDMv
M10gUENJOiBsYXllcnNjYXBlOiBBZGQgTFMxMDI4YSBzdXBwb3J0DQo+ID4NCj4gPiBPbiBNb24s
IFNlcCAwMiwgMjAxOSBhdCAxMTo0MzoxOUFNICswODAwLCBYaWFvd2VpIEJhbyB3cm90ZToNCj4g
PiA+IEFkZCBzdXBwb3J0IGZvciB0aGUgTFMxMDI4YSBQQ0llIGNvbnRyb2xsZXIuDQo+ID4gPg0K
PiA+ID4gU2lnbmVkLW9mZi1ieTogWGlhb3dlaSBCYW8gPHhpYW93ZWkuYmFvQG54cC5jb20+DQo+
ID4gPiBTaWduZWQtb2ZmLWJ5OiBIb3UgWmhpcWlhbmcgPFpoaXFpYW5nLkhvdUBueHAuY29tPg0K
PiA+ID4gLS0tDQo+ID4gPiB2MjoNCj4gPiA+ICAtIE5vIGNoYW5nZS4NCj4gPiA+IHYzOg0KPiA+
ID4gIC0gUmV1c2UgdGhlIGxzMjA4OCBkcml2ZXIgZGF0YSBzdHJ1Y3R1cnQuDQo+ID4gPiB2NDoN
Cj4gPiA+ICAtIE5vIGNoYW5nZS4NCj4gPiA+IHY1Og0KPiA+ID4gIC0gTm8gY2hhbmdlLg0KPiA+
ID4gdjY6DQo+ID4gPiAgLSBObyBjaGFuZ2UuDQo+ID4gPg0KPiA+ID4gIGRyaXZlcnMvcGNpL2Nv
bnRyb2xsZXIvZHdjL3BjaS1sYXllcnNjYXBlLmMgfCAxICsNCj4gPiA+ICAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKykNCj4gPg0KPiA+IEkgaGF2ZSBub3Qgc2VlbiBhbnkgY29tbWVudCBv
biBhbnkgbGF5ZXJzY2FwZSBkcml2ZXIgcGF0Y2hlcyBjb21pbmcNCj4gPiBmcm9tIHRoZSBtYWlu
dGFpbmVycyBhcyBsaXN0ZWQgaW4gdGhlIE1BSU5UQUlORVJTIGZpbGUgKGFuZCBDQ2VkIGluIHRo
aXMNCj4gc2VyaWVzKS4NCj4gPg0KPiA+IEkgcmVxdWVzdCBtYWludGFpbmVycyBBQ0sgb24gdGhl
c2UgcGF0Y2hlcyBhbmQgSSBleHBlY3QgdGhlbSB0byBzdGFydA0KPiA+IHJldmlld2luZyB5b3Vy
IGNvZGUgaWYgdGhleSB3YW50IHRvIGJlIHN0aWxsIGNvbnNpZGVyZWQgbWFpbnRhaW5lcnMNCj4g
PiBmb3IgdGhpcyBkcml2ZXIuDQo+ID4NCj4gPiBUaGUgY2hhbmdlcyBsb29rIE9LIG1pbnVzIFNo
YXduJ3MgcmVtYXJrIG9uIGNvbXBhdGlibGUgc3RyaW5nIHRoYXQgd2FzDQo+ID4gaWdub3JlZC4N
Cj4gDQo+IEhpIExvcmVuem8sDQo+IA0KPiBUaGFua3MgZm9yIHlvdXIgY29tbWVudHMuDQo+IA0K
PiBJbiBmYWN0LCB0aGUgcGF0Y2hlcyBoYXZlIHJldmlld2VkIGluIG91ciBpbnRlcm5hbCBtYWls
IGxpc3QsIGFmdGVyIHRoZSByZXZpZXcgYnkNCj4gTWluZ2h1YW4gYW5kIE1pbmdrYWksIEkgd2ls
bCBzZW5kIHRoZXNlIHBhdGNoZXMgdG8gb3BlbnNvdXJjZSwgdGhleSB3aWxsDQo+IGdpdmUgdGhl
IEFDSyB3aGVuIHRoZXNlIHBhdGNoZXMgc2VlbXMgaXMgT0sgYW5kIG5vIGNvbW1lbnRzIG9uIHRo
aXMuDQo+IA0KPiBUaGFua3MNCj4gWGlhb3dlaQ0KPiANCj4gPg0KPiA+IFRoYW5rcywNCj4gPiBM
b3JlbnpvDQo+ID4NCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3
Yy9wY2ktbGF5ZXJzY2FwZS5jDQo+ID4gPiBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3Bj
aS1sYXllcnNjYXBlLmMNCj4gPiA+IGluZGV4IDNhNWZhMjYuLmYyNGY3OWEgMTAwNjQ0DQo+ID4g
PiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ktbGF5ZXJzY2FwZS5jDQo+ID4g
PiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ktbGF5ZXJzY2FwZS5jDQo+ID4g
PiBAQCAtMjYzLDYgKzI2Myw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgbHNfcGNpZV9kcnZkYXRh
DQo+ID4gPiBsczIwODhfZHJ2ZGF0YSA9IHsgIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNl
X2lkIGxzX3BjaWVfb2ZfbWF0Y2hbXSA9IHsNCj4gPiA+ICAJeyAuY29tcGF0aWJsZSA9ICJmc2ws
bHMxMDEyYS1wY2llIiwgLmRhdGEgPSAmbHMxMDQ2X2RydmRhdGEgfSwNCj4gPiA+ICAJeyAuY29t
cGF0aWJsZSA9ICJmc2wsbHMxMDIxYS1wY2llIiwgLmRhdGEgPSAmbHMxMDIxX2RydmRhdGEgfSwN
Cj4gPiA+ICsJeyAuY29tcGF0aWJsZSA9ICJmc2wsbHMxMDI4YS1wY2llIiwgLmRhdGEgPSAmbHMy
MDg4X2RydmRhdGEgfSwNCj4gPiA+ICAJeyAuY29tcGF0aWJsZSA9ICJmc2wsbHMxMDQzYS1wY2ll
IiwgLmRhdGEgPSAmbHMxMDQzX2RydmRhdGEgfSwNCj4gPiA+ICAJeyAuY29tcGF0aWJsZSA9ICJm
c2wsbHMxMDQ2YS1wY2llIiwgLmRhdGEgPSAmbHMxMDQ2X2RydmRhdGEgfSwNCj4gPiA+ICAJeyAu
Y29tcGF0aWJsZSA9ICJmc2wsbHMyMDgwYS1wY2llIiwgLmRhdGEgPSAmbHMyMDgwX2RydmRhdGEg
fSwNCj4gPiA+IC0tDQo+ID4gPiAyLjkuNQ0KPiA+ID4NCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
