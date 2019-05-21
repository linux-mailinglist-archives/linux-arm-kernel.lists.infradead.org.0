Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E794824F83
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 15:00:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=icRvj+R+HXShkIrIjAxvvvRt/iWsoiHqDkMjl9mn1nM=; b=SZ0u/VZaPFdSOQ
	5CHSNCm76eodOg3uHfTgnyBY9QK1PcTAPCsvdwyaC/ZJ+Y8+MTP8rk66zeSAcDCLfuyY+zpjSAlar
	2WPjobrA3S+KpqaSp2oB3c8AMCJPkFmJqSx6JWrXl1Sww7eN5KdaPTzN0NXnUICWpVyzxO9zyZu5X
	2nPeYGVQRxGrNbBBToqbKnSvPXUqEWoog5HDOo9aumYm4tyLxP6Gqo96LymokwP2Mjd62xQgj4A/c
	LnTZw2adPwSBNuW3oOJg93i/6oYPINSp6DtjF2aX/smH3dM4bVyLQmx4FEpTgPVhDVozvsh6PMGS8
	CQ2e6nWf4H53AnWEn/aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT4Nm-00043I-Pw; Tue, 21 May 2019 13:00:42 +0000
Received: from mail-ve1eur01on0621.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::621]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT4Nf-00042b-VW
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 13:00:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I/ZV8p8q9Aqxs67uDwsgEY4TuldAmy4Jpb+TOrDqtkM=;
 b=HhjylbEcnZsV1TIlOzMCf/2gq4NdkQ8Y+anIrGKzXdQNV9UI+cVjUfLS0THt+gOdsV/q9O2LC1LLCkC/FR+v02W6K01j1CSv6iF6TclrN7/MEJ3rV6/DjCuY433J6ehwqPWe6kP+VmIkgZ/qeD5Z/5vduEqCxDmUlvQnL0ACFwo=
