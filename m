Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A74D8122218
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 03:50:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o+qfBTAtIpjX0EqoFN/sgIV1WATeD8MwHV2p2f9cYng=; b=Nkqk7lRuS+NW87
	hEHnxpRdnM5XhtUAVnRS4sG1EpwU0xYyn7gq8NTSJDqpR933dRfm6fteWz5e7brc203XHuTU8QzaF
	fEF1uCKI4W+A1Qre+3ZmexQRodbTOMlke+NWDJXWiGGfYVkYVry/ibQ9PSno/J+Ca1qCrEb1DnxEG
	HqQPeijmeYwG/mrOYbL3OMqUS+R9eTzsTyHYGpOWOfVdjfF3XZvi25+P9M0M6mTqUAw+aiXVv5q0d
	nwu3OIkJepzEMqRusmG2VpZ6B5oCS2htoxiKVWh1udoy0X1//RhSAKc+V9Lt1chV/qkm3DZiA2ahr
	PUy33z9MJo6fQrYvr8NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih2wP-0002pf-ID; Tue, 17 Dec 2019 02:50:29 +0000
Received: from mail-am5eur03on0631.outbound.protection.outlook.com
 ([2a01:111:f400:fe08::631]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih2wH-0002o6-46
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 02:50:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dPq+S92JF077esTAx9ue6Qh53j3536q/5IgSzFD2DqTsSjCfj548Qi9FduQNslm3Vkbozin27O8WplWNVQgEwWvrKKfsED9Y5lFD7WscA/JKIte+qdexv+W6As0zI72HZDnAP0lrhTP0ccBzwi/pbHH6cv3ukK474qnfPo+q/9rZGt0mp+YNv2KrK+oJfQ6kzOqhbhh68q9PtzJjDQTrTUuuB5UHVlr7JjkjBrUWZr1IvZHSfrs+30yfLiugQkQVJDgW6QqYa+tO07VZpuv+oq/OqPnnafBS98IBG7yS9t0DLLRZI+lINTYPfxscrlLGNZ+JkJPsuM1lCk5SiGNSKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gmmHddfra0gGS7w9c8e+0PL+o6cnE/xTkJUf52Sv76c=;
 b=VTC9V94ynWJiuzVZ8byN2+THeoy1P4fA7ocpg1oApMRDXY5npZ4HlwrmtIF+j9TRAuZg2BcvOAYM+BS+YrkJOgP2xFNSIm5jJfy+N7EwA68tXGWTx29g5hJDLqJ95sPfJT3Fgndk0OgsWsaXKAEsvXEKhAo1c35eL43SCzXaV4t49zpCt9va3w+Hk1WratLWyHL1nAVQj9IJDmkLlfEiROojwMII/65MRYP42MOgnFMzVkpNXqUE4jr0t+I+RP/DNVRO0oiuVr4+DmaRI5DI3yb4gpcElOYQ7/ikbQB5+EDEjC8jXJjky0mXDiAeYPL84acHgiLLyLPPs0PS4gRMjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gmmHddfra0gGS7w9c8e+0PL+o6cnE/xTkJUf52Sv76c=;
 b=OwztODREkEPniQsheMPgCRaS9rWbHi4Vc1DF7moDrRqFwFEM2/8Nsb3qn4aOSUIo01ZlfWWR24ODlwADcuFSHrrKQVWx82nFkBGb7C24NKVMx0GvZAFfRpUO0rO+HE3f1wJeJ1v9GFQT12W99CuE2R+A1AB/hntCAwblRmbFhUY=
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com (20.179.250.159) by
 DB8PR04MB6954.eurprd04.prod.outlook.com (52.133.242.211) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.18; Tue, 17 Dec 2019 02:50:15 +0000
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::2198:bb00:1add:d638]) by DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::2198:bb00:1add:d638%3]) with mapi id 15.20.2538.019; Tue, 17 Dec 2019
 02:50:15 +0000
From: "Z.q. Hou" <zhiqiang.hou@nxp.com>
To: Olof Johansson <olof@lixom.net>, "bhelgaas@google.com"
 <bhelgaas@google.com>, "lorenzo.pieralisi@arm.com"
 <lorenzo.pieralisi@arm.com>
Subject: RE: [PATCHv9 00/12] PCI: Recode Mobiveil driver and add PCIe Gen4
 driver for NXP Layerscape SoCs
