Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D9817879
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 13:38:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h0Ky3FdEEaDD5OY6Ku/xsTHhCj2XrPJe+ciNAUsd4JE=; b=JKLrtnOMQBnBPV
	avLXhHCsd1R2qnvRY6wXRNZIR816zZYe79q3oMeWBhLBlgvsfGHP5DWo6embsP6kJu7w6HTxh5QE8
	lEk9VOh+7CCBzmo91kj5oq2ylCxp4GK6v5CBntXxNgMUPCSBtyu2Jhu7W5Q4bvikKwbJSWnET8hP3
	9LUJe4MPn2SJ9H6ZLVvDe7pcLzgr+xjNYWy/PKDNmPSBeHczVlFvElSObV47cfDRosDgcf7fupnm6
	DHkbc2BGDgNiMyAqQLJLJK2K0J7eQ7sHhfa/dkaZSkw+wxuM+hUKOoJ521+tLAqUg5/kqOycI8o/O
	jqeimxnAjZkA90WLTRmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOKuF-0000A6-80; Wed, 08 May 2019 11:38:39 +0000
Received: from mail-eopbgr30064.outbound.protection.outlook.com ([40.107.3.64]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOKu7-00009i-1t
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 11:38:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TEt+M9xP1i39jsmBfSom1Ley+AAJPKbAAK6zv5Fr1pU=;
 b=BHekKvSS1Gy2PmP2K7rWHf/GsY0krEPRiLPMXdhHEnC+b2jkquerVhUaPJi3+gHW3glskovU8eLNLR/taaj3ztG5V4LqxPzi4mZQ2SXQM8TkPNu7c0Haf+YBjbpXlBy13IQvQS18urKlrjehDdmVUjIqBYKjrOv4RF25CI1QtTg=
Received: from AM0PR04MB4353.eurprd04.prod.outlook.com (52.134.125.146) by
 AM0PR04MB5011.eurprd04.prod.outlook.com (20.177.40.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Wed, 8 May 2019 11:38:27 +0000
Received: from AM0PR04MB4353.eurprd04.prod.outlook.com
 ([fe80::e4fe:fbdc:448b:c8a6]) by AM0PR04MB4353.eurprd04.prod.outlook.com
 ([fe80::e4fe:fbdc:448b:c8a6%7]) with mapi id 15.20.1856.012; Wed, 8 May 2019
 11:38:27 +0000
From: Chuanhua Han <chuanhua.han@nxp.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: RE: [EXT] Re: [PATCH 2/2] arm64: dts: fsl: ls1046a: Add the guts node
 in dts
Thread-Topic: [EXT] Re: [PATCH 2/2] arm64: dts: fsl: ls1046a: Add the guts
 node in dts
Thread-Index: AQHU/w+WdcCQP8nmx0uhj1EM4V4JRKZdwAKAgANl88A=
Date: Wed, 8 May 2019 11:38:27 +0000
Message-ID: <AM0PR04MB4353FFEB317766E2C500696D97320@AM0PR04MB4353.eurprd04.prod.outlook.com>
References: <20190430044719.30720-1-chuanhua.han@nxp.com>
 <20190430044719.30720-2-chuanhua.han@nxp.com>
 <20190506074106.eqa7xhktn2vlmtio@pengutronix.de>
In-Reply-To: <20190506074106.eqa7xhktn2vlmtio@pengutronix.de>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=chuanhua.han@nxp.com; 
x-originating-ip: [92.121.36.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dede83c9-20aa-45e8-2963-08d6d3a9afea
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5011; 
x-ms-traffictypediagnostic: AM0PR04MB5011:
x-ms-exchange-purlcount: 1
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <AM0PR04MB50115260FBEB668E23C84FEF97320@AM0PR04MB5011.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 0031A0FFAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(136003)(396003)(376002)(39860400002)(189003)(199004)(13464003)(6306002)(4326008)(99286004)(66446008)(55016002)(86362001)(476003)(53936002)(486006)(5660300002)(6506007)(53546011)(7416002)(9686003)(7696005)(6246003)(102836004)(3846002)(6116002)(66946007)(64756008)(66556008)(25786009)(54906003)(73956011)(66476007)(76116006)(76176011)(14454004)(74316002)(316002)(44832011)(52536014)(33656002)(305945005)(66066001)(229853002)(446003)(186003)(68736007)(2906002)(11346002)(966005)(478600001)(45080400002)(26005)(6916009)(8676002)(71200400001)(71190400001)(81156014)(81166006)(8936002)(7736002)(256004)(6436002)(14444005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5011;
 H:AM0PR04MB4353.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: agnKztkODpIm6t/bnNAXwhuXfyeCHSeCuCcjRmTUYLPQHho9ZaNDyyRXbBB1sHTE1zaP6PTekqr0yy2Jkt8XjbVj7obUPQCq/20jamJgHmbO/9qwemnRDtuGVJVkIWDzSWCaX8DTgBRMLib/hsNGMmTYslSi37FAO8t2ULEPz3A7bgSV7bogxY1DbiLMqESoS4e9fkGHwqg7R+GPl/WE18ATX2UlEUW/wVgOaILh+/vK53GhSLFkU2eoSzev6u0fn8+rx2eWb+2KysNZlPUGIaF+e7tdIqp4XoJzx7YpCGz/M2sjNN7Bh85fZ/Ene2/JlCc9xnv08pKUJ14FQyFidWCyUFB8aVaJa+xM3cfugWoQeEaSLNIfF7APtWoShFEkV72e8x+nqck9aPkNmixhtPTOzf+nJFvRgB/8qdpkj1c=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dede83c9-20aa-45e8-2963-08d6d3a9afea
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2019 11:38:27.2697 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5011
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_043831_103348_39395C19 
X-CRM114-Status: GOOD (  18.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Sumit Batra <sumit.batra@nxp.com>, "eha@deif.com" <eha@deif.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>,
 "wsa+renesas@sang-engineering.com" <wsa+renesas@sang-engineering.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "linux@rempel-privat.de" <linux@rempel-privat.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "peda@axentia.se" <peda@axentia.se>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU2FzY2hhIEhhdWVyIDxz
LmhhdWVyQHBlbmd1dHJvbml4LmRlPg0KPiBTZW50OiAyMDE5xOo11MI2yNUgMTU6NDENCj4gVG86
IENodWFuaHVhIEhhbiA8Y2h1YW5odWEuaGFuQG54cC5jb20+DQo+IENjOiBzaGF3bmd1b0BrZXJu
ZWwub3JnOyBMZW8gTGkgPGxlb3lhbmcubGlAbnhwLmNvbT47IHJvYmgrZHRAa2VybmVsLm9yZzsN
Cj4gbWFyay5ydXRsYW5kQGFybS5jb207IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7DQo+
IGxpbnV4LWkyY0B2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZzsNCj4gZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7IGZlc3RldmFtQGdtYWlsLmNv
bTsgZGwtbGludXgtaW14DQo+IDxsaW51eC1pbXhAbnhwLmNvbT47IHdzYStyZW5lc2FzQHNhbmct
ZW5naW5lZXJpbmcuY29tOw0KPiB1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU7IGVoYUBk
ZWlmLmNvbTsgbGludXhAcmVtcGVsLXByaXZhdC5kZTsNCj4gbC5zdGFjaEBwZW5ndXRyb25peC5k
ZTsgcGVkYUBheGVudGlhLnNlOyBTdW1pdCBCYXRyYQ0KPiA8c3VtaXQuYmF0cmFAbnhwLmNvbT4N
Cj4gU3ViamVjdDogW0VYVF0gUmU6IFtQQVRDSCAyLzJdIGFybTY0OiBkdHM6IGZzbDogbHMxMDQ2
YTogQWRkIHRoZSBndXRzIG5vZGUgaW4NCj4gZHRzDQo+IA0KPiBDYXV0aW9uOiBFWFQgRW1haWwN
Cj4gDQo+IE9uIFR1ZSwgQXByIDMwLCAyMDE5IGF0IDEyOjQ3OjE5UE0gKzA4MDAsIENodWFuaHVh
IEhhbiB3cm90ZToNCj4gPiBGb3IgTlhQIGxzMTA0NmEgU29DLCB0aGUgaTJjIGNsb2NrIG5lZWRz
IHRvIGJlIGNvbmZpZ3VyZWQgd2l0aCB0aGUNCj4gPiBhcHByb3ByaWF0ZSBiaXQgb2YgUkNXLCBz
byB3ZSBhZGQgdGhlIGd1dHMgbm9kZSAoR1VUUy9EQ0ZHIGdsb2JhbA0KPiA+IHV0aWxpdGllcyBi
bG9jaykgZm9yIHRoZSBkcml2ZXIgdG8gcmVhZC4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFN1
bWl0IEJhdHJhIDxzdW1pdC5iYXRyYUBueHAuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IENodWFu
aHVhIEhhbiA8Y2h1YW5odWEuaGFuQG54cC5jb20+DQo+ID4gLS0tDQo+ID4gIGFyY2gvYXJtNjQv
Ym9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwNDZhLmR0c2kgfCA1ICsrKysrDQo+ID4gIDEgZmls
ZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDQ2YS5kdHNpDQo+ID4gYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDQ2YS5kdHNpDQo+ID4gaW5kZXggMzczMzEwZTRj
MGVhLi5mODg1OTlkZjE4YmIgMTAwNjQ0DQo+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9m
cmVlc2NhbGUvZnNsLWxzMTA0NmEuZHRzaQ0KPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
ZnJlZXNjYWxlL2ZzbC1sczEwNDZhLmR0c2kNCj4gPiBAQCAtMjA1LDYgKzIwNSwxMSBAQA0KPiA+
ICAgICAgICAgICAgICAgICAgICAgICBzdGF0dXMgPSAiZGlzYWJsZWQiOw0KPiA+ICAgICAgICAg
ICAgICAgfTsNCj4gPg0KPiA+ICsgICAgICAgICAgICAgZ3V0czogZ2xvYmFsLXV0aWxpdGllc0Ax
ZWUwMDAwIHsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJmc2wscW9y
aXEtZGV2aWNlLWNvbmZpZyI7DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwweDAg
MHgxZWUwMDAwIDB4MCAweDEwMDA+Ow0KPiA+ICsgICAgICAgICAgICAgfTsNCj4gDQo+IEFjY29y
ZGluZyB0byBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc29jL2ZzbC9ndXRzLnR4
dCB3ZSBoYXZlIHRoZQ0KPiBmb2xsb3dpbmcgY29tcGF0aWJsZXM6DQo+IA0KPiAgICAgICAgICJm
c2wscW9yaXEtZGV2aWNlLWNvbmZpZy0xLjAiDQo+ICAgICAgICAgImZzbCxxb3JpcS1kZXZpY2Ut
Y29uZmlnLTIuMCINCj4gICAgICAgICAiZnNsLDxjaGlwPi1kZXZpY2UtY29uZmlnIg0KPiAgICAg
ICAgICJmc2wsPGNoaXA+LWd1dHMiDQo+IA0KPiAiZnNsLHFvcmlxLWRldmljZS1jb25maWciIGlz
IG5vbmUgb2YgdGhlbSBhbmQgSSBkb24ndCB0aGluayB5b3Ugc2hvdWxkIGdpdmUgdGhpcw0KPiBT
b0Mgc3BlY2lmaWMgdGhpbmcgYSBnZW5lcmljIGNvbXBhdGlibGUuDQo+ICJmc2wsbHMxMDQ2YS1k
ZXZpY2UtY29uZmlnIiB3b3VsZCBiZSBiZXR0ZXIuDQo+IA0KWWVzLCB5b3Ugc2hvdWxkIGJlIHJp
Z2h0DQo+IFNhc2NoYQ0KPiANCj4gDQo+IC0tDQo+IFBlbmd1dHJvbml4IGUuSy4gICAgICAgICAg
ICAgICAgICAgICAgICAgICB8DQo+IHwNCj4gSW5kdXN0cmlhbCBMaW51eCBTb2x1dGlvbnMgICAg
ICAgICAgICAgICAgIHwNCj4gaHR0cHM6Ly9ldXIwMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRs
b29rLmNvbS8/dXJsPWh0dHAlM0ElMkYlMkZ3d3cucGUNCj4gbmd1dHJvbml4LmRlJTJGJmFtcDtk
YXRhPTAyJTdDMDElN0NjaHVhbmh1YS5oYW4lNDBueHAuY29tJTdDMTM5DQo+IDIzZmUxN2ExZDQ2
ZGFkN2U3MDhkNmQxZjYzZjQxJTdDNjg2ZWExZDNiYzJiNGM2ZmE5MmNkOTljNWMzMDE2MzUNCj4g
JTdDMCU3QzAlN0M2MzY5MjcyNTI4ODU0NTgzNDQmYW1wO3NkYXRhPVJMZURpQ3RMSlJZek9aUTRQ
OENOOGcNCj4gaFRVR05GJTJGS0ElMkZUJTJGdExTQ3JnRWFFJTNEJmFtcDtyZXNlcnZlZD0wICB8
DQo+IFBlaW5lciBTdHIuIDYtOCwgMzExMzcgSGlsZGVzaGVpbSwgR2VybWFueSB8IFBob25lOiAr
NDktNTEyMS0yMDY5MTctMA0KPiB8DQo+IEFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2
ICAgICAgICAgICB8IEZheDoNCj4gKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfA0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