Received: from AM6PR04MB4357.eurprd04.prod.outlook.com (52.135.167.33) by
 AM6PR04MB5205.eurprd04.prod.outlook.com (20.177.35.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.15; Tue, 21 May 2019 13:00:29 +0000
Received: from AM6PR04MB4357.eurprd04.prod.outlook.com
 ([fe80::d877:33b5:bfa6:30ce]) by AM6PR04MB4357.eurprd04.prod.outlook.com
 ([fe80::d877:33b5:bfa6:30ce%6]) with mapi id 15.20.1900.020; Tue, 21 May 2019
 13:00:29 +0000
From: Chuanhua Han <chuanhua.han@nxp.com>
To: Leo Li <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Subject: RE: [EXT] Re: [PATCH] arm64: dts: ls1028a: fix watchdog device node
Thread-Topic: [EXT] Re: [PATCH] arm64: dts: ls1028a: fix watchdog device node
Thread-Index: AQHVBjWLU5tDmMzveEaz3RlKVqbc5aZupocAgAA6wsCAAQpVgIAFsPwA
Date: Tue, 21 May 2019 13:00:29 +0000
Message-ID: <AM6PR04MB435758E1498B6A2BE0C0ACE397070@AM6PR04MB4357.eurprd04.prod.outlook.com>
References: <20190509070657.18281-1-chuanhua.han@nxp.com>
 <20190517023728.GA15856@dragon>
 <AM6PR04MB4357C78FCEBA1B00AA42ED2E970B0@AM6PR04MB4357.eurprd04.prod.outlook.com>
 <AM6PR04MB586341334E62A663EE5E8BD18F0B0@AM6PR04MB5863.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB586341334E62A663EE5E8BD18F0B0@AM6PR04MB5863.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=chuanhua.han@nxp.com; 
x-originating-ip: [92.121.36.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 211504f5-a86b-4e82-27eb-08d6ddec4d3a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB5205; 
x-ms-traffictypediagnostic: AM6PR04MB5205:
x-microsoft-antispam-prvs: <AM6PR04MB520573140B6B0B8E41B24E5597070@AM6PR04MB5205.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1332;
x-forefront-prvs: 0044C17179
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(346002)(376002)(136003)(39860400002)(13464003)(199004)(189003)(110136005)(54906003)(7736002)(316002)(55016002)(66476007)(66556008)(14444005)(256004)(446003)(76176011)(305945005)(14454004)(6436002)(7696005)(102836004)(53546011)(6506007)(53936002)(66066001)(5660300002)(99286004)(68736007)(52536014)(2906002)(6246003)(74316002)(44832011)(8676002)(86362001)(4326008)(81166006)(71200400001)(486006)(8936002)(71190400001)(81156014)(25786009)(33656002)(6116002)(229853002)(3846002)(66446008)(476003)(66946007)(11346002)(9686003)(76116006)(64756008)(73956011)(26005)(186003)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB5205;
 H:AM6PR04MB4357.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 43bmUm8Ez0yHTrgxShDD6tmbYUcyhq7uJJ2QfbuHppPK2eXK73wp9cj2clcZ8Ffw/TY2TdwdAg5SXIy4j99Q7CfJbr+C/dCx81RhEg2mbrVKhp2qJ3lIVm1phSazsK44wpCB94jyc9u9gNtr1UG0W6anL4uo/nCANqwWCpRE+rsaInKjyNWRivx0JiEOBmmhza1AAwb5i7q8VFvsDUJ3PuNPOch8JCLWlqSBJ7jo9RZPY+j2Z/3syahyA10pNoLJw6aQ2Ix0LRSjEdLe1QWoGuB+GhIk//GKQ2cAhbTOVIZF+jmr50cBbAR8yfyezzQHqXEnGHlc78xsx0eYtai14w77eNXj9O5Hkyw3t/aQd5oD4bzfYGuJQWNAVvr4+UA8w6rPoisJorHLXaujKN5aFz65lZU7X5inqDtQLcL/Tqg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 211504f5-a86b-4e82-27eb-08d6ddec4d3a
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2019 13:00:29.5502 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5205
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_060036_042527_998E8B6F 
X-CRM114-Status: GOOD (  18.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:621 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Ying Zhang <ying.zhang22455@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTGVvIExpDQo+IFNlbnQ6
IDIwMTnE6jXUwjE4yNUgNjowMQ0KPiBUbzogQ2h1YW5odWEgSGFuIDxjaHVhbmh1YS5oYW5Abnhw
LmNvbT47IFNoYXduIEd1bw0KPiA8c2hhd25ndW9Aa2VybmVsLm9yZz4NCj4gQ2M6IG1hcmsucnV0
bGFuZEBhcm0uY29tOyBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7DQo+IGRl
dmljZXRyZWVAdmdlci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBZ
aW5nIFpoYW5nDQo+IDx5aW5nLnpoYW5nMjI0NTVAbnhwLmNvbT4NCj4gU3ViamVjdDogUkU6IFtF
WFRdIFJlOiBbUEFUQ0hdIGFybTY0OiBkdHM6IGxzMTAyOGE6IGZpeCB3YXRjaGRvZyBkZXZpY2Ug
bm9kZQ0KPiANCj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJv
bTogQ2h1YW5odWEgSGFuDQo+ID4gU2VudDogRnJpZGF5LCBNYXkgMTcsIDIwMTkgMToxMSBBTQ0K
PiA+IFRvOiBTaGF3biBHdW8gPHNoYXduZ3VvQGtlcm5lbC5vcmc+DQo+ID4gQ2M6IExlbyBMaSA8
bGVveWFuZy5saUBueHAuY29tPjsgbWFyay5ydXRsYW5kQGFybS5jb207IGxpbnV4LWFybS0NCj4g
PiBrZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsgZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7
IGxpbnV4LQ0KPiA+IGtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IFlpbmcgWmhhbmcgPHlpbmcuemhh
bmcyMjQ1NUBueHAuY29tPg0KPiA+IFN1YmplY3Q6IFJFOiBbRVhUXSBSZTogW1BBVENIXSBhcm02
NDogZHRzOiBsczEwMjhhOiBmaXggd2F0Y2hkb2cNCj4gPiBkZXZpY2Ugbm9kZQ0KPiA+DQo+ID4N
Cj4gPg0KPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+IEZyb206IFNoYXdu
IEd1byA8c2hhd25ndW9Aa2VybmVsLm9yZz4NCj4gPiA+IFNlbnQ6IDIwMTnE6jXUwjE3yNUgMTA6
MzgNCj4gPiA+IFRvOiBDaHVhbmh1YSBIYW4gPGNodWFuaHVhLmhhbkBueHAuY29tPg0KPiA+ID4g
Q2M6IExlbyBMaSA8bGVveWFuZy5saUBueHAuY29tPjsgbWFyay5ydXRsYW5kQGFybS5jb207DQo+
ID4gPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7IGRldmljZXRyZWVAdmdl
ci5rZXJuZWwub3JnOw0KPiA+ID4gbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgWWluZyBa
aGFuZyA8eWluZy56aGFuZzIyNDU1QG54cC5jb20+DQo+ID4gPiBTdWJqZWN0OiBbRVhUXSBSZTog
W1BBVENIXSBhcm02NDogZHRzOiBsczEwMjhhOiBmaXggd2F0Y2hkb2cgZGV2aWNlDQo+ID4gPiBu
b2RlDQo+ID4gPg0KPiA+ID4gQ2F1dGlvbjogRVhUIEVtYWlsDQo+ID4gPg0KPiA+ID4gT24gVGh1
LCBNYXkgMDksIDIwMTkgYXQgMDM6MDY6NTdQTSArMDgwMCwgQ2h1YW5odWEgSGFuIHdyb3RlOg0K
PiA+ID4gPiBsczEwMjhhIHBsYXRmb3JtIHVzZXMgc3A4MDUgd2F0Y2hkb2csIGFuZCB1c2UgMS8x
NiBwbGF0Zm9ybSBjbG9jaw0KPiA+ID4gPiBhcyB0aW1lciBjbG9jaywgdGhpcyBwYXRjaCBmaXgg
ZGV2aWNlIHRyZWUgbm9kZS4NCj4gPiA+ID4NCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogWmhhbmcg
WWluZy0yMjQ1NSA8eWluZy56aGFuZzIyNDU1QG54cC5jb20+DQo+ID4gPiA+IFNpZ25lZC1vZmYt
Ynk6IENodWFuaHVhIEhhbiA8Y2h1YW5odWEuaGFuQG54cC5jb20+DQo+ID4gPiA+IC0tLQ0KPiA+
ID4gPiAgLi4uL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4YS5kdHNpIHwgMTkN
Cj4gPiA+ID4gKysrKysrKysrKysrLS0tLS0tLQ0KPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDEy
IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pDQo+ID4gPiA+DQo+ID4gPiA+IGRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4YS5kdHNpDQo+ID4g
PiA+IGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEuZHRzaQ0KPiA+
ID4gPiBpbmRleCBiMDQ1ODEyNDlmMGIuLjE1MTBiMTg1ODI0NiAxMDA2NDQNCj4gPiA+ID4gLS0t
IGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEuZHRzaQ0KPiA+ID4g
PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4YS5kdHNpDQo+
ID4gPiA+IEBAIC0yODUsMTMgKzI4NSwxOCBAQA0KPiA+ID4gPiAgICAgICAgICAgICAgICAgICAg
ICAgI2ludGVycnVwdC1jZWxscyA9IDwyPjsNCj4gPiA+ID4gICAgICAgICAgICAgICB9Ow0KPiA+
ID4gPg0KPiA+ID4gPiAtICAgICAgICAgICAgIHdkb2cwOiB3YXRjaGRvZ0AyM2MwMDAwIHsNCj4g
PiA+ID4gLSAgICAgICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiZnNsLGxzMTAyOGEtd2R0
IiwgImZzbCxpbXgyMS13ZHQiOw0KPiA+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgcmVnID0g
PDB4MCAweDIzYzAwMDAgMHgwIDB4MTAwMDA+Ow0KPiA+ID4gPiAtICAgICAgICAgICAgICAgICAg
ICAgaW50ZXJydXB0cyA9IDxHSUNfU1BJIDU5DQo+IElSUV9UWVBFX0xFVkVMX0hJR0g+Ow0KPiA+
ID4gPiAtICAgICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjbG9ja2dlbiA0IDE+Ow0KPiA+
ID4gPiAtICAgICAgICAgICAgICAgICAgICAgYmlnLWVuZGlhbjsNCj4gPiA+ID4gLSAgICAgICAg
ICAgICAgICAgICAgIHN0YXR1cyA9ICJkaXNhYmxlZCI7DQo+ID4gPiA+ICsgICAgICAgICAgICAg
Y2x1c3RlcjFfY29yZTBfd2F0Y2hkb2c6IHdkdEBjMDAwMDAwIHsNCj4gPiA+DQo+ID4gPiBLZWVw
ICd3YXRjaGRvZycgYXMgdGhlIG5vZGUgbmFtZSwNCj4gPiBUaGFua3MgZm9yIHlvdXIgcmVwbGF5
DQo+ID4gRG8geW91IG1lYW4gcmVwbGFjZSB0aGUgoa53ZHShryB3aXRoIKGud2F0Y2hkb2ehrz8N
Cj4gPiBhbmQga2VlcCBub2RlcyBzb3J0IGluIHVuaXQtYWRkcmVzcy4NCj4gPiBXaGF0IGRvZXMg
dGhpcyBtZWFuPw0KPiANCj4gVGhhdCBtZWFucyBvcmRlciB0aGUgbm9kZXMgYnkgdGhlIGFkZHJl
c3NlcyAoZS5nLiBjMDAwMDAwLCBjMDEwMDAwKQ0KVGhlIGN1cnJlbnQgb3JkZXIgaXMgY29ycmVj
dKOoVGhlIGZpcnN0IGlzIGMwMDAwMDAsIHRoZW4gYzAwMDAwMKOpLg0KPiANCj4gPiA+DQo+ID4g
PiBTaGF3bg0KPiA+ID4NCj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIGNvbXBhdGlibGUg
PSAiYXJtLHNwODA1IiwgImFybSxwcmltZWNlbGwiOw0KPiA+ID4gPiArICAgICAgICAgICAgICAg
ICAgICAgcmVnID0gPDB4MCAweGMwMDAwMDAgMHgwIDB4MTAwMD47DQo+ID4gPiA+ICsgICAgICAg
ICAgICAgICAgICAgICBjbG9ja3MgPSA8JmNsb2NrZ2VuIDQgMTU+LCA8JmNsb2NrZ2VuIDQgMTU+
Ow0KPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgY2xvY2stbmFtZXMgPSAiYXBiX3BjbGsi
LCAid2RvZ19jbGsiOw0KPiA+ID4gPiArICAgICAgICAgICAgIH07DQo+ID4gPiA+ICsNCj4gPiA+
ID4gKyAgICAgICAgICAgICBjbHVzdGVyMV9jb3JlMV93YXRjaGRvZzogd2R0QGMwMTAwMDAgew0K
PiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJhcm0sc3A4MDUiLCAi
YXJtLHByaW1lY2VsbCI7DQo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MHgw
IDB4YzAxMDAwMCAweDAgMHgxMDAwPjsNCj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIGNs
b2NrcyA9IDwmY2xvY2tnZW4gNCAxNT4sIDwmY2xvY2tnZW4gNCAxNT47DQo+ID4gPiA+ICsgICAg
ICAgICAgICAgICAgICAgICBjbG9jay1uYW1lcyA9ICJhcGJfcGNsayIsICJ3ZG9nX2NsayI7DQo+
ID4gPiA+ICAgICAgICAgICAgICAgfTsNCj4gPiA+ID4NCj4gPiA+ID4gICAgICAgICAgICAgICBz
YXRhOiBzYXRhQDMyMDAwMDAgew0KPiA+ID4gPiAtLQ0KPiA+ID4gPiAyLjE3LjENCj4gPiA+ID4N
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
