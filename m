Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F0E9F8B7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 05:26:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OI5hLJPdqu7s81ItnHcqquqEZPVm6jGCgNnWOWdMc/0=; b=LDLaWl1roxvhI4
	x4WkFK5jPGECwzFR24JgGuC1EtjTCa3fQp5MWzHxmdPhQKqxZwuQsVOQGJsdq8awCFW70bq34+pAp
	NYo26gZMUY+GLjScdPdFj4Utp/xlFWxlrTwis844y05q3lroAHevxbMZBfwWxDzB1p34/B4OIiMtt
	+62tYSL5W5frOT6HQVp3PMqVJa4stdzD4NKedMKzFCZeMyfNXzX7fTs7R8JyO2+IPaSRIWW+5DVNd
	vMJgSgQVvdaGu6Pd7RJQM5AgjzJDTTJbQ+VVlqpzNIqloqV5hsGsdasqqD7yVsAPppU6dchlDAkYI
	igBevxBBifG13WTkVn+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2oav-0004Wn-HU; Wed, 28 Aug 2019 03:26:01 +0000
Received: from mail-eopbgr20089.outbound.protection.outlook.com ([40.107.2.89]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2oai-0004WJ-3a
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 03:25:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i4a39WDAskZiejgxvqAIt7Qah49dQ2cibDX8wPOFCRlVtg6FAi71ib2jQtj+UgMo+7FB1EeLFeXNqGD6npMOKBAYSUybbESkwjVR2TOKtp4Zu6g61blUTjUiApFBBFtg1VN40GX5lGf224L37Tz/HVS7PMN4ZB4AJR+sj2FR4zXHHjrO51dVOBJ2blmnCu+IWTqz46upf5LoIWBKOzIa58u4rs8Ez0yfZYFRVjLX2AEJc3eytKdUdwL0xUpRjbKEKXQOt6l1tMriLdjt474mURfgJ5+wqr4V6yNRmcxnMNtRpz+i2tmE8VyI2CuLc6Ed4IwnkUTPISZRtJQo1BwW8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QiZNEGzw2VNAbOUl9qQ4LAv2lDG5tN6NcdBIz9c/VOU=;
 b=cvnH8h+9yd/T0DRuauUdLakLzPjEc8IZ8nCCbb1/HcdsmXcd51tq1CR+fWdewysJZeVeZOQ8XQ0L2mO5iZGrMteyVmoaLJMRYf4XI3w2w3g74wuIrDLMWXF18RJy20wab7aL2jInK8vxc88CCW/hxhhM2nzC7OBFQkQkt33rdWfWVLB2seS6MYMrttP2LNgjrdrC7lSLuan2JPV2m9uRYrEoxnm0snRF+/JpeBwIrtYrSXehzrmvaD9bKv0Rg/waqn7umsEbOLcyXEQSqHZwm9CgWkXkKikxtnzLoxWi+BUbyu50vWDGx8tKK10+RTewpQzfMndQJYAbg7FVR2CU4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QiZNEGzw2VNAbOUl9qQ4LAv2lDG5tN6NcdBIz9c/VOU=;
 b=k/bxQFIU4cW78lVJFi/qkKpiVubYmmrI5z2fBS/xqoD+ehVstJo9mT4dhqtYwe2cqbq0CeAcjM9L2BUXKTEYaaSicQSh7kFxlDzZz5bt0AX0HUZT/I2b163uMmab/J6QlADs2OZaNCndRfh4opSvVFjYWWIUXaR3S0XUMZ1OxN0=
Received: from VI1PR04MB3310.eurprd04.prod.outlook.com (10.170.231.148) by
 VI1PR04MB6781.eurprd04.prod.outlook.com (10.255.196.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.20; Wed, 28 Aug 2019 03:25:44 +0000
Received: from VI1PR04MB3310.eurprd04.prod.outlook.com
 ([fe80::cc5f:fa01:329d:7179]) by VI1PR04MB3310.eurprd04.prod.outlook.com
 ([fe80::cc5f:fa01:329d:7179%7]) with mapi id 15.20.2199.021; Wed, 28 Aug 2019
 03:25:44 +0000
From: Xiaowei Bao <xiaowei.bao@nxp.com>
To: Andrew Murray <andrew.murray@arm.com>
Subject: RE: [PATCH v2 08/10] PCI: layerscape: Add EP mode support for ls1088a
 and ls2088a
Thread-Topic: [PATCH v2 08/10] PCI: layerscape: Add EP mode support for
 ls1088a and ls2088a
Thread-Index: AQHVWN1gKEkcDc/BT0q+LkXHF2Gt76cIzC+AgACiVVCAAG7HgIABVMJQgAPpNYCAANM7oA==
Date: Wed, 28 Aug 2019 03:25:43 +0000
Message-ID: <VI1PR04MB3310B025388E76FE3AC6A128F5A30@VI1PR04MB3310.eurprd04.prod.outlook.com>
References: <20190822112242.16309-1-xiaowei.bao@nxp.com>
 <20190822112242.16309-8-xiaowei.bao@nxp.com>
 <20190823142756.GI14582@e119886-lin.cambridge.arm.com>
 <AM5PR04MB32990473D4AD65354B5B2235F5A70@AM5PR04MB3299.eurprd04.prod.outlook.com>
 <89c90732-5e42-f87e-73b1-8d615355afc4@c-s.fr>
 <AM5PR04MB3299EBADE7BC04C3465B7DB7F5A60@AM5PR04MB3299.eurprd04.prod.outlook.com>
 <20190827144830.GN14582@e119886-lin.cambridge.arm.com>
In-Reply-To: <20190827144830.GN14582@e119886-lin.cambridge.arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xiaowei.bao@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fe4df871-2286-44ff-e94f-08d72b67690d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB6781; 
x-ms-traffictypediagnostic: VI1PR04MB6781:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB678181646FBD590B9823CCC7F5A30@VI1PR04MB6781.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 014304E855
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(39860400002)(396003)(366004)(346002)(13464003)(199004)(189003)(40764003)(7416002)(6506007)(316002)(6306002)(76176011)(54906003)(86362001)(7696005)(14454004)(44832011)(25786009)(4326008)(53936002)(6916009)(3846002)(99286004)(71190400001)(64756008)(66476007)(6116002)(66946007)(66556008)(76116006)(66446008)(186003)(52536014)(478600001)(6246003)(71200400001)(55016002)(2906002)(305945005)(30864003)(6436002)(33656002)(102836004)(26005)(476003)(966005)(53546011)(66574012)(81166006)(11346002)(14444005)(256004)(7736002)(8676002)(5660300002)(81156014)(74316002)(66066001)(9686003)(229853002)(486006)(446003)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6781;
 H:VI1PR04MB3310.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: f4U4WPEK8j/D53zmvYvT3yIlDHVLuGQEMLDf8ngovdUFIVceiwX/enR3Y6LN575OhwI3eqxp071W1hwO0+B3oQ6AOz7hxhhGBTcZqW8Wnrtp2lfQoojNoYdrhbo8mKGAtc+sdWty/j37lLmtZSV1swXajPk7Y6P8ndBpjPKLOxYqnkOARhAF0en63tbnOs9H18coNNews+t0v7tn9cPDsHHq0Wdx7ohngHMt7ebhlb4i3B0iA6SaiBgYxVht3qxV1Y9zMcbmSqH+aE9MS3D168Ghb6UYTUXBxhFHXanUpnrdtUy0slXEut0JtnGQnZgN06ALt6SHvX1nbSk3nctBSeQuLj1xc+sFjUoU5r75U2Qp1iuy1879QdLr5mR9onXI7NXKvuaU79JjobfvFF+kZ7RyPcPXVI3pPcOGDiX4Ps0=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe4df871-2286-44ff-e94f-08d72b67690d
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2019 03:25:43.7331 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ast/LoCVVMWIZPfmZB1tel4iXBY7ymz0l5DrHNqQ7Yocyvhjy8oHglSNvF9GYlaGLmgqmYiVVGY8zK3JK4KQyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6781
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_202548_316697_362D1EA8 
X-CRM114-Status: GOOD (  26.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.89 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: christophe leroy <christophe.leroy@c-s.fr>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "lorenzo.pieralisi@arm.co" <lorenzo.pieralisi@arm.co>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 Leo Li <leoyang.li@nxp.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kishon@ti.com" <kishon@ti.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Roy Zang <roy.zang@nxp.com>, "jingoohan1@gmail.com" <jingoohan1@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "gustavo.pimentel@synopsys.com" <gustavo.pimentel@synopsys.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 Mingkai Hu <mingkai.hu@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQW5kcmV3IE11cnJheSA8
YW5kcmV3Lm11cnJheUBhcm0uY29tPg0KPiBTZW50OiAyMDE55bm0OOaciDI35pelIDIyOjQ5DQo+
IFRvOiBYaWFvd2VpIEJhbyA8eGlhb3dlaS5iYW9AbnhwLmNvbT4NCj4gQ2M6IGNocmlzdG9waGUg
bGVyb3kgPGNocmlzdG9waGUubGVyb3lAYy1zLmZyPjsgbWFyay5ydXRsYW5kQGFybS5jb207IFJv
eQ0KPiBaYW5nIDxyb3kuemFuZ0BueHAuY29tPjsgbG9yZW56by5waWVyYWxpc2lAYXJtLmNvOyBh
cm5kQGFybmRiLmRlOw0KPiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgZ3JlZ2toQGxpbnV4
Zm91bmRhdGlvbi5vcmc7DQo+IGxpbnV4cHBjLWRldkBsaXN0cy5vemxhYnMub3JnOyBsaW51eC1w
Y2lAdmdlci5rZXJuZWwub3JnOw0KPiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBraXNo
b25AdGkuY29tOyBNLmguIExpYW4NCj4gPG1pbmdodWFuLmxpYW5AbnhwLmNvbT47IHJvYmgrZHRA
a2VybmVsLm9yZzsNCj4gZ3VzdGF2by5waW1lbnRlbEBzeW5vcHN5cy5jb207IGppbmdvb2hhbjFA
Z21haWwuY29tOw0KPiBiaGVsZ2Fhc0Bnb29nbGUuY29tOyBMZW8gTGkgPGxlb3lhbmcubGlAbnhw
LmNvbT47IHNoYXduZ3VvQGtlcm5lbC5vcmc7DQo+IE1pbmdrYWkgSHUgPG1pbmdrYWkuaHVAbnhw
LmNvbT47IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZw0KPiBTdWJqZWN0OiBS
ZTogW1BBVENIIHYyIDA4LzEwXSBQQ0k6IGxheWVyc2NhcGU6IEFkZCBFUCBtb2RlIHN1cHBvcnQg
Zm9yDQo+IGxzMTA4OGEgYW5kIGxzMjA4OGENCj4gDQo+IE9uIFN1biwgQXVnIDI1LCAyMDE5IGF0
IDAzOjA3OjMyQU0gKzAwMDAsIFhpYW93ZWkgQmFvIHdyb3RlOg0KPiA+DQo+ID4NCj4gPiA+IC0t
LS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gPiBGcm9tOiBjaHJpc3RvcGhlIGxlcm95IDxj
aHJpc3RvcGhlLmxlcm95QGMtcy5mcj4NCj4gPiA+IFNlbnQ6IDIwMTnlubQ45pyIMjTml6UgMTQ6
NDUNCj4gPiA+IFRvOiBYaWFvd2VpIEJhbyA8eGlhb3dlaS5iYW9AbnhwLmNvbT47IEFuZHJldyBN
dXJyYXkNCj4gPiA+IDxhbmRyZXcubXVycmF5QGFybS5jb20+DQo+ID4gPiBDYzogbWFyay5ydXRs
YW5kQGFybS5jb207IFJveSBaYW5nIDxyb3kuemFuZ0BueHAuY29tPjsNCj4gPiA+IGxvcmVuem8u
cGllcmFsaXNpQGFybS5jbzsgYXJuZEBhcm5kYi5kZTsgZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5v
cmc7DQo+ID4gPiBncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZzsgbGludXhwcGMtZGV2QGxpc3Rz
Lm96bGFicy5vcmc7DQo+ID4gPiBsaW51eC1wY2lAdmdlci5rZXJuZWwub3JnOyBsaW51eC1rZXJu
ZWxAdmdlci5rZXJuZWwub3JnOyBraXNob25AdGkuY29tOw0KPiBNLmguDQo+ID4gPiBMaWFuIDxt
aW5naHVhbi5saWFuQG54cC5jb20+OyByb2JoK2R0QGtlcm5lbC5vcmc7DQo+ID4gPiBndXN0YXZv
LnBpbWVudGVsQHN5bm9wc3lzLmNvbTsgamluZ29vaGFuMUBnbWFpbC5jb207DQo+ID4gPiBiaGVs
Z2Fhc0Bnb29nbGUuY29tOyBMZW8gTGkgPGxlb3lhbmcubGlAbnhwLmNvbT47DQo+ID4gPiBzaGF3
bmd1b0BrZXJuZWwub3JnOyBNaW5na2FpIEh1IDxtaW5na2FpLmh1QG54cC5jb20+Ow0KPiA+ID4g
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnDQo+ID4gPiBTdWJqZWN0OiBSZTog
W1BBVENIIHYyIDA4LzEwXSBQQ0k6IGxheWVyc2NhcGU6IEFkZCBFUCBtb2RlIHN1cHBvcnQNCj4g
PiA+IGZvciBsczEwODhhIGFuZCBsczIwODhhDQo+ID4gPg0KPiA+ID4NCj4gPiA+DQo+ID4gPiBM
ZSAyNC8wOC8yMDE5IMOgIDAyOjE4LCBYaWFvd2VpIEJhbyBhIMOpY3JpdMKgOg0KPiA+ID4gPg0K
PiA+ID4gPg0KPiA+ID4gPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+ID4+IEZy
b206IEFuZHJldyBNdXJyYXkgPGFuZHJldy5tdXJyYXlAYXJtLmNvbT4NCj4gPiA+ID4+IFNlbnQ6
IDIwMTnlubQ45pyIMjPml6UgMjI6MjgNCj4gPiA+ID4+IFRvOiBYaWFvd2VpIEJhbyA8eGlhb3dl
aS5iYW9AbnhwLmNvbT4NCj4gPiA+ID4+IENjOiBiaGVsZ2Fhc0Bnb29nbGUuY29tOyByb2JoK2R0
QGtlcm5lbC5vcmc7DQo+ID4gPiA+PiBtYXJrLnJ1dGxhbmRAYXJtLmNvbTsgc2hhd25ndW9Aa2Vy
bmVsLm9yZzsgTGVvIExpDQo+ID4gPiA+PiA8bGVveWFuZy5saUBueHAuY29tPjsga2lzaG9uQHRp
LmNvbTsgbG9yZW56by5waWVyYWxpc2lAYXJtLmNvOw0KPiA+ID4gPj4gYXJuZEBhcm5kYi5kZTsg
Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc7DQo+ID4gPiBNLmguDQo+ID4gPiA+PiBMaWFuIDxt
aW5naHVhbi5saWFuQG54cC5jb20+OyBNaW5na2FpIEh1IDxtaW5na2FpLmh1QG54cC5jb20+Ow0K
PiA+ID4gPj4gUm95IFphbmcgPHJveS56YW5nQG54cC5jb20+OyBqaW5nb29oYW4xQGdtYWlsLmNv
bTsNCj4gPiA+ID4+IGd1c3Rhdm8ucGltZW50ZWxAc3lub3BzeXMuY29tOyBsaW51eC1wY2lAdmdl
ci5rZXJuZWwub3JnOw0KPiA+ID4gPj4gZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4
LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7DQo+ID4gPiA+PiBsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmc7DQo+ID4gPiA+PiBsaW51eHBwYy1kZXZAbGlzdHMub3psYWJzLm9yZw0K
PiA+ID4gPj4gU3ViamVjdDogUmU6IFtQQVRDSCB2MiAwOC8xMF0gUENJOiBsYXllcnNjYXBlOiBB
ZGQgRVAgbW9kZQ0KPiA+ID4gPj4gc3VwcG9ydCBmb3IgbHMxMDg4YSBhbmQgbHMyMDg4YQ0KPiA+
ID4gPj4NCj4gPiA+ID4+IE9uIFRodSwgQXVnIDIyLCAyMDE5IGF0IDA3OjIyOjQwUE0gKzA4MDAs
IFhpYW93ZWkgQmFvIHdyb3RlOg0KPiA+ID4gPj4+IEFkZCBQQ0llIEVQIG1vZGUgc3VwcG9ydCBm
b3IgbHMxMDg4YSBhbmQgbHMyMDg4YSwgdGhlcmUgYXJlIHNvbWUNCj4gPiA+ID4+PiBkaWZmZXJl
bmNlIGJldHdlZW4gTFMxIGFuZCBMUzIgcGxhdGZvcm0sIHNvIHJlZmFjdG9yIHRoZSBjb2RlIG9m
DQo+ID4gPiA+Pj4gdGhlIEVQIGRyaXZlci4NCj4gPiA+ID4+Pg0KPiA+ID4gPj4+IFNpZ25lZC1v
ZmYtYnk6IFhpYW93ZWkgQmFvIDx4aWFvd2VpLmJhb0BueHAuY29tPg0KPiA+ID4gPj4+IC0tLQ0K
PiA+ID4gPj4+IHYyOg0KPiA+ID4gPj4+ICAgLSBOZXcgbWVjaGFuaXNtIGZvciBsYXllcnNjYXBl
IEVQIGRyaXZlci4NCj4gPiA+ID4+DQo+ID4gPiA+PiBXYXMgdGhlcmUgYSB2MSBvZiB0aGlzIHBh
dGNoPw0KPiA+ID4gPg0KPiA+ID4gPiBZZXMsIGJ1dCBJIGRvbid0IGtub3cgaG93IHRvIGNvbW1l
bnRzLCBeX14NCj4gPiA+DQo+ID4gPiBBcyBmYXIgYXMgSSBjYW4gc2VlLCBpbiB0aGUgcHJldmlv
dXMgdmVyc2lvbiBvZiB0aGUgc2VyaWVzDQo+ID4gPiAoaHR0cHM6Ly9wYXRjaA0KPiA+ID4NCj4g
d29yay5vemxhYnMub3JnJTJGcHJvamVjdCUyRmxpbnV4cHBjLWRldiUyRmxpc3QlMkYlM0ZzZXJp
ZXMlM0QxMjUzMTUNCj4gPiA+ICUyNnN0YXRlJTNEKiZhbXA7ZGF0YT0wMiU3QzAxJTdDeGlhb3dl
aS5iYW8lNDBueHAuY29tJTdDMWINCj4gZWZlOQ0KPiA+ID4NCj4gYTY3YzgwNDZmOTUzNWUwOGQ3
Mjg1ZWFhYjYlN0M2ODZlYTFkM2JjMmI0YzZmYTkyY2Q5OWM1YzMwMTYzNSUNCj4gPiA+DQo+IDdD
MCU3QzAlN0M2MzcwMjIyNTkzODcxMzkwMjAmYW1wO3NkYXRhPXA0d2J5Y2QwNFo3cVJVZkFvWnR3
Yw0KPiA+ID4gVVA3cFIlMkZ1QTMlMkZqVmNXTXo2WXlRVlElM0QmYW1wO3Jlc2VydmVkPTApLA0K
PiA+ID4gdGhlIDgvMTAgd2FzIHNvbWV0aGluZyBjb21wbGV0ZWx5IGRpZmZlcmVudCwgYW5kIEkg
Y2FuJ3QgZmluZCBhbnkNCj4gPiA+IG90aGVyIHBhdGNoIGluIHRoZSBzZXJpZXMgdGhhdCBjb3Vs
ZCBoYXZlIGJlZW4gdGhlIHYxIG9mIHRoaXMgcGF0Y2guDQo+ID4NCj4gPiBUaGFua3MsIEkgd2ls
bCBjb3JyZWN0IGl0IHRvIHYxIGluIG5leHQgdmVyc2lvbiBwYXRjaC4NCj4gDQo+IEkgdGhpbmsg
eW91IG51bWJlcmVkIGl0IGNvcnJlY3RseSAoc28gcGxlYXNlIGxlYXZlIGl0IGFzIHYyLCByZWZl
cnJpbmcgdG8gdGhlDQo+IHBhdGNoIHNlcmllcyByZXZpc2lvbikgLSBJIGdvdCBjb25mdXNlZCB0
cnlpbmcgdG8gZmluZCBhIHByZXZpb3VzIHZlcnNpb24gb2YgdGhpcw0KPiBwYXRjaC4NCj4gDQo+
IFBlcmhhcHMgaW4gdGhlIGZ1dHVyZSB3aGVuIG5ldyBwYXRjaGVzIGFyZSBpbnRyb2R1Y2VkIGlu
IGEgc2VyaWVzIHlvdSBjYW4NCj4gaW5kaWNhdGUgdGhhdCBpbiB0aGUgZGVzY3JpcHRpb24gcGF0
Y2ggcmV2aXNpb24gaGlzdG9yeSAoZS5nLiBpbnRyb2R1Y2VkIGluIHYyKS4NCg0KT0ssIHRoYW5r
cyBmb3IgeW91ciBoZWxwLCBJIHdpbGwgdXBkYXRlIGl0IGluIHRoZSBuZXh0IHZlcnNpb24gcGF0
Y2guDQoNClRoYW5rcyANClhpYW93ZWkNCg0KPiANCj4gVGhhbmtzLA0KPiANCj4gQW5kcmV3IE11
cnJheQ0KPiANCj4gPg0KPiA+ID4NCj4gPiA+IENocmlzdG9waGUNCj4gPiA+DQo+ID4gPiA+DQo+
ID4gPiA+Pg0KPiA+ID4gPj4+DQo+ID4gPiA+Pj4gICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3
Yy9wY2ktbGF5ZXJzY2FwZS1lcC5jIHwgNzYNCj4gPiA+ID4+PiArKysrKysrKysrKysrKysrKysr
Ky0tLS0tLQ0KPiA+ID4gPj4+ICAgMSBmaWxlIGNoYW5nZWQsIDU4IGluc2VydGlvbnMoKyksIDE4
IGRlbGV0aW9ucygtKQ0KPiA+ID4gPj4+DQo+ID4gPiA+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
cGNpL2NvbnRyb2xsZXIvZHdjL3BjaS1sYXllcnNjYXBlLWVwLmMNCj4gPiA+ID4+PiBiL2RyaXZl
cnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaS1sYXllcnNjYXBlLWVwLmMNCj4gPiA+ID4+PiBpbmRl
eCA3Y2E1ZmU4Li4yYTY2ZjA3IDEwMDY0NA0KPiA+ID4gPj4+IC0tLSBhL2RyaXZlcnMvcGNpL2Nv
bnRyb2xsZXIvZHdjL3BjaS1sYXllcnNjYXBlLWVwLmMNCj4gPiA+ID4+PiArKysgYi9kcml2ZXJz
L3BjaS9jb250cm9sbGVyL2R3Yy9wY2ktbGF5ZXJzY2FwZS1lcC5jDQo+ID4gPiA+Pj4gQEAgLTIw
LDI3ICsyMCwyOSBAQA0KPiA+ID4gPj4+DQo+ID4gPiA+Pj4gICAjZGVmaW5lIFBDSUVfREJJMl9P
RkZTRVQJCTB4MTAwMAkvKiBEQkkyIGJhc2UgYWRkcmVzcyovDQo+ID4gPiA+Pj4NCj4gPiA+ID4+
PiAtc3RydWN0IGxzX3BjaWVfZXAgew0KPiA+ID4gPj4+IC0Jc3RydWN0IGR3X3BjaWUJCSpwY2k7
DQo+ID4gPiA+Pj4gLQlzdHJ1Y3QgcGNpX2VwY19mZWF0dXJlcwkqbHNfZXBjOw0KPiA+ID4gPj4+
ICsjZGVmaW5lIHRvX2xzX3BjaWVfZXAoeCkJZGV2X2dldF9kcnZkYXRhKCh4KS0+ZGV2KQ0KPiA+
ID4gPj4+ICsNCj4gPiA+ID4+PiArc3RydWN0IGxzX3BjaWVfZXBfZHJ2ZGF0YSB7DQo+ID4gPiA+
Pj4gKwl1MzIJCQkJZnVuY19vZmZzZXQ7DQo+ID4gPiA+Pj4gKwljb25zdCBzdHJ1Y3QgZHdfcGNp
ZV9lcF9vcHMJKm9wczsNCj4gPiA+ID4+PiArCWNvbnN0IHN0cnVjdCBkd19wY2llX29wcwkqZHdf
cGNpZV9vcHM7DQo+ID4gPiA+Pj4gICB9Ow0KPiA+ID4gPj4+DQo+ID4gPiA+Pj4gLSNkZWZpbmUg
dG9fbHNfcGNpZV9lcCh4KQlkZXZfZ2V0X2RydmRhdGEoKHgpLT5kZXYpDQo+ID4gPiA+Pj4gK3N0
cnVjdCBsc19wY2llX2VwIHsNCj4gPiA+ID4+PiArCXN0cnVjdCBkd19wY2llCQkJKnBjaTsNCj4g
PiA+ID4+PiArCXN0cnVjdCBwY2lfZXBjX2ZlYXR1cmVzCQkqbHNfZXBjOw0KPiA+ID4gPj4+ICsJ
Y29uc3Qgc3RydWN0IGxzX3BjaWVfZXBfZHJ2ZGF0YSAqZHJ2ZGF0YTsgfTsNCj4gPiA+ID4+Pg0K
PiA+ID4gPj4+ICAgc3RhdGljIGludCBsc19wY2llX2VzdGFibGlzaF9saW5rKHN0cnVjdCBkd19w
Y2llICpwY2kpICB7DQo+ID4gPiA+Pj4gICAJcmV0dXJuIDA7DQo+ID4gPiA+Pj4gICB9DQo+ID4g
PiA+Pj4NCj4gPiA+ID4+PiAtc3RhdGljIGNvbnN0IHN0cnVjdCBkd19wY2llX29wcyBsc19wY2ll
X2VwX29wcyA9IHsNCj4gPiA+ID4+PiArc3RhdGljIGNvbnN0IHN0cnVjdCBkd19wY2llX29wcyBk
d19sc19wY2llX2VwX29wcyA9IHsNCj4gPiA+ID4+PiAgIAkuc3RhcnRfbGluayA9IGxzX3BjaWVf
ZXN0YWJsaXNoX2xpbmssICB9Ow0KPiA+ID4gPj4+DQo+ID4gPiA+Pj4gLXN0YXRpYyBjb25zdCBz
dHJ1Y3Qgb2ZfZGV2aWNlX2lkIGxzX3BjaWVfZXBfb2ZfbWF0Y2hbXSA9IHsNCj4gPiA+ID4+PiAt
CXsgLmNvbXBhdGlibGUgPSAiZnNsLGxzLXBjaWUtZXAiLH0sDQo+ID4gPiA+Pj4gLQl7IH0sDQo+
ID4gPiA+Pj4gLX07DQo+ID4gPiA+Pj4gLQ0KPiA+ID4gPj4+ICAgc3RhdGljIGNvbnN0IHN0cnVj
dCBwY2lfZXBjX2ZlYXR1cmVzKg0KPiA+ID4gPj4+IGxzX3BjaWVfZXBfZ2V0X2ZlYXR1cmVzKHN0
cnVjdCBkd19wY2llX2VwICplcCkgIHsgQEAgLTgyLDEwDQo+ID4gPiA+Pj4gKzg0LDQ0IEBAIHN0
YXRpYyBpbnQgbHNfcGNpZV9lcF9yYWlzZV9pcnEoc3RydWN0IGR3X3BjaWVfZXAgKmVwLCB1OA0K
PiBmdW5jX25vLA0KPiA+ID4gPj4+ICAgCX0NCj4gPiA+ID4+PiAgIH0NCj4gPiA+ID4+Pg0KPiA+
ID4gPj4+IC1zdGF0aWMgY29uc3Qgc3RydWN0IGR3X3BjaWVfZXBfb3BzIHBjaWVfZXBfb3BzID0g
ew0KPiA+ID4gPj4+ICtzdGF0aWMgdW5zaWduZWQgaW50IGxzX3BjaWVfZXBfZnVuY19jb25mX3Nl
bGVjdChzdHJ1Y3QgZHdfcGNpZV9lcA0KPiAqZXAsDQo+ID4gPiA+Pj4gKwkJCQkJCXU4IGZ1bmNf
bm8pDQo+ID4gPiA+Pj4gK3sNCj4gPiA+ID4+PiArCXN0cnVjdCBkd19wY2llICpwY2kgPSB0b19k
d19wY2llX2Zyb21fZXAoZXApOw0KPiA+ID4gPj4+ICsJc3RydWN0IGxzX3BjaWVfZXAgKnBjaWUg
PSB0b19sc19wY2llX2VwKHBjaSk7DQo+ID4gPiA+Pj4gKwl1OCBoZWFkZXJfdHlwZTsNCj4gPiA+
ID4+PiArDQo+ID4gPiA+Pj4gKwloZWFkZXJfdHlwZSA9IGlvcmVhZDgocGNpLT5kYmlfYmFzZSAr
IFBDSV9IRUFERVJfVFlQRSk7DQo+ID4gPiA+Pj4gKw0KPiA+ID4gPj4+ICsJaWYgKGhlYWRlcl90
eXBlICYgKDEgPDwgNykpDQo+ID4gPiA+Pj4gKwkJcmV0dXJuIHBjaWUtPmRydmRhdGEtPmZ1bmNf
b2Zmc2V0ICogZnVuY19ubzsNCj4gPiA+ID4+PiArCWVsc2UNCj4gPiA+ID4+PiArCQlyZXR1cm4g
MDsNCj4gPiA+ID4+DQo+ID4gPiA+PiBJdCBsb29rcyBsaWtlIHRoZXJlIGlzbid0IGEgUENJIGRl
ZmluZSBmb3IgbXVsdGkgZnVuY3Rpb24sIHRoZQ0KPiA+ID4gPj4gbmVhcmVzdCBJIGNvdWxkIGZp
bmQgd2FzIFBDSV9IRUFERVJfVFlQRV9NVUxUSURFVklDRSBpbg0KPiA+ID4gPj4gaG90cGx1Zy9p
Ym1waHAuaC4gQSBjb21tZW50IGFib3ZlIHRoZSB0ZXN0IG1pZ2h0IGJlIGhlbHBmdWwgdG8NCj4g
PiA+ID4+IGV4cGxhaW4NCj4gPiA+IHRoZSB0ZXN0Lg0KPiA+ID4gPg0KPiA+ID4gPiBZZXMsIEkg
aGF2ZSBub3QgZmluZCB0aGUgUENJX0hFQURFUl9UWVBFX01VTFRJREVWSUNFIGRlZmluZS4gT0ss
IEkNCj4gPiA+ID4gd2lsbCBhZGQgVGhlIGNvbW1lbnRzIGluIG5leHQgdmVyc2lvbiBwYXRjaC4N
Cj4gPiA+ID4NCj4gPiA+ID4+DQo+ID4gPiA+PiBBcyB0aGUgbHNfcGNpZV9lcF9kcnZkYXRhIHN0
cnVjdHVyZXMgYXJlIHN0YXRpYywgdGhlIHVuc2V0DQo+ID4gPiA+PiAuZnVuY19vZmZzZXQgd2ls
bCBiZSBpbml0aWFsaXNlZCB0byAwLCBzbyB5b3UgY291bGQganVzdCBkcm9wIHRoZSB0ZXN0DQo+
IGFib3ZlLg0KPiA+ID4gPg0KPiA+ID4gPiBPSywgdGhhbmtzDQo+ID4gPiA+DQo+ID4gPiA+Pg0K
PiA+ID4gPj4gSG93ZXZlciBzb21ldGhpbmcgdG8gdGhlIGVmZmVjdCBvZiB0aGUgZm9sbG93aW5n
IG1heSBoZWxwIHNwb3QNCj4gPiA+ID4+IG1pc2NvbmZpZ3VyYXRpb246DQo+ID4gPiA+Pg0KPiA+
ID4gPj4gV0FSTl9PTihmdW5jX25vICYmICFwY2llLT5kcnZkYXRhLT5mdW5jX29mZnNldCk7IHJl
dHVybg0KPiA+ID4gPj4gcGNpZS0+ZHJ2ZGF0YS0+ZnVuY19vZmZzZXQgKiBmdW5jX25vOw0KPiA+
ID4gPg0KPiA+ID4gPiBUaGFua3MgYSBsb3QsIHRoaXMgbG9va3MgYmV0dGVyLg0KPiA+ID4gPg0K
PiA+ID4gPj4NCj4gPiA+ID4+IFRoZSBXQVJOIGlzIHByb2JhYmx5IHF1aXRlIHVzZWZ1bCBhcyBp
ZiB5b3UgYXJlIGF0dGVtcHRpbmcgdG8gdXNlDQo+ID4gPiA+PiBub24temVybyBmdW5jdGlvbnMg
YW5kIGZ1bmNfb2Zmc2V0IGlzbid0IHNldCAtIHRoZW4gdGhpbmdzIG1heQ0KPiA+ID4gPj4gYXBw
ZWFyIHRvIHdvcmsgbm9ybWFsbHkgYnV0IGFjdHVhbGx5IHdpbGwgYnJlYWsgaG9ycmlibHkuDQo+
ID4gPiA+DQo+ID4gPiA+IGdvdCBpdCwgdGhhbmtzLg0KPiA+ID4gPg0KPiA+ID4gPj4NCj4gPiA+
ID4+IFRoYW5rcywNCj4gPiA+ID4+DQo+ID4gPiA+PiBBbmRyZXcgTXVycmF5DQo+ID4gPiA+Pg0K
PiA+ID4gPj4+ICt9DQo+ID4gPiA+Pj4gKw0KPiA+ID4gPj4+ICtzdGF0aWMgY29uc3Qgc3RydWN0
IGR3X3BjaWVfZXBfb3BzIGxzX3BjaWVfZXBfb3BzID0gew0KPiA+ID4gPj4+ICAgCS5lcF9pbml0
ID0gbHNfcGNpZV9lcF9pbml0LA0KPiA+ID4gPj4+ICAgCS5yYWlzZV9pcnEgPSBsc19wY2llX2Vw
X3JhaXNlX2lycSwNCj4gPiA+ID4+PiAgIAkuZ2V0X2ZlYXR1cmVzID0gbHNfcGNpZV9lcF9nZXRf
ZmVhdHVyZXMsDQo+ID4gPiA+Pj4gKwkuZnVuY19jb25mX3NlbGVjdCA9IGxzX3BjaWVfZXBfZnVu
Y19jb25mX3NlbGVjdCwgfTsNCj4gPiA+ID4+PiArDQo+ID4gPiA+Pj4gK3N0YXRpYyBjb25zdCBz
dHJ1Y3QgbHNfcGNpZV9lcF9kcnZkYXRhIGxzMV9lcF9kcnZkYXRhID0gew0KPiA+ID4gPj4+ICsJ
Lm9wcyA9ICZsc19wY2llX2VwX29wcywNCj4gPiA+ID4+PiArCS5kd19wY2llX29wcyA9ICZkd19s
c19wY2llX2VwX29wcywgfTsNCj4gPiA+ID4+PiArDQo+ID4gPiA+Pj4gK3N0YXRpYyBjb25zdCBz
dHJ1Y3QgbHNfcGNpZV9lcF9kcnZkYXRhIGxzMl9lcF9kcnZkYXRhID0gew0KPiA+ID4gPj4+ICsJ
LmZ1bmNfb2Zmc2V0ID0gMHgyMDAwMCwNCj4gPiA+ID4+PiArCS5vcHMgPSAmbHNfcGNpZV9lcF9v
cHMsDQo+ID4gPiA+Pj4gKwkuZHdfcGNpZV9vcHMgPSAmZHdfbHNfcGNpZV9lcF9vcHMsIH07DQo+
ID4gPiA+Pj4gKw0KPiA+ID4gPj4+ICtzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBs
c19wY2llX2VwX29mX21hdGNoW10gPSB7DQo+ID4gPiA+Pj4gKwl7IC5jb21wYXRpYmxlID0gImZz
bCxsczEwNDZhLXBjaWUtZXAiLCAuZGF0YSA9ICZsczFfZXBfZHJ2ZGF0YSB9LA0KPiA+ID4gPj4+
ICsJeyAuY29tcGF0aWJsZSA9ICJmc2wsbHMxMDg4YS1wY2llLWVwIiwgLmRhdGEgPSAmbHMyX2Vw
X2RydmRhdGEgfSwNCj4gPiA+ID4+PiArCXsgLmNvbXBhdGlibGUgPSAiZnNsLGxzMjA4OGEtcGNp
ZS1lcCIsIC5kYXRhID0gJmxzMl9lcF9kcnZkYXRhIH0sDQo+ID4gPiA+Pj4gKwl7IH0sDQo+ID4g
PiA+Pj4gICB9Ow0KPiA+ID4gPj4+DQo+ID4gPiA+Pj4gICBzdGF0aWMgaW50IF9faW5pdCBsc19h
ZGRfcGNpZV9lcChzdHJ1Y3QgbHNfcGNpZV9lcCAqcGNpZSwgQEANCj4gPiA+ID4+PiAtOTgsNw0K
PiA+ID4gPj4+ICsxMzQsNyBAQCBzdGF0aWMgaW50IF9faW5pdCBsc19hZGRfcGNpZV9lcChzdHJ1
Y3QgbHNfcGNpZV9lcA0KPiA+ID4gPj4+ICsqcGNpZSwNCj4gPiA+ID4+PiAgIAlpbnQgcmV0Ow0K
PiA+ID4gPj4+DQo+ID4gPiA+Pj4gICAJZXAgPSAmcGNpLT5lcDsNCj4gPiA+ID4+PiAtCWVwLT5v
cHMgPSAmcGNpZV9lcF9vcHM7DQo+ID4gPiA+Pj4gKwllcC0+b3BzID0gcGNpZS0+ZHJ2ZGF0YS0+
b3BzOw0KPiA+ID4gPj4+DQo+ID4gPiA+Pj4gICAJcmVzID0gcGxhdGZvcm1fZ2V0X3Jlc291cmNl
X2J5bmFtZShwZGV2LA0KPiBJT1JFU09VUkNFX01FTSwNCj4gPiA+ID4+ICJhZGRyX3NwYWNlIik7
DQo+ID4gPiA+Pj4gICAJaWYgKCFyZXMpDQo+ID4gPiA+Pj4gQEAgLTEzNywxNCArMTczLDExIEBA
IHN0YXRpYyBpbnQgX19pbml0IGxzX3BjaWVfZXBfcHJvYmUoc3RydWN0DQo+ID4gPiA+PiBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYpDQo+ID4gPiA+Pj4gICAJaWYgKCFsc19lcGMpDQo+ID4gPiA+Pj4g
ICAJCXJldHVybiAtRU5PTUVNOw0KPiA+ID4gPj4+DQo+ID4gPiA+Pj4gLQlkYmlfYmFzZSA9IHBs
YXRmb3JtX2dldF9yZXNvdXJjZV9ieW5hbWUocGRldiwNCj4gPiA+IElPUkVTT1VSQ0VfTUVNLA0K
PiA+ID4gPj4gInJlZ3MiKTsNCj4gPiA+ID4+PiAtCXBjaS0+ZGJpX2Jhc2UgPSBkZXZtX3BjaV9y
ZW1hcF9jZmdfcmVzb3VyY2UoZGV2LCBkYmlfYmFzZSk7DQo+ID4gPiA+Pj4gLQlpZiAoSVNfRVJS
KHBjaS0+ZGJpX2Jhc2UpKQ0KPiA+ID4gPj4+IC0JCXJldHVybiBQVFJfRVJSKHBjaS0+ZGJpX2Jh
c2UpOw0KPiA+ID4gPj4+ICsJcGNpZS0+ZHJ2ZGF0YSA9IG9mX2RldmljZV9nZXRfbWF0Y2hfZGF0
YShkZXYpOw0KPiA+ID4gPj4+DQo+ID4gPiA+Pj4gLQlwY2ktPmRiaV9iYXNlMiA9IHBjaS0+ZGJp
X2Jhc2UgKyBQQ0lFX0RCSTJfT0ZGU0VUOw0KPiA+ID4gPj4+ICAgCXBjaS0+ZGV2ID0gZGV2Ow0K
PiA+ID4gPj4+IC0JcGNpLT5vcHMgPSAmbHNfcGNpZV9lcF9vcHM7DQo+ID4gPiA+Pj4gKwlwY2kt
Pm9wcyA9IHBjaWUtPmRydmRhdGEtPmR3X3BjaWVfb3BzOw0KPiA+ID4gPj4+ICsNCj4gPiA+ID4+
PiAgIAlwY2llLT5wY2kgPSBwY2k7DQo+ID4gPiA+Pj4NCj4gPiA+ID4+PiAgIAlsc19lcGMtPmxp
bmt1cF9ub3RpZmllciA9IGZhbHNlLCBAQCAtMTUyLDYgKzE4NSwxMyBAQCBzdGF0aWMNCj4gPiA+
ID4+PiBpbnQgX19pbml0IGxzX3BjaWVfZXBfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAq
cGRldikNCj4gPiA+ID4+Pg0KPiA+ID4gPj4+ICAgCXBjaWUtPmxzX2VwYyA9IGxzX2VwYzsNCj4g
PiA+ID4+Pg0KPiA+ID4gPj4+ICsJZGJpX2Jhc2UgPSBwbGF0Zm9ybV9nZXRfcmVzb3VyY2VfYnlu
YW1lKHBkZXYsDQo+ID4gPiBJT1JFU09VUkNFX01FTSwNCj4gPiA+ID4+ICJyZWdzIik7DQo+ID4g
PiA+Pj4gKwlwY2ktPmRiaV9iYXNlID0gZGV2bV9wY2lfcmVtYXBfY2ZnX3Jlc291cmNlKGRldiwg
ZGJpX2Jhc2UpOw0KPiA+ID4gPj4+ICsJaWYgKElTX0VSUihwY2ktPmRiaV9iYXNlKSkNCj4gPiA+
ID4+PiArCQlyZXR1cm4gUFRSX0VSUihwY2ktPmRiaV9iYXNlKTsNCj4gPiA+ID4+PiArDQo+ID4g
PiA+Pj4gKwlwY2ktPmRiaV9iYXNlMiA9IHBjaS0+ZGJpX2Jhc2UgKyBQQ0lFX0RCSTJfT0ZGU0VU
Ow0KPiA+ID4gPj4+ICsNCj4gPiA+ID4+PiAgIAlwbGF0Zm9ybV9zZXRfZHJ2ZGF0YShwZGV2LCBw
Y2llKTsNCj4gPiA+ID4+Pg0KPiA+ID4gPj4+ICAgCXJldCA9IGxzX2FkZF9wY2llX2VwKHBjaWUs
IHBkZXYpOw0KPiA+ID4gPj4+IC0tDQo+ID4gPiA+Pj4gMi45LjUNCj4gPiA+ID4+Pg0KPiA+ID4N
Cj4gPiA+IC0tLQ0KPiA+ID4gTCdhYnNlbmNlIGRlIHZpcnVzIGRhbnMgY2UgY291cnJpZXIgw6ls
ZWN0cm9uaXF1ZSBhIMOpdMOpIHbDqXJpZmnDqWUgcGFyDQo+ID4gPiBsZSBsb2dpY2llbCBhbnRp
dmlydXMgQXZhc3QuDQo+ID4gPiBodHRwczovL3d3dy4NCj4gPiA+DQo+IGF2YXN0LmNvbSUyRmFu
dGl2aXJ1cyZhbXA7ZGF0YT0wMiU3QzAxJTdDeGlhb3dlaS5iYW8lNDBueHAuY29tJTcNCj4gPiA+
DQo+IEMxYmVmZTlhNjdjODA0NmY5NTM1ZTA4ZDcyODVlYWFiNiU3QzY4NmVhMWQzYmMyYjRjNmZh
OTJjZDk5YzVjMw0KPiA+ID4NCj4gMDE2MzUlN0MwJTdDMCU3QzYzNzAyMjI1OTM4NzEzOTAyMCZh
bXA7c2RhdGE9SkFZZHM3WCUyRkhWeGd0cmcNCj4gPiA+IGUlMkYlMkZ2blA4NHpkYjJ5UmVYY2N0
UVVpU0xDMTFJJTNEJmFtcDtyZXNlcnZlZD0wDQo+ID4NCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
