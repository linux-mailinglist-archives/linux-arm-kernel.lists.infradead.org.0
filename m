Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA314F25D3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 04:07:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lmFP5rNhi7EuCp/C82P69T6POIExqa+JnlR6ZueY6bk=; b=Sic0gVTiS5T3BV
	uyxcg12dg3qkkdr8J8uGCvFEcPeutix2eFZEGb2sX56MAXFX66TnODOltCZAFBEfXOO8zJ4YdGnKY
	mU8efsdn8SWbyaSApqOgrKMI3dogfcEq9Ov4tpfktRmBuLZV5p5SiPvNVaR6BQzWrclQbeZ5Wl5Ly
	uQp6YWtsbrH6sBvFD7kquOU2SzcMCsY7woW1umxU4s/nv5/IIbFNVLrFgciUTSa3/TlqU+mywzqtp
	8dlFDrMmPd6wnl3Hnb3p9l+oG18xP4lBVyUO1heJjB91q7wyl3C+Au+uHCopHDmLnsn276yFI4+uU
	31iRBYb48yTmmPF/lbNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSY97-0000J5-7m; Thu, 07 Nov 2019 03:07:41 +0000
Received: from mail-ve1eur03on0600.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::600]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSY8y-0000Hp-Q4
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 03:07:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nLDUQjTtoyRLBx1ZvunQzBeW57MhmRPV9jMPXST6HVtXMKoQilbA0ON8+Rd3n1lL2F3umBu7IpE2ly3SQKs0FKputKrVWvkQpFp/et2SFLXVscX7Q/cQ9MT076FgrYSkpo32O6FVjlMDyq0Wd3wnv0k4TJfzCTe1f5GOBQACPLnuT0nK7Xw50StrGfsVARhF7ilCajzA+/1bMGHtJniXOnJhYUmFkzHK/FTCoP1rfqHlEIC9F1ifsw/lv4hZ3TUmb2Noz8EdgM3E3KzqIjHDqA1Gd7ZkOTcJpd4eEeRXAPkZ9txgbpigrmps9tO19GfovdNDzuC60DB4AVjrNslkXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/o8uxsOxDgjwOufndZ4Ak3zs3P3NBF2ssjyhtubcu4c=;
 b=Ba56W2lxWOtPLIs94evsGYbowqZa90BQTwodJ2+PKP25Nu2+6WpnNQZadgtFhYlHum8VcHxyhZLfkQFMXte3E9PZsdkJqSR15UVexRT8bLJUKooVEa9ver+HKT9gl5kG74eZgEUJPVE6azN6FTd/PBeB7uD7F5ttNjfyBLCaoof1bKIKo8GGqgohjGa99poMnGbLCr4j/ey2C7I9VySW/YuW8/6e9l/180B+0QU+JI6y/USyMYg1a3KiyD8sjJQahgLEDj/dcz7qZ6r1Av2BfNWoWA27JDsiR7+drsIco76qJLCn8OJSP1adZ0TNB4SYMbEv4FoxBuEmnlpV438J0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/o8uxsOxDgjwOufndZ4Ak3zs3P3NBF2ssjyhtubcu4c=;
 b=KhBeJtaz1af9/aOj4blawz98aTdDH6GFaLN/AH5dCR7qtRPH2fMtWnzX/B6b7WjrSm5uzX981O5ZK+roQDshavNfmZRKvWDoBwhvqgpun5nuKaC+p5/7HQJgRWNwpDaI4LBB8U+az0pOXptGgliOgutN3Qx7Qaw7xXmylU4brKA=
