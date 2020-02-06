Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCFA71544D1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 14:25:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uh0sNS45lC2siX6CwOfA4SMyc21cA+lnwfaZPnbQOo0=; b=SvuqLVIyN44JRJ
	GK9F9dnQNCz3JZeJjAitDycZg3GfQuCVxGnauKMV7GFpVTw0hR6V5ZZRuByabm2nQ3GvPzYlXLik5
	7CvPduQAcbs72BMsFWiWl6pmlMWKH86z6zePwyC3ub1iPQfl1LUfCiq2hvsh3Fg9J51lsrYfqY9ns
	p+l3QT7EH0TEmoBRM3lR2nZqjmtsY8NZ/VXFHCQejOH3AKN4v7Ve1lwb40k6WiGvGtyGXEQyVwA/4
	HKJ0b5DHd1qJQvMvXGwnKuzlZMSlUC0LUd6UYah3U/dnFvFAHSDpYrQVp6oCDVNpak6awosKPDtO3
	jVa/rOSjFnlRSk2fQsrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izh9e-0003Ho-S0; Thu, 06 Feb 2020 13:25:14 +0000
Received: from mail-eopbgr80083.outbound.protection.outlook.com ([40.107.8.83]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izh9W-0002Qd-GQ
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 13:25:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HE6mxxMvE2rwxeWtKsR1g9U4YYSmakQzN8X+Hq+JcAK1fe7OPQGu2gVawtyvDBfHd62uP65oN0x1S4J/86PTZ9kgYXtaGcMkhlWrb2q/I8V3P2OeYc4gfdBdxKa9kNmvAOHHB4bJBbKm2bkBOtFMzN/6vT+J2b5pdQFm+Szjszgv5LWdod7GuvtuZG+AIA9YbibYwcqMEIAwe9d7AxjPGgOLYgPvL8dUET5tjuh1t97Bj9ZLZD6ExmIFPFTXpWUF2iiPtnPg6NwmQJouXXQiC2pnpgnwdgM6fMOJY49VA+rJuzZyasFPlS6U8ai7zu7GMzNGQNCTf1x2MTnRaI8rzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H92zA+wvQ+Gt+9vOoCleHdPzJfx5IPVi5eu3Ly+S9G0=;
 b=erMRp5j55M/Z19n8grVbJkMHt28DYOnIGcFzyqboEhc7yid3ANELj7SZRrhukG4a+b+ix3kV8jjqcwPBQvbjtnt57v9O9p11/SiXcPhHR+L6oEKGCsLaslKrR/Rx6IQoree1J8mAV+PBqzngG8YyqI8OHeYlPaSNBs2ASUG+poBcZrAvAm8N4V8XT8hhzepe7X7Ki1PYk5wKMWD3WhaCHbI5JNYlSu/SxJLwezAzUHE+0ctHCjz34tbA1hWicP8zrVFMe5LRHnyVaaWVvHFXjUm0LhV1b8mxlZqFdF1E3d0/5CcexmYU7uVsfieL4oQp7E25hsuHy8cqLfWO6PjRpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H92zA+wvQ+Gt+9vOoCleHdPzJfx5IPVi5eu3Ly+S9G0=;
 b=IsV6bFDlMBJHcfubVMn+1keW8AUHaFEx6KRF5aOX723uEbqbVcz5sbgDFZXAmXiMV7PFbzTCH55YPnWaE98cV3z4Vll7FlPZYuHHPsD92lx2fkvvD7SkfqG95J2tWOhgKIQzg+JCmat+KnVP1cjQFWrzEm1ISje5j3vFdqNZI2I=
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com (20.179.250.159) by
 DB8PR04MB6844.eurprd04.prod.outlook.com (52.133.240.87) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.29; Thu, 6 Feb 2020 13:25:03 +0000
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::104b:e88b:b0d3:cdaa]) by DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::104b:e88b:b0d3:cdaa%4]) with mapi id 15.20.2686.035; Thu, 6 Feb 2020
 13:25:03 +0000
From: "Z.q. Hou" <zhiqiang.hou@nxp.com>
To: Andrew Murray <andrew.murray@arm.com>
Subject: RE: [PATCHv9 05/12] PCI: mobiveil: Add callback function for
 interrupt initialization
Thread-Topic: [PATCHv9 05/12] PCI: mobiveil: Add callback function for
 interrupt initialization