Thread-Topic: [PATCHv9 00/12] PCI: Recode Mobiveil driver and add PCIe Gen4
 driver for NXP Layerscape SoCs
Thread-Index: AQHVn1Tsfp+9ZVhNFU2th1+s/za9wae4ifkAgAU/LmA=
Date: Tue, 17 Dec 2019 02:50:15 +0000
Message-ID: <DB8PR04MB6747DA8E1480DCF3EFF67C9284500@DB8PR04MB6747.eurprd04.prod.outlook.com>
References: <20191120034451.30102-1-Zhiqiang.Hou@nxp.com>
 <CAOesGMjAQSfx1WZr6b1kNX=Exipj_f4X_f39Db7AxXr4xG4Tkg@mail.gmail.com>
In-Reply-To: <CAOesGMjAQSfx1WZr6b1kNX=Exipj_f4X_f39Db7AxXr4xG4Tkg@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=zhiqiang.hou@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 23e86835-4041-460b-075a-08d7829bd7fd
x-ms-traffictypediagnostic: DB8PR04MB6954:|DB8PR04MB6954:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB69544E641E65A9C1B5D141C684500@DB8PR04MB6954.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 02543CD7CD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(6029001)(4636009)(346002)(396003)(376002)(39860400002)(136003)(366004)(199004)(189003)(13464003)(8936002)(71200400001)(81166006)(81156014)(478600001)(8676002)(9686003)(26005)(66446008)(64756008)(66556008)(5660300002)(66476007)(110136005)(54906003)(316002)(86362001)(7696005)(186003)(33656002)(52536014)(76116006)(6506007)(4326008)(66946007)(2906002)(53546011)(55016002)(7416002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB6954;
 H:DB8PR04MB6747.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 40bkpwVWTZ11z1B4FkanbXLFwT65eEs29yvwozaO5N5+RkEfd7w8DWD38vhGuBDy8xixOtHVaN1+blZzY+/PwSwh3TmFhJ99JnjAGC6yLNa88VRmfiZePs1dSj48KhQwT4rOJHKmAYu7Gr6Up82AlX9TxILMG2Q3rGGgk8qPaOxMqI9MtkjUG/DM9evKYegRdEE+VCt1sJz+K2NKXh411a9CLTc07uht/kKrexuo4lsoxEKCBmWio1OR/X2fH7Gc63jfb6x8R1APPSR4uxjjSY1UscgcevEsUTGEThuiLMIJCNHHTL5UV12DgvSF3/s42N2pExIEg+srtUI/jraw550LqZF0bnL+4rTTWANmbEPX2X08KZjH8ZaJGxDyTfXKNQNJ78pjb1YQs1nbIw29Jpd8UaDce4IgaiiZ2mAYIiTHViMNf6CFdfUen/2PqZbqUcS4ERlLEwKyF8wECVBBUq+v2wopW96hvtbpdnDoJH0/REpm2ilA+XAzCAu6o8oZ
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 23e86835-4041-460b-075a-08d7829bd7fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2019 02:50:15.0630 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0S1YSLxYqEyWXvHhoqT9raJdjpDw4OuKyKDvu5EyYkmt76lRwJIM1/wfVisFIkpgwtHd5xY9Zm5+/8PS4NAvXw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6954
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_185021_245059_364D014C 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe08:0:0:0:631 listed in]
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Xiaowei Bao <xiaowei.bao@nxp.com>,
 "m.karthikeyan@mobiveil.co.in" <m.karthikeyan@mobiveil.co.in>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "l.subrahmanya@mobiveil.co.in" <l.subrahmanya@mobiveil.co.in>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "andrew.murray@arm.com" <andrew.murray@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTG9yZW56bywNCg0KVGhlIHY5IHBhdGNoZXMgaGF2ZSBhZGRyZXNzZWQgdGhlIGNvbW1lbnRz
