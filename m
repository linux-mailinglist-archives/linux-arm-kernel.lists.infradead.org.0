Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E7B82B25
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 07:41:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CgNZ+UvoPCwBef2RP1LQveVa7/m2GO2jls4Ezd7PLPo=; b=DGRH4BK1BWdPn5
	PO1nWMFE++07d6pO9E50gBtIYXFpCuhgsH/pEI6Jn+BTENPkQuDYfAWyAy+UpVO5cBiy9lEw0hVeP
	026BpX7lXePHletkuS6qrgcDJfkQm7r457HaHjKuCVRNn3NYB+FWywAbgkD+nPiXg0ous5z8vvg/c
	8pYJqpnECxfX73wMtgCBHuoObEivenz6PJ3JNkE2097B9g1sLNqnZSbTB4StTx8Ur3SwkdebcUcLx
	FdbH6ffXV+jOHpfPF7pXzUNNPxJLgf7Aah+oR1dAq88WXPb0+80kp9IAjd3wMe27K0YRBdQo4MN4l
	WLZq+OlL3AluBbCJQ2IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1husE1-0004Lr-6y; Tue, 06 Aug 2019 05:41:33 +0000
Received: from mail-eopbgr80048.outbound.protection.outlook.com ([40.107.8.48]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1husDt-0004LK-CX
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 05:41:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mJD8T07NgzZBsOcHpxMeLzmKkmcKO5A8th5Po9N2js6w4OaKiT5bnlGspPCXOQqM5iJkflaKohkuH8DnEfa5SXFWMyNnjYxMs4MAmE0oneTBzJ1K/SrM+D1JGREsKjbqknwck2eaYkttzGIZTaHnJgbJWEd1tWiQ0b7nOL6N75Mvvt0QkpMMOpizzsvxjWP9eTiRjbh/mUlCVWQPbehD25SWCygK93/kMGgfgOe01pJAyILm+MUtcbE+WjwDGxW082QJOAMyo7zTik8ENckQqYGpDF1VhXUYaTCr/w3tcNjs5VbTa+sGNvgvkNQr9BGtrJJC6jByUcYT+IYYYofJ0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LUUHMrI8A6BkFB/adOKQ5Kprjm7C1581az90FtYlXeo=;
 b=f0l/8m81cAx93zV1yVVo9y3s2287NOWxwmV6wAYaqqGpME2XdDDO+53BbE/todBEmmS+iokve3ywIm4CH1sey9T3luVrPQNq/INaML4gSmmlq2UrYq0MDnzhSPqxUcaG0CwDsTMydixEmOH3D1YOStf0ZYYUEwFgPWSKf/EPDWLewsl9lVE5c7dNzUYStnxVxr1jBEXs6o8BWenL/Z42nv/kTxNdN0uP0QQTfEWRgsT+U5R/omjgLwdMBg9e/CVS8hQkn1H+/2UfZeIkAg4CWT4RAGeV02/TdConDdq7odeDen6V29khdIq+CDN+T+mU2mB3dMKRh3ZGlfSbqYh6wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LUUHMrI8A6BkFB/adOKQ5Kprjm7C1581az90FtYlXeo=;
 b=HvtbQ7NCEvJ5NC3eAGbrKjy5Qk/De4eMS/yFLS4akejhh0HJo5Y8yJbz+VFnjKn0uGeWmhUTsKtWKREJpAzcxlHcdT87a2bgX7UyX9XURJ7ynI8BbXCSN9nsNSkFe684leSPnAqWxztPdZ6rKS022E1Olbbtv79D1JGU+CzOftQ=
Received: from VI1PR04MB4333.eurprd04.prod.outlook.com (52.134.122.155) by
 VI1PR04MB4190.eurprd04.prod.outlook.com (52.134.30.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.20; Tue, 6 Aug 2019 05:41:21 +0000
Received: from VI1PR04MB4333.eurprd04.prod.outlook.com
 ([fe80::694b:df36:f012:8216]) by VI1PR04MB4333.eurprd04.prod.outlook.com
 ([fe80::694b:df36:f012:8216%7]) with mapi id 15.20.2136.018; Tue, 6 Aug 2019
 05:41:21 +0000
From: Andy Tang <andy.tang@nxp.com>
To: Andy Tang <andy.tang@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: RE: [PATCH v3] arm64: dts: ls1028a: Add temperature sensor node
Thread-Topic: [PATCH v3] arm64: dts: ls1028a: Add temperature sensor node
Thread-Index: AQHVTBlco79tH1hnSkyw4irXLsL47KbtmsPw
Date: Tue, 6 Aug 2019 05:41:21 +0000
Message-ID: <VI1PR04MB43336E0A72DA69E6BA07EE77F3D50@VI1PR04MB4333.eurprd04.prod.outlook.com>
References: <20190806053004.36956-1-andy.tang@nxp.com>
In-Reply-To: <20190806053004.36956-1-andy.tang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=andy.tang@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ad521dfc-ea96-4223-6466-08d71a30b687
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB4190; 
x-ms-traffictypediagnostic: VI1PR04MB4190:
x-microsoft-antispam-prvs: <VI1PR04MB419066F408933D694B150006F3D50@VI1PR04MB4190.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0121F24F22
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(136003)(39860400002)(366004)(376002)(189003)(199004)(13464003)(66556008)(8676002)(7696005)(9686003)(76176011)(54906003)(316002)(81166006)(53936002)(2501003)(33656002)(3846002)(6116002)(99286004)(55016002)(68736007)(229853002)(186003)(110136005)(81156014)(26005)(478600001)(66066001)(8936002)(6436002)(25786009)(2906002)(66446008)(11346002)(305945005)(7736002)(14454004)(44832011)(446003)(4326008)(476003)(71190400001)(52536014)(102836004)(74316002)(86362001)(5660300002)(486006)(6246003)(6506007)(53546011)(71200400001)(76116006)(64756008)(256004)(66476007)(66946007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4190;
 H:VI1PR04MB4333.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0IO+Tbc0DyQXX22YYd5t0UQkfOxzubg9/g5dKcgK4ZDGb6aPLS/d1oJBmPC67cnl5YB5uHi+z02BGvR1gTP+mpY3JcMN2/1RaP8oF59B9OfBbAPQGm1aiMplF2DqECEUURNx6jlCcm6OrctN6GLQaJX4qWXCEcF0Gi+I1jcTFbWrYfMErTjmDN9l5FJOGcXgvx4f+mk17+3L674sN/vLzvmTOVwYvZAlYHpy3mabGee8uboqnGCK6mislWmfDNLGz3Qi/3XnFotwqu/Oe0MxYRj2K//M4WZf3cBHpqO1agEFz4UtVel61w4Ol3on2RR3wJVAjdp2SxiPcdQtNFbP7YZoklUMDDMV8FEVfjotpPrDUGgDL5/u0p97o0Jhu2LrSEhRZVS9YFogycg/oEcTerQ5PnTks5MJpDRNrKzm39M=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad521dfc-ea96-4223-6466-08d71a30b687
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2019 05:41:21.8913 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: andy.tang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4190
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_224125_511464_37C09F4A 
X-CRM114-Status: GOOD (  14.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.48 listed in list.dnswl.org]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UGxlYXNlIGlnbm9yZSB0aGlzIGVtYWlsLiBTb3JyeSBmb3Igc2VuZGluZyB0aGUgd3JvbmcgcGF0
Y2guDQoNCkJSLA0KQW5keQ0KDQoNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBG
cm9tOiBZdWFudGlhbiBUYW5nIDxhbmR5LnRhbmdAbnhwLmNvbT4NCj4gU2VudDogMjAxOcTqONTC
NsjVIDEzOjMwDQo+IFRvOiBzaGF3bmd1b0BrZXJuZWwub3JnDQo+IENjOiBMZW8gTGkgPGxlb3lh
bmcubGlAbnhwLmNvbT47IHJvYmgrZHRAa2VybmVsLm9yZzsNCj4gbWFyay5ydXRsYW5kQGFybS5j
b207IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsNCj4gZGV2aWNldHJlZUB2
Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IEFuZHkgVGFuZw0K
PiA8YW5keS50YW5nQG54cC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2M10gYXJtNjQ6IGR0czog
bHMxMDI4YTogQWRkIHRlbXBlcmF0dXJlIHNlbnNvciBub2RlDQo+IA0KPiBBZGQgbnhwIHNhNTYw
MDQgY2hpcCBub2RlIGZvciB0ZW1wZXJhdHVyZSBtb25pdG9yLg0KPiANCj4gU2lnbmVkLW9mZi1i
eTogWXVhbnRpYW4gVGFuZyA8YW5keS50YW5nQG54cC5jb20+DQo+IC0tLQ0KPiB2MzoNCj4gCS0g
c29ydCB0aGUgbm9kZSBpbiBpMmMgYWRkcmVzcw0KPiB2MjoNCj4gCS0gY2hhbmdlIHRoZSBub2Rl
IG5hbWUgYW5kIGFkZCB2Y2Mtc3VwcGx5DQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2Fs
ZS9mc2wtbHMxMDI4YS1xZHMuZHRzIHwgICAxNQ0KPiArKysrKysrKysrKysrKysNCj4gIGFyY2gv
YXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLXJkYi5kdHMgfCAgIDE1DQo+ICsr
KysrKysrKysrKysrKw0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAzMCBpbnNlcnRpb25zKCspLCAwIGRl
bGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNj
YWxlL2ZzbC1sczEwMjhhLXFkcy5kdHMNCj4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2Fs
ZS9mc2wtbHMxMDI4YS1xZHMuZHRzDQo+IGluZGV4IGIzNTkwNjguLjk2MGRhZjIgMTAwNjQ0DQo+
IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLXFkcy5kdHMN
Cj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEtcWRzLmR0
cw0KPiBAQCAtNDcsNiArNDcsMTUgQEANCj4gIAkJcmVndWxhdG9yLWFsd2F5cy1vbjsNCj4gIAl9
Ow0KPiANCj4gKwlzYl8zdjM6IHJlZ3VsYXRvci1zYjN2MyB7DQo+ICsJCWNvbXBhdGlibGUgPSAi
cmVndWxhdG9yLWZpeGVkIjsNCj4gKwkJcmVndWxhdG9yLW5hbWUgPSAiM3YzX3ZidXMiOw0KPiAr
CQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwzMzAwMDAwPjsNCj4gKwkJcmVndWxhdG9yLW1h
eC1taWNyb3ZvbHQgPSA8MzMwMDAwMD47DQo+ICsJCXJlZ3VsYXRvci1ib290LW9uOw0KPiArCQly
ZWd1bGF0b3ItYWx3YXlzLW9uOw0KPiArCX07DQo+ICsNCj4gIAlzb3VuZCB7DQo+ICAJCWNvbXBh
dGlibGUgPSAic2ltcGxlLWF1ZGlvLWNhcmQiOw0KPiAgCQlzaW1wbGUtYXVkaW8tY2FyZCxmb3Jt
YXQgPSAiaTJzIjsNCj4gQEAgLTExNyw2ICsxMjYsMTIgQEANCj4gIAkJCSNzaXplLWNlbGxzID0g
PDA+Ow0KPiAgCQkJcmVnID0gPDB4Mz47DQo+IA0KPiArCQkJdGVtcGVyYXR1cmUtc2Vuc29yQDRj
IHsNCj4gKwkJCQljb21wYXRpYmxlID0gIm54cCxzYTU2MDA0IjsNCj4gKwkJCQlyZWcgPSA8MHg0
Yz47DQo+ICsJCQkJdmNjLXN1cHBseSA9IDwmc2JfM3YzPjsNCj4gKwkJCX07DQo+ICsNCj4gIAkJ
CXJ0Y0A1MSB7DQo+ICAJCQkJY29tcGF0aWJsZSA9ICJueHAscGNmMjEyOSI7DQo+ICAJCQkJcmVn
ID0gPDB4NTE+Ow0KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUv
ZnNsLWxzMTAyOGEtcmRiLmR0cw0KPiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2Zz
bC1sczEwMjhhLXJkYi5kdHMNCj4gaW5kZXggZjljMjcyZi4uNmEyMjQyMyAxMDA2NDQNCj4gLS0t
IGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEtcmRiLmR0cw0KPiAr
KysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4YS1yZGIuZHRzDQo+
IEBAIC00Myw2ICs0MywxNSBAQA0KPiAgCQlyZWd1bGF0b3ItYWx3YXlzLW9uOw0KPiAgCX07DQo+
IA0KPiArCXNiXzN2MzogcmVndWxhdG9yLXNiM3YzIHsNCj4gKwkJY29tcGF0aWJsZSA9ICJyZWd1
bGF0b3ItZml4ZWQiOw0KPiArCQlyZWd1bGF0b3ItbmFtZSA9ICIzdjNfdmJ1cyI7DQo+ICsJCXJl
Z3VsYXRvci1taW4tbWljcm92b2x0ID0gPDMzMDAwMDA+Ow0KPiArCQlyZWd1bGF0b3ItbWF4LW1p
Y3Jvdm9sdCA9IDwzMzAwMDAwPjsNCj4gKwkJcmVndWxhdG9yLWJvb3Qtb247DQo+ICsJCXJlZ3Vs
YXRvci1hbHdheXMtb247DQo+ICsJfTsNCj4gKw0KPiAgCXNvdW5kIHsNCj4gIAkJY29tcGF0aWJs
ZSA9ICJzaW1wbGUtYXVkaW8tY2FyZCI7DQo+ICAJCXNpbXBsZS1hdWRpby1jYXJkLGZvcm1hdCA9
ICJpMnMiOw0KPiBAQCAtMTE1LDYgKzEyNCwxMiBAQA0KPiAgCQkJI3NpemUtY2VsbHMgPSA8MD47
DQo+ICAJCQlyZWcgPSA8MHgzPjsNCj4gDQo+ICsJCQl0ZW1wZXJhdHVyZS1zZW5zb3JANGMgew0K
PiArCQkJCWNvbXBhdGlibGUgPSAibnhwLHNhNTYwMDQiOw0KPiArCQkJCXJlZyA9IDwweDRjPjsN
Cj4gKwkJCQl2Y2Mtc3VwcGx5ID0gPCZzYl8zdjM+Ow0KPiArCQkJfTsNCj4gKw0KPiAgCQkJcnRj
QDUxIHsNCj4gIAkJCQljb21wYXRpYmxlID0gIm54cCxwY2YyMTI5IjsNCj4gIAkJCQlyZWcgPSA8
MHg1MT47DQo+IC0tDQo+IDEuNy4xDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
