Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 616AB11673B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 08:00:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JQx/cLUT9YkSmvY71rOO//8aUPzy/D9RatpJSd93GRI=; b=mzdfS6H7syyCve
	6MC3ZTtzWP/Ad9lalAOiwcRrCeaSyQROzpDFcxjeQ5Rnt1Kt0Y/creHk9em+RgPvtfzasf8PmBADd
	0EBEJv8aVMBdDdq8S0njYO1XvjsBHfmfjfn/MlN1wF4GhcQjZ9KVb04tzYA3+yXqGo5gqhld+3PB4
	3MotZz5hiwNxrgkw+py94UNhDaHx0v/Bd5zPMmN3rWgqTSwYQNQ9wenzdoyw7/ryZyl86d/AuqjO6
	F+eJhB3qd59trz9nju0NYtjqQXhaEhcJYWvjFDA/lSxaRvJIQ5NJKnlQ6mJw8Mrc5OHzXclb2zbso
	1RqAboqezv2ROmEHxaZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieD1o-0004kR-O3; Mon, 09 Dec 2019 07:00:20 +0000
Received: from mail-db5eur03on0605.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::605]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieD1f-0004dG-EC
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 07:00:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IrfbRPMWgzJG/GCh5CuJnRzHs0TQFMM2BabWQGql8YVbUblI2UEf1vlg60I0D/hDJCh3EsvpbCvJmSABUO6ng9UXB/06HdWGW6Oe4rLXEa2cRXSjnD0TOC1Dc5Y2scBEfVBpH36p2beR4yzd7FjLvmQh0vJx8yPfpxt8s10Goa/mNfzQV8udEx0Jr4EjDdWXENBWzFCirxpCkjS/c43wCfMaYUzmJggeXpE13C/fopAZcfugxgv+IwMt17d9pwY2+0XxVcYhEs9YsPRmJ/u1Ik6DqQFCyaHzr1Y2R28+Jk3iD+48G8CBqN7OGVZij/Q4Wzv4d01YoiFRpEOxWTqe7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qV/2KOUuY+2V+N2SuyLsUBBl1GAOoGYbkn2wyFpN1q4=;
 b=Y2TpXMaz2ncTU/FEtZndFyCO8HbpYnFyIGKs/1ZGYqYaEEjZj2ubACf5JQX1+cyyKWkofYUmNHldksmrxH7haprqyrzzuH4osAV/PtkTuf5BBGGYNORsvnM20J2wtffpv29ngv2ibfffRUioX28Tn4MT5oVyTmCmAJqUfoMDDTJxRvnd6C+ChPsgi9iwz/BcSvERpbwcM1EavzjR8qpE+v9Twuh4UqL0gKcV4qiVk2P7jf96aNxLqZDjK75zKKVNSJnj8bkAZlXw29U0DodpR1uzZeTzZ2dx3wSS/j50zYkCjqWlAzrduRfwglaAit3p9CsXS9bFK9lo6P4Uygawzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qV/2KOUuY+2V+N2SuyLsUBBl1GAOoGYbkn2wyFpN1q4=;
 b=p5cHXdoXV3evuuJwcszCBiLLHDBwHW1xOn32x5RdfsBywqXJm+Htr06jlJiaO9vd5fIj4MQgogeqHppXkfPUnV9wVotOeZvQfh/3Dn9mqsGu3UCaSHeR4vLLNfJW5F9InVZLQkEM8XIH/AX8tMDTrSeHyQ5VOTg+qio8JHwQMLY=
