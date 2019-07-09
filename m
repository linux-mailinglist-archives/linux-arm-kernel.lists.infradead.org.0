Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 936E162E7B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 05:10:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KSsgSUiSkdt8MKJsupH12ozpnjU5O5lf/XklH29ydXk=; b=uOWXWKr+nIJBUi
	DotGwUDRs81bhVsJJRpx6juWrX2DhUHXBVT9DQ9+QN9ZkQoeoX8flyuR6T5Jj2CX5snHFAXn73yc9
	ZPgg3P7o7iRaD+guQScAIvSwz0pQvu4CtUX3W0iZHdLACVZnBJnCuKP7CnADgsBItN54bxffGiAzn
	dXimaO7smaCXSubCa0YlQhxInGCuWqM2royJ1Kmuh54tWERyAbXZ49ZGUzO+03uNpb+ZA6jYKH8S/
	klTQFtZpX6eA5d8TG0IC2VECP/7fUgtq+vWXiTUb7RiK+PoBQpjb4S0ru2sTVYWZ/JrdHtaPTaPbt
	id1e1SQ231jt7bm74how==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkgVz-0003Yn-LW; Tue, 09 Jul 2019 03:09:59 +0000
Received: from mail-eopbgr10052.outbound.protection.outlook.com ([40.107.1.52]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkgVm-0003YC-Gy
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 03:09:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ExZpSenRfrQcdUwa+HA/UMqXBsKtxR57S5dEKyXgWCg=;
 b=MntwOYs+VmY5SFKQ2G2YQHdevV0GudDNwRd8Yk7o3v5zJEXBGUBKN+D4PPre5By14sGIYpDqkSEP9pSgC7xf3MEC455Okbr+aH8FdZJxkg/e4u8Kuk4D7AS8+mi9Dk/dyJizJ7N6hfz9QcNwJgCUdBBKGTy5zKitakKmvdMcdQs=
Received: from AM6PR0402MB3911.eurprd04.prod.outlook.com (52.133.30.10) by
 AM6PR0402MB3703.eurprd04.prod.outlook.com (52.133.28.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.19; Tue, 9 Jul 2019 03:09:40 +0000
Received: from AM6PR0402MB3911.eurprd04.prod.outlook.com
 ([fe80::d5e6:6a87:7e6:95a]) by AM6PR0402MB3911.eurprd04.prod.outlook.com
 ([fe80::d5e6:6a87:7e6:95a%5]) with mapi id 15.20.2052.020; Tue, 9 Jul 2019
 03:09:40 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, "viresh.kumar@linaro.org"
 <viresh.kumar@linaro.org>
Subject: RE: [PATCH] cpufreq: imx-cpufreq-dt: Assign max supported frequency
 as suspend frequency
Thread-Topic: [PATCH] cpufreq: imx-cpufreq-dt: Assign max supported frequency
 as suspend frequency
Thread-Index: AQHVNWKJ4JQ0/eE8UEiBYmKtB9w1KqbBm1SQ
Date: Tue, 9 Jul 2019 03:09:40 +0000
Message-ID: <AM6PR0402MB3911ED00DB7CCD6866DB8AE2F5F10@AM6PR0402MB3911.eurprd04.prod.outlook.com>
References: <20190708074624.910-1-Anson.Huang@nxp.com>
 <VI1PR04MB5055565FFF1241B61B47F22AEEF60@VI1PR04MB5055.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB5055565FFF1241B61B47F22AEEF60@VI1PR04MB5055.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cc96bfa6-9989-4620-52fe-08d7041ae227
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR0402MB3703; 
x-ms-traffictypediagnostic: AM6PR0402MB3703:
x-microsoft-antispam-prvs: <AM6PR0402MB37032029A8F8E408733EA14DF5F10@AM6PR0402MB3703.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0093C80C01
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(376002)(346002)(39860400002)(366004)(189003)(199004)(6436002)(229853002)(7416002)(54906003)(9686003)(55016002)(26005)(102836004)(6506007)(25786009)(7696005)(478600001)(8936002)(76176011)(3846002)(53936002)(53546011)(68736007)(4326008)(15650500001)(316002)(99286004)(110136005)(81166006)(8676002)(33656002)(256004)(2906002)(186003)(76116006)(11346002)(5660300002)(86362001)(446003)(14444005)(52536014)(44832011)(476003)(14454004)(66946007)(73956011)(64756008)(2501003)(66446008)(66556008)(6246003)(66066001)(486006)(6116002)(66476007)(305945005)(74316002)(71200400001)(7736002)(81156014)(71190400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR0402MB3703;
 H:AM6PR0402MB3911.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0IHNTQ58aN2yipavn3IQG+SgWip+6ZO573OtfIYR81631A+w9qrJOSsyS2LWWgiSZS+NJgxk3n4v/z7ejZssMnN3bmAPdACU4AwfdkojVsROTBFaeCK6ijNywbURnVuTVt4oSX0q8qdoFRjt1PKcPRVlobEimgxv3uIywSB/iCXNnH2p9bJSA7b5CWhdHInOujReEeBa2hHf1TMNUgcXpZQGVyJpAtU+A2WAxnu4iCt7CCimKjgQFCBc1fAMRNF3cDXl0frM5ywFVogGN+0tO7CRBm0ajZhRDBTegOo8mxLyVDGuYIRCRyDVU/FaBOWomyrNzzq3vXdgNU8k0cj3INc3eAkbKPrwzCvpw3J6wMWzyOKGgncTbzxiMjCDYj94JD7EVaWdS4Pk/CYk0ORLT2Bn0Zj9wX4EDnd+iVqbTKQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc96bfa6-9989-4620-52fe-08d7041ae227
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2019 03:09:40.4694 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3703
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_200946_639309_8221AF16 
X-CRM114-Status: GOOD (  18.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.52 listed in list.dnswl.org]
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
Cc: "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIExlb25hcmQNCg0KPiBPbiA3LzgvMjAxOSAxMDo1NSBBTSwgQW5zb24uSHVhbmdAbnhwLmNv
bSB3cm90ZToNCj4gPiBUbyByZWR1Y2UgdGhlIHN1c3BlbmQvcmVzdW1lIGxhdGVuY3ksIENQVSdz
IG1heCBzdXBwb3J0ZWQgZnJlcXVlbmN5DQo+ID4gc2hvdWxkIGJlIHVzZWQgZHVyaW5nIGxvdyBs
ZXZlbCBzdXNwZW5kL3Jlc3VtZSBwaGFzZSwgIm9wcC1zdXNwZW5kIg0KPiA+IHByb3BlcnR5IGlz
IE5PVCBmZWFzaWJsZSBzaW5jZSBPUFAgZGVmaW5lZCBpbiBEVCBjb3VsZCBiZSBOT1QNCj4gPiBz
dXBwb3J0ZWQgYWNjb3JkaW5nIHRvIHNwZWVkIGdhcmRpbmcgYW5kIG1hcmtldCBzZWdtZW50IGZ1
c2Ugc2V0dGluZ3MuDQo+ID4gU28gd2UgY2FuIGFzc2lnbiB0aGUgY3B1ZnJlcSBwb2xpY3kncyBz
dXNwZW5kX2ZyZXEgd2l0aCBtYXggYXZhaWxhYmxlDQo+ID4gZnJlcXVlbmN5IHByb3ZpZGVkIGJ5
IGNwdWZyZXEgZHJpdmVyLg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogQW5zb24gSHVhbmcgPEFu
c29uLkh1YW5nQG54cC5jb20+DQo+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2NwdWZyZXEv
aW14LWNwdWZyZXEtZHQuYw0KPiA+IGIvZHJpdmVycy9jcHVmcmVxL2lteC1jcHVmcmVxLWR0LmMN
Cj4gDQo+ID4gK3N0YXRpYyBpbnQgX19pbml0IGlteF9jcHVmcmVxX2R0X3NldHVwX3N1c3BlbmRf
b3BwKHZvaWQpDQo+ID4gK3sNCj4gPiArCXN0cnVjdCBjcHVmcmVxX3BvbGljeSAqcG9saWN5ID0g
Y3B1ZnJlcV9jcHVfZ2V0KDApOw0KPiA+ICsNCj4gPiArCXBvbGljeS0+c3VzcGVuZF9mcmVxID0g
Y3B1ZnJlcV9xdWlja19nZXRfbWF4KDApOw0KPiA+ICsNCj4gPiArCXJldHVybiAwOw0KPiA+ICt9
DQo+ID4gK2xhdGVfaW5pdGNhbGwoaW14X2NwdWZyZXFfZHRfc2V0dXBfc3VzcGVuZF9vcHApOw0K
PiANCj4gVGhlIGlteC1jcHVmcmVxLWR0IGRyaXZlciBpcyBidWlsdCBhcyBhIG1vZHVsZSBieSBk
ZWZhdWx0IGFuZCB0aGlzIHBhdGNoDQo+IHByb2R1Y2VzIGFuIGVycm9yOg0KPiANCj4gSW4gZmls
ZSBpbmNsdWRlZCBmcm9tIC4uL2RyaXZlcnMvY3B1ZnJlcS9pbXgtY3B1ZnJlcS1kdC5jOjExOg0K
PiAuLi9pbmNsdWRlL2xpbnV4L21vZHVsZS5oOjEzMTo0MjogZXJyb3I6IHJlZGVmaW5pdGlvbiBv
ZiDigJhfX2luaXR0ZXN04oCZDQo+ICAgIHN0YXRpYyBpbmxpbmUgaW5pdGNhbGxfdCBfX21heWJl
X3VudXNlZCBfX2luaXR0ZXN0KHZvaWQpICBcDQo+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBefn5+fn5+fn5+DQo+IC4uL2luY2x1ZGUvbGludXgvZGV2aWNlLmg6
MTY1NjoxOiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g4oCYbW9kdWxlX2luaXTigJkNCj4g
ICBtb2R1bGVfaW5pdChfX2RyaXZlciMjX2luaXQpOyBcDQo+ICAgXn5+fn5+fn5+fn4NCj4gDQo+
IEFzIGZhciBhcyBJIGNhbiB0ZWxsIGxhdGVfaW5pdGNhbGwgaXMgbm90IHN1cHBvcnRlZCBmb3Ig
bW9kdWxlcy4NCg0KQWgsIHllcywgSSBoYXZlIE5PVCB0ZXN0IHRoZSBtb2R1bGUgYnVpbGQsIEkg
T05MWSB0ZXN0ZWQgdGhlIGJ1aWx0LWluIGNhc2UsIHRoYW5rcyBmb3INCnJlbWluZGVyLg0KDQo+
IA0KPiBWaXJlc2g6ICJtYXggZnJlcSBhcyBzdXNwZW5kIGZyZXEiIGlzIHNvbWV0aGluZyB0aGF0
IGNvdWxkIGJlIHVzZWZ1bCBmb3INCj4gb3RoZXIgU09DIGZhbWlsaWVzLiBUaGUgaGFyZHdhcmUg
Y2FuIHN1c3BlbmQgYXQgYW55IGZyZXE7IGl0J3MganVzdCB0aGF0IHRoZQ0KPiBoaWdoZXN0IG9u
ZSBtYWtlcyBzZW5zZSBiZWNhdXNlIGl0IG1ha2VzIHN1c3BlbmQvcmVzdW1lIHNsaWdodGx5IGZh
c3Rlci4NCg0KQWdyZWUuDQoNCj4gDQo+IENvdWxkIHRoaXMgYmVoYXZpb3IgYmUgcHVzaGVkIHRv
IGNwdWZyZXEtZHQgYXMgYSBib29sIGZsYWcgaW5zaWRlIHN0cnVjdA0KPiBjcHVmcmVxX2R0X3Bs
YXRmb3JtX2RhdGE/DQo+IA0KPiBPbmx5IGEgZmV3IG90aGVyIHBsYXRmb3JtcyB1c2UgdGhpcywg
bW9zdCBvdGhlcnMgcGFzcyBOVUxMIGxpa2UgaW14LiBCdXQNCj4gcGFzc2luZyBjdXN0b20gU09D
LXNwZWNpZmljIGZsYWdzIHRvIGNwdWZyZXEtZHQgbWFrZXMgYSBsb3Qgb2Ygc2Vuc2UNCg0KQWx0
aG91Z2ggd2UgaGF2ZSBvdGhlciBtZXRob2RzIHRvIG1ha2UgaXQgd29yayBmb3IgaS5NWCBwbGF0
Zm9ybXMsIGxpa2Ugc2V0dGluZw0KdGhlIHN1c3BlbmQgZnJlcSBhcyB0aGlzIHBhdGNoIGRpZCBi
dXQgT05MWSBiZSBjYWxsZWQgYmVmb3JlIHN1c3BlbmQsIGJ1dCBpZiBjb21tb24NCmNwdWZyZXEt
ZHQgY2FuIGhhbmRsZSB0aGlzIGNhc2UsIHRoYXQgd291bGQgYmVuZWZpdCB1cyBhbmQgb3RoZXIg
cGxhdGZvcm1zIGEgbG90LCB3YWl0aW5nDQpmb3IgeW91ciBvcGluaW9uLg0KDQpUaGFua3MsDQpB
bnNvbg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
