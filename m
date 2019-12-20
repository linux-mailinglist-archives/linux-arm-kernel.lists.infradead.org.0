Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C022127FBA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 16:43:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4pFP8DyyeU0A4ULhMLKUE5nFCqE3rv5P+jtPJJEPTFc=; b=Eh19zAOqvpKThs
	r7G4Glkuepk8XUDTl8v3+Wq60cNF0lPziedfO4EWLE7W5iaSj8ecVYczQnQ7t0vd1vnxmk3iFxxrL
	NUA+eL/QwuRRROfPVSlsIfoJ4EPqGPCVaKs+vC8WBlrWYF0nYgu1VCjvXfZdrP+Qr7irSgw355FiV
	7EoZP1kUpjHVctOQLtVMDeT2esEYei2regFrDqPBVxgskVdDpVro4Vro206OtQLGEZ2ON6MPreRWm
	bJfOhMLuwetsAk2XYJ74dvoALc2ZN+eR5XIccieNchO6ZPSiSr5Nxc7x0R0cp9VFHfROOxhwuiUY0
	UWKUrzqE8Et9xOvhIFlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiKQn-0003cy-5w; Fri, 20 Dec 2019 15:43:09 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiKQc-0003cF-KP
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 15:43:00 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Nicolas.Ferre@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="Nicolas.Ferre@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Nicolas.Ferre@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: M0Hyt6PFH1+Hh5y5QpdAUVHBwX0oof4z6LFWlmER6HNSDEP8mDCut8z9HDHAKP0kQfJDu5mhx3
 If+qvGTRrQkobUQNqFLGWs7UxVKk8lZBGM78GvsidrYCyrFIwDZAdXJJ1RM459EowHhvxU9DHE
 8RmQJ/MnqTvO77R41VzwmSSbclXT6ydQOHtAO+6L63oX+xeweopu2opNpGKULA5Z8QZmk5U5sI
 E+ZiHQIlG+DW9PQ1TuHVGYT46f1XI2m5RB/q02E/t57nvjURUGynHQqW/gHpT57IP9bbjfwd1O
 fhI=
X-IronPort-AV: E=Sophos;i="5.69,336,1571727600"; d="scan'208";a="58491975"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Dec 2019 08:42:53 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 20 Dec 2019 08:42:53 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 20 Dec 2019 08:42:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C+fzk2VqJBhRr6AoklcN4GJyk1S6ZFSylj+2aTyJdDAE+V9yq5Mq3U6DNu7G9iOzBxi0CQIpnnf15ZQo+1FHAC6UPjyHdov+u3x3xG/tU1mB4/Kp0rmT+JFbuQVd7pgukkL7fdnsga3whu9W8ShS5Sg40CLYJumyPRUv92/rdlyX86LPROmxjpkQrbqdNd2rwJmtbnhgeWDDH8BgB4f7+acop0o0WiR3p67V4TuZqibdVsp5msrcScakwXpDevRhE0juT3+lH8mL+hlTTgdqQLK4AAow60jtDDnys/n1JkW0Qid8vR5gIYfaZXTjdDTaminGOIheKx3nZ9Su5/SLcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CqlAQ468WIxJsojOaPe7rimIbfd61BbTcsTr3pv8f2c=;
 b=fOwtCfJMGMB0eaS7Wkv0abjANP9oSZ9k2uhBFq9r3UpEBFZ8w0P6m9aze9C//CnekKfURwvwY+P56gJf7vppnbx1HxVeY0FgxQkqYA8777nh9/5jCimCuLMl8euZWVKpdSa4NBcFwd8fP01AVegXXPUMskxbvjV7h5QRosCfH1dJlhDF/bFGu9n7GRlb9bThl96am/NcHGajR3BoXGkzdFwMeigSJlU+ZZfSQQWQvjK6Ji6BufxOMjjswtjeSq4VOK3nYy5nQncV5i++EAbVe4F2rm9tYfvK9UQsK8DukmpdxCAZCV2wIJmejFZXenpZ/r3i1kyFE4SUay4uSxI7PQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CqlAQ468WIxJsojOaPe7rimIbfd61BbTcsTr3pv8f2c=;
 b=UUJm3XUxpTfrRNsLzv87c9f2aSskZPQ3Gd3Ter6cDDJukzEUjKu9sZEX7PMyrGtxC+U/Dhs3dVQSnFxeT8rr/rcdmiRTvJZbsShEYjuG5tTuWBe4tbK74HgVmcZT6X6A2ufDYtWPw32VCV1aG3DiDSLR3k9Edn0gLChQ90gaVA0=