Received: from AM5PR04MB3299.eurprd04.prod.outlook.com (10.173.255.158) by
 AM5PR04MB3026.eurprd04.prod.outlook.com (10.175.231.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.12; Mon, 9 Dec 2019 07:00:01 +0000
Received: from AM5PR04MB3299.eurprd04.prod.outlook.com
 ([fe80::a8a6:8d0d:aca4:7bf1]) by AM5PR04MB3299.eurprd04.prod.outlook.com
 ([fe80::a8a6:8d0d:aca4:7bf1%7]) with mapi id 15.20.2516.018; Mon, 9 Dec 2019
 07:00:01 +0000
From: Xiaowei Bao <xiaowei.bao@nxp.com>
To: Laurentiu Tudor <laurentiu.tudor@nxp.com>, Robin Murphy
 <robin.murphy@arm.com>, Marc Zyngier <maz@kernel.org>
Subject: RE: [PATCH] PCI: layerscape: Add the SRIOV support in host side
Thread-Topic: [PATCH] PCI: layerscape: Add the SRIOV support in host side
Thread-Index: AQHVqP2nw3AoM5GAtUqPe+h1Ib8VVaemy2EAgADUbVCAAK4bgIAAOn2AgADDy0CAAhs3gIAGAcrw
Date: Mon, 9 Dec 2019 07:00:01 +0000
Message-ID: <AM5PR04MB3299ACDE6BA3AFBFBFFF7D3AF5580@AM5PR04MB3299.eurprd04.prod.outlook.com>
References: <20191202104506.27916-1-xiaowei.bao@nxp.com>
 <606a00a2edcf077aa868319e0daa4dbc@www.loen.fr>
 <AM5PR04MB3299A5A504DEFEF3E137A27CF5420@AM5PR04MB3299.eurprd04.prod.outlook.com>
 <3dcdf44eb76390730658e3f4d932620c@www.loen.fr>
 <8f56c2d9-ab01-a91e-902f-a61def0e8ce8@arm.com>
 <AM5PR04MB3299BFC34A4666B7A9C12B13F55D0@AM5PR04MB3299.eurprd04.prod.outlook.com>
 <VI1PR04MB5134A689AEA8C49BFC7F8356EC5C0@VI1PR04MB5134.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB5134A689AEA8C49BFC7F8356EC5C0@VI1PR04MB5134.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xiaowei.bao@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 88c13b91-b95e-4496-26ef-08d77c756935
x-ms-traffictypediagnostic: AM5PR04MB3026:|AM5PR04MB3026:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM5PR04MB3026EB1F254D04735BAA6B66F5580@AM5PR04MB3026.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 02462830BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(376002)(136003)(366004)(346002)(13464003)(189003)(199004)(74316002)(316002)(52536014)(2906002)(7416002)(55016002)(44832011)(8936002)(9686003)(305945005)(33656002)(99286004)(4326008)(81166006)(81156014)(6506007)(8676002)(76116006)(186003)(53546011)(66446008)(64756008)(66556008)(66946007)(66476007)(102836004)(966005)(478600001)(54906003)(229853002)(110136005)(26005)(86362001)(76176011)(7696005)(71200400001)(71190400001)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR04MB3026;
 H:AM5PR04MB3299.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iYLJyZc+kjbSzyfWzeGD28J6UbXYCLpRMiax1GfOIbLqLdxp1RDPaWiOon/zLstxamfxvP02nqM9QnzxvCma3updsra8d+SwHcGxSZRx2bMyeGLB3vmiz/LUaz/jS4Gtgv0JliB0Ls63y9h772qR72nvC53s2M/rvp2MPAcux0HwQYJCH1EZ5zbXjs8O3qvWTaVfxibgIqLPjc0baWtfIptmPel0jr1jItegwegktmxuPgDRn8q7bm1BV4AMPHs1WDSuFqhSmLPTjbTR14L7pfXcKXe0cKlONbgrXSWCQEfMCc0q+UEpob9KxGVwHw90lRM1LrX72B9c4a+/wiMLUDttO3PjsoGRGxWrq+Le7NN3bCOPBjDxhqXAwug1QOx+tlyi9dQhW1qBTquaQaszIQFmXum1YP0ZKW2WUbbQGo78nxoo8mLPfBVbW/bGdFFlENN4YR3MTSh0E/f/gA+yN8Jby+K7fKmAIZaLU5DvbyhL009KAADvH/409VhSpQjF7L0qEJk058YHGt4BhxgcamO2tNGp4pgb5OILVfukft4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 88c13b91-b95e-4496-26ef-08d77c756935
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2019 07:00:01.3393 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A8JXwVSBD1zo740+KFu5J0X6BQX0AupZcNuv5R14OaUpkR1oLP7e703nz/uF127FpoJeDluDJwi/8/OGbu2PTw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR04MB3026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_230011_633743_B9B108B5 
X-CRM114-Status: GOOD (  31.18  )
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0a:0:0:0:605 listed in]
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
 1.9 FORGED_SPF_HELO        No description available.
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
Cc: Roy Zang <roy.zang@nxp.com>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "Z.q. Hou" <zhiqiang.hou@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Diana Madalina Craciun <diana.craciun@nxp.com>,
 "M.h. Lian" <minghuan.lian@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "andrew.murray@arm.com" <andrew.murray@arm.com>,
 "frowand.list@gmail.com" <frowand.list@gmail.com>,
 Mingkai Hu <mingkai.hu@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTGF1cmVudGl1IFR1ZG9y
