Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A43457C78
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 08:51:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uYF9a4YxG+dssn3qxeMjwNmyJLnplN3mXSJOSl9XHQU=; b=b26WyjH5OCA6W2
	0/7zfFE3WGHxLcd3wtdKFMU1SkepK0e2oP6g+dGpM3t6BTTE+EuNDUlicLMfSB1T1H4HLXSZWBsj3
	QZPp2zXA5PNv9ZxWAQThk1/7af4XtXLD88JEoCfTxtge2A2AXTE5ZR6OcUzybgy7aEOiZVEeif7OH
	SdscaLjiL0ieG3b40ZorEUYXY+SLnZWGdkpxLPETxjkTHojF8yf/8PFpT8XqSoGLf04ohjnwOIEqB
	B5Y1ImupLLDLbWRqhLLQ25qoSTnEo8AsaoexOiI9KjWfocXKoULQ3+NH+bV8JYSOq15YUGem8gS/N
	Djh2KTPHpz3CnF1yr9rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgOFl-0006Mp-PS; Thu, 27 Jun 2019 06:51:29 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgO8Z-0006KM-Ff
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 06:44:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=MIME-Version:Content-Transfer-Encoding:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kh3ndaU6ZdNCZItesSx6DlqtV91F1OIGNRLIRiX0xkQ=; b=m00dK7gOYKpXjTJA/iQEf9c/1F
 dHNGYnUAiJAv8D254JW62YaQXF4qNSQnt4KqfxA8VLFBfj/I1nYngDGkpS7Ex2DKA3l9+sUQguqvN
 pZKfRZDOnEDdZjYBBHrX6YqB+d/RjMHm99K8cIUTQ1itco6cwASKyoi7ce0jj3JDAqiWrYVTMDyww
 jVRwOR2DHNGRsDRtxDDBOFzAryNCzISUcZEa3+uUlsZMl9QdpP0b4SJSmqRmg8XNLLxT5dTJJgZeK
 UqGB+FFmCgszWg2mtZ/RxB+IU3TYN7vlg+vEnJJOn/M3v99c5Gq/ZzoLiELLmV1R8YK6DWw2OusBJ
 7o37YEFw==;
