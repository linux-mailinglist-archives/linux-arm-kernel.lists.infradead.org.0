Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86317A4DED
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 05:55:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t7F0G7latFwVbJY8/r/BtL5Ccd5OURHMXxsghjjzWBE=; b=Y7dpzMU0Ea5hfJ
	0Taxc/M1WGe1KN/q9+XqVV+AdBGvwm+0QiIOac46ULE4amS8JdE0J54d2FhKm4Lz+km7z5GkejDsm
	d/OZBc2ASmHQaTYPpOGNJE3nx4gcYRpPsktqq9CmkiSh7sQTBDHvbD+uVox+PkWZTOrNSC/uYfpyW
	/81M6f7HovlV693ADNlcnRTdxrSrHfXLI2TRtjTokFEr49+MMT6KhL5X85l33V1J23WWrptHmHIOe
	bKfkW+R9VrIr9oRK3pvCN7RYQFnS+tQ4lkRhy8QEccvlkW8PCENc5+PIrHLAPj0RWy1t2Ox5BwwGz
	DKr9euVkhTgXFIT0DX4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4dQd-0007KD-J1; Mon, 02 Sep 2019 03:54:55 +0000
Received: from mail-eopbgr10051.outbound.protection.outlook.com ([40.107.1.51]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4dQO-0007Jh-W0
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 03:54:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hl1jol+d4SOwBJXfcq8OtIUKT5IAT9UcitaQONmC0OeV+7BC9tKtm2X4dUal7aeOKtVA9m6i+AQ25i++xFQgUFoTuNHwbnNgWcVFI4xWAULPT5OE6fry+jGj7Nn7eBOV4X1PoFAE34MzDri4Hv6OtNZPF8aBgP08fHv5CWapkpi7GJvdu7pJInorfVS5ASH8i7RDtlJDqDDUODjE+h4pDAZtv0DDuNj1JCrNz54s7E0NiMan7acpxQiazJTmH/NcQRJdN92B9WPdMnlZRmJ7lGD8acU0oXoFTzs5fpGhkq+7udH/U+p9YZZYdmEEtC6wl7BWyLHzvAQqJCwhEhUyuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3TP2baoRGJBWIrmFEUHljwUNvzkI0q6sqfFrIY+Qj3U=;
 b=ch1evoQ0/2dFrHuiu7Z3bjzwhftrKchK63xf6XNb+Gkf852c96cy7LZ1/4gzLmN6XGSo6429+btWB93LNWftsGoUqEweu1E7JuWGU7Bupnypv3b75aNxe2+myVQoBDZgiXqGBMl19/ZXTOzn8BKuYIIgKvnZjaS6vgk5gvth4qAxaGNb2qj566kD+5DmEFO51O777ynqpIVTs0u8JoHbaAH/2FGSBzYC2L9GMwQRe0VX3aFo0VYFSYLQhBQeueDt5zKbElwO5xZmrEOKlPEh1VQmwRgXXuTKfJfoLF66hrzPMpCxBDIHon3hez2agC+F6WzP1smAAgha1iHKZWKG0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3TP2baoRGJBWIrmFEUHljwUNvzkI0q6sqfFrIY+Qj3U=;
 b=EGPYsbDUWCU1MJvnCXZ0dlYhj3iIqUjsKIzuE0xITkBfJIA7F+6xHdtOj7uhCxSNzUrfIcieRExl8r2zASWjhM4mVaLj6xuKtvbHwoNhHpS/80ef11UYrQgMiL6mk9eohM+60JbL1wXXkkUQsUDdBtNnXz0VcYzuM3io32aEtW4=
Received: from AM5PR04MB3299.eurprd04.prod.outlook.com (10.173.255.158) by
 AM5PR04MB3235.eurprd04.prod.outlook.com (10.173.255.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Mon, 2 Sep 2019 03:54:37 +0000
Received: from AM5PR04MB3299.eurprd04.prod.outlook.com
 ([fe80::5dd3:ddc9:411a:db41]) by AM5PR04MB3299.eurprd04.prod.outlook.com
 ([fe80::5dd3:ddc9:411a:db41%3]) with mapi id 15.20.2220.022; Mon, 2 Sep 2019
 03:54:37 +0000
From: Xiaowei Bao <xiaowei.bao@nxp.com>
To: "Z.q. Hou" <zhiqiang.hou@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Leo Li <leoyang.li@nxp.com>,
 "kishon@ti.com" <kishon@ti.com>, "lorenzo.pieralisi@arm.com"
 <lorenzo.pieralisi@arm.com>, "M.h. Lian" <minghuan.lian@nxp.com>, Mingkai Hu
 <mingkai.hu@nxp.com>, Roy Zang <roy.zang@nxp.com>, "jingoohan1@gmail.com"
 <jingoohan1@gmail.com>, "gustavo.pimentel@synopsys.com"
 <gustavo.pimentel@synopsys.com>, "linux-pci@vger.kernel.org"
 <linux-pci@vger.kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linuxppc-dev@lists.ozlabs.org"
 <linuxppc-dev@lists.ozlabs.org>
Subject: RE: [PATCH v3 00/11] *** SUBJECT HERE ***
Thread-Topic: [PATCH v3 00/11] *** SUBJECT HERE ***
Thread-Index: AQHVYT5e3m8V0WdTG0yzSTm0zJ92xKcXwTAAgAAAejA=
Date: Mon, 2 Sep 2019 03:54:37 +0000
Message-ID: <AM5PR04MB3299774FBEAEE66B82B44DFCF5BE0@AM5PR04MB3299.eurprd04.prod.outlook.com>
References: <20190902031716.43195-1-xiaowei.bao@nxp.com>
 <DB8PR04MB6747A1DAD5A83F686C987C6A84BE0@DB8PR04MB6747.eurprd04.prod.outlook.com>
In-Reply-To: <DB8PR04MB6747A1DAD5A83F686C987C6A84BE0@DB8PR04MB6747.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xiaowei.bao@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5a6d34b7-18af-4754-d880-08d72f594637
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM5PR04MB3235; 
x-ms-traffictypediagnostic: AM5PR04MB3235:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM5PR04MB323585AF04C0B0AA42CE00A4F5BE0@AM5PR04MB3235.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 01480965DA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(396003)(136003)(39860400002)(346002)(13464003)(199004)(189003)(316002)(66556008)(66476007)(4326008)(6116002)(3846002)(33656002)(66946007)(26005)(478600001)(76176011)(76116006)(99286004)(7696005)(102836004)(6436002)(53546011)(6506007)(11346002)(256004)(446003)(8936002)(64756008)(66446008)(44832011)(486006)(53936002)(25786009)(2906002)(229853002)(9686003)(86362001)(6246003)(7736002)(71190400001)(71200400001)(55016002)(305945005)(110136005)(54906003)(2201001)(5660300002)(52536014)(66066001)(186003)(8676002)(476003)(81156014)(14454004)(74316002)(81166006)(2501003)(7416002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR04MB3235;
 H:AM5PR04MB3299.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 7A7uhOlBcp4mqsEWWy95KiqBh6JZ6Kylgm60l/y8pt1m6TTV5WKqiodvlii8+wI2slUOd0jdEpmzS0Y/k4YYDjKOSfAfruRb2ANK9qxZzvXFu8LBwbZMt9/NxVGkPWn26IJRCCqacJMMd3uJNxmIYU3b/8EcUPe1XULUYIKtTrg2Cclq9VRQql0lpQSSXeROKbQ/olvDKVTSC0777dWfN+QkHxra4PNLOUS6SSacVptcfPpXzaF6KEr3YXD5u0DN4pjf9OV7WxusjGODI9mJYtl4IRiVSwzP6UG4yz6pAJYxaeyh8kf9mHAV3KwvwighUtNAchqoLE7SvIUJGDCAE/J6k4b7PyMTOz3GHa/7RdDIYELjelvpolnFKDaofyHg+fA7E8NpmAf2Yz1Co77wutcJBaXjOMFzQqmlmSwSPto=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a6d34b7-18af-4754-d880-08d72f594637
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2019 03:54:37.1525 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wjISHJIzLmLIxOijcGPjqfO22G0Bsh7aJ+qvj2P9IOhJfmwjfIdGwkt8vDnxsZV4UR2M+DMuifWtyJG+h5vuWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR04MB3235
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_205441_029136_DA7D260B 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.51 listed in list.dnswl.org]
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
Cc: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "arnd@arndb.de" <arnd@arndb.de>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogWi5xLiBIb3UNCj4gU2Vu
dDogMjAxOcTqOdTCMsjVIDExOjUyDQo+IFRvOiBYaWFvd2VpIEJhbyA8eGlhb3dlaS5iYW9Abnhw
LmNvbT47IHJvYmgrZHRAa2VybmVsLm9yZzsNCj4gbWFyay5ydXRsYW5kQGFybS5jb207IHNoYXdu
Z3VvQGtlcm5lbC5vcmc7IExlbyBMaQ0KPiA8bGVveWFuZy5saUBueHAuY29tPjsga2lzaG9uQHRp
LmNvbTsgbG9yZW56by5waWVyYWxpc2lAYXJtLmNvbTsgTS5oLiBMaWFuDQo+IDxtaW5naHVhbi5s
aWFuQG54cC5jb20+OyBNaW5na2FpIEh1IDxtaW5na2FpLmh1QG54cC5jb20+OyBSb3kgWmFuZw0K
PiA8cm95LnphbmdAbnhwLmNvbT47IGppbmdvb2hhbjFAZ21haWwuY29tOw0KPiBndXN0YXZvLnBp
bWVudGVsQHN5bm9wc3lzLmNvbTsgbGludXgtcGNpQHZnZXIua2VybmVsLm9yZzsNCj4gZGV2aWNl
dHJlZUB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7DQo+IGxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsgbGludXhwcGMtZGV2QGxpc3RzLm96
bGFicy5vcmcNCj4gQ2M6IGFybmRAYXJuZGIuZGU7IGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3Jn
OyBYaWFvd2VpIEJhbw0KPiA8eGlhb3dlaS5iYW9AbnhwLmNvbT4NCj4gU3ViamVjdDogUkU6IFtQ
QVRDSCB2MyAwMC8xMV0gKioqIFNVQkpFQ1QgSEVSRSAqKioNCj4gDQo+IFhpYW93ZWksDQo+IA0K
PiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogWGlhb3dlaSBCYW8gPHhp
YW93ZWkuYmFvQG54cC5jb20+DQo+ID4gU2VudDogMjAxOcTqOdTCMsjVIDExOjE3DQo+ID4gVG86
IHJvYmgrZHRAa2VybmVsLm9yZzsgbWFyay5ydXRsYW5kQGFybS5jb207IHNoYXduZ3VvQGtlcm5l
bC5vcmc7DQo+IExlbw0KPiA+IExpIDxsZW95YW5nLmxpQG54cC5jb20+OyBraXNob25AdGkuY29t
OyBsb3JlbnpvLnBpZXJhbGlzaUBhcm0uY29tOw0KPiA+IE0uaC4gTGlhbiA8bWluZ2h1YW4ubGlh
bkBueHAuY29tPjsgTWluZ2thaSBIdSA8bWluZ2thaS5odUBueHAuY29tPjsNCj4gPiBSb3kgWmFu
ZyA8cm95LnphbmdAbnhwLmNvbT47IGppbmdvb2hhbjFAZ21haWwuY29tOw0KPiA+IGd1c3Rhdm8u
cGltZW50ZWxAc3lub3BzeXMuY29tOyBsaW51eC1wY2lAdmdlci5rZXJuZWwub3JnOw0KPiA+IGRl
dmljZXRyZWVAdmdlci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOw0K
PiA+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsgbGludXhwcGMtZGV2QGxp
c3RzLm96bGFicy5vcmcNCj4gPiBDYzogYXJuZEBhcm5kYi5kZTsgZ3JlZ2toQGxpbnV4Zm91bmRh
dGlvbi5vcmc7IFoucS4gSG91DQo+ID4gPHpoaXFpYW5nLmhvdUBueHAuY29tPjsgWGlhb3dlaSBC
YW8gPHhpYW93ZWkuYmFvQG54cC5jb20+DQo+ID4gU3ViamVjdDogW1BBVENIIHYzIDAwLzExXSAq
KiogU1VCSkVDVCBIRVJFICoqKg0KPiA+DQo+ID4gKioqIEJMVVJCIEhFUkUgKioqDQo+IA0KPiBB
ZGQgc3ViamVjdCBhbmQgYmx1cmIgZm9yIHRoaXMgc2VyaWVzLg0KDQpPSywgdGhhbmtzLg0KDQoN
Cj4gDQo+IFRoYW5rcywNCj4gWmhpcWlhbmcNCj4gDQo+ID4NCj4gPiBYaWFvd2VpIEJhbyAoMTEp
Og0KPiA+ICAgUENJOiBkZXNpZ253YXJlLWVwOiBBZGQgbXVsdGlwbGUgUEZzIHN1cHBvcnQgZm9y
IERXQw0KPiA+ICAgUENJOiBkZXNpZ253YXJlLWVwOiBBZGQgdGhlIGRvb3JiZWxsIG1vZGUgb2Yg
TVNJLVggaW4gRVAgbW9kZQ0KPiA+ICAgUENJOiBkZXNpZ253YXJlLWVwOiBNb3ZlIHRoZSBmdW5j
dGlvbiBvZiBnZXR0aW5nIE1TSSBjYXBhYmlsaXR5DQo+ID4gICAgIGZvcndhcmQNCj4gPiAgIFBD
STogZGVzaWdud2FyZS1lcDogTW9kaWZ5IE1TSSBhbmQgTVNJWCBDQVAgd2F5IG9mIGZpbmRpbmcN
Cj4gPiAgIGR0LWJpbmRpbmdzOiBwY2k6IGxheWVyc2NhcGUtcGNpOiBhZGQgY29tcGF0aWJsZSBz
dHJpbmdzIGZvciBsczEwODhhDQo+ID4gICAgIGFuZCBsczIwODhhDQo+ID4gICBQQ0k6IGxheWVy
c2NhcGU6IEZpeCBzb21lIGZvcm1hdCBpc3N1ZSBvZiB0aGUgY29kZQ0KPiA+ICAgUENJOiBsYXll
cnNjYXBlOiBNb2RpZnkgdGhlIHdheSBvZiBnZXR0aW5nIGNhcGFiaWxpdHkgd2l0aCBkaWZmZXJl
bnQNCj4gPiAgICAgUEVYDQo+ID4gICBQQ0k6IGxheWVyc2NhcGU6IE1vZGlmeSB0aGUgTVNJWCB0
byB0aGUgZG9vcmJlbGwgbW9kZQ0KPiA+ICAgUENJOiBsYXllcnNjYXBlOiBBZGQgRVAgbW9kZSBz
dXBwb3J0IGZvciBsczEwODhhIGFuZCBsczIwODhhDQo+ID4gICBhcm02NDogZHRzOiBsYXllcnNj
YXBlOiBBZGQgUENJZSBFUCBub2RlIGZvciBsczEwODhhDQo+ID4gICBtaXNjOiBwY2lfZW5kcG9p
bnRfdGVzdDogQWRkIExTMTA4OGEgaW4gcGNpX2RldmljZV9pZCB0YWJsZQ0KPiA+DQo+ID4gIC4u
Li9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9sYXllcnNjYXBlLXBjaS50eHQgICAgIHwgICA0ICst
DQo+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwODhhLmR0c2kgICAg
IHwgIDMxICsrKw0KPiA+ICBkcml2ZXJzL21pc2MvcGNpX2VuZHBvaW50X3Rlc3QuYyAgICAgICAg
ICAgICAgICAgICB8ICAgMSArDQo+ID4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaS1s
YXllcnNjYXBlLWVwLmMgICAgIHwgMTAwICsrKysrKy0tDQo+ID4gIGRyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvZHdjL3BjaWUtZGVzaWdud2FyZS1lcC5jICAgIHwgMjU1DQo+ID4gKysrKysrKysrKysr
KysrKystLS0tDQo+ID4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZGVzaWdud2Fy
ZS5jICAgICAgIHwgIDU5ICsrKy0tDQo+ID4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3Bj
aWUtZGVzaWdud2FyZS5oICAgICAgIHwgIDQ4ICsrKy0NCj4gPiAgNyBmaWxlcyBjaGFuZ2VkLCA0
MDQgaW5zZXJ0aW9ucygrKSwgOTQgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiAtLQ0KPiA+IDIuOS41
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
