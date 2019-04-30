Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E3DEDA5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 02:24:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0/VUSsDtbL9xPG05prUagLyEmKOTdJk1wkZxuBQlMSA=; b=Yw+IQLNKPl1stN
	fzXHz7K5PbSpmahqTxc/Y3eFWeSPHipRraBsc/IkG6xmfQyyPENCLuWRF5V1EFnfdoc8lV2Wdc/6C
	/S+BWfbQwspKME2wQR7YIIh5HuOxVav7dl88hkQlqIbOwZFpFZZ5QgnJbvLvbBmcOsazDWGNRel/2
	BANzOFEkUo7UGdueTLMbOo8dKthQ02dNeV+3TTdsNKRUQCL+Drhe0/FU/rzS6O81iT4joFTEHdY01
	+rhbQ1Mz9PI00QJvNW38yLOZchSygXseYlWtySVNPBpec7NNJBlcMVnW1l3IlxmtbLWT1OQqDJJQT
	7iqBEY7h8no/L2V4wzEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLGZ2-0005ge-HY; Tue, 30 Apr 2019 00:24:04 +0000
Received: from mail-eopbgr10086.outbound.protection.outlook.com ([40.107.1.86]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLGYt-0005fg-Nd
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 00:23:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Us9/e3YEtHABk7roSqw7P05HelM2MqxP+2Ld8XPe1fY=;
 b=ULzAIfL1J4XAb8LG92ZyRNCSLhlu+ER5ckuMLMEd9HUBraL/HOgWvwVpXLHVSCY6NczX1AlvGrIywY1nTjHv18gXHQfOkiyGkjEyJn8bIGPQhEjasmY3gAf4/iEIxnD3xu9txZfnFMqurxkiJjR/7efi6C6rjkgAUhgp/tBAmCA=
Received: from AM6PR04MB5781.eurprd04.prod.outlook.com (20.179.3.19) by
 AM6PR04MB6296.eurprd04.prod.outlook.com (20.179.18.75) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Tue, 30 Apr 2019 00:23:47 +0000
Received: from AM6PR04MB5781.eurprd04.prod.outlook.com
 ([fe80::f9db:ed86:614e:460]) by AM6PR04MB5781.eurprd04.prod.outlook.com
 ([fe80::f9db:ed86:614e:460%4]) with mapi id 15.20.1835.018; Tue, 30 Apr 2019
 00:23:47 +0000
From: "Z.q. Hou" <zhiqiang.hou@nxp.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: RE: [EXT] Re: [PATCHv5 1/6] PCI: mobiveil: Refactor Mobiveil PCIe
 Host Bridge IP driver
Thread-Topic: [EXT] Re: [PATCHv5 1/6] PCI: mobiveil: Refactor Mobiveil PCIe
 Host Bridge IP driver
Thread-Index: AQHU8RVxwCgqbmUIs0+mzKQDP7R+kqY4mNcAgBtWwnA=
Date: Tue, 30 Apr 2019 00:23:47 +0000
Message-ID: <AM6PR04MB578139AB491ED01B1E8B8E2B843A0@AM6PR04MB5781.eurprd04.prod.outlook.com>
References: <20190412095332.41370-1-Zhiqiang.Hou@nxp.com>
 <20190412095332.41370-2-Zhiqiang.Hou@nxp.com>
 <CAK8P3a38F=y92ECU-iB-D=OqmuY5ANAwDw2NDPOTFmhUZQTovA@mail.gmail.com>
In-Reply-To: <CAK8P3a38F=y92ECU-iB-D=OqmuY5ANAwDw2NDPOTFmhUZQTovA@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=zhiqiang.hou@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 76b8b8c7-6efa-418a-997e-08d6cd021cc1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB6296; 
x-ms-traffictypediagnostic: AM6PR04MB6296:
x-microsoft-antispam-prvs: <AM6PR04MB629649772504254CD1A9BC27843A0@AM6PR04MB6296.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 00235A1EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(376002)(136003)(346002)(396003)(189003)(199004)(13464003)(2906002)(14454004)(3846002)(186003)(6116002)(66556008)(64756008)(66446008)(66476007)(71200400001)(71190400001)(76116006)(97736004)(66946007)(73956011)(6246003)(81156014)(53936002)(25786009)(33656002)(55016002)(9686003)(4326008)(8676002)(8936002)(81166006)(256004)(5024004)(14444005)(316002)(486006)(478600001)(7416002)(68736007)(11346002)(76176011)(305945005)(53546011)(86362001)(74316002)(102836004)(6436002)(5660300002)(476003)(7736002)(66066001)(99286004)(6506007)(52536014)(229853002)(446003)(26005)(6916009)(7696005)(54906003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB6296;
 H:AM6PR04MB5781.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Ec+IobIlPblM32BDiObQ2+1jRm6kL6j/F4neizIATSkyMZ04pgRH2lsJMUkSjCKcKxEA28XzzR9qfb5RCl8QtaXWTvgxq2haQ3Q5Gk/rXFCsorWeJHJjjXr4xjsfTBIWwcWyVsSXgLQXOxxlC693ayQsfgaaqSq315U/phDv4CCzD3PxqBWXkXN4FkaWIJ7K9OVhhVDk7APAHPUEeJycTcWuotvuCnhg0JvODsLKbzvte5Y0wG/RJ2Ctv/dVHAjw3soue4F5P/4RavylShVzZQX3oevzbKW9utUq5EuEwPc+YxPrLPBP9gxY0yfxpjItKWsY1ZShZRe9PJK/IsDSOKO0RG/1jHNpy9C8h2JVQ1A0ZRCf+CEwaa9QatTTBlLyDVU85KROIrxy21jCj5Pxm4jedI+q13q/CM+oRGibiUk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 76b8b8c7-6efa-418a-997e-08d6cd021cc1
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2019 00:23:47.4591 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6296
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_172355_774090_6567F56D 
X-CRM114-Status: GOOD (  20.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 Xiaowei Bao <xiaowei.bao@nxp.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "l.subrahmanya@mobiveil.co.in" <l.subrahmanya@mobiveil.co.in>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "M.h.
 Lian" <minghuan.lian@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 Mingkai Hu <mingkai.hu@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQXJuZCwNCg0KVGhhbmtzIGEgbG90IGZvciB5b3VyIGNvbW1lbnRzIQ0KDQo+IC0tLS0tT3Jp
Z2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEFybmQgQmVyZ21hbm4gW21haWx0bzphcm5kQGFy
bmRiLmRlXQ0KPiBTZW50OiAyMDE55bm0NOaciDEy5pelIDIyOjM5DQo+IFRvOiBaLnEuIEhvdSA8
emhpcWlhbmcuaG91QG54cC5jb20+DQo+IENjOiBsaW51eC1wY2lAdmdlci5rZXJuZWwub3JnOyBs
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7DQo+IGRldmljZXRyZWVAdmdlci5r
ZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOw0KPiBiaGVsZ2Fhc0Bnb29n
bGUuY29tOyByb2JoK2R0QGtlcm5lbC5vcmc7IG1hcmsucnV0bGFuZEBhcm0uY29tOw0KPiBsLnN1
YnJhaG1hbnlhQG1vYml2ZWlsLmNvLmluOyBzaGF3bmd1b0BrZXJuZWwub3JnOyBMZW8gTGkNCj4g
PGxlb3lhbmcubGlAbnhwLmNvbT47IGxvcmVuem8ucGllcmFsaXNpQGFybS5jb207DQo+IGNhdGFs
aW4ubWFyaW5hc0Bhcm0uY29tOyB3aWxsLmRlYWNvbkBhcm0uY29tOyBNLmguIExpYW4NCj4gPG1p
bmdodWFuLmxpYW5AbnhwLmNvbT47IFhpYW93ZWkgQmFvIDx4aWFvd2VpLmJhb0BueHAuY29tPjsg
TWluZ2thaQ0KPiBIdSA8bWluZ2thaS5odUBueHAuY29tPg0KPiBTdWJqZWN0OiBbRVhUXSBSZTog
W1BBVENIdjUgMS82XSBQQ0k6IG1vYml2ZWlsOiBSZWZhY3RvciBNb2JpdmVpbCBQQ0llIEhvc3QN
Cj4gQnJpZGdlIElQIGRyaXZlcg0KPiANCj4gV0FSTklORzogVGhpcyBlbWFpbCB3YXMgY3JlYXRl
ZCBvdXRzaWRlIG9mIE5YUC4gRE8gTk9UIENMSUNLIGxpbmtzIG9yDQo+IGF0dGFjaG1lbnRzIHVu
bGVzcyB5b3UgcmVjb2duaXplIHRoZSBzZW5kZXIgYW5kIGtub3cgdGhlIGNvbnRlbnQgaXMgc2Fm
ZS4NCj4gDQo+IA0KPiANCj4gT24gRnJpLCBBcHIgMTIsIDIwMTkgYXQgMTE6NTMgQU0gWi5xLiBI
b3UgPHpoaXFpYW5nLmhvdUBueHAuY29tPiB3cm90ZToNCj4gDQo+ID4gK2ludCBtb2JpdmVpbF9w
Y2llX2hvc3RfcHJvYmUoc3RydWN0IG1vYml2ZWlsX3BjaWUgKnBjaWUpDQo+ID4gIHsNCj4gPiAt
ICAgICAgIHN0cnVjdCBtb2JpdmVpbF9wY2llICpwY2llOw0KPiA+ICAgICAgICAgc3RydWN0IHBj
aV9idXMgKmJ1czsNCj4gPiAgICAgICAgIHN0cnVjdCBwY2lfYnVzICpjaGlsZDsNCj4gPiAgICAg
ICAgIHN0cnVjdCBwY2lfaG9zdF9icmlkZ2UgKmJyaWRnZTsNCj4gPiAtICAgICAgIHN0cnVjdCBk
ZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7DQo+ID4gKyAgICAgICBzdHJ1Y3QgZGV2aWNlICpkZXYg
PSAmcGNpZS0+cGRldi0+ZGV2Ow0KPiA+ICAgICAgICAgcmVzb3VyY2Vfc2l6ZV90IGlvYmFzZTsN
Cj4gPiAgICAgICAgIGludCByZXQ7DQo+ID4NCj4gPiAtICAgICAgIC8qIGFsbG9jYXRlIHRoZSBQ
Q0llIHBvcnQgKi8NCj4gPiAtICAgICAgIGJyaWRnZSA9IGRldm1fcGNpX2FsbG9jX2hvc3RfYnJp
ZGdlKGRldiwgc2l6ZW9mKCpwY2llKSk7DQo+ID4gLSAgICAgICBpZiAoIWJyaWRnZSkNCj4gPiAt
ICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9NRU07DQo+ID4gLQ0KPiA+IC0gICAgICAgcGNpZSA9
IHBjaV9ob3N0X2JyaWRnZV9wcml2KGJyaWRnZSk7DQo+ID4gLQ0KPiA+IC0gICAgICAgcGNpZS0+
cGRldiA9IHBkZXY7DQo+ID4gKyAgICAgICBJTklUX0xJU1RfSEVBRCgmcGNpZS0+cmVzb3VyY2Vz
KTsNCj4gPg0KPiA+ICAgICAgICAgcmV0ID0gbW9iaXZlaWxfcGNpZV9wYXJzZV9kdChwY2llKTsN
Cj4gPiAgICAgICAgIGlmIChyZXQpIHsNCj4gPiBAQCAtOTI4LDcgKzU2MCwxMCBAQCBzdGF0aWMg
aW50IG1vYml2ZWlsX3BjaWVfcHJvYmUoc3RydWN0DQo+IHBsYXRmb3JtX2RldmljZSAqcGRldikN
Cj4gPiAgICAgICAgICAgICAgICAgcmV0dXJuIHJldDsNCj4gPiAgICAgICAgIH0NCj4gPg0KPiA+
IC0gICAgICAgSU5JVF9MSVNUX0hFQUQoJnBjaWUtPnJlc291cmNlcyk7DQo+ID4gKyAgICAgICAv
KiBhbGxvY2F0ZSB0aGUgUENJZSBwb3J0ICovDQo+ID4gKyAgICAgICBicmlkZ2UgPSBkZXZtX3Bj
aV9hbGxvY19ob3N0X2JyaWRnZShkZXYsIDApOw0KPiA+ICsgICAgICAgaWYgKCFicmlkZ2UpDQo+
ID4gKyAgICAgICAgICAgICAgIHJldHVybiAtRU5PTUVNOw0KPiA+DQo+IA0KPiA+ICtzdGF0aWMg
aW50IG1vYml2ZWlsX3BjaWVfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikgew0K
PiA+ICsgICAgICAgc3RydWN0IG1vYml2ZWlsX3BjaWUgKnBjaWU7DQo+ID4gKyAgICAgICBzdHJ1
Y3QgZGV2aWNlICpkZXYgPSAmcGRldi0+ZGV2Ow0KPiA+ICsNCj4gPiArICAgICAgIHBjaWUgPSBk
ZXZtX2t6YWxsb2MoZGV2LCBzaXplb2YoKnBjaWUpLCBHRlBfS0VSTkVMKTsNCj4gPiArICAgICAg
IGlmICghcGNpZSkNCj4gPiArICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9NRU07DQo+ID4gKw0K
PiA+ICsgICAgICAgcGNpZS0+cGRldiA9IHBkZXY7DQo+ID4gKw0KPiA+ICsgICAgICAgcmV0dXJu
IG1vYml2ZWlsX3BjaWVfaG9zdF9wcm9iZShwY2llKTsgfQ0KPiANCj4gSSB0aGluayB5b3UgbmVl
ZCB0byBwdWxsIHRoZSBhbGxvY2F0aW9uIG9mIHRoZSBob3N0IHN0cnVjdHVyZSBvdXQgaW50byB0
aGUgbWFpbg0KPiBkcml2ZXIgaGVyZSwgdG8ga2VlcCBib3RoIGFsbG9jYXRpb25zIHRvZ2V0aGVy
LCBvdGhlcndpc2UgdGhlIHJlbGVhc2UgZnVuY3Rpb24NCj4gd2lsbCBmcmVlIHRoZSBtb2JpdmVp
bF9wY2llIHN0cnVjdHVyZSBiZWZvcmUgZnJlZWluZyB0aGUgcGNpX2hvc3RfYnJpZGdlIGlmIHRo
YXQNCj4gaXMgc3RpbGwgaW4gdXNlLg0KDQpZZXMsIHRoYXQgd2lsbCBiZSBhcnJhbmdlZCBpbiB2
Ni4NCg0KPiANCj4gPiArDQo+ID4gK3N0cnVjdCBtb2JpdmVpbF9wY2llIHsNCj4gPiArICAgICAg
IHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXY7DQo+ID4gKyAgICAgICBzdHJ1Y3QgbGlzdF9o
ZWFkIHJlc291cmNlczsNCj4gDQo+IFRoZXNlIHR3byBzaG91bGQgbm90IGJlIG5lZWRlZCBoZXJl
LCBhcyB0aGV5IGFyZSBhbHJlYWR5IHBhcnQgb2YgdGhlDQo+IHBjaV9ob3N0X2JyaWRnZSBzdHJ1
Y3R1cmUuDQoNClRoZSByZXNvdXJjZXMgbGlzdCBzdHJ1Y3R1cmUgaGFzIGJlZW4gY2hhbmdlZCB0
byBhIHBvaW50ZXIgdG8gdGhlIGJyaWRnZS0+d2luZG93cy4NCkl0IGlzIGJldHRlciB0byBrZWVw
IHRoZXNlIDIgcG9pbnRlcnMgaW4gdGhlIHByaXZhdGUgc3RydWN0dXJlIHRvIG1ha2UgaXQgZWFz
eSB0byB1c2UgdGhlbQ0KaW4gdGhlIFBDSWUgY29udHJvbGxlciBkcml2ZXIuDQoNCj4gDQo+ICAg
ICAgQXJuZA0KDQpSZWdhcmRzLA0KWmhpcWlhbmcNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
