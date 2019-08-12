Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C8B89BB1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 12:39:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2DpRpyKfD2I3+Um1qRNbI1dUkQhWL3niFayHxTPm6Wo=; b=Gtz69jtK1Edt0n
	GJpsRqIDsijY0OPo/Ivo8mwVuYJxer3yV7A69dqALR18idikQvjo8I+eyST3JKPm5FEpjnSGJsclm
	KfxbKnXU8+di15tly550o79etjyzzgweLCFxrpjSCUcIfrp42h0rkGw0HHq6qu0YTH67A1teiqTpW
	Mqje1GWhedZHDI+tbmw/sLe1XUdzg7zNnzYRb36xlZ6gh7v8TgQmGVXQs6RAtSdBYrmF//3+07WZx
	DFRgAWZrJgnVDf6Zy/0m+36mqYGjA7RMcLSz6Mp/EWx+5jdv4p/cKpqajrMdKMjDmOctQkHpNIexb
	iKbGb5RAoEgjdNZBbZXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx7jN-0003Fb-Ni; Mon, 12 Aug 2019 10:39:13 +0000
Received: from mail-eopbgr40058.outbound.protection.outlook.com ([40.107.4.58]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx7jD-0003EF-5p
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 10:39:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IBRtAWF7n1uEyp2ZyqGf97CFlXQSwNkk77trr9oiZjofAAvC+LOG4sR4OPPr+TGfa1PtBYxyWv65O3OdzUONcjM93LLTUcBgimDEv675RpKo3pF5UsGBYdlO0bgJrRCWeAJvOiMtE+MIdIHM3KPzcGucU2Db9bGGxl3S9PTDKOFyT8EBmJklJ6ozEtkJVLftMag70DypVxOzjU2IWt0mMcHo2F9x5zCa4K+bjTAyBSRXnYswYvMLd9F8g+xKUiW6o1LATha/x5IX36wQDHPKf3cEepM7ISiJWL67lQZduXTujr5OcZly0wTrmoyDrpUga49YVtDSh+kpqpS4dfGNjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k6u1Lju9/x/kgG57o13eMX35GStZ6VK5RhygIHFsR9U=;
 b=br0phb0hQ/sunTW6Ybc3ZeiW67smDewC5f3QWw6JsM/Cwk1UZTnDMW4KF6kp0qlHQj6nh2ln9BzFRa3pmLPgsHPVzKkf2+4USV55gyZ7CMbCKrlccNowpHNf1R9GsobYFcn5I+QN6bYHXMHmX6ZbZLo387NLwDk3n8CrccI1DCaRdki7pdQF0MBOYB5sjjLn1VItWeIkxPun0Y6eMT5779K2MogEgSkJb0QsarccirBWOh+83VFM5w0/8bzWMvjcgnlu9YdLAO/7UtdCelbQkJIq4VTI3O4GTSz45DZ5jYiwaZK33pRbtw1tGn3FEKzAOyQOO3DWi8Wuo9kXedAx7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k6u1Lju9/x/kgG57o13eMX35GStZ6VK5RhygIHFsR9U=;
 b=Dps6nYzW6pAgMJyUU6fVRw3V7av79Ub/aVTksvQAsjTwJxCMJxzkIWhlma1rSSGL0bS7lWX/IvqwIjE9EJHjWxfyunuoICHknxjGGmWCHrmxH1bxrDHoOn2gzgH0F/RUeuB2i3GhyRhCEhOcFjA4py3PHmMYPnPJ41wNPq7sXlo=
Received: from AM5PR04MB3299.eurprd04.prod.outlook.com (10.173.255.158) by
 AM5PR04MB3233.eurprd04.prod.outlook.com (10.175.231.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.20; Mon, 12 Aug 2019 10:39:00 +0000
Received: from AM5PR04MB3299.eurprd04.prod.outlook.com
 ([fe80::5012:d47a:1f5d:9b84]) by AM5PR04MB3299.eurprd04.prod.outlook.com
 ([fe80::5012:d47a:1f5d:9b84%5]) with mapi id 15.20.2157.022; Mon, 12 Aug 2019
 10:39:00 +0000
From: Xiaowei Bao <xiaowei.bao@nxp.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, "kishon@ti.com"
 <kishon@ti.com>
Subject: RE: [EXT] Re: [PATCHv3 1/2] PCI: layerscape: Add the bar_fixed_64bit
 property in EP driver.
Thread-Topic: [EXT] Re: [PATCHv3 1/2] PCI: layerscape: Add the bar_fixed_64bit
 property in EP driver.
Thread-Index: AQHVLVOAWtzEt5CX80Ox8lgMr/yVNqb3kiqAgAAGWLA=
Date: Mon, 12 Aug 2019 10:39:00 +0000
Message-ID: <AM5PR04MB329929A0B046F6BEB94B0120F5D30@AM5PR04MB3299.eurprd04.prod.outlook.com>
References: <20190628013826.4705-1-xiaowei.bao@nxp.com>
 <20190812101213.GB20861@e121166-lin.cambridge.arm.com>
In-Reply-To: <20190812101213.GB20861@e121166-lin.cambridge.arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xiaowei.bao@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5b4a819f-80be-4b72-a4f6-08d71f114974
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM5PR04MB3233; 
x-ms-traffictypediagnostic: AM5PR04MB3233:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM5PR04MB32332DC277DA7222E4A4CA23F5D30@AM5PR04MB3233.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 012792EC17
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(136003)(396003)(376002)(39860400002)(13464003)(189003)(199004)(2501003)(6436002)(52536014)(478600001)(9686003)(71200400001)(71190400001)(53936002)(486006)(4326008)(81166006)(81156014)(45080400002)(256004)(2906002)(66556008)(64756008)(446003)(66446008)(76116006)(66476007)(6306002)(76176011)(53546011)(66946007)(6506007)(229853002)(7696005)(55016002)(476003)(74316002)(86362001)(33656002)(11346002)(14454004)(8676002)(6246003)(7416002)(5660300002)(316002)(66066001)(7736002)(966005)(186003)(102836004)(8936002)(26005)(54906003)(110136005)(25786009)(6116002)(305945005)(3846002)(99286004)(44832011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR04MB3233;
 H:AM5PR04MB3299.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: rLKB/LKFQqF0sichz2CpERoWOs+LTFDHRymXKAK3u7UI1VcBhX5eaVByuHQzjAtrTuC5kHToRHDmFDW7kUpTCwGDNYQT6YHeQxj51HNTT9BUB/rrKYT4iT8Z3WM/u4aP+tif6EJ+dzRLaFQ6CXRukHw30m+SZGkFJ8CYHO4fn8V8IUHTfFIthkcdGOYHJSjiOTV4131dttoZVjtwzkVB8lVU4jILiLAET9XWR7KbcN8ZIL7fnMaBD1YOmOtGPbT5EuPp5vatTcVFWjy7l0KIc49LrYAj03pi+5bEkaMJLsi3Ke3qBunY4ScxuoKlzBWT0+1/2Reulq9dLbsStpZcwb7YFDL/vTjGHPwkrf0Ugqr5yFI1FkDTZf0avtNFuwEdd/0DROXtpX7lnQYLNgT25szR4dD/1vGX4Dvl89uDTTI=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b4a819f-80be-4b72-a4f6-08d71f114974
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2019 10:39:00.2121 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: l9bC/zC1phXJr4wAcaIHOvlr3R0JnexyRsGjMZrPz2KDrecuAKXIR32oEYIoehVERZHw5pXwTyqba9JT739gEg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR04MB3233
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_033903_224942_9C56D5B7 
X-CRM114-Status: GOOD (  19.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.58 listed in list.dnswl.org]
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
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "shawn.lin@rock-chips.com" <shawn.lin@rock-chips.com>,
 Mingkai Hu <mingkai.hu@nxp.com>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTG9yZW56byBQaWVyYWxp
c2kgPGxvcmVuem8ucGllcmFsaXNpQGFybS5jb20+DQo+IFNlbnQ6IDIwMTnE6jjUwjEyyNUgMTg6
MTINCj4gVG86IFhpYW93ZWkgQmFvIDx4aWFvd2VpLmJhb0BueHAuY29tPjsga2lzaG9uQHRpLmNv
bQ0KPiBDYzogYmhlbGdhYXNAZ29vZ2xlLmNvbTsgcm9iaCtkdEBrZXJuZWwub3JnOyBtYXJrLnJ1
dGxhbmRAYXJtLmNvbTsNCj4gc2hhd25ndW9Aa2VybmVsLm9yZzsgTGVvIExpIDxsZW95YW5nLmxp
QG54cC5jb20+OyBhcm5kQGFybmRiLmRlOw0KPiBncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZzsg
TS5oLiBMaWFuIDxtaW5naHVhbi5saWFuQG54cC5jb20+OyBNaW5na2FpDQo+IEh1IDxtaW5na2Fp
Lmh1QG54cC5jb20+OyBSb3kgWmFuZyA8cm95LnphbmdAbnhwLmNvbT47DQo+IGtzdGV3YXJ0QGxp
bnV4Zm91bmRhdGlvbi5vcmc7IHBvbWJyZWRhbm5lQG5leGIuY29tOw0KPiBzaGF3bi5saW5Acm9j
ay1jaGlwcy5jb207IGxpbnV4LXBjaUB2Z2VyLmtlcm5lbC5vcmc7DQo+IGRldmljZXRyZWVAdmdl
ci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOw0KPiBsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7IGxpbnV4cHBjLWRldkBsaXN0cy5vemxhYnMub3Jn
DQo+IFN1YmplY3Q6IFtFWFRdIFJlOiBbUEFUQ0h2MyAxLzJdIFBDSTogbGF5ZXJzY2FwZTogQWRk
IHRoZSBiYXJfZml4ZWRfNjRiaXQNCj4gcHJvcGVydHkgaW4gRVAgZHJpdmVyLg0KPiANCj4gQ2F1
dGlvbjogRVhUIEVtYWlsDQo+IA0KPiBGaXJzdCBvZmY6DQo+IA0KPiBUcmltIHRoZSBDQyBsaXN0
LCB5b3UgQ0MnZWQgbWFpbnRhaW5lcnMgKGFuZCBtYWlsaW5nIGxpc3RzKSBmb3Igbm8gcmVhc29u
cw0KPiB3aGF0c292ZXIuDQpbWGlhb3dlaSBCYW9dSGkgTG9yZW56bywgSSBhbSBub3QgY2xlYXIg
d2h5IHRoZSBtYWlsIGxpc3QgaXMgdGhlIENDLCBJIHVzZSB0aGUgY29tbWFuZCAiZ2l0IHNlbmQt
ZW1haWwgLS10byIsIEkgd2lsbCB0cnkgdG8gc2VuZCB0aGUgcGF0Y2ggYWdhaW4sIGRvIEkgbmVl
ZCB0byBtb2RpZnkgdGhlIHZlcnNpb24gaXMgdjQgd2hlbiBJIHNlbmQgdGhpcyBwYXRjaCBhZ2Fp
bj8NCj4gDQo+IFRoZW4sIHJlYWQgdGhpczoNCj4gDQo+IGh0dHBzOi8vZXVyMDEuc2FmZWxpbmtz
LnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRwcyUzQSUyRiUyRmxvcmUua2UNCj4gcm5l
bC5vcmclMkZsaW51eC1wY2klMkYyMDE3MTAyNjIyMzcwMS5HQTI1NjQ5JTQwYmhlbGdhYXMtZ2xh
cHRvcC5yb2ENCj4gbS5jb3JwLmdvb2dsZS5jb20lMkYmYW1wO2RhdGE9MDIlN0MwMSU3Q3hpYW93
ZWkuYmFvJTQwbnhwLmNvbSU3DQo+IEMxYzU4NjE3OGUyM2M0MjNhMGU4ODA4ZDcxZjBkOGY2ZiU3
QzY4NmVhMWQzYmMyYjRjNmZhOTJjZDk5YzVjMzANCj4gMTYzNSU3QzAlN0MwJTdDNjM3MDEyMDE1
NDI2Nzg4NTc1JmFtcDtzZGF0YT0zYngxYkRGSXppazhGbkQwd2wNCj4gZHVBVXY3d3RMZEQxSjNo
UTN4TkgyeG1GWSUzRCZhbXA7cmVzZXJ2ZWQ9MA0KPiANCj4gYW5kIG1ha2UgeW91ciBwYXRjaGVz
IGNvbXBsaWFudCBwbGVhc2UuDQo+IA0KPiBPbiBGcmksIEp1biAyOCwgMjAxOSBhdCAwOTozODoy
NUFNICswODAwLCBYaWFvd2VpIEJhbyB3cm90ZToNCj4gPiBUaGUgUENJZSBjb250cm9sbGVyIG9m
IGxheWVyc2NhcGUganVzdCBoYXZlIDQgQkFScywgQkFSMCBhbmQgQkFSMSBpcw0KPiA+IDMyYml0
LCBCQVIzIGFuZCBCQVI0IGlzIDY0Yml0LCB0aGlzIGlzIGRldGVybWluZWQgYnkgaGFyZHdhcmUs
IHNvIHNldA0KPiA+IHRoZSBiYXJfZml4ZWRfNjRiaXQgd2l0aCAweDE0Lg0KPiA+DQo+ID4gU2ln
bmVkLW9mZi1ieTogWGlhb3dlaSBCYW8gPHhpYW93ZWkuYmFvQG54cC5jb20+DQo+ID4gLS0tDQo+
ID4gdjI6DQo+ID4gIC0gUmVwbGFjZSB2YWx1ZSAweDE0IHdpdGggYSBtYWNyby4NCj4gPiB2MzoN
Cj4gPiAgLSBObyBjaGFuZ2UuDQo+ID4NCj4gPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2Mv
cGNpLWxheWVyc2NhcGUtZXAuYyB8ICAgIDEgKw0KPiA+ICAxIGZpbGVzIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9ucygrKSwgMCBkZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3BjaS9jb250cm9sbGVyL2R3Yy9wY2ktbGF5ZXJzY2FwZS1lcC5jDQo+ID4gYi9kcml2ZXJzL3Bj
aS9jb250cm9sbGVyL2R3Yy9wY2ktbGF5ZXJzY2FwZS1lcC5jDQo+ID4gaW5kZXggYmU2MWQ5Ni4u
MjI3YzMzYiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2kt
bGF5ZXJzY2FwZS1lcC5jDQo+ID4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNp
LWxheWVyc2NhcGUtZXAuYw0KPiA+IEBAIC00NCw2ICs0NCw3IEBAIHN0YXRpYyBpbnQgbHNfcGNp
ZV9lc3RhYmxpc2hfbGluayhzdHJ1Y3QgZHdfcGNpZSAqcGNpKQ0KPiA+ICAgICAgIC5saW5rdXBf
bm90aWZpZXIgPSBmYWxzZSwNCj4gPiAgICAgICAubXNpX2NhcGFibGUgPSB0cnVlLA0KPiA+ICAg
ICAgIC5tc2l4X2NhcGFibGUgPSBmYWxzZSwNCj4gPiArICAgICAuYmFyX2ZpeGVkXzY0Yml0ID0g
KDEgPDwgQkFSXzIpIHwgKDEgPDwgQkFSXzQpLA0KPiANCj4gSSB3b3VsZCBhcHByZWNpYXRlIEtp
c2hvbidzIEFDSyBvbiB0aGlzLg0KPiANCj4gTG9yZW56bw0KPiANCj4gPiAgfTsNCj4gPg0KPiA+
ICBzdGF0aWMgY29uc3Qgc3RydWN0IHBjaV9lcGNfZmVhdHVyZXMqDQo+ID4gLS0NCj4gPiAxLjcu
MQ0KPiA+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
