Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67AB8144A7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 08:55:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TPOBwV3XLlnJKH7aXIO5O280nic+Ulzi+m2s3wRdvDU=; b=iWE5b8NoZwt3Rd
	g7/gOAoCnEuEo320WfaBWQWU9ThpdlQjhTWoggRIUYq8kYme0DqZv2TLaVAkyWuuMkS1huBEOMtE/
	Y2cX6izxGPCO7sr2Q/BpZMkFhCgPdNJnxwPpumtuU72fShMKJUS+hw17EspHL68hgn4B3ha0ZytOH
	0sHuwhkfL1B0IJrRdnkkqw1nVRnJLlrfqsWdocO+GuLzngaGb/DlWCAo7lanczHLy+xGil4l26vFc
	goOVAe8Dfk8E2wgBYO4X8/33fVN7Ons9pUrtR866x4hi0n+JiBBoY2e2PYfNnBxgSrhAnJtjeNlhk
	Y7PHmdqXGbKXSWJjRQKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNXWs-0005ie-Go; Mon, 06 May 2019 06:55:14 +0000
Received: from mail-eopbgr30065.outbound.protection.outlook.com ([40.107.3.65]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNXWj-0004VV-9T
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 06:55:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/tIQCrft4vu7JSTRSxL8lCCCVPuM20V2XxZBct5JMns=;
 b=MG7rNX13ekaXGwIq+W7b8go8I5iaB+4Hinb2jc4qeF+yWqtVYChuM/hgDETIC4hRodJpyZXMyalCOUswv7xUpkVZF47Q521pLaD2xvmJacZnh9VzJ1ES6oWIVxJYJ7EX5S1suxczyxyYdlyjVv4UutKtBBFsXCrXvej4Hy3vM/k=
Received: from AM6PR04MB4007.eurprd04.prod.outlook.com (52.135.161.10) by
 AM6PR04MB5526.eurprd04.prod.outlook.com (20.178.94.152) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Mon, 6 May 2019 06:54:58 +0000
Received: from AM6PR04MB4007.eurprd04.prod.outlook.com
 ([fe80::2816:971e:ba5e:4d12]) by AM6PR04MB4007.eurprd04.prod.outlook.com
 ([fe80::2816:971e:ba5e:4d12%5]) with mapi id 15.20.1856.012; Mon, 6 May 2019
 06:54:58 +0000
From: Robert Chiras <robert.chiras@nxp.com>
To: "agx@sigxcpu.org" <agx@sigxcpu.org>, "afaerber@suse.de" <afaerber@suse.de>
Subject: Re: [EXT] Re: [PATCH v9 2/2] phy: Add driver for mixel mipi dphy
 found on NXP's i.MX8 SoCs
Thread-Topic: [EXT] Re: [PATCH v9 2/2] phy: Add driver for mixel mipi dphy
 found on NXP's i.MX8 SoCs
Thread-Index: AQHVAPzRmWpjaKnPJ0eQppDSCW9zEKZdrzyA
Date: Mon, 6 May 2019 06:54:58 +0000
Message-ID: <1557125693.7006.3.camel@nxp.com>
References: <cover.1556633413.git.agx@sigxcpu.org>
 <b999b07673e59c676d2e43a786b635beb056e9bf.1556633413.git.agx@sigxcpu.org>
 <4ce62b78-64ac-ca84-733f-bc4d10a67c54@suse.de>
In-Reply-To: <4ce62b78-64ac-ca84-733f-bc4d10a67c54@suse.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=robert.chiras@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7612ced1-fc0a-498d-701e-08d6d1efc125
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB5526; 
x-ms-traffictypediagnostic: AM6PR04MB5526:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM6PR04MB5526A06A34649D7204461693E3300@AM6PR04MB5526.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0029F17A3F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(6029001)(346002)(39860400002)(396003)(366004)(136003)(376002)(189003)(199004)(81156014)(45080400002)(8676002)(68736007)(76116006)(91956017)(2616005)(11346002)(64756008)(66946007)(66556008)(446003)(73956011)(66446008)(71190400001)(7736002)(71200400001)(478600001)(66476007)(966005)(7416002)(102836004)(14454004)(186003)(76176011)(305945005)(2501003)(486006)(8936002)(103116003)(26005)(6506007)(44832011)(6512007)(3846002)(6486002)(99286004)(6116002)(6436002)(86362001)(476003)(53936002)(66574012)(81166006)(6246003)(25786009)(229853002)(110136005)(54906003)(256004)(5660300002)(2906002)(36756003)(316002)(6306002)(66066001)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB5526;
 H:AM6PR04MB4007.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: hwlZEpLnYXq7shhT+BtSEnlpcj+JC2akyoGtmxX3pZT9W2eW55dDHbPesePlxuopILQm7BnxdGT1BUsiVCYwYtFQwJzftmvKwHSmpexqKUECyQUipcEEsGiqqbHF7crcuEG1yb8uKsNsMPmmy6UnphImhOtgOiySW5SYtZkX8MBOk9VxkPI06o1OGPktfazDQEqr/T+OCmSSEoSbotElQxPsMiBTuq1n2RHQDkpPkXysAKpKdbJNnPrBGOUUNH1h4wDqYzzvL+L6A/FDF7Z29tnGl3APbTOQz43hm0ZbW5U3sbZ94gMGBoZkdufvstlD0yBeaWiaxWxyWA3wZt+4b0zxE6qgTLF3e2MhYpp2EMSSBlD+sF7w0vzWAho0ZmuyckK2K2/oeQjt1dNs8wg58ZWkJrVXQ7xMvZAlqmVUMc4=
Content-ID: <3D16E7ABF72A224DACDD9C819AE894B5@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7612ced1-fc0a-498d-701e-08d6d1efc125
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2019 06:54:58.6248 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5526
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_235505_339123_58D07131 
X-CRM114-Status: GOOD (  18.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.65 listed in list.dnswl.org]
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
 "heiko@sntech.de" <heiko@sntech.de>, Abel Vesa <abel.vesa@nxp.com>,
 "maxime.ripard@bootlin.com" <maxime.ripard@bootlin.com>,
 "sam@ravnborg.org" <sam@ravnborg.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "kishon@ti.com" <kishon@ti.com>,
 "martin.blumenstingl@googlemail.com" <martin.blumenstingl@googlemail.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "johan@kernel.org" <johan@kernel.org>,
 "treding@nvidia.com" <treding@nvidia.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jun Li <jun.li@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gSm8sIDIwMTktMDUtMDIgYXQgMTc6MzYgKzAyMDAsIEFuZHJlYXMgRsOkcmJlciB3cm90ZToN
Cj4gDQo+IEFtIDMwLjA0LjE5IHVtIDE2OjQwIHNjaHJpZWIgR3VpZG8gR8O8bnRoZXI6DQo+ID4g
DQo+ID4gVGhpcyBhZGRzIHN1cHBvcnQgZm9yIHRoZSBNaXhlbCBEUEhZIGFzIGZvdW5kIG9uIGku
TVg4IENQVXMgYnV0DQo+ID4gc2luY2UNCj4gPiB0aGlzIGlzIGFuIElQIGNvcmUgaXQgd2lsbCBs
aWtlbHkgYmUgZm91bmQgb24gb3RoZXJzIGluIHRoZSBmdXR1cmUuDQo+ID4gU28NCj4gPiBpbnN0
ZWFkIG9mIGFkZGluZyB0aGlzIHRvIHRoZSBud2wgaG9zdCBkcml2ZXIgbWFrZSBpdCBhIGdlbmVy
aWMgUEhZDQo+ID4gZHJpdmVyLg0KPiA+IA0KPiA+IFRoZSBkcml2ZXIgc3VwcG9ydHMgdGhlIGku
TVg4TVEuIFN1cHBvcnQgZm9yIGkuTVg4UU0gYW5kIGkuTVg4UVhQDQo+ID4gY2FuIGJlDQo+ID4g
YWRkZWQgb25jZSB0aGUgbmVjZXNzYXJ5IHN5c3RlbSBjb250cm9sbGVyIGJpdHMgYXJlIGluIHZp
YQ0KPiA+IG1peGVsX2RwaHlfZGV2ZGF0YS4NCj4gPiANCj4gPiBDby1hdXRob3JlZC1ieTogUm9i
ZXJ0IENoaXJhcyA8cm9iZXJ0LmNoaXJhc0BueHAuY29tPg0KPiBUaGlzIHNob3VsZCBiZSBDby1k
ZXZlbG9wZWQtYnkgYW5kIGlzIGxhY2tpbmcgYSBTaWduZWQtb2ZmLWJ5IGZyb20NCj4gdGhhdA0K
PiBhdXRob3IuIFJvYmVydCwgY2FuIHlvdSBwbGVhc2UgcHJvdmlkZSBvbmU/DQpTdXJlLiBBZGRl
ZCBiZWxvdy4NCj4gDQo+IGh0dHBzOi8vZXVyMDEuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9v
ay5jb20vP3VybD1odHRwcyUzQSUyRiUyRnd3dw0KPiAua2VybmVsLm9yZyUyRmRvYyUyRmh0bWwl
MkZsYXRlc3QlMkZwcm9jZXNzJTJGc3VibWl0dGluZy0NCj4gcGF0Y2hlcy5odG1sJTIzd2hlbi10
by11c2UtYWNrZWQtYnktY2MtYW5kLWNvLWRldmVsb3BlZC0NCj4gYnkmYW1wO2RhdGE9MDIlN0Mw
MSU3Q3JvYmVydC5jaGlyYXMlNDBueHAuY29tJTdDMDEyZjY1NzdhYWI0NDBmNjJlMTYwDQo+IDhk
NmNmMTNmMmEwJTdDNjg2ZWExZDNiYzJiNGM2ZmE5MmNkOTljNWMzMDE2MzUlN0MwJTdDMCU3QzYz
NjkyNDA4MTkxNw0KPiA3NTQ0MTEmYW1wO3NkYXRhPSUyRnJGTnJBYUw3TXdQWHVhWU9seGZhOE80
SkxOSUxxNWVGRXE5MnFWMkpaZyUzRCZhbXANCj4gO3Jlc2VydmVkPTANCj4gDQo+ID4gDQo+ID4g
U2lnbmVkLW9mZi1ieTogR3VpZG8gR8O8bnRoZXIgPGFneEBzaWd4Y3B1Lm9yZz4NClNpZ25lZC1v
ZmYtYnk6IFJvYmVydCBDaGlyYXMgPHJvYmVydC5jaGlyYXNAbnhwLmNvbT4NCj4gVGhhbmtzLA0K
PiBBbmRyZWFzDQo+IA0KPiAtLQ0KPiBTVVNFIExpbnV4IEdtYkgsIE1heGZlbGRzdHIuIDUsIDkw
NDA5IE7DvHJuYmVyZywgR2VybWFueQ0KPiBHRjogRmVsaXggSW1lbmTDtnJmZmVyLCBNYXJ5IEhp
Z2dpbnMsIFNyaSBSYXNpYWgNCj4gSFJCIDIxMjg0IChBRyBOw7xybmJlcmcpCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
