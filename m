Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EEAB8AC93
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 04:11:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4dYKqbssWB/eVD2pcWJY8EWrhQX1ZBfeRADFVyCZO/k=; b=sFM0yUnJu6vanU
	/g4xu7Xk0QXxlZIdM2QDfy9IBsGrmOSB3uKkq1NaB7JT6U7M2w3RavNgRCddHXO7xuGPLL1M8jkBK
	NF40BxhxG2aZ2xQoRCn0d5c8KaC0QUG2EjhetOS9a++kHY35FwOg94u+UjLMBFr1BFHDDCVK+PCCQ
	rQbrRZPPy8440hTBznPyH3Y0HLZ3ItW9sXjb75a/BgHhwjt7P81VYpzkIEK+sHICBZDj9SWsCX2/h
	mwMRDqu/iYkYNAx6sLGLHQ3jopbSCBSd5gczXlHrV8glktobpUq97MIPAvEpvV6tDUZs6+3JCIHnS
	RU4IhCL8ZfgdJRE97SaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxMHP-0005sg-Hy; Tue, 13 Aug 2019 02:11:19 +0000
Received: from mail-eopbgr150049.outbound.protection.outlook.com
 ([40.107.15.49] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxMHC-0005sB-L2
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 02:11:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ML8vmNOOY9LWDdOWanWpKwWn+1zamoVnP5pwNIncrYZSKlKMu4blboD6QU4+3XldiEeQaIbLqP1E7IbXtwv+pTTQ2Rw4LQSGTa6/dOy9m1FJDUK83qJVX4jnneBW9EpA9kMFndNaA5vXka9GZPSFoiqTZlupQM4U3fVhQpzImGpMiqcUs5TXz1uf3Sqtyoj1OtLWN7/p2hy7Fajw2xvqfJI2qijDGxikyGN+eSKn6ol4oWzBYM1iEfOeFOnpWw0iCRb2hnjf0PEC5Vx+UI0Fxb3asMZi5tuspWFhDeeaySrxjBun6x15ift6uhswSjd/AXCgtbbKOTRDd0DrtoL5kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QY5A5aHuuuxvoSoBVhYWYYXGqyBOhq62JLJCec60N8c=;
 b=FA9zeEEEQoEwZW6MNW6fBS2s/Gc5TzO1MpVsFRePAsN0XlLRuXl9QyWOeInciqfuoQmYW+EV5qzi6PPb01o/eDOA2WHnsaKLfrl89FxzYEKqx5XDFhHjWMa+Z5gwJVFpfcVr0U63/Mp5uoB68o/8BCcGQ6ion9KWYQnwq4hBXVfHqDTQO+cqxKTyR7EWPpx5HU99n7WAVfmtcaNtoNGvKarndOynbSsMO/d4a+K2yGReO7MEN35xVEBlzsZm8DCLcTuY6HbTIA5LQUtSiYPS1YO66V0lIMYmOjBcm7d6fWP/7jMysARpFfTjsf1Wd7k/faXeJonOwyv1qMYjsipLBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QY5A5aHuuuxvoSoBVhYWYYXGqyBOhq62JLJCec60N8c=;
 b=q4GG3Ew2DEySwFChAHR6ZNuwsD2Y7Vg686YcQFe+NVq3IcCKB7HHTu4bMHwQFsJWW9/MD+JulykmB7JeHhj1c3SVuLkMH9tgh7CmAlWvriMsU+ZIB6Vf+1yd3+D6xTxFVBmTVlaGJiro/lrar+FjIoe7xUn/wDG+ob90dOLhlfI=
Received: from AM5PR04MB3299.eurprd04.prod.outlook.com (10.173.255.158) by
 AM5PR04MB3171.eurprd04.prod.outlook.com (10.167.171.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.13; Tue, 13 Aug 2019 02:10:55 +0000
Received: from AM5PR04MB3299.eurprd04.prod.outlook.com
 ([fe80::5012:d47a:1f5d:9b84]) by AM5PR04MB3299.eurprd04.prod.outlook.com
 ([fe80::5012:d47a:1f5d:9b84%5]) with mapi id 15.20.2157.022; Tue, 13 Aug 2019
 02:10:55 +0000
From: Xiaowei Bao <xiaowei.bao@nxp.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: RE: [EXT] Re: [PATCHv3 1/2] PCI: layerscape: Add the bar_fixed_64bit
 property in EP driver.
Thread-Topic: [EXT] Re: [PATCHv3 1/2] PCI: layerscape: Add the bar_fixed_64bit
 property in EP driver.
Thread-Index: AQHVLVOAWtzEt5CX80Ox8lgMr/yVNqb3kiqAgAAGWLCAABD9gIAA9Fmw
Date: Tue, 13 Aug 2019 02:10:54 +0000
Message-ID: <AM5PR04MB3299D91F9886FA45EF0ABB9EF5D20@AM5PR04MB3299.eurprd04.prod.outlook.com>
References: <20190628013826.4705-1-xiaowei.bao@nxp.com>
 <20190812101213.GB20861@e121166-lin.cambridge.arm.com>
 <AM5PR04MB329929A0B046F6BEB94B0120F5D30@AM5PR04MB3299.eurprd04.prod.outlook.com>
 <20190812113543.GA25040@e121166-lin.cambridge.arm.com>
In-Reply-To: <20190812113543.GA25040@e121166-lin.cambridge.arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xiaowei.bao@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: edbdbca3-83c3-439a-069b-08d71f93795e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM5PR04MB3171; 
x-ms-traffictypediagnostic: AM5PR04MB3171:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM5PR04MB3171E27C3826C75D3804D6E5F5D20@AM5PR04MB3171.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 01283822F8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(396003)(376002)(136003)(39860400002)(189003)(199004)(13464003)(478600001)(81166006)(81156014)(33656002)(966005)(74316002)(7736002)(45080400002)(316002)(6506007)(99286004)(102836004)(52536014)(53546011)(305945005)(71200400001)(7696005)(86362001)(71190400001)(8936002)(8676002)(186003)(5660300002)(76176011)(26005)(4326008)(6246003)(14454004)(66446008)(66556008)(446003)(66946007)(44832011)(66476007)(64756008)(486006)(476003)(11346002)(256004)(76116006)(54906003)(2906002)(53936002)(6436002)(66066001)(7416002)(6116002)(55016002)(3846002)(6306002)(9686003)(229853002)(25786009)(6916009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR04MB3171;
 H:AM5PR04MB3299.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: tkCJfCxydU78xhGFtKPkYUmXvMCIsInDiMuMTYDe2gmNP8F3AGhm2s6Ubz5q/aE2lef76mgUMlGudEQpbR+zyOLQo2zm5CmZxQxbiEuWpQqU7Yv48dUtJg6nIZfdGEHzIVEZvfZ9nLqyS6iv0WAQ4EYyEunaW38vBw4STyFW4FrXINK3+bi1QhickH5vObfMd71HCp7QZfZUnWq73nukjWnL0C0cOLIIKu98iRGXFcY861RxB6jZB4rJygo9qy8qLmDceQBnsaYvOY56p9whOmWM0UzrHcUQRgAkj6QEnmNFL0C0jYXmmEwKRCknr2WrnmNw7lHL/SK94Q50RZA9zLqOiQSSXErCLTNJ62wi1mp+BeD2jp5hFfoDIYslK7ZjI3fIFd72Ou5ioAAUmXLDE2LWFRRjAT3xcN0Fpqqntaw=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: edbdbca3-83c3-439a-069b-08d71f93795e
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Aug 2019 02:10:55.0714 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JtL0RzV8r/njLHWIMZSb9mGF06rg8AHsTmA3ZgWFy8xpE5Qs6B2KY3yKHxQnXK6jv4OyN7QtO9IrlKie8MCjyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR04MB3171
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_191106_700200_0C2923A4 
X-CRM114-Status: GOOD (  29.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.49 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.15.49 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Roy Zang <roy.zang@nxp.com>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "kstewart@linuxfoundation.org" <kstewart@linuxfoundation.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "pombredanne@nexb.com" <pombredanne@nexb.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>, "kishon@ti.com" <kishon@ti.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "shawn.lin@rock-chips.com" <shawn.lin@rock-chips.com>,
 Mingkai Hu <mingkai.hu@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTG9yZW56byBQaWVyYWxp
c2kgPGxvcmVuem8ucGllcmFsaXNpQGFybS5jb20+DQo+IFNlbnQ6IDIwMTnlubQ45pyIMTLml6Ug
MTk6MzYNCj4gVG86IFhpYW93ZWkgQmFvIDx4aWFvd2VpLmJhb0BueHAuY29tPg0KPiBDYzoga2lz
aG9uQHRpLmNvbTsgYmhlbGdhYXNAZ29vZ2xlLmNvbTsgcm9iaCtkdEBrZXJuZWwub3JnOw0KPiBt
YXJrLnJ1dGxhbmRAYXJtLmNvbTsgc2hhd25ndW9Aa2VybmVsLm9yZzsgTGVvIExpDQo+IDxsZW95
YW5nLmxpQG54cC5jb20+OyBhcm5kQGFybmRiLmRlOyBncmVna2hAbGludXhmb3VuZGF0aW9uLm9y
ZzsgTS5oLg0KPiBMaWFuIDxtaW5naHVhbi5saWFuQG54cC5jb20+OyBNaW5na2FpIEh1IDxtaW5n
a2FpLmh1QG54cC5jb20+OyBSb3kNCj4gWmFuZyA8cm95LnphbmdAbnhwLmNvbT47IGtzdGV3YXJ0
QGxpbnV4Zm91bmRhdGlvbi5vcmc7DQo+IHBvbWJyZWRhbm5lQG5leGIuY29tOyBzaGF3bi5saW5A
cm9jay1jaGlwcy5jb207DQo+IGxpbnV4LXBjaUB2Z2VyLmtlcm5lbC5vcmc7IGRldmljZXRyZWVA
dmdlci5rZXJuZWwub3JnOw0KPiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7DQo+IGxpbnV4cHBjLWRldkBsaXN0cy5vemxh
YnMub3JnDQo+IFN1YmplY3Q6IFJlOiBbRVhUXSBSZTogW1BBVENIdjMgMS8yXSBQQ0k6IGxheWVy
c2NhcGU6IEFkZCB0aGUgYmFyX2ZpeGVkXzY0Yml0DQo+IHByb3BlcnR5IGluIEVQIGRyaXZlci4N
Cj4gDQo+IENhdXRpb246IEVYVCBFbWFpbA0KPiANCj4gT24gTW9uLCBBdWcgMTIsIDIwMTkgYXQg
MTA6Mzk6MDBBTSArMDAwMCwgWGlhb3dlaSBCYW8gd3JvdGU6DQo+ID4NCj4gPg0KPiA+ID4gLS0t
LS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+IEZyb206IExvcmVuem8gUGllcmFsaXNpIDxs
b3JlbnpvLnBpZXJhbGlzaUBhcm0uY29tPg0KPiA+ID4gU2VudDogMjAxOeW5tDjmnIgxMuaXpSAx
ODoxMg0KPiA+ID4gVG86IFhpYW93ZWkgQmFvIDx4aWFvd2VpLmJhb0BueHAuY29tPjsga2lzaG9u
QHRpLmNvbQ0KPiA+ID4gQ2M6IGJoZWxnYWFzQGdvb2dsZS5jb207IHJvYmgrZHRAa2VybmVsLm9y
ZzsgbWFyay5ydXRsYW5kQGFybS5jb207DQo+ID4gPiBzaGF3bmd1b0BrZXJuZWwub3JnOyBMZW8g
TGkgPGxlb3lhbmcubGlAbnhwLmNvbT47IGFybmRAYXJuZGIuZGU7DQo+ID4gPiBncmVna2hAbGlu
dXhmb3VuZGF0aW9uLm9yZzsgTS5oLiBMaWFuIDxtaW5naHVhbi5saWFuQG54cC5jb20+Ow0KPiA+
ID4gTWluZ2thaSBIdSA8bWluZ2thaS5odUBueHAuY29tPjsgUm95IFphbmcgPHJveS56YW5nQG54
cC5jb20+Ow0KPiA+ID4ga3N0ZXdhcnRAbGludXhmb3VuZGF0aW9uLm9yZzsgcG9tYnJlZGFubmVA
bmV4Yi5jb207DQo+ID4gPiBzaGF3bi5saW5Acm9jay1jaGlwcy5jb207IGxpbnV4LXBjaUB2Z2Vy
Lmtlcm5lbC5vcmc7DQo+ID4gPiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgbGludXgta2Vy
bmVsQHZnZXIua2VybmVsLm9yZzsNCj4gPiA+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZzsgbGludXhwcGMtZGV2QGxpc3RzLm96bGFicy5vcmcNCj4gPiA+IFN1YmplY3Q6IFtF
WFRdIFJlOiBbUEFUQ0h2MyAxLzJdIFBDSTogbGF5ZXJzY2FwZTogQWRkIHRoZQ0KPiA+ID4gYmFy
X2ZpeGVkXzY0Yml0IHByb3BlcnR5IGluIEVQIGRyaXZlci4NCj4gPiA+DQo+ID4gPiBDYXV0aW9u
OiBFWFQgRW1haWwNCj4gPiA+DQo+ID4gPiBGaXJzdCBvZmY6DQo+ID4gPg0KPiA+ID4gVHJpbSB0
aGUgQ0MgbGlzdCwgeW91IENDJ2VkIG1haW50YWluZXJzIChhbmQgbWFpbGluZyBsaXN0cykgZm9y
IG5vDQo+ID4gPiByZWFzb25zIHdoYXRzb3Zlci4NCj4gPiBbWGlhb3dlaSBCYW9dSGkgTG9yZW56
bywgSSBhbSBub3QgY2xlYXIgd2h5IHRoZSBtYWlsIGxpc3QgaXMgdGhlIENDLCBJIHVzZSB0aGUN
Cj4gY29tbWFuZCAiZ2l0IHNlbmQtZW1haWwgLS10byIsIEkgd2lsbCB0cnkgdG8gc2VuZCB0aGUg
cGF0Y2ggYWdhaW4sIGRvIEkgbmVlZCB0bw0KPiBtb2RpZnkgdGhlIHZlcnNpb24gaXMgdjQgd2hl
biBJIHNlbmQgdGhpcyBwYXRjaCBhZ2Fpbj8NCj4gDQo+IFllcyB5b3UgZG8uDQo+IA0KPiBXcmFw
IGxpbmVzIHRvIG1heCA4MCBjaGFyYWN0ZXJzLiBUaGVyZSBpcyBubyBuZWVkIHRvIGFkZCBbWGlh
b3dlaSBCYW9dLg0KT0ssIHRoYW5rcyBhIGxvdC4NCj4gDQo+IDEpIFJlYWQsIGVtYWlsIGV0aXF1
ZXR0ZQ0KPiANCj4gaHR0cHM6Ly9ldXIwMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNv
bS8/dXJsPWh0dHBzJTNBJTJGJTJGa2VybmVsDQo+IG5ld2JpZXMub3JnJTJGUGF0Y2hDdWx0dXJl
JmFtcDtkYXRhPTAyJTdDMDElN0N4aWFvd2VpLmJhbyU0MG54cC5jDQo+IG9tJTdDNzNhM2I2MTYw
YWFkNDAxYjcyZDIwOGQ3MWYxOTNhZTElN0M2ODZlYTFkM2JjMmI0YzZmYTkyY2QNCj4gOTljNWMz
MDE2MzUlN0MwJTdDMCU3QzYzNzAxMjA2NTU0ODM1MTIyNiZhbXA7c2RhdGE9eTZ4YTVuTWtCDQo+
IHFrV3o3U0JGZGMlMkYwbGNRdnpJJTJGOUhqRXlDNSUyQmswUnhjekklM0QmYW1wO3Jlc2VydmVk
PTANCj4gDQo+IDIpIGdldF9tYWludGFpbmVyLnBsIC1mIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIv
ZHdjL3BjaS1sYXllcnNjYXBlLmMNCj4gDQo+IENvbXBhcmUgdGhlIG91dHB1dCB0byB0aGUgcGVv
cGxlIGluIENDLCB0cmltIGl0IGFjY29yZGluZ2x5Lg0KPiANCj4gMykgVGhlIE5YUCBtYWludGFp
bmVycyBpbiB0aGUgTUFJTlRBSU5FUlMgZmlsZSBoYXZlIG5vdCBnaXZlbiBhIHNpbmdsZQ0KPiAg
ICBjb21tZW50IGZvciB0aGlzIHBhdGNoc2V0LiBFaXRoZXIgdGhleSBzaG93IHVwIG9yIEkgd2ls
bCByZW1vdmUgdGhlbQ0KPiAgICBmcm9tIHRoZSBNQUlOVEFJTkVSUyBsaXN0Lg0KPiANCj4gNCkg
QmVmb3JlIHN1Ym1pdHRpbmcgcGF0Y2hlcywgdGFsayB0byBzb21lb25lIGF0IE5YUCB3aG8gY2Fu
IGhlbHAgeW91DQo+ICAgIGZvcm1hdCB0aGVtIGluIHByZXBhcmF0aW9uIGZvciBwb3N0aW5nLCBJ
IGRvIG5vdCBoYXZlIHRpbWUgdG8gd3JpdGUNCj4gICAgZ3VpZGVsaW5lcyBmb3IgZXZlcnlvbmUg
cG9zdGluZyBvbiBsaW51eC1wY2ksIHNvcnJ5LCB0aGUgaW5mb3JtYXRpb24NCj4gICAgaXMgb3V0
IHRoZXJlIGlmIHlvdSBjYXJlIHRvIHJlYWQgaXQuDQo+IA0KPiBUaGFua3MsDQo+IExvcmVuem8N
Cj4gDQo+ID4gPg0KPiA+ID4gVGhlbiwgcmVhZCB0aGlzOg0KPiA+ID4NCj4gPiA+IGh0dHBzOi8v
bG9yZS5rZQ0KPiA+ID4NCj4gcm5lbC5vcmclMkZsaW51eC1wY2klMkYyMDE3MTAyNjIyMzcwMS5H
QTI1NjQ5JTQwYmhlbGdhYXMtZ2xhcHRvcC5yb2ENCj4gPiA+DQo+IG0uY29ycC5nb29nbGUuY29t
JTJGJmFtcDtkYXRhPTAyJTdDMDElN0N4aWFvd2VpLmJhbyU0MG54cC5jb20lNw0KPiA+ID4NCj4g
QzFjNTg2MTc4ZTIzYzQyM2EwZTg4MDhkNzFmMGQ4ZjZmJTdDNjg2ZWExZDNiYzJiNGM2ZmE5MmNk
OTljNWMzMA0KPiA+ID4NCj4gMTYzNSU3QzAlN0MwJTdDNjM3MDEyMDE1NDI2Nzg4NTc1JmFtcDtz
ZGF0YT0zYngxYkRGSXppazhGbkQwd2wNCj4gPiA+IGR1QVV2N3d0TGREMUozaFEzeE5IMnhtRlkl
M0QmYW1wO3Jlc2VydmVkPTANCj4gPiA+DQo+ID4gPiBhbmQgbWFrZSB5b3VyIHBhdGNoZXMgY29t
cGxpYW50IHBsZWFzZS4NCj4gPiA+DQo+ID4gPiBPbiBGcmksIEp1biAyOCwgMjAxOSBhdCAwOToz
ODoyNUFNICswODAwLCBYaWFvd2VpIEJhbyB3cm90ZToNCj4gPiA+ID4gVGhlIFBDSWUgY29udHJv
bGxlciBvZiBsYXllcnNjYXBlIGp1c3QgaGF2ZSA0IEJBUnMsIEJBUjAgYW5kIEJBUjENCj4gPiA+
ID4gaXMgMzJiaXQsIEJBUjMgYW5kIEJBUjQgaXMgNjRiaXQsIHRoaXMgaXMgZGV0ZXJtaW5lZCBi
eSBoYXJkd2FyZSwNCj4gPiA+ID4gc28gc2V0IHRoZSBiYXJfZml4ZWRfNjRiaXQgd2l0aCAweDE0
Lg0KPiA+ID4gPg0KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBYaWFvd2VpIEJhbyA8eGlhb3dlaS5i
YW9AbnhwLmNvbT4NCj4gPiA+ID4gLS0tDQo+ID4gPiA+IHYyOg0KPiA+ID4gPiAgLSBSZXBsYWNl
IHZhbHVlIDB4MTQgd2l0aCBhIG1hY3JvLg0KPiA+ID4gPiB2MzoNCj4gPiA+ID4gIC0gTm8gY2hh
bmdlLg0KPiA+ID4gPg0KPiA+ID4gPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpLWxh
eWVyc2NhcGUtZXAuYyB8ICAgIDEgKw0KPiA+ID4gPiAgMSBmaWxlcyBjaGFuZ2VkLCAxIGluc2Vy
dGlvbnMoKyksIDAgZGVsZXRpb25zKC0pDQo+ID4gPiA+DQo+ID4gPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ktbGF5ZXJzY2FwZS1lcC5jDQo+ID4gPiA+IGIv
ZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpLWxheWVyc2NhcGUtZXAuYw0KPiA+ID4gPiBp
bmRleCBiZTYxZDk2Li4yMjdjMzNiIDEwMDY0NA0KPiA+ID4gPiAtLS0gYS9kcml2ZXJzL3BjaS9j
b250cm9sbGVyL2R3Yy9wY2ktbGF5ZXJzY2FwZS1lcC5jDQo+ID4gPiA+ICsrKyBiL2RyaXZlcnMv
cGNpL2NvbnRyb2xsZXIvZHdjL3BjaS1sYXllcnNjYXBlLWVwLmMNCj4gPiA+ID4gQEAgLTQ0LDYg
KzQ0LDcgQEAgc3RhdGljIGludCBsc19wY2llX2VzdGFibGlzaF9saW5rKHN0cnVjdCBkd19wY2ll
DQo+ICpwY2kpDQo+ID4gPiA+ICAgICAgIC5saW5rdXBfbm90aWZpZXIgPSBmYWxzZSwNCj4gPiA+
ID4gICAgICAgLm1zaV9jYXBhYmxlID0gdHJ1ZSwNCj4gPiA+ID4gICAgICAgLm1zaXhfY2FwYWJs
ZSA9IGZhbHNlLA0KPiA+ID4gPiArICAgICAuYmFyX2ZpeGVkXzY0Yml0ID0gKDEgPDwgQkFSXzIp
IHwgKDEgPDwgQkFSXzQpLA0KPiA+ID4NCj4gPiA+IEkgd291bGQgYXBwcmVjaWF0ZSBLaXNob24n
cyBBQ0sgb24gdGhpcy4NCj4gPiA+DQo+ID4gPiBMb3JlbnpvDQo+ID4gPg0KPiA+ID4gPiAgfTsN
Cj4gPiA+ID4NCj4gPiA+ID4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcGNpX2VwY19mZWF0dXJlcyoN
Cj4gPiA+ID4gLS0NCj4gPiA+ID4gMS43LjENCj4gPiA+ID4NCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
