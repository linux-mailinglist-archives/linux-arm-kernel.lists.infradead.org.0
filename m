Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F411544D6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 14:25:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oicKU+Rda7fWEX3M0mUoSojRbym1sbn3NcGu9dN7atE=; b=A6CCqAFawWOmWM
	F7OHuV8pJQpw6uSr7lEZFw/ILOkvZ3Ubsi5Cahe5XOn0xOEPN+NGWH/sN9fYpJ4DRkBdAHrAIOwOx
	/7PD4Ffa8G2ETM6t4yh8dNQyLa2VQu2jMakI8DeRgb44yKZm+Ry9BHUVa2tJ86+FE84r+jeSVNOoL
	iTx9Uqy2fqDU9hz9XjwjQbcAC/yVFlYiBMnpSMR35pxGFLtzOCjosxWFiSQrIdAokLgNWodWumBzk
	NrOltdqnM8ijEX7QgT6HAjYqt3VhM53yt3ZKXYu03aDBnZRkmBySrpT0nkifiilb4CuwPIeMrRzRc
	Stzo5lX5Ld0BXC7M1wzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izhA0-0003Xo-AO; Thu, 06 Feb 2020 13:25:36 +0000
Received: from mail-eopbgr80040.outbound.protection.outlook.com ([40.107.8.40]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izh9s-0003Wi-Ac
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 13:25:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dWizBTB75c5ENkyfH2yud+csi0XzbR0qCDKVP5m0LEl540IAUcnl3c6D/w4llrJtkBQPq4cJv+5cABiMbtWOKxuuDASkOnnNfu4WP1K2zkq2xFpcf/by95Ht61CUreClrBoNsf+HlOh3IJYwSg5NSX201RM0Oudysf8fljGWJzrnIUm1b+5bxwf9exVzTH3Z0mDg9u3YDh8n35ua4cqo5pVXcO1m6Yee+hIjLgworpDhCHl8cNhgUwirpYyBdEEHlr9Dx/G4YAuUpp0MJ1d3gCK6xE7XR+gguc8TVSQm+I5KgqyW0OlgzOST9xd5D+qV2+z7p5SoPfZfLLUSI+p1Qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Moj2P6Pst7s2pRvGPPgfFbmQI3n/kB5PPgcbGG9hwkY=;
 b=PPkg89W9nGesaVIm7IKdDgVIbI+wihUE/2P87dTKhoz3G8syQNnvayVFruBhwIjFfZWq10aUsJKkFjvSQDPwulvupmhBUe/ZB75rllBaHJtbSzAhzH7gSbioTDSHMnQjnOhQavrkelf7+1eWgziCZ0nvjzmbBVthBVYT9VUprewCz28dBeeTTccMyz1JkcNIWEn7LK1GIieySATKTuqEqaoIH9qz6lZG9ukCjiBottgKrsVtj+YYmjBLBhqi5fbEk33VKpDC6arM4gSjGhPwHVHV4Ap7wXEjScInfxb8JAcQ4e/YOPFF1dQwX5DD2hdT683vG0vWLk0T+77lQ67qxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Moj2P6Pst7s2pRvGPPgfFbmQI3n/kB5PPgcbGG9hwkY=;
 b=iXx0fGDH0gz0bjqBk4sYP/wRLWdMrt+69VaMQna1VUWEE61PWoY8xiKxjf2KETU7JXDronTepUlQy9kEFWXenURV9cexqtzdoBuYgcQJ5GL1AZ7z0S637rSyMv19c2nqEV3C7toseU85dyR032eX+Gk/u8vxBokrLXv+TxvZj74=
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com (20.179.250.159) by
 DB8PR04MB6844.eurprd04.prod.outlook.com (52.133.240.87) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.29; Thu, 6 Feb 2020 13:25:25 +0000
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::104b:e88b:b0d3:cdaa]) by DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::104b:e88b:b0d3:cdaa%4]) with mapi id 15.20.2686.035; Thu, 6 Feb 2020
 13:25:25 +0000
From: "Z.q. Hou" <zhiqiang.hou@nxp.com>
To: Andrew Murray <andrew.murray@arm.com>
Subject: RE: [PATCHv9 06/12] PCI: mobiveil: Add callback function for link up
 check
Thread-Topic: [PATCHv9 06/12] PCI: mobiveil: Add callback function for link up
 check
