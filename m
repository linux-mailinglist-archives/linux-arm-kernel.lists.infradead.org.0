Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B1EF0D16
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 04:35:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tGlSjHHvuViZIFdrEVp5pKUW0VhdDdSgWTOlgCIssvM=; b=lfbVLY0n+O2Ep1
	tqJHYlJDqkYa6stQ/0/Y3ypBRy6YKrLTrke/sNXgCcp0hlElZ1x3XytBzyvuZPMna5EwSzJtBUGTC
	/FKWH5oTh3AuFszeMAYEPtCQVEEBaZgNJmy2s5h5e7wBZFFMS2Kty73CF8bYFfFLUfYdcVXRlvp/p
	7T03n3LAqFj7ZogtawF3UMUSmsUHD7nzHlGZ50SxaOAeyU6JbVj1RYi8hFlm5YJERt/EGvpw1bR2p
	2VOrdhBhnDh1sx/dkuR9DiVTX0zweaqqqNGpbszvEfwa5F/xsU6YCws4ZFqgRrd+QioZu/vyVVzQM
	53NVpZ8fIkAAWrXH90sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSC6r-0000Lv-Ay; Wed, 06 Nov 2019 03:35:53 +0000
Received: from mail-ve1eur02on0629.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::629]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSC6g-0000Ks-Lq
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 03:35:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oVRbKHsUQsoLNPxHiK3xQpxq/7ecg4F4aK/uHp5pF/zDSaVKDLP5znyWMcr6VCBw6Md3orb5EDgh6IgVfecH4uv3docvFRiVTJOooDN1mdW20ecJE/fW5SALCwbjJCVoAyVercKsJezWEAb7ORjPIzjjSeuNgq6G4N68YeQcHBWCnkIDiM0Haozyui8MnDA9EXiak6BJ1TaXR/VqN5anTf5XvKe8p+NfiEVw+m19zbjNCvLcLrpqIQoqIHxqW3tGKjMoPFsECdbqpcxlCgLrg9aNESjXlu+h7dS0OMtyh1gUPT/+zAncb9B9COUGgrZnzkQynQsvd92HKXGn7ZZshA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CHPi9eqeDDxQbUo2ToZpOvNibNXbQ3Rbrihq2faQP7E=;
 b=DqBM8cHYhJ/lzLUnk3g3YZY+FZvAFnixbP6eMCUHJa9R2B2PPPqsKTzqNYBePrlF79/Yp6OzNSw96aqJ6rMi+Nzbi/X5txaV4GS7QjZkeWgoyKSudowuZVg2wbEf7qjbVoHTJzZe6aTl+Vy0uHF4+JcktFwLQjBa0qFIgBGymXSKQF4oRdPYl5w+nHOYKC9/fxaiI0wG5NB24eZCTMR1UxTpWu/LK2A/0/zZfc25CyZkh2ONiWsazjvu2FzymBimdSnlyV7fXFN37TGU7y909DFPhYqW7a1LzbrJco5HhXn1P941Y1r0dr/8iBeigN/LxwL/mOb9WC9ebJHygI4DKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CHPi9eqeDDxQbUo2ToZpOvNibNXbQ3Rbrihq2faQP7E=;
 b=M1Ul3n1cNZv8ljoIN/1C0TbaZldh2FuFg5GZ8JC2cWMNishze+9VVs0HoHkOKuQio2CIZj4VgjMwLsx6yLXqpo90mvK/d1xZyLN50Xafcu8SVbkQf6lxxjAlLYjeFXbGeHMs2cAlEitkEniwlXvI8mupjEJhFKYhv5EV2088QFU=
