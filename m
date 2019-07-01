Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E305B8D7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 12:18:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RAEZFMrbujmkjIM7yj9ml0DaGDcLz2dBPGB8aYwPTe4=; b=ON7INzhGxRnsNG
	7xxi39kvJ5PNJTsTxPqlkLgs9Gcpr81ROaAvDVAg+8S1N/TR7HYL+30eb2F8F5/PPmAeLIa120Mae
	wv78VBmOWqm/xXgYp4yyX5nKwZlipPGRSYaid4Ezu40mc3G2Bv1H0tYNVa5i5VzYCpYKKJKTZfcVe
	P9u/SRtcNoOh+YCAdWIjyrO2Mv7LoRqoiNyyQpFELiDTNlQEGN7f4hEfFgoMKgV4HttVK+sfG2XqU
	wkqOSJVlxM6bOXWSPu4haForuv+OJNWbAWl+yfw4xvRPZAJZBeEWPU0ODrdF6xkS5OzxItg6KMLNN
	RhaSpxPPwZlDzrjodReQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhtOd-0003df-3R; Mon, 01 Jul 2019 10:18:51 +0000
Received: from mail-db5eur03on0611.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::611]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhtOR-0003co-6l
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 10:18:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0XhAfId3MqzHmx1ScgWqLCuRLGCj68DTrsNvi+P5H/I=;
 b=lO6GFAb2medFcbTUsWXH+Of4/3XurUTtXbby/M39bODXHWvCHDhRpmBu0oYXBTiO3GVGDfTjdiYq15qzhnBPoTC2ertXCNMJ8Vx6WFWuuzbhiwxKuhAwK5Mk5tgfGMAKyhWy4+pe6u1VfNZLiyukhadQ1SlnnXV9Dqi94IRTICM=
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com (20.179.250.159) by
 DB8PR04MB6348.eurprd04.prod.outlook.com (10.255.170.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Mon, 1 Jul 2019 10:18:35 +0000
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::93a:4344:1120:4ca0]) by DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::93a:4344:1120:4ca0%6]) with mapi id 15.20.2032.019; Mon, 1 Jul 2019
 10:18:35 +0000
From: "Z.q. Hou" <zhiqiang.hou@nxp.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: RE: [PATCHv5 08/20] PCI: mobiveil: Use the 1st inbound window for MEM
 inbound transactions
Thread-Topic: [PATCHv5 08/20] PCI: mobiveil: Use the 1st inbound window for
 MEM inbound transactions
Thread-Index: AQHU8QrC2oaNOTxwc0KYfHKro/AvVaaxs5sAgARUBCA=
Date: Mon, 1 Jul 2019 10:18:35 +0000
Message-ID: <DB8PR04MB67476D1CB2BC5C6C1779012284F90@DB8PR04MB6747.eurprd04.prod.outlook.com>
References: <20190412083635.33626-1-Zhiqiang.Hou@nxp.com>
 <20190412083635.33626-9-Zhiqiang.Hou@nxp.com>
 <20190628160212.GB21829@e121166-lin.cambridge.arm.com>
