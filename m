Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9980318A5E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 15:12:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BuICzTuFl6nyyTR1N/Pgfuf6347hMdg32wGcYr8oO2w=; b=SkmbUQfE0Ihmcx
	cftjnn7uFp1uRPoQZBEgdCn2vo7csj4AstDp2LzMBtWgBKWeEdaD5I8JkyYRA8uZ8FXokOhdSuvOx
	+qfYipsUqAaZ/p3H1WIrhIEnoNFn635DpK4U0s8V+tBOnzyeXXBd4K3Ho5IC7EMZaU12bo+KsbN2u
	DREL+FjS0MSEpuNwnR+Bho0hUNnoN6j0SA3O0lxEiiSD4GGbJBj5vIX4foTzdEvUzHznxuGpZXBNi
	KYMIrghpbwVnc4ZNBRa+5MdHHFo0XjtfgHGcnztr9CaVilFi+c3mbxsI6N9xNnTsMZlmAGmlvrg+5
	tPDjPZAR+c9L7+xkwrBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOiqI-00010x-5c; Thu, 09 May 2019 13:12:10 +0000
Received: from mail-eopbgr70077.outbound.protection.outlook.com ([40.107.7.77]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOiq9-00010P-Md
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 13:12:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=arFJ85P96kf4Ob2PvgBjgmJxaii2sVFAYU2xu5EqWcU=;
 b=Tk/iQkF3UPeee7gDvRHt0jCd48bY9Tc2+woOOQpTPX9ZZT3N24piuH0plBxGemgcMlsVjEjVVh65PlEe5uw5OlKquEaHG6Ky61xH+CLu4VOfNalrUog8HNMH434sc7ZVsuv8tKhj0A5S+ZpbicEasojucAlofrLBvowrxYNhQmI=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3724.eurprd04.prod.outlook.com (52.134.66.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.20; Thu, 9 May 2019 13:11:55 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1878.022; Thu, 9 May 2019
 13:11:55 +0000
From: Anson Huang <anson.huang@nxp.com>
To: =?utf-8?B?VXdlIEtsZWluZS1Lw7ZuaWc=?= <u.kleine-koenig@pengutronix.de>
Subject: RE: [PATCH V11 2/5] pwm: Add i.MX TPM PWM driver support
Thread-Topic: [PATCH V11 2/5] pwm: Add i.MX TPM PWM driver support
Thread-Index: AQHU7z9hqTzaY+VYR0K/HkDKw3ExdKZikNAAgABhZ9A=
Date: Thu, 9 May 2019 13:11:55 +0000
Message-ID: <DB3PR0402MB39161C8F7A4D2DA58A95670FF5330@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1554860547-18237-1-git-send-email-Anson.Huang@nxp.com>
 <1554860547-18237-3-git-send-email-Anson.Huang@nxp.com>
 <20190509072018.cenumkgbysfba57l@pengutronix.de>
In-Reply-To: <20190509072018.cenumkgbysfba57l@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f73945db-5b82-402c-7341-08d6d47fe90e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3724; 
x-ms-traffictypediagnostic: DB3PR0402MB3724:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <DB3PR0402MB3724C9A35AFDD5177E071ECFF5330@DB3PR0402MB3724.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 003245E729
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(346002)(376002)(366004)(136003)(396003)(199004)(189003)(13464003)(4326008)(86362001)(25786009)(6246003)(66066001)(14454004)(14444005)(256004)(7416002)(3846002)(6116002)(74316002)(71190400001)(71200400001)(7736002)(305945005)(6506007)(2906002)(53546011)(966005)(8936002)(6916009)(102836004)(11346002)(446003)(186003)(9686003)(476003)(7696005)(52536014)(5660300002)(68736007)(76176011)(66574012)(229853002)(99286004)(54906003)(316002)(478600001)(26005)(486006)(6436002)(45080400002)(66556008)(66476007)(66446008)(64756008)(66946007)(76116006)(53936002)(73956011)(8676002)(81166006)(55016002)(44832011)(81156014)(33656002)(6306002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3724;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: mnWMOfELJsDtHwAcyUDun9t2ZsHkyS9zJmC9k+MYN6GOH6+xJgDGXnoprTYQiphLF1n1gzbE3TpUW0vFIpNaLZV+rksmgFYBSCc6+0YLVN4XUJZzh1hNPsfy7fHDQ4S8gDU8NtifxOEQfj8KlxYaX6BqXH2dvUw4BcjTB18yvYHmAUh/4tdMAGLbmYPHOWQ57mHAHVzSc32ewXgbXQ0o6acbLRra7O6Wf8JmR6K9t3CRdWtzX6gWIYBc8mV7NxM78x6+cohG9lmIGtQpNdq6ZsUJXSCPhw2kObryFgOMYHkiTvUoia4CmQ+zDxzMkhoFFllnm/Ymyy1MtqgaWA+LnZ4PAWmLKaY3AGCNdcBc8LsnLSt24D3xU36tbUtKowG1ETnm7TYBpgsrzqR9iigOapD08NtFWXdHz/FlzJsbw/c=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f73945db-5b82-402c-7341-08d6d47fe90e
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2019 13:11:55.4976 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3724
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_061202_007541_DEA6D307 
X-CRM114-Status: GOOD (  32.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.77 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "linux-pwm@vger.kernel.org" <linux-pwm@vger.kernel.org>,
 Robin Gong <yibin.gong@nxp.com>,
 "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 "stefan@agner.ch" <stefan@agner.ch>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIFV3ZQ0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFV3ZSBLbGVp
bmUtS8O2bmlnIFttYWlsdG86dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlXQ0KPiBTZW50
OiBUaHVyc2RheSwgTWF5IDksIDIwMTkgMzoyMCBQTQ0KPiBUbzogQW5zb24gSHVhbmcgPGFuc29u
Lmh1YW5nQG54cC5jb20+DQo+IENjOiB0aGllcnJ5LnJlZGluZ0BnbWFpbC5jb207IHJvYmgrZHRA
a2VybmVsLm9yZzsgbWFyay5ydXRsYW5kQGFybS5jb207DQo+IHNoYXduZ3VvQGtlcm5lbC5vcmc7
IHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU7IGtlcm5lbEBwZW5ndXRyb25peC5kZTsNCj4gZmVzdGV2
YW1AZ21haWwuY29tOyBsaW51eEBhcm1saW51eC5vcmcudWs7IHN0ZWZhbkBhZ25lci5jaDsNCj4g
b3RhdmlvQG9zc3lzdGVtcy5jb20uYnI7IExlb25hcmQgQ3Jlc3RleiA8bGVvbmFyZC5jcmVzdGV6
QG54cC5jb20+Ow0KPiBSb2JpbiBHb25nIDx5aWJpbi5nb25nQG54cC5jb20+OyBsaW51eC1wd21A
dmdlci5rZXJuZWwub3JnOw0KPiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBsaW51eC0NCj4ga2VybmVsQHZnZXIua2VybmVs
Lm9yZzsgZGwtbGludXgtaW14IDxsaW51eC1pbXhAbnhwLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQ
QVRDSCBWMTEgMi81XSBwd206IEFkZCBpLk1YIFRQTSBQV00gZHJpdmVyIHN1cHBvcnQNCj4gDQo+
IEhlbGxvLA0KPiANCj4gT24gV2VkLCBBcHIgMTAsIDIwMTkgYXQgMDE6NDc6NDBBTSArMDAwMCwg
QW5zb24gSHVhbmcgd3JvdGU6DQo+ID4gaS5NWDdVTFAgaGFzIFRQTShMb3cgUG93ZXIgVGltZXIv
UHVsc2UgV2lkdGggTW9kdWxhdGlvbiBNb2R1bGUpDQo+ID4gaW5zaWRlLCBpdCBjYW4gc3VwcG9y
dCBtdWx0aXBsZSBQV00gY2hhbm5lbHMsIGFsbCB0aGUgY2hhbm5lbHMgc2hhcmUNCj4gPiBzYW1l
IGNvdW50ZXIgYW5kIHBlcmlvZCBzZXR0aW5nLCBidXQgZWFjaCBjaGFubmVsIGNhbiBjb25maWd1
cmUgaXRzDQo+ID4gZHV0eSBhbmQgcG9sYXJpdHkgaW5kZXBlbmRlbnRseS4NCj4gPg0KPiA+IFRo
ZXJlIGFyZSBzZXZlcmFsIFRQTSBtb2R1bGVzIGluIGkuTVg3VUxQLCB0aGUgbnVtYmVyIG9mIGNo
YW5uZWxzIGluDQo+ID4gVFBNIG1vZHVsZXMgYXJlIGRpZmZlcmVudCwgaXQgY2FuIGJlIHJlYWQg
ZnJvbSBlYWNoIFRQTSBtb2R1bGUncyBQQVJBTQ0KPiA+IHJlZ2lzdGVyLg0KPiA+DQo+ID4gU2ln
bmVkLW9mZi1ieTogQW5zb24gSHVhbmcgPEFuc29uLkh1YW5nQG54cC5jb20+DQo+ID4gLS0tDQo+
ID4gQ2hhbmdlcyBzaW5jZSBWMTA6DQo+ID4gCS0gcmVtb3ZlIGNoYW5uZWwgcHJpdmF0ZSBkYXRh
IHdoaWNoIGlzIE9OTFkgZm9yIHN0b3JpbmcgcG9sYXJpdHksIGp1c3QNCj4gcmVhZCBpdCBmcm9t
IEhXIHJlZ2lzdGVyOw0KPiA+IAktIGltcHJvdmUgcHdtX2lteF90cG1fcm91bmRfc3RhdGUoKSBh
bmQNCj4gcHdtX2lteF90cG1fYXBwbHlfaHcoKSBwYXJhbWV0ZXJzIHNlcXVlbmNlOw0KPiA+IAkt
IGltcHJvdmUgY29tbWVudHMgZm9yIHBvbGFyaXR5IHNldHRpbmc7DQo+ID4gCS0gcmVmdXNlIHBv
bGFyaXR5IGNoYW5nZSBpZiBQV00gaXMgYWN0aXZlLg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL3B3
bS9LY29uZmlnICAgICAgIHwgIDExICsrDQo+ID4gIGRyaXZlcnMvcHdtL01ha2VmaWxlICAgICAg
fCAgIDEgKw0KPiA+ICBkcml2ZXJzL3B3bS9wd20taW14LXRwbS5jIHwgNDQyDQo+ID4gKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKw0KPiA+ICAzIGZpbGVzIGNo
YW5nZWQsIDQ1NCBpbnNlcnRpb25zKCspDQo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJz
L3B3bS9wd20taW14LXRwbS5jDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wd20vS2Nv
bmZpZyBiL2RyaXZlcnMvcHdtL0tjb25maWcgaW5kZXgNCj4gPiBjMDU0YmQxLi4xMzExYjU0MCAx
MDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL3B3bS9LY29uZmlnDQo+ID4gKysrIGIvZHJpdmVycy9w
d20vS2NvbmZpZw0KPiA+IEBAIC0yMTAsNiArMjEwLDE3IEBAIGNvbmZpZyBQV01fSU1YMjcNCj4g
PiAgCSAgVG8gY29tcGlsZSB0aGlzIGRyaXZlciBhcyBhIG1vZHVsZSwgY2hvb3NlIE0gaGVyZTog
dGhlIG1vZHVsZQ0KPiA+ICAJICB3aWxsIGJlIGNhbGxlZCBwd20taW14MjcuDQo+ID4NCj4gPiAr
Y29uZmlnIFBXTV9JTVhfVFBNDQo+ID4gKwl0cmlzdGF0ZSAiaS5NWCBUUE0gUFdNIHN1cHBvcnQi
DQo+ID4gKwlkZXBlbmRzIG9uIEFSQ0hfTVhDIHx8IENPTVBJTEVfVEVTVA0KPiA+ICsJZGVwZW5k
cyBvbiBIQVZFX0NMSyAmJiBIQVNfSU9NRU0NCj4gPiArCWhlbHANCj4gPiArCSAgR2VuZXJpYyBQ
V00gZnJhbWV3b3JrIGRyaXZlciBmb3IgaS5NWDdVTFAgVFBNIG1vZHVsZSwgVFBNJ3MNCj4gZnVs
bA0KPiA+ICsJICBuYW1lIGlzIExvdyBQb3dlciBUaW1lci9QdWxzZSBXaWR0aCBNb2R1bGF0aW9u
IE1vZHVsZS4NCj4gPiArDQo+ID4gKwkgIFRvIGNvbXBpbGUgdGhpcyBkcml2ZXIgYXMgYSBtb2R1
bGUsIGNob29zZSBNIGhlcmU6IHRoZSBtb2R1bGUNCj4gPiArCSAgd2lsbCBiZSBjYWxsZWQgcHdt
LWlteC10cG0uDQo+ID4gKw0KPiA+ICBjb25maWcgUFdNX0paNDc0MA0KPiA+ICAJdHJpc3RhdGUg
IkluZ2VuaWMgSlo0N3h4IFBXTSBzdXBwb3J0Ig0KPiA+ICAJZGVwZW5kcyBvbiBNQUNIX0lOR0VO
SUMNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wd20vTWFrZWZpbGUgYi9kcml2ZXJzL3B3bS9N
YWtlZmlsZSBpbmRleA0KPiA+IDQ0ODgyNWUuLmMzNjg1OTkgMTAwNjQ0DQo+ID4gLS0tIGEvZHJp
dmVycy9wd20vTWFrZWZpbGUNCj4gPiArKysgYi9kcml2ZXJzL3B3bS9NYWtlZmlsZQ0KPiA+IEBA
IC0xOSw2ICsxOSw3IEBAIG9iai0kKENPTkZJR19QV01fSElCVlQpCQkrPSBwd20tDQo+IGhpYnZ0
Lm8NCj4gPiAgb2JqLSQoQ09ORklHX1BXTV9JTUcpCQkrPSBwd20taW1nLm8NCj4gPiAgb2JqLSQo
Q09ORklHX1BXTV9JTVgxKQkJKz0gcHdtLWlteDEubw0KPiA+ICBvYmotJChDT05GSUdfUFdNX0lN
WDI3KQkJKz0gcHdtLWlteDI3Lm8NCj4gPiArb2JqLSQoQ09ORklHX1BXTV9JTVhfVFBNKQkrPSBw
d20taW14LXRwbS5vDQo+ID4gIG9iai0kKENPTkZJR19QV01fSlo0NzQwKQkrPSBwd20tano0NzQw
Lm8NCj4gPiAgb2JqLSQoQ09ORklHX1BXTV9MUDM5NDMpCSs9IHB3bS1scDM5NDMubw0KPiA+ICBv
YmotJChDT05GSUdfUFdNX0xQQzE4WFhfU0NUKQkrPSBwd20tbHBjMTh4eC1zY3Qubw0KPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL3B3bS9wd20taW14LXRwbS5jIGIvZHJpdmVycy9wd20vcHdtLWlt
eC10cG0uYw0KPiBuZXcNCj4gPiBmaWxlIG1vZGUgMTAwNjQ0IGluZGV4IDAwMDAwMDAuLjkzNDlm
NGYNCj4gPiAtLS0gL2Rldi9udWxsDQo+ID4gKysrIGIvZHJpdmVycy9wd20vcHdtLWlteC10cG0u
Yw0KPiA+IEBAIC0wLDAgKzEsNDQyIEBADQo+ID4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVy
OiBHUEwtMi4wDQo+ID4gKy8qDQo+ID4gKyAqIENvcHlyaWdodCAyMDE4LTIwMTkgTlhQLg0KPiA+
ICsgKg0KPiA+ICsgKiBMaW1pdGF0aW9uczoNCj4gPiArICogLSBUaGUgVFBNIGNvdW50ZXIgYW5k
IHBlcmlvZCBjb3VudGVyIGFyZSBzaGFyZWQgYmV0d2Vlbg0KPiA+ICsgKiAgIG11bHRpcGxlIGNo
YW5uZWxzLCBzbyBhbGwgY2hhbm5lbHMgc2hvdWxkIHVzZSBzYW1lIHBlcmlvZA0KPiA+ICsgKiAg
IHNldHRpbmdzLg0KPiA+ICsgKiAtIENoYW5nZXMgdG8gcG9sYXJpdHkgY2Fubm90IGJlIGxhdGNo
ZWQgYXQgdGhlIHRpbWUgb2YgdGhlDQo+ID4gKyAqICAgbmV4dCBwZXJpb2Qgc3RhcnQuDQo+ID4g
KyAqIC0gQ2hhbmdpbmcgcGVyaW9kIGFuZCBkdXR5IGN5Y2xlIHRvZ2V0aGVyIGlzbid0IGF0b21p
YywNCj4gPiArICogICB3aXRoIHRoZSB3cm9uZyB0aW1pbmcgaXQgbWlnaHQgaGFwcGVuIHRoYXQg
YSBwZXJpb2QgaXMNCj4gPiArICogICBwcm9kdWNlZCB3aXRoIG9sZCBkdXR5IGN5Y2xlIGJ1dCBu
ZXcgcGVyaW9kIHNldHRpbmdzLg0KPiA+ICsgKi8NCj4gPiArDQo+ID4gKyNpbmNsdWRlIDxsaW51
eC9iaXRmaWVsZC5oPg0KPiA+ICsjaW5jbHVkZSA8bGludXgvYml0b3BzLmg+DQo+ID4gKyNpbmNs
dWRlIDxsaW51eC9jbGsuaD4NCj4gPiArI2luY2x1ZGUgPGxpbnV4L2Vyci5oPg0KPiA+ICsjaW5j
bHVkZSA8bGludXgvaW8uaD4NCj4gPiArI2luY2x1ZGUgPGxpbnV4L2xvZzIuaD4NCj4gPiArI2lu
Y2x1ZGUgPGxpbnV4L21vZHVsZS5oPg0KPiA+ICsjaW5jbHVkZSA8bGludXgvb2YuaD4NCj4gPiAr
I2luY2x1ZGUgPGxpbnV4L29mX2FkZHJlc3MuaD4NCj4gPiArI2luY2x1ZGUgPGxpbnV4L3BsYXRm
b3JtX2RldmljZS5oPg0KPiA+ICsjaW5jbHVkZSA8bGludXgvcHdtLmg+DQo+ID4gKyNpbmNsdWRl
IDxsaW51eC9zbGFiLmg+DQo+ID4gKw0KPiA+ICsjZGVmaW5lIFBXTV9JTVhfVFBNX1BBUkFNCTB4
NA0KPiA+ICsjZGVmaW5lIFBXTV9JTVhfVFBNX0dMT0JBTAkweDgNCj4gPiArI2RlZmluZSBQV01f
SU1YX1RQTV9TQwkJMHgxMA0KPiA+ICsjZGVmaW5lIFBXTV9JTVhfVFBNX0NOVAkJMHgxNA0KPiA+
ICsjZGVmaW5lIFBXTV9JTVhfVFBNX01PRAkJMHgxOA0KPiA+ICsjZGVmaW5lIFBXTV9JTVhfVFBN
X0NuU0MobikJKDB4MjAgKyAobikgKiAweDgpDQo+ID4gKyNkZWZpbmUgUFdNX0lNWF9UUE1fQ25W
KG4pCSgweDI0ICsgKG4pICogMHg4KQ0KPiA+ICsNCj4gPiArI2RlZmluZSBQV01fSU1YX1RQTV9Q
QVJBTV9DSEFOCQkJR0VOTUFTSyg3LA0KPiAwKQ0KPiA+ICsNCj4gPiArI2RlZmluZSBQV01fSU1Y
X1RQTV9TQ19QUwkJCUdFTk1BU0soMiwgMCkNCj4gPiArI2RlZmluZSBQV01fSU1YX1RQTV9TQ19D
TU9ECQkJR0VOTUFTSyg0LCAzKQ0KPiA+ICsjZGVmaW5lIFBXTV9JTVhfVFBNX1NDX0NNT0RfSU5D
X0VWRVJZX0NMSw0KPiAJRklFTERfUFJFUChQV01fSU1YX1RQTV9TQ19DTU9ELCAxKQ0KPiA+ICsj
ZGVmaW5lIFBXTV9JTVhfVFBNX1NDX0NQV01TCQkJQklUKDUpDQo+ID4gKw0KPiA+ICsjZGVmaW5l
IFBXTV9JTVhfVFBNX0NuU0NfQ0hGCUJJVCg3KQ0KPiA+ICsjZGVmaW5lIFBXTV9JTVhfVFBNX0Nu
U0NfTVNCCUJJVCg1KQ0KPiA+ICsjZGVmaW5lIFBXTV9JTVhfVFBNX0NuU0NfTVNBCUJJVCg0KQ0K
PiA+ICsNCj4gPiArLyoNCj4gPiArICogVGhlIHJlZmVyZW5jZSBtYW51YWwgZGVzY3JpYmVzIHRo
aXMgZmllbGQgYXMgdHdvIHNlcGFyYXRlIGJpdHMuDQo+ID4gK1RoZQ0KPiA+ICsgKiBzZW1hbnRp
YyBvZiB0aGUgdHdvIGJpdHMgaXNuJ3Qgb3J0aG9nb25hbCB0aG91Z2gsIHNvIHRoZXkgYXJlDQo+
ID4gK3RyZWF0ZWQNCj4gPiArICogdG9nZXRoZXIgYXMgYSAyLWJpdCBmaWVsZCBoZXJlLg0KPiA+
ICsgKi8NCj4gPiArI2RlZmluZSBQV01fSU1YX1RQTV9DblNDX0VMUwlHRU5NQVNLKDMsIDIpDQo+
ID4gKyNkZWZpbmUgUFdNX0lNWF9UUE1fQ25TQ19FTFNfSU5WRVJTRUQNCj4gCUZJRUxEX1BSRVAo
UFdNX0lNWF9UUE1fQ25TQ19FTFMsIDEpDQo+ID4gKyNkZWZpbmUgUFdNX0lNWF9UUE1fQ25TQ19F
TFNfTk9STUFMDQo+IAlGSUVMRF9QUkVQKFBXTV9JTVhfVFBNX0NuU0NfRUxTLCAyKQ0KPiA+ICsN
Cj4gPiArDQo+ID4gKyNkZWZpbmUgUFdNX0lNWF9UUE1fTU9EX1dJRFRICTE2DQo+ID4gKyNkZWZp
bmUgUFdNX0lNWF9UUE1fTU9EX01PRA0KPiAJR0VOTUFTSyhQV01fSU1YX1RQTV9NT0RfV0lEVEgg
LSAxLCAwKQ0KPiA+ICsNCj4gPiArc3RydWN0IGlteF90cG1fcHdtX2NoaXAgew0KPiA+ICsJc3Ry
dWN0IHB3bV9jaGlwIGNoaXA7DQo+ID4gKwlzdHJ1Y3QgY2xrICpjbGs7DQo+ID4gKwl2b2lkIF9f
aW9tZW0gKmJhc2U7DQo+ID4gKwlzdHJ1Y3QgbXV0ZXggbG9jazsNCj4gPiArCXUzMiB1c2VyX2Nv
dW50Ow0KPiA+ICsJdTMyIGVuYWJsZV9jb3VudDsNCj4gPiArCXUzMiByZWFsX3BlcmlvZDsNCj4g
PiArfTsNCj4gPiArDQo+ID4gK3N0cnVjdCBpbXhfdHBtX3B3bV9wYXJhbSB7DQo+ID4gKwl1OCBw
cmVzY2FsZTsNCj4gPiArCXUzMiBtb2Q7DQo+ID4gKwl1MzIgdmFsOw0KPiA+ICt9Ow0KPiA+ICsN
Cj4gPiArc3RhdGljIGlubGluZSBzdHJ1Y3QgaW14X3RwbV9wd21fY2hpcCAqdG9faW14X3RwbV9w
d21fY2hpcChzdHJ1Y3QNCj4gPiArcHdtX2NoaXAgKmNoaXApIHsNCj4gPiArCXJldHVybiBjb250
YWluZXJfb2YoY2hpcCwgc3RydWN0IGlteF90cG1fcHdtX2NoaXAsIGNoaXApOyB9DQo+ID4gKw0K
PiANCj4gTWF5YmUgYWRkIGEgY29tbWVudCBoZXJlIGRlc2NyaWJpbmcgdGhlIHB1cnBvc2Ugb2Yg
dGhpcyBmdW5jdGlvbi4NCj4gU29tZXRoaW5nIGxpa2U6DQo+IA0KPiAvKg0KPiAgKiBUaGlzIGZ1
bmN0aW9uIGRldGVybWluZXMgZm9yIGEgZ2l2ZW4gcHdtX3N0YXRlICpzdGF0ZSB0aGF0IGEgY29u
c3VtZXINCj4gICogbWlnaHQgcmVxdWVzdCB0aGUgcHdtX3N0YXRlICpyZWFsc3RhdGUgdGhhdCBl
dmVudHVhbGx5IGlzIGltcGxlbWVudGVkDQo+ICAqIGJ5IHRoZSBoYXJkd2FyZSBhbmQgdGhlIG5l
Y2Vzc2FyeSByZWdpc3RlciB2YWx1ZXMgKGluICpwKSB0byBhY2hpdmUNCj4gICogdGhpcy4NCj4g
ICovDQo+IA0KPiBJIGRpZG4ndCByZXZhbGlkYXRlIGFsbCB0aGUgbWF0aHMgaW4gdGhpcyBkcml2
ZXIgYnV0IGFzc3VtZSB0aGV5IGFyZSBzdGlsbCByaWdodA0KPiBmcm9tIHRoZSBwcmV2aW91cyBy
b3VuZHMuIElmIHlvdSBhZGQgdGhlIGNvbW1lbnQgSSBzdWdnZXN0ZWQgYWJvdmUsIGZlZWwNCj4g
ZnJlZSB0byBhbHNvIGFkZA0KPiANCj4gCVJldmlld2VkLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8
dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPg0KPiANCg0KT0ssIEkgd2lsbCBhZGQgdGhp
cyBjb21tZW50IGluIFYxMiwgdGhhbmtzIQ0KDQo+ID4gK3N0YXRpYyBpbnQgcHdtX2lteF90cG1f
cm91bmRfc3RhdGUoc3RydWN0IHB3bV9jaGlwICpjaGlwLA0KPiA+ICsJCQkJICAgc3RydWN0IGlt
eF90cG1fcHdtX3BhcmFtICpwLA0KPiA+ICsJCQkJICAgc3RydWN0IHB3bV9zdGF0ZSAqcmVhbF9z
dGF0ZSwNCj4gPiArCQkJCSAgIHN0cnVjdCBwd21fc3RhdGUgKnN0YXRlKQ0KPiA+ICt7DQo+ID4g
KwlzdHJ1Y3QgaW14X3RwbV9wd21fY2hpcCAqdHBtID0gdG9faW14X3RwbV9wd21fY2hpcChjaGlw
KTsNCj4gPiArCXUzMiByYXRlLCBwcmVzY2FsZSwgcGVyaW9kX2NvdW50LCBjbG9ja191bml0Ow0K
PiA+ICsJdTY0IHRtcDsNCj4gPiArDQo+ID4gKwlyYXRlID0gY2xrX2dldF9yYXRlKHRwbS0+Y2xr
KTsNCj4gPiArCXRtcCA9ICh1NjQpc3RhdGUtPnBlcmlvZCAqIHJhdGU7DQo+ID4gKwljbG9ja191
bml0ID0gRElWX1JPVU5EX0NMT1NFU1RfVUxMKHRtcCwgTlNFQ19QRVJfU0VDKTsNCj4gPiArCWlm
IChjbG9ja191bml0IDw9IFBXTV9JTVhfVFBNX01PRF9NT0QpDQo+ID4gKwkJcHJlc2NhbGUgPSAw
Ow0KPiA+ICsJZWxzZQ0KPiA+ICsJCXByZXNjYWxlID0gaWxvZzIoY2xvY2tfdW5pdCkgKyAxIC0N
Cj4gUFdNX0lNWF9UUE1fTU9EX1dJRFRIOw0KPiA+ICsNCj4gPiArCWlmICgoIUZJRUxEX0ZJVChQ
V01fSU1YX1RQTV9TQ19QUywgcHJlc2NhbGUpKSkNCj4gPiArCQlyZXR1cm4gLUVSQU5HRTsNCj4g
DQo+IEl0J3MgYSBiaXQgc2FkIHRoYXQgbXkgaWRlYXMgZm9yIHRoZSBjb3JlIGNvbmNlcm5pbmcg
YSByb3VuZF9yYXRlIGNhbGxiYWNrDQo+IGRvbid0IGdvIGRvd24gcGFydGljdWxhcmx5IHdlbGwg
b24gVGhpZXJyeSdzIHNpZGUuDQo+IA0KPiBXaXRoIHRoZSB3YXkgSSBzdWdnZXN0ZWQgd2UnZCBj
b250aW51ZSB3aXRoIHByZXNjYWxlID0gNyBpbiB0aGlzIGNhc2UuDQo+IA0KPiBBcyBvZiBub3cg
dGhlcmUgaXMgbm8gcnVsZSB3aGljaCBraW5kIG9mIGRldmlhdGlvbiB0byBhY2NlcHQgYW5kIHdo
aWNoIG5vdC4gOi0NCj4gfCAoTm90aGluZyB0aGlzIHBhdGNoIGNhbiBjaGFuZ2Ugb2YgY291cnNl
LikNCj4gDQoNClRoYW5rcywNCg0KQW5zb24uDQoNCj4gQmVzdCByZWdhcmRzDQo+IFV3ZQ0KPiAN
Cj4gLS0NCj4gUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgVXdl
IEtsZWluZS1Lw7ZuaWcgICAgICAgICAgICB8DQo+IEluZHVzdHJpYWwgTGludXggU29sdXRpb25z
ICAgICAgICAgICAgICAgICB8DQo+IGh0dHBzOi8vZXVyMDEuc2FmZWxpbmtzLnByb3RlY3Rpb24u
b3V0bG9vay5jb20vP3VybD1odHRwJTNBJTJGJTJGd3d3LnANCj4gZW5ndXRyb25peC5kZSUyRiZh
bXA7ZGF0YT0wMiU3QzAxJTdDYW5zb24uaHVhbmclNDBueHAuY29tJTdDODcNCj4gMmFkZTAxNGIz
MTRmNWVkZjZkMDhkNmQ0NGVkNDFlJTdDNjg2ZWExZDNiYzJiNGM2ZmE5MmNkOTljNWMzMDE2Mw0K
PiA1JTdDMCU3QzAlN0M2MzY5Mjk4MzIzNjMzOTM0NjEmYW1wO3NkYXRhPVFUU3dPbjAyODhIWWxC
Q3VzJTINCj4gRlNsdzlCRGxqUHFNSjFXSkQyS2JFaUpodU0lM0QmYW1wO3Jlc2VydmVkPTAgIHwN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
