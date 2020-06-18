Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56FD41FE94B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 05:18:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Gi9xYfSVi7l68jHMuTGD6QrmhMYkPBIYqtTMhgsncw=; b=P92GeqUKxKPd8H
	1F6x8sR65N3P/NnynyWa4UopYXCg9OtNEIZbQ+A9LXvRJEmrfXqM352AYsPG4DCN2xA5t1fapOZv5
	9DoN7GkQ53yHKI930FsqNlbL8T5aU8t8V4GAKMduugPAxtOMdghVz+W16zW8/70tkvVDuCDqlSRcB
	+2k2tbZBuZIrJay0odvdeHxjqsfCoKWfkwCPo64uKP99R+4r+Xbd4BsvC8ib6IQNN5HcqKA4rIBtr
	wYjnCk1E/8qEuvzKo9KKI1vgGbtaAckMTXy+nWQw499Wa1Sy99bdQp7DNE6je7p/TsulDFuboEXJ/
	imDdTOEbN2HR9noPjdaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jll4c-0003OX-Dh; Thu, 18 Jun 2020 03:18:42 +0000
Received: from mail-eopbgr20049.outbound.protection.outlook.com ([40.107.2.49]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jll4Q-0003Nq-Al
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 03:18:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eRXSaIun659Mqu/8yrd4lPo+oLUxOE8uiWpzdtWvON53HEedw8fa8Ta6bsJiLn8S/jjb74UiHAgdkFbBAjdJO9K/usFEedhIiIfRg1gkXAjlwZpH2E1TPj7JbSXRN4pk3wzdC41FnCByS3YzuLaTdsnfVwwUPT/W8JJyihg2O1y/mBtopoK/PFxQmgo9laqNQs64npQN3U6fgR2KilZmHsbx2OByd/PiAr9j+xRiVWQz7QLTY54vQvSHepyxkiMVQg8uI4w0XvPuzoVo6ohl87sBqcXlPl+T6MdlSouFz0foWJ24dWBJZax9gHgpzx1eMTs0ykF0/nuNk6iWJKKsKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nd52zajPmgci25X+liHB6P8FGOgnqOemU9ZCprF/ePs=;
 b=kv08jYD+8StbKT/khkfigYud2mbr7hVRe/bMi36pCJz4gSH01aZc27qJ/QLWCziOtEn5wKb3/4RT7SW5/Zv7ZXgG8wRLCRmTC0sLN9up0NE39ZP+YMkO6fcBmQAv4OtkByemVgtgCXCqb96vxh/j+acHRcntv2EH4I9aovNZS0YV6zpbqFRaKWxD+ezYvbc+JQEQQXuaYbOITu2zZKLXiVWGnSKF2RdHZDbNnogWJd3y+zJeLtWao9zSjhKcHdNZCcwuSMR8Ri7l8Q2IQiIKGDCGs+MMqo9V2vFcM+xjalGN04IFELeIahuPyWkqM2LZhhXEt2tFrCaEBgyHiV8VJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nd52zajPmgci25X+liHB6P8FGOgnqOemU9ZCprF/ePs=;
 b=DOOlkYwmJ7cwo1yTwO3/gqGVeklxo8EpJu3sM3/tO5DTF/OYligQy8MiryptlKrKIbzMLrpr4iFrG3Fk4VzA8BbLG2O41JG2Sx4ae6Ic4A91Vwq2Ta0iw6mA43k1jXfszDcKdfiguCPxcyBlssop9EhPShZMrGRuy9v2eanKJu4=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3867.eurprd04.prod.outlook.com (2603:10a6:8:3::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18; Thu, 18 Jun
 2020 03:18:26 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3%6]) with mapi id 15.20.3109.021; Thu, 18 Jun 2020
 03:18:26 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "linux@armlinux.org.uk"
 <linux@armlinux.org.uk>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "oleksandr.suvorov@toradex.com"
 <oleksandr.suvorov@toradex.com>, Stefan Agner <stefan.agner@toradex.com>,
 "arnd@arndb.de" <arnd@arndb.de>, Abel Vesa <abel.vesa@nxp.com>, Peng Fan
 <peng.fan@nxp.com>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "allison@lohutok.net" <allison@lohutok.net>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>, "info@metux.net" <info@metux.net>, Leonard
 Crestez <leonard.crestez@nxp.com>, Andy Duan <fugang.duan@nxp.com>, Daniel
 Baluta <daniel.baluta@nxp.com>, "yuehaibing@huawei.com"
 <yuehaibing@huawei.com>, "sfr@canb.auug.org.au" <sfr@canb.auug.org.au>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>