IDxsYXVyZW50aXUudHVkb3JAbnhwLmNvbT4NCj4gU2VudDogMjAxOeW5tDEy5pyINeaXpSAxOTox
MQ0KPiBUbzogWGlhb3dlaSBCYW8gPHhpYW93ZWkuYmFvQG54cC5jb20+OyBSb2JpbiBNdXJwaHkN
Cj4gPHJvYmluLm11cnBoeUBhcm0uY29tPjsgTWFyYyBaeW5naWVyIDxtYXpAa2VybmVsLm9yZz4N
Cj4gQ2M6IFJveSBaYW5nIDxyb3kuemFuZ0BueHAuY29tPjsgbG9yZW56by5waWVyYWxpc2lAYXJt
LmNvbTsNCj4gZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LXBjaUB2Z2VyLmtlcm5l
bC5vcmc7IFoucS4gSG91DQo+IDx6aGlxaWFuZy5ob3VAbnhwLmNvbT47IGxpbnV4LWtlcm5lbEB2
Z2VyLmtlcm5lbC5vcmc7IE0uaC4gTGlhbg0KPiA8bWluZ2h1YW4ubGlhbkBueHAuY29tPjsgcm9i
aCtkdEBrZXJuZWwub3JnOyBNaW5na2FpIEh1DQo+IDxtaW5na2FpLmh1QG54cC5jb20+OyBiaGVs
Z2Fhc0Bnb29nbGUuY29tOyBhbmRyZXcubXVycmF5QGFybS5jb207DQo+IGZyb3dhbmQubGlzdEBn
bWFpbC5jb207IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsgRGlhbmENCj4g
TWFkYWxpbmEgQ3JhY2l1biA8ZGlhbmEuY3JhY2l1bkBueHAuY29tPg0KPiBTdWJqZWN0OiBSRTog
W1BBVENIXSBQQ0k6IGxheWVyc2NhcGU6IEFkZCB0aGUgU1JJT1Ygc3VwcG9ydCBpbiBob3N0IHNp
ZGUNCj4gDQo+IEhpIFhpYW93ZWksDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0t
DQo+ID4gRnJvbTogbGludXgtYXJtLWtlcm5lbCA8bGludXgtYXJtLWtlcm5lbC1ib3VuY2VzQGxp
c3RzLmluZnJhZGVhZC5vcmc+DQo+ID4gT24gQmVoYWxmIE9mIFhpYW93ZWkgQmFvDQo+ID4NCj4g
PiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gPiBGcm9tOiBSb2JpbiBNdXJwaHkg
PHJvYmluLm11cnBoeUBhcm0uY29tPg0KPiA+ID4gU2VudDogMjAxOeW5tDEy5pyIM+aXpSAyMzoy
MA0KPiA+ID4gVG86IE1hcmMgWnluZ2llciA8bWF6QGtlcm5lbC5vcmc+OyBYaWFvd2VpIEJhbw0K
PiA8eGlhb3dlaS5iYW9AbnhwLmNvbT4NCj4gPiA+IENjOiBSb3kgWmFuZyA8cm95LnphbmdAbnhw
LmNvbT47IGxvcmVuem8ucGllcmFsaXNpQGFybS5jb207DQo+ID4gPiBkZXZpY2V0cmVlQHZnZXIu
a2VybmVsLm9yZzsgbGludXgtcGNpQHZnZXIua2VybmVsLm9yZzsgWi5xLiBIb3UNCj4gPiA+IDx6
aGlxaWFuZy5ob3VAbnhwLmNvbT47IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IE0uaC4g
TGlhbg0KPiA+ID4gPG1pbmdodWFuLmxpYW5AbnhwLmNvbT47IHJvYmgrZHRAa2VybmVsLm9yZzsN
Cj4gPiA+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsgYmhlbGdhYXNAZ29v
Z2xlLmNvbTsNCj4gPiA+IGFuZHJldy5tdXJyYXlAYXJtLmNvbTsgZnJvd2FuZC5saXN0QGdtYWls
LmNvbTsgTWluZ2thaSBIdQ0KPiA+ID4gPG1pbmdrYWkuaHVAbnhwLmNvbT4NCj4gPiA+IFN1Ympl
Y3Q6IFJlOiBbUEFUQ0hdIFBDSTogbGF5ZXJzY2FwZTogQWRkIHRoZSBTUklPViBzdXBwb3J0IGlu
IGhvc3QNCj4gPiA+IHNpZGUNCj4gPiA+DQo+ID4gPiBPbiAwMy8xMi8yMDE5IDExOjUxIGFtLCBN
YXJjIFp5bmdpZXIgd3JvdGU6DQo+ID4gPiA+IE9uIDIwMTktMTItMDMgMDE6NDIsIFhpYW93ZWkg
QmFvIHdyb3RlOg0KPiA+ID4gPj4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gPiA+
Pj4gRnJvbTogTWFyYyBaeW5naWVyIDxtYXpAbWlzdGVyam9uZXMub3JnPg0KPiA+ID4gPj4+IFNl
bnQ6IDIwMTnlubQxMuaciDLml6UgMjA6NDgNCj4gPiA+ID4+PiBUbzogWGlhb3dlaSBCYW8gPHhp
YW93ZWkuYmFvQG54cC5jb20+DQo+ID4gPiA+Pj4gQ2M6IHJvYmgrZHRAa2VybmVsLm9yZzsgZnJv
d2FuZC5saXN0QGdtYWlsLmNvbTsgTS5oLiBMaWFuDQo+ID4gPiA+Pj4gPG1pbmdodWFuLmxpYW5A
bnhwLmNvbT47IE1pbmdrYWkgSHUgPG1pbmdrYWkuaHVAbnhwLmNvbT47IFJveQ0KPiA+ID4gWmFu
Zw0KPiA+ID4gPj4+IDxyb3kuemFuZ0BueHAuY29tPjsgbG9yZW56by5waWVyYWxpc2lAYXJtLmNv
bTsNCj4gPiA+ID4+PiBhbmRyZXcubXVycmF5QGFybS5jb207IGJoZWxnYWFzQGdvb2dsZS5jb207
DQo+ID4gPiA+Pj4gZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2Vy
Lmtlcm5lbC5vcmc7DQo+ID4gPiA+Pj4gbGludXgtcGNpQHZnZXIua2VybmVsLm9yZzsgbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOw0KPiA+ID4gPj4+IFoucS4gSG91IDx6aGlx
aWFuZy5ob3VAbnhwLmNvbT4NCj4gPiA+ID4+PiBTdWJqZWN0OiBSZTogW1BBVENIXSBQQ0k6IGxh
eWVyc2NhcGU6IEFkZCB0aGUgU1JJT1Ygc3VwcG9ydCBpbg0KPiA+ID4gPj4+IGhvc3Qgc2lkZQ0K
PiA+ID4gPj4+DQo+ID4gPiA+Pj4gT24gMjAxOS0xMi0wMiAxMDo0NSwgWGlhb3dlaSBCYW8gd3Jv
dGU6DQo+ID4gPiA+Pj4gPiBHSUMgZ2V0IHRoZSBtYXAgcmVsYXRpb25zIG9mIGRldmlkIGFuZCBz
dHJlYW0gaWQgZnJvbSB0aGUNCj4gPiA+ID4+PiA+IG1zaS1tYXAgcHJvcGVydHkgb2YgRFRTLCBv
dXIgcGxhdGZvcm0gYWRkIHRoaXMgcHJvcGVydHkgaW4NCj4gPiA+ID4+PiA+IHUtYm9vdCBiYXNl
IG9uIHRoZSBQQ0llIGRldmljZSBpbiB0aGUgYnVzLCBidXQgaWYgZW5hYmxlIHRoZQ0KPiA+ID4g
Pj4+ID4gdmYgZGV2aWNlIGluIGtlcm5lbCwgdGhlIHZmIGRldmljZSBtc2ktbWFwIHdpbGwgbm90
IHNldCwgc28NCj4gPiA+ID4+PiA+IHRoZSB2ZiBkZXZpY2UgY2FuJ3Qgd29yaywgdGhpcyBwYXRj
aCBwdXJwb3NlIGlzIHRoYXQgbWFuYWdlDQo+ID4gPiA+Pj4gPiB0aGUgc3RyZWFtIGlkIGFuZCBk
ZXZpY2UgaWQgbWFwIHJlbGF0aW9ucyBkeW5hbWljYWxseSBpbg0KPiA+ID4gPj4+ID4ga2VybmVs
LCBhbmQgbWFrZSB0aGUgbmV3IFBDSWUgZGV2aWNlIHdvcmsNCj4gPiBpbg0KPiA+ID4ga2VybmVs
Lg0KPiA+ID4gPj4+ID4NCj4gPiA+ID4+PiA+IFNpZ25lZC1vZmYtYnk6IFhpYW93ZWkgQmFvIDx4
aWFvd2VpLmJhb0BueHAuY29tPg0KPiA+ID4gPj4+ID4gLS0tDQo+ID4gPiA+Pj4gPsKgIGRyaXZl
cnMvb2YvaXJxLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgfMKgIDkNCj4gKysrDQo+ID4gPiA+Pj4gPsKgIGRyaXZlcnMvcGNpL2NvbnRyb2xs
ZXIvZHdjL3BjaS1sYXllcnNjYXBlLmMgfCA5NA0KPiA+ID4gPj4+ID4gKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysNCj4gPiA+ID4+PiA+wqAgZHJpdmVycy9wY2kvcHJvYmUuY8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgNiArKw0KPiA+ID4g
Pj4+ID7CoCBkcml2ZXJzL3BjaS9yZW1vdmUuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgfMKgIDYgKysNCj4gPiA+ID4+PiA+wqAgNCBmaWxlcyBjaGFuZ2Vk
LCAxMTUgaW5zZXJ0aW9ucygrKQ0KPiA+ID4gPj4+ID4NCj4gPiA+ID4+PiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL29mL2lycS5jIGIvZHJpdmVycy9vZi9pcnEuYyBpbmRleA0KPiA+ID4gPj4+ID4g
YTI5NmVhZi4uNzkxZTYwOSAxMDA2NDQNCj4gPiA+ID4+PiA+IC0tLSBhL2RyaXZlcnMvb2YvaXJx
LmMNCj4gPiA+ID4+PiA+ICsrKyBiL2RyaXZlcnMvb2YvaXJxLmMNCj4gPiA+ID4+PiA+IEBAIC01
NzYsNiArNTc2LDExIEBAIHZvaWQgX19pbml0IG9mX2lycV9pbml0KGNvbnN0IHN0cnVjdA0KPiA+
ID4gPj4+ID5vZl9kZXZpY2VfaWQNCj4gPiA+ID4+PiA+ICptYXRjaGVzKQ0KPiA+ID4gPj4+ID7C
oMKgwqDCoMKgIH0NCj4gPiA+ID4+PiA+wqAgfQ0KPiA+ID4gPj4+ID4NCj4gPiA+ID4+PiA+ICt1
MzIgX193ZWFrIGxzX3BjaWVfc3RyZWFtaWRfZml4KHN0cnVjdCBkZXZpY2UgKmRldiwgdTMyIHJp
ZCkNCj4gPiA+ID4+PiA+ICt7DQo+ID4gPiA+Pj4gPiArwqDCoMKgIHJldHVybiByaWQ7DQo+ID4g
PiA+Pj4gPiArfQ0KPiA+ID4gPj4+ID4gKw0KPiA+ID4gPj4+ID7CoCBzdGF0aWMgdTMyIF9fb2Zf
bXNpX21hcF9yaWQoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QNCj4gPiA+ID4+PiA+ZGV2aWNl
X25vZGUgICoqbnAsDQo+ID4gPiA+Pj4gPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgdTMyIHJpZF9pbikNCj4gPiA+ID4+PiA+wqAgew0KPiA+ID4gPj4+ID4gQEAgLTU5MCw2ICs1
OTUsMTAgQEAgc3RhdGljIHUzMiBfX29mX21zaV9tYXBfcmlkKHN0cnVjdCBkZXZpY2UNCj4gPiA+
ID4+PiA+KmRldiwgIHN0cnVjdCBkZXZpY2Vfbm9kZSAqKm5wLA0KPiA+ID4gPj4+ID7CoMKgwqDC
oMKgwqDCoMKgwqAgaWYgKCFvZl9tYXBfcmlkKHBhcmVudF9kZXYtPm9mX25vZGUsIHJpZF9pbiwN
Cj4gPiA+ID4+PiA+Im1zaS1tYXAiLA0KPiA+ID4gPj4+ID7CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgICJtc2ktbWFwLW1hc2siLCBucCwgJnJpZF9vdXQpKQ0KPiA+ID4gPj4+ID7C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBicmVhazsNCj4gPiA+ID4+PiA+ICsNCj4gPiA+ID4+
PiA+ICvCoMKgwqAgaWYgKHJpZF9vdXQgPT0gcmlkX2luKQ0KPiA+ID4gPj4+ID4gK8KgwqDCoMKg
wqDCoMKgIHJpZF9vdXQgPSBsc19wY2llX3N0cmVhbWlkX2ZpeChwYXJlbnRfZGV2LCByaWRfaW4p
Ow0KPiA+ID4gPj4+DQo+ID4gPiA+Pj4gT3ZlciBteSBkZWFkIGJvZHkuIEdldCB5b3VyIGZpcm13
YXJlIHRvIHByb3Blcmx5IHByb2dyYW0gdGhlIExVVA0KPiA+ID4gPj4+IHNvIHRoYXQgaXQgcHJl
c2VudHMgdGhlIElUUyB3aXRoIGEgcmVhc29uYWJsZSB0b3BvbG9neS4gVGhlcmUgaXMNCj4gPiA+
ID4+PiBhYnNvbHV0ZWx5IG5vIHdheSB0aGlzIGtpbmQgb2YgY2hhbmdlIG1ha2VzIGl0IGludG8g
dGhlIGtlcm5lbC4NCj4gPiA+ID4+DQo+ID4gPiA+PiBTb3JyeSBmb3IgdGhpcywgSSBrbm93IGl0
IGlzIG5vdCByZWFzb25hYmxlLCBidXQgSSBoYXZlIG5vIG90aGVyDQo+ID4gPiA+PiB3YXksIGFz
IEkga25vdywgQVJNIGdldCB0aGUgbWFwcGluZyBvZiBzdHJlYW0gSUQgdG8gcmVxdWVzdCBJRA0K
PiA+ID4gPj4gZnJvbSB0aGUgbXNpLW1hcCBwcm9wZXJ0eSBvZiBEVFMsIGlmIGFkZCBhIG5ldyBk
ZXZpY2Ugd2hpY2ggbmVlZA0KPiA+ID4gPj4gdGhlIHN0cmVhbSBJRCBhbmQgdHJ5IHRvIGdldCBp
dCBmcm9tIHRoZSBtc2ktbWFwIG9mIERUUywgaXQgd2lsbA0KPiA+ID4gPj4gZmFpbGVkIGFuZCBu
b3Qgd29yaywgeWVzPyBTbyBjb3VsZCB5b3UgZ2l2ZSBtZSBhIGJldHRlciBhZHZpY2UgdG8NCj4g
PiA+ID4+IGZpeCB0aGlzIGlzc3VlLCBJIHdvdWxkIHJlYWxseSBhcHByZWNpYXRlIGFueSBjb21t
ZW50cyBvciBzdWdnZXN0aW9ucywNCj4gdGhhbmtzIGEgbG90Lg0KPiA+ID4gPg0KPiA+ID4gPiBX
aHkgY2FuJ3QgZmlybXdhcmUgZXhwb3NlIGFuIG1zaS1tYXAvbXNpLW1hcC1tYXNrIHRoYXQgaGFz
IGEgbGFyZ2UNCj4gPiA+ID4gZW5vdWdoIHJhbmdlIHRvIGVuc3VyZSBtYXBwaW5nIG9mIFZGcz8g
V2hhdCBhcmUgdGhlIGxpbWl0YXRpb25zIG9mDQo+ID4gPiA+IHRoZSBMVVQgdGhhdCB3b3VsZCBw
cmV2ZW50IHRoaXMgZnJvbSBiZWluZyBjb25maWd1cmVkIGJlZm9yZSB0aGUNCj4gPiA+ID4ga2Vy
bmVsIGJvb3RzPw0KPiA+DQo+ID4gVGhhbmtzIGZvciB5b3VyIGNvbW1lbnRzLCB5ZXMsIHRoaXMg
aXMgdGhlIHJvb3QgY2F1c2UsIHdlIG9ubHkgaGF2ZSAxNg0KPiA+IHN0cmVhbSBJRHMgZm9yIFBD
SWUgZG9tYWluLCB0aGlzIGlzIHRoZSBoYXJkd2FyZSBsaW1pdGF0aW9uLCBpZiB0aGVyZQ0KPiA+
IGhhdmUgZW5vdWdoIHN0cmVhbSBJRHMsIHdlIGNhbiBleHBvc2UgYW4gbXNpLW1hcC9tc2ktbWFw
LW1hc2sgZm9yIGFsbA0KPiA+IFBDSWUgZGV2aWNlcyBpbiBzeXN0ZW0sIHVuZm9ydHVuYXRlbHks
IHRoZSBzdHJlYW0gSURzIGlzIG5vdCBlbm91Z2gsIEkNCj4gPiB0aGluayBvdGhlciBBUk0gdmVu
ZG9yIGhhdmUgc2FtZSBpc3N1ZSB0aGF0IHRoZXkgZG9uJ3QgaGF2ZSBlbm91Z2gNCj4gPiBzdHJl
YW0gSURzLg0KPiA+DQo+ID4gVGhhbmtzDQo+ID4gWGlhb3dlaQ0KPiA+DQo+ID4gPg0KPiA+ID4g
RnVydGhlcm1vcmUsIG5vdGUgdGhhdCB0aGlzIGF0dGVtcHQgaXNuJ3QgZG9pbmcgYW55dGhpbmcg
Zm9yIHRoZQ0KPiA+ID4gU01NVSBTdHJlYW0gSURzLCBzbyB0aGUgbW9tZW50IGFueW9uZSB0cmll
cyB0byBhc3NpZ24gdGhvc2UgVkZzDQo+ID4gPiB0aGV5J3JlIHN0aWxsDQo+ID4gZ29pbmcNCj4g
PiA+IHRvIGdvIGJhbmcgYW55d2F5LiBBbnkgZmlybXdhcmUtYmFzZWQgZml4dXAgZm9yIElEIG1h
cHBpbmdzLCBjb25maWcNCj4gPiBzcGFjZQ0KPiA+ID4gYWRkcmVzc2VzLCBldGMuIG5lZWRzIHRv
IGJlIFNSLUlPVi1hd2FyZSBhbmQgYWNjb3VudCBmb3IgYWxsDQo+ID4gPiAqcG9zc2libGUqIEJE
RnMuDQo+ID4gPg0KPiA+ID4gT24gTFMyMDg1IGF0IGxlYXN0LCBJSVJDIHlvdSBjYW4gY29uZmln
dXJlIGEgc2luZ2xlIExVVCBlbnRyeSB0bw0KPiA+ID4ganVzdA0KPiA+IHRyYW5zbGF0ZQ0KPiA+
ID4gdGhlIEJ1czpEZXZpY2UgaWRlbnRpZmllciBhbmQgcGFzcyBzb21lIG9yIGFsbCBvZiB0aGUg
RnVuY3Rpb24gYml0cw0KPiA+IHN0cmFpZ2h0DQo+ID4gPiB0aHJvdWdoIGFzIHRoZSBMU0JzIG9m
IHRoZSBTdHJlYW0gSUQsIHNvIEkgZG9uJ3QgYmVsaWV2ZSB0aGUNCj4gPiA+IHJlbGF0aXZlbHkN
Cj4gPiBsaW1pdGVkDQo+ID4gPiBudW1iZXIgb2YgTFVUIHJlZ2lzdGVycyBzaG91bGQgYmUgdG9v
IG11Y2ggb2YgYW4gaXNzdWUuIEZvciBleGFtcGxlLA0KPiA+IGxhc3QNCj4gPiA+IHRpbWUgSSBo
YWNrZWQgb24gdGhhdCBJIGFwcGFyZW50bHkgaGFkIGl0IHNldCB1cCBzdGF0aWNhbGx5IGxpa2Ug
dGhpczoNCj4gPiA+DQo+ID4gPiAmcGNpZTMgew0KPiA+ID4gCS8qIFNxdWFzaCA4OjU6MyBCREYg
ZG93biB0byAyOjI6MyAqLw0KPiA+ID4gCW1zaS1tYXAtbWFzayA9IDwweDAzMWY+Ow0KPiA+ID4g
CW1zaS1tYXAgPSA8MHgwMDAgJml0cyAweDAwIDB4MjA+LA0KPiA+ID4gCQkgIDwweDEwMCAmaXRz
IDB4MjAgMHgyMD4sDQo+ID4gPiAJCSAgPDB4MjAwICZpdHMgMHg0MCAweDIwPiwNCj4gPiA+IAkJ
ICA8MHgzMDAgJml0cyAweDYwIDB4MjA+Ow0KPiA+ID4gfTsNCj4gPg0KPiA+IFRoYW5rcyBSb2Jp
biwgdGhpcyBpcyBhIGVmZmVjdGl2ZSB3YXksIGJ1dCB3ZSBvbmx5IGhhdmUgdG90YWwgMTYNCj4g
PiBzdHJlYW0gSURzIGZvciBQQ0llIGRvbWFpbiwgYW5kIG9ubHkgYXNzaWduIDQgc3RyZWFtIElE
cyBmb3IgZWFjaCBQQ0llDQo+ID4gY29udHJvbGxlciBpZiB0aGUgYm9hcmQgaGF2ZSA0IFBDSWUg
Y29udHJvbGxlcnMsIHRoaXMgaXMgdGhlIHJvb3QNCj4gPiBjYXVzZSwgSSBzdWJtaXR0ZWQgdGhp
cyBwYXRjaCB0byBkeW5hbWljYWxseSBtYW5hZ2UgdGhlc2Ugc3RyZWFtIElEcywNCj4gPiBzbyB0
aGF0IGl0IGxvb2tzIGxpa2UgZWFjaCBQQ0llIGNvbnRyb2xsZXIgaGFzIDE2IHN0cmVhbSBJRHMu
IEkgY2FuDQo+ID4gZHluYW1pY2FsbHkgYWxsb2NhdGUgYW5kIHJlbGVhc2UgdGhlc2Ugc3RyZWFt
IElEcyBiYXNlZCBvbiB0aGUgUENJZQ0KPiA+IGRldmljZXMgaW4gdGhlIGN1cnJlbnQgc3lzdGVt
Lg0KPiA+IElmIHVzZSB5b3VyIG1ldGhvZCwNCj4gPiB3ZSBzdXBwb3J0IHVwIHRvIDQgUENJZSBk
ZXZpY2VzKDIgUEZzIGFuZCAyIFZGcyksIGl0IHdpbGwgbm90IGFjaGlldmUNCj4gPiBvdXIgcHVy
cG9zZS4NCj4gPg0KPiANCj4gV2UgYWxsb2NhdGUgdGhlIFN0cmVhbV9JRHMgaW4gYSBzdGF0aWMg
ZmFzaGlvbiBpbiB1LWJvb3QsIHNlZSBbMV0sIHNvIGlmIGEgdXNlcg0KPiB3b3VsZCBuZWVkIGEg
bGFyZ2VyIHJhbmdlIGZvciBQQ0kge3N9aGUgY291bGQgYWRqdXN0IHRoYXQgaW4gdGhlcmUuIE9u
IG1vc3Qgb2YNCj4gb3VyIExheWVyc2NhcGUgY2hpcHMgdGhlIFNNTVUgaXMgY29uZmlndXJlZCB0
byA1IGJpdHMgZm9yIFRCVV9JRCBwbHVzIDEwIGJpdHMNCj4gZm9yIFN0cmVhbUlELiBPdXQgb2Yg
dGhlc2UgMTAgY29udHJvbGxhYmxlIGJpdHMgd2UgY2FuIGVmZmVjdGl2ZWx5IHVzZSA3IGJpdHMN
Cj4gZ2l2aW5nIHVzIGEgbWF4IHJhbmdlIG9mIDEyNyBTdHJlYW1fSURzLg0KPiANCj4gWzFdDQo+
IGh0dHBzOi8vZ2l0bGFiLmRlbnguZGUvdS1ib290L3UtYm9vdC9ibG9iL21hc3Rlci9hcmNoL2Fy
bS9pbmNsdWRlL2FzbS9hcg0KPiBjaC1mc2wtbGF5ZXJzY2FwZS9zdHJlYW1faWRfbHNjaDMuaA0K
DQpUaGFua3MgZm9yIHlvdXIgaW5mb3JtYXRpb24sIGl0IGlzIG5vdCBlbm91Z2ggZXZlbiB0aGVy
ZSBhcmUgMTI3IFN0cmVhbV9JRHMsIGlmIGENClBDSWUgZGV2aWNlIHdoaWNoIHN1cHBvcnQgU1JJ
T1YsIGJ1dCB0aGUgVkZzIG9mZnNldCBpcyAxMjgsIHRoZSBWRnMgd2lsbCBub3Qgd29yay4NCg0K
VGhhbmtzIA0KWGlhb3dlaSANCg0KPiANCj4gLS0tDQo+IEJlc3QgUmVnYXJkcywgTGF1cmVudGl1
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
