Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A43CB7D5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 12:04:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d3o+XdSS3FxbURIu5Ec5WQe39xZ7nCdeWp636Qtxk9Y=; b=Pp7/BG03ku4t7S
	EadiqSD2dRr0W1O46hy6lijX2y+hIfw6zoEokBztyh8t4pSl2DUMlCCrF9+mBV/1s7OzfmTKLRY6W
	LXxLSGcGBw5cggRvu7Zo9/wQc/fG/m7VSPEsJtdv9bZN3YJTmfc0n5jJDm7ZNRASRYTg7I94DNGTD
	7SJKI0q3ZK/3Ss6TpjdrEFM5jDRMKGgYtSx1kMhZjBHVnNAPalJYibb4NuV+XJ2qjgFoG6ed/aFdG
	kctPn1CXurqKCL06i39aDD/LnS0wT09AIEbrm3ZzUa+btm42iHzFEqQvPHQyQgmLs/n+W8sfQf0if
	nf2oYUWF8bSYGZOU5f6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGKRM-0002O2-2M; Fri, 04 Oct 2019 10:04:00 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGKRD-0002Mw-5t; Fri, 04 Oct 2019 10:03:54 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: R9j6Uu7mv3bwJvkTmp3Mlw7Vv5lzQg1MOS1yhd6Dk7hMWjWOZm2UWT/hqPTjGyrXcDKifIsJSl
 15qNntoAKJmsX8q6FkciXez3ilE2oSyGrwhhz+pccyZ69eq5XEokuyoYKkx6JIYFW7YMSrCw5K
 PFv2yvyD5CgQgYrUlQHUUC5JP2JcP0Ww6W7DIXXgsN0+IwuZOZQC2BnRDZ7bBVTNpMUyNTjpZ/
 dyR2FOzpTbdPM/vDMGrFDZi2SZ/R2k8W230Hj1j2K/vvmHhNvade3sAJ/rsqes2XOKORJabSFP
 f2Q=
X-IronPort-AV: E=Sophos;i="5.67,256,1566889200"; d="scan'208";a="50170110"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 04 Oct 2019 03:03:44 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 4 Oct 2019 03:03:42 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 4 Oct 2019 03:03:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RA3hBSDyFOq8CKm/VVVd+Ywn6GJ62rRbOYVWNeY04C08URavg04+TYfRfir2R42KOTbaoTO7B4tSc2OjrMYNVTsHNJq0Y/V4yxTqsVuWu7PczHVw5yZz5ZIeRABeYFtvhcKHPKGdRq+0JyjW31C/VZoV4BTP1jWTvyiV9JLo7pYiX3ZCjnITKKWxbs0ACBdiAof3n/B8I0e8gELgxbewUv9YTtDIoUzFhataWkYiPQOxx+uWn5CA1zXlVKS//uAWbr3TuWeXPZz2UHg6poYWrjFaMlkqllYZyONlECoMFgLCL0a3xBppNpL3ywlBqGi6lSL+9d3K2UZ+k5eCZceIOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/gaJ8odicUfqa/dz+sNHjmZDTMLu4YKgx4yuA2jMemM=;
 b=O/PtKovO0tSmWCuypTv+L2J/gtGzFGoP4nI94dAACzSUkWy7klm4KUUcRcPpURpXujJP3Ui3xj+N4VFuo/S5BAZ54xSDipADO8vwnQq+PC7QXJEmbhY+VMjU1FBkXUihkknt70gtQWApPjuM7ydt05mMWtXLimZxwuMYLYF5PmkaMO0rmubJSkMondJpGq/8nHqkCyhYBrARmWY/Q1yPKaFpG6lfMHC+bQLErmk6vWR0E9YUZZQO+lKhIsTwkMZnEXj0Ct5sw+sROeBNgLRVWw1olb/bkzoEzk44K88sEnyI/wVAB6WLjfsQJNujywHIFA3sUcPwOJjisZ5BlEgGGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/gaJ8odicUfqa/dz+sNHjmZDTMLu4YKgx4yuA2jMemM=;
 b=jXLWkZ45fXXYqlQGMrLrt0/RRdWPFEFe1Oh3b8LQK0xadgjL3kPcTxoId/NxnuX994J7qWFSEw3lV3qcECZJs5OTsRr6H0RO8jwFLWvdzJASVpelK4/VpWlb8OKs3IeZSO2ezBvDWXeWfA376Rq5zRll66LVcRcXTCp8cT5yHHk=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3806.namprd11.prod.outlook.com (20.178.254.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Fri, 4 Oct 2019 10:03:41 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::340d:5a33:dc79:1184]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::340d:5a33:dc79:1184%5]) with mapi id 15.20.2305.023; Fri, 4 Oct 2019
 10:03:41 +0000
