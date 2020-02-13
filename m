Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 481F815B7D5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 04:35:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tGDeb6ajBmUEOlofmakXkpauupxXITm0nWotlnAfoy0=; b=Iz+Kf1lvUoXVB8
	SoDg0S87ohT2nQjRmqnvwMhWfaJja3xynnKL2NaY6iyz3rE34bh6aU7efneuBYFLR2Cw0OBtKO225
	vi9c9O27DPAB7rudD1V+rOqcsXvzzRiGdo9hNC94uoD682ozPvIHdUFv3jxumtDnwEceswmam8Qgo
	T44WLaPwxcTM1BNTyYohMUdvgVPjaSeV1ZnBzdX8ZuEUq8Bz7xyPs0+gA/h8NCNxEqoElhUs0NqHB
	ZpgxIpbUK1cF9rUgqZconuvPq2SvT/0cObYiuDxGaw9WnnyGUR7T1zKdTF82XJdY6Dt9Y9LZ/Mobh
	ftUtMZATVfxn+cz6u2cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j25Hw-0000gw-GR; Thu, 13 Feb 2020 03:35:40 +0000
Received: from mail-eopbgr70048.outbound.protection.outlook.com ([40.107.7.48]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j25Hn-0000fz-R3
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 03:35:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A35WIT62Fz1GZ1KaSmbsls9mJZnQPbOXbKtz6xZ/JJgTobwQzhgbuVUdy1PiyLBC6SfJVAyau2pmFcpKId9yFwodirHC3KrbNxP9ipEI5vkGudenPssC1QqrwEh1o20wNFtiQKM3xI107PfHX2jsHECd+LgOTy+nersLAI8miJ6mBQlHrcx/ZU1KaGY/uLdz62wpwBOPYLE4zmgxoWtHo+rW+oUAfCja1vpOhEHfmYCSirAct3BKpuLoD2oBfzfdqzknhHu7Gq/7WZbAAXipG0Zj8GB8hTazvQ24JKSmJYDiiATjp2+YmYMdOkFzi5TqbrSTAetaHuqeEN2V7QPWrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hLQvY79DqMbpxydkZLPIbK5pYfZgBrBtFBkt5GQPAsU=;
 b=jhIcMZ6Dbj2Xb2klwp0vBgNqcjfEiTEbecvXdo3uWHtv002fA5xWEHxgGIUQxDEHrPmGYP5mQLHV5DE1cGvj7WMeFFrhpVOwIRTBdixei3hwi5p4LCAvwyyIzFYjFDD2rqp6CLVrKhmhsoZwanmFCluy466cr0wysXnLCAioxFYOO38OI7phj3XABoPHeEnmeLm6E72N+wn+DAKhgYtWxr4ADA/F1Pv8XOCMiFMe61cwBW8ocPQKrTbivFXOAROEbrPYQXZd25q2gP/rxnpAFEUJprEY7kG/OwPLWabr9XBLIW3wvTxJnZUaJ4Tdpcfy8Qr3fPsE+EJB2ZzKsPXGFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hLQvY79DqMbpxydkZLPIbK5pYfZgBrBtFBkt5GQPAsU=;
 b=fi9cjsyqUdi/ww7SUNyDp6URe5iwt1TzPdLBHGIuSAMqd9tbG6HI2zQ8Baz3g128kOaIPEvCW97Yzep7ctlaqUv+GWIq7VcTuF27NWtuUiFtHIg7FCqkFu+OMBCyxHkACB7ViM0jcOg1Ec1xAdoDKkjf2Puep2arrmDb5jI6AgQ=
Received: from VE1PR04MB6768.eurprd04.prod.outlook.com (10.255.118.26) by
 VE1PR04MB6510.eurprd04.prod.outlook.com (20.179.235.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.24; Thu, 13 Feb 2020 03:35:25 +0000
Received: from VE1PR04MB6768.eurprd04.prod.outlook.com
 ([fe80::b1d4:f0d5:b56c:365b]) by VE1PR04MB6768.eurprd04.prod.outlook.com
 ([fe80::b1d4:f0d5:b56c:365b%5]) with mapi id 15.20.2729.024; Thu, 13 Feb 2020
 03:35:25 +0000
From: Qiang Zhao <qiang.zhao@nxp.com>
To: Christophe Leroy <christophe.leroy@c-s.fr>, Rasmus Villemoes
 <linux@rasmusvillemoes.dk>, Leo Li <leoyang.li@nxp.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
Subject: RE: [Regression 5.6-rc1][Bisected b6231ea2b3c6] Powerpc 8xx doesn't
 boot anymore
Thread-Topic: [Regression 5.6-rc1][Bisected b6231ea2b3c6] Powerpc 8xx doesn't
 boot anymore
Thread-Index: AQHV4bApbcHQWh4/P0SAWF2GezJkLKgXpBIAgADUkHA=
Date: Thu, 13 Feb 2020 03:35:25 +0000
Message-ID: <VE1PR04MB6768B3B0F369280338370B87911A0@VE1PR04MB6768.eurprd04.prod.outlook.com>
References: <0d45fa64-51ee-0052-cb34-58c770c5b3ce@c-s.fr>
 <aee10440-c244-7c93-d3bb-fd29d8a83be4@c-s.fr>
In-Reply-To: <aee10440-c244-7c93-d3bb-fd29d8a83be4@c-s.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiang.zhao@nxp.com; 
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f38c0d8e-2f7f-405c-8dc3-08d7b035c37d
x-ms-traffictypediagnostic: VE1PR04MB6510:|VE1PR04MB6510:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB65103E1A21FF4B35D8E64FA6911A0@VE1PR04MB6510.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-forefront-prvs: 031257FE13
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(346002)(376002)(366004)(396003)(199004)(189003)(7696005)(4326008)(26005)(186003)(71200400001)(44832011)(55016002)(8936002)(2906002)(33656002)(86362001)(478600001)(316002)(54906003)(66446008)(5660300002)(81156014)(8676002)(81166006)(66476007)(6506007)(53546011)(110136005)(9686003)(64756008)(66556008)(52536014)(66946007)(76116006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6510;
 H:VE1PR04MB6768.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mFkrpUb9rreiUoBryMdGigYV7i8fYxy1DX/LPHOQwS+hqANkAJVG8Qdqj21A0aq/vDMs6vocSIY04014nW16WMaPomRi16bg9156cpNlbGw+cA+FLfGYQgpFYDmgTYBOzb5jQitfU93K5izURjGhxLtCXpF1J12zx0etrGuE87YQ2DVB230Br3xpucbpaQkbEygA5A5BgJyS6joYaAXYiytnxnimjqCi5l2XNpfMHRdy5iALeVu6X4qFPsCh8ykZD/s9L6ga/e0LbRnXa07EpeeGOWh4UhhNlw5jof9FXWFq048Xfxud+RZb4ozjwIydcCoXatKzigynjmChuZ51V9j4AVRbO1pQAf4Ft3WLTzkc+QwS8B+SKK0vEd0Nn+V38JT85S4N8o3SgX5y6mjpKVaaFtIl9kYRp8VZRKMIvZVZvAg04OwnmKsMT/z9CSC8
x-ms-exchange-antispam-messagedata: wIq4yJGSy4TCopWOZA2nHkaKWQ2nN/juIipKUJxoVQPPLchCPKYEXQH79qsaG3I9T/DoR7oMQSxJjE36ZqwUswm2J6ImetqvUx16HFDIwZnrHQ9tzpoYLp1MMb2+E14OWvxxOkaSzHZf6Egu+x2LLw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f38c0d8e-2f7f-405c-8dc3-08d7b035c37d
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2020 03:35:25.4086 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MYLRVv4HlHg7F3FFkkrKUrqWTGH9C6AI/S9J5pC/Rx/Vw3y4QBwPQgU7m+sgxGDdmgavY9XgU60FpQSEfcy/JQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6510
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_193531_948793_27F42128 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.48 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Scott Wood <oss@buserror.net>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDIvMTIvMjAyMCAyMjo1MCBQTSwgQ2hyaXN0b3BoZSBMZXJveSB3cm90ZToNCj4gLS0tLS1P
cmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQ2hyaXN0b3BoZSBMZXJveSA8Y2hyaXN0b3Bo
ZS5sZXJveUBjLXMuZnI+DQo+IFNlbnQ6IDIwMjDlubQy5pyIMTLml6UgMjI6NTANCj4gVG86IFJh
c211cyBWaWxsZW1vZXMgPGxpbnV4QHJhc211c3ZpbGxlbW9lcy5kaz47IExlbyBMaQ0KPiA8bGVv
eWFuZy5saUBueHAuY29tPjsgUWlhbmcgWmhhbyA8cWlhbmcuemhhb0BueHAuY29tPjsgR3JlZw0K
PiBLcm9haC1IYXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4NCj4gQ2M6IFNjb3R0
IFdvb2QgPG9zc0BidXNlcnJvci5uZXQ+OyBsaW51eHBwYy1kZXZAbGlzdHMub3psYWJzLm9yZzsg
TEtNTA0KPiA8bGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZz47IGxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZw0KPiBTdWJqZWN0OiBSZTogW1JlZ3Jlc3Npb24gNS42LXJjMV1b
QmlzZWN0ZWQgYjYyMzFlYTJiM2M2XSBQb3dlcnBjIDh4eCBkb2Vzbid0DQo+IGJvb3QgYW55bW9y
ZQ0KPiANCj4gLS0tDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3R0eS9zZXJpYWwvY3BtX3VhcnQv
Y3BtX3VhcnRfY29yZS5jDQo+IGIvZHJpdmVycy90dHkvc2VyaWFsL2NwbV91YXJ0L2NwbV91YXJ0
X2NvcmUuYw0KPiBpbmRleCA0Y2FiZGVkODM5MGIuLjM0MWQ2ODJlYzZlYiAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy90dHkvc2VyaWFsL2NwbV91YXJ0L2NwbV91YXJ0X2NvcmUuYw0KPiArKysgYi9k
cml2ZXJzL3R0eS9zZXJpYWwvY3BtX3VhcnQvY3BtX3VhcnRfY29yZS5jDQo+IEBAIC0xMzUxLDYg
KzEzNTEsNyBAQCBzdGF0aWMgaW50IF9faW5pdCBjcG1fdWFydF9jb25zb2xlX3NldHVwKHN0cnVj
dA0KPiBjb25zb2xlICpjbywgY2hhciAqb3B0aW9ucykNCj4gICAJCWNscmJpdHMzMigmcGluZm8t
PnNjY3AtPnNjY19nc21ybCwgU0NDX0dTTVJMX0VOUiB8DQo+IFNDQ19HU01STF9FTlQpOw0KPiAg
IAl9DQo+IA0KPiArCWNwbV9tdXJhbV9pbml0KCk7DQo+ICAgCXJldCA9IGNwbV91YXJ0X2FsbG9j
YnVmKHBpbmZvLCAxKTsNCj4gDQo+ICAgCWlmIChyZXQpDQo+IA0KSG93IGFib3V0IHRoZSBwYXRj
aCBsaWtlIGJlbG93PyBKdXN0IGEgZHJhZnQuDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL3NvYy9m
c2wvcWUvcWUuYyBiL2RyaXZlcnMvc29jL2ZzbC9xZS9xZS5jDQppbmRleCA5NmMyMDU3Li5jNWMy
NDY0IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9zb2MvZnNsL3FlL3FlLmMNCisrKyBiL2RyaXZlcnMv
c29jL2ZzbC9xZS9xZS5jDQpAQCAtMjksNiArMjksOCBAQA0KICNpbmNsdWRlIDxzb2MvZnNsL3Fl
L2ltbWFwX3FlLmg+DQogI2luY2x1ZGUgPHNvYy9mc2wvcWUvcWUuaD4NCg0KK3N0YXRpYyBpbnQg
cWVfaW5pdGVkOw0KKw0KIHN0YXRpYyB2b2lkIHFlX3NudW1zX2luaXQodm9pZCk7DQogc3RhdGlj
IGludCBxZV9zZG1hX2luaXQodm9pZCk7DQoNCkBAIC02MzcsMTUgKzYzOSwxOSBAQCB1bnNpZ25l
ZCBpbnQgcWVfZ2V0X251bV9vZl9zbnVtcyh2b2lkKQ0KIH0NCiBFWFBPUlRfU1lNQk9MKHFlX2dl
dF9udW1fb2Zfc251bXMpOw0KDQotc3RhdGljIGludCBfX2luaXQgcWVfaW5pdCh2b2lkKQ0KK2lu
dCBfX2luaXQgcWVfaW5pdCh2b2lkKQ0KIHsNCiAgICAgICAgc3RydWN0IGRldmljZV9ub2RlICpu
cDsNCg0KKyAgICAgICBpZihxZV9pbml0ZWQpDQorICAgICAgICAgICAgICAgcmV0dXJuIDA7DQor
DQogICAgICAgIG5wID0gb2ZfZmluZF9jb21wYXRpYmxlX25vZGUoTlVMTCwgTlVMTCwgImZzbCxx
ZSIpOw0KICAgICAgICBpZiAoIW5wKQ0KICAgICAgICAgICAgICAgIHJldHVybiAtRU5PREVWOw0K
ICAgICAgICBxZV9yZXNldCgpOw0KICAgICAgICBvZl9ub2RlX3B1dChucCk7DQorICAgICAgIHFl
X2luaXRlZCA9IDENCiAgICAgICAgcmV0dXJuIDA7DQogfQ0KIHN1YnN5c19pbml0Y2FsbChxZV9p
bml0KTsNCmRpZmYgLS1naXQgYS9kcml2ZXJzL3R0eS9zZXJpYWwvY3BtX3VhcnQvY3BtX3VhcnRf
Y29yZS5jIGIvZHJpdmVycy90dHkvc2VyaWFsL2NwbV91YXJ0L2NwbV91YXJ0X2NvcmUuYw0KaW5k
ZXggMTlkNWE0Yy4uY2JmMmMzMiAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvdHR5L3NlcmlhbC9jcG1f
dWFydC9jcG1fdWFydF9jb3JlLmMNCisrKyBiL2RyaXZlcnMvdHR5L3NlcmlhbC9jcG1fdWFydC9j
cG1fdWFydF9jb3JlLmMNCkBAIC0xMzczLDYgKzEzNzMsNyBAQCBzdGF0aWMgc3RydWN0IGNvbnNv
bGUgY3BtX3NjY191YXJ0X2NvbnNvbGUgPSB7DQoNCiBzdGF0aWMgaW50IF9faW5pdCBjcG1fdWFy
dF9jb25zb2xlX2luaXQodm9pZCkNCiB7DQorICAgICAgIHFlX2luaXQoKTsNCiAgICAgICAgcmVn
aXN0ZXJfY29uc29sZSgmY3BtX3NjY191YXJ0X2NvbnNvbGUpOw0KICAgICAgICByZXR1cm4gMDsN
CiB9DQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9zb2MvZnNsL3FlL3FlLmggYi9pbmNsdWRlL3NvYy9m
c2wvcWUvcWUuaA0KaW5kZXggZTI4MmFjMC4uNTMxYmEwNSAxMDA2NDQNCi0tLSBhL2luY2x1ZGUv
c29jL2ZzbC9xZS9xZS5oDQorKysgYi9pbmNsdWRlL3NvYy9mc2wvcWUvcWUuaA0KQEAgLTg4LDYg
Kzg4LDcgQEAgc3RhdGljIGlubGluZSBib29sIHFlX2Nsb2NrX2lzX2JyZyhlbnVtIHFlX2Nsb2Nr
IGNsaykNCg0KIGV4dGVybiBzcGlubG9ja190IGNteGdjcl9sb2NrOw0KDQoraW50IF9faW5pdCAg
cWVfaW5pdCh2b2lkKTsNCiAvKiBFeHBvcnQgUUUgY29tbW9uIG9wZXJhdGlvbnMgKi8NCiAjaWZk
ZWYgQ09ORklHX1FVSUNDX0VOR0lORQ0KIGV4dGVybiB2b2lkIHFlX3Jlc2V0KHZvaWQpOw0KDQpC
ZXN0IFJlZ2FyZHMNClFpYW5nIFpoYW8NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