Received: from SN6PR11MB2830.namprd11.prod.outlook.com (52.135.91.21) by
 SN6PR11MB2909.namprd11.prod.outlook.com (52.135.126.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14; Fri, 20 Dec 2019 15:42:52 +0000
Received: from SN6PR11MB2830.namprd11.prod.outlook.com
 ([fe80::9439:53a6:d896:d176]) by SN6PR11MB2830.namprd11.prod.outlook.com
 ([fe80::9439:53a6:d896:d176%7]) with mapi id 15.20.2559.012; Fri, 20 Dec 2019
 15:42:52 +0000
From: <Nicolas.Ferre@microchip.com>
To: <Claudiu.Beznea@microchip.com>, <sre@kernel.org>,
 <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH v2 2/2] power: reset: at91-poweroff: use proper master
 clock register offset
Thread-Topic: [PATCH v2 2/2] power: reset: at91-poweroff: use proper master
 clock register offset
Thread-Index: AQHVt0qPDKkOca/Pv0mQOG+YXJXpwKfDKa6A
Date: Fri, 20 Dec 2019 15:42:52 +0000
Message-ID: <ccdb9e9163a37b25202412668a9cd4b4d1a51d16.camel@microchip.com>
References: <1576855878-13213-1-git-send-email-claudiu.beznea@microchip.com>
 <1576855878-13213-3-git-send-email-claudiu.beznea@microchip.com>
In-Reply-To: <1576855878-13213-3-git-send-email-claudiu.beznea@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [213.41.198.74]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 69a0b734-e25f-4d3b-7ad6-08d78563461f
x-ms-traffictypediagnostic: SN6PR11MB2909:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB29090255E2055A07AA8B664CE02D0@SN6PR11MB2909.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 025796F161
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(376002)(346002)(136003)(39860400002)(189003)(199004)(110136005)(5660300002)(186003)(54906003)(71200400001)(4326008)(316002)(86362001)(6486002)(76116006)(91956017)(66446008)(64756008)(66556008)(66476007)(66946007)(36756003)(81166006)(81156014)(8676002)(6512007)(2906002)(2616005)(26005)(8936002)(6506007)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR11MB2909;
 H:SN6PR11MB2830.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QOuCCLLhKP4EQCschKKMcJzkeUqOn55aQVheJ4X/5JJ+XecN6eyPXMV7On7X8B1+4OGjgqxXmHp8zWczWz32ijP0IWqSuST+YYGIpM1S1xT9+69P6zg8jjcD09lslHzTOV+q/SS0r4Xg8+OLylIkrNCllLKvDDCUGS/X5ZBCw8pcESP/Igp80y1DhDgTC5R0QT0/DB7BBDx9c6qfe/1FWA/6ZJE1Ejn4gP6wR7EVQSpkin2vGujqh0f0QHaNsMH5avJFGSDQqTaJEze6zwxmPYGHy7DrgVsjg9b5RAeHWonkJZGMOgj9IfnqweVCNbTVoSSdv9yHiLa/riz+y6lAXbdXclonXQrCA+XNbNzmmWWKsTYI8BiHuv8qyFPK0a0dzP7HG+ff9XI8voG6DE48ky5S8mDLOzMohRSEA/UoXD8ax+z/hNca5BnYHapU0SqC