From: <Tudor.Ambarus@microchip.com>
To: <john.garry@huawei.com>, <vigneshr@ti.com>,
 <boris.brezillon@collabora.com>, <marek.vasut@gmail.com>,
 <linux-mtd@lists.infradead.org>, <geert+renesas@glider.be>,
 <jonas@norrbonn.se>
Subject: Re: [PATCH v2 10/22] mtd: spi-nor: Rework write_sr()
Thread-Topic: [PATCH v2 10/22] mtd: spi-nor: Rework write_sr()
Thread-Index: AQHVcqwqkYJhMgq/4EeXQwoXNBbOlKdKSf6AgAAGmwA=
Date: Fri, 4 Oct 2019 10:03:40 +0000
Message-ID: <e5d9b91f-cb86-0b82-5631-af0868ba4796@microchip.com>
References: <20190924074533.6618-1-tudor.ambarus@microchip.com>
 <20190924074533.6618-11-tudor.ambarus@microchip.com>
 <83d62334-bd1c-20b7-3c58-225392c819f8@huawei.com>
In-Reply-To: <83d62334-bd1c-20b7-3c58-225392c819f8@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR10CA0100.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:803:28::29) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 921cd32e-2201-4542-3e5b-08d748b221e5
x-ms-traffictypediagnostic: MN2PR11MB3806:
x-microsoft-antispam-prvs: <MN2PR11MB380636FD88794155F9D96780F09E0@MN2PR11MB3806.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 018093A9B5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(136003)(396003)(39860400002)(376002)(199004)(189003)(8936002)(53546011)(26005)(71200400001)(71190400001)(86362001)(110136005)(2201001)(6506007)(76176011)(386003)(316002)(229853002)(4326008)(256004)(14444005)(446003)(11346002)(476003)(7416002)(5660300002)(2616005)(2906002)(99286004)(486006)(54906003)(102836004)(186003)(31686004)(305945005)(66476007)(6116002)(81156014)(81166006)(6486002)(6436002)(66446008)(36756003)(8676002)(64756008)(3846002)(66556008)(7736002)(66946007)(25786009)(6512007)(31696002)(52116002)(6246003)(14454004)(66066001)(2501003)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3806;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YBrOp+C1V/aJhxyasW3i1fHiPbPK8x5bcVsVrVlrGhAMTod4FMYfBVJX/PraYPSpBAiCab359g57YttwOCKlXx1XBLofpjupCEIhto7x9iAB8xCsQWxScVV7QEkZo9vkeALUSlMO+MmbIn40KeNS5AMIFrKz3UQzQxVS18ABnzH2k1K1r/ad7RsW4/5dpREvnARMlfXPOUGt15Gnz9b9tYiWWjzldDtT2stztaU/yGleaPzQwO4S7/bZWkEvmn97Vk4KPhgIaTpnHlmy+UsgVw/5v5ZrwMosNT6m/vNLEIf7uD7ki7X9qe0TYOjC77W54k9Dhy4MLXMAKriYu1QRzDIR2hUpT4RIfO26ZgSZZIbc/5P2j72kfaEz3kqpDXYgkIeVPSTLyKhb5au7N7L2WFFxmTiJ1gHuZduxDBTc4EY=
x-ms-exchange-transport-forked: True
Content-ID: <05DA6A7F3CDA484CB53787B24189CD8A@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 921cd32e-2201-4542-3e5b-08d748b221e5
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Oct 2019 10:03:40.8383 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +qw0O/ZziQfxQPNLXFtCRMEIPyuivh93a9vT+GhPNAvRZudcov4PRa0k6MN4oj/52n80hShfOCYUfB2VJPRt4Br3fwulTqNws4l1k+XfqNY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3806
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_030351_230690_A2FC4292 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-aspeed@lists.ozlabs.org, andrew@aj.id.au, richard@nod.at,
 linux-kernel@vger.kernel.org, vz@mleia.com, linux-mediatek@lists.infradead.org,
 joel@jms.id.au, miquel.raynal@bootlin.com, matthias.bgg@gmail.com,
 computersforpeace@gmail.com, dwmw2@infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIEpvaG4sDQoNCk9uIDEwLzA0LzIwMTkgMTI6MzkgUE0sIEpvaG4gR2Fycnkgd3JvdGU6DQo+
