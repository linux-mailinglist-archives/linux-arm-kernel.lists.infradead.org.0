Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87EEA171117
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 07:40:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FlHE5NhKeem91Uufbjec+eEyDzGOjXFC2vBtoslxCvM=; b=KT9ZF2PZxDLuJa
	eoe4t9WRnUddKFhqp+6o1RJ6OCgpgo+6PteKY96Bbgxhw611SXx0fMNAoBgVDwUTL5rYw1gFjexb5
	b+eBW5zYQEHNjPS4B6C24jCdMWvsQ0zYKp8d2OvCrdnxdjr0x5VR5E8MAcIInO70yTSC7JZJIw25L
	bnMJzQWg9G1WrDihxkpdETQFLUHkrAcunfw1/W/A1FfBLa1b8c21So8byuLjbwGETodhotb2tm8/D
	B2pbr5oBHWnG7zTwRERNM/fUltxIuCOhFarVuD9/ZJzoIUCuklrFI5wHKKY1MPjeq+/ftEgGhEmNA
	zRpyHyV4deDgJnQRy/6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Cqo-0003SD-9X; Thu, 27 Feb 2020 06:40:50 +0000
Received: from mail-vi1eur05on2066.outbound.protection.outlook.com
 ([40.107.21.66] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Cqf-0003RP-Kc
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 06:40:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kw2Blrn9DsFQN0VN13YTk0nVqEOH0AYD84mH6M9bctfPJsxtC3hLoklidIVafiekbck1ZRQla1QuL5TvPa1suajb7HIXAhDe2MMeIzMEMl4V5TRMwZXc6MtjoRfUdAoFiwMzMapZebAS3gYB6nKkjW475jG6sXYsvDhagDV1WnPZCedDzWuuijqoOpQNX5H/3llBXyP0LLfp6nIMjMF8pxHK6TYuZv80J8cQvS/pxB6BytKyjyIJd9iW/koOMqfp5yP/WpzdZVOFcZ5m2oWu5B54eVv11D/uWu2a4PiWvPD2fhZYbcoBuAxtkb+Zr99+B/FKfzJ23/EadH0UqVjyng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J1YYrA6L4HLWQB+gfHL8+ClwSrEO06BVYDwrwVeWJj0=;
 b=IXc0/Rswy/RZnu3ENj8h/WTyJbcp6+MJ8Rz+6Rh9AIL4GMLGEp28NwbJqFKsJ9DKg6Gz8T1kAHgyk5ZLMlr+UDNXV8rD90pspb8ACLkSVBe0Pv4ZhUqLdlMP52pDWXT7cSbVDIqZmIoM1DpG9V3Wai7fPXknkI7IccRrbri5I7AfBpl6r8QYRLX3JB/lroQ9ooK7sZSLaTIjWjk63J6NNpfFXXXRr5eSo/FbE4BlgTMkF/820P4t4R3UcvYQ6pam8CCINqJLyUzXkN/fSgF5/pOatPJBljRrD4HutUoSrfoUFyLIo95LEfwALidr4T7bf7oc9QJfqcrdMwOTVkbNgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J1YYrA6L4HLWQB+gfHL8+ClwSrEO06BVYDwrwVeWJj0=;
 b=dloopdNibPBJdwWCcktFSMgZfl0+jB86ghkYVy4OGsw8/x3UAHAWAFz1/WySvwS8wiiUNROOGCBUWEJfSyn8w6uIibwnE1IpaXUOsMLxvdv3bA0keyBMvkzNh67McyiFKKoksn2HksM0ib5h/WdTVg+fEihaF0ggQd7Uj3mhGYk=
Received: from AM6PR04MB6584.eurprd04.prod.outlook.com (20.179.245.21) by
 AM6PR04MB4184.eurprd04.prod.outlook.com (52.135.168.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.18; Thu, 27 Feb 2020 06:40:33 +0000
Received: from AM6PR04MB6584.eurprd04.prod.outlook.com
 ([fe80::3c28:9128:54b1:ee7c]) by AM6PR04MB6584.eurprd04.prod.outlook.com
 ([fe80::3c28:9128:54b1:ee7c%6]) with mapi id 15.20.2750.024; Thu, 27 Feb 2020
 06:40:33 +0000
From: Sherry Sun <sherry.sun@nxp.com>
To: Rob Herring <robh@kernel.org>
Subject: RE: [PATCH 1/3] dt-bindings: memory-controllers: Add i.MX8MP DDRC
 binding doc
Thread-Topic: [PATCH 1/3] dt-bindings: memory-controllers: Add i.MX8MP DDRC
 binding doc
Thread-Index: AQHV6IK+8k6tD6FA5UiH3n0Bux00p6gtwk+AgADd40A=
Date: Thu, 27 Feb 2020 06:40:33 +0000
Message-ID: <AM6PR04MB6584B7F9EA0B2FF80660C74C92EB0@AM6PR04MB6584.eurprd04.prod.outlook.com>
References: <1582267156-20189-1-git-send-email-sherry.sun@nxp.com>
 <1582267156-20189-2-git-send-email-sherry.sun@nxp.com>
 <20200226172457.GA3267@bogus>
In-Reply-To: <20200226172457.GA3267@bogus>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sherry.sun@nxp.com; 
x-originating-ip: [180.106.106.46]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 90493283-b2f9-4479-4016-08d7bb4ff206
x-ms-traffictypediagnostic: AM6PR04MB4184:|AM6PR04MB4184:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB4184DE5D3466B6929636B72E92EB0@AM6PR04MB4184.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 03264AEA72
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(396003)(376002)(346002)(39860400002)(189003)(199004)(8936002)(4326008)(54906003)(52536014)(478600001)(6506007)(6916009)(81166006)(81156014)(44832011)(86362001)(55016002)(8676002)(9686003)(7696005)(5660300002)(76116006)(33656002)(71200400001)(186003)(26005)(7416002)(2906002)(53546011)(316002)(66446008)(66556008)(66946007)(64756008)(66476007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB4184;
 H:AM6PR04MB6584.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: s6enCh5IDFkG3Wie64VwdidcSsBKZ7pvlg4jsfY+R59Vht+PdH4tgCDq/nvGAYezeYiP2AD02Da3Zk9zWSDA0LluKVOBeJsdLyBfiqd5sB84sZsPIBVXB+PFbtbNdbXYRsm9Ii5sW5Rb2jHBj1L718kNah1hLif+CSXlNDsBs8z3iojVwUEVuZIxaXLoZGcwsT4Z+BbQQzOu+QR3SpuV9BQJl6885J7mV3uW6RU5VDJHN1hslwe8wQy981kInpNjq2asVba8UmKogvHUWo8kEGYlKnR3aJ/j8b4hEK6wYIwzfufRSsiDjZzIEiVIMDihTAc6Btqb7Tm6yUxnNcO5CCgItQVP6P268U6/rhqCwgdvhKESL7pwJC8buCIYhEuGD8MwyTXiuiFKLY/2LFb5NXqcivqe6d4VtVjIVHnFUFQsW+j+8c1sojw1XcRFLDrH
x-ms-exchange-antispam-messagedata: bavP4aSiGRAfDgErZwMV1Rd3lEDoO7y10qvm3YupdFn+3N5PREJL0CotMdQ2HLAnQr+GGuycqoTF3Tr1+RnW/gil+3q7xSRxx44lwVuTq57C6ueerJhGICumMBmtpYzHhy4smbSzlL2EWAkGcPHF9Q==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90493283-b2f9-4479-4016-08d7bb4ff206
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2020 06:40:33.1641 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cNQpmv7D5BeBnsJDNYIti8vflbrJKhV8AVg3MMnBdzih35L9dYNxe0tY053ud7TPpW+ehaUkYw6yPMVDzh3HNA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4184
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_224041_680162_3FA89AC3 
X-CRM114-Status: GOOD (  15.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.66 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "tony.luck@intel.com" <tony.luck@intel.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, Frank Li <frank.li@nxp.com>,
 "michal.simek@xilinx.com" <michal.simek@xilinx.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rrichter@marvell.com" <rrichter@marvell.com>,
 "james.morse@arm.com" <james.morse@arm.com>, dl-linux-imx <linux-imx@nxp.com>,
 "bp@alien8.de" <bp@alien8.de>, "mchehab@kernel.org" <mchehab@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-edac@vger.kernel.org" <linux-edac@vger.kernel.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iLA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IGxpbnV4LWtl
cm5lbC1vd25lckB2Z2VyLmtlcm5lbC5vcmcgPGxpbnV4LWtlcm5lbC0NCj4gb3duZXJAdmdlci5r
ZXJuZWwub3JnPiBPbiBCZWhhbGYgT2YgUm9iIEhlcnJpbmcNCj4gU2VudDogMjAyMMTqMtTCMjfI
1SAxOjI1DQo+IFRvOiBTaGVycnkgU3VuIDxzaGVycnkuc3VuQG54cC5jb20+DQo+IENjOiBicEBh
bGllbjguZGU7IG1jaGVoYWJAa2VybmVsLm9yZzsgdG9ueS5sdWNrQGludGVsLmNvbTsNCj4gamFt
ZXMubW9yc2VAYXJtLmNvbTsgcnJpY2h0ZXJAbWFydmVsbC5jb207IG1pY2hhbC5zaW1la0B4aWxp
bnguY29tOw0KPiBzaGF3bmd1b0BrZXJuZWwub3JnOyBzLmhhdWVyQHBlbmd1dHJvbml4LmRlOyBt
YXJrLnJ1dGxhbmRAYXJtLmNvbTsNCj4gbGludXgtZWRhY0B2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsNCj4gZGV2aWNldHJlZUB2Z2VyLmtlcm5l
bC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IGRsLWxpbnV4LWlteA0KPiA8bGlu
dXgtaW14QG54cC5jb20+OyBGcmFuayBMaSA8ZnJhbmsubGlAbnhwLmNvbT4NCj4gU3ViamVjdDog
UmU6IFtQQVRDSCAxLzNdIGR0LWJpbmRpbmdzOiBtZW1vcnktY29udHJvbGxlcnM6IEFkZCBpLk1Y
OE1QDQo+IEREUkMgYmluZGluZyBkb2MNCj4gDQo+IE9uIEZyaSwgRmViIDIxLCAyMDIwIGF0IDAy
OjM5OjE0UE0gKzA4MDAsIHNoZXJyeSBzdW4gd3JvdGU6DQo+ID4gRnJvbTogU2hlcnJ5IFN1biA8
c2hlcnJ5LnN1bkBueHAuY29tPg0KPiA+DQo+ID4gQWRkIGRvY3VtZW50YXRpb24gZm9yIGkuTVg4
TVAgRERSQyBiaW5kaW5nIGJhc2VkIG9uIHN5bm9wc3lzX2VkYWMNCj4gZG9jLA0KPiA+IHdoaWNo
IHVzZSB0aGUgc2FtZSBtZW1vcnktY29udHJvbGxlciBJUC4NCj4gPg0KPiA+IFNpZ25lZC1vZmYt
Ynk6IFNoZXJyeSBTdW4gPHNoZXJyeS5zdW5AbnhwLmNvbT4NCj4gPiAtLS0NCj4gPiAgLi4uL2Rl
dmljZXRyZWUvYmluZGluZ3MvbWVtb3J5LWNvbnRyb2xsZXJzL3N5bm9wc3lzLnR4dCAgIHwgOCAr
KysrKystLQ0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdA0KPiA+IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL21lbW9yeS1jb250cm9sbGVycy9zeW5vcHN5cy50eHQNCj4gPiBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZW1vcnktY29udHJvbGxlcnMvc3lub3BzeXMudHh0
DQo+ID4gaW5kZXggOWQzMjc2MmM0N2UxLi41YzAzOTU5YTQ1MWYgMTAwNjQ0DQo+ID4gLS0tDQo+
ID4gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVtb3J5LWNvbnRyb2xsZXJz
L3N5bm9wc3lzLnR4dA0KPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9tZW1vcnktDQo+IGNvbnRyb2xsZXJzL3N5bm9wc3lzLnR4DQo+ID4gKysrIHQNCj4gPiBAQCAt
NiwxNiArNiwyMCBAQCBidXMgd2lkdGggY29uZmlndXJhdGlvbnMuDQo+ID4gIFRoZSBaeW5xIERE
UiBFQ0MgY29udHJvbGxlciBoYXMgYW4gb3B0aW9uYWwgRUNDIHN1cHBvcnQgaW4gaGFsZi1idXMN
Cj4gPiB3aWR0aA0KPiA+ICAoMTYtYml0KSBjb25maWd1cmF0aW9uLg0KPiA+DQo+ID4gLVRoZXNl
IGJvdGggRUNDIGNvbnRyb2xsZXJzIGNvcnJlY3Qgc2luZ2xlIGJpdCBFQ0MgZXJyb3JzIGFuZCBk
ZXRlY3QNCj4gPiBkb3VibGUgYml0DQo+ID4gK1RoZSBpLk1YOE1QIEREUiBFQ0MgY29udHJvbGxl
ciBoYXMgYW4gRUNDIHN1cHBvcnQgaW4gNjQtYml0IGJ1cyB3aWR0aA0KPiA+ICtjb25maWd1cmF0
aW9ucy4NCj4gPiArDQo+ID4gK1RoZXNlIGFsbCBFQ0MgY29udHJvbGxlcnMgY29ycmVjdCBzaW5n
bGUgYml0IEVDQyBlcnJvcnMgYW5kIGRldGVjdA0KPiA+ICtkb3VibGUgYml0DQo+IA0KPiBBbGwg
dGhlIEVDQy4uLg0KPiANCj4gV2l0aCB0aGF0LA0KPiANCj4gUmV2aWV3ZWQtYnk6IFJvYiBIZXJy
aW5nIDxyb2JoQGtlcm5lbC5vcmc+DQoNClRoYW5rcywgSSB3aWxsIGNvcnJlY3QgaXQuDQoNCkJl
c3QgcmVnYXJkcw0KU2hlcnJ5IFN1bg0KDQo+IA0KPiA+ICBFQ0MgZXJyb3JzLg0KPiA+DQo+ID4g
IFJlcXVpcmVkIHByb3BlcnRpZXM6DQo+ID4gICAtIGNvbXBhdGlibGU6IE9uZSBvZjoNCj4gPiAg
CS0gJ3hsbngsenlucS1kZHJjLWEwNScgOiBaeW5xIEREUiBFQ0MgY29udHJvbGxlcg0KPiA+ICAJ
LSAneGxueCx6eW5xbXAtZGRyYy0yLjQwYScgOiBaeW5xTVAgRERSIEVDQyBjb250cm9sbGVyDQo+
ID4gKwktICdmc2wsaW14OG1wLWRkcmMnIDogaS5NWDhNUCBERFIgRUNDIGNvbnRyb2xsZXINCj4g
PiAgIC0gcmVnOiBTaG91bGQgY29udGFpbiBERFIgY29udHJvbGxlciByZWdpc3RlcnMgbG9jYXRp
b24gYW5kIGxlbmd0aC4NCj4gPg0KPiA+IC1SZXF1aXJlZCBwcm9wZXJ0aWVzIGZvciAieGxueCx6
eW5xbXAtZGRyYy0yLjQwYSI6DQo+ID4gK1JlcXVpcmVkIHByb3BlcnRpZXMgZm9yICJ4bG54LHp5
bnFtcC1kZHJjLTIuNDBhIiBhbmQgImZzbCxpbXg4bXAtZGRyYyI6DQo+ID4gICAtIGludGVycnVw
dHM6IFByb3BlcnR5IHdpdGggYSB2YWx1ZSBkZXNjcmliaW5nIHRoZSBpbnRlcnJ1cHQgbnVtYmVy
Lg0KPiA+DQo+ID4gIEV4YW1wbGU6DQo+ID4gLS0NCj4gPiAyLjE3LjENCj4gPg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