Received: from AM5PR04MB3299.eurprd04.prod.outlook.com (10.173.255.158) by
 AM5PR04MB3011.eurprd04.prod.outlook.com (10.173.254.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Thu, 7 Nov 2019 03:07:27 +0000
Received: from AM5PR04MB3299.eurprd04.prod.outlook.com
 ([fe80::8ce8:9eaf:3916:4bc9]) by AM5PR04MB3299.eurprd04.prod.outlook.com
 ([fe80::8ce8:9eaf:3916:4bc9%6]) with mapi id 15.20.2430.023; Thu, 7 Nov 2019
 03:07:27 +0000
From: Xiaowei Bao <xiaowei.bao@nxp.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: RE: [PATCH v6 1/3] dt-bindings: pci: layerscape-pci: add compatible
 strings "fsl,ls1028a-pcie"
Thread-Topic: [PATCH v6 1/3] dt-bindings: pci: layerscape-pci: add compatible
 strings "fsl,ls1028a-pcie"
Thread-Index: AQHVYUH/DvJxlnvIeUC5Po3WZALzrKd+tqiAgAC23gA=
Date: Thu, 7 Nov 2019 03:07:26 +0000
Message-ID: <AM5PR04MB3299603C8DD13CC25BDFBEBAF5780@AM5PR04MB3299.eurprd04.prod.outlook.com>
References: <20190902034319.14026-1-xiaowei.bao@nxp.com>
 <20191106160937.GB23381@e121166-lin.cambridge.arm.com>
In-Reply-To: <20191106160937.GB23381@e121166-lin.cambridge.arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xiaowei.bao@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 8eb60dc1-703a-452f-4bde-08d7632f9e91
x-ms-traffictypediagnostic: AM5PR04MB3011:|AM5PR04MB3011:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM5PR04MB301154E87D4E293462B05A6BF5780@AM5PR04MB3011.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0214EB3F68
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(136003)(39860400002)(376002)(346002)(13464003)(199004)(189003)(256004)(5660300002)(71190400001)(66946007)(66476007)(66446008)(71200400001)(54906003)(66556008)(99286004)(52536014)(14454004)(316002)(6916009)(7736002)(7416002)(76116006)(478600001)(186003)(305945005)(26005)(2906002)(25786009)(6246003)(55016002)(64756008)(6116002)(102836004)(8936002)(81156014)(66066001)(6436002)(81166006)(53546011)(7696005)(446003)(9686003)(44832011)(476003)(6506007)(8676002)(33656002)(86362001)(486006)(4326008)(229853002)(11346002)(3846002)(74316002)(76176011)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR04MB3011;
 H:AM5PR04MB3299.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Fy8vzLlu1GOQVoZdtbRlUSTZQVGD87odtQw3yS3w6OFIRXgW5/Si6h4Efksw9tCh38g4sGuANav6VZNzZBKqtfkum2BVYgr8xBKDgA101MxI1qmF+wcYRHEQpxO42tj1sLo9g+1DDGzfGWIwXkI7/RZ8XrbSHfx6tk6Or9xVclLtuo8r79nWflqXiQR9ztrQziPwxVNj5fxl9Cx6bStgo2LSMtuUXioMLIPPlumOjHHwvkWOeolJwfd69Ls0UfyzZz0+4Y0IjeXnHxyl6s36JhsILe7hIJzyTUx5clLNijMrPxp7R+cBxerGa/fKE22MyGuhTTiNotnOYVE/DQPk2vJk4LpcwnABIbWpmPB9FvgraFVWuQPrP1FWi1Qo5iimGFwfnlAqeqY1/eoPzIAKulvW54MIKyug4TimKyiap5FPowY3GlORuGTRLm+UYenA
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8eb60dc1-703a-452f-4bde-08d7632f9e91
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2019 03:07:27.0070 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8XGMrF4jYALHTbi+3NUD5GeRpKW48ETcD7pqfAl4JPY6dfxqKfnvdt8rFmkC54rSqlSMVQE6IkLZbNzQciyr6Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR04MB3011
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_190732_845578_966770A8 
X-CRM114-Status: GOOD (  14.87  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe09:0:0:0:600 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.0 FORGED_SPF_HELO        No description available.
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "Z.q. Hou" <zhiqiang.hou@nxp.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTG9yZW56byBQaWVyYWxp
c2kgPGxvcmVuem8ucGllcmFsaXNpQGFybS5jb20+DQo+IFNlbnQ6IDIwMTnE6jEx1MI3yNUgMDox
MA0KPiBUbzogWGlhb3dlaSBCYW8gPHhpYW93ZWkuYmFvQG54cC5jb20+DQo+IENjOiByb2JoK2R0
QGtlcm5lbC5vcmc7IG1hcmsucnV0bGFuZEBhcm0uY29tOyBzaGF3bmd1b0BrZXJuZWwub3JnOyBM
ZW8NCj4gTGkgPGxlb3lhbmcubGlAbnhwLmNvbT47IE0uaC4gTGlhbiA8bWluZ2h1YW4ubGlhbkBu
eHAuY29tPjsgTWluZ2thaSBIdQ0KPiA8bWluZ2thaS5odUBueHAuY29tPjsgUm95IFphbmcgPHJv
eS56YW5nQG54cC5jb20+Ow0KPiBsaW51eC1wY2lAdmdlci5rZXJuZWwub3JnOyBkZXZpY2V0cmVl
QHZnZXIua2VybmVsLm9yZzsNCj4gbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOw0KPiBsaW51eHBwYy1kZXZAbGlzdHMub3ps
YWJzLm9yZzsgYmhlbGdhYXNAZ29vZ2xlLmNvbTsgWi5xLiBIb3UNCj4gPHpoaXFpYW5nLmhvdUBu
eHAuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIHY2IDEvM10gZHQtYmluZGluZ3M6IHBjaTog
bGF5ZXJzY2FwZS1wY2k6IGFkZCBjb21wYXRpYmxlDQo+IHN0cmluZ3MgImZzbCxsczEwMjhhLXBj
aWUiDQo+IA0KPiBPbiBNb24sIFNlcCAwMiwgMjAxOSBhdCAxMTo0MzoxN0FNICswODAwLCBYaWFv
d2VpIEJhbyB3cm90ZToNCj4gPiBBZGQgdGhlIFBDSWUgY29tcGF0aWJsZSBzdHJpbmcgZm9yIExT
MTAyOEENCj4gDQo+IFNlbnRlbmNlcyBtdXN0IGJlIHRlcm1pbmF0ZWQgd2l0aCBhIHBlcmlvZC4N
Cj4gDQo+ID4gU2lnbmVkLW9mZi1ieTogWGlhb3dlaSBCYW8gPHhpYW93ZWkuYmFvQG54cC5jb20+
DQo+ID4gU2lnbmVkLW9mZi1ieTogSG91IFpoaXFpYW5nIDxaaGlxaWFuZy5Ib3VAbnhwLmNvbT4N
Cj4gPiBSZXZpZXdlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4NCj4gPiAtLS0N
Cj4gPiB2MjoNCj4gPiAgLSBObyBjaGFuZ2UuDQo+ID4gdjM6DQo+ID4gIC0gTm8gY2hhbmdlLg0K
PiA+IHY0Og0KPiA+ICAtIE5vIGNoYW5nZS4NCj4gPiB2NToNCj4gPiAgLSBObyBjaGFuZ2UuDQo+
ID4gdjY6DQo+ID4gIC0gTm8gY2hhbmdlLg0KPiA+DQo+ID4gIERvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9wY2kvbGF5ZXJzY2FwZS1wY2kudHh0IHwgMSArDQo+ID4gIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvbGF5ZXJzY2FwZS1wY2kudHh0DQo+IGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9sYXllcnNjYXBlLXBjaS50eHQNCj4gPiBp
bmRleCBlMjBjZWFhLi45OWEzODZlIDEwMDY0NA0KPiA+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9wY2kvbGF5ZXJzY2FwZS1wY2kudHh0DQo+ID4gKysrIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9sYXllcnNjYXBlLXBjaS50eHQNCj4gPiBA
QCAtMjEsNiArMjEsNyBAQCBSZXF1aXJlZCBwcm9wZXJ0aWVzOg0KPiA+ICAgICAgICAgICJmc2ws
bHMxMDQ2YS1wY2llIg0KPiA+ICAgICAgICAgICJmc2wsbHMxMDQzYS1wY2llIg0KPiA+ICAgICAg
ICAgICJmc2wsbHMxMDEyYS1wY2llIg0KPiA+ICsgICAgICAgICJmc2wsbHMxMDI4YS1wY2llIg0K
PiA+ICAgIEVQIG1vZGU6DQo+ID4gIAkiZnNsLGxzMTA0NmEtcGNpZS1lcCIsICJmc2wsbHMtcGNp
ZS1lcCINCj4gPiAgLSByZWc6IGJhc2UgYWRkcmVzc2VzIGFuZCBsZW5ndGhzIG9mIHRoZSBQQ0ll
IGNvbnRyb2xsZXIgcmVnaXN0ZXIgYmxvY2tzLg0KPiANCj4gSSBoYXZlIGFwcGxpZWQgdGhpcyBz
ZXJpZXMgdG8gcGNpL2xheWVyc2NhcGUsIHRoYW5rcy4NCg0KVGhhbmsgeW91IGZvciB5b3VyIGNv
cnJlY3Rpb25zIGFuZCBjb21tZW50cywgSSB3aWxsIHBheSBhdHRlbnRpb24gdG8gdGhlIGRldGFp
bHMNCmFuZCBxdWFsaXR5IG9mIGVhY2ggcGF0Y2ggaW4gdGhlIGZ1dHVyZS4NCg0KPiANCj4gTG9y
ZW56bw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
