Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D84E41E2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 04:56:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BfdKyGReNx7kHSTWu94uBz4bqe6bwLxqCDsL/gVZq/0=; b=gBAhVx9+a+cebA
	b7kFPHMyI/iVJu1mQLEVLNhjbp4Sb9D+D8dI2T2y5rTpjtAv40K8YQD0mCSF5TxxzKGmSNmRjtJyf
	NaJVe37pK5C5f+lh1D3r+p6UXheub6a8cEL/DYUBv1wcAbck2EDl4dp8wD8VlGHMAnZDsO6jqKdx/
	KITgnCSeb1aR24qBITwAtZGC9v1atsiq5B76uY19PtLkq79P8GBIPq73dx7x7oMSRPGPq7fbcWWLk
	Qvv2SvrLsyHFN4IKA2GH4ExtWbKn/7z5Ju9GYewbrEwldL5KahDZzUintlRPaBfwwpNRQxDVhr6vT
	ckDRfsQh43TMBFjSymUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNpmB-0003cj-Ul; Fri, 25 Oct 2019 02:56:31 +0000
Received: from mail-eopbgr00062.outbound.protection.outlook.com ([40.107.0.62]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNplx-0003c8-T4
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 02:56:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TJJXzXYYrLBL7sB8BgZgnYnF0cXdopUs/whhylUl15KyFHO2wSAeAe4JAO2LIHmJR1u9VoVXsTWdIub9jnV5ipA/7jRSrf/MMSKnExb6939eeqt4Fd3OnGyPJssr0NTqs18JKYmX5ro1tBfR3wasyfxUe2DlAxknPv/LAlRQMJC5UK7R+5ae7Es85yUAxfhfPPYjBMdRbv3no/HtfzVbv1SsSkt5YdOjLlxrDnFD1WYoQqxU3YjBhTcfiqDcpGyWhoHPq8NfXQMFXfBtYKpp8fYCG1RSqzhsK0n4iC+x0j54GdeE+UMvM0zELOfklIMn/2cH1u4ONXyAVKJOYYGE+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uSWoqekBoJFxipWx7pBtbSi+MgF30N5GkW0AtJ94YAU=;
 b=XMDyM7zfUFs47/ks3qbfWUq5Leya/3tbLm+mP83QFq2Ir89KWwz597e007uDVgqNFSzgOxteNYBbQ//DJD3ptAhI2mFGYzCjfjRX2dJ2h4fxVHVLNzBXYOo8DcxK/WcqVX1sxzo/VIeNwSldipJQCF5fjc3dD0BEcdukMT9ZdEedRtyCuC0uJiHl3aqFHi5LSf5DqTzTJUr4ZBG5zb0sCj+/HTmxidfCZbGngm5VGVjuRsIL3by/YmISMuVVFUu9epXUXG+jF5Mrz68t0GiQjT0r2ZMKhalhE7T/Pbo7G2r5yXqs1BLVQFZfJDVKBjZgBvrTKRPm/dstBMx4MJLxCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uSWoqekBoJFxipWx7pBtbSi+MgF30N5GkW0AtJ94YAU=;
 b=nJzFM3zoHADTAKdwT7hElslU1H8Tc95UUEn7iFrwHU4jWX9Zcn3W+RKPG7R86l2XF5yDXH3dgKWfmoQ7ZHNcwwrWZu4eb3bdREuA/vaFQTMgi1aW7L7WtBjJV7+goVEUr6Kgdo+9EFO1iiL6KFYaoX2XLtLOduUpFvSFJExCfyY=
Received: from DB8PR04MB6826.eurprd04.prod.outlook.com (52.133.243.14) by
 DB8PR04MB6796.eurprd04.prod.outlook.com (52.133.243.71) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.22; Fri, 25 Oct 2019 02:40:39 +0000
Received: from DB8PR04MB6826.eurprd04.prod.outlook.com
 ([fe80::bcee:92dc:277f:6a78]) by DB8PR04MB6826.eurprd04.prod.outlook.com
 ([fe80::bcee:92dc:277f:6a78%7]) with mapi id 15.20.2387.021; Fri, 25 Oct 2019
 02:40:39 +0000
From: Ran Wang <ran.wang_1@nxp.com>
To: Scott Wood <oss@buserror.net>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Rob Herring <robh+dt@kernel.org>, Leo Li <leoyang.li@nxp.com>, Mark Rutland
 <mark.rutland@arm.com>, Pavel Machek <pavel@ucw.cz>
Subject: RE: [PATCH v7 2/3] Documentation: dt: binding: fsl: Add
 'little-endian' and update Chassis define
Thread-Topic: [PATCH v7 2/3] Documentation: dt: binding: fsl: Add
 'little-endian' and update Chassis define
Thread-Index: AQHVh8KDiZwukWRsl0e9N0zfXu13A6dqI52AgAB/RaA=
Date: Fri, 25 Oct 2019 02:40:39 +0000
Message-ID: <DB8PR04MB682628E310F7106322174DE7F1650@DB8PR04MB6826.eurprd04.prod.outlook.com>
References: <20191021034927.19300-1-ran.wang_1@nxp.com>
 <20191021034927.19300-2-ran.wang_1@nxp.com>
 <ef150e9eb155eff410194ba5362ef404ce117c4a.camel@buserror.net>
In-Reply-To: <ef150e9eb155eff410194ba5362ef404ce117c4a.camel@buserror.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ran.wang_1@nxp.com; 
x-originating-ip: [92.121.36.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: af15b91c-2320-482f-6e3d-08d758f4b910
x-ms-traffictypediagnostic: DB8PR04MB6796:|DB8PR04MB6796:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB679672C3CB19791F239CBB29F1650@DB8PR04MB6796.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 02015246A9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(366004)(376002)(396003)(39860400002)(199004)(189003)(4326008)(476003)(5660300002)(66066001)(11346002)(8936002)(7696005)(446003)(102836004)(81156014)(52536014)(186003)(99286004)(81166006)(6506007)(76176011)(8676002)(26005)(15650500001)(4001150100001)(66476007)(7416002)(66556008)(64756008)(66446008)(486006)(110136005)(54906003)(66946007)(76116006)(2906002)(55016002)(9686003)(14454004)(6306002)(966005)(316002)(256004)(3846002)(6246003)(33656002)(6116002)(86362001)(6436002)(71200400001)(71190400001)(305945005)(25786009)(74316002)(7736002)(229853002)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB6796;
 H:DB8PR04MB6826.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /x03iGZlTKDjaj4z0NpbIuhJCz11VRffsLHuws+5HX4dn6Hhpvp6XxT4RrFroigzZbFI+Xv7uYCdTU9bv59j4KuhNnNSuoK1Bwe2w6WVKmzIBhGsxwBqP4R2RPxPH3f5D41XDDzeJ/G1wGpmEi04i5SAYdOtAOJO1K4r1n02ODCWVJYNRMCe+RdpHVlZPLWveZKPltAYPG7/uXZaW8ATqvBWptHRR/6lL2TdIvCJxqT9KZAAxOODC1gs1HGyAF5E2w29/sMk5YYGi2sTdPUiYBRxrKfYuvjwbHORvobbIK7wBREWB0wsVRFEVRG1X9jdP111Z/AdAv7FRcj+w9IWyNCBKnnZmj2ANcqhFHlKvcwz/xkdcQaPZdYKWu6uaET43qzT0tD90NS8EepeaGp/j8arb+GxbRFfTNKUbMgC23jNpXYSuewqDtbZrGj3qn1d0AoDTd4ey7E8vg/L6kHNHOsHAHZvsUZNOGb34rhkEzg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: af15b91c-2320-482f-6e3d-08d758f4b910
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2019 02:40:39.5753 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h9XjnYMrg1oRS1aHpjF9j8JphTnGR62+JG8RJXhE5kZWtMVumKKrjlYgEKXL5EEnGu7DUMHdAzkrS7Vw4MXm6g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6796
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_195617_944629_338507DA 
X-CRM114-Status: GOOD (  20.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.62 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Biwen Li <biwen.li@nxp.com>, Len Brown <len.brown@intel.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU2NvdHQsDQoNCk9uIEZyaWRheSwgT2N0b2JlciAyNSwgMjAxOSAwMjozNCwgU2NvdHQgV29v
ZCB3cm90ZQ0KPiANCj4gT24gTW9uLCAyMDE5LTEwLTIxIGF0IDExOjQ5ICswODAwLCBSYW4gV2Fu
ZyB3cm90ZToNCj4gPiBCeSBkZWZhdWx0LCBRb3JJUSBTb0MncyBSQ1BNIHJlZ2lzdGVyIGJsb2Nr
IGlzIEJpZyBFbmRpYW4uIEJ1dCB0aGVyZQ0KPiA+IGFyZSBzb21lIGV4Y2VwdGlvbnMsIHN1Y2gg
YXMgTFMxMDg4QSBhbmQgTFMyMDg4QSwgYXJlIExpdHRsZSBFbmRpYW4uDQo+ID4gU28gYWRkIHRo
aXMgb3B0aW9uYWwgcHJvcGVydHkgdG8gaGVscCBpZGVudGlmeSB0aGVtLg0KPiA+DQo+ID4gQWN0
dWFsbHkgTFMyMDIxQSBhbmQgb3RoZXIgTGF5ZXJzY2FwZXMgd29uJ3QgdG90YWxseSBmb2xsb3cg
Q2hhc3Npcw0KPiA+IDIuMSwgc28gc2VwYXJhdGUgdGhlbSBmcm9tIHBvd2VycGMgU29DLg0KPiAN
Cj4gRGlkIHlvdSBtZWFuIExTMTAyMUEgYW5kICJkb24ndCIgaW5zdGVhZCBvZiAid29uJ3QiLCBn
aXZlbiB0aGUgY2hhbmdlIHRvIHRoZQ0KPiBleGFtcGxlcz8NCg0KT0ssIEkgd2lsbCBjaGFuZ2Ug
aXQgdG8gZG9uJ3QgdG8ganVzdCB0ZWwgY3VycmVudCBzaXR1YXRpb24uDQogDQo+ID4gQ2hhbmdl
IGluIHY1Og0KPiA+IAktIEFkZCAnUmV2aWV3ZWQtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5l
bC5vcmc+JyB0byBjb21taXQNCj4gbWVzc2FnZS4NCj4gPiAJLSBSZW5hbWUgcHJvcGVydHkgJ2Zz
bCwjcmNwbS13YWtldXAtY2VsbHMnIHRvICcjZnNsLHJjcG0td2FrZXVwLQ0KPiA+IGNlbGxzJy4N
Cj4gPiAJcGxlYXNlIHNlZSBodHRwczovL2xvcmUua2VybmVsLm9yZy9wYXRjaHdvcmsvcGF0Y2gv
MTEwMTAyMi8NCj4gDQo+IEknbSBub3Qgc3VyZSB3aHkgUm9iIGNvbnNpZGVycyB0aGlzIHRoZSAi
Y29ycmVjdCBmb3JtIiAtLSB0aGVyZSBhcmUgb3RoZXINCj4gZXhhbXBsZXMgb2YgdGhlIGN1cnJl
bnQgZm9ybSwgc3VjaCBhcyBpYm0sI2RtYS1hZGRyZXNzLWNlbGxzIGFuZCB0aSwjdGxiLQ0KPiBl
bnRyaWVzLCBhbmQgdGhlIGN1cnJlbnQgZm9ybSBtYWtlcyBtb3JlIGxvZ2ljYWwgc2Vuc2UgKCMg
aXMgcGFydCBvZiB0aGUgcHJvcGVydHkNCj4gbmFtZSwgbm90IHRoZSB2ZW5kb3IpLiAgT2ggd2Vs
bC4NCj4gDQo+ID4gUmVxdWlyZWQgcHJvcGVyaXRlczoNCj4gPiAgICAtIHJlZyA6IE9mZnNldCBh
bmQgbGVuZ3RoIG9mIHRoZSByZWdpc3RlciBzZXQgb2YgdGhlIFJDUE0gYmxvY2suDQo+ID4gLSAg
LSBmc2wsI3JjcG0td2FrZXVwLWNlbGxzIDogVGhlIG51bWJlciBvZiBJUFBERVhQQ1IgcmVnaXN0
ZXIgY2VsbHMNCj4gPiBpbiB0aGUNCj4gPiArICAtICNmc2wscmNwbS13YWtldXAtY2VsbHMgOiBU
aGUgbnVtYmVyIG9mIElQUERFWFBDUiByZWdpc3RlciBjZWxscw0KPiA+ICsgaW4gdGhlDQo+ID4g
IAlmc2wscmNwbS13YWtldXAgcHJvcGVydHkuDQo+ID4gICAgLSBjb21wYXRpYmxlIDogTXVzdCBj
b250YWluIGEgY2hpcC1zcGVjaWZpYyBSQ1BNIGJsb2NrIGNvbXBhdGlibGUgc3RyaW5nDQo+ID4g
IAlhbmQgKGlmIGFwcGxpY2FibGUpIG1heSBjb250YWluIGEgY2hhc3Npcy12ZXJzaW9uIFJDUE0g
Y29tcGF0aWJsZSBAQA0KPiA+IC0yMCw2ICsyMCw3IEBAIFJlcXVpcmVkIHByb3Blcml0ZXM6DQo+
ID4gIAkqICJmc2wscW9yaXEtcmNwbS0xLjAiOiBmb3IgY2hhc3NpcyAxLjAgcmNwbQ0KPiA+ICAJ
KiAiZnNsLHFvcmlxLXJjcG0tMi4wIjogZm9yIGNoYXNzaXMgMi4wIHJjcG0NCj4gPiAgCSogImZz
bCxxb3JpcS1yY3BtLTIuMSI6IGZvciBjaGFzc2lzIDIuMSByY3BtDQo+ID4gKwkqICJmc2wscW9y
aXEtcmNwbS0yLjErIjogZm9yIGNoYXNzaXMgMi4xKyByY3BtDQo+IA0KPiBJcyB0aGVyZSBzb21l
dGhpbmcgYWN0dWFsbHkgY2FsbGVkICIyLjErIj8gIEl0IGxvb2tzIGEgYml0IGxpa2UgYW4gYXR0
ZW1wdCB0byBjbGFpbQ0KPiBjb21wYXRpYmlsaXR5IHdpdGggYWxsIGZ1dHVyZSB2ZXJzaW9ucy4g
IElmIHRoZSBmb3JtZXIsIGlzIGl0IGEgbmFtZSB0aGF0IGNvbWVzDQo+IGZyb20gdGhlIGhhcmR3
YXJlIHNpZGUgd2l0aCBhbiBpbnRlbnQgZm9yIGl0IHRvIGRlc2NyaWJlIGEgc3RhYmxlIGludGVy
ZmFjZSwgb3IgYXJlDQo+IHdlIGxhdGVyIGdvaW5nIHRvIHNlZSBhIHBhdGNoIGNoYW5naW5nIHNv
bWUgYnktdGhlbi1leGlzdGluZyBkZXZpY2UgdHJlZXMgZnJvbQ0KPiAiMi4xKyIgdG8gIjIuMSsr
IiB3aGVuIHNvbWUgbmV3IGluY29tcGF0aWJpbGl0eSBpcyBmb3VuZD8NCj4NCj4gUGVyaGFwcyBp
dCB3b3VsZCBiZSBiZXR0ZXIgdG8gYmluZCB0byB0aGUgc3BlY2lmaWMgY2hpcCBjb21wYXRpYmxl
cy4NCg0KQWNjb3JkaW5nIHRvIFNvQyBkYXRhIHNoZWV0cywgcG93ZXJQQyBTb0MgVDEwNDAgYW5k
IGN1cnJlbnQgQVJNIGJhc2VkIExheWVyc2NhcGUNClNvQ3MgKExTMTAyMUEsIExTMTAxMkEsIExT
MTA0M0EsIGV0YykncyBhcmNoIGRlc2lnbnMgYXJlIGJvdGggYmFzaW5nIG9uIENoYXNzaXMgc3Bl
YyAyLjEuDQpIb3dldmVyLCBmb3IgTGF5ZXJzY2FwZSwgdGhlaXIgZGF0YSBzaGVldHMgYXJlIGFs
c28gZXhwbGljaXRseSB0ZWxsaW5nIHRoYXQgc29tZSBtaW5vcg0KY2hhbmdlcyBoYXZlIGJlZW4g
bWFkZShiYXNpbmcgb24gQ2hhc3NpcyAyLjEgc3BlYykuIEFuZCBpbiBwYXJhbGxlbCwgdGhlIFNX
IGFyY2ggZGVzaWducw0KYmV0d2VlbiBUMTA0MCBhbmQgTGF5ZXJzY2FwZSBmYW1pbHkgYXJlIGFs
c28gZGlmZmVyZW50OiBGb3IgTGF5ZXJzY2FwZSwgcGFydCBvZiBSQ1BNDQpwcm9ncmFtbWluZyBq
b2IgaGFzIGJlZW4gbW92ZWQgZnJvbSBrZXJuZWwgZHJpdmVyIHRvIGZpcm13YXJlL2Jvb3Rsb2Fk
ZXIgKHRocm91Z2gNClBTQ0kgaW50ZXJmYWNlKS4gVGhhdCdzIHdoeSBJIGhhdmUgdG8gbmFtZSBh
IG5ldyBjb21wYXRpYmxlIHN0cmluZyB0byBkaXN0aW5ndWlzaCB0aGVtLg0KVGhleSBjYW5ub3Qg
dXNlIHRoZSBzYW1lIGRyaXZlci4gSSBkb27igJl0IHRoaW5rIHdlIHdpbGwgYWRkIGFub3RoZXIg
c3RpbmcgbGlrZSAyLjErKyBpbiB0aGUNCmZ1dHVyZS4gSWYgdGhlIENoYXNzaXMgc3BlYyBrZWVw
IGV2b2x2aW5nIGFuZCByZXF1aXJpbmcgZGlmZmVyZW50IHByb2dyYW1taW5nIGxvZ2ljLA0Kd2Ug
Y2FuIGFkZCBtb3JlIGxpa2UgMy4wLCA0LjAsIC4uLiwgSSB0aGluay4NCg0KUmVnYXJkcywNClJh
biANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