Subject: RE: [PATCH V2 2/9] ARM: imx: Select MXC_CLK for ARCH_MXC
Thread-Topic: [PATCH V2 2/9] ARM: imx: Select MXC_CLK for ARCH_MXC
Thread-Index: AQHWPjGj2zNwfnTiD0imGsOupBSBz6jcqXKAgAAhTUCAAPR9AIAAASwA
Date: Thu, 18 Jun 2020 03:18:25 +0000
Message-ID: <DB3PR0402MB3916B3474CF0014B490C78BBF59B0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1591687933-19495-1-git-send-email-Anson.Huang@nxp.com>
 <1591687933-19495-3-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB4966F4A5E0276AEDB5605260809A0@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB3PR0402MB39160682846B99E0A3762AF1F59A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <AM6PR04MB496647CBE140DFF73DCBBEED809B0@AM6PR04MB4966.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB496647CBE140DFF73DCBBEED809B0@AM6PR04MB4966.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 160eee72-fa1f-48f1-4836-08d8133643f9
x-ms-traffictypediagnostic: DB3PR0402MB3867:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB386763492390FD8C1893FF46F59B0@DB3PR0402MB3867.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0438F90F17
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1BHbGOOmF5smZu9HmFZCVTH07TbW2QGYUCnOHwKEbsIctCF3G2O89CSuvidsq1vraaF/B5DbXoywyCS7S/SgXGni41KaXrx8HzUK+O2ihf0oe4naNsm8PrssKndHOKgQ0doxev5OIm+/ubQmL8ZH8WQxZlK1YEEd96NiGcZn3V1sAPQDF7KVBAn8MaiCT+8vvRmW2rMnJxWBnO78m1qXjIaIQRSupYyWnMdyTRHKy+HukAPNVvf239ZNrZoWG+TvfEFSD5OuALqu6ZYHEEUeAjoRF0x5VEjAtrzwZsQAwdddkobLKXHDBreQoL/S54tTAUyA+7hXCAixRBLyvBWdwzrtassa+Gk6obAk28Rj1FzvSlAPazibbHlY2ZjDxwbV19La9UioEtZ/QonU3bm55g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(136003)(376002)(39860400002)(396003)(346002)(64756008)(66446008)(86362001)(66476007)(478600001)(66556008)(4326008)(71200400001)(66946007)(76116006)(9686003)(52536014)(5660300002)(55016002)(7416002)(33656002)(186003)(110136005)(6506007)(53546011)(316002)(7696005)(2906002)(83380400001)(8676002)(44832011)(8936002)(26005)(21314003)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: N2hTIfTdl/1E3q/1uFv3K+W6VieMlxajktfKXcJ3fgGB5Y4Taoky3ccuQC/Q+Pa+T4hYe7yITxf8Vt7hIDQxf0yHZFFaWXw236aq/0dtFKCY1o00N7B8qEJtu71+FZqyWIA6iUbnf/rHewJlPaUwbeITzUf1dGOysRNyjiVvDVemaXwOHXhBnNvhlsqjsrCdLiSBqdLhPwjbi3PzxTvr1foKakIvnAyjNEDpN5+c7bsaPGeevMwfliJIKF0zryjjB37CggPAE2aLAotdsFojdO3jIEkUBLlz++x/08ZFtHAamHVABduiLti5oNZQg4AcJXcI2vxDhlTfyMBbbvBBKm0s+vkigPGL/soW5/hVmBZfDA584ZM4BsS2nGIZb7f1o+cwmvVlGowsucVFEVvRzOhCKGVcPoaiY4j9Vvz4BbvjyP0uwMT4MxwyzWwb+yrBDy+tjEgGrCUKwDq+0FPzKIVTucBzM0MD5EasCZvLlyU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 160eee72-fa1f-48f1-4836-08d8133643f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2020 03:18:26.0188 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gn0sO6X5OGfcxrVBmDyDmoeG7UL/LjjytKetdlWNAAji4tSdWWqUlv146pE5QovnAhiG2UYkU5DuRJljkekBOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3867
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_201830_375234_8B744106 
X-CRM114-Status: GOOD (  19.01  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.2.49 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.2.49 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQWlzaGVuZyBEb25nIDxh
aXNoZW5nLmRvbmdAbnhwLmNvbT4NCj4gU2VudDogMjAyMOW5tDbmnIgxOOaXpSAxMTowOQ0KPiBU
bzogQW5zb24gSHVhbmcgPGFuc29uLmh1YW5nQG54cC5jb20+OyBsaW51eEBhcm1saW51eC5vcmcu
dWs7DQo+IHNoYXduZ3VvQGtlcm5lbC5vcmc7IHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU7IGtlcm5l
bEBwZW5ndXRyb25peC5kZTsNCj4gZmVzdGV2YW1AZ21haWwuY29tOyBtdHVycXVldHRlQGJheWxp
YnJlLmNvbTsgc2JveWRAa2VybmVsLm9yZzsNCj4gb2xla3NhbmRyLnN1dm9yb3ZAdG9yYWRleC5j
b207IFN0ZWZhbiBBZ25lciA8c3RlZmFuLmFnbmVyQHRvcmFkZXguY29tPjsNCj4gYXJuZEBhcm5k
Yi5kZTsgQWJlbCBWZXNhIDxhYmVsLnZlc2FAbnhwLmNvbT47IFBlbmcgRmFuDQo+IDxwZW5nLmZh
bkBueHAuY29tPjsgdGdseEBsaW51dHJvbml4LmRlOyBhbGxpc29uQGxvaHV0b2submV0Ow0KPiBn
cmVna2hAbGludXhmb3VuZGF0aW9uLm9yZzsgaW5mb0BtZXR1eC5uZXQ7IExlb25hcmQgQ3Jlc3Rl
eg0KPiA8bGVvbmFyZC5jcmVzdGV6QG54cC5jb20+OyBBbmR5IER1YW4gPGZ1Z2FuZy5kdWFuQG54
cC5jb20+OyBEYW5pZWwNCj4gQmFsdXRhIDxkYW5pZWwuYmFsdXRhQG54cC5jb20+OyB5dWVoYWli
aW5nQGh1YXdlaS5jb207DQo+IHNmckBjYW5iLmF1dWcub3JnLmF1OyBsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmc7DQo+IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IGxp
bnV4LWNsa0B2Z2VyLmtlcm5lbC5vcmcNCj4gQ2M6IGRsLWxpbnV4LWlteCA8bGludXgtaW14QG54
cC5jb20+DQo+IFN1YmplY3Q6IFJFOiBbUEFUQ0ggVjIgMi85XSBBUk06IGlteDogU2VsZWN0IE1Y
Q19DTEsgZm9yIEFSQ0hfTVhDDQo+IA0KPiA+IEZyb206IEFuc29uIEh1YW5nIDxhbnNvbi5odWFu
Z0BueHAuY29tPg0KPiA+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSAxNywgMjAyMCA4OjM2IFBNDQo+
ID4NCj4gPiA+IFN1YmplY3Q6IFJFOiBbUEFUQ0ggVjIgMi85XSBBUk06IGlteDogU2VsZWN0IE1Y
Q19DTEsgZm9yIEFSQ0hfTVhDDQo+ID4gPg0KPiA+ID4gPiBGcm9tOiBBbnNvbiBIdWFuZyA8QW5z
b24uSHVhbmdAbnhwLmNvbT4NCj4gPiA+ID4gU2VudDogVHVlc2RheSwgSnVuZSA5LCAyMDIwIDM6
MzIgUE0NCj4gPiA+ID4NCj4gPiA+ID4gaS5NWCBjb21tb24gY2xvY2sgZHJpdmVycyBtYXkgc3Vw
cG9ydCBtb2R1bGUgYnVpbGQsIHNvIGl0IGlzIE5PVA0KPiA+ID4gPiBzZWxlY3RlZCBieSBkZWZh
dWx0LCBmb3IgQVJDSF9NWEMgQVJNdjcgcGxhdGZvcm1zLCBuZWVkIHRvIHNlbGVjdA0KPiA+ID4g
PiBpdCBtYW51YWxseSB0byBtYWtlIGJ1aWxkIHBhc3MuDQo+ID4gPiA+DQo+ID4gPiA+IFNpZ25l
ZC1vZmYtYnk6IEFuc29uIEh1YW5nIDxBbnNvbi5IdWFuZ0BueHAuY29tPg0KPiA+ID4NCj4gPiA+
IENhbid0IHRoZSBvcmlnaW5hbCBkZWZfeHh4IHdvcms/DQo+ID4gPg0KPiA+ID4gY29uZmlnIE1Y
Q19DTEsNCj4gPiA+ICAgICAgICAgdHJpc3RhdGUNCj4gPiA+ICAgICAgICAgZGVmX3RyaXN0YXRl
IEFSQ0hfTVhDDQo+ID4NCj4gPiBTdWNoIGNoYW5nZSB3aWxsIG1ha2UgTVhDX0NMSz15IGV2ZW4g
YWxsIGkuTVg4IFNvQ3MgY2xvY2sgZHJpdmVycyBhcmUNCj4gPiBzZWxlY3RlZCBhcyBtb2R1bGUs
IHNvIGl0IGRvZXMgTk9UIG1lZXQgdGhlIHJlcXVpcmVtZW50IG9mIG1vZHVsZQ0KPiA+IHN1cHBv
cnQuIEJlbG93IGlzIGZyb20gLmNvbmZpZyB3aGVuIGFsbA0KPiA+IGkuTVg4IFNvQ3MgY2xvY2sg
ZHJpdmVycyBhcmUgY29uZmlndXJlZCB0byBtb2R1bGUuDQo+ID4NCj4gPiAgQ09ORklHX01YQ19D
TEs9eQ0KPiA+ICBDT05GSUdfTVhDX0NMS19TQ1U9bQ0KPiA+ICBDT05GSUdfQ0xLX0lNWDhNTT1t
DQo+ID4gIENPTkZJR19DTEtfSU1YOE1OPW0NCj4gPiAgQ09ORklHX0NMS19JTVg4TVA9bQ0KPiA+
ICBDT05GSUdfQ0xLX0lNWDhNUT1tDQo+ID4gIENPTkZJR19DTEtfSU1YOFFYUD1tDQo+ID4NCj4g
DQo+IEl0IHdvcmtzIGF0IG15IHNpZGUuDQo+IEJlbG93IGlzIG15IGNoYW5nZXMgYmFzZWQgb24g
eW91ciBwYXRjaHNldDoNCj4gJCBnaXQgZGlmZg0KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFj
aC1pbXgvS2NvbmZpZyBiL2FyY2gvYXJtL21hY2gtaW14L0tjb25maWcgaW5kZXgNCj4gNDdiMTBk
MjBmNDExLi5lN2Q3YjkwZTJjZjggMTAwNjQ0DQo+IC0tLSBhL2FyY2gvYXJtL21hY2gtaW14L0tj
b25maWcNCj4gKysrIGIvYXJjaC9hcm0vbWFjaC1pbXgvS2NvbmZpZw0KPiBAQCAtNCw3ICs0LDYg
QEAgbWVudWNvbmZpZyBBUkNIX01YQw0KPiAgICAgICAgIGRlcGVuZHMgb24gQVJDSF9NVUxUSV9W
NF9WNSB8fCBBUkNIX01VTFRJX1Y2X1Y3IHx8DQo+IEFSTV9TSU5HTEVfQVJNVjdNDQo+ICAgICAg
ICAgc2VsZWN0IEFSQ0hfU1VQUE9SVFNfQklHX0VORElBTg0KPiAgICAgICAgIHNlbGVjdCBDTEtT
UkNfSU1YX0dQVA0KPiAtICAgICAgIHNlbGVjdCBNWENfQ0xLDQo+ICAgICAgICAgc2VsZWN0IEdF
TkVSSUNfSVJRX0NISVANCj4gICAgICAgICBzZWxlY3QgR1BJT0xJQg0KPiAgICAgICAgIHNlbGVj
dCBQSU5DVFJMDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsay9pbXgvS2NvbmZpZyBiL2RyaXZl
cnMvY2xrL2lteC9LY29uZmlnIGluZGV4DQo+IDI2Y2VkYmZlMzg2Yy4uZjdiM2UzYTJjYjlmIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2Nsay9pbXgvS2NvbmZpZw0KPiArKysgYi9kcml2ZXJzL2Ns
ay9pbXgvS2NvbmZpZw0KPiBAQCAtMyw2ICszLDcgQEANCj4gIGNvbmZpZyBNWENfQ0xLDQo+ICAg
ICAgICAgdHJpc3RhdGUgIklNWCBjbG9jayINCj4gICAgICAgICBkZXBlbmRzIG9uIEFSQ0hfTVhD
DQo+ICsgICAgICAgZGVmX3RyaXN0YXRlIEFSQ0hfTVhDDQo+IA0KPiAgY29uZmlnIE1YQ19DTEtf
U0NVDQo+ICAgICAgICAgdHJpc3RhdGUgIklNWCBTQ1UgY2xvY2siDQo+IA0KDQpJIGd1ZXNzIHlv
dSB0cmllZCBpbXhfdjZfdjdfZGVmY29uZmlnPyBJdCBkb2VzIE5PVCB3b3JrIGZvciBBUk02NCBk
ZWZjb25maWcgd2hlbiB3ZSB0cnkgdG8gbWFrZQ0KQ09ORklHX01YQ19DTEs9bSwgQmVsb3cgYXJl
IG15IGNoYW5nZSwgeW91IGNhbiBzZWUgaW4gLmNvbmZpZywgZXZlbiBhbGwgaS5NWDggU29DcyBj
bG9jayBkcml2ZXJzDQphcmUgY29uZmlndXJlZCB0byBtb2R1bGUsIHRoZSBDT05GSUdfTVhDX0NM
SyBpcyBzdGlsbCA9eSwgYnV0IHRoZSBleHBlY3RlZCByZXN1bHQgaXMgPW0uDQoNCkJUVywgYWxs
IGkuTVg4IFNvQ3Mgc2VsZWN0IE1YQ19DTEsgaW4gdGhlaXIga2NvbmZpZywgdGhpcyBwYXRjaCBq
dXN0IGRvZXMgdGhlIHNhbWUgdGhpbmcgZm9yIGkuTVg2LzcNCmluIGNvbW1vbiBwbGFjZS4NCg0K
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtaW14L0tjb25maWcgYi9hcmNoL2FybS9tYWNoLWlt
eC9LY29uZmlnDQppbmRleCA0N2IxMGQyLi5lN2Q3YjkwIDEwMDY0NA0KLS0tIGEvYXJjaC9hcm0v
bWFjaC1pbXgvS2NvbmZpZw0KKysrIGIvYXJjaC9hcm0vbWFjaC1pbXgvS2NvbmZpZw0KQEAgLTQs
NyArNCw2IEBAIG1lbnVjb25maWcgQVJDSF9NWEMNCiAgICAgICAgZGVwZW5kcyBvbiBBUkNIX01V
TFRJX1Y0X1Y1IHx8IEFSQ0hfTVVMVElfVjZfVjcgfHwgQVJNX1NJTkdMRV9BUk1WN00NCiAgICAg
ICAgc2VsZWN0IEFSQ0hfU1VQUE9SVFNfQklHX0VORElBTg0KICAgICAgICBzZWxlY3QgQ0xLU1JD
X0lNWF9HUFQNCi0gICAgICAgc2VsZWN0IE1YQ19DTEsNCiAgICAgICAgc2VsZWN0IEdFTkVSSUNf
SVJRX0NISVANCiAgICAgICAgc2VsZWN0IEdQSU9MSUINCiAgICAgICAgc2VsZWN0IFBJTkNUUkwN
CmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnIGIvYXJjaC9hcm02NC9j
b25maWdzL2RlZmNvbmZpZw0KaW5kZXggODIyMmU0Yi4uMjFlMmRiYiAxMDA2NDQNCi0tLSBhL2Fy
Y2gvYXJtNjQvY29uZmlncy9kZWZjb25maWcNCisrKyBiL2FyY2gvYXJtNjQvY29uZmlncy9kZWZj
b25maWcNCkBAIC03OTksMTEgKzc5OSwxMSBAQCBDT05GSUdfQ09NTU9OX0NMS19TMk1QUzExPXkN
CiBDT05GSUdfQ09NTU9OX0NMS19QV009eQ0KIENPTkZJR19DT01NT05fQ0xLX1ZDNT15DQogQ09O
RklHX0NMS19SQVNQQkVSUllQST1tDQotQ09ORklHX0NMS19JTVg4TU09eQ0KLUNPTkZJR19DTEtf
SU1YOE1OPXkNCi1DT05GSUdfQ0xLX0lNWDhNUD15DQotQ09ORklHX0NMS19JTVg4TVE9eQ0KLUNP
TkZJR19DTEtfSU1YOFFYUD15DQorQ09ORklHX0NMS19JTVg4TU09bQ0KK0NPTkZJR19DTEtfSU1Y
OE1OPW0NCitDT05GSUdfQ0xLX0lNWDhNUD1tDQorQ09ORklHX0NMS19JTVg4TVE9bQ0KK0NPTkZJ
R19DTEtfSU1YOFFYUD1tDQogQ09ORklHX1RJX1NDSV9DTEs9eQ0KIENPTkZJR19DT01NT05fQ0xL
X1FDT009eQ0KIENPTkZJR19RQ09NX0E1M1BMTD15DQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsv
aW14L0tjb25maWcgYi9kcml2ZXJzL2Nsay9pbXgvS2NvbmZpZw0KaW5kZXggMjZjZWRiZi4uZjdi
M2UzYSAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvY2xrL2lteC9LY29uZmlnDQorKysgYi9kcml2ZXJz
L2Nsay9pbXgvS2NvbmZpZw0KQEAgLTMsNiArMyw3IEBADQogY29uZmlnIE1YQ19DTEsNCiAgICAg
ICAgdHJpc3RhdGUgIklNWCBjbG9jayINCiAgICAgICAgZGVwZW5kcyBvbiBBUkNIX01YQw0KKyAg
ICAgICBkZWZfdHJpc3RhdGUgQVJDSF9NWEMNCg0KIGNvbmZpZyBNWENfQ0xLX1NDVQ0KICAgICAg
ICB0cmlzdGF0ZSAiSU1YIFNDVSBjbG9jayINCg0KLmNvbmZpZzoNCiBDT05GSUdfTVhDX0NMSz15
DQogQ09ORklHX01YQ19DTEtfU0NVPW0NCiBDT05GSUdfQ0xLX0lNWDhNTT1tDQogQ09ORklHX0NM
S19JTVg4TU49bQ0KIENPTkZJR19DTEtfSU1YOE1QPW0NCiBDT05GSUdfQ0xLX0lNWDhNUT1tDQog
Q09ORklHX0NMS19JTVg4UVhQPW0NCg0KQW5zb24NCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
