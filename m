Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1408176ECA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 06:35:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hFmG6s2SPFYJL7079amNneapnOnrdVBespqsb24kLVE=; b=D9nDObKepChBa4
	AF3Lho3JemzJ+/2BD24l+m0QUaRFUfUav9DyhtaMXJiZWAy0c7d1c+R+FYEmds89wKz4CwarrmGpo
	VPCl0FF+zHEjLlxxOIIPQhi1DHvOkGWfHB/EzVWZDgNZs8ItdMaiKg4Ckzy55QKmaK5QtBrowoVng
	Bsh8uYc6S9k+C90IRJcTbZX0OtkIOsJMLWDlx9/sukeA5tQY1NDabkYs8PghsRb7eTap20dJOf6pQ
	8T+h+0XBE6x24hQeRx5hDNgdbTtaAKG3w5NwA4JxUZv65LgoWKAGX2TQsCOg06PJQrJgxIru4RGHk
	BpobTVpyyI4Wqrc/Islw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j90Cl-0007VN-BZ; Tue, 03 Mar 2020 05:34:55 +0000
Received: from mail-db5eur01on0628.outbound.protection.outlook.com
 ([2a01:111:f400:fe02::628]
 helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j90Cb-0007Tt-5v
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 05:34:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TBQlwVHvW1ljKj4vFUIcZrN1kJsZk/9uaoeqvtgo9uS0mY1J6pbJH0P9AfkEU1cHNOZHesfwIg53hYQEnLydbaalrekOWeaG/PWP5Wci1rOGKT2yDNYs/5TUDHL7fSAy8AHzoCEhbAjix5+cVSgqbIbjAi72LPQdg4wGIv38U+7nMOYnKPwCnrCRzc6IKkA6AWf40R0rYO3osZ0bK2t31dvWKBaol3Qu6lRRidlrGVUPcNSxIBdh/b2LuEIETLBhvkLGpvcP0BCjJMbTjvYtmN4hn1lEZ473w/ntyj5dyvQ/bdnHj8cbWft3WAL9PuS+tI2VoZQ9YcAZivcjmY5DAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TJcoyJGHswCJMMO2jmxRxSYLJKfpsE/0fbIPFcnF7ok=;
 b=dSG51lqKPKbcxJPVKo8L4Nr0GHGQ5PqBq1/ZT6/Ug/ahVnyHglYnr1Cob4V2P7kr0RgVHBj5d1rKLRhRVVeM/rW0HpoF+WvgnNK73dqSaDgesgnjuSG2frmL8r0cHRAUgQ9Nclz/LsmfUu7zIGtBb9Zbgn91q/+cu16NNQ/c7B8PRBpZMYBPCE0NaYsyU7n3Me+rIC6HHViLEuwNWL8K3buQPqxwS433ca1/rmpjGT212Q9eFHBMfIt2vs7Ok1ktSFYjpyPpgd8k4odnq92vZw5MqA+E//dt44jXhePebHAodJ/gqPCgReIrlRqQR1RvzYK2Vv+zNfZU8Zv7Djp2lQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TJcoyJGHswCJMMO2jmxRxSYLJKfpsE/0fbIPFcnF7ok=;
 b=CSCjodozBaLJLKH68lkgLFiUutw6oaNYwVYZg24KIEfZnN2+SUngNaxm4/b6UJnil9zg+0miNbGzSbcXwzxWG3IRrczYnrqH5/H5NZtTCyDR/XEdfPkUlcaP76/7dLcNedQKDNFrATSp4TCdbcz0IVxXepYW5a+QdV9yW0sdmz0=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4489.eurprd04.prod.outlook.com (52.135.138.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.18; Tue, 3 Mar 2020 05:34:40 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::e449:ea49:c382:9788]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::e449:ea49:c382:9788%5]) with mapi id 15.20.2772.019; Tue, 3 Mar 2020
 05:34:40 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: Will Deacon <will@kernel.org>
