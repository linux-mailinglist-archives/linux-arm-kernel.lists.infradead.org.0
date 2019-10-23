Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CAFAE1037
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 04:52:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Cc+8ujXFqFnjGJAyYmrG0SMf5zVCpeU8vVyaFc9CLs=; b=Lzbbk7Z6jgys4j
	g5exk7beR3yy5T/rc9D03OWUP4lpGselV34hplvBBSSv5eOlC/VB6KDmIgsxBtxInMC3969lPwMlS
	deTBMQvXUB9tNViwe8X2ADD1Y1N/uII6LXXXLmq9fWkmddbt7yrMlyY2JNSbB6bjbARtu3meZi5TG
	pz1Kt9ibqCeAg3kdfCyV0w6fbRtEeK8yF82JhSW7qnOa0NR/PNadcr/BT+9L9cx+x6VGQtFx6PuKX
	209iXqLpPfx3pFSKr6eb4Z3hfzmtbRe7xUiqPTzfRIl5YRjnmFQZCBKWK8gnPyWww9pqDQNO+LhIF
	qqSJ2EEEKA+cJ3FKLnzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN6lD-00011J-1b; Wed, 23 Oct 2019 02:52:31 +0000
Received: from mail-eopbgr150057.outbound.protection.outlook.com
 ([40.107.15.57] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN6l3-00010c-NH
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 02:52:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OxxVEgqqpNJV9RQ2W7wp/xaD9RzrFOGGqBJFNkWXUnazhprK6lxdG+I0GH4A1cMjqH/DxJxRBvz71t3oEeopv4OVpfDuWKfOQ7XyPoJOauFJIRVWy9cIbSC+vHMrJYTkwIjPNGPh+SO6iJai2DKkOXlZcBxukotrIDsP5sdSlL89ExEUyRpFaUulIzoG3HcD43wom+3iACuL13u13SJj1NesHkd94ChKynm2hgJpAhdm0XZPDIILEWfs7EqXVo6fQxbF7PeQOVZgNjWwOeiFMx0DZxWQzu6yfAM8VmueZSLpP2QsA9N/IdHSE7ocYkl8lu2BkG2GFTFp+sHccVdLdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8IG1aAOv/Nt6RK3cp/JPIR3TQJv39g2UFp6qKhG1cw8=;
 b=PGJiZZ3btbBzf7ECw/SwiYdmKA3GLx/K3up97HoQ2Z7y9OVMFzloGqFyii8JHiq6hGiMEZTkyfINaiMIMqWDRxuqszv/lcS/DokaJI1wib3o+HxNVJ+b0ODPzA9E7Y9EB8em4uFNZzybP4ni0voNnYKblainY39S1nJZgJwq9+jY/z5TU/H7/7gzzS4fSp7OLfNB9oSIOLLUomOQoZP9zZecmxacy/MqXdHMZn3rEpIOCh6OQmea4POKK1yJgrzMDAM+jOuNUxQEsaUMAnRvKu3tCJypQQuN16fQnSB1r7ZJhk0O4c5uCmMf8JSBi9l52EQDMURnJqUC51QuVsFLvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8IG1aAOv/Nt6RK3cp/JPIR3TQJv39g2UFp6qKhG1cw8=;
 b=bKTS3jwkRNRUKkGI1vCtbBl/hjZBkOPeL1MFWarl+TquAABUDeQvwAyAhX55pzdiyXIY/rJ+4CCwAblTZrnGvHXyLP42Rbhjmj7XY1f6mJdAdIJgDeUttIrshzV1rF0O35g3ukfx6ap4q54YvrlalK9x6Jl/+lW81pGkGHiVXc4=
Received: from VE1PR04MB6768.eurprd04.prod.outlook.com (10.255.118.26) by
 VE1PR04MB6560.eurprd04.prod.outlook.com (20.179.234.89) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Wed, 23 Oct 2019 02:52:16 +0000
Received: from VE1PR04MB6768.eurprd04.prod.outlook.com
 ([fe80::50aa:3111:47b1:82d4]) by VE1PR04MB6768.eurprd04.prod.outlook.com
 ([fe80::50aa:3111:47b1:82d4%4]) with mapi id 15.20.2367.022; Wed, 23 Oct 2019
 02:52:16 +0000
From: Qiang Zhao <qiang.zhao@nxp.com>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>, Leo Li <leoyang.li@nxp.com>
Subject: RE: [PATCH 0/7] towards QE support on ARM
Thread-Topic: [PATCH 0/7] towards QE support on ARM
Thread-Index: AQHVhbLuscviMhsVQkGS0n9+bwSiSadg1oMAgAAJ4ICAABDsgIAD2sSAgADhagCAAERzIIAAho0AgAETvgA=
Date: Wed, 23 Oct 2019 02:52:15 +0000
Message-ID: <VE1PR04MB6768D3023802D62AB9FE2F6E916B0@VE1PR04MB6768.eurprd04.prod.outlook.com>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <VE1PR04MB6687DA0268FAF03D3E77A23B8F6C0@VE1PR04MB6687.eurprd04.prod.outlook.com>
 <e02fa027-9c78-3272-d2d7-7ad2b0ed3ab0@rasmusvillemoes.dk>
 <CADRPPNREUK1SVxO4P5qb2COn+T04dtYgpVEzrveKUt16hBqAtQ@mail.gmail.com>
 <679bf33b-8c05-b77a-0cb2-d79dc5bfbe75@rasmusvillemoes.dk>
 <CADRPPNSiMUy77Dhxjg03sHDxyZzWf_BP8a5+fCncbynyO_cNGg@mail.gmail.com>
 <VE1PR04MB676825D5709839AEF75ED44C91680@VE1PR04MB6768.eurprd04.prod.outlook.com>
 <43033011-1a2a-dea3-e3c9-75895f997407@rasmusvillemoes.dk>
In-Reply-To: <43033011-1a2a-dea3-e3c9-75895f997407@rasmusvillemoes.dk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiang.zhao@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 4f0e611e-0318-4741-81b7-08d75764035a
x-ms-traffictypediagnostic: VE1PR04MB6560:|VE1PR04MB6560:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB65601DD973721416A91E6A3A916B0@VE1PR04MB6560.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 019919A9E4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(396003)(39860400002)(376002)(346002)(199004)(189003)(13464003)(25786009)(52536014)(256004)(5660300002)(14454004)(66066001)(478600001)(446003)(11346002)(476003)(486006)(64756008)(66556008)(66476007)(66446008)(44832011)(66946007)(186003)(26005)(33656002)(86362001)(76116006)(71200400001)(71190400001)(6116002)(99286004)(3846002)(76176011)(6506007)(53546011)(102836004)(2906002)(7696005)(110136005)(54906003)(6636002)(316002)(55016002)(9686003)(6436002)(6246003)(81166006)(81156014)(8676002)(8936002)(4326008)(229853002)(7736002)(305945005)(74316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6560;
 H:VE1PR04MB6768.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fYKXrcPqHny2rw4F80nQzaFbLxaybaO4KVcUrezLLHNK90wfQkxb9wfFJ3WYJJU5zTl4x4yyP45erAdUvrG6Xet47AIMexpeN6v71BZOiCnGDMkbkK3+QORYUcUYF1iGiC6NHKqzOBcz5SmnLBoSZdF9NnId3q9xINQbbKsO0feQqHW66qzWdEfdduT3OuZCQD1T9+cU3P9oRoEAc/+3zMy7QhhaMZEd63JnUQwfNxi9dJ7Oh853ca4kxfjvSNaYmlxXgdsUBLWXn/Zsc8xP7/XJoXaUviaITMnVusT9k17LhgB2mAYXJnRMGIpX3nkGX/+DAZV2xRIKyNSTOmDb5Ls0XdEWOKSah8dOHpz1fYMvj1SbedoCvuPU7n7Wwywc4RPRTrkAUKI1zeY09UUpyMZrTPwi+1eB7nWUieJ4E64UkD91AVtQ+Q38j9LfoVCb
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f0e611e-0318-4741-81b7-08d75764035a
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2019 02:52:15.9584 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5yc+eEKkwj0rZlGymP3Sar9dpIcBAvJNwixaf1FqQqrhR7iUTmH3igIPUpIgwpgg/3gXStZjP1nS0vkjWPEsyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6560
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_195221_761858_047E9B89 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.57 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Timur Tabi <timur@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjIvMTAvMjAxOSAxODoxOCwgUmFzbXVzIFZpbGxlbW9lcyA8bGludXhAcmFzbXVzdmlsbGVt
b2VzLmRrPiB3cm90ZToNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUmFz
bXVzIFZpbGxlbW9lcyA8bGludXhAcmFzbXVzdmlsbGVtb2VzLmRrPg0KPiBTZW50OiAyMDE55bm0
MTDmnIgyMuaXpSAxODoxOA0KPiBUbzogUWlhbmcgWmhhbyA8cWlhbmcuemhhb0BueHAuY29tPjsg
TGVvIExpIDxsZW95YW5nLmxpQG54cC5jb20+DQo+IENjOiBUaW11ciBUYWJpIDx0aW11ckBrZXJu
ZWwub3JnPjsgR3JlZyBLcm9haC1IYXJ0bWFuDQo+IDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9y
Zz47IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7DQo+IGxpbnV4LXNlcmlhbEB2Z2VyLmtl
cm5lbC5vcmc7IEppcmkgU2xhYnkgPGpzbGFieUBzdXNlLmNvbT47DQo+IGxpbnV4cHBjLWRldkBs
aXN0cy5vemxhYnMub3JnOyBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcNCj4g
U3ViamVjdDogUmU6IFtQQVRDSCAwLzddIHRvd2FyZHMgUUUgc3VwcG9ydCBvbiBBUk0NCj4gDQo+
IE9uIDIyLzEwLzIwMTkgMDQuMjQsIFFpYW5nIFpoYW8gd3JvdGU6DQo+ID4gT24gTW9uLCBPY3Qg
MjIsIDIwMTkgYXQgNjoxMSBBTSBMZW8gTGkgd3JvdGUNCj4gDQo+ID4+IFJpZ2h0LiAgSSdtIHJl
YWxseSBpbnRlcmVzdGVkIGluIGdldHRpbmcgdGhpcyBhcHBsaWVkIHRvIG15IHRyZWUgYW5kDQo+
ID4+IG1ha2UgaXQgdXBzdHJlYW0uICBaaGFvIFFpYW5nLCBjYW4geW91IGhlbHAgdG8gcmV2aWV3
IFJhc211cydzDQo+ID4+IHBhdGNoZXMgYW5kIGNvbW1lbnQ/DQo+ID4NCj4gPiBBcyB5b3Uga25v
dywgSSBtYWludGFpbmVkIGEgc2ltaWxhciBwYXRjaHNldCByZW1vdmluZyBQUEMsIGFuZCBzb21l
b25lDQo+IHRvbGQgbWUgcWVfaWMgc2hvdWxkIG1vdmVkIGludG8gZHJpdmVycy9pcnFjaGlwLy4N
Cj4gPiBJIGFsc28gdGhvdWdodCBxZV9pYyBpcyBhIGludGVycnVwdCBjb250cm9sIGRyaXZlciwg
c2hvdWxkIGJlIG1vdmVkIGludG8gZGlyDQo+IGlycWNoaXAuDQo+IA0KPiBZZXMsIGFuZCBJIGFs
c28gcGxhbiB0byBkbyB0aGF0IGF0IHNvbWUgcG9pbnQuIEhvd2V2ZXIsIHRoYXQncyBvcnRob2dv
bmFsIHRvDQo+IG1ha2luZyB0aGUgZHJpdmVyIGJ1aWxkIG9uIEFSTSwgc28gSSBkb24ndCB3YW50
IHRvIG1peCB0aGUgdHdvLiBNYWtpbmcgaXQNCj4gdXNhYmxlIG9uIEFSTSBpcyBteS9vdXIgcHJp
b3JpdHkgY3VycmVudGx5Lg0KPiANCj4gSSdkIGFwcHJlY2lhdGUgeW91ciBpbnB1dCBvbiBteSBw
YXRjaGVzLg0KDQpZZXMsIHdlIGNhbiBwdXQgdGhpcyBwYXRjaHNldCBpbiBmaXJzdCBwbGFjZSwg
ZW5zdXJlIGl0IGNhbiBidWlsZCBhbmQgd29yayBvbiBBUk0sIHRoZW4gcHVzaCBhbm90aGVyIHBh
dGNoc2V0IHRvIG1vdmUgcWVfaWMuDQoNCkJlc3QgUmVnYXJkcywNClFpYW5nDQoNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