IEV4dGVybmFsIEUtTWFpbA0KPiANCj4gDQo+IE9uIDI0LzA5LzIwMTkgMDg6NDYsIFR1ZG9yLkFt
YmFydXNAbWljcm9jaGlwLmNvbSB3cm90ZToNCj4+ICt9DQo+PiArDQo+PiArLyoqDQo+PiArICog
c3BpX25vcl93cml0ZV9zcigpIC0gV3JpdGUgdGhlIFN0YXR1cyBSZWdpc3Rlci4NCj4+ICsgKiBA
bm9yOsKgwqDCoCBwb2ludGVyIHRvICdzdHJ1Y3Qgc3BpX25vcicuDQo+PiArICogQHNyOsKgwqDC
oMKgwqDCoMKgIGJ1ZmZlciB0byB3cml0ZSB0byB0aGUgU3RhdHVzIFJlZ2lzdGVyLg0KPj4gKyAq
IEBsZW46wqDCoMKgIG51bWJlciBvZiBieXRlcyB0byB3cml0ZSB0byB0aGUgU3RhdHVzIFJlZ2lz
dGVyLg0KPj4gKyAqDQo+PiArICogUmV0dXJuOiAwIG9uIHN1Y2Nlc3MsIC1lcnJubyBvdGhlcndp
c2UuDQo+PiDCoCAqLw0KPj4gLXN0YXRpYyBpbnQgd3JpdGVfc3Ioc3RydWN0IHNwaV9ub3IgKm5v
ciwgdTggdmFsKQ0KPj4gK3N0YXRpYyBpbnQgc3BpX25vcl93cml0ZV9zcihzdHJ1Y3Qgc3BpX25v
ciAqbm9yLCBjb25zdCB1OCAqc3IsIHNpemVfdCBsZW4pDQo+PiDCoHsNCj4+IC3CoMKgwqAgbm9y
LT5ib3VuY2VidWZbMF0gPSB2YWw7DQo+PiArwqDCoMKgIGludCByZXQ7DQo+PiArDQo+PiArwqDC
oMKgIHJldCA9IHNwaV9ub3Jfd3JpdGVfZW5hYmxlKG5vcik7DQo+PiArwqDCoMKgIGlmIChyZXQp
DQo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIHJldDsNCj4+ICsNCj4gDQo+IEhpIFR1ZG9yLA0K
PiANCj4+IMKgwqDCoMKgIGlmIChub3ItPnNwaW1lbSkgew0KPj4gwqDCoMKgwqDCoMKgwqDCoCBz
dHJ1Y3Qgc3BpX21lbV9vcCBvcCA9DQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgU1BJX01F
TV9PUChTUElfTUVNX09QX0NNRChTUElOT1JfT1BfV1JTUiwgMSksDQo+PiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBTUElfTUVNX09QX05PX0FERFIsDQo+PiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBTUElfTUVNX09QX05PX0RVTU1ZLA0KPj4g
LcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBTUElfTUVNX09QX0RBVEFfSU4o
MSwgbm9yLT5ib3VuY2VidWYsIDEpKTsNCj4gDQo+IFRoaXMgYmUgU1BJX01FTV9PUF9EQVRBX09V
VCgpIGluIHRoZSBjdXJyZW50IG1haW5saW5lIGNvZGUgYWxzbywgcmlnaHQ/DQoNCkluIHY1LjQt
cmMxIHRoaXMgaXMgZGVmaW5lZCBhcyBTUElfTUVNX09QX0RBVEFfSU4sIHNvIHRoZSBNYWlubGlu
ZSBjb2RlIHNob3VsZA0KZmFpbC4gVGhpcyBsb29rcyBsaWtlIGEgYnVnLiBJIGRpZG4ndCBub3Rp
Y2VkIGl0IHdoZW4gZG9pbmcgdGhlIHBhdGNoLg0KDQo+IA0KPiBJJ20gdGVzdGluZyBteSB1bmRl
ciBkZXZlbG9wbWVudCBkcml2ZXIgb24gdG9wIG9mIHY1LjQtcmMxLCBhbmQgZmxhc2hfbG9jayAt
dSBpcyBicm9rZW4uDQoNCkl0J3Mgbm90IGNsZWFyIHRvIG1lLCBkb2VzIGZsYXNoX2xvY2sgZmFp
bCB3aXRoIG15IHBhdGNoZXMgb24gdG9wIG9mIHY1LjQtcmMxPw0KT3IgaXQgZmFpbHMgd2hlbiB0
ZXN0aW5nIHY1LjQtcmMxPw0KDQpDYW4geW91IHRlc3QgdjUuNC1yYzEgYW5kIHNlZSBpZiBmbGFz
aF9sb2NrIHdvcmtzIG9uIHlvdSBmbGFzaCBvciBub3Q/DQoNClBsZWFzZSBzcGVjaWZ5IHdoaWNo
IGZsYXNoIGRvIHlvdSB1c2UsIGFuZCB3aGljaCBjb250cm9sbGVyLg0KDQpUaGFua3MgZm9yIHRl
c3RpbmcgdGhpcyENCnRhDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