Thread-Index: AQHVn1UEYLWmKTdIpEiL1397xUm0IKfoyLAAgCRXEqA=
Date: Thu, 6 Feb 2020 13:25:25 +0000
Message-ID: <DB8PR04MB6747A07EA7111D8694B0D57C841D0@DB8PR04MB6747.eurprd04.prod.outlook.com>
References: <20191120034451.30102-1-Zhiqiang.Hou@nxp.com>
 <20191120034451.30102-7-Zhiqiang.Hou@nxp.com>
 <20200113112201.GL42593@e119886-lin.cambridge.arm.com>
In-Reply-To: <20200113112201.GL42593@e119886-lin.cambridge.arm.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=zhiqiang.hou@nxp.com; 
x-originating-ip: [92.121.68.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 66b59dd2-4b4d-40b6-db92-08d7ab0806ab
x-ms-traffictypediagnostic: DB8PR04MB6844:|DB8PR04MB6844:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB6844BD62D5C99987E0CCB9C9841D0@DB8PR04MB6844.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0305463112
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(346002)(376002)(396003)(136003)(189003)(199004)(4326008)(7696005)(86362001)(8676002)(66946007)(66476007)(66556008)(81156014)(26005)(81166006)(76116006)(66446008)(64756008)(6506007)(53546011)(478600001)(52536014)(6916009)(316002)(54906003)(33656002)(2906002)(8936002)(9686003)(7416002)(55016002)(5660300002)(71200400001)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB6844;
 H:DB8PR04MB6747.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1X6RGJCUAD34lH3Kd2vZcqeKerFGwNfRMtmjWVQn47iiitqh6HbDNfOFda4pECbXUsAdb0xnOTpyXFucZ9/74vlYXtfU9uC6WxdY8cTRoWQBU/6WkgSqTA9wKGli1W3xSScTojh1Pw8X9w9Z2uaOBpsBc7tVVIwRMzNUbpIgNIVqx4fGpbcSiMWexg3rQuSEsXRYGb0L1lzyeY5r0Kd/F74+0taW+Syf+dpdLwsaUyb59BJLHuX/bmc+3d9mQ4Q/Cx8kiRbzx7tD1uidWPOSgdgmhkuaEHfJFeA6BeqClskgWt+WFo2hjiSY3bbUde6Ur6k+hKIch/1hG++lnE9cNYkgLJMvdN/X7VVeGByby6CuothrWQryjgN0qQf/yuiR88VFR+q8hdZea4xi0O2tas/1U5SB1dYtrq7BB5BZLCEOFxJAkqDu8aHid8RfE9+9
x-ms-exchange-antispam-messagedata: XFE8NIe95f6O/Gf5JtPv7D1inckdVbzv9zR44bQFZi1CMb+1qIzKy7NMTUcBqbtJxkRV2ACpRhxW6wXAxheOyd9CWSVx6f8tNlBkwhdhNo0Pjrmt2JkQxMF/cu3+Dv2X19vys+hwb6NeuWsFuZc/cA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 66b59dd2-4b4d-40b6-db92-08d7ab0806ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2020 13:25:25.4789 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /4EH4UCC8fD1sApzNL5kWjaeytfGzyRVqjw7WcVRXI4fo/5YHYERm5J4HEYCAH3+qbeaLikyU0txLOWmK4ZYow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6844
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_052528_367935_DCEBB59D 
X-CRM114-Status: GOOD (  20.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.40 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "m.karthikeyan@mobiveil.co.in" <m.karthikeyan@mobiveil.co.in>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "l.subrahmanya@mobiveil.co.in" <l.subrahmanya@mobiveil.co.in>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>,
 Xiaowei Bao <xiaowei.bao@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5kcmV3LA0KDQpUaGFua3MgYSBsb3QgZm9yIHlvdXIgcmV2aWV3IQ0KDQpCLlIsDQpaaGlx
aWFuZw0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEFuZHJldyBNdXJy
YXkgPGFuZHJldy5tdXJyYXlAYXJtLmNvbT4NCj4gU2VudDogMjAyMMTqMdTCMTPI1SAxOToyMg0K
PiBUbzogWi5xLiBIb3UgPHpoaXFpYW5nLmhvdUBueHAuY29tPg0KPiBDYzogbGludXgtcGNpQHZn
ZXIua2VybmVsLm9yZzsgbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOw0KPiBk
ZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsN
Cj4gYmhlbGdhYXNAZ29vZ2xlLmNvbTsgcm9iaCtkdEBrZXJuZWwub3JnOyBhcm5kQGFybmRiLmRl
Ow0KPiBtYXJrLnJ1dGxhbmRAYXJtLmNvbTsgbC5zdWJyYWhtYW55YUBtb2JpdmVpbC5jby5pbjsN
Cj4gc2hhd25ndW9Aa2VybmVsLm9yZzsgbS5rYXJ0aGlrZXlhbkBtb2JpdmVpbC5jby5pbjsgTGVv
IExpDQo+IDxsZW95YW5nLmxpQG54cC5jb20+OyBsb3JlbnpvLnBpZXJhbGlzaUBhcm0uY29tOw0K
PiBjYXRhbGluLm1hcmluYXNAYXJtLmNvbTsgd2lsbC5kZWFjb25AYXJtLmNvbTsgTWluZ2thaSBI
dQ0KPiA8bWluZ2thaS5odUBueHAuY29tPjsgTS5oLiBMaWFuIDxtaW5naHVhbi5saWFuQG54cC5j
b20+OyBYaWFvd2VpIEJhbw0KPiA8eGlhb3dlaS5iYW9AbnhwLmNvbT4NCj4gU3ViamVjdDogUmU6
IFtQQVRDSHY5IDA2LzEyXSBQQ0k6IG1vYml2ZWlsOiBBZGQgY2FsbGJhY2sgZnVuY3Rpb24gZm9y
IGxpbmsgdXANCj4gY2hlY2sNCj4gDQo+IE9uIFdlZCwgTm92IDIwLCAyMDE5IGF0IDAzOjQ1OjU3
QU0gKzAwMDAsIFoucS4gSG91IHdyb3RlOg0KPiA+IEZyb206IEhvdSBaaGlxaWFuZyA8WmhpcWlh
bmcuSG91QG54cC5jb20+DQo+ID4NCj4gPiBUaGUgcGxhdGZvcm1zLCBpbiB3aGljaCB0aGUgTW9i
aXZlaWwgR1BFWCBpcyBpbnRlZ3JhdGVkLCBtYXkgaGF2ZQ0KPiA+IHRoZWlyIHNwZWNpZmljIG1l
Y2hhbmlzbSB0byBjaGVjayBsaW5rIHVwIHN0YXR1cy4NCj4gPiBUaGlzIHBhdGNoIGlzIHRvIGVu
YWJsZSB0aGVzZSBwbGF0Zm9ybXMgdG8gaW1wbGVtZW50IHRoZWlycy4NCj4gPg0KPiA+IFNpZ25l
ZC1vZmYtYnk6IEhvdSBaaGlxaWFuZyA8WmhpcWlhbmcuSG91QG54cC5jb20+DQo+ID4gLS0tDQo+
ID4gVjk6DQo+ID4gIC0gTmV3IHBhdGNoIHNwbGl0ZWQgZnJvbSB0aGUgIzEgb2YgVjggcGF0Y2hl
cyB0byBtYWtlIGl0IGVhc3kgdG8gcmV2aWV3Lg0KPiA+DQo+ID4gIGRyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvbW9iaXZlaWwvcGNpZS1tb2JpdmVpbC5jIHwgMyArKysNCj4gPiBkcml2ZXJzL3BjaS9j
b250cm9sbGVyL21vYml2ZWlsL3BjaWUtbW9iaXZlaWwuaCB8IDUgKysrKysNCj4gPiAgMiBmaWxl
cyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3BjaS9jb250cm9sbGVyL21vYml2ZWlsL3BjaWUtbW9iaXZlaWwuYw0KPiA+IGIvZHJpdmVycy9w
Y2kvY29udHJvbGxlci9tb2JpdmVpbC9wY2llLW1vYml2ZWlsLmMNCj4gPiBpbmRleCAyNzczZjgy
M2M5ZWEuLmI5ZWQyZDk1NjQxYyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9s
bGVyL21vYml2ZWlsL3BjaWUtbW9iaXZlaWwuYw0KPiA+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvbW9iaXZlaWwvcGNpZS1tb2JpdmVpbC5jDQo+ID4gQEAgLTEyNSw2ICsxMjUsOSBAQCB2
b2lkIG1vYml2ZWlsX2Nzcl93cml0ZShzdHJ1Y3QgbW9iaXZlaWxfcGNpZQ0KPiA+ICpwY2llLCB1
MzIgdmFsLCB1MzIgb2ZmLA0KPiA+DQo+ID4gIGJvb2wgbW9iaXZlaWxfcGNpZV9saW5rX3VwKHN0
cnVjdCBtb2JpdmVpbF9wY2llICpwY2llKSAgew0KPiA+ICsJaWYgKHBjaWUtPm9wcy0+bGlua191
cCkNCj4gPiArCQlyZXR1cm4gcGNpZS0+b3BzLT5saW5rX3VwKHBjaWUpOw0KPiA+ICsNCj4gPiAg
CXJldHVybiAobW9iaXZlaWxfY3NyX3JlYWRsKHBjaWUsIExUU1NNX1NUQVRVUykgJg0KPiA+ICAJ
CUxUU1NNX1NUQVRVU19MMF9NQVNLKSA9PSBMVFNTTV9TVEFUVVNfTDA7DQo+IA0KPiBPbiB0aGUg
cHJldmlvdXMgcGF0Y2ggSSBzdWdnZXN0ZWQgdGhhdCB3ZSBkb24ndCBtaXggdXAgdGhlIGxpbmtf
dXAgbG9naWMgd2l0aA0KPiB0aGUgbG9naWMgdGhhdCBkZWNpZGVzIHdoaWNoIGZ1bmN0aW9uIHRv
IGNhbGwuIEluIHRoaXMgY2FzZSB0aGUgbGlua191cCBsb2dpYyBpcw0KPiB0cml2aWFsLiBTbyB0
aGlzIGlzIHByb2JhYmx5IE9LLg0KPiANCj4gUmV2aWV3ZWQtYnk6IEFuZHJldyBNdXJyYXkgPGFu
ZHJldy5tdXJyYXlAYXJtLmNvbT4NCj4gDQo+ID4gIH0NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9wY2kvY29udHJvbGxlci9tb2JpdmVpbC9wY2llLW1vYml2ZWlsLmgNCj4gPiBiL2RyaXZlcnMv
cGNpL2NvbnRyb2xsZXIvbW9iaXZlaWwvcGNpZS1tb2JpdmVpbC5oDQo+ID4gaW5kZXggMThkODU4
MDZhN2ZjLi45NWQyZTdjODA5YjggMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJv
bGxlci9tb2JpdmVpbC9wY2llLW1vYml2ZWlsLmgNCj4gPiArKysgYi9kcml2ZXJzL3BjaS9jb250
cm9sbGVyL21vYml2ZWlsL3BjaWUtbW9iaXZlaWwuaA0KPiA+IEBAIC0xNDgsNiArMTQ4LDEwIEBA
IHN0cnVjdCByb290X3BvcnQgew0KPiA+ICAJc3RydWN0IHBjaV9ob3N0X2JyaWRnZSAqYnJpZGdl
Ow0KPiA+ICB9Ow0KPiA+DQo+ID4gK3N0cnVjdCBtb2JpdmVpbF9wYWJfb3BzIHsNCj4gPiArCWlu
dCAoKmxpbmtfdXApKHN0cnVjdCBtb2JpdmVpbF9wY2llICpwY2llKTsgfTsNCj4gPiArDQo+ID4g
IHN0cnVjdCBtb2JpdmVpbF9wY2llIHsNCj4gPiAgCXN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBk
ZXY7DQo+ID4gIAl2b2lkIF9faW9tZW0gKmNzcl9heGlfc2xhdmVfYmFzZTsJLyogcm9vdCBwb3J0
IGNvbmZpZyBiYXNlICovDQo+ID4gQEAgLTE1Nyw2ICsxNjEsNyBAQCBzdHJ1Y3QgbW9iaXZlaWxf
cGNpZSB7DQo+ID4gIAlpbnQgcHBpb193aW5zOw0KPiA+ICAJaW50IG9iX3dpbnNfY29uZmlndXJl
ZDsJCS8qIGNvbmZpZ3VyZWQgb3V0Ym91bmQgd2luZG93cyAqLw0KPiA+ICAJaW50IGliX3dpbnNf
Y29uZmlndXJlZDsJCS8qIGNvbmZpZ3VyZWQgaW5ib3VuZCB3aW5kb3dzICovDQo+ID4gKwljb25z
dCBzdHJ1Y3QgbW9iaXZlaWxfcGFiX29wcyAqb3BzOw0KPiA+ICAJc3RydWN0IHJvb3RfcG9ydCBy
cDsNCj4gPiAgfTsNCj4gPg0KPiA+IC0tDQo+ID4gMi4xNy4xDQo+ID4NCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