Received: from mail-eopbgr20052.outbound.protection.outlook.com ([40.107.2.52]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgJj0-0005ee-Sy
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 02:01:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kh3ndaU6ZdNCZItesSx6DlqtV91F1OIGNRLIRiX0xkQ=;
 b=ppk1SxM4RNEJg1Zi6qUhe0a75sr/lHpbBkq/LYdg3hB19blnajA4dnqQLpiyn6yJ5+nEO+YRHorPE+w7oZivwe0MuRJjT4OZ9m9/Z/qrsJrwvf78Hgat/EHJbH5JbX7+jMl5Cfpn+WV6d9sYfhpeah1viZBvro9lS4aJpvzRpN8=
Received: from AM5PR04MB3299.eurprd04.prod.outlook.com (10.173.255.158) by
 AM5PR04MB3235.eurprd04.prod.outlook.com (10.167.171.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Thu, 27 Jun 2019 02:00:48 +0000
Received: from AM5PR04MB3299.eurprd04.prod.outlook.com
 ([fe80::85dc:ed8:2a0d:4afe]) by AM5PR04MB3299.eurprd04.prod.outlook.com
 ([fe80::85dc:ed8:2a0d:4afe%6]) with mapi id 15.20.2008.017; Thu, 27 Jun 2019
 02:00:48 +0000
From: Xiaowei Bao <xiaowei.bao@nxp.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: RE: [EXT] Re: [PATCHv2 2/2] PCI: layerscape: EP and RC drivers are
 compiled separately
Thread-Topic: [EXT] Re: [PATCHv2 2/2] PCI: layerscape: EP and RC drivers are
 compiled separately
Thread-Index: AQHVLBE4IA2SIKwZ+ECco9RDrpxLQ6auN4qAgACIFLA=
Date: Thu, 27 Jun 2019 02:00:47 +0000
Message-ID: <AM5PR04MB329928579BA98A3429A0B412F5FD0@AM5PR04MB3299.eurprd04.prod.outlook.com>
References: <20190626111139.32878-1-xiaowei.bao@nxp.com>
 <20190626111139.32878-2-xiaowei.bao@nxp.com>
 <20190626175153.GC103694@google.com>
In-Reply-To: <20190626175153.GC103694@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xiaowei.bao@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5e0d3ea3-f2c2-446a-1633-08d6faa34611
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM5PR04MB3235; 
x-ms-traffictypediagnostic: AM5PR04MB3235:
x-microsoft-antispam-prvs: <AM5PR04MB3235064E9A862F8C7F73A344F5FD0@AM5PR04MB3235.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 008184426E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(396003)(39860400002)(366004)(346002)(13464003)(189003)(199004)(76176011)(486006)(186003)(14454004)(26005)(7696005)(478600001)(102836004)(44832011)(66066001)(53546011)(6506007)(99286004)(74316002)(68736007)(5660300002)(81166006)(8676002)(81156014)(8936002)(7736002)(4326008)(6916009)(7416002)(25786009)(305945005)(256004)(33656002)(52536014)(76116006)(3846002)(66946007)(66476007)(73956011)(229853002)(54906003)(66446008)(66556008)(64756008)(53936002)(6116002)(6436002)(9686003)(316002)(71200400001)(71190400001)(2906002)(6246003)(446003)(86362001)(11346002)(55016002)(476003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR04MB3235;
 H:AM5PR04MB3299.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 1rAeelWrgHa/SmKdfvoE68z5ijxT48W0Ug6kYTk25Us0MErOx/jXpJiYiuak57kwipvyGCOSEGfj1Hcc2F1vLJT5goz1Qm2ocSkzdgl9cVjWBGPTrZ+54ki1Gd2gHA9FepgGyZH5lnEoTJbfMex25+JiiB6f61JjeoTX+B9T6U+pGVN8gmuqFZW5CydSx00jNv6O1KaFV+FftKXeaiqtgxyrSDeTif80md8u2oKJeOYu0W5zYp9e6bWuvqgmY8ZTXlxROMwqGjuw8OeDkAO9W7vxGDH84Qs2732OF87PcMJ7635fnwGpVwIzRb+kJeiaOpQD61GOVNfGat05Jlim7uvQLDljZovIb3XU9VozptH3qDlqtY+ANJZpyy3iq6HMGdEkbQmz2xrh522glKO7OOsI+yFEqYR7BA30C5SUZi8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e0d3ea3-f2c2-446a-1633-08d6faa34611
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jun 2019 02:00:47.9363 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xiaowei.bao@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR04MB3235
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.52 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Roy Zang <roy.zang@nxp.com>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "kstewart@linuxfoundation.org" <kstewart@linuxfoundation.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kishon@ti.com" <kishon@ti.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "pombredanne@nexb.com" <pombredanne@nexb.com>, Leo Li <leoyang.li@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "shawn.lin@rock-chips.com" <shawn.lin@rock-chips.com>,
 Mingkai Hu <mingkai.hu@nxp.com>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQmpvcm4sDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQmpvcm4g
SGVsZ2FhcyA8aGVsZ2Fhc0BrZXJuZWwub3JnPg0KPiBTZW50OiAyMDE5xOo21MIyN8jVIDE6NTIN
Cj4gVG86IFhpYW93ZWkgQmFvIDx4aWFvd2VpLmJhb0BueHAuY29tPg0KPiBDYzogcm9iaCtkdEBr
ZXJuZWwub3JnOyBtYXJrLnJ1dGxhbmRAYXJtLmNvbTsgc2hhd25ndW9Aa2VybmVsLm9yZzsgTGVv
DQo+IExpIDxsZW95YW5nLmxpQG54cC5jb20+OyBraXNob25AdGkuY29tOyBsb3JlbnpvLnBpZXJh
bGlzaUBhcm0uY29tOw0KPiBhcm5kQGFybmRiLmRlOyBncmVna2hAbGludXhmb3VuZGF0aW9uLm9y
ZzsgTS5oLiBMaWFuDQo+IDxtaW5naHVhbi5saWFuQG54cC5jb20+OyBNaW5na2FpIEh1IDxtaW5n
a2FpLmh1QG54cC5jb20+OyBSb3kgWmFuZw0KPiA8cm95LnphbmdAbnhwLmNvbT47IGtzdGV3YXJ0
QGxpbnV4Zm91bmRhdGlvbi5vcmc7DQo+IHBvbWJyZWRhbm5lQG5leGIuY29tOyBzaGF3bi5saW5A
cm9jay1jaGlwcy5jb207DQo+IGxpbnV4LXBjaUB2Z2VyLmtlcm5lbC5vcmc7IGRldmljZXRyZWVA
dmdlci5rZXJuZWwub3JnOw0KPiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7DQo+IGxpbnV4cHBjLWRldkBsaXN0cy5vemxh
YnMub3JnDQo+IFN1YmplY3Q6IFtFWFRdIFJlOiBbUEFUQ0h2MiAyLzJdIFBDSTogbGF5ZXJzY2Fw
ZTogRVAgYW5kIFJDIGRyaXZlcnMgYXJlDQo+IGNvbXBpbGVkIHNlcGFyYXRlbHkNCj4gDQo+IENh
dXRpb246IEVYVCBFbWFpbA0KPiANCj4gSWYgeW91IHBvc3QgYW5vdGhlciByZXZpc2lvbiBmb3Ig
YW55IHJlYXNvbiwgcGxlYXNlIGNoYW5nZSB0aGUgc3ViamVjdCBzbyBpdCdzDQo+IHdvcmRlZCBh
cyBhIGNvbW1hbmQgYW5kIG1lbnRpb25zIHRoZSBuZXcgY29uZmlnIG9wdGlvbnMsIGUuZy4sDQo+
IA0KPiAgIFBDSTogbGF5ZXJzY2FwZTogQWRkIENPTkZJR19QQ0lfTEFZRVJTQ0FQRV9FUCB0byBi
dWlsZCBFUC9SQw0KPiBzZXBhcmF0ZWx5DQpbWGlhb3dlaSBCYW9dIE9LLCB0aGFua3MsIHRoaXMg
c3ViamVjdCBsb29rcyB3ZWxsLg0KPiANCj4gT24gV2VkLCBKdW4gMjYsIDIwMTkgYXQgMDc6MTE6
MzlQTSArMDgwMCwgWGlhb3dlaSBCYW8gd3JvdGU6DQo+ID4gQ29tcGlsZSB0aGUgRVAgYW5kIFJD
IGRyaXZlcnMgc2VwYXJhdGVseSB3aXRoIGRpZmZlcmVudCBjb25maWd1cmF0aW9uDQo+ID4gb3B0
aW9ucywgdGhpcyBsb29rcyBjbGVhcmVyLg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogWGlhb3dl
aSBCYW8gPHhpYW93ZWkuYmFvQG54cC5jb20+DQo+ID4gLS0tDQo+ID4gdjI6DQo+ID4gIC0gTm8g
Y2hhbmdlLg0KPiA+DQo+ID4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL0tjb25maWcgIHwg
ICAyMCArKysrKysrKysrKysrKysrKystLQ0KPiA+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3
Yy9NYWtlZmlsZSB8ICAgIDMgKystDQo+ID4gIDIgZmlsZXMgY2hhbmdlZCwgMjAgaW5zZXJ0aW9u
cygrKSwgMyBkZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9j
b250cm9sbGVyL2R3Yy9LY29uZmlnDQo+ID4gYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9L
Y29uZmlnDQo+ID4gaW5kZXggYTZjZTFlZS4uYTQxY2NmNSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2
ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9LY29uZmlnDQo+ID4gKysrIGIvZHJpdmVycy9wY2kvY29u
dHJvbGxlci9kd2MvS2NvbmZpZw0KPiA+IEBAIC0xMzEsMTMgKzEzMSwyOSBAQCBjb25maWcgUENJ
X0tFWVNUT05FX0VQDQo+ID4gICAgICAgICBEZXNpZ25XYXJlIGNvcmUgZnVuY3Rpb25zIHRvIGlt
cGxlbWVudCB0aGUgZHJpdmVyLg0KPiA+DQo+ID4gIGNvbmZpZyBQQ0lfTEFZRVJTQ0FQRQ0KPiA+
IC0gICAgIGJvb2wgIkZyZWVzY2FsZSBMYXllcnNjYXBlIFBDSWUgY29udHJvbGxlciINCj4gPiAr
ICAgICBib29sICJGcmVlc2NhbGUgTGF5ZXJzY2FwZSBQQ0llIGNvbnRyb2xsZXIgLSBIb3N0IG1v
ZGUiDQo+ID4gICAgICAgZGVwZW5kcyBvbiBPRiAmJiAoQVJNIHx8IEFSQ0hfTEFZRVJTQ0FQRSB8
fCBDT01QSUxFX1RFU1QpDQo+ID4gICAgICAgZGVwZW5kcyBvbiBQQ0lfTVNJX0lSUV9ET01BSU4N
Cj4gPiAgICAgICBzZWxlY3QgTUZEX1NZU0NPTg0KPiA+ICAgICAgIHNlbGVjdCBQQ0lFX0RXX0hP
U1QNCj4gPiAgICAgICBoZWxwDQo+ID4gLSAgICAgICBTYXkgWSBoZXJlIGlmIHlvdSB3YW50IFBD
SWUgY29udHJvbGxlciBzdXBwb3J0IG9uIExheWVyc2NhcGUgU29Dcy4NCj4gPiArICAgICAgIFNh
eSBZIGhlcmUgaWYgeW91IHdhbnQgdG8gZW5hYmxlIFBDSWUgY29udHJvbGxlciBzdXBwb3J0IG9u
DQo+IExheWVyc2NhcGUNCj4gPiArICAgICAgIFNvQ3MgdG8gd29yayBpbiBIb3N0IG1vZGUuDQo+
ID4gKyAgICAgICBUaGlzIGNvbnRyb2xsZXIgY2FuIHdvcmsgZWl0aGVyIGFzIEVQIG9yIFJDLiBU
aGUNCj4gUkNXW0hPU1RfQUdUX1BFWF0NCj4gPiArICAgICAgIGRldGVybWluZXMgd2hpY2ggUENJ
ZSBjb250cm9sbGVyIHdvcmtzIGluIEVQIG1vZGUgYW5kIHdoaWNoDQo+IFBDSWUNCj4gPiArICAg
ICAgIGNvbnRyb2xsZXIgd29ya3MgaW4gUkMgbW9kZS4NCj4gPiArDQo+ID4gK2NvbmZpZyBQQ0lf
TEFZRVJTQ0FQRV9FUA0KPiA+ICsgICAgIGJvb2wgIkZyZWVzY2FsZSBMYXllcnNjYXBlIFBDSWUg
Y29udHJvbGxlciAtIEVuZHBvaW50IG1vZGUiDQo+ID4gKyAgICAgZGVwZW5kcyBvbiBPRiAmJiAo
QVJNIHx8IEFSQ0hfTEFZRVJTQ0FQRSB8fCBDT01QSUxFX1RFU1QpDQo+ID4gKyAgICAgZGVwZW5k
cyBvbiBQQ0lfRU5EUE9JTlQNCj4gPiArICAgICBzZWxlY3QgUENJRV9EV19FUA0KPiA+ICsgICAg
IGhlbHANCj4gPiArICAgICAgIFNheSBZIGhlcmUgaWYgeW91IHdhbnQgdG8gZW5hYmxlIFBDSWUg
Y29udHJvbGxlciBzdXBwb3J0IG9uDQo+IExheWVyc2NhcGUNCj4gPiArICAgICAgIFNvQ3MgdG8g
d29yayBpbiBFbmRwb2ludCBtb2RlLg0KPiA+ICsgICAgICAgVGhpcyBjb250cm9sbGVyIGNhbiB3
b3JrIGVpdGhlciBhcyBFUCBvciBSQy4gVGhlDQo+IFJDV1tIT1NUX0FHVF9QRVhdDQo+ID4gKyAg
ICAgICBkZXRlcm1pbmVzIHdoaWNoIFBDSWUgY29udHJvbGxlciB3b3JrcyBpbiBFUCBtb2RlIGFu
ZCB3aGljaA0KPiBQQ0llDQo+ID4gKyAgICAgICBjb250cm9sbGVyIHdvcmtzIGluIFJDIG1vZGUu
DQo+ID4NCj4gPiAgY29uZmlnIFBDSV9ISVNJDQo+ID4gICAgICAgZGVwZW5kcyBvbiBPRiAmJiAo
QVJNNjQgfHwgQ09NUElMRV9URVNUKSBkaWZmIC0tZ2l0DQo+ID4gYS9kcml2ZXJzL3BjaS9jb250
cm9sbGVyL2R3Yy9NYWtlZmlsZQ0KPiA+IGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvTWFr
ZWZpbGUNCj4gPiBpbmRleCBiMDg1ZGZkLi44MjRmZGU3IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZl
cnMvcGNpL2NvbnRyb2xsZXIvZHdjL01ha2VmaWxlDQo+ID4gKysrIGIvZHJpdmVycy9wY2kvY29u
dHJvbGxlci9kd2MvTWFrZWZpbGUNCj4gPiBAQCAtOCw3ICs4LDggQEAgb2JqLSQoQ09ORklHX1BD
SV9FWFlOT1MpICs9IHBjaS1leHlub3Mubw0KPiA+ICBvYmotJChDT05GSUdfUENJX0lNWDYpICs9
IHBjaS1pbXg2Lm8NCj4gPiAgb2JqLSQoQ09ORklHX1BDSUVfU1BFQVIxM1hYKSArPSBwY2llLXNw
ZWFyMTN4eC5vDQo+ID4gIG9iai0kKENPTkZJR19QQ0lfS0VZU1RPTkUpICs9IHBjaS1rZXlzdG9u
ZS5vDQo+ID4gLW9iai0kKENPTkZJR19QQ0lfTEFZRVJTQ0FQRSkgKz0gcGNpLWxheWVyc2NhcGUu
byBwY2ktbGF5ZXJzY2FwZS1lcC5vDQo+ID4gK29iai0kKENPTkZJR19QQ0lfTEFZRVJTQ0FQRSkg
Kz0gcGNpLWxheWVyc2NhcGUubw0KPiA+ICtvYmotJChDT05GSUdfUENJX0xBWUVSU0NBUEVfRVAp
ICs9IHBjaS1sYXllcnNjYXBlLWVwLm8NCj4gPiAgb2JqLSQoQ09ORklHX1BDSUVfUUNPTSkgKz0g
cGNpZS1xY29tLm8NCj4gPiAgb2JqLSQoQ09ORklHX1BDSUVfQVJNQURBXzhLKSArPSBwY2llLWFy
bWFkYThrLm8NCj4gPiAgb2JqLSQoQ09ORklHX1BDSUVfQVJUUEVDNikgKz0gcGNpZS1hcnRwZWM2
Lm8NCj4gPiAtLQ0KPiA+IDEuNy4xDQo+ID4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
