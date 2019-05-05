Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B202213E60
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 May 2019 10:04:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Wqzh5vUNy/A2dL31Fiy1m7GuN7oydSM0Q8eXgwIW2k=; b=VU5DUHpl4BGtUA
	lup/JzYfZ8po0zae/+mhBEqnWiN9hSwllYS1a0Zmti/ouV+9juwghBLiVansQib3vnpuxtIEZSzD9
	B4JY/zFQtV5vzY3vJHErTWsIlZc/oGrZ3RCU6WspB2A9hWbUFPAVa73I1NlfBi4PHCc1owAy6/pYF
	zBjmFhmTbNMEX0Vb5JPjmB8vaRbp1xtpPXjQBwbO0iVPBqojd0tF5PO4E/DA1xPyiAPJgp0AaXxQj
	sSzUubmMJHcFXjap69rOWgYZ6Svh5Ec9M/MKNtVkfEBin8RMHXjMKQ6YGt7FFnsKZh6WAl1IZ+E0o
	9NDWZsgEyQi0P4pUkpEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNC8V-0008NA-62; Sun, 05 May 2019 08:04:39 +0000
Received: from mail-eopbgr20071.outbound.protection.outlook.com ([40.107.2.71]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNC8I-0008Mf-Ch
 for linux-arm-kernel@lists.infradead.org; Sun, 05 May 2019 08:04:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NSZhLTqxoEwA/3eQ84r3tq3kN8K2M9SmnzATSTr6EBQ=;
 b=xP0BrCxz83rgg0/upY3HE/9Qj6Zfx0oYMqFhLHA40iKwbiBMYYFTG+pEiU+oMyGodLFpPtdKEwh5pbX1yPwB+bORY+sTG2YK7J4eKFv3ZY1vIWd0d/1B7c1qxOOqG/Z2gizmMmM4CO+jofgV8q5ySkWkdJ7vLzRMZW61yTNaIcA=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB3972.eurprd04.prod.outlook.com (52.134.124.156) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Sun, 5 May 2019 08:04:22 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13%6]) with mapi id 15.20.1856.012; Sun, 5 May 2019
 08:04:22 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Fabio Estevam <festevam@gmail.com>, Kay-Liu <liuk@cetca.net.cn>, Andy Duan
 <fugang.duan@nxp.com>
Subject: RE: [PATCHv2 2/2] clk: imx6sx: Remove unexisting IMX6SX_CLK_ENET_AHB
 clock
Thread-Topic: [PATCHv2 2/2] clk: imx6sx: Remove unexisting IMX6SX_CLK_ENET_AHB
 clock
Thread-Index: AQHVAmi83lrnH+d/lkWtar7gw5ucNaZcLT1g
Date: Sun, 5 May 2019 08:04:22 +0000
Message-ID: <AM0PR04MB4211F5B54480F24FDA7ADE3680370@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <1556190810-19690-1-git-send-email-liuk@cetca.net.cn>
 <CAOMZO5AM-Ee_8ScFEk3hSrujKqH2+XiLHPto3ES3r9AbDkUnkg@mail.gmail.com>