Content-ID: <412D3FC4C7EB884CA77BD0D628E1725E@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 69a0b734-e25f-4d3b-7ad6-08d78563461f
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2019 15:42:52.0279 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xPvLIQrIaO0umr9vgzbVGSgLGGk9NoUohzRiK8F8Xl3AnoBFBGIOhMhdDV/Xez7coItPVDVj+9xt/N0ZVoEw3QCYZ5kmK4qc2FOZAYuvCgg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2909
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_074258_705430_4275DF01 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgdmVuZHJlZGkgMjAgZMOpY2VtYnJlIDIwMTkgw6AgMTc6MzEgKzAyMDAsIENsYXVkaXUgQmV6
bmVhIGEgw6ljcml0IDoNCj4gU0FNOVg2MCdzIFBNQyB1c2VzIGRpZmZlcmVudCBvZmZzZXQgZm9y
IG1hc3RlciBjbG9jayByZWdpc3Rlci4NCj4gQWRkIGEgbWVtYmVyIG9mIHR5cGUgc3RydWN0IHBt
Y19yZWdfY29uZmlnIGluIHN0cnVjdCByZWdfY29uZmlnLA0KPiBmaWxsIGl0IGNvcnJlc3BvbmRp
bmdseSBmb3IgU0FNQTVEMiBhbmQgU0FNOVg2MCBhbmQgdXNlIGl0IGluDQo+IHBvd2Vyb2ZmKCkg
ZnVuY3Rpb24uDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBDbGF1ZGl1IEJlem5lYSA8Y2xhdWRpdS5i
ZXpuZWFAbWljcm9jaGlwLmNvbT4NCg0KQWNrZWQtYnk6IE5pY29sYXMgRmVycmUgPG5pY29sYXMu
ZmVycmVAbWljcm9jaGlwLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvcG93ZXIvcmVzZXQvYXQ5
MS1zYW1hNWQyX3NoZHdjLmMgfCAxOCArKysrKysrKysrKysrKystLS0NCj4gIDEgZmlsZSBjaGFu
Z2VkLCAxNSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvcG93ZXIvcmVzZXQvYXQ5MS1zYW1hNWQyX3NoZHdjLmMNCj4gYi9kcml2ZXJzL3Bv
d2VyL3Jlc2V0L2F0OTEtc2FtYTVkMl9zaGR3Yy5jDQo+IGluZGV4IDg0ODA2ZDIwODQ2Yi4uMmZl
M2E2MjdjYjUzIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL3Bvd2VyL3Jlc2V0L2F0OTEtc2FtYTVk
Ml9zaGR3Yy5jDQo+ICsrKyBiL2RyaXZlcnMvcG93ZXIvcmVzZXQvYXQ5MS1zYW1hNWQyX3NoZHdj
LmMNCj4gQEAgLTc0LDggKzc0LDEzIEBAIHN0cnVjdCBzaGR3Y19yZWdfY29uZmlnIHsNCj4gIAl1
OCBzcl9ydHR3a19zaGlmdDsNCj4gIH07DQo+ICANCj4gK3N0cnVjdCBwbWNfcmVnX2NvbmZpZyB7
DQo+ICsJdTggbWNrcjsNCj4gK307DQo+ICsNCj4gIHN0cnVjdCByZWdfY29uZmlnIHsNCj4gIAlz
dHJ1Y3Qgc2hkd2NfcmVnX2NvbmZpZyBzaGR3YzsNCj4gKwlzdHJ1Y3QgcG1jX3JlZ19jb25maWcg
cG1jOw0KPiAgfTsNCj4gIA0KPiAgc3RydWN0IHNoZHdjIHsNCj4gQEAgLTEzNiw5ICsxNDEsOSBA
QCBzdGF0aWMgdm9pZCBhdDkxX3Bvd2Vyb2ZmKHZvaWQpDQo+ICAJCSIJc3RyCSUxLCBbJTAsICMi
IF9fc3RyaW5naWZ5KEFUOTFfRERSU0RSQ19MUFIpICJdXG5cdCINCj4gIA0KPiAgCQkvKiBTd2l0
Y2ggdGhlIG1hc3RlciBjbG9jayBzb3VyY2UgdG8gc2xvdyBjbG9jay4gKi8NCj4gLQkJIjE6CWxk
cglyNiwgWyU0LCAjIiBfX3N0cmluZ2lmeShBVDkxX1BNQ19NQ0tSKQ0KPiAiXVxuXHQiDQo+ICsJ
CSIxOglsZHIJcjYsIFslNCwgJTVdXG5cdCINCj4gIAkJIgliaWMJcjYsIHI2LCAgIyIgX19zdHJp
bmdpZnkoQVQ5MV9QTUNfQ1NTKSAiXG5cdCINCj4gLQkJIglzdHIJcjYsIFslNCwgIyIgX19zdHJp
bmdpZnkoQVQ5MV9QTUNfTUNLUikgIl1cblx0Ig0KPiArCQkiCXN0cglyNiwgWyU0LCAlNV1cblx0
Ig0KPiAgCQkvKiBXYWl0IGZvciBjbG9jayBzd2l0Y2guICovDQo+ICAJCSIyOglsZHIJcjYsIFsl
NCwgIyIgX19zdHJpbmdpZnkoQVQ5MV9QTUNfU1IpICJdXG5cdCINCj4gIAkJIgl0c3QJcjYsICMi
CSAgICBfX3N0cmluZ2lmeShBVDkxX1BNQ19NQ0tSRFkpICJcblx0Ig0KPiBAQCAtMTUzLDcgKzE1
OCw4IEBAIHN0YXRpYyB2b2lkIGF0OTFfcG93ZXJvZmYodm9pZCkNCj4gIAkJICAiciIgY3B1X3Rv
X2xlMzIoQVQ5MV9ERFJTRFJDX0xQRERSMl9QV09GRiksDQo+ICAJCSAgInIiIChhdDkxX3NoZHdj
LT5zaGR3Y19iYXNlKSwNCj4gIAkJICAiciIgY3B1X3RvX2xlMzIoQVQ5MV9TSERXX0tFWSB8IEFU
OTFfU0hEV19TSERXKSwNCj4gLQkJICAiciIgKGF0OTFfc2hkd2MtPnBtY19iYXNlKQ0KPiArCQkg
ICJyIiAoYXQ5MV9zaGR3Yy0+cG1jX2Jhc2UpLA0KPiArCQkgICJyIiAoYXQ5MV9zaGR3Yy0+cmNm
Zy0+cG1jLm1ja3IpDQo+ICAJCTogInI2Iik7DQo+ICB9DQo+ICANCj4gQEAgLTI1Myw2ICsyNTks
OSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHJlZ19jb25maWcgc2FtYTVkMl9yZWdfY29uZmlnID0g
ew0KPiAgCQkuc3JfcnRjd2tfc2hpZnQgPSA1LA0KPiAgCQkuc3JfcnR0d2tfc2hpZnQgPSBTSERX
X0NGR19OT1RfVVNFRCwNCj4gIAl9LA0KPiArCS5wbWMgPSB7DQo+ICsJCS5tY2tyCQk9IDB4MzAs
DQo+ICsJfSwNCj4gIH07DQo+ICANCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcmVnX2NvbmZpZyBz
YW05eDYwX3JlZ19jb25maWcgPSB7DQo+IEBAIC0yNjMsNiArMjcyLDkgQEAgc3RhdGljIGNvbnN0
IHN0cnVjdCByZWdfY29uZmlnIHNhbTl4NjBfcmVnX2NvbmZpZyA9IHsNCj4gIAkJLnNyX3J0Y3dr
X3NoaWZ0ID0gNSwNCj4gIAkJLnNyX3J0dHdrX3NoaWZ0ID0gNCwNCj4gIAl9LA0KPiArCS5wbWMg
PSB7DQo+ICsJCS5tY2tyCQk9IDB4MjgsDQo+ICsJfSwNCj4gIH07DQo+ICANCj4gIHN0YXRpYyBj
b25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGF0OTFfc2hkd2Nfb2ZfbWF0Y2hbXSA9IHsNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