Subject: RE: [PATCH 2/2] perf/imx_ddr: Add stop counter support for i.MX8MP
Thread-Topic: [PATCH 2/2] perf/imx_ddr: Add stop counter support for i.MX8MP
Thread-Index: AQHV69tuZyXpBq3blUKm1+CLo0yF5ag1Mp2AgAEBQ0A=
Date: Tue, 3 Mar 2020 05:34:40 +0000
Message-ID: <DB7PR04MB46189CEDD1DFD5B5B6C1FD15E6E40@DB7PR04MB4618.eurprd04.prod.outlook.com>
References: <20200225125644.18853-1-qiangqing.zhang@nxp.com>
 <20200225125644.18853-2-qiangqing.zhang@nxp.com>
 <20200302112441.GB7995@willie-the-truck>
In-Reply-To: <20200302112441.GB7995@willie-the-truck>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [222.93.202.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 2443e877-cd98-48e1-251a-08d7bf3491f0
x-ms-traffictypediagnostic: DB7PR04MB4489:|DB7PR04MB4489:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB44899EC3907683F9FCBED98CE6E40@DB7PR04MB4489.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 03319F6FEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(136003)(39860400002)(346002)(366004)(199004)(189003)(66476007)(71200400001)(66946007)(33656002)(52536014)(6916009)(2906002)(66446008)(66556008)(26005)(86362001)(64756008)(316002)(81166006)(7696005)(8676002)(4326008)(8936002)(186003)(54906003)(5660300002)(6506007)(478600001)(76116006)(55016002)(9686003)(53546011)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4489;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fEPcNnmheVIcOVZIwyPfEa37CgVkBSXKpWhcJIb6TjO+sumGMoQPir/WfyvqXACaW1LLQkVUbstHQtVO2r5tGRL233wPZ8hYIB71e8S+lr93eE9AkU+xJ1maVlypxwT+BSWhSEP+San9kVKnjvz8kNDHI51bvm3T+ehyDK4/vXkYK7HPPInV+zCRtOcO3d6lmSL21K843kB8+peWZHBsCO9X6+Ml4Wr1MYNrvN2KI7MbQSmxbFhQNc+0+hJ70sa5unwpQRkfYnOQpbHSGKwQ3BGImzV5woY576+/vIBj4NEa5/n6s/r7UV3/ATdtIlnn8Di/rlpyx8u8w5s3g7gixgBYHvb5ouFJ+GkHLEvS8HBy5k1l85hboTNWfAof8EoBvsYgtk2L58lHKvL1YxP04GlQLJOOidqZWjEwqlwiYsWJnjT1DNL+Yp5VPIOfLuim
x-ms-exchange-antispam-messagedata: lRCix6qB/JcbIxEH9reLSQ5tXJoPCTf4ifajqurFd3VFQwAMifTWMi/YOJrQ5BN9k3idN58tBwnQZyHp6O3raBdTIT+esmUgEFUj9giXB1KJF8Dv+mZd2KwfBvFUMcWgiHmpri/imlMJWBZTgIh3TA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2443e877-cd98-48e1-251a-08d7bf3491f0
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2020 05:34:40.3044 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dPDJbtKutccbAeeY6pWloFk/COWx8+cHREFiSZxo076BuQiZQAyB26ACDAxDNBse99qphh0Xbzk6eN1tKJo20g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4489
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_213445_315908_442C05C4 
X-CRM114-Status: GOOD (  24.77  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe02:0:0:0:628 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
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
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFdpbGwgRGVhY29uIDx3aWxs
QGtlcm5lbC5vcmc+DQo+IFNlbnQ6IDIwMjDE6jPUwjLI1SAxOToyNQ0KPiBUbzogSm9ha2ltIFpo
YW5nIDxxaWFuZ3FpbmcuemhhbmdAbnhwLmNvbT4NCj4gQ2M6IG1hcmsucnV0bGFuZEBhcm0uY29t
OyByb2Jpbi5tdXJwaHlAYXJtLmNvbTsgZGwtbGludXgtaW14DQo+IDxsaW51eC1pbXhAbnhwLmNv
bT47IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZw0KPiBTdWJqZWN0OiBSZTog
W1BBVENIIDIvMl0gcGVyZi9pbXhfZGRyOiBBZGQgc3RvcCBjb3VudGVyIHN1cHBvcnQgZm9yIGku
TVg4TVANCj4gDQo+IE9uIFR1ZSwgRmViIDI1LCAyMDIwIGF0IDA4OjU2OjQ0UE0gKzA4MDAsIEpv
YWtpbSBaaGFuZyB3cm90ZToNCj4gPiBERFIgcGVyZiBkcml2ZXIgbm93IG9ubHkgc3VwcG9ydHMg
ZnJlZS1ydW5uaW5nIGV2ZW50IGNvdW50ZXJzDQo+ID4gKGNvdW50ZXIxLzIvMyksIHdoaWNoIG1l
YW5zIHRoYXQgZXZlbnQgY291bnRlcnMgd2lsbCBjb250aW51ZSBjb3VudGluZw0KPiA+IGV2ZW4g
dGhleSBhcmUgb3ZlcmZsb3cuDQo+ID4NCj4gPiBIb3dldmVyLCB0aGUgc2l0dWF0aW9uIGlzIGNo
YW5nZWQgb24gaS5NWDhNUCwgZXZlbnQgY291bnRlcnMgYXJlIG5vdA0KPiA+IGZyZWUtcnVubmlu
ZyBhbnkgbW9yZS4gRXZlbnQgY291bnRlcnMgd291bGQgc3RvcCBjb3VudGluZyBpZiB0aGV5IGFy
ZQ0KPiA+IG92ZXJmbG93LiBTbyB3ZSBuZWVkIGNsZWFyIGV2ZW50IGNvdW50ZXJzIHdoZW4gY3lj
bGUgY291bnRlciBvdmVyZmxvdy4NCj4gPg0KPiA+IFRoZSBwYXRjaCBhZGRzIHN0b3AgY291bnRl
ciBzdXBwb3J0IHdoaWNoIHdvdWxkIGJlIGNvbXBhdGlibGUgdG8NCj4gPiBmcmVlLXJ1bm5pbmcg
Y291bnRlci4NCj4gDQo+IEhtbSwgYXJlIHlvdSBzYXlpbmcgdGhhdCB0aGUgaGFyZHdhcmUgYmVo
YXZpb3VyIGhhcyBjaGFuZ2VkIGhlcmUsIHNvIHRoYXQNCj4gbmV3ZXIgU29DcyBmb3JjZSB0aGUg
YmVoYXZpb3VyIHdoZXJlIGFsbCB0aGUgY291bnRlcnMgc3RvcCB3aGVuIG9uZQ0KPiBvdmVyZmxv
d3M/IElzIHRoZXJlIGFueSB3YXkgdG8gY29udHJvbCB0aGF0IGJlaGF2aW91cj8NCkhpIFdpbGws
DQoNClllcywgdGhlIGhhcmR3YXJlIGJlaGF2aW9yIGhhcyBjaGFuZ2VkIGluIGkuTVg4TVAuDQoN
CkxlZ2FjeSBTb0NzLCB3aGVuIGNvdW50ZXIwKGN5Y2xlIGNvdW50ZXIpIG92ZXJmbG93cywgaXQg
d2lsbCBsb2NrIGl0c2VsZiBhbmQgb3RoZXIgY291bnRlcnMsIHRoZW4gZ2VuZXJhdGUgYW4gaW50
ZXJydXB0LiBCdXQsIHdoZW4gb3RoZXIgY291bnRlcnMoY291bnRlcjEvMi8zKSBvdmVyZmxvdywg
aXQgd2lsbCBjb250aW51ZSBjb3VudGluZyBhbmQgbm90IHN0b3AuDQpJbiBpLk1YOE1QLCBhbGwg
aXMgdGhlIHNhbWUgYXMgbGVnYWN5IFNvQ3MsIGJlc2lkZXMgdGhhdCB3aGVuIG90aGVyIGNvdW50
ZXJzKGNvdW50ZXIxLzIvMykgb3ZlcmZsb3csIGl0c2VsZiB3aWxsIHN0b3AgY291bnRpbmcsIG5l
ZWQgY2xlYXIgY291bnRlciB2YWx1ZSBtYW51YWxseSwgdGhlbiBpdCB3aWxsIHN0YXJ0IGNvdW50
aW5nIGFnYWluLg0KU28sIGluIGNvdW50ZXIwIG92ZXJmbG93IGludGVycnVwdCBoYW5kbGVyLCB3
ZSBuZWVkIGNsZWFyIGNvdW50ZXIxLzIvMyB2YWx1ZSwgc2luY2UgY291bnRlcjAgd2lsbCBhbHdh
eXMgb3ZlcmZsb3cgYmVmb3JlIG90aGVyIGNvdW50ZXJzLCB0aGF0IGNhbiBlbnN1cmUgY291bnRl
cjEvMi8zIGRvZXNuJ3QgbG9zZSBkYXRhLg0KDQpOT1QgYWxsIGNvdW50ZXJzIHN0b3Agd2hlbiBv
bmUgb3ZlcmZsb3cuIENvdW50ZXIwIG92ZXJmbG93IHdpbGwgbG9jayBpdHNlbGYgYW5kIG90aGVy
IGNvdW50ZXJzLCBvdGhlciBjb3VudGVycyBvdmVyZmxvdyBqdXN0IHN0b3AgdGhlbXNlbHZlcy4N
Cg0KTm8gd2F5IHRvIGNvbnRyb2wgdGhlIGJlaGF2aW9yLCBpdCBpcyB0aGUgaGFyZHdhcmUgYmVo
YXZpb3IuDQoNCj4gPiBAQCAtNTY2LDYgKzU3MSwyNSBAQCBzdGF0aWMgaXJxcmV0dXJuX3QgZGRy
X3BlcmZfaXJxX2hhbmRsZXIoaW50IGlycSwgdm9pZA0KPiAqcCkNCj4gPiAgCQkJY3ljbGVfZXZl
bnQgPSBldmVudDsNCj4gPiAgCX0NCj4gPg0KPiA+ICsJc3Bpbl9sb2NrKCZwbXUtPmxvY2spOw0K
PiA+ICsNCj4gPiArCWZvciAoaSA9IDA7IGkgPCBOVU1fQ09VTlRFUlM7IGkrKykgew0KPiA+ICsJ
CWlmICghcG11LT5ldmVudHNbaV0pDQo+ID4gKwkJCWNvbnRpbnVlOw0KPiA+ICsNCj4gPiArCQll
dmVudCA9IHBtdS0+ZXZlbnRzW2ldOw0KPiA+ICsNCj4gPiArCQlpZiAoZXZlbnQtPmh3LmlkeCA9
PSBFVkVOVF9DWUNMRVNfQ09VTlRFUikNCj4gPiArCQkJY29udGludWU7DQo+ID4gKw0KPiA+ICsJ
CS8qIGNsZWFyIG5vbi1jeWNsZSBjb3VudGVycyAqLw0KPiA+ICsJCWRkcl9wZXJmX2NvdW50ZXJf
ZW5hYmxlKHBtdSwgZXZlbnQtPmF0dHIuY29uZmlnLCBldmVudC0+aHcuaWR4LA0KPiA+ICt0cnVl
KTsNCj4gPiArDQo+ID4gKwkJbG9jYWw2NF9zZXQoJmV2ZW50LT5ody5wcmV2X2NvdW50LCAwKTsN
Cj4gPiArCX0NCj4gPiArDQo+ID4gKwlzcGluX3VubG9jaygmcG11LT5sb2NrKTsNCj4gDQo+IEkn
bSBzdXNwaWNpb3VzIG9mIHRoaXMgbG9ja2luZywgYXMgaXQncyAvdmVyeS8gZmluZS1ncmFpbmVk
LiBXaGF0IHByZXZlbnRzIHJhY2luZw0KPiB3aXRoIGEgY29uY3VycmVudCBkZHJfcGVyZl9jb3Vu
dGVyX2VuYWJsZSgpIGNhbGw/IEFsc28sIGRvZXNuJ3QgcGVyZiBjb3JlIG5lZWQNCj4gdG8gYmUg
YXdhcmUgdGhhdCB5b3UncmUgc3RvcHBpbmcgY291bnRlcnMgaGVyZT8NCg0KSSBhbHNvIHRyeSB0
byBPTkxZIGNsZWFyIGNvdW50ZXJzKGNvdW50ZXIxLzIvMykgZnJvbSBpbnRlcnJ1cHQgaGFuZGxl
ciwgbGlrZSBiZWxvdywgd2l0aG91dCBhIHNwaW5sb2NrLiBJdCBjYW4gd29yaywgYnV0IEkgdGhp
bmsgbWF5IHRoZXJlIGFyZSBzb21lIHBpdGZhbGxzDQorICAgICAgIGZvciAoaSA9IDA7IGkgPCBO
VU1fQ09VTlRFUlM7IGkrKykgew0KKyAgICAgICAgICAgICAgIGlmICghcG11LT5ldmVudHNbaV0p
DQorICAgICAgICAgICAgICAgICAgICAgICBjb250aW51ZTsNCisNCisgICAgICAgICAgICAgICBl
dmVudCA9IHBtdS0+ZXZlbnRzW2ldOw0KKw0KKyAgICAgICAgICAgICAgIGlmIChldmVudC0+aHcu
aWR4ID09IEVWRU5UX0NZQ0xFU19DT1VOVEVSKQ0KKyAgICAgICAgICAgICAgICAgICAgICAgY29u
dGludWU7DQorDQorICAgICAgICAgICAgICAgLyogY2xlYXIgbm9uLWN5Y2xlIGNvdW50ZXJzICov
DQorICAgICAgICAgICAgICAgZGRyX3BlcmZfY291bnRlcl9lbmFibGUocG11LCBldmVudC0+YXR0
ci5jb25maWcsIGV2ZW50LT5ody5pZHgsIHRydWUpOw0KKw0KKyAgICAgICAgICAgICAgIGxvY2Fs
NjRfc2V0KCZldmVudC0+aHcucHJldl9jb3VudCwgMCk7DQorICAgICAgIH0NCg0KU3VjaCBjYXNl
LCB3aGVuIGNhbGwgZGRyX3BlcmZfY291bnRlcl9lbmFibGUgdG8gY2xlYXIgY291bnRlcjEsIGJ1
dCBoYXZlIG5vdCBzZXQgcHJldl9jb3VudCBlcXVhbCAwIHlldCBpbiB0aGUgaW50ZXJydXB0IGhh
bmRsZXIuIENvbmN1cnJlbnRseSwgZGRyX3BlcmZfZXZlbnRfdXBkYXRlIGNhbGwgZGRyX3BlcmZf
cmVhZF9jb3VudGVyIHRvIHJlYWQgdGhlIGNvdW50ZXIxLCBpdCB3aWxsIHJldHVybiAwLiBEZWx0
YSAobmV3X3Jhd19jb3VudCAtIHByZXZfcmF3X2NvdW50KSB3ZSBjYWxjdWxhdGUgd291bGQgYmUg
aW5jb3JyZWN0LiBTbyBJIGFkZCBhIHNwaW5sb2NrLCBmb3IgdGhhdCBjbGVhciBjb3VudGVyMS8y
LzMgYW5kIHVwZGF0ZSBjb3VudGVyMS8yLzMgbmV2ZXIgY29uY3VycmVudGx5IGhhcHBlbi4gSXQg
aXMgc2FmZSBmb3IgY291bnRlcjAgdG8gY2xlYXIgdGhlbiB1cGRhdGUgdGhlIGNvdW50ZXIsIHNp
bmNlIGl0IGlzIGFjdHVhbGx5IG92ZXJmbG93Lg0KDQpUaGlzIGlzIHRoZSB3YXkgSSB0YWtlIHRv
IHN1cHBvcnQgc3RvcCBjb3VudGVyLCBtYXkgZXhpc3QgYSBiZXR0ZXIgc29sdXRpb24uIFdpbGws
IGNvdWxkIHlvdSBzaGFyZSBtZSBob3cgdG8gaW1wbGVtZW50IGl0IG1vcmUgcmVhc29uYWJsZT8g
VGhhbmtzLg0KDQo+IEZpbmFsbHksIHRoaXMgbG9va3MgbGlrZSBpdCdzIGFuIHVuY29uZGl0aW9u
YWwgY2hhbmdlIGluIHVzZXItdmlzaWJsZSBiZWhhdmlvdXIuIFdoeQ0KPiBkb2Vzbid0IGl0IGJy
ZWFrIGV4aXN0aW5nIHVzYWdlIG9mIHRoZSBwZXJmIHRvb2w/DQoNCkkgZG9uJ3QgcXVpdGUgZm9s
bG93IHlvdSwgY291bGQgeW91IGV4cGxhaW4gbW9yZT8NCg0KQmVzdCBSZWdhcmRzLA0KSm9ha2lt
IFpoYW5nDQo+IFdpbGwNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