In-Reply-To: <CAOMZO5AM-Ee_8ScFEk3hSrujKqH2+XiLHPto3ES3r9AbDkUnkg@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fe395923-42ba-4682-cb33-08d6d13048b0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB3972; 
x-ms-traffictypediagnostic: AM0PR04MB3972:
x-microsoft-antispam-prvs: <AM0PR04MB3972A829F3E7F5AF103B0E0180370@AM0PR04MB3972.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 00286C0CA6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(346002)(396003)(136003)(366004)(376002)(189003)(199004)(7696005)(53546011)(6506007)(66556008)(256004)(14444005)(102836004)(76176011)(68736007)(71200400001)(71190400001)(3846002)(11346002)(25786009)(446003)(6116002)(110136005)(74316002)(99286004)(33656002)(478600001)(54906003)(8936002)(26005)(186003)(476003)(44832011)(7736002)(305945005)(486006)(6636002)(6246003)(66066001)(4326008)(7416002)(53936002)(316002)(14454004)(66946007)(55016002)(81166006)(86362001)(229853002)(6436002)(81156014)(52536014)(73956011)(66446008)(66476007)(9686003)(76116006)(2906002)(64756008)(5660300002)(8676002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB3972;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0ArpnJ9pkbdncn69hYFYBzvqFKiEyRtDYi0zk8KGmWDIKRmheqF0AtBqKIsSgRafxyxD5lGUJU5ra+TWnkn+Qz5lSgUW3qvCmohdYupUCp61rbB3kyjnPkuvdSjQ8QlQInnPGLnYsimyCBN9sFOW5P8Z3YuZ7tjuGdStROLBtmOBvEtoeHrrWzbhcBIaKEHTA+El1VC0sACh703sPOgL6L0gTYonO2yUJ5KhCrzNT8IRW3BsDcqSN30t2F9mKoYZ4YQKzEhhre3lEIz+g7WVACmw3AdpnlLkraG3gNTo3SMqWhtpGrqIUOKLDJhxIs1TeAPaaK7WJ4ek0PSlRT+0dmUTXmiEPTWV2rjc+XGq1xRE1S+XRFebTrJ0DuWuG+ZFMLvKUmdIadR948lhYz+ts+CstdwQ6GwlEhbCFl5hq9E=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe395923-42ba-4682-cb33-08d6d13048b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2019 08:04:22.6775 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB3972
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_010426_429530_338E50F0 
X-CRM114-Status: GOOD (  20.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.71 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rob Herring <robh@kernel.org>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 "tiny.windzz@gmail.com" <tiny.windzz@gmail.com>,
 root <root@localhost.localdomain>, dl-linux-imx <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, "moderated
 list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PiBGcm9tOiBGYWJpbyBFc3RldmFtIFttYWlsdG86ZmVzdGV2YW1AZ21haWwuY29tXQ0KPiBTZW50
OiBTYXR1cmRheSwgTWF5IDQsIDIwMTkgNzowMiBQTQ0KPiANCj4gSGkgS2F5LUxpdSwNCj4gDQo+
IE9uIFRodSwgQXByIDI1LCAyMDE5IGF0IDg6MTQgQU0gPGxpdWtAY2V0Y2EubmV0LmNuPiB3cm90
ZToNCj4gPg0KPiA+IEZyb206IEtheS1MaXUgPGxpdWtAY2V0Y2EubmV0LmNuPg0KPiA+DQo+ID4g
VGhlIGlteDZzeCdzIGR0cyBmaWxlIGRlZmluZXMgZml2ZSBjbG9ja3MgZm9yIGZlYywgdGhlICdh
aGInY2xvY2sncw0KPiA+IHZhbHVlIGlzIElNWDZTWF9DTEtfRU5FVF9BSEIsIGJ1dCBpbiB0aGUg
aS5NWDZTWCBSZWZlcmVuY2UgTWFudWFsDQo+ID4gdGhlcmUgaXMgbm8gc3VjaCBlbmV0IGFoYiBj
bG9jaywgdGhlcmUgaXMgb25seSBvbmUgImVuZXQgY2xvY2siIGluIHRoZQ0KPiA+IENDTV9DQ0dS
MyByZWdpc3RlciB3aGljaCBpcyBjb250cm9sbGVkIGJ5IGJpdHMgNS00LCB0aGUgZW5ldCBjbG9j
ayBpcw0KPiA+IGRlZmluZWQgZm9yIHRoZSAnaXBnJyBjbG9jaywgdGhpcyBjYW4gY2F1c2UgcHJv
YmxlbS4NCj4gPiBUaGUgb3JpZ2luYWwgcGhlbm9tZW5vbiBpcyB1c2luZyBpbXg2LXNvbG94IHBy
b2Nlc3NvciBhbmQgTWFydmVsDQo+ID4gODhFNjM5MCBzd2l0Y2ggd2l0aCBsaW51eCBPUywgdGhl
IGtlcm5lbCB3aWxsIGhhbmcgZHVyaW5nIHRoZSBzdGFydHVwDQo+ID4gb2YgdGhlIGxpbnV4IE9T
Lg0KPiA+IEFmdGVyIGFuYWx5emluZyB0aGUgcGhlbm9tZW5vbiwgdGhlIHJlYXNvbiBvZiBDUFUg
aGFuZyBpcyByZWFkL3dyaXRlDQo+ID4gZW5ldCBtb2R1bGUncyByZWdpc3RlciB3aGVuIHRoZSBl
bmV0IGNsb2NrIGlzIGRpc2FibGVkLiBUaGUga2VybmVsDQo+ID4gY29kZSB0cnkgdG8gYXZvaWRz
IHRoZSBwcm9ibGVtIGJ5IHJlc3VtZSBlbmV0IGNsb2NrIGJlZm9yZSByZWFkL3dyaXRlDQo+ID4g
ZW5ldCByZWdpc3Rlci4NCj4gPiBCdXQgdGhlIGVuZXQgbW9kdWxlJ3MgY2xvY2sgY29uZmlnIHdp
bGwgY2F1c2UgYSBzcGVjaWFsIGVudmlyb25tZW50DQo+ID4gd2hpY2ggY2FuIGJ5cGFzcyB0aGUg
Y2xvY2sgcmVzdW1lIG1lY2hhbmlzbS4NCj4gPiBUaGUgQ1BVIGhhcyBvbmx5IG9uZSBlbmV0IGNs
b2NrLCBhZnRlciBrZXJuZWwgcGFyc2VzIHRoZSBkdHMgZmlsZSwgdGhlDQo+ID4gdHdvIGNsb2Nr
IHZhcmlhYmxlcyAnaXBnJyBhbmQgJ2FoYicNCj4gPiBmaW5uYWx5IHBvaW50IHRvIHRoZSBzYW1l
IGVuZXQgY2xvY2sgcmVnaXN0ZXIuIFRoaXMgd2lsbCBjYXVzZSBlbmV0DQo+ID4gY2xvY2sgYmUg
ZGlzYWJsZWQgYWZ0ZXIgZmVjIHByb2JlIG92ZXIuDQo+ID4gQmVjYXVzZSB0aGUgcG93ZXIgc2F2
aW5nIG1vZHVsZSB3aWxsIGFmZmVjdCB0aGUgQlVHLCBzbyB0aGVyZSBhcmUgdHdvDQo+ID4gc2l0
dWF0aW9ucyBmb3IgdGhpcyBwcm9ibGVtOg0KPiA+IDEpVHVybiBvZmYgcG93ZXIgc2F2aW5nDQo+
ID4gVHVybiBvZmYgcG93ZXIgc2F2aW5nIG1lYW5zIHRoYXQgdGhlIHJlc3VtZSBtZWNoYW5pc20g
aXMgZGlzYWJsZWQsIHNvDQo+ID4gYWZ0ZXIgZmVjIHByb2JlIG92ZXIgaWYgYW55IG9uZSByZWFk
L3dyaXRlIGVuZXQgbW9kdWxlJ3MgcmVnaXN0ZXIsIHRoZQ0KPiA+IENQVSB3aWxsIGhhbmcgYmVj
YXVzZSBubyBvbmUgY291bGQgcmVzdW1lIHRoZSBlbmV0IGNsb2NrLg0KPiA+IDIpVHVybiBvbiBw
b3dlciBzYXZpbmcNCj4gPiBUdXJuIG9uIHBvd2VyIHNhdmluZyBjb3VsZCByZXN1bWUgZW5ldCBj
bG9jayBiZWZvcmUgcmVhZC93cml0ZSBlbmV0DQo+ID4gcmVnaXN0ZXIgYnkgZW5hYmxlICdpcGcn
IGNsaywgdGhpcyB3aWxsIGNhdXNlICdhaGInIHZhcmlhYmxlIHN0YXRlIGFuZA0KPiA+IGVuZXQg
Y2xvY2sgcmVnaXN0ZXIgdmFsdWUgZG9uJ3QgbWF0Y2guSWYgYW55IHRhc2sgcmVhZC93cml0ZSBl
bmV0IGF0IGENCj4gPiBoaWdoIGZyZXF1ZW50bHksIHRoZSBrZXJuZWwgd2lsbCBrZWVwIHJlc3Vt
ZSBzdGF0ZSBhbmQgbmV2ZXIgZW50ZXINCj4gPiBzdXNwZW5kIHByb2Nlc3MsIHRoaXMgbWVhbnMg
dGhhdCB0aGUga2VybmVsIHdpbGwgb25seSBtb2RpZmllcyB0aGUNCj4gPiByZWdpc3RlciB2YWx1
ZSBkdXJpbmcgdGhlIGZpcnN0IHJlc3VtZS4NCj4gPiBCdXQgdGhlIGtlcm5lbCBpbml0IHdpbGwg
Y2hlY2sgdW51c2VkIGNsb2NrIHZhcmlhYmxlIGluIHRoZSBsYXRlDQo+ID4gaW5pdGNhbGwsIHRo
ZSAnYWhiJyBjbG9jayB3aWxsIGJlIHRyZWF0ZWQgYXMgdW51c2VkLCBhdCB0aGlzIHRpbWUsIHRo
ZQ0KPiA+IGVuZXQgY2xvY2sgd2lsbCBiZSBkaXNhYmxlZCBieXBhc3MgdGhlIHJlc3VtZSBtZWNo
YW5pc20sIHRoZW4gdGhlIG5leHQNCj4gPiByZWFkL3dyaXRlIGVuZXQgbW9kdWxlJ3MgcmVnaXN0
ZXIgd2lsbCBjYXVzZSB0aGUgQ1BVIGhhbmcuDQo+ID4gUHJvcG9zZWQgc29sdXRpb24gaXMgZGVs
ZXRlIHRoZSAnYWhiJyBjbG9jaydzIGRlZmluaXRpb24gaW4gdGhlDQo+ID4gY2xrLWlteDZzeC5j
LCBhbmQgbW9kaWZ5IGZlYyBkZXZpY2XigJlzIGNsb2NrcyBpbiB0aGUgZHRzIGZpbGUsIHBvaW50
DQo+ID4g4oCYYWhi4oCZIGZyb20gSU1YNlNYX0NMS19FTkVUX0FIQiB0byBJTVg2U1hfQ0xLX0VO
RVQNCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEtheS1MaXUgPGxpdWtAY2V0Y2EubmV0LmNuPg0K
PiANCj4gVGhpcyBtYXRjaGVzIHRoZSBteDZzeCByZWZlcmVuY2UgbWFudWFsOg0KPiANCg0KQWxz
byBjb3B5IEFuZHksIHRoZSBFTkVUIG93bmVyLCB0byBjb21tZW50Lg0KDQpSZWdhcmRzDQpEb25n
IEFpc2hlbmcNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
