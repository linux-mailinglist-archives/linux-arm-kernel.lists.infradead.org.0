Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E29113A1D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 03:56:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fRZXj3WGJ3869q1br/SAb4ZTPqVRwc2PLM+8xhhfyDg=; b=J+R9HoZXz6GyFh
	Veod2MT9H+LUZ+DUwz+t1zMkW/uIFfZ9pQpnu627s74BJsB0S73HtCNIzeZ61/+IhtHPKoluwYsop
	FmZvNW4IHWV7sHFXS/e5HIS18hY8GKIX50SJ2A+0XRDrfpd7ep5CbNbj0te7JH+8dorirp30g8ZST
	fR/Nse55sm5V7flrkfNoaahdQCya29VLBKcfv6m5Rltzok/bWFY+ekWfc7nGRdXQpgXAI6N18KvRT
	o14LvBjr83sSuKmaCqQx88S8Rt/XpHg+e6AK7xXK6kzbICnWExr5gkkDOe8EouZ15B+TWaDzzYV52
	0/mmG4YWlHmajUnKg9xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ichJz-00087R-5t; Thu, 05 Dec 2019 02:56:51 +0000
Received: from mail-eopbgr70071.outbound.protection.outlook.com ([40.107.7.71]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ichJo-000874-OZ
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 02:56:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PJra9JdWqR9OEaL7O+L5QnlL8sE3CnpVuipRITT5D5x6uh1x4x6ducl2rfiKBYhTDuOnph4HV7iUsDzsKkQkifFWfcgomwnYWP9giyHvAmEHXTYUjpjmRl8URXapzi6+YTqby9ZUXp2gy6/0bysYDQpp8blkT3vk88q5KhN6q371tyJENXTrPp0k0tKoybFQV/6RZfgy8ygO8FRkBisdOFfHYhtCFS8LJ9a8k5HxaQHmAwHMJTNXk5s5/fT9vQJfMZIwvvvABcbeX326/o5WR2rXAhRbSmfioMT4n1S/9g4inKfzTzsyIKdmoLE4jqAvN7yC3KQDkQF8zYajb9n6+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FUou88A/OFRSJuz2SjDMcqSe05FBwvcWP10S+Sp+9ok=;
 b=KH4fq4bsfVfrNEa8lS+x/FIdzcoJU5XqSAeQGkNsmCrRcVrKpVujsk0c4nfdR2GU9wCpbuD6Z9EHkkAZpRdbZOe5vSVvHqVT9Xe82aZVEpdvEPiatK0SfggFUwgMvApOm2rzUrXekzcjiBRkQYJ0z9fnroVhdfRtyMpwyDXSPW2SyW5ZjSKWC8/vUI4mSN2TeTEj9OUTJcrr7EF/cyY9jv0Y5a+sg010PVZrwsg5FAHKFjJ7XgSYaOTMtK8yfPlkIRoaxg86MZqfDWHJAsrG14WObpjwe4owhaeX2ezC99AZkKrN+fReafV88mBTNK2wNNn/LoGJB8dEbQ23Ee4yng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FUou88A/OFRSJuz2SjDMcqSe05FBwvcWP10S+Sp+9ok=;
 b=A3+23pniBxbuFoUyNk2b9+h0T7Ed7DvHj4F8XxpJ7KiFFk7dskS8R5ywjAaK5UrN2XDVnox3EJhKl+QyhsEMXxsFKbVKkmlQAcBItoPRFxVtSQ3CIWg13JlaViJTQ4gG46/rTefNkddXpB+jUCF9oWfTqSjmUKVhkJR4TgOfPgA=
Received: from AM5PR04MB3299.eurprd04.prod.outlook.com (10.173.255.158) by
 AM5PR04MB3027.eurprd04.prod.outlook.com (10.173.254.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.22; Thu, 5 Dec 2019 02:56:37 +0000
Received: from AM5PR04MB3299.eurprd04.prod.outlook.com
 ([fe80::a8a6:8d0d:aca4:7bf1]) by AM5PR04MB3299.eurprd04.prod.outlook.com
 ([fe80::a8a6:8d0d:aca4:7bf1%7]) with mapi id 15.20.2495.014; Thu, 5 Dec 2019
 02:56:37 +0000
From: Xiaowei Bao <xiaowei.bao@nxp.com>
To: Robin Murphy <robin.murphy@arm.com>, Marc Zyngier <maz@kernel.org>
Subject: RE: [PATCH] PCI: layerscape: Add the SRIOV support in host side
Thread-Topic: [PATCH] PCI: layerscape: Add the SRIOV support in host side
Thread-Index: AQHVqP2nw3AoM5GAtUqPe+h1Ib8VVaemy2EAgADUbVCAAK4bgIAAOn2AgADDy0CAAJZUAIAA9iSA
Date: Thu, 5 Dec 2019 02:56:37 +0000
Message-ID: <AM5PR04MB32998F0CB64D47581CA58F3EF55C0@AM5PR04MB3299.eurprd04.prod.outlook.com>
References: <20191202104506.27916-1-xiaowei.bao@nxp.com>
 <606a00a2edcf077aa868319e0daa4dbc@www.loen.fr>
 <AM5PR04MB3299A5A504DEFEF3E137A27CF5420@AM5PR04MB3299.eurprd04.prod.outlook.com>
 <3dcdf44eb76390730658e3f4d932620c@www.loen.fr>
 <8f56c2d9-ab01-a91e-902f-a61def0e8ce8@arm.com>
 <AM5PR04MB3299BFC34A4666B7A9C12B13F55D0@AM5PR04MB3299.eurprd04.prod.outlook.com>
 <12545949-74bb-214f-0803-248ebd509765@arm.com>
In-Reply-To: <12545949-74bb-214f-0803-248ebd509765@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xiaowei.bao@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 9d6e1447-3dc9-44be-68f8-08d7792ebed6
x-ms-traffictypediagnostic: AM5PR04MB3027:|AM5PR04MB3027:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM5PR04MB30276C87C0F011541D7A41C9F55C0@AM5PR04MB3027.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 02426D11FE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(376002)(136003)(396003)(39860400002)(13464003)(199004)(189003)(14454004)(64756008)(66556008)(9686003)(3846002)(6116002)(71190400001)(71200400001)(74316002)(8936002)(305945005)(14444005)(55016002)(6246003)(4326008)(7736002)(86362001)(6436002)(33656002)(7416002)(8676002)(6506007)(66446008)(2906002)(229853002)(316002)(186003)(81166006)(81156014)(478600001)(66946007)(76116006)(7696005)(66476007)(110136005)(5660300002)(26005)(76176011)(11346002)(99286004)(52536014)(53546011)(102836004)(25786009)(44832011)(54906003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR04MB3027;
 H:AM5PR04MB3299.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TmWKcTjqxHdotZ5VVJe/qFLBeYEFKwZ7FHgeZiLSNGrB3EcoKrQ1WTBKrk0vRRVI4BIeGme6RkdY75RprdUG35EmAGkA7cG+2is02hbRgW8LFkFow+R+1qEorB7OV/TH96347yHmbRyO41+bxOSr5QZGTVeuOHzMux5IZ0wtRtrN5hXeFvwRjCKEgSUqYYlO9tw0e86SVLzFV3isWAPsg2VpTBpSXqDNmJkI7Wi2/NplRQM6f5Y03tGteOaGfOxPodEnAfVgRrPyjMtLC+W21vFeYpbwebo3GTyqWDwC3hCh1LyNy3o/nmpzPrzoMG9FPd9CofgMJucUxbvXAa0SQNJaFSh8elyM4w5VBnikxj+/4O5CJKXEYic1Wws6MkuF/A5Om8yUwiEyozjmdHRxe32FI6cX3UufIo2EaBKl8pVD0gyn0rU6sOP/sYP6je5N25zl6BTxUdYE1Fzy1HRSqDAhqcIKvdBwtvLafa1OVgDD8u0rAbLitdmVhTt1EWZr
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d6e1447-3dc9-44be-68f8-08d7792ebed6
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2019 02:56:37.1904 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2aFfh3TuaceHEbh9lKAazzuYq+XZgsZ2MJb4JR5TzclQe3VTAA5RaehRDc36IJScEIQOaI3xu4ek2hrY3Bu7Fg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR04MB3027
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_185640_977393_E5B8CF4E 
X-CRM114-Status: GOOD (  29.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.71 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "M.h. Lian" <minghuan.lian@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 Mingkai Hu <mingkai.hu@nxp.com>, "bhelgaas@google.com" <bhelgaas@google.com>,
 "andrew.murray@arm.com" <andrew.murray@arm.com>,
 "frowand.list@gmail.com" <frowand.list@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUm9iaW4gTXVycGh5IDxy
b2Jpbi5tdXJwaHlAYXJtLmNvbT4NCj4gU2VudDogMjAxOeW5tDEy5pyINOaXpSAxOTo1OQ0KPiBU
bzogWGlhb3dlaSBCYW8gPHhpYW93ZWkuYmFvQG54cC5jb20+OyBNYXJjIFp5bmdpZXIgPG1hekBr
ZXJuZWwub3JnPg0KPiBDYzogUm95IFphbmcgPHJveS56YW5nQG54cC5jb20+OyBsb3JlbnpvLnBp
ZXJhbGlzaUBhcm0uY29tOw0KPiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgbGludXgtcGNp
QHZnZXIua2VybmVsLm9yZzsgWi5xLiBIb3UNCj4gPHpoaXFpYW5nLmhvdUBueHAuY29tPjsgbGlu
dXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgTS5oLiBMaWFuDQo+IDxtaW5naHVhbi5saWFuQG54
cC5jb20+OyByb2JoK2R0QGtlcm5lbC5vcmc7DQo+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZzsgYmhlbGdhYXNAZ29vZ2xlLmNvbTsNCj4gYW5kcmV3Lm11cnJheUBhcm0uY29t
OyBmcm93YW5kLmxpc3RAZ21haWwuY29tOyBNaW5na2FpIEh1DQo+IDxtaW5na2FpLmh1QG54cC5j
b20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0hdIFBDSTogbGF5ZXJzY2FwZTogQWRkIHRoZSBTUklP
ViBzdXBwb3J0IGluIGhvc3Qgc2lkZQ0KPiANCj4gT24gMjAxOS0xMi0wNCA0OjM0IGFtLCBYaWFv
d2VpIEJhbyB3cm90ZToNCj4gPg0KPiA+DQo+ID4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0t
DQo+ID4+IEZyb206IFJvYmluIE11cnBoeSA8cm9iaW4ubXVycGh5QGFybS5jb20+DQo+ID4+IFNl
bnQ6IDIwMTnlubQxMuaciDPml6UgMjM6MjANCj4gPj4gVG86IE1hcmMgWnluZ2llciA8bWF6QGtl
cm5lbC5vcmc+OyBYaWFvd2VpIEJhbw0KPiA8eGlhb3dlaS5iYW9AbnhwLmNvbT4NCj4gPj4gQ2M6
IFJveSBaYW5nIDxyb3kuemFuZ0BueHAuY29tPjsgbG9yZW56by5waWVyYWxpc2lAYXJtLmNvbTsN
Cj4gPj4gZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LXBjaUB2Z2VyLmtlcm5lbC5v
cmc7IFoucS4gSG91DQo+ID4+IDx6aGlxaWFuZy5ob3VAbnhwLmNvbT47IGxpbnV4LWtlcm5lbEB2
Z2VyLmtlcm5lbC5vcmc7IE0uaC4gTGlhbg0KPiA+PiA8bWluZ2h1YW4ubGlhbkBueHAuY29tPjsg
cm9iaCtkdEBrZXJuZWwub3JnOw0KPiA+PiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmc7IGJoZWxnYWFzQGdvb2dsZS5jb207DQo+ID4+IGFuZHJldy5tdXJyYXlAYXJtLmNvbTsg
ZnJvd2FuZC5saXN0QGdtYWlsLmNvbTsgTWluZ2thaSBIdQ0KPiA+PiA8bWluZ2thaS5odUBueHAu
Y29tPg0KPiA+PiBTdWJqZWN0OiBSZTogW1BBVENIXSBQQ0k6IGxheWVyc2NhcGU6IEFkZCB0aGUg
U1JJT1Ygc3VwcG9ydCBpbiBob3N0DQo+ID4+IHNpZGUNCj4gPj4NCj4gPj4gT24gMDMvMTIvMjAx
OSAxMTo1MSBhbSwgTWFyYyBaeW5naWVyIHdyb3RlOg0KPiA+Pj4gT24gMjAxOS0xMi0wMyAwMTo0
MiwgWGlhb3dlaSBCYW8gd3JvdGU6DQo+ID4+Pj4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0t
DQo+ID4+Pj4+IEZyb206IE1hcmMgWnluZ2llciA8bWF6QG1pc3RlcmpvbmVzLm9yZz4NCj4gPj4+
Pj4gU2VudDogMjAxOeW5tDEy5pyIMuaXpSAyMDo0OA0KPiA+Pj4+PiBUbzogWGlhb3dlaSBCYW8g
PHhpYW93ZWkuYmFvQG54cC5jb20+DQo+ID4+Pj4+IENjOiByb2JoK2R0QGtlcm5lbC5vcmc7IGZy
b3dhbmQubGlzdEBnbWFpbC5jb207IE0uaC4gTGlhbg0KPiA+Pj4+PiA8bWluZ2h1YW4ubGlhbkBu
eHAuY29tPjsgTWluZ2thaSBIdSA8bWluZ2thaS5odUBueHAuY29tPjsgUm95DQo+ID4+IFphbmcN
Cj4gPj4+Pj4gPHJveS56YW5nQG54cC5jb20+OyBsb3JlbnpvLnBpZXJhbGlzaUBhcm0uY29tOw0K
PiA+Pj4+PiBhbmRyZXcubXVycmF5QGFybS5jb207IGJoZWxnYWFzQGdvb2dsZS5jb207DQo+ID4+
Pj4+IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwu
b3JnOw0KPiA+Pj4+PiBsaW51eC1wY2lAdmdlci5rZXJuZWwub3JnOyBsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmc7DQo+ID4+Pj4+IFoucS4gSG91IDx6aGlxaWFuZy5ob3VAbnhw
LmNvbT4NCj4gPj4+Pj4gU3ViamVjdDogUmU6IFtQQVRDSF0gUENJOiBsYXllcnNjYXBlOiBBZGQg
dGhlIFNSSU9WIHN1cHBvcnQgaW4NCj4gPj4+Pj4gaG9zdCBzaWRlDQo+ID4+Pj4+DQo+ID4+Pj4+
IE9uIDIwMTktMTItMDIgMTA6NDUsIFhpYW93ZWkgQmFvIHdyb3RlOg0KPiA+Pj4+Pj4gR0lDIGdl
dCB0aGUgbWFwIHJlbGF0aW9ucyBvZiBkZXZpZCBhbmQgc3RyZWFtIGlkIGZyb20gdGhlIG1zaS1t
YXANCj4gPj4+Pj4+IHByb3BlcnR5IG9mIERUUywgb3VyIHBsYXRmb3JtIGFkZCB0aGlzIHByb3Bl
cnR5IGluIHUtYm9vdCBiYXNlIG9uDQo+ID4+Pj4+PiB0aGUgUENJZSBkZXZpY2UgaW4gdGhlIGJ1
cywgYnV0IGlmIGVuYWJsZSB0aGUgdmYgZGV2aWNlIGluDQo+ID4+Pj4+PiBrZXJuZWwsIHRoZSB2
ZiBkZXZpY2UgbXNpLW1hcCB3aWxsIG5vdCBzZXQsIHNvIHRoZSB2ZiBkZXZpY2UNCj4gPj4+Pj4+
IGNhbid0IHdvcmssIHRoaXMgcGF0Y2ggcHVycG9zZSBpcyB0aGF0IG1hbmFnZSB0aGUgc3RyZWFt
IGlkIGFuZA0KPiA+Pj4+Pj4gZGV2aWNlIGlkIG1hcCByZWxhdGlvbnMgZHluYW1pY2FsbHkgaW4g
a2VybmVsLCBhbmQgbWFrZSB0aGUgbmV3DQo+ID4+Pj4+PiBQQ0llIGRldmljZSB3b3JrIGluDQo+
ID4+IGtlcm5lbC4NCj4gPj4+Pj4+DQo+ID4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBYaWFvd2VpIEJh
byA8eGlhb3dlaS5iYW9AbnhwLmNvbT4NCj4gPj4+Pj4+IC0tLQ0KPiA+Pj4+Pj4gIMKgIGRyaXZl
cnMvb2YvaXJxLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgfMKgIDkNCj4gKysrDQo+ID4+Pj4+PiAgwqAgZHJpdmVycy9wY2kvY29udHJvbGxl
ci9kd2MvcGNpLWxheWVyc2NhcGUuYyB8IDk0DQo+ID4+Pj4+PiArKysrKysrKysrKysrKysrKysr
KysrKysrKysrKw0KPiA+Pj4+Pj4gIMKgIGRyaXZlcnMvcGNpL3Byb2JlLmPCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDYNCj4gKysNCj4gPj4+Pj4+
ICDCoCBkcml2ZXJzL3BjaS9yZW1vdmUuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgfMKgIDYNCj4gKysNCj4gPj4+Pj4+ICDCoCA0IGZpbGVzIGNoYW5nZWQs
IDExNSBpbnNlcnRpb25zKCspDQo+ID4+Pj4+Pg0KPiA+Pj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvb2YvaXJxLmMgYi9kcml2ZXJzL29mL2lycS5jIGluZGV4DQo+ID4+Pj4+PiBhMjk2ZWFmLi43
OTFlNjA5IDEwMDY0NA0KPiA+Pj4+Pj4gLS0tIGEvZHJpdmVycy9vZi9pcnEuYw0KPiA+Pj4+Pj4g
KysrIGIvZHJpdmVycy9vZi9pcnEuYw0KPiA+Pj4+Pj4gQEAgLTU3Niw2ICs1NzYsMTEgQEAgdm9p
ZCBfX2luaXQgb2ZfaXJxX2luaXQoY29uc3Qgc3RydWN0DQo+ID4+Pj4+PiBvZl9kZXZpY2VfaWQN
Cj4gPj4+Pj4+ICptYXRjaGVzKQ0KPiA+Pj4+Pj4gIMKgwqDCoMKgwqAgfQ0KPiA+Pj4+Pj4gIMKg
IH0NCj4gPj4+Pj4+DQo+ID4+Pj4+PiArdTMyIF9fd2VhayBsc19wY2llX3N0cmVhbWlkX2ZpeChz
dHJ1Y3QgZGV2aWNlICpkZXYsIHUzMiByaWQpIHsNCj4gPj4+Pj4+ICvCoMKgwqAgcmV0dXJuIHJp
ZDsNCj4gPj4+Pj4+ICt9DQo+ID4+Pj4+PiArDQo+ID4+Pj4+PiAgwqAgc3RhdGljIHUzMiBfX29m
X21zaV9tYXBfcmlkKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0DQo+ID4+Pj4+PiBkZXZpY2Vf
bm9kZSAgKipucCwNCj4gPj4+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHUzMiByaWRfaW4pDQo+ID4+Pj4+PiAgwqAgew0KPiA+Pj4+Pj4gQEAgLTU5MCw2ICs1OTUsMTAg
QEAgc3RhdGljIHUzMiBfX29mX21zaV9tYXBfcmlkKHN0cnVjdCBkZXZpY2UNCj4gPj4+Pj4+ICpk
ZXYsICBzdHJ1Y3QgZGV2aWNlX25vZGUgKipucCwNCj4gPj4+Pj4+ICDCoMKgwqDCoMKgwqDCoMKg
wqAgaWYgKCFvZl9tYXBfcmlkKHBhcmVudF9kZXYtPm9mX25vZGUsIHJpZF9pbiwNCj4gPj4+Pj4+
ICJtc2ktbWFwIiwNCj4gPj4+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
ICJtc2ktbWFwLW1hc2siLCBucCwgJnJpZF9vdXQpKQ0KPiA+Pj4+Pj4gIMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGJyZWFrOw0KPiA+Pj4+Pj4gKw0KPiA+Pj4+Pj4gK8KgwqDCoCBpZiAocmlk
X291dCA9PSByaWRfaW4pDQo+ID4+Pj4+PiArwqDCoMKgwqDCoMKgwqAgcmlkX291dCA9IGxzX3Bj
aWVfc3RyZWFtaWRfZml4KHBhcmVudF9kZXYsIHJpZF9pbik7DQo+ID4+Pj4+DQo+ID4+Pj4+IE92
ZXIgbXkgZGVhZCBib2R5LiBHZXQgeW91ciBmaXJtd2FyZSB0byBwcm9wZXJseSBwcm9ncmFtIHRo
ZSBMVVQNCj4gPj4+Pj4gc28gdGhhdCBpdCBwcmVzZW50cyB0aGUgSVRTIHdpdGggYSByZWFzb25h
YmxlIHRvcG9sb2d5LiBUaGVyZSBpcw0KPiA+Pj4+PiBhYnNvbHV0ZWx5IG5vIHdheSB0aGlzIGtp
bmQgb2YgY2hhbmdlIG1ha2VzIGl0IGludG8gdGhlIGtlcm5lbC4NCj4gPj4+Pg0KPiA+Pj4+IFNv
cnJ5IGZvciB0aGlzLCBJIGtub3cgaXQgaXMgbm90IHJlYXNvbmFibGUsIGJ1dCBJIGhhdmUgbm8g
b3RoZXINCj4gPj4+PiB3YXksIGFzIEkga25vdywgQVJNIGdldCB0aGUgbWFwcGluZyBvZiBzdHJl
YW0gSUQgdG8gcmVxdWVzdCBJRCBmcm9tDQo+ID4+Pj4gdGhlIG1zaS1tYXAgcHJvcGVydHkgb2Yg
RFRTLCBpZiBhZGQgYSBuZXcgZGV2aWNlIHdoaWNoIG5lZWQgdGhlDQo+ID4+Pj4gc3RyZWFtIElE
IGFuZCB0cnkgdG8gZ2V0IGl0IGZyb20gdGhlIG1zaS1tYXAgb2YgRFRTLCBpdCB3aWxsIGZhaWxl
ZA0KPiA+Pj4+IGFuZCBub3Qgd29yaywgeWVzPyBTbyBjb3VsZCB5b3UgZ2l2ZSBtZSBhIGJldHRl
ciBhZHZpY2UgdG8gZml4IHRoaXMNCj4gPj4+PiBpc3N1ZSwgSSB3b3VsZCByZWFsbHkgYXBwcmVj
aWF0ZSBhbnkgY29tbWVudHMgb3Igc3VnZ2VzdGlvbnMsIHRoYW5rcyBhDQo+IGxvdC4NCj4gPj4+
DQo+ID4+PiBXaHkgY2FuJ3QgZmlybXdhcmUgZXhwb3NlIGFuIG1zaS1tYXAvbXNpLW1hcC1tYXNr
IHRoYXQgaGFzIGEgbGFyZ2UNCj4gPj4+IGVub3VnaCByYW5nZSB0byBlbnN1cmUgbWFwcGluZyBv
ZiBWRnM/IFdoYXQgYXJlIHRoZSBsaW1pdGF0aW9ucyBvZg0KPiA+Pj4gdGhlIExVVCB0aGF0IHdv
dWxkIHByZXZlbnQgdGhpcyBmcm9tIGJlaW5nIGNvbmZpZ3VyZWQgYmVmb3JlIHRoZQ0KPiA+Pj4g
a2VybmVsIGJvb3RzPw0KPiA+DQo+ID4gVGhhbmtzIGZvciB5b3VyIGNvbW1lbnRzLCB5ZXMsIHRo
aXMgaXMgdGhlIHJvb3QgY2F1c2UsIHdlIG9ubHkgaGF2ZSAxNg0KPiA+IHN0cmVhbSBJRHMgZm9y
IFBDSWUgZG9tYWluLCB0aGlzIGlzIHRoZSBoYXJkd2FyZSBsaW1pdGF0aW9uLCBpZiB0aGVyZQ0K
PiA+IGhhdmUgZW5vdWdoIHN0cmVhbSBJRHMsIHdlIGNhbiBleHBvc2UgYW4gbXNpLW1hcC9tc2kt
bWFwLW1hc2sgZm9yIGFsbA0KPiA+IFBDSWUgZGV2aWNlcyBpbiBzeXN0ZW0sIHVuZm9ydHVuYXRl
bHksIHRoZSBzdHJlYW0gSURzIGlzIG5vdCBlbm91Z2gsIEkNCj4gPiB0aGluayBvdGhlciBBUk0g
dmVuZG9yIGhhdmUgc2FtZSBpc3N1ZSB0aGF0IHRoZXkgZG9uJ3QgaGF2ZSBlbm91Z2gNCj4gc3Ry
ZWFtIElEcy4NCj4gDQo+IFNvbWUgU01NVXYyIGNvbmZpZ3VyYXRpb25zIG1heSBoYXZlIGFuIHVu
Y29tZm9ydGFibHkgbGltaXRlZCBudW1iZXIgb2YNCj4gY29udGV4dCBiYW5rcywgYnV0IHRoZXkg
YWxtb3N0IGFsd2F5cyBoYXZlIG1vcmUgdGhhbiBlbm91Z2ggc3RyZWFtIElEIGJpdHMuDQo+IFlv
dXIgSUNJRCBhbGxvY2F0aW9uIHBvbGljeSBpcyBtb3N0IGNlcnRhaW5seSBhbiBpc3N1ZSB1bmlx
dWUgdG8gTGF5ZXJzY2FwZQ0KPiBwbGF0Zm9ybXMuDQoNCkkgYW0gbm90IHN1cmUgd2hpY2ggdmVy
c2lvbiBvZiBTTU1VIHVzZWQgaW4gb3VyIExheWVyc2NhcGUgcGxhdGZvcm0sIEkgdGhpbmsgdGhl
DQpTTU1VIHZlcnNpb24gaXMgMSBpbiBvdXIgZWFybHkgYm9hcmQuIFNvIHRoZXJlIGlzIG5vdCBl
bm91Z2ggc3RyZWFtIElEIGZvciBQQ0llIG9yDQpvdGhlciBwZXJpcGhlcmFscy4gICANCg0KPiAN
Cj4gRnVydGhlcm1vcmUsIHRoYXQgYXJndW1lbnQgZG9lc24ndCBtYWtlIGEgd2hvbGUgbG90IG9m
IHNlbnNlIGFueXdheSAtIGlmDQo+IHlvdSBkb24ndCBoYXZlIGVub3VnaCBzdHJlYW0gSURzIGZv
ciBhbGwgcG9zc2libGUgVkZzIGF0IGJvb3QgdGltZSwgdGhlbiB5b3UNCj4gc3RpbGwgd29uJ3Qg
aGF2ZSBlbm91Z2ggbGF0ZXIsIHNvIHByZXRlbmRpbmcgdG8gc3VwcG9ydCBTUi1JT1YsIG9ubHkg
Zm9yIHRoaW5ncw0KPiB0byBzdGFydCBzdWJ0bHkgZ29pbmcgd3JvbmcgaWYgdGhlIHVzZXIgaGFz
IHRvbyBtYW55IGVuZHBvaW50cyBhY3RpdmUgYXQgb25jZSwNCj4gaXNuJ3QgZ29pbmcgdG8gY3V0
IGl0Lg0KDQpUaGFua3MgUm9iaW4sIHllcywgYWdyZWUgeW91ciBwb2ludCwgSSB0aGluayBJIGhh
dmUgdG8gZHJvcCB0aGlzIHBhdGNoLCB0aGUgcHVycG9zZQ0Kb2Ygc3VibWl0dGluZyB0aGlzIHBh
dGNoIHRvIG9wZW5zb3VyY2UgaXMgdGhhdCB0byBrbm93IHdoZXRoZXIgaGF2ZSBhIGJlc3Qgd2F5
DQp0byBmaXggdGhpcyBpc3N1ZSwgYnV0IGR1ZSB0byB0aGUgbGltaXRhdGlvbiBvZiBoYXJkd2Fy
ZSwgaXQgbG9va3MgbGlrZSBoYXZlIG5vIGJldHRlcg0Kd2F5LCBpbiBhIHdvcmQsIHRoYW5rcyBh
IGxvdC4NCg0KPiANCj4gPj4gRnVydGhlcm1vcmUsIG5vdGUgdGhhdCB0aGlzIGF0dGVtcHQgaXNu
J3QgZG9pbmcgYW55dGhpbmcgZm9yIHRoZSBTTU1VDQo+ID4+IFN0cmVhbSBJRHMsIHNvIHRoZSBt
b21lbnQgYW55b25lIHRyaWVzIHRvIGFzc2lnbiB0aG9zZSBWRnMgdGhleSdyZQ0KPiA+PiBzdGls
bCBnb2luZyB0byBnbyBiYW5nIGFueXdheS4gQW55IGZpcm13YXJlLWJhc2VkIGZpeHVwIGZvciBJ
RA0KPiA+PiBtYXBwaW5ncywgY29uZmlnIHNwYWNlIGFkZHJlc3NlcywgZXRjLiBuZWVkcyB0byBi
ZSBTUi1JT1YtYXdhcmUgYW5kDQo+ID4+IGFjY291bnQgZm9yIGFsbCAqcG9zc2libGUqIEJERnMu
DQo+ID4+DQo+ID4+IE9uIExTMjA4NSBhdCBsZWFzdCwgSUlSQyB5b3UgY2FuIGNvbmZpZ3VyZSBh
IHNpbmdsZSBMVVQgZW50cnkgdG8ganVzdA0KPiA+PiB0cmFuc2xhdGUgdGhlIEJ1czpEZXZpY2Ug
aWRlbnRpZmllciBhbmQgcGFzcyBzb21lIG9yIGFsbCBvZiB0aGUNCj4gPj4gRnVuY3Rpb24gYml0
cyBzdHJhaWdodCB0aHJvdWdoIGFzIHRoZSBMU0JzIG9mIHRoZSBTdHJlYW0gSUQsIHNvIEkNCj4g
Pj4gZG9uJ3QgYmVsaWV2ZSB0aGUgcmVsYXRpdmVseSBsaW1pdGVkIG51bWJlciBvZiBMVVQgcmVn
aXN0ZXJzIHNob3VsZA0KPiA+PiBiZSB0b28gbXVjaCBvZiBhbiBpc3N1ZS4gRm9yIGV4YW1wbGUs
IGxhc3QgdGltZSBJIGhhY2tlZCBvbiB0aGF0IEkNCj4gYXBwYXJlbnRseSBoYWQgaXQgc2V0IHVw
IHN0YXRpY2FsbHkgbGlrZSB0aGlzOg0KPiA+Pg0KPiA+PiAmcGNpZTMgew0KPiA+PiAJLyogU3F1
YXNoIDg6NTozIEJERiBkb3duIHRvIDI6MjozICovDQo+ID4+IAltc2ktbWFwLW1hc2sgPSA8MHgw
MzFmPjsNCj4gPj4gCW1zaS1tYXAgPSA8MHgwMDAgJml0cyAweDAwIDB4MjA+LA0KPiA+PiAJCSAg
PDB4MTAwICZpdHMgMHgyMCAweDIwPiwNCj4gPj4gCQkgIDwweDIwMCAmaXRzIDB4NDAgMHgyMD4s
DQo+ID4+IAkJICA8MHgzMDAgJml0cyAweDYwIDB4MjA+Ow0KPiA+PiB9Ow0KPiA+DQo+ID4gVGhh
bmtzIFJvYmluLCB0aGlzIGlzIGEgZWZmZWN0aXZlIHdheSwgYnV0IHdlIG9ubHkgaGF2ZSB0b3Rh
bCAxNg0KPiA+IHN0cmVhbSBJRHMgZm9yIFBDSWUgZG9tYWluLCBhbmQgb25seSBhc3NpZ24gNCBz
dHJlYW0gSURzIGZvciBlYWNoIFBDSWUNCj4gPiBjb250cm9sbGVyIGlmIHRoZSBib2FyZCBoYXZl
IDQgUENJZSBjb250cm9sbGVycywgdGhpcyBpcyB0aGUgcm9vdA0KPiA+IGNhdXNlLCBJIHN1Ym1p
dHRlZCB0aGlzIHBhdGNoIHRvIGR5bmFtaWNhbGx5IG1hbmFnZSB0aGVzZSBzdHJlYW0gSURzLA0K
PiA+IHNvIHRoYXQgaXQgbG9va3MgbGlrZSBlYWNoIFBDSWUgY29udHJvbGxlciBoYXMgMTYgc3Ry
ZWFtIElEcy4gSSBjYW4NCj4gPiBkeW5hbWljYWxseSBhbGxvY2F0ZSBhbmQgcmVsZWFzZSB0aGVz
ZSBzdHJlYW0gSURzIGJhc2VkIG9uIHRoZSBQQ0llDQo+IGRldmljZXMgaW4gdGhlIGN1cnJlbnQg
c3lzdGVtLiBJZiB1c2UgeW91ciBtZXRob2QsIHdlIHN1cHBvcnQgdXAgdG8gNCBQQ0llDQo+IGRl
dmljZXMoMiBQRnMgYW5kIDIgVkZzKSwgaXQgd2lsbCBub3QgYWNoaWV2ZSBvdXIgcHVycG9zZS4N
Cj4gDQo+IFN1cmUsIHRoYXQgd2FzIGp1c3QgYW4gZXhhbXBsZSB0byBpbGx1c3RyYXRlIHRoYXQg
eW91IGRvbid0IG5lZWQgYSBzZXBhcmF0ZQ0KPiBtc2ktbWFwIGVudHJ5IChhbmQgY29ycmVzcG9u
ZGluZyBMVVQgZW50cnkpIGZvciBlYWNoIGluZGl2aWR1YWwgUENJIFJJRCAtDQo+IHRoYXQgZGF0
ZXMgZnJvbSBiZWZvcmUgVS1Cb290IGhhZCBJQ0lEIHN1cHBvcnQsIHNvIEkgaGFkIGhhY2tzIGFs
bCBvdmVyDQo+IHZhcmlvdXMga2VybmVsIGRyaXZlcnMgdG8gc2V0IHRoZW0gYXJiaXRyYXJpbHkg
d2hlbiBJIHdhcyBwbGF5aW5nIHdpdGggdGhlDQo+IFNNTVUuDQo+IA0KPiBSZWFsaXN0aWNhbGx5
LCBhdCB0aGlzIHBvaW50IHlvdXIgb3B0aW9ucyBhcmUgYSkgcmVzZXJ2ZSBtb3JlIElDSURzIGZv
ciBQQ0llIGFuZA0KPiBhbGxvY2F0ZSB0aGVtIGluIGEgd2F5IHRoYXQgYWNjb3VudHMgZm9yIHRo
ZSBwcmVzZW50IGVuZHBvaW50cycNCj4gU1ItSU9WIGNhcGFiaWxpdGllcywgb3IgYikgZG9uJ3Qg
ZXhwb3NlIFNSLUlPViBmdW5jdGlvbmFsaXR5IGF0IGFsbCBvbiB0aGUgcm9vdA0KPiBjb21wbGV4
IGlmIGl0IGNhbid0IGJlIGd1YXJhbnRlZWQgdG8gd29yayBwcm9wZXJseS4NCg0KQWdyZWUsIGlm
IGVuYWJsZSBtb3JlIHRoYW4gMTYgUENJZSBkZXZpY2VzLCB0aGUgc3RyZWFtIElEcyBmb3IgUENJ
ZSBhcmUgbm90IGVub3VnaCwNCnRoZSByb290IGNhdXNlIGlzIHRoZSBsaW1pdGF0aW9uIG9mIHRo
ZSBoYXJkd2FyZSwgSSB0aGluayBJIGhhdmUgdG8gZHJvcCBpdCwgdGhhbmtzIGEgbG90Lg0KDQo+
IA0KPiBSb2Jpbi4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