Received: from AM5PR04MB3299.eurprd04.prod.outlook.com (10.173.255.158) by
 AM5PR04MB3106.eurprd04.prod.outlook.com (10.167.170.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Wed, 6 Nov 2019 03:35:36 +0000
Received: from AM5PR04MB3299.eurprd04.prod.outlook.com
 ([fe80::8ce8:9eaf:3916:4bc9]) by AM5PR04MB3299.eurprd04.prod.outlook.com
 ([fe80::8ce8:9eaf:3916:4bc9%6]) with mapi id 15.20.2408.024; Wed, 6 Nov 2019
 03:35:36 +0000
From: Xiaowei Bao <xiaowei.bao@nxp.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: RE: [PATCH v6 3/3] PCI: layerscape: Add LS1028a support
Thread-Topic: [PATCH v6 3/3] PCI: layerscape: Add LS1028a support
Thread-Index: AQHVYUIADtGnPn3wtky/OvhdSoTT96d857UAgAD6lQA=
Date: Wed, 6 Nov 2019 03:35:36 +0000
Message-ID: <AM5PR04MB32999C59EE51DACC030E13D7F5790@AM5PR04MB3299.eurprd04.prod.outlook.com>
References: <20190902034319.14026-1-xiaowei.bao@nxp.com>
 <20190902034319.14026-3-xiaowei.bao@nxp.com>
 <20191105123233.GA26960@e121166-lin.cambridge.arm.com>
In-Reply-To: <20191105123233.GA26960@e121166-lin.cambridge.arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xiaowei.bao@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 99f897e0-8870-4da9-975c-08d7626a6321
x-ms-traffictypediagnostic: AM5PR04MB3106:|AM5PR04MB3106:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM5PR04MB3106B52341838483163AE3AFF5790@AM5PR04MB3106.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 02135EB356
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(396003)(376002)(39860400002)(366004)(13464003)(189003)(199004)(6916009)(6506007)(66066001)(74316002)(446003)(66446008)(3846002)(2906002)(305945005)(14444005)(478600001)(9686003)(99286004)(6246003)(6116002)(25786009)(33656002)(14454004)(4326008)(256004)(71200400001)(52536014)(5660300002)(71190400001)(76176011)(64756008)(76116006)(26005)(53546011)(8676002)(7696005)(81166006)(476003)(11346002)(7416002)(81156014)(55016002)(86362001)(486006)(54906003)(44832011)(316002)(8936002)(186003)(66476007)(66556008)(66946007)(6436002)(7736002)(102836004)(229853002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR04MB3106;
 H:AM5PR04MB3299.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: f5ahmGEd/sNWba0MA9NlMTXxkrTp//wP0Pt6WIDrr1bKO14RpsWOddUkuURxuaHVGFJGMX8bTNM4YosVac8lvCAh8/3YWLaTCjmZFAKEJT/I138Bm4sqwmx2d2BrnWF1F38mglcjB8rGU62axI3E2txxe22RjFc40dEgAKyDMZQj7uGvTwrKIEmA4CFMg8fQEW8ynmY+JLzp5pu2jbJcAalOPOaIww3Tq5pTyNlk8w7l1uRY/oHKynpbSSgoqX7MDq1fjVEaHWl1NaMxjPSt7wVStSFAPPTEuLCrgmo69E3GoNbMMinGZnnOR/j5dBAu/OnDhW3VhCBvxkk+ZEWfWrKTHOSqLFCDUEhMaCFbQTeRDuWU+SA/mF5ftok9m3isvLztyHGK1GxvEWZ2AFrs6KN2qwJZWi7+ybsSWpZknmvI3Hs+0tNs7msdv/j3zsr9
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99f897e0-8870-4da9-975c-08d7626a6321
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2019 03:35:36.4676 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 28ZEX/yzG5QCgwrOwSfqc9etq7/R2dmw2HPgQMsPqu3RPPwWfX+NShaeZqOBW3CvktHuOIWELp+VWlBXzb6l5A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR04MB3106
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_193542_806819_962B06D1 
X-CRM114-Status: GOOD (  19.01  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:629 listed in]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Roy Zang <roy.zang@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "Z.q. Hou" <zhiqiang.hou@nxp.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTG9yZW56byBQaWVyYWxp
c2kgPGxvcmVuem8ucGllcmFsaXNpQGFybS5jb20+DQo+IFNlbnQ6IDIwMTnE6jEx1MI1yNUgMjA6
MzMNCj4gVG86IFhpYW93ZWkgQmFvIDx4aWFvd2VpLmJhb0BueHAuY29tPg0KPiBDYzogcm9iaCtk
dEBrZXJuZWwub3JnOyBtYXJrLnJ1dGxhbmRAYXJtLmNvbTsgc2hhd25ndW9Aa2VybmVsLm9yZzsg
TGVvDQo+IExpIDxsZW95YW5nLmxpQG54cC5jb20+OyBNLmguIExpYW4gPG1pbmdodWFuLmxpYW5A
bnhwLmNvbT47IE1pbmdrYWkgSHUNCj4gPG1pbmdrYWkuaHVAbnhwLmNvbT47IFJveSBaYW5nIDxy
b3kuemFuZ0BueHAuY29tPjsNCj4gbGludXgtcGNpQHZnZXIua2VybmVsLm9yZzsgZGV2aWNldHJl
ZUB2Z2VyLmtlcm5lbC5vcmc7DQo+IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsNCj4gbGludXhwcGMtZGV2QGxpc3RzLm96
bGFicy5vcmc7IGJoZWxnYWFzQGdvb2dsZS5jb207IFoucS4gSG91DQo+IDx6aGlxaWFuZy5ob3VA
bnhwLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSCB2NiAzLzNdIFBDSTogbGF5ZXJzY2FwZTog
QWRkIExTMTAyOGEgc3VwcG9ydA0KPiANCj4gT24gTW9uLCBTZXAgMDIsIDIwMTkgYXQgMTE6NDM6
MTlBTSArMDgwMCwgWGlhb3dlaSBCYW8gd3JvdGU6DQo+ID4gQWRkIHN1cHBvcnQgZm9yIHRoZSBM
UzEwMjhhIFBDSWUgY29udHJvbGxlci4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFhpYW93ZWkg
QmFvIDx4aWFvd2VpLmJhb0BueHAuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEhvdSBaaGlxaWFu
ZyA8WmhpcWlhbmcuSG91QG54cC5jb20+DQo+ID4gLS0tDQo+ID4gdjI6DQo+ID4gIC0gTm8gY2hh
bmdlLg0KPiA+IHYzOg0KPiA+ICAtIFJldXNlIHRoZSBsczIwODggZHJpdmVyIGRhdGEgc3RydWN0
dXJ0Lg0KPiA+IHY0Og0KPiA+ICAtIE5vIGNoYW5nZS4NCj4gPiB2NToNCj4gPiAgLSBObyBjaGFu
Z2UuDQo+ID4gdjY6DQo+ID4gIC0gTm8gY2hhbmdlLg0KPiA+DQo+ID4gIGRyaXZlcnMvcGNpL2Nv
bnRyb2xsZXIvZHdjL3BjaS1sYXllcnNjYXBlLmMgfCAxICsNCj4gPiAgMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspDQo+IA0KPiBJIGhhdmUgbm90IHNlZW4gYW55IGNvbW1lbnQgb24gYW55
IGxheWVyc2NhcGUgZHJpdmVyIHBhdGNoZXMgY29taW5nIGZyb20NCj4gdGhlIG1haW50YWluZXJz
IGFzIGxpc3RlZCBpbiB0aGUgTUFJTlRBSU5FUlMgZmlsZSAoYW5kIENDZWQgaW4gdGhpcyBzZXJp
ZXMpLg0KPiANCj4gSSByZXF1ZXN0IG1haW50YWluZXJzIEFDSyBvbiB0aGVzZSBwYXRjaGVzIGFu
ZCBJIGV4cGVjdCB0aGVtIHRvIHN0YXJ0DQo+IHJldmlld2luZyB5b3VyIGNvZGUgaWYgdGhleSB3
YW50IHRvIGJlIHN0aWxsIGNvbnNpZGVyZWQgbWFpbnRhaW5lcnMgZm9yIHRoaXMNCj4gZHJpdmVy
Lg0KPiANCj4gVGhlIGNoYW5nZXMgbG9vayBPSyBtaW51cyBTaGF3bidzIHJlbWFyayBvbiBjb21w
YXRpYmxlIHN0cmluZyB0aGF0IHdhcw0KPiBpZ25vcmVkLg0KDQpIaSBMb3JlbnpvLA0KDQpUaGFu
a3MgZm9yIHlvdXIgY29tbWVudHMuDQoNCkluIGZhY3QsIHRoZSBwYXRjaGVzIGhhdmUgcmV2aWV3
ZWQgaW4gb3VyIGludGVybmFsIG1haWwgbGlzdCwgYWZ0ZXIgdGhlIHJldmlldyBieSBNaW5naHVh
biANCmFuZCBNaW5na2FpLCBJIHdpbGwgc2VuZCB0aGVzZSBwYXRjaGVzIHRvIG9wZW5zb3VyY2Us
IHRoZXkgd2lsbCBnaXZlIHRoZSBBQ0sgd2hlbiB0aGVzZQ0KcGF0Y2hlcyBzZWVtcyBpcyBPSyBh
bmQgbm8gY29tbWVudHMgb24gdGhpcy4NCiAgIA0KVGhhbmtzIA0KWGlhb3dlaQ0KDQo+IA0KPiBU
aGFua3MsDQo+IExvcmVuem8NCj4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvZHdjL3BjaS1sYXllcnNjYXBlLmMNCj4gPiBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIv
ZHdjL3BjaS1sYXllcnNjYXBlLmMNCj4gPiBpbmRleCAzYTVmYTI2Li5mMjRmNzlhIDEwMDY0NA0K
PiA+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaS1sYXllcnNjYXBlLmMNCj4g
PiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ktbGF5ZXJzY2FwZS5jDQo+ID4g
QEAgLTI2Myw2ICsyNjMsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGxzX3BjaWVfZHJ2ZGF0YSBs
czIwODhfZHJ2ZGF0YQ0KPiA+ID0geyAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQg
bHNfcGNpZV9vZl9tYXRjaFtdID0gew0KPiA+ICAJeyAuY29tcGF0aWJsZSA9ICJmc2wsbHMxMDEy
YS1wY2llIiwgLmRhdGEgPSAmbHMxMDQ2X2RydmRhdGEgfSwNCj4gPiAgCXsgLmNvbXBhdGlibGUg
PSAiZnNsLGxzMTAyMWEtcGNpZSIsIC5kYXRhID0gJmxzMTAyMV9kcnZkYXRhIH0sDQo+ID4gKwl7
IC5jb21wYXRpYmxlID0gImZzbCxsczEwMjhhLXBjaWUiLCAuZGF0YSA9ICZsczIwODhfZHJ2ZGF0
YSB9LA0KPiA+ICAJeyAuY29tcGF0aWJsZSA9ICJmc2wsbHMxMDQzYS1wY2llIiwgLmRhdGEgPSAm
bHMxMDQzX2RydmRhdGEgfSwNCj4gPiAgCXsgLmNvbXBhdGlibGUgPSAiZnNsLGxzMTA0NmEtcGNp
ZSIsIC5kYXRhID0gJmxzMTA0Nl9kcnZkYXRhIH0sDQo+ID4gIAl7IC5jb21wYXRpYmxlID0gImZz
bCxsczIwODBhLXBjaWUiLCAuZGF0YSA9ICZsczIwODBfZHJ2ZGF0YSB9LA0KPiA+IC0tDQo+ID4g
Mi45LjUNCj4gPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
