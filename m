Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 070D3BC3BF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 10:05:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7mPFTJ5ef0RT7sFnEcOot3Ci51pTXBP+Uek1zzVgtZI=; b=Yhg/DnnwjvzDlO
	pmCAB5TQ5eSO0w9u7LQHMzVFAVqDks0jcma1RBE+2ak3PzEtGhszY3AQBQ20BryqnxHhxvXhyWkxw
	A3XeLTgkgOk+1Rp9NjsY1w0Pls/Z61aZFFEzbDoTD12T2mlt922skCsjulTWbsEydgIBx/5De08Eh
	hLzPPm8cFhWSeJOcJGrUBAwcnBQAcFEsqWvxcIX2Xf5a8317Mkz1f9E2SW1pFL5xLo42RdbT/lsHN
	lhdiKtfCNL039v3xxd+zXcNAW+kImypOGzwWylV0/2lq3s3y2WiXIw/QnLVeSSInYqKLc4eoa1GXh
	kNCkBUCJiMvShnXcat7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCfoi-0005BF-T1; Tue, 24 Sep 2019 08:05:01 +0000
Received: from mail-eopbgr50087.outbound.protection.outlook.com ([40.107.5.87]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCfkT-0001pE-7u
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 08:00:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jlgluQ9lJTCk+TqbPbklsFa4Cpdmh5CsZVaWrEAw34JIt4w9HwVizyEU8iIE791sPFalBoPmPxoNgHfeIUbX4R9uZm+a0Qb5Fgzs3g0xeXKJmVwHL7Nqa4dERKwdUfN66bVfGwB+cxgf6ISbOQipUaA0xT/nsHQYBCnffEOd50swChKjfT5ltvta4ArN27sb30b0ich4Tki+bPvzMfNchK0UjjoAMNPxa67L0MGr+eBU+EC76eD8veCLYplgmP/Ia9YQOrz+SwWkVseZqD24ywUZIY2MBawPF/xWuv1ATTzQiBI5svZgNQUeLoIgLMCqIxEw5jvv8Bto2lRDbsPofw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a+RIJHxSOSe7Ji+5YWEI1qe0x5WDznPFfYstOU7ncQI=;
 b=jiLw/NxQDI9qYJIaQH6TqIE1puOupNx87TF1Nm1wfown1BKs7YoqSjVrAU53/0pp1wXwW5oCZccrEO+BE4/jP+TuNRrPRB2PT9/6QENS/zsTGeJ+LAhTpoCr+selF0Jv6sLfrPHiWHgAbMUY03KxBb6DwSxIxgqRzSrKofbSJzJoonlFWvq91IQ6Rkg0CS9oJcSGTvYUL16ZZ6Ct1Ym2tSNZKh0uTa8g/H2WHjYNUlcRTK5lffkbg6mX9jzQwRC4Yd/SR5Ex66yB+7o3re+w/2mV1uW13TaV8PmcnNtCHJW93o+vWXoLYmL/1MrbVNPMO/57NOpT28MSPIPbu83YLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a+RIJHxSOSe7Ji+5YWEI1qe0x5WDznPFfYstOU7ncQI=;
 b=LV4m7LM1oQV+Za9g1RVFPV1TbHXA8F9BCLS90AzsUhzBH98YGR1WFjo63GtXOTApHje9S/0YsapjgSW78W9/ye5MnJvHBQqTJtR1zCzlDP3v8vdbz6H7kU8cvHVlmExRRJs15KrGrwZH47OAdx10B3/+H/wWg756PM2PFjisPYw=
Received: from VI1PR04MB4333.eurprd04.prod.outlook.com (52.134.122.155) by
 VI1PR04MB6799.eurprd04.prod.outlook.com (10.255.196.79) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.18; Tue, 24 Sep 2019 08:00:30 +0000
Received: from VI1PR04MB4333.eurprd04.prod.outlook.com
 ([fe80::a587:f9f1:d9ae:8c18]) by VI1PR04MB4333.eurprd04.prod.outlook.com
 ([fe80::a587:f9f1:d9ae:8c18%3]) with mapi id 15.20.2284.023; Tue, 24 Sep 2019
 08:00:30 +0000
From: Andy Tang <andy.tang@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [EXT] Re: [PATCH] arm64: dts: ls1028a: fix a compatible issue
Thread-Topic: [EXT] Re: [PATCH] arm64: dts: ls1028a: fix a compatible issue
Thread-Index: AQHVXj2gf66yTm0uV028Zt2Y/o8KBKcqj6IAgBAP3aA=
Date: Tue, 24 Sep 2019 08:00:29 +0000
Message-ID: <VI1PR04MB4333F1CF5DF521678575D61EF3840@VI1PR04MB4333.eurprd04.prod.outlook.com>
References: <20190829073439.13069-1-andy.tang@nxp.com>
 <20190914024231.GB3425@dragon>
In-Reply-To: <20190914024231.GB3425@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=andy.tang@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c558211e-4daa-4742-a506-08d740c544ae
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB6799; 
x-ms-traffictypediagnostic: VI1PR04MB6799:|VI1PR04MB6799:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB67995EDCE438931E623CF156F3840@VI1PR04MB6799.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2399;
x-forefront-prvs: 0170DAF08C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(376002)(346002)(136003)(366004)(13464003)(189003)(199004)(64756008)(4326008)(99286004)(53546011)(6506007)(81156014)(26005)(102836004)(81166006)(8676002)(7736002)(66476007)(74316002)(305945005)(14444005)(256004)(6116002)(66556008)(86362001)(8936002)(44832011)(2906002)(3846002)(66066001)(66946007)(486006)(76176011)(478600001)(9686003)(186003)(14454004)(6436002)(446003)(476003)(7696005)(71190400001)(11346002)(6916009)(71200400001)(229853002)(55016002)(6246003)(54906003)(25786009)(5660300002)(33656002)(76116006)(52536014)(66446008)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6799;
 H:VI1PR04MB4333.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: AtCqYyHOZmjSlw+4Hlu+erTib1E/Bcy7XcWGLrXXnvFcP7AbBJeECVMs218IE5SU+nBxUgH8MwPJWtu8aZiG/yg1txxKW/Qx77eDpTbu6MhAaTziOqPJAc1iriEMAdrnmmXa4JF8Gq/mDorMQqx8NzsNLFZx/2IhZxXcyImndM+hBeP8EqHZc+LEHlt5+Ieuooc3ULoCcilV48EiL/AE4mdwQI7AJG5FC0pwcNM5oIFsSmpnWz725YwHxITH85LAW4b2zpU92m1Xwz6KN7v4M3Txudlg3IusgDL+Sh9LaBXM+gaBgcmI7J6jJgk4AMy0yH/j6h/da5ov3zPxyq2bzmwLyZARLCnsPk2YpH7NSEUlKi+uARlGF38TBtHmAIEzwle0owmoECpivZR4TRwceIfXp9Yjvg5vry2natsqu7M=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c558211e-4daa-4742-a506-08d740c544ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2019 08:00:30.0296 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4bfwsRp01cVR8wsoi5NeeUX9g1BcBoX9o5g0yI5RJbLqZzJ/e0wK8StaRMlU9qfc7WRK10LV7TK4cHYiOuO4fA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6799
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_010037_481636_B30D8FE9 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.87 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Leo Li <leoyang.li@nxp.com>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU2hhd24sDQoNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBTaGF3
biBHdW8gPHNoYXduZ3VvQGtlcm5lbC5vcmc+DQo+IFNlbnQ6IDIwMTnE6jnUwjE0yNUgMTA6NDMN
Cj4gVG86IEFuZHkgVGFuZyA8YW5keS50YW5nQG54cC5jb20+DQo+IENjOiBMZW8gTGkgPGxlb3lh
bmcubGlAbnhwLmNvbT47IHJvYmgrZHRAa2VybmVsLm9yZzsNCj4gbWFyay5ydXRsYW5kQGFybS5j
b207IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsNCj4gZGV2aWNldHJlZUB2
Z2VyLmtlcm5lbC5vcmcNCj4gU3ViamVjdDogW0VYVF0gUmU6IFtQQVRDSF0gYXJtNjQ6IGR0czog
bHMxMDI4YTogZml4IGEgY29tcGF0aWJsZSBpc3N1ZQ0KPiANCj4gQ2F1dGlvbjogRVhUIEVtYWls
DQo+IA0KPiBPbiBUaHUsIEF1ZyAyOSwgMjAxOSBhdCAwMzozNDozOVBNICswODAwLCBZdWFudGlh
biBUYW5nIHdyb3RlOg0KPiA+IFRoZSBJMkMgbXVsdGlwbGV4ZXIgdXNlZCBvbiBsczEwMjhhcWRz
IGlzIFBDQTk1NDcsIG5vdCBQQ0E5ODQ3Lg0KPiA+IFNvIGNvcnJlY3QgaXQuDQo+IA0KPiBDYW4g
ZWxhYm9yYXRlIHRoZSBmaXggYSBsaXR0bGUgYml0LCBzYXlpbmcgd2hhdCdzIHRoZSBpc3N1ZSBl
eGFjdGx5IHdpdGggdXNpbmcNCj4gdGhhdCBpbmNvcnJlY3QgY29tcGF0aWJsZT8NCk9rLg0KDQo+
IA0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogWXVhbnRpYW4gVGFuZyA8YW5keS50YW5nQG54cC5j
b20+DQo+IA0KPiBEbyB3ZSBuZWVkIGEgZml4IHRhZz8NCldoYXQgZG9lcyAiZml4IHRhZyIgbWVh
bj8gDQoNCkJSLA0KQW5keQ0KPiANCj4gU2hhd24NCj4gDQo+ID4gLS0tDQo+ID4gIGFyY2gvYXJt
NjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLXFkcy5kdHMgfCAyICstDQo+ID4gIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiA+DQo+ID4gZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLXFkcy5k
dHMNCj4gPiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLXFkcy5k
dHMNCj4gPiBpbmRleCA1ZTE0ZTVhMTk3NDQuLmY1ZGE5ZThiMGQ5ZCAxMDA2NDQNCj4gPiAtLS0g
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4YS1xZHMuZHRzDQo+ID4g
KysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEtcWRzLmR0cw0K
PiA+IEBAIC0xMDcsNyArMTA3LDcgQEANCj4gPiAgICAgICBzdGF0dXMgPSAib2theSI7DQo+ID4N
Cj4gPiAgICAgICBpMmMtbXV4QDc3IHsNCj4gPiAtICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAi
bnhwLHBjYTk4NDciOw0KPiA+ICsgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJueHAscGNhOTU0
NyI7DQo+ID4gICAgICAgICAgICAgICByZWcgPSA8MHg3Nz47DQo+ID4gICAgICAgICAgICAgICAj
YWRkcmVzcy1jZWxscyA9IDwxPjsNCj4gPiAgICAgICAgICAgICAgICNzaXplLWNlbGxzID0gPDA+
Ow0KPiA+IC0tDQo+ID4gMi4xNy4xDQo+ID4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
