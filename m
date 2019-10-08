Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E3E7CF340
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 09:12:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZZQntpkc4qAQniEh/SeDJJ4uejEG/nA9H0KdlDblknw=; b=SWZIPWiy+c3Svs
	p47nwrCAjjM7SF3gv31ku2hZjmHj8lpjE5Dk6eTg3AlPiW5AW4uCf1VGIc/lVnIhu67YvYIDYvao2
	8JdYjY094pHq4gPUUQDKjkAMcolcbmx1EVfUbbDPupxbKQvnmn15ksG8TB1bXCNyC6k1QkjHdjvLJ
	MuLBrjnXtcpf+y/JOZHxNvD6cbkVm1NYYB1foaPxEJz3LUIoyq+xjfeNI3C5mL9xsE3O/Gck31N2I
	4Vg6X2AVniFdDB2kWm18VpAEoegD3y0q3jcJEfTqCu7rgsIF4Mun7nhALcBDLLaXRJXnEz9awa+Xt
	mkXItKnCcR5uJYHRCuYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHjfI-0001qT-4j; Tue, 08 Oct 2019 07:12:12 +0000
Received: from mail-eopbgr70075.outbound.protection.outlook.com ([40.107.7.75]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHjew-0001jm-GA
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 07:11:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XsBuRVDSrN05pbTEalH5q3N9GUaJ8CySmJvAfAx9FnUq8nPjguNUwsz9L4vhOTtMEmxysW3aBse4ioRC7gPrfgg6Yt/gYLYmJ/WHgQe1HKi/lc1+aBzcUD1XJSA6ZqxPYCo9DX30VtOVdvVR+S+MPK8PSWdeEi0LWbyAy3W0eC9Rpz1g4NDsRtf7Fxgg00hw3FcYv5+95kHi5HlHjYlZ8orD8ZlMAsKt+iNXVOIQe5RBgMF3C60CH11rRumwtvaIXr7ca6l8SEiUYn2HyPnHoTmgrNHXWmmaAFifmeQHB4ib8GjezzR80HykIqb98U/uyGgi561k2QCYZk1ZSPzEEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gURbfuERhGYbv3O/PPdIz5N4hzCIG4zc36fhB9WI024=;
 b=kluyPPeCIONtJGsqvyveevWrR2RE9p3CwMEZjfcF14DB4ldl4VIBmZz3sgQphLPr9b1dnmtMcR8cI+RiaeBP2tYbrzqYdN9fvJbZy5ZPK2/9XiUuhupSYYC7PcueK7lxqNmTb2HT/zPIQLVDDikRqoHnqU6ZF00wJIZoloiytH6eOI6SpsvCCB2pOUwjW7s5sdAKuNRfkAH9d3BSuBhjpW7DXT/AKVnwZ2gXrUukLkVBCroWGat6lwEB2NsMpx6Q+T1JQ4Q8O1USlLQYvWHwUoTlJMpMX0QcRZObplkGjU3I9b0xVa0fDgJdVnuE8E/1NMO3STwz4D/m5pD9tO8kmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gURbfuERhGYbv3O/PPdIz5N4hzCIG4zc36fhB9WI024=;
 b=bQ5OPb603qMWUdZg8NDuR3sWModNvuyXFToEN4lDUI3yD6i3Jq8NY5lGdS7DLP/krNsgYoYqH7tI44LxoQUmQo+Tyku7JLuFXv5Zw5MNGgtv78HOTszokOFHsGS00RKonnbLu8ct9NuTvAjtBNzWDsAk7RZnxNv3SiF04zQfAW0=
Received: from AM5PR04MB3299.eurprd04.prod.outlook.com (10.173.255.158) by
 AM5PR04MB3138.eurprd04.prod.outlook.com (10.167.170.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.24; Tue, 8 Oct 2019 07:11:47 +0000
Received: from AM5PR04MB3299.eurprd04.prod.outlook.com
 ([fe80::5dd3:ddc9:411a:db41]) by AM5PR04MB3299.eurprd04.prod.outlook.com
 ([fe80::5dd3:ddc9:411a:db41%3]) with mapi id 15.20.2305.023; Tue, 8 Oct 2019
 07:11:47 +0000
From: Xiaowei Bao <xiaowei.bao@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH v6 3/3] PCI: layerscape: Add LS1028a support
Thread-Topic: [PATCH v6 3/3] PCI: layerscape: Add LS1028a support
Thread-Index: AQHVYUIADtGnPn3wtky/OvhdSoTT96dI0k6AgAddc3A=
Date: Tue, 8 Oct 2019 07:11:47 +0000
Message-ID: <AM5PR04MB329984A4B6BAD35510310CF5F59A0@AM5PR04MB3299.eurprd04.prod.outlook.com>
References: <20190902034319.14026-1-xiaowei.bao@nxp.com>
 <20190902034319.14026-3-xiaowei.bao@nxp.com> <20191003091019.GB22491@X250>
In-Reply-To: <20191003091019.GB22491@X250>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xiaowei.bao@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 72e852ca-9bcd-4f95-2ab7-08d74bbec844
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: AM5PR04MB3138:|AM5PR04MB3138:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM5PR04MB3138BBE32B8DD10783119293F59A0@AM5PR04MB3138.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 01842C458A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(346002)(39860400002)(376002)(396003)(13464003)(199004)(189003)(71200400001)(7696005)(53546011)(316002)(6506007)(229853002)(4326008)(6436002)(86362001)(66946007)(76116006)(76176011)(6246003)(55016002)(66556008)(66476007)(9686003)(66446008)(99286004)(64756008)(8676002)(81156014)(71190400001)(81166006)(8936002)(256004)(74316002)(6116002)(3846002)(7736002)(305945005)(14454004)(478600001)(66066001)(6916009)(7416002)(25786009)(2906002)(33656002)(102836004)(476003)(186003)(44832011)(486006)(54906003)(52536014)(11346002)(5660300002)(26005)(446003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR04MB3138;
 H:AM5PR04MB3299.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ThdypMZF2AkJ5xqrG/jMnMhvp2XiyGK2lupTEkkHkhilOdBvdg3jHzxSuV4sKvobIUlATVwfq0JjEr4zRCOV+PRBNCNVpXolXI5R4aSrpmYTLrF8LbwqUH3dOq9ybLDhWlCg5IYVSBN0Kns7D017a1MxfWREmy+9QmWqozv/nH0Tu1sr72/CeYoBfXBC0l3C1485Iy0BqT1h3NDPw4eZmTYPIuOhrXK/IGyUy18Vpx7CZKhX3rovbYbSwi/AROMSc/ntYO4QgOsBIizDlwWtV6x3jrOj5gpistQU6FKcXYLk4qAiCxfTRu1xBFgWID+QKm3bRajj9LiTQRzxs8Fc6iVBbKmizDsSNIGgCd5djQNDzy+3WF05PKEQBaRRsR21QTVPatTx+TzyScQNTS70/j/cFu6mLjI7hnguFmid5O8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72e852ca-9bcd-4f95-2ab7-08d74bbec844
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2019 07:11:47.0865 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CoLvnPo5jxgw8E2NltI1QC/Xq0qEGApgNTaqHhff06W0ecCm2dzBkEs7MO5HV3Evr6dpux8IWoGBi5X48Fd8cA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR04MB3138
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_001150_542514_92959366 
X-CRM114-Status: GOOD (  18.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "Z.q. Hou" <zhiqiang.hou@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 Mingkai Hu <mingkai.hu@nxp.com>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU2hhd24gR3VvIDxzaGF3
bmd1b0BrZXJuZWwub3JnPg0KPiBTZW50OiAyMDE5xOoxMNTCM8jVIDE3OjExDQo+IFRvOiBYaWFv
d2VpIEJhbyA8eGlhb3dlaS5iYW9AbnhwLmNvbT4NCj4gQ2M6IHJvYmgrZHRAa2VybmVsLm9yZzsg
bWFyay5ydXRsYW5kQGFybS5jb207IExlbyBMaQ0KPiA8bGVveWFuZy5saUBueHAuY29tPjsgTS5o
LiBMaWFuIDxtaW5naHVhbi5saWFuQG54cC5jb20+OyBNaW5na2FpIEh1DQo+IDxtaW5na2FpLmh1
QG54cC5jb20+OyBSb3kgWmFuZyA8cm95LnphbmdAbnhwLmNvbT47DQo+IGxvcmVuem8ucGllcmFs
aXNpQGFybS5jb207IGxpbnV4LXBjaUB2Z2VyLmtlcm5lbC5vcmc7DQo+IGRldmljZXRyZWVAdmdl
ci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOw0KPiBsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7IGxpbnV4cHBjLWRldkBsaXN0cy5vemxhYnMub3Jn
Ow0KPiBiaGVsZ2Fhc0Bnb29nbGUuY29tOyBaLnEuIEhvdSA8emhpcWlhbmcuaG91QG54cC5jb20+
DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjYgMy8zXSBQQ0k6IGxheWVyc2NhcGU6IEFkZCBMUzEw
MjhhIHN1cHBvcnQNCj4gDQo+IE9uIE1vbiwgU2VwIDAyLCAyMDE5IGF0IDExOjQzOjE5QU0gKzA4
MDAsIFhpYW93ZWkgQmFvIHdyb3RlOg0KPiA+IEFkZCBzdXBwb3J0IGZvciB0aGUgTFMxMDI4YSBQ
Q0llIGNvbnRyb2xsZXIuDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBYaWFvd2VpIEJhbyA8eGlh
b3dlaS5iYW9AbnhwLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBIb3UgWmhpcWlhbmcgPFpoaXFp
YW5nLkhvdUBueHAuY29tPg0KPiA+IC0tLQ0KPiA+IHYyOg0KPiA+ICAtIE5vIGNoYW5nZS4NCj4g
PiB2MzoNCj4gPiAgLSBSZXVzZSB0aGUgbHMyMDg4IGRyaXZlciBkYXRhIHN0cnVjdHVydC4NCj4g
PiB2NDoNCj4gPiAgLSBObyBjaGFuZ2UuDQo+ID4gdjU6DQo+ID4gIC0gTm8gY2hhbmdlLg0KPiA+
IHY2Og0KPiA+ICAtIE5vIGNoYW5nZS4NCj4gPg0KPiA+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVy
L2R3Yy9wY2ktbGF5ZXJzY2FwZS5jIHwgMSArDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdj
L3BjaS1sYXllcnNjYXBlLmMNCj4gPiBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaS1s
YXllcnNjYXBlLmMNCj4gPiBpbmRleCAzYTVmYTI2Li5mMjRmNzlhIDEwMDY0NA0KPiA+IC0tLSBh
L2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaS1sYXllcnNjYXBlLmMNCj4gPiArKysgYi9k
cml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ktbGF5ZXJzY2FwZS5jDQo+ID4gQEAgLTI2Myw2
ICsyNjMsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGxzX3BjaWVfZHJ2ZGF0YSBsczIwODhfZHJ2
ZGF0YQ0KPiA+ID0geyAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgbHNfcGNpZV9v
Zl9tYXRjaFtdID0gew0KPiA+ICAJeyAuY29tcGF0aWJsZSA9ICJmc2wsbHMxMDEyYS1wY2llIiwg
LmRhdGEgPSAmbHMxMDQ2X2RydmRhdGEgfSwNCj4gPiAgCXsgLmNvbXBhdGlibGUgPSAiZnNsLGxz
MTAyMWEtcGNpZSIsIC5kYXRhID0gJmxzMTAyMV9kcnZkYXRhIH0sDQo+ID4gKwl7IC5jb21wYXRp
YmxlID0gImZzbCxsczEwMjhhLXBjaWUiLCAuZGF0YSA9ICZsczIwODhfZHJ2ZGF0YSB9LA0KPiAN
Cj4gSSB0aGluayB5b3UgY2FuIHNhdmUgdGhpcyBkcml2ZXIgY2hhbmdlIGJ5IHVzaW5nICJmc2ws
bHMyMDg4YS1wY2llIiBhcw0KPiBjb21wYXRpYmxlIGZhbGxiYWNrIGxpa2UgYmVsb3cuDQo+IA0K
PiAgIGNvbXBhdGlibGUgPSAiZnNsLGxzMTAyOGEtcGNpZSIsICJmc2wsbHMyMDg4YS1wY2llIjsN
Cg0KWWVzLCBpdCBpcyBvayB0byBkbyBzbywgYnV0IGFjY29yZGluZyB0byB0aGUgcHJldmlvdXMg
Y29kZSwgSSB0aGluayBhZGQgYSBuZXcgY29tcGF0aWJsZSAiIGZzbCxsczEwMjhhLXBjaWUgIiB0
byBkcml2ZXIgaXMgYmV0dGVyLg0KDQpUaGFua3MgDQpYaWFvd2VpDQoNCj4gDQo+IFNoYXduDQo+
IA0KPiA+ICAJeyAuY29tcGF0aWJsZSA9ICJmc2wsbHMxMDQzYS1wY2llIiwgLmRhdGEgPSAmbHMx
MDQzX2RydmRhdGEgfSwNCj4gPiAgCXsgLmNvbXBhdGlibGUgPSAiZnNsLGxzMTA0NmEtcGNpZSIs
IC5kYXRhID0gJmxzMTA0Nl9kcnZkYXRhIH0sDQo+ID4gIAl7IC5jb21wYXRpYmxlID0gImZzbCxs
czIwODBhLXBjaWUiLCAuZGF0YSA9ICZsczIwODBfZHJ2ZGF0YSB9LA0KPiA+IC0tDQo+ID4gMi45
LjUNCj4gPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