Thread-Index: AQHVn1UA2UYxNg2IeEqKBDKnWsGYwqfox/sAgCRXGfA=
Date: Thu, 6 Feb 2020 13:25:03 +0000
Message-ID: <DB8PR04MB6747A2DA879805DF7B516968841D0@DB8PR04MB6747.eurprd04.prod.outlook.com>
References: <20191120034451.30102-1-Zhiqiang.Hou@nxp.com>
 <20191120034451.30102-6-Zhiqiang.Hou@nxp.com>
 <20200113111929.GK42593@e119886-lin.cambridge.arm.com>
In-Reply-To: <20200113111929.GK42593@e119886-lin.cambridge.arm.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=zhiqiang.hou@nxp.com; 
x-originating-ip: [92.121.68.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: afbb7dc2-f2af-481c-eff6-08d7ab07f95d
x-ms-traffictypediagnostic: DB8PR04MB6844:|DB8PR04MB6844:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB6844641AAC1823A4F2A32DA5841D0@DB8PR04MB6844.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
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
x-microsoft-antispam-message-info: o5tvY3WrBo5PQ42YGLKWxeNmF/hFuqlponinPYSXmvXLBNTQuvck8jeVagv0256T+ggrA2I5R8e8ZTZT2+y3M4LujDxMaXAU7ch6OyIAa7z9B5mBGnXdu1fLgW8P9CrHS5HaxB34Tk93CufWQPMdms2zQ8rHrdI9jSPENYlqmm5BB4jHjJDx3dRwD1jP5Lvges117CNFZ8/RFYZGgeGUdr9NkcvWwY/W4ONBXvxkEGgIEY6bh40ZkizRDohYj+18pNOf2YOkiX4JtGdJXYB2NS5uDXraYKNRirRs3+zl1ob358gzwm1L5hy62Emj81ERb7eiNohTm9T0ifL+xaZPSBQJZZ5Um4ylF1rOPEfDYyrBDrMRNVzYKhq09pQ7rnBSw7+EeD72sZDrnbjL6ywEcTo5EdW8g1o0SV9gDzQJpkZV99LfB7OSusF6PKVEYmAe
x-ms-exchange-antispam-messagedata: bxVsNbvJ4GcJBXWSXlR27V/qVo/yGTPLiyqDs0OyXWKX5I8Bo51VZhT4kU30pgHdS933CFnq12NA1p2bzmWpycdNgexY/sKVzJ6firpP2Pym5XhEyhKqJa8ywmbo+YBkgDTOZDXZTif6HpWIvyodOA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: afbb7dc2-f2af-481c-eff6-08d7ab07f95d
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2020 13:25:03.1849 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bfHJQMyzwT4jZdYQrIuMK2pbBrV56ztkHI5X6an9v3oY0GRUhZ3FilBGYwQTc0vriGF/tjxtUf0xQ9bLMpVk1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6844
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_052506_564644_A6BD6E7F 
X-CRM114-Status: GOOD (  22.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.83 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.83 listed in wl.mailspike.net]
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

SGkgQW5kcmV3LA0KDQpUaGFua3MgYSBsb3QgZm9yIHlvdXIgY29tbWVudHMhDQoNCj4gLS0tLS1P
cmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQW5kcmV3IE11cnJheSA8YW5kcmV3Lm11cnJh
eUBhcm0uY29tPg0KPiBTZW50OiAyMDIwxOox1MIxM8jVIDE5OjIwDQo+IFRvOiBaLnEuIEhvdSA8
emhpcWlhbmcuaG91QG54cC5jb20+DQo+IENjOiBsaW51eC1wY2lAdmdlci5rZXJuZWwub3JnOyBs
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7DQo+IGRldmljZXRyZWVAdmdlci5r
ZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOw0KPiBiaGVsZ2Fhc0Bnb29n
bGUuY29tOyByb2JoK2R0QGtlcm5lbC5vcmc7IGFybmRAYXJuZGIuZGU7DQo+IG1hcmsucnV0bGFu
ZEBhcm0uY29tOyBsLnN1YnJhaG1hbnlhQG1vYml2ZWlsLmNvLmluOw0KPiBzaGF3bmd1b0BrZXJu
ZWwub3JnOyBtLmthcnRoaWtleWFuQG1vYml2ZWlsLmNvLmluOyBMZW8gTGkNCj4gPGxlb3lhbmcu
bGlAbnhwLmNvbT47IGxvcmVuem8ucGllcmFsaXNpQGFybS5jb207DQo+IGNhdGFsaW4ubWFyaW5h
c0Bhcm0uY29tOyB3aWxsLmRlYWNvbkBhcm0uY29tOyBNaW5na2FpIEh1DQo+IDxtaW5na2FpLmh1
QG54cC5jb20+OyBNLmguIExpYW4gPG1pbmdodWFuLmxpYW5AbnhwLmNvbT47IFhpYW93ZWkgQmFv
DQo+IDx4aWFvd2VpLmJhb0BueHAuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIdjkgMDUvMTJd
IFBDSTogbW9iaXZlaWw6IEFkZCBjYWxsYmFjayBmdW5jdGlvbiBmb3INCj4gaW50ZXJydXB0IGlu
aXRpYWxpemF0aW9uDQo+IA0KPiBPbiBXZWQsIE5vdiAyMCwgMjAxOSBhdCAwMzo0NTo1MEFNICsw
MDAwLCBaLnEuIEhvdSB3cm90ZToNCj4gPiBGcm9tOiBIb3UgWmhpcWlhbmcgPFpoaXFpYW5nLkhv
dUBueHAuY29tPg0KPiA+DQo+ID4gVGhlIE1vYml2ZWlsIEdQRVggaW50ZXJuYWwgTVNJL0lOVHgg
Y29udHJvbGxlciBtYXkgbm90IGJlIHVzZWQgYnkNCj4gPiBvdGhlciBwbGF0Zm9ybXMgaW4gd2hp
Y2ggdGhlIE1vYml2ZWlsIEdQRVggaXMgaW50ZWdyYXRlZC4NCj4gPiBUaGlzIHBhdGNoIGlzIHRv
IGFsbG93IHRoZXNlIHBsYXRmb3JtcyB0byBpbXBsZW1lbnQgdGhlaXIgc3BlY2lmaWMNCj4gPiBp
bnRlcnJ1cHQgaW5pdGlhbGl6YXRpb24uDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBIb3UgWmhp
cWlhbmcgPFpoaXFpYW5nLkhvdUBueHAuY29tPg0KPiA+IC0tLQ0KPiA+IFY5Og0KPiA+ICAtIE5l
dyBwYXRjaCBzcGxpdGVkIGZyb20gdGhlICMxIG9mIFY4IHBhdGNoZXMgdG8gbWFrZSBpdCBlYXN5
IHRvIHJldmlldy4NCj4gPg0KPiA+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL21vYml2ZWlsL3Bj
aWUtbW9iaXZlaWwtaG9zdC5jIHwgMyArKysNCj4gPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9t
b2JpdmVpbC9wY2llLW1vYml2ZWlsLmggICAgICB8IDcgKysrKysrKw0KPiA+ICAyIGZpbGVzIGNo
YW5nZWQsIDEwIGluc2VydGlvbnMoKykNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3Bj
aS9jb250cm9sbGVyL21vYml2ZWlsL3BjaWUtbW9iaXZlaWwtaG9zdC5jDQo+ID4gYi9kcml2ZXJz
L3BjaS9jb250cm9sbGVyL21vYml2ZWlsL3BjaWUtbW9iaXZlaWwtaG9zdC5jDQo+ID4gaW5kZXgg
MmNjNDI0ZTc4ZDMzLi4zY2Q5M2RmNmZlNmUgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9wY2kv
Y29udHJvbGxlci9tb2JpdmVpbC9wY2llLW1vYml2ZWlsLWhvc3QuYw0KPiA+ICsrKyBiL2RyaXZl
cnMvcGNpL2NvbnRyb2xsZXIvbW9iaXZlaWwvcGNpZS1tb2JpdmVpbC1ob3N0LmMNCj4gPiBAQCAt
NTA3LDYgKzUwNyw5IEBAIHN0YXRpYyBpbnQgbW9iaXZlaWxfcGNpZV9pbnRlcnJ1cHRfaW5pdChz
dHJ1Y3QNCj4gbW9iaXZlaWxfcGNpZSAqcGNpZSkNCj4gPiAgCXN0cnVjdCByZXNvdXJjZSAqcmVz
Ow0KPiA+ICAJaW50IHJldDsNCj4gPg0KPiA+ICsJaWYgKHJwLT5vcHMtPmludGVycnVwdF9pbml0
KQ0KPiA+ICsJCXJldHVybiBycC0+b3BzLT5pbnRlcnJ1cHRfaW5pdChwY2llKTsNCj4gPiArDQo+
IA0KPiBUaGlzIG1heSBiZSBjbGVhbmVyIGlmIHlvdSBoYXZlIGEgaGVscGVyIGZ1bmN0aW9uIG5h
bWVkDQo+ICJtb2JpdmVpbF9wY2llX2ludGVycnVwdF9pbml0IiB3aGVyZSBpdCBlaXRoZXIgY2Fs
bHMgaW50ZXJydXB0X2luaXQgaWYgcHJlc2VudCBvcg0KPiBjYWxscyB0aGlzIGN1cnJlbnQgZnVu
Y3Rpb24gcmVuYW1lZCB0bw0KPiAibW9iaXZlaWxfcGNpZV9pbnRlZ3JhdGVkX2ludGVycnVwdF9p
bml0Ig0KPiBvciBzaW1pbGFyLg0KPiANCj4gQSBiaXQgbGlrZSB0aGUgRFdDIGR3X3BjaWVfcmRf
b3duX2NvbmYgZnVuY3Rpb24uDQoNCkdvb2Qgc3VnZ2VzdGlvbiEgV2lsbCBjaGFuZ2UgaW4gdjEw
Lg0KDQpUaGFua3MsDQpaaGlxaWFuZw0KDQo+IA0KPiBUaGFua3MsDQo+IA0KPiBBbmRyZXcgTXVy
cmF5DQo+IA0KPiA+ICAJLyogbWFwIE1TSSBjb25maWcgcmVzb3VyY2UgKi8NCj4gPiAgCXJlcyA9
IHBsYXRmb3JtX2dldF9yZXNvdXJjZV9ieW5hbWUocGRldiwgSU9SRVNPVVJDRV9NRU0sDQo+ICJh
cGJfY3NyIik7DQo+ID4gIAlwY2llLT5hcGJfY3NyX2Jhc2UgPSBkZXZtX3BjaV9yZW1hcF9jZmdf
cmVzb3VyY2UoZGV2LCByZXMpOyBkaWZmDQo+ID4gLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9s
bGVyL21vYml2ZWlsL3BjaWUtbW9iaXZlaWwuaA0KPiA+IGIvZHJpdmVycy9wY2kvY29udHJvbGxl
ci9tb2JpdmVpbC9wY2llLW1vYml2ZWlsLmgNCj4gPiBpbmRleCBlMzE0ODA3OGU5ZGQuLjE4ZDg1
ODA2YTdmYyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL21vYml2ZWls
L3BjaWUtbW9iaXZlaWwuaA0KPiA+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvbW9iaXZl
aWwvcGNpZS1tb2JpdmVpbC5oDQo+ID4gQEAgLTEzMCwxMCArMTMwLDE3IEBAIHN0cnVjdCBtb2Jp
dmVpbF9tc2kgewkJCS8qIE1TSQ0KPiBpbmZvcm1hdGlvbiAqLw0KPiA+ICAJREVDTEFSRV9CSVRN
QVAobXNpX2lycV9pbl91c2UsIFBDSV9OVU1fTVNJKTsgIH07DQo+ID4NCj4gPiArc3RydWN0IG1v
Yml2ZWlsX3BjaWU7DQo+ID4gKw0KPiA+ICtzdHJ1Y3QgbW9iaXZlaWxfcnBfb3BzIHsNCj4gPiAr
CWludCAoKmludGVycnVwdF9pbml0KShzdHJ1Y3QgbW9iaXZlaWxfcGNpZSAqcGNpZSk7IH07DQo+
ID4gKw0KPiA+ICBzdHJ1Y3Qgcm9vdF9wb3J0IHsNCj4gPiAgCWNoYXIgcm9vdF9idXNfbnI7DQo+
ID4gIAl2b2lkIF9faW9tZW0gKmNvbmZpZ19heGlfc2xhdmVfYmFzZTsJLyogZW5kcG9pbnQgY29u
ZmlnIGJhc2UgKi8NCj4gPiAgCXN0cnVjdCByZXNvdXJjZSAqb2JfaW9fcmVzOw0KPiA+ICsJc3Ry
dWN0IG1vYml2ZWlsX3JwX29wcyAqb3BzOw0KPiA+ICAJaW50IGlycTsNCj4gPiAgCXJhd19zcGlu
bG9ja190IGludHhfbWFza19sb2NrOw0KPiA+ICAJc3RydWN0IGlycV9kb21haW4gKmludHhfZG9t
YWluOw0KPiA+IC0tDQo+ID4gMi4xNy4xDQo+ID4NCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