In-Reply-To: <20190628160212.GB21829@e121166-lin.cambridge.arm.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=zhiqiang.hou@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7e2cd95a-40ca-4b93-9f42-08d6fe0d79fd
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR04MB6348; 
x-ms-traffictypediagnostic: DB8PR04MB6348:
x-microsoft-antispam-prvs: <DB8PR04MB63484FAB4D0C9D6AB72EF8C584F90@DB8PR04MB6348.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2043;
x-forefront-prvs: 00851CA28B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(346002)(376002)(396003)(366004)(189003)(199004)(40224003)(13464003)(54534003)(14444005)(33656002)(305945005)(99286004)(86362001)(55016002)(229853002)(316002)(66946007)(66476007)(4326008)(66446008)(64756008)(66556008)(68736007)(2906002)(7696005)(71190400001)(6436002)(102836004)(6506007)(73956011)(81156014)(74316002)(8936002)(53936002)(53546011)(71200400001)(6116002)(6916009)(486006)(8676002)(3846002)(256004)(66066001)(81166006)(54906003)(5660300002)(26005)(25786009)(478600001)(76176011)(6246003)(186003)(52536014)(7416002)(9686003)(76116006)(476003)(11346002)(7736002)(446003)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB6348;
 H:DB8PR04MB6747.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: llmTq5Joe2SGhANHv6rvnqsvSbbAFdUk2//toW0sW6hzdLLyrUOUUIo08+uuKHmEY66wZ6YJcHNDP5WXt7fsVFr+492xf02pm2vlmZHdksfBomIElo39O5g6gI5PWdvjadE8bbnHOp+7u6qEtK+jZvlRzNpFhWwd/kn0VKBK5+0jpiBcIWLOToJtdzQG9DgXntNdGOWcNdJS5CAxv/jPok605JSDjXsinKNIAa5u+e5KAcwf1TiMvqQiJiHY4hJ1Lpk9h/R/V8qK30qdpLY1kSXLhAHXWI6oKV1LJPX12BNNoJiafMFGZDbh1+UIgMzaUltn3ETGBbYiH2TvwgxnSaiyqAqaOWtAcVNaAihaUPYhFPrupZ35c2uMvHfWHBBAqD5BWDUOKp0nwoj4jdotNSQfB74CTzmTRGMgPmqYhyI=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e2cd95a-40ca-4b93-9f42-08d6fe0d79fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2019 10:18:35.3029 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zhiqiang.hou@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6348
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_031839_251536_1FEC550A 
X-CRM114-Status: GOOD (  17.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0a:0:0:0:611 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Xiaowei Bao <xiaowei.bao@nxp.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "l.subrahmanya@mobiveil.co.in" <l.subrahmanya@mobiveil.co.in>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTG9yZW56bywNCg0KVGhhbmtzIGEgbG90IGZvciB5b3VyIGNvbW1lbnRzIQ0KDQo+IC0tLS0t
T3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IExvcmVuem8gUGllcmFsaXNpIDxsb3Jlbnpv
LnBpZXJhbGlzaUBhcm0uY29tPg0KPiBTZW50OiAyMDE5xOo21MIyOcjVIDA6MDINCj4gVG86IFou
cS4gSG91IDx6aGlxaWFuZy5ob3VAbnhwLmNvbT4NCj4gQ2M6IGxpbnV4LXBjaUB2Z2VyLmtlcm5l
bC5vcmc7IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsNCj4gZGV2aWNldHJl
ZUB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7DQo+IGJoZWxn
YWFzQGdvb2dsZS5jb207IHJvYmgrZHRAa2VybmVsLm9yZzsgbWFyay5ydXRsYW5kQGFybS5jb207
DQo+IGwuc3VicmFobWFueWFAbW9iaXZlaWwuY28uaW47IHNoYXduZ3VvQGtlcm5lbC5vcmc7IExl
byBMaQ0KPiA8bGVveWFuZy5saUBueHAuY29tPjsgY2F0YWxpbi5tYXJpbmFzQGFybS5jb207IHdp
bGwuZGVhY29uQGFybS5jb207DQo+IE1pbmdrYWkgSHUgPG1pbmdrYWkuaHVAbnhwLmNvbT47IE0u
aC4gTGlhbiA8bWluZ2h1YW4ubGlhbkBueHAuY29tPjsNCj4gWGlhb3dlaSBCYW8gPHhpYW93ZWku
YmFvQG54cC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0h2NSAwOC8yMF0gUENJOiBtb2JpdmVp
bDogVXNlIHRoZSAxc3QgaW5ib3VuZCB3aW5kb3cgZm9yDQo+IE1FTSBpbmJvdW5kIHRyYW5zYWN0
aW9ucw0KPiANCj4gT24gRnJpLCBBcHIgMTIsIDIwMTkgYXQgMDg6MzY6MDBBTSArMDAwMCwgWi5x
LiBIb3Ugd3JvdGU6DQo+ID4gRnJvbTogSG91IFpoaXFpYW5nIDxaaGlxaWFuZy5Ib3VAbnhwLmNv
bT4NCj4gPg0KPiA+IFRoZSBpbmJvdW5kIHdpbmRvd3MgaGF2ZSBpbmRlcGVuZGVudCByZWdpc3Rl
ciBzZXQgYWdhaW5zdCBvdXRib3VuZA0KPiB3aW5kb3dzLg0KPiA+IFRoaXMgcGF0Y2ggY2hhbmdl
IHRoZSBNRU0gaW5ib3VuZCB3aW5kb3cgdG8gdGhlIGZpcnN0IG9uZS4NCj4gDQo+IFlvdSBtZWFu
IHRoYXQgd2luZG93cyAwIGNhbiBiZSB1c2VkIGFzIHdlbGwgYXMgd2luZG93IDEgZm9yIGluYm91
bmQNCj4gd2luZG93cyBzbyBpdCBpcyBiZXR0ZXIgdG8gb3B0IGZvciB3aW5kb3cgMCBmb3IgY29u
c2lzdGVuY3kgPw0KDQpJIG1lYW4gdGhlIGluYm91bmQgd2luZG93cyBhbmQgb3V0Ym91bmQgd2lu
ZG93cyBhcmUgaW5kZXBlbmRlbnQsIHRoZXkNCmhhdmUgdGhlbXNlbHZlcycgcmVnaXN0ZXJzLCBh
bmQgYm90aCBzZXJpYWwgbnVtYmVyIHN0YXJ0cyBmcm9tIDA6DQpJbmJvdW5kIHdpbmRvd3M6ICMw
LCAjMSwgIzIuLi4NCk91dGJvdW5kIHdpbmRvd3M6ICMwLCAjMSwgIzIuLi4gDQoNClRoYW5rcywN
ClpoaXFpYW5nDQoNCj4gTG9yZW56bw0KPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBIb3UgWmhpcWlh
bmcgPFpoaXFpYW5nLkhvdUBueHAuY29tPg0KPiA+IFJldmlld2VkLWJ5OiBNaW5naHVhbiBMaWFu
IDxNaW5naHVhbi5MaWFuQG54cC5jb20+DQo+ID4gUmV2aWV3ZWQtYnk6IFN1YnJhaG1hbnlhIExp
bmdhcHBhIDxsLnN1YnJhaG1hbnlhQG1vYml2ZWlsLmNvLmluPg0KPiA+IC0tLQ0KPiA+IFY1Og0K
PiA+ICAtIENvcnJlY3RlZCBhbmQgcmV0b3VjaGVkIHRoZSBzdWJqZWN0IGFuZCBjaGFuZ2Vsb2cu
DQo+ID4NCj4gPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLW1vYml2ZWlsLmMgfCAyICst
DQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiA+
DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1tb2JpdmVpbC5j
DQo+ID4gYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtbW9iaXZlaWwuYw0KPiA+IGluZGV4
IGRmNzFjMTFiNDgxMC4uZTg4YWZjNzkyYTVjIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvcGNp
L2NvbnRyb2xsZXIvcGNpZS1tb2JpdmVpbC5jDQo+ID4gKysrIGIvZHJpdmVycy9wY2kvY29udHJv
bGxlci9wY2llLW1vYml2ZWlsLmMNCj4gPiBAQCAtNjE2LDcgKzYxNiw3IEBAIHN0YXRpYyBpbnQg
bW9iaXZlaWxfaG9zdF9pbml0KHN0cnVjdCBtb2JpdmVpbF9wY2llDQo+ICpwY2llKQ0KPiA+ICAJ
CQkgICBDRkdfV0lORE9XX1RZUEUsIHJlc291cmNlX3NpemUocGNpZS0+b2JfaW9fcmVzKSk7DQo+
ID4NCj4gPiAgCS8qIG1lbW9yeSBpbmJvdW5kIHRyYW5zbGF0aW9uIHdpbmRvdyAqLw0KPiA+IC0J
cHJvZ3JhbV9pYl93aW5kb3dzKHBjaWUsIFdJTl9OVU1fMSwgMCwgTUVNX1dJTkRPV19UWVBFLA0K
PiBJQl9XSU5fU0laRSk7DQo+ID4gKwlwcm9ncmFtX2liX3dpbmRvd3MocGNpZSwgV0lOX05VTV8w
LCAwLCBNRU1fV0lORE9XX1RZUEUsDQo+ID4gK0lCX1dJTl9TSVpFKTsNCj4gPg0KPiA+ICAJLyog
R2V0IHRoZSBJL08gYW5kIG1lbW9yeSByYW5nZXMgZnJvbSBEVCAqLw0KPiA+ICAJcmVzb3VyY2Vf
bGlzdF9mb3JfZWFjaF9lbnRyeSh3aW4sICZwY2llLT5yZXNvdXJjZXMpIHsNCj4gPiAtLQ0KPiA+
IDIuMTcuMQ0KPiA+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