IGZyb20gQW5kcmV3LCBhbmQgaXQgaGFzIGJlZW4gZHJpZWQgYWJvdXQgMSBtb250aCwgY2FuIHlv
dSBoZWxwIHRvIGFwcGx5IHRoZW0/DQoNClRoYW5rcywNClpoaXFpYW5nDQoNCj4gLS0tLS1Pcmln
aW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogT2xvZiBKb2hhbnNzb24gPG9sb2ZAbGl4b20ubmV0
Pg0KPiBTZW50OiAyMDE55bm0MTLmnIgxNOaXpSAyOjM3DQo+IFRvOiBaLnEuIEhvdSA8emhpcWlh
bmcuaG91QG54cC5jb20+OyBiaGVsZ2Fhc0Bnb29nbGUuY29tDQo+IENjOiBsaW51eC1wY2lAdmdl
ci5rZXJuZWwub3JnOyBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7DQo+IGRl
dmljZXRyZWVAdmdlci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOw0K
PiByb2JoK2R0QGtlcm5lbC5vcmc7IGFybmRAYXJuZGIuZGU7IG1hcmsucnV0bGFuZEBhcm0uY29t
Ow0KPiBsLnN1YnJhaG1hbnlhQG1vYml2ZWlsLmNvLmluOyBzaGF3bmd1b0BrZXJuZWwub3JnOw0K
PiBtLmthcnRoaWtleWFuQG1vYml2ZWlsLmNvLmluOyBMZW8gTGkgPGxlb3lhbmcubGlAbnhwLmNv
bT47DQo+IGxvcmVuem8ucGllcmFsaXNpQGFybS5jb207IGNhdGFsaW4ubWFyaW5hc0Bhcm0uY29t
Ow0KPiB3aWxsLmRlYWNvbkBhcm0uY29tOyBhbmRyZXcubXVycmF5QGFybS5jb207IE1pbmdrYWkg
SHUNCj4gPG1pbmdrYWkuaHVAbnhwLmNvbT47IE0uaC4gTGlhbiA8bWluZ2h1YW4ubGlhbkBueHAu
Y29tPjsgWGlhb3dlaSBCYW8NCj4gPHhpYW93ZWkuYmFvQG54cC5jb20+DQo+IFN1YmplY3Q6IFJl
OiBbUEFUQ0h2OSAwMC8xMl0gUENJOiBSZWNvZGUgTW9iaXZlaWwgZHJpdmVyIGFuZCBhZGQgUENJ
ZSBHZW40DQo+IGRyaXZlciBmb3IgTlhQIExheWVyc2NhcGUgU29Dcw0KPiANCj4gSGkhDQo+IA0K
PiBPbiBUdWUsIE5vdiAxOSwgMjAxOSBhdCA3OjQ1IFBNIFoucS4gSG91IDx6aGlxaWFuZy5ob3VA
bnhwLmNvbT4gd3JvdGU6DQo+ID4NCj4gPiBGcm9tOiBIb3UgWmhpcWlhbmcgPFpoaXFpYW5nLkhv
dUBueHAuY29tPg0KPiA+DQo+ID4gVGhpcyBwYXRjaCBzZXQgaXMgdG8gcmVjb2RlIHRoZSBNb2Jp
dmVpbCBkcml2ZXIgYW5kIGFkZCBQQ0llIHN1cHBvcnQNCj4gPiBmb3IgTlhQIExheWVyc2NhcGUg
c2VyaWVzIFNvQ3MgaW50ZWdyYXRlZCBNb2JpdmVpbCdzIFBDSWUgR2VuNA0KPiA+IGNvbnRyb2xs
ZXIuDQo+IA0KPiBDYW4gd2UgZ2V0IGEgcmVzcGluIGZvciB0aGlzIG9uIHRvcCBvZiB0aGUgNS41
IG1lcmdlIHdpbmRvdyBtYXRlcmlhbD8NCj4gR2l2ZW4gdGhhdCBpdCdzIGEgYnVuY2ggb2YgcmVm
YWN0b3JpbmdzLCBtYW55IG9mIHRoZW0gZG9uJ3QgYXBwbHkgb24gdG9wIG9mDQo+IHRoZSBtYXRl
cmlhbCB0aGF0IHdhcyBtZXJnZWQuDQo+IA0KPiBJJ2QgbG92ZSB0byBzZWUgdGhlc2UgZ28gaW4g
c29vbmVyIHJhdGhlciB0aGFuIGxhdGVyIHNvIEkgY2FuIHN0YXJ0IGdldHRpbmcgLW5leHQNCj4g
cnVubmluZyBvbiBsczIxNjBhIGhlcmUuDQo+IA0KPiANCj4gLU9sb2YNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
