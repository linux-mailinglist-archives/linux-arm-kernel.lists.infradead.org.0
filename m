Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E65EAB74D9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 10:15:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FoMAvDPk4FUx0S8RCdp3anF33ELz3nHkDqCmtBOUI9g=; b=CqKFCnlRLzuZba
	JMYqJnIwEZQ0c8l0wqIW/rM2OL/F/edFslOkvr6ChsoSOOvR+Xbgu4c769O+/YJ9GVJIyQmoIiQXd
	J1ENxmhlHGTCf1XJKRHy6DLKRm7Jv9bk6OLlnv0mXhyVFRpQyx/ByaSCTUDFoClAH3fMlLKHlodf0
	ab+F9s92W3es5CIKh6s+bZ3ACzKlA5o5oaQCJJ3OhyvMJmtu8G+yPkuRA2CMyx/rZrK77YW8LahoA
	/1JUbe7Wx6nAuhVVkALvXbaL2tDsbFRMUzRJmt/cyAmacHbxM1f7yv9ErAETp6icx8dAUzKbs3cY0
	J+VnWPkU48ZaRPuATJXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iArb7-00033K-GU; Thu, 19 Sep 2019 08:15:29 +0000
Received: from mail-eopbgr50054.outbound.protection.outlook.com ([40.107.5.54]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iArah-0001qw-Tm
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 08:15:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NJDnzsZlZYxC6bipt0/u6T9EzVIxBeSCpO4Dmbs1YU45RoeaY2SuzwBM2tqT5F1dkTy5qiaE7ivFVtAjRqREXIXM0Cmv4uPnNnO0+WmAhWLmbcYA9EEuWlAzFvX8lNSBXxm0mhKJiQdolUQBQW50Ef5gkyYJGLCukJlRGT2B7LZ/h5K/4kaJcahbG6//URk16tnHP3VetU8hDl8LFyu6T/OK7uvcrAr+5zKY4uFO6HiX83dESDJraqTZu24wtPXwa23euVGp5osao8uvzhZHrtAexzit+wLFYVHsl4MiNi1IB3FmMZis94DeCLUsG/wxjJp5GbZFeXVDOyQ86o97wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jNsO/aKFejF6wkC0wm1Bk3G6tklfVKxXdux2QpuKDFk=;
 b=P7hy7pRx0eof9GfL8gtm/O2ZgjYPa3BR4KSeFe9UYmlzhQQtFaYGGpQUI28idRwblOn28/nfWpdpHMiUqDHdgnr01SLIwF0Ym6Tx1KLEomdfiYZCzw/qqPR+f+LWNMqmu9gQ0OsA4Qtpi3eKqb7kAdh+Z57eBCt0dUzMyMW8JJiQZtdCFh9gRp0UNkUZyLfsggLPvOriZYOP8i7beTKJ12adc61LKQQwCtBePsH7a3yR+/Up/RVmjzE/sM2950JvNGa0HKT3nlB6bHl+4Iaq6HEpC7j9h5qrUdIl3aOM+AAi9sBwyMYCYTNyPHhJypKZmnciSMNkZkwftcQNOkQQJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jNsO/aKFejF6wkC0wm1Bk3G6tklfVKxXdux2QpuKDFk=;
 b=Oh6umWc6R8IgX8qZbLG6uJsIFx7JEPClKcET1ExUJsHkYySdQv+6zqHxOtTQTTP+WvyKXb8w/Rkyzj91KjfQJ87uvOc16UJfH4GD8w78ZV+++a5NOQ/wfKtROCgKBZzQCmZAb7k7bDf+mT75/8u/lnCxwicTrywEuQNQD4ZZyBM=
Received: from VI1PR0401MB2237.eurprd04.prod.outlook.com (10.169.132.138) by
 VI1PR0401MB2352.eurprd04.prod.outlook.com (10.169.134.137) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.18; Thu, 19 Sep 2019 08:15:00 +0000
Received: from VI1PR0401MB2237.eurprd04.prod.outlook.com
 ([fe80::40fb:b35c:722a:101f]) by VI1PR0401MB2237.eurprd04.prod.outlook.com
 ([fe80::40fb:b35c:722a:101f%10]) with mapi id 15.20.2263.023; Thu, 19 Sep
 2019 08:15:00 +0000
From: "Y.b. Lu" <yangbo.lu@nxp.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: RE: [REGRESSION] sdhci no longer detects SD cards on LX2160A
Thread-Topic: [REGRESSION] sdhci no longer detects SD cards on LX2160A
Thread-Index: AQHVbLJSA+GEI3GLz0ux+LeK9AebcqcvhCUAgAADuYCAACfPAIAACaWAgAAHKgCAAA5TAIAACaeAgAAEvoCAAAJUgIAAAuGAgAACVoCAAAFogIAAQKgAgAJAkDCAADA5gIAAExlA
Date: Thu, 19 Sep 2019 08:15:00 +0000
Message-ID: <VI1PR0401MB2237E1B46D540B4362417AEEF8890@VI1PR0401MB2237.eurprd04.prod.outlook.com>
References: <20190917114210.GM25745@shell.armlinux.org.uk>
 <20190917123326.GN25745@shell.armlinux.org.uk>
 <20190917130759.GO25745@shell.armlinux.org.uk>
 <CAOMZO5DXv8g5qTGdvobDdLWim+tW=vK4+K=P-VqJK23KERMhJw@mail.gmail.com>
 <20190917133317.GQ25745@shell.armlinux.org.uk>
 <CAOMZO5DS_1Uc9TMc29e+8tCg-srvMjf3uth_9P3cnro6det+7A@mail.gmail.com>
 <20190917135157.GT25745@shell.armlinux.org.uk>
 <CAOMZO5BDirX0Fwo716v1ddYaaO+OL8Woht63mw8OEhDuMBTb8Q@mail.gmail.com>
 <CADRPPNQ-WTY0QC7_bX=N0QeueKve=k0SaMvbjOrByyvzFojz2g@mail.gmail.com>
 <VI1PR0401MB22376A0EA85123B2AEB72EDEF8890@VI1PR0401MB2237.eurprd04.prod.outlook.com>
 <20190919070435.GF25745@shell.armlinux.org.uk>
In-Reply-To: <20190919070435.GF25745@shell.armlinux.org.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yangbo.lu@nxp.com; 
x-originating-ip: [92.121.36.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c3de8a66-4da2-40e5-54fc-08d73cd977a3
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0401MB2352; 
x-ms-traffictypediagnostic: VI1PR0401MB2352:|VI1PR0401MB2352:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0401MB2352611930B1531BC1128D43F8890@VI1PR0401MB2352.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 016572D96D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(136003)(366004)(376002)(346002)(13464003)(189003)(199004)(446003)(256004)(305945005)(74316002)(4326008)(14444005)(6916009)(11346002)(53546011)(5660300002)(6506007)(66066001)(186003)(476003)(25786009)(102836004)(26005)(45080400002)(71190400001)(71200400001)(76176011)(7696005)(99286004)(478600001)(86362001)(76116006)(966005)(229853002)(33656002)(81156014)(64756008)(66946007)(8676002)(66446008)(66476007)(66556008)(14454004)(52536014)(3846002)(6436002)(316002)(81166006)(6246003)(7736002)(55016002)(54906003)(6306002)(2906002)(9686003)(8936002)(486006)(6116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0401MB2352;
 H:VI1PR0401MB2237.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: iva6904uRRmbCLAT1mq+DQNKPxfXylhkAayKwJsnojXFb8q3J1tM+39wTmrNku2EAF/bITiNwiRuTS8vIU8i+/WfbSDDOaJKAXoaT53tkFtV9biEC0nDUUgm3OMGxhdmBFK4j4U+1+lN3LLu541IY2AgpKOYktmqMIb9TfDkTrbBw2LC+R3/WVWPBqOkwNhtuDiS23nUY+4NSvCU+e2dcFshXKbfcbtEoU//n4GqImsEdDwsJS5SpfMIkpg/cRKpldJMrLBJ4vzGU0SIBX1WDptw+IrDue3DBlwBLVvnCLmo8vf9qdUru0rGKmt1+kX/PKs/FgULqNKe31ucqSnOYsdDnYnWeHrn9ttzS06XjP9oQScHQzGzjtoLG14TxwYEfQ34vqc1BVYRzx29QhQ6/RK05NcK30grsd6IQyg+pxI=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c3de8a66-4da2-40e5-54fc-08d73cd977a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2019 08:15:00.5588 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uOQvym/kWjh44kPbe72vHBU5ZF/dE17mL4tHTzQH2fTiz7XtldFlRMWFOV499Afi4/MNQK9MEX4TaM/SKFRCyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2352
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_011504_101893_1211C376 
X-CRM114-Status: GOOD (  26.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.54 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dann frazier <dann.frazier@canonical.com>,
 Will Deacon <will.deacon@arm.com>, Adrian Hunter <adrian.hunter@intel.com>,
 Leo Li <leoyang.li@nxp.com>, Nicolin Chen <nicoleotsuka@gmail.com>,
 linux-mmc <linux-mmc@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUnVzc2VsbCwNCg0KVGhlIEVTREhDX0RNQV9TTk9PUCBiaXQgaXMgYWx3YXlzIHNldCBpbiBl
U0RIQyBkcml2ZXIgZm9yIERNQS4NCg0KMWIgLSBETUEgdHJhbnNhY3Rpb25zIGFyZSBzbm9vcGVk
IGJ5IHRoZSBDUFUgZGF0YSBjYWNoZS4NCjBiIC0gRE1BIHRyYW5zYWN0aW9ucyBhcmUgbm90IHNu
b29wZWQgYnkgdGhlIENQVSBkYXRhIGNhY2hlLg0KDQpUaGFua3MgYSBsb3QuDQoNCkJlc3QgcmVn
YXJkcywNCllhbmdibyBMdQ0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206
IFJ1c3NlbGwgS2luZyAtIEFSTSBMaW51eCBhZG1pbiA8bGludXhAYXJtbGludXgub3JnLnVrPg0K
PiBTZW50OiBUaHVyc2RheSwgU2VwdGVtYmVyIDE5LCAyMDE5IDM6MDUgUE0NCj4gVG86IFkuYi4g
THUgPHlhbmdiby5sdUBueHAuY29tPg0KPiBDYzogTGVvIExpIDxsZW95YW5nLmxpQG54cC5jb20+
OyBGYWJpbyBFc3RldmFtIDxmZXN0ZXZhbUBnbWFpbC5jb20+Ow0KPiBBZHJpYW4gSHVudGVyIDxh
ZHJpYW4uaHVudGVyQGludGVsLmNvbT47IENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPjsN
Cj4gTGludXggQVJNIDxsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc+OyBOaWNv
bGluIENoZW4NCj4gPG5pY29sZW90c3VrYUBnbWFpbC5jb20+OyBXaWxsIERlYWNvbiA8d2lsbC5k
ZWFjb25AYXJtLmNvbT47IGRhbm4NCj4gZnJhemllciA8ZGFubi5mcmF6aWVyQGNhbm9uaWNhbC5j
b20+OyBsaW51eC1tbWMNCj4gPGxpbnV4LW1tY0B2Z2VyLmtlcm5lbC5vcmc+DQo+IFN1YmplY3Q6
IFJlOiBbUkVHUkVTU0lPTl0gc2RoY2kgbm8gbG9uZ2VyIGRldGVjdHMgU0QgY2FyZHMgb24gTFgy
MTYwQQ0KPiANCj4gSGksDQo+IA0KPiBUaGlzIGlzIG5vdCB0aGUgaXNzdWUsIHNpbmNlIHRoZSBw
cm9ibGVtIGhhcyBiZWVuIG9ic2VydmVkIHdpdGggZU1NQyB0b28sDQo+IGFuZCBpcyBzcG9yYWRp
YyBpbiBuYXR1cmUuDQo+IA0KPiBQbGVhc2UgY291bGQgeW91IGFuc3dlciB0aGUgcXVlc3Rpb24g
cG9zZWQ6IGFyZSB0aGUgZVNESEMgY29udHJvbGxlcnMgRE1BDQo+IGNvaGVyZW50IG9yIGFyZSB0
aGV5IG5vdCBjb2hlcmVudD8NCj4gDQo+IFRoYW5rcy4NCj4gDQo+IE9uIFRodSwgU2VwIDE5LCAy
MDE5IGF0IDA0OjEzOjIwQU0gKzAwMDAsIFkuYi4gTHUgd3JvdGU6DQo+ID4gU29ycnkuIE15IGVt
YWlsIHdhcyByZWplY3RlZCBieSBtYWlsaW5nIGxpc3RzLiBMZXQgbWUgcmUtc2VuZC4NCj4gPg0K
PiA+IEhpIFJ1c3NlbGwsDQo+ID4NCj4gPiBJ4oCZbSBub3Qgc3VyZSB3aGF0IGJvYXJkIHlvdSB3
ZXJlIHVzaW5nIGZvciBMWDIxNjBBLg0KPiA+IFdlIGhhZCBhbiBrbm93biBpc3N1ZSBmb3IgZVNE
SEMgY29udHJvbGxlciBhbmQgYWxsIE5YUCBMYXllcnNjYXBlIFJEQg0KPiBib2FyZHMuDQo+ID4g
ZVNESEMgY291bGRu4oCZdCBwcm92aWRlIHBvd2VyLWN5Y2xlIHRvIFNEIGNhcmQsIGFuZCBldmVu
IHdvcnNlLCBib2FyZA0KPiByZXNldCBjb3VsZG7igJl0IHByb3ZpZGUgcG93ZXItY3ljbGUgdG8g
U0QgY2FyZCBlaXRoZXIuDQo+ID4gQnV0IGZvciBVSFMtSSBTRCBjYXJkLCBpdOKAmXMgcmVxdWly
ZWQgdG8gaGF2ZSBhIHBvd2VyLWN5Y2xlIHRvIHJlc2V0IGNhcmQgaWYgaXQNCj4gZ29lcyBpbnRv
IFVIUy1JIG1vZGUuIE90aGVyd2lzZSwgd2UgZG9u4oCZdCBrbm93IHdoYXQgd2lsbCBoYXBwZW4g
d2hlbg0KPiBrZXJuZWwgaW5pdGlhbGl6ZXMgU0QgY2FyZCBhZnRlciBhIHJlYm9vdC9yZXNldC4N
Cj4gPg0KPiA+IEkgY291bGQgcmVwcm9kdWNlIHRoYXQgaXNzdWUgd2l0aCBiZWxvdyBzdGVwcyBv
biBsYXRlc3QgbWFpbmxpbmUga2VybmVsLg0KPiA+IDEuIFBvd2VyIG9mZiBib2FyZCwgYW5kIHBv
d2VyIG9uIGJvYXJkLg0KPiA+IDIuIFN0YXJ0IHVwIGtlcm5lbCwgdGhlIFNEIGNhcmQgd29ya3Mg
ZmluZSBpbiBVSFMtSSBtb2RlLg0KPiA+IDMuIFJlYm9vdC9yZXNldCBib2FyZC4gKFRoaXMgY291
bGRu4oCZdCBwcm92aWRlIHBvd2VyLWN5Y2xlIHRvIFNEIGNhcmQpDQo+ID4gNC4gU3RhcnQgdXAg
a2VybmVsLCB0aGUgU0QgY2FyZCBnZXRzIHRoYXQgQURNQSBlcnJvciBpc3N1ZS4NCj4gPg0KPiA+
IFNvIGNvdWxkIHlvdSBoYXZlIGEgdHJ5IHRvIHBvd2VyIG9mZi9wb3dlciBvbiB0aGUgYm9hcmQs
IGFuZCB0aGVuIHN0YXJ0IHVwDQo+IGtlcm5lbC4gRG9u4oCZdCB1c2UgcmVib290LCBvciBib2Fy
ZCByZXNldCBidXR0b24uDQo+ID4gT3IgeW91IGNhbiByZW1vdmUgU0QgY2FyZCBhbmQgc3RhcnQg
dXAga2VybmVsLCBhbmQgaW5zZXJ0IFNEIGNhcmQgd2hlbg0KPiBrZXJuZWwgaGFzIGJlZW4gc3Rh
cnRlZCB1cC4NCj4gPiBUaGFua3MgYSBsb3QuDQo+ID4NCj4gPiBCZXN0IHJlZ2FyZHMsDQo+ID4g
WWFuZ2JvIEx1DQo+ID4NCj4gPg0KPiA+IEZyb206IExpIFlhbmcgPGxlb3lhbmcubGlAbnhwLmNv
bT4NCj4gPiBTZW50OiBXZWRuZXNkYXksIFNlcHRlbWJlciAxOCwgMjAxOSAxOjQ4IEFNDQo+ID4g
VG86IEZhYmlvIEVzdGV2YW0gPGZlc3RldmFtQGdtYWlsLmNvbT47IFkuYi4gTHUgPHlhbmdiby5s
dUBueHAuY29tPg0KPiA+IENjOiBBZHJpYW4gSHVudGVyIDxhZHJpYW4uaHVudGVyQGludGVsLmNv
bT47IENocmlzdG9waCBIZWxsd2lnDQo+ID4gPGhjaEBsc3QuZGU+OyBMaW51eCBBUk0gPGxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZz47DQo+ID4gTmljb2xpbiBDaGVuIDxuaWNv
bGVvdHN1a2FAZ21haWwuY29tPjsgUnVzc2VsbCBLaW5nIC0gQVJNIExpbnV4IGFkbWluDQo+ID4g
PGxpbnV4QGFybWxpbnV4Lm9yZy51az47IFdpbGwgRGVhY29uIDx3aWxsLmRlYWNvbkBhcm0uY29t
PjsgZGFubg0KPiA+IGZyYXppZXIgPGRhbm4uZnJhemllckBjYW5vbmljYWwuY29tPjsgbGludXgt
bW1jDQo+ID4gPGxpbnV4LW1tY0B2Z2VyLmtlcm5lbC5vcmc+DQo+ID4gU3ViamVjdDogUmU6IFtS
RUdSRVNTSU9OXSBzZGhjaSBubyBsb25nZXIgZGV0ZWN0cyBTRCBjYXJkcyBvbiBMWDIxNjBBDQo+
ID4NCj4gPg0KPiA+DQo+ID4gT24gVHVlLCBTZXAgMTcsIDIwMTkgYXQgNjozMSBQTSBGYWJpbyBF
c3RldmFtDQo+IDxtYWlsdG86ZmVzdGV2YW1AZ21haWwuY29tPiB3cm90ZToNCj4gPiBbQWRkaW5n
IExpIFlhbmddDQo+ID4NCj4gPiBPbiBUdWUsIFNlcCAxNywgMjAxOSBhdCAxMDo1MiBBTSBSdXNz
ZWxsIEtpbmcgLSBBUk0gTGludXggYWRtaW4NCj4gPiA8bWFpbHRvOmxpbnV4QGFybWxpbnV4Lm9y
Zy51az4gd3JvdGU6DQo+ID4NCj4gPiA+IFRoZSBwcmVzc2luZyBxdWVzdGlvbiBzZWVtcyB0byBi
ZSB0aGlzOg0KPiA+ID4NCj4gPiA+IEFyZSB0aGUgZVNESEMgb24gdGhlIExYMjE2MEEgRE1BIGNv
aGVyZW50IG9yIGFyZSB0aGV5IG5vdD8NCj4gPiA+DQo+ID4gPiBBbnkgY2hhbmNlcyBvZiBmaW5k
aW5nIG91dCBpbnRlcm5hbGx5IHdoYXQgdGhlIHRydWUgYW5zd2VyIHRvIHRoYXQsDQo+ID4gPiBy
YXRoZXIgdGhhbiBtZSBwb2tpbmcgYWJvdXQgdHJ5aW5nIHN0dWZmIGV4cGVyaW1lbnRhbGx5P8Kg
IEhhdmluZyBhDQo+ID4gPiBkZWZpbml0aXZlIGFuc3dlciBmb3IgYSBwb3RlbnRpYWxseSBkYXRh
LWNvcnJ1cHRpbmcgY2hhbmdlIHdvdWxkIGJlDQo+ID4gPiByZWFsbHkgZ29vZC4uLg0KPiA+DQo+
ID4gTGkgWWFuZywNCj4gPg0KPiA+IENvdWxkIHlvdSBwbGVhc2UgaGVscCB0byBjb25maXJtIFJ1
c3NlbGwncyBxdWVzdGlvbj8NCj4gPiBBZGRpbmcgWWFuZ2JvIHdobyBpcyB3b3JraW5nIG9uIFNE
SEMuDQo+ID4NCj4gPiBSZWdhcmRzLA0KPiA+IExlbw0KPiANCj4gLS0NCj4gUk1LJ3MgUGF0Y2gg
c3lzdGVtOg0KPiBodHRwczovL2V1cjAxLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29t
Lz91cmw9aHR0cHMlM0ElMkYlMkZ3d3cuYXINCj4gbWxpbnV4Lm9yZy51ayUyRmRldmVsb3BlciUy
RnBhdGNoZXMlMkYmYW1wO2RhdGE9MDIlN0MwMSU3Q3lhbmdiby5sDQo+IHUlNDBueHAuY29tJTdD
N2VjYTJiOTY1MjEwNGM5NWE1MjAwOGQ3M2NjZmE5OWElN0M2ODZlYTFkM2JjMmI0DQo+IGM2ZmE5
MmNkOTljNWMzMDE2MzUlN0MwJTdDMCU3QzYzNzA0NDczNDkxMTQ2NTEwMiZhbXA7c2RhdGE9UUIN
Cj4gU0V6QTlMMkhDOTlnbTY1UDk2NUUzbyUyRmhOTTE4dTJTb3VPWnhURXM2cyUzRCZhbXA7cmVz
ZXJ2ZWQ9MA0KPiBGVFRDIGJyb2FkYmFuZCBmb3IgMC44bWlsZSBsaW5lIGluIHN1YnVyYmlhOiBz
eW5jIGF0IDEyLjFNYnBzIGRvd24gNjIya2Jwcw0KPiB1cCBBY2NvcmRpbmcgdG8gc3BlZWR0ZXN0
Lm5ldDogMTEuOU1icHMgZG93biA1MDBrYnBzIHVwDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
