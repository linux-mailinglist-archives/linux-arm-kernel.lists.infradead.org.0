Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 258A49C15E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 05:08:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EMKvqFM3tlK0KtvvC+y2fnl0uG9E8ecBu2HVixfeZCM=; b=fk5gjRo4inRWYP
	riBPXe+htN6hpIvHvcO0SRCiNG/Sk/MhKDFWs5uvARbavUiL9Hk4pSmuWoQriJaQaJCpb0DBYYoih
	SU/Xfgknktx0+HINC5daqXrlJkXdaTmzdego/bx74ZinOvExAwKvFg77bjlVVP9LWaZ2w7IqfJ/2x
	i/1S64mvMYMgORm3xVPbux71KmMVJ5f0xu2D22haoicE9FGPBQm9e6mx2YWQXKyLx8DNWuUcZalXS
	mpSDvMF53cMRiw1mMS6BG5mPCRiRK3tLzwIKoxtyon5IPtab7dEgF/1cOXek48FSJOB3dHUYjvfOW
	ep0ayVsA9ZWu4Cs0ZHkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1it0-00071X-LG; Sun, 25 Aug 2019 03:08:10 +0000
Received: from mail-eopbgr30063.outbound.protection.outlook.com ([40.107.3.63]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1isX-000714-DV
 for linux-arm-kernel@lists.infradead.org; Sun, 25 Aug 2019 03:07:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dvQOt/bVW8P0jcPyXvP0pboXn6lqNMmBJqXHDJNtjS80Z6lP3yPF/RReMWXAG5Cn2yXeXePnv978/ZVPKSePa5jSe29A1Au/bBDJOG4sAEeNyUxecb12F1wY2z1s5ciiK4JL92PgXDnB676iVTDOOCe4wYZFcpK3lgEDgEGCQi9uIlvMQjLrIY7IitfZDFe7r07qxlJvroM/Sag1I9uQYJuAUeodGkvusYRLoF1Pha+ludeEitDDpmnFJyPJgWvrnYNyjrPrYfC2jzpDHCNArk1WnN5PbIFuRfBDVEAfrggwAyhJJCFydot/fYDSszKZnlvjv79O62GlAuGlotigmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d270TYYENVlDNfJYHad4F5SfHp+nubojtjhPh1gAmOY=;
 b=Y2Ad9xHSINgwQx8e4vwT9kSMahLluAMACqpYo43I5qzGkUQoHdkarx/Y7Gt/yzp4oyrcme3hd2tg3B3Mjyej/GMpZoyiQJMcjwJiGz5Jl300cGztWpLdl/o0w7Pqux0106SBRaIPzVlf/2pdmxKATMYXjZigJ6+ZJ6Bk/Bxy+mTqk3c1WDIiPtzpblf+r36XQmCBaKvXyZobyeGB3d+5DFUiTzqqbRFhjJwDb0ce/6UNghS2zqGwayoXWLP5MH3GQPOIVs+yLh4hPNz5Z8rNu/LH6Kx/sOLbomk3IBdpxkLes1TOzXTnndA5fhvZgWkV0BYyObIUvCEPwoOJBjh3Bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d270TYYENVlDNfJYHad4F5SfHp+nubojtjhPh1gAmOY=;
 b=kNHyjPX/4X8yTQ0c2HUow+s70p/EGO12uK9ZfkVXT9RzgTYNU8xF5fvNavupgP67DPLmzi5xHYZuO3Yxczvwv0dVwDZo2z8ad39lOQ+KLBdUyl3WCgV7sT1e45awkEwPI+VWTEfioMuQTxAnq4cw9Fsj5IBFdJQCbBFojYgepec=
Received: from AM5PR04MB3299.eurprd04.prod.outlook.com (10.173.255.158) by
 AM5PR04MB3057.eurprd04.prod.outlook.com (10.175.229.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Sun, 25 Aug 2019 03:07:32 +0000
Received: from AM5PR04MB3299.eurprd04.prod.outlook.com
 ([fe80::1ce8:464b:3edf:4043]) by AM5PR04MB3299.eurprd04.prod.outlook.com
 ([fe80::1ce8:464b:3edf:4043%7]) with mapi id 15.20.2178.023; Sun, 25 Aug 2019
 03:07:32 +0000
From: Xiaowei Bao <xiaowei.bao@nxp.com>
To: christophe leroy <christophe.leroy@c-s.fr>, Andrew Murray
 <andrew.murray@arm.com>
Subject: RE: [PATCH v2 08/10] PCI: layerscape: Add EP mode support for ls1088a
 and ls2088a
Thread-Topic: [PATCH v2 08/10] PCI: layerscape: Add EP mode support for
 ls1088a and ls2088a
Thread-Index: AQHVWN1gKEkcDc/BT0q+LkXHF2Gt76cIzC+AgACiVVCAAG7HgIABVMJQ
Date: Sun, 25 Aug 2019 03:07:32 +0000
Message-ID: <AM5PR04MB3299EBADE7BC04C3465B7DB7F5A60@AM5PR04MB3299.eurprd04.prod.outlook.com>
References: <20190822112242.16309-1-xiaowei.bao@nxp.com>
 <20190822112242.16309-8-xiaowei.bao@nxp.com>
 <20190823142756.GI14582@e119886-lin.cambridge.arm.com>
 <AM5PR04MB32990473D4AD65354B5B2235F5A70@AM5PR04MB3299.eurprd04.prod.outlook.com>
 <89c90732-5e42-f87e-73b1-8d615355afc4@c-s.fr>
In-Reply-To: <89c90732-5e42-f87e-73b1-8d615355afc4@c-s.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xiaowei.bao@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cd66637c-27c8-4d7a-441f-08d729095f51
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM5PR04MB3057; 
x-ms-traffictypediagnostic: AM5PR04MB3057:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM5PR04MB30572B29404ACD5AE3FCDEE9F5A60@AM5PR04MB3057.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 01401330D1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(366004)(136003)(346002)(396003)(199004)(189003)(13464003)(229853002)(55016002)(9686003)(186003)(66476007)(66574012)(64756008)(66446008)(66556008)(76116006)(6436002)(33656002)(74316002)(86362001)(66946007)(6306002)(53936002)(44832011)(11346002)(446003)(6246003)(8936002)(26005)(486006)(71200400001)(71190400001)(476003)(5660300002)(76176011)(3846002)(81166006)(25786009)(99286004)(81156014)(8676002)(4326008)(6506007)(53546011)(7416002)(2906002)(102836004)(256004)(66066001)(7736002)(478600001)(14454004)(966005)(45080400002)(52536014)(305945005)(110136005)(6116002)(54906003)(7696005)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR04MB3057;
 H:AM5PR04MB3299.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 2z1Am+T9Zd/5M1nQZtt9IPzE1c9wTqWL+Sa2SEo+20YE0eDHTCVXRFw8DErI9nJwdaIpAywyx7iY/BIM61AG048M+K5o8rfNbl2cqOXaQFq2LYx50RqkKd6wcYIoTWYazBEwQMBiLfRIY9HSXMfHXPV84UwLiD9/AtDgDOhKwvHeeEro0/ksYtcFoD956/l6pKY959iJUzcK+kkdZYJMV6Rh7+MCNGRoxieGVd7juYyqkZhkvoqAdpHC4WRkjFleS7120f6/yAhZ5+1RFtdSscCQKruEwJQaiqUQWVN2Fct3QBPmoWTrOFAkPZMEgigmPaU/JP4GJK6j7iJ+ysy5g24R5s5075gBqOsNRiPgYQjliL7Ji3PgcvVuofDWm/+OdR6jpI7pjwOju9ZNeeemhkpslhwH9tTWBPgBAdFJQHU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd66637c-27c8-4d7a-441f-08d729095f51
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Aug 2019 03:07:32.5041 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J8Y5Z/KhXyNFDxYUdSdg7+WN/Nf20omIIP4t2sJKdYD/kIteYA5t/gYvfwe9922+34NTlmFfKJxvykSFLjKZfQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR04MB3057
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_200741_799935_D9606279 
X-CRM114-Status: GOOD (  27.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.63 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Roy Zang <roy.zang@nxp.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "lorenzo.pieralisi@arm.co" <lorenzo.pieralisi@arm.co>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 Leo Li <leoyang.li@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kishon@ti.com" <kishon@ti.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "jingoohan1@gmail.com" <jingoohan1@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "gustavo.pimentel@synopsys.com" <gustavo.pimentel@synopsys.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 Mingkai Hu <mingkai.hu@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogY2hyaXN0b3BoZSBsZXJv
eSA8Y2hyaXN0b3BoZS5sZXJveUBjLXMuZnI+DQo+IFNlbnQ6IDIwMTnlubQ45pyIMjTml6UgMTQ6
NDUNCj4gVG86IFhpYW93ZWkgQmFvIDx4aWFvd2VpLmJhb0BueHAuY29tPjsgQW5kcmV3IE11cnJh
eQ0KPiA8YW5kcmV3Lm11cnJheUBhcm0uY29tPg0KPiBDYzogbWFyay5ydXRsYW5kQGFybS5jb207
IFJveSBaYW5nIDxyb3kuemFuZ0BueHAuY29tPjsNCj4gbG9yZW56by5waWVyYWxpc2lAYXJtLmNv
OyBhcm5kQGFybmRiLmRlOyBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsNCj4gZ3JlZ2toQGxp
bnV4Zm91bmRhdGlvbi5vcmc7IGxpbnV4cHBjLWRldkBsaXN0cy5vemxhYnMub3JnOw0KPiBsaW51
eC1wY2lAdmdlci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBraXNo
b25AdGkuY29tOyBNLmguDQo+IExpYW4gPG1pbmdodWFuLmxpYW5AbnhwLmNvbT47IHJvYmgrZHRA
a2VybmVsLm9yZzsNCj4gZ3VzdGF2by5waW1lbnRlbEBzeW5vcHN5cy5jb207IGppbmdvb2hhbjFA
Z21haWwuY29tOw0KPiBiaGVsZ2Fhc0Bnb29nbGUuY29tOyBMZW8gTGkgPGxlb3lhbmcubGlAbnhw
LmNvbT47IHNoYXduZ3VvQGtlcm5lbC5vcmc7DQo+IE1pbmdrYWkgSHUgPG1pbmdrYWkuaHVAbnhw
LmNvbT47IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZw0KPiBTdWJqZWN0OiBS
ZTogW1BBVENIIHYyIDA4LzEwXSBQQ0k6IGxheWVyc2NhcGU6IEFkZCBFUCBtb2RlIHN1cHBvcnQg
Zm9yDQo+IGxzMTA4OGEgYW5kIGxzMjA4OGENCj4gDQo+IA0KPiANCj4gTGUgMjQvMDgvMjAxOSDD
oCAwMjoxOCwgWGlhb3dlaSBCYW8gYSDDqWNyaXTCoDoNCj4gPg0KPiA+DQo+ID4+IC0tLS0tT3Jp
Z2luYWwgTWVzc2FnZS0tLS0tDQo+ID4+IEZyb206IEFuZHJldyBNdXJyYXkgPGFuZHJldy5tdXJy
YXlAYXJtLmNvbT4NCj4gPj4gU2VudDogMjAxOeW5tDjmnIgyM+aXpSAyMjoyOA0KPiA+PiBUbzog
WGlhb3dlaSBCYW8gPHhpYW93ZWkuYmFvQG54cC5jb20+DQo+ID4+IENjOiBiaGVsZ2Fhc0Bnb29n
bGUuY29tOyByb2JoK2R0QGtlcm5lbC5vcmc7IG1hcmsucnV0bGFuZEBhcm0uY29tOw0KPiA+PiBz
aGF3bmd1b0BrZXJuZWwub3JnOyBMZW8gTGkgPGxlb3lhbmcubGlAbnhwLmNvbT47IGtpc2hvbkB0
aS5jb207DQo+ID4+IGxvcmVuem8ucGllcmFsaXNpQGFybS5jbzsgYXJuZEBhcm5kYi5kZTsgZ3Jl
Z2toQGxpbnV4Zm91bmRhdGlvbi5vcmc7DQo+IE0uaC4NCj4gPj4gTGlhbiA8bWluZ2h1YW4ubGlh
bkBueHAuY29tPjsgTWluZ2thaSBIdSA8bWluZ2thaS5odUBueHAuY29tPjsgUm95DQo+ID4+IFph
bmcgPHJveS56YW5nQG54cC5jb20+OyBqaW5nb29oYW4xQGdtYWlsLmNvbTsNCj4gPj4gZ3VzdGF2
by5waW1lbnRlbEBzeW5vcHN5cy5jb207IGxpbnV4LXBjaUB2Z2VyLmtlcm5lbC5vcmc7DQo+ID4+
IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3Jn
Ow0KPiA+PiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7IGxpbnV4cHBjLWRl
dkBsaXN0cy5vemxhYnMub3JnDQo+ID4+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjIgMDgvMTBdIFBD
STogbGF5ZXJzY2FwZTogQWRkIEVQIG1vZGUgc3VwcG9ydA0KPiA+PiBmb3IgbHMxMDg4YSBhbmQg
bHMyMDg4YQ0KPiA+Pg0KPiA+PiBPbiBUaHUsIEF1ZyAyMiwgMjAxOSBhdCAwNzoyMjo0MFBNICsw
ODAwLCBYaWFvd2VpIEJhbyB3cm90ZToNCj4gPj4+IEFkZCBQQ0llIEVQIG1vZGUgc3VwcG9ydCBm
b3IgbHMxMDg4YSBhbmQgbHMyMDg4YSwgdGhlcmUgYXJlIHNvbWUNCj4gPj4+IGRpZmZlcmVuY2Ug
YmV0d2VlbiBMUzEgYW5kIExTMiBwbGF0Zm9ybSwgc28gcmVmYWN0b3IgdGhlIGNvZGUgb2YgdGhl
DQo+ID4+PiBFUCBkcml2ZXIuDQo+ID4+Pg0KPiA+Pj4gU2lnbmVkLW9mZi1ieTogWGlhb3dlaSBC
YW8gPHhpYW93ZWkuYmFvQG54cC5jb20+DQo+ID4+PiAtLS0NCj4gPj4+IHYyOg0KPiA+Pj4gICAt
IE5ldyBtZWNoYW5pc20gZm9yIGxheWVyc2NhcGUgRVAgZHJpdmVyLg0KPiA+Pg0KPiA+PiBXYXMg
dGhlcmUgYSB2MSBvZiB0aGlzIHBhdGNoPw0KPiA+DQo+ID4gWWVzLCBidXQgSSBkb24ndCBrbm93
IGhvdyB0byBjb21tZW50cywgXl9eDQo+IA0KPiBBcyBmYXIgYXMgSSBjYW4gc2VlLCBpbiB0aGUg
cHJldmlvdXMgdmVyc2lvbiBvZiB0aGUgc2VyaWVzDQo+IChodHRwczovL2V1cjAxLnNhZmVsaW5r
cy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMlM0ElMkYlMkZwYXRjaA0KPiB3b3Jr
Lm96bGFicy5vcmclMkZwcm9qZWN0JTJGbGludXhwcGMtZGV2JTJGbGlzdCUyRiUzRnNlcmllcyUz
RDEyNTMxNQ0KPiAlMjZzdGF0ZSUzRComYW1wO2RhdGE9MDIlN0MwMSU3Q3hpYW93ZWkuYmFvJTQw
bnhwLmNvbSU3QzFiZWZlOQ0KPiBhNjdjODA0NmY5NTM1ZTA4ZDcyODVlYWFiNiU3QzY4NmVhMWQz
YmMyYjRjNmZhOTJjZDk5YzVjMzAxNjM1JQ0KPiA3QzAlN0MwJTdDNjM3MDIyMjU5Mzg3MTM5MDIw
JmFtcDtzZGF0YT1wNHdieWNkMDRaN3FSVWZBb1p0d2MNCj4gVVA3cFIlMkZ1QTMlMkZqVmNXTXo2
WXlRVlElM0QmYW1wO3Jlc2VydmVkPTApLA0KPiB0aGUgOC8xMCB3YXMgc29tZXRoaW5nIGNvbXBs
ZXRlbHkgZGlmZmVyZW50LCBhbmQgSSBjYW4ndCBmaW5kIGFueSBvdGhlciBwYXRjaA0KPiBpbiB0
aGUgc2VyaWVzIHRoYXQgY291bGQgaGF2ZSBiZWVuIHRoZSB2MSBvZiB0aGlzIHBhdGNoLg0KDQpU
aGFua3MsIEkgd2lsbCBjb3JyZWN0IGl0IHRvIHYxIGluIG5leHQgdmVyc2lvbiBwYXRjaC4NCg0K
PiANCj4gQ2hyaXN0b3BoZQ0KPiANCj4gPg0KPiA+Pg0KPiA+Pj4NCj4gPj4+ICAgZHJpdmVycy9w
Y2kvY29udHJvbGxlci9kd2MvcGNpLWxheWVyc2NhcGUtZXAuYyB8IDc2DQo+ID4+PiArKysrKysr
KysrKysrKysrKysrKy0tLS0tLQ0KPiA+Pj4gICAxIGZpbGUgY2hhbmdlZCwgNTggaW5zZXJ0aW9u
cygrKSwgMTggZGVsZXRpb25zKC0pDQo+ID4+Pg0KPiA+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
cGNpL2NvbnRyb2xsZXIvZHdjL3BjaS1sYXllcnNjYXBlLWVwLmMNCj4gPj4+IGIvZHJpdmVycy9w
Y2kvY29udHJvbGxlci9kd2MvcGNpLWxheWVyc2NhcGUtZXAuYw0KPiA+Pj4gaW5kZXggN2NhNWZl
OC4uMmE2NmYwNyAxMDA2NDQNCj4gPj4+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdj
L3BjaS1sYXllcnNjYXBlLWVwLmMNCj4gPj4+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIv
ZHdjL3BjaS1sYXllcnNjYXBlLWVwLmMNCj4gPj4+IEBAIC0yMCwyNyArMjAsMjkgQEANCj4gPj4+
DQo+ID4+PiAgICNkZWZpbmUgUENJRV9EQkkyX09GRlNFVAkJMHgxMDAwCS8qIERCSTIgYmFzZSBh
ZGRyZXNzKi8NCj4gPj4+DQo+ID4+PiAtc3RydWN0IGxzX3BjaWVfZXAgew0KPiA+Pj4gLQlzdHJ1
Y3QgZHdfcGNpZQkJKnBjaTsNCj4gPj4+IC0Jc3RydWN0IHBjaV9lcGNfZmVhdHVyZXMJKmxzX2Vw
YzsNCj4gPj4+ICsjZGVmaW5lIHRvX2xzX3BjaWVfZXAoeCkJZGV2X2dldF9kcnZkYXRhKCh4KS0+
ZGV2KQ0KPiA+Pj4gKw0KPiA+Pj4gK3N0cnVjdCBsc19wY2llX2VwX2RydmRhdGEgew0KPiA+Pj4g
Kwl1MzIJCQkJZnVuY19vZmZzZXQ7DQo+ID4+PiArCWNvbnN0IHN0cnVjdCBkd19wY2llX2VwX29w
cwkqb3BzOw0KPiA+Pj4gKwljb25zdCBzdHJ1Y3QgZHdfcGNpZV9vcHMJKmR3X3BjaWVfb3BzOw0K
PiA+Pj4gICB9Ow0KPiA+Pj4NCj4gPj4+IC0jZGVmaW5lIHRvX2xzX3BjaWVfZXAoeCkJZGV2X2dl
dF9kcnZkYXRhKCh4KS0+ZGV2KQ0KPiA+Pj4gK3N0cnVjdCBsc19wY2llX2VwIHsNCj4gPj4+ICsJ
c3RydWN0IGR3X3BjaWUJCQkqcGNpOw0KPiA+Pj4gKwlzdHJ1Y3QgcGNpX2VwY19mZWF0dXJlcwkJ
KmxzX2VwYzsNCj4gPj4+ICsJY29uc3Qgc3RydWN0IGxzX3BjaWVfZXBfZHJ2ZGF0YSAqZHJ2ZGF0
YTsgfTsNCj4gPj4+DQo+ID4+PiAgIHN0YXRpYyBpbnQgbHNfcGNpZV9lc3RhYmxpc2hfbGluayhz
dHJ1Y3QgZHdfcGNpZSAqcGNpKSAgew0KPiA+Pj4gICAJcmV0dXJuIDA7DQo+ID4+PiAgIH0NCj4g
Pj4+DQo+ID4+PiAtc3RhdGljIGNvbnN0IHN0cnVjdCBkd19wY2llX29wcyBsc19wY2llX2VwX29w
cyA9IHsNCj4gPj4+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGR3X3BjaWVfb3BzIGR3X2xzX3BjaWVf
ZXBfb3BzID0gew0KPiA+Pj4gICAJLnN0YXJ0X2xpbmsgPSBsc19wY2llX2VzdGFibGlzaF9saW5r
LCAgfTsNCj4gPj4+DQo+ID4+PiAtc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgbHNf
cGNpZV9lcF9vZl9tYXRjaFtdID0gew0KPiA+Pj4gLQl7IC5jb21wYXRpYmxlID0gImZzbCxscy1w
Y2llLWVwIix9LA0KPiA+Pj4gLQl7IH0sDQo+ID4+PiAtfTsNCj4gPj4+IC0NCj4gPj4+ICAgc3Rh
dGljIGNvbnN0IHN0cnVjdCBwY2lfZXBjX2ZlYXR1cmVzKg0KPiA+Pj4gbHNfcGNpZV9lcF9nZXRf
ZmVhdHVyZXMoc3RydWN0IGR3X3BjaWVfZXAgKmVwKSAgeyBAQCAtODIsMTAgKzg0LDQ0DQo+ID4+
PiBAQCBzdGF0aWMgaW50IGxzX3BjaWVfZXBfcmFpc2VfaXJxKHN0cnVjdCBkd19wY2llX2VwICpl
cCwgdTggZnVuY19ubywNCj4gPj4+ICAgCX0NCj4gPj4+ICAgfQ0KPiA+Pj4NCj4gPj4+IC1zdGF0
aWMgY29uc3Qgc3RydWN0IGR3X3BjaWVfZXBfb3BzIHBjaWVfZXBfb3BzID0gew0KPiA+Pj4gK3N0
YXRpYyB1bnNpZ25lZCBpbnQgbHNfcGNpZV9lcF9mdW5jX2NvbmZfc2VsZWN0KHN0cnVjdCBkd19w
Y2llX2VwICplcCwNCj4gPj4+ICsJCQkJCQl1OCBmdW5jX25vKQ0KPiA+Pj4gK3sNCj4gPj4+ICsJ
c3RydWN0IGR3X3BjaWUgKnBjaSA9IHRvX2R3X3BjaWVfZnJvbV9lcChlcCk7DQo+ID4+PiArCXN0
cnVjdCBsc19wY2llX2VwICpwY2llID0gdG9fbHNfcGNpZV9lcChwY2kpOw0KPiA+Pj4gKwl1OCBo
ZWFkZXJfdHlwZTsNCj4gPj4+ICsNCj4gPj4+ICsJaGVhZGVyX3R5cGUgPSBpb3JlYWQ4KHBjaS0+
ZGJpX2Jhc2UgKyBQQ0lfSEVBREVSX1RZUEUpOw0KPiA+Pj4gKw0KPiA+Pj4gKwlpZiAoaGVhZGVy
X3R5cGUgJiAoMSA8PCA3KSkNCj4gPj4+ICsJCXJldHVybiBwY2llLT5kcnZkYXRhLT5mdW5jX29m
ZnNldCAqIGZ1bmNfbm87DQo+ID4+PiArCWVsc2UNCj4gPj4+ICsJCXJldHVybiAwOw0KPiA+Pg0K
PiA+PiBJdCBsb29rcyBsaWtlIHRoZXJlIGlzbid0IGEgUENJIGRlZmluZSBmb3IgbXVsdGkgZnVu
Y3Rpb24sIHRoZQ0KPiA+PiBuZWFyZXN0IEkgY291bGQgZmluZCB3YXMgUENJX0hFQURFUl9UWVBF
X01VTFRJREVWSUNFIGluDQo+ID4+IGhvdHBsdWcvaWJtcGhwLmguIEEgY29tbWVudCBhYm92ZSB0
aGUgdGVzdCBtaWdodCBiZSBoZWxwZnVsIHRvIGV4cGxhaW4NCj4gdGhlIHRlc3QuDQo+ID4NCj4g
PiBZZXMsIEkgaGF2ZSBub3QgZmluZCB0aGUgUENJX0hFQURFUl9UWVBFX01VTFRJREVWSUNFIGRl
ZmluZS4gT0ssIEkNCj4gPiB3aWxsIGFkZCBUaGUgY29tbWVudHMgaW4gbmV4dCB2ZXJzaW9uIHBh
dGNoLg0KPiA+DQo+ID4+DQo+ID4+IEFzIHRoZSBsc19wY2llX2VwX2RydmRhdGEgc3RydWN0dXJl
cyBhcmUgc3RhdGljLCB0aGUgdW5zZXQNCj4gPj4gLmZ1bmNfb2Zmc2V0IHdpbGwgYmUgaW5pdGlh
bGlzZWQgdG8gMCwgc28geW91IGNvdWxkIGp1c3QgZHJvcCB0aGUgdGVzdCBhYm92ZS4NCj4gPg0K
PiA+IE9LLCB0aGFua3MNCj4gPg0KPiA+Pg0KPiA+PiBIb3dldmVyIHNvbWV0aGluZyB0byB0aGUg
ZWZmZWN0IG9mIHRoZSBmb2xsb3dpbmcgbWF5IGhlbHAgc3BvdA0KPiA+PiBtaXNjb25maWd1cmF0
aW9uOg0KPiA+Pg0KPiA+PiBXQVJOX09OKGZ1bmNfbm8gJiYgIXBjaWUtPmRydmRhdGEtPmZ1bmNf
b2Zmc2V0KTsgcmV0dXJuDQo+ID4+IHBjaWUtPmRydmRhdGEtPmZ1bmNfb2Zmc2V0ICogZnVuY19u
bzsNCj4gPg0KPiA+IFRoYW5rcyBhIGxvdCwgdGhpcyBsb29rcyBiZXR0ZXIuDQo+ID4NCj4gPj4N
Cj4gPj4gVGhlIFdBUk4gaXMgcHJvYmFibHkgcXVpdGUgdXNlZnVsIGFzIGlmIHlvdSBhcmUgYXR0
ZW1wdGluZyB0byB1c2UNCj4gPj4gbm9uLXplcm8gZnVuY3Rpb25zIGFuZCBmdW5jX29mZnNldCBp
c24ndCBzZXQgLSB0aGVuIHRoaW5ncyBtYXkgYXBwZWFyDQo+ID4+IHRvIHdvcmsgbm9ybWFsbHkg
YnV0IGFjdHVhbGx5IHdpbGwgYnJlYWsgaG9ycmlibHkuDQo+ID4NCj4gPiBnb3QgaXQsIHRoYW5r
cy4NCj4gPg0KPiA+Pg0KPiA+PiBUaGFua3MsDQo+ID4+DQo+ID4+IEFuZHJldyBNdXJyYXkNCj4g
Pj4NCj4gPj4+ICt9DQo+ID4+PiArDQo+ID4+PiArc3RhdGljIGNvbnN0IHN0cnVjdCBkd19wY2ll
X2VwX29wcyBsc19wY2llX2VwX29wcyA9IHsNCj4gPj4+ICAgCS5lcF9pbml0ID0gbHNfcGNpZV9l
cF9pbml0LA0KPiA+Pj4gICAJLnJhaXNlX2lycSA9IGxzX3BjaWVfZXBfcmFpc2VfaXJxLA0KPiA+
Pj4gICAJLmdldF9mZWF0dXJlcyA9IGxzX3BjaWVfZXBfZ2V0X2ZlYXR1cmVzLA0KPiA+Pj4gKwku
ZnVuY19jb25mX3NlbGVjdCA9IGxzX3BjaWVfZXBfZnVuY19jb25mX3NlbGVjdCwgfTsNCj4gPj4+
ICsNCj4gPj4+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGxzX3BjaWVfZXBfZHJ2ZGF0YSBsczFfZXBf
ZHJ2ZGF0YSA9IHsNCj4gPj4+ICsJLm9wcyA9ICZsc19wY2llX2VwX29wcywNCj4gPj4+ICsJLmR3
X3BjaWVfb3BzID0gJmR3X2xzX3BjaWVfZXBfb3BzLCB9Ow0KPiA+Pj4gKw0KPiA+Pj4gK3N0YXRp
YyBjb25zdCBzdHJ1Y3QgbHNfcGNpZV9lcF9kcnZkYXRhIGxzMl9lcF9kcnZkYXRhID0gew0KPiA+
Pj4gKwkuZnVuY19vZmZzZXQgPSAweDIwMDAwLA0KPiA+Pj4gKwkub3BzID0gJmxzX3BjaWVfZXBf
b3BzLA0KPiA+Pj4gKwkuZHdfcGNpZV9vcHMgPSAmZHdfbHNfcGNpZV9lcF9vcHMsIH07DQo+ID4+
PiArDQo+ID4+PiArc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgbHNfcGNpZV9lcF9v
Zl9tYXRjaFtdID0gew0KPiA+Pj4gKwl7IC5jb21wYXRpYmxlID0gImZzbCxsczEwNDZhLXBjaWUt
ZXAiLCAuZGF0YSA9ICZsczFfZXBfZHJ2ZGF0YSB9LA0KPiA+Pj4gKwl7IC5jb21wYXRpYmxlID0g
ImZzbCxsczEwODhhLXBjaWUtZXAiLCAuZGF0YSA9ICZsczJfZXBfZHJ2ZGF0YSB9LA0KPiA+Pj4g
Kwl7IC5jb21wYXRpYmxlID0gImZzbCxsczIwODhhLXBjaWUtZXAiLCAuZGF0YSA9ICZsczJfZXBf
ZHJ2ZGF0YSB9LA0KPiA+Pj4gKwl7IH0sDQo+ID4+PiAgIH07DQo+ID4+Pg0KPiA+Pj4gICBzdGF0
aWMgaW50IF9faW5pdCBsc19hZGRfcGNpZV9lcChzdHJ1Y3QgbHNfcGNpZV9lcCAqcGNpZSwgQEAg
LTk4LDcNCj4gPj4+ICsxMzQsNyBAQCBzdGF0aWMgaW50IF9faW5pdCBsc19hZGRfcGNpZV9lcChz
dHJ1Y3QgbHNfcGNpZV9lcCAqcGNpZSwNCj4gPj4+ICAgCWludCByZXQ7DQo+ID4+Pg0KPiA+Pj4g
ICAJZXAgPSAmcGNpLT5lcDsNCj4gPj4+IC0JZXAtPm9wcyA9ICZwY2llX2VwX29wczsNCj4gPj4+
ICsJZXAtPm9wcyA9IHBjaWUtPmRydmRhdGEtPm9wczsNCj4gPj4+DQo+ID4+PiAgIAlyZXMgPSBw
bGF0Zm9ybV9nZXRfcmVzb3VyY2VfYnluYW1lKHBkZXYsIElPUkVTT1VSQ0VfTUVNLA0KPiA+PiAi
YWRkcl9zcGFjZSIpOw0KPiA+Pj4gICAJaWYgKCFyZXMpDQo+ID4+PiBAQCAtMTM3LDE0ICsxNzMs
MTEgQEAgc3RhdGljIGludCBfX2luaXQgbHNfcGNpZV9lcF9wcm9iZShzdHJ1Y3QNCj4gPj4gcGxh
dGZvcm1fZGV2aWNlICpwZGV2KQ0KPiA+Pj4gICAJaWYgKCFsc19lcGMpDQo+ID4+PiAgIAkJcmV0
dXJuIC1FTk9NRU07DQo+ID4+Pg0KPiA+Pj4gLQlkYmlfYmFzZSA9IHBsYXRmb3JtX2dldF9yZXNv
dXJjZV9ieW5hbWUocGRldiwNCj4gSU9SRVNPVVJDRV9NRU0sDQo+ID4+ICJyZWdzIik7DQo+ID4+
PiAtCXBjaS0+ZGJpX2Jhc2UgPSBkZXZtX3BjaV9yZW1hcF9jZmdfcmVzb3VyY2UoZGV2LCBkYmlf
YmFzZSk7DQo+ID4+PiAtCWlmIChJU19FUlIocGNpLT5kYmlfYmFzZSkpDQo+ID4+PiAtCQlyZXR1
cm4gUFRSX0VSUihwY2ktPmRiaV9iYXNlKTsNCj4gPj4+ICsJcGNpZS0+ZHJ2ZGF0YSA9IG9mX2Rl
dmljZV9nZXRfbWF0Y2hfZGF0YShkZXYpOw0KPiA+Pj4NCj4gPj4+IC0JcGNpLT5kYmlfYmFzZTIg
PSBwY2ktPmRiaV9iYXNlICsgUENJRV9EQkkyX09GRlNFVDsNCj4gPj4+ICAgCXBjaS0+ZGV2ID0g
ZGV2Ow0KPiA+Pj4gLQlwY2ktPm9wcyA9ICZsc19wY2llX2VwX29wczsNCj4gPj4+ICsJcGNpLT5v
cHMgPSBwY2llLT5kcnZkYXRhLT5kd19wY2llX29wczsNCj4gPj4+ICsNCj4gPj4+ICAgCXBjaWUt
PnBjaSA9IHBjaTsNCj4gPj4+DQo+ID4+PiAgIAlsc19lcGMtPmxpbmt1cF9ub3RpZmllciA9IGZh
bHNlLA0KPiA+Pj4gQEAgLTE1Miw2ICsxODUsMTMgQEAgc3RhdGljIGludCBfX2luaXQgbHNfcGNp
ZV9lcF9wcm9iZShzdHJ1Y3QNCj4gPj4+IHBsYXRmb3JtX2RldmljZSAqcGRldikNCj4gPj4+DQo+
ID4+PiAgIAlwY2llLT5sc19lcGMgPSBsc19lcGM7DQo+ID4+Pg0KPiA+Pj4gKwlkYmlfYmFzZSA9
IHBsYXRmb3JtX2dldF9yZXNvdXJjZV9ieW5hbWUocGRldiwNCj4gSU9SRVNPVVJDRV9NRU0sDQo+
ID4+ICJyZWdzIik7DQo+ID4+PiArCXBjaS0+ZGJpX2Jhc2UgPSBkZXZtX3BjaV9yZW1hcF9jZmdf
cmVzb3VyY2UoZGV2LCBkYmlfYmFzZSk7DQo+ID4+PiArCWlmIChJU19FUlIocGNpLT5kYmlfYmFz
ZSkpDQo+ID4+PiArCQlyZXR1cm4gUFRSX0VSUihwY2ktPmRiaV9iYXNlKTsNCj4gPj4+ICsNCj4g
Pj4+ICsJcGNpLT5kYmlfYmFzZTIgPSBwY2ktPmRiaV9iYXNlICsgUENJRV9EQkkyX09GRlNFVDsN
Cj4gPj4+ICsNCj4gPj4+ICAgCXBsYXRmb3JtX3NldF9kcnZkYXRhKHBkZXYsIHBjaWUpOw0KPiA+
Pj4NCj4gPj4+ICAgCXJldCA9IGxzX2FkZF9wY2llX2VwKHBjaWUsIHBkZXYpOw0KPiA+Pj4gLS0N
Cj4gPj4+IDIuOS41DQo+ID4+Pg0KPiANCj4gLS0tDQo+IEwnYWJzZW5jZSBkZSB2aXJ1cyBkYW5z
IGNlIGNvdXJyaWVyIMOpbGVjdHJvbmlxdWUgYSDDqXTDqSB2w6lyaWZpw6llIHBhciBsZSBsb2dp
Y2llbA0KPiBhbnRpdmlydXMgQXZhc3QuDQo+IGh0dHBzOi8vZXVyMDEuc2FmZWxpbmtzLnByb3Rl
Y3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRwcyUzQSUyRiUyRnd3dy4NCj4gYXZhc3QuY29tJTJG
YW50aXZpcnVzJmFtcDtkYXRhPTAyJTdDMDElN0N4aWFvd2VpLmJhbyU0MG54cC5jb20lNw0KPiBD
MWJlZmU5YTY3YzgwNDZmOTUzNWUwOGQ3Mjg1ZWFhYjYlN0M2ODZlYTFkM2JjMmI0YzZmYTkyY2Q5
OWM1YzMNCj4gMDE2MzUlN0MwJTdDMCU3QzYzNzAyMjI1OTM4NzEzOTAyMCZhbXA7c2RhdGE9SkFZ
ZHM3WCUyRkhWeGd0cmcNCj4gZSUyRiUyRnZuUDg0emRiMnlSZVhjY3RRVWlTTEMxMUklM0QmYW1w
O3Jlc2VydmVkPTANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
