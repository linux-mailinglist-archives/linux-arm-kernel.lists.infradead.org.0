Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29AB59F884
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 05:02:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vlx3k7JxMLpwSXl19yodaosGX0sV9UKTbylKCFCK73A=; b=aC+D35ofOlHhw/
	R+AyfJ7NUSqjmsiFagfxOr4kzyPPv6cvjGhE9Anx8fwcIugjg7nDcN2TDbxKa+Kh1Md1heJzBrb2S
	iyMkeYsJe4/pqRMrwVK1zW6EGmmXuce0fcFCykWwYMTM8fKdpfsAwnLRWlQj0ysHxcpKY5dGAARgl
	BFuP+GStzJhvkH1Wh4Itj68wu3DQqRTqa7bxfue6gpv/k5SH9ovx/LwxsGmz5Y+alDyPOU9IzQfDn
	jPqURCuyR9yvTPZbkpHMtl7R1XqXOEW7zrSlrP0VWwz3igFaNAbVcJ/B9cN2TgDpDwgbjd3qQ2QEY
	D+T+mtwvvcJqSpYQ4kTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2oEL-000358-R2; Wed, 28 Aug 2019 03:02:41 +0000
Received: from mail-eopbgr30071.outbound.protection.outlook.com ([40.107.3.71]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2oE7-00034R-G7
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 03:02:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EIMVNEDuPmCd24whqpXtrb8nfsjE35sW24UxqbmFAxa1IU7R0eLwA5rG36E79UWOqceZXvJ9J8p7qT5fb224KPJMebTztAKbqfmWFMOWhSaTrenUi8odZDoK6kOE9bwKj0weZeVXUaTrH58fnZh0TFwQC8rFdj9J9RNdRr7Vp+Z2trsEaOqFPASy9si6XkgXMepVIe+z2vY+ezEqlvUGQb7e1elQoirPzTnqyGdTJblvGpRZj/JBkYgwrId5j7Ynk5KRVuMAbljX4A2rGo8nqjl4FzdZABl0591xxEBCfZVf4guJ1VS8C9irDLTetMXbOqI6UCL9i2cvUj/nttHcTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TBT//whm5TJn9i55GBmd65ZLSzocGJY5h2HOHdyWYsg=;
 b=oOhbEzcW7KW4yIfi/HONpTYOkS0N5ufFI1l3/AwWFDteCsLtwVKjAZ9xRlG675LBGPaYHgfZYzA5xX3PCLVytOezaxgFMBx4424LCpRdxkEvY2sBg9iUgwrocqRjpWH2mrjgiNzTa+M/S1nXjfX93ht+CHg7sVRsvjjy3711meC7CONqF6pNvgkGgotQWJKpG/oIcdPUsFoCDGas9cfJHi66BNJbeWqGYWjVMsLzvJGCH2XJeABAsZsgV6XNHGc4fb1AISlkiafyL1Zv3QXS+ZXlWNl56w7y7hWnIGUuq7wzAjr25kdaJzAZ4tdQnY9zfDzYdGufY3CExcUIpbHCPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TBT//whm5TJn9i55GBmd65ZLSzocGJY5h2HOHdyWYsg=;
 b=IJM0qu+XIN0/0q3tGf98WVswzVRgVbfTH0U+byQf3FKjv5j/zYlpJPrQa4mlsLwvmxYCAlahCg24A0UQp9muDt8lQtDjgSfHCLncKmD2cHA6v/qDTfPaY/RaopnhuVGcan8jmjNerhC0518REU3EgvOteyvtpUuavW+MqfI9LTY=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4633.eurprd04.prod.outlook.com (52.135.138.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Wed, 28 Aug 2019 03:02:21 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::c8ca:1c9c:6c3:fb6f]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::c8ca:1c9c:6c3:fb6f%4]) with mapi id 15.20.2199.021; Wed, 28 Aug 2019
 03:02:21 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: Will Deacon <will@kernel.org>
Subject: RE: [PATCH V7 1/3] perf: imx8_ddr_perf: add AXI ID filter support
Thread-Topic: [PATCH V7 1/3] perf: imx8_ddr_perf: add AXI ID filter support
Thread-Index: AQHVXICo1nGwvEcfb0GCUPTjY3vD1KcPUg6AgACNFJA=
Date: Wed, 28 Aug 2019 03:02:20 +0000
Message-ID: <DB7PR04MB4618690339BD3708A7F0F058E6A30@DB7PR04MB4618.eurprd04.prod.outlook.com>
References: <20190827023557.7071-1-qiangqing.zhang@nxp.com>
 <20190827183040.633fcj2m2xb6vfow@willie-the-truck>
In-Reply-To: <20190827183040.633fcj2m2xb6vfow@willie-the-truck>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b2a51c48-8dba-4ad4-0498-08d72b6424f4
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR04MB4633; 
x-ms-traffictypediagnostic: DB7PR04MB4633:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB46331FD7BB7492B555279A6BE6A30@DB7PR04MB4633.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 014304E855
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(376002)(136003)(366004)(396003)(189003)(199004)(51444003)(13464003)(86362001)(71200400001)(71190400001)(256004)(66446008)(64756008)(66556008)(66476007)(76116006)(25786009)(66946007)(99286004)(486006)(316002)(6246003)(81156014)(14444005)(81166006)(8676002)(54906003)(102836004)(66066001)(4326008)(7696005)(186003)(476003)(52536014)(9686003)(305945005)(966005)(55016002)(2906002)(33656002)(7736002)(26005)(6916009)(14454004)(5660300002)(45080400002)(478600001)(6436002)(53546011)(8936002)(6506007)(229853002)(6306002)(446003)(6116002)(3846002)(53936002)(11346002)(76176011)(74316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4633;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 9Xah1L85Xq8y+u1/zogLVii2mtZkxQuiZ9qYK1ty892O+9CzYgJdxvtv+o/tz8f1pld/65iAxXB11xd59po7xAk58iGsP0Tsf7izV0mJyFzzSaH8Jx9gmf7Z2oiAt4jwwXqdRHuzuBozk9NrlXOsC2pGFeiAe33KbMLfQi5ODZkN7UCuZecBIAWW0KHCrc8M0rchhWckWnkK2pqRfwsKOB8TEsK8AR7V5nT1s5HoxAbwE0nqll+FCjhYO5G6QLWvkrpFjHaRbqhGW9CzBF3GLaYOd1xnpzVCFcc8hMYvSJctGHNMgz5fozF2ZpTixa0AvFX0LF+rvC+7v227JUbszwubPf0TnMjc0/5nL1OpMw5V7VGZVLK87YT95xFkY4ISvUSKhcOeiKbAnNoQvA82c+OfaGIgkl7zHwV0XCQLXNE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b2a51c48-8dba-4ad4-0498-08d72b6424f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2019 03:02:21.1371 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JmbN0VmB6rY5FFhxoS53Z5iCZvBQ9GjTX/v+F7EMHIUYP6EnhIyDxRENBFA+jKOipUfHI+6ileVxYOu/eNfM1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4633
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_200227_544218_DCB426D7 
X-CRM114-Status: GOOD (  26.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.71 listed in list.dnswl.org]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Frank Li <frank.li@nxp.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFdpbGwgRGVhY29uIDx3aWxs
QGtlcm5lbC5vcmc+DQo+IFNlbnQ6IDIwMTnlubQ45pyIMjjml6UgMjozMQ0KPiBUbzogSm9ha2lt
IFpoYW5nIDxxaWFuZ3FpbmcuemhhbmdAbnhwLmNvbT4NCj4gQ2M6IG1hcmsucnV0bGFuZEBhcm0u
Y29tOyByb2Jpbi5tdXJwaHlAYXJtLmNvbTsgRnJhbmsgTGkNCj4gPGZyYW5rLmxpQG54cC5jb20+
OyBkbC1saW51eC1pbXggPGxpbnV4LWlteEBueHAuY29tPjsNCj4gbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnDQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggVjcgMS8zXSBwZXJmOiBp
bXg4X2Rkcl9wZXJmOiBhZGQgQVhJIElEIGZpbHRlciBzdXBwb3J0DQo+IA0KPiBIaSBKb2FraW0s
DQo+IA0KPiBPbiBUdWUsIEF1ZyAyNywgMjAxOSBhdCAwMjozOTozMkFNICswMDAwLCBKb2FraW0g
Wmhhbmcgd3JvdGU6DQo+ID4gQVhJIGZpbHRlcmluZyBpcyB1c2VkIGJ5IENTViBtb2RlcyAweDQx
IGFuZCAweDQyIHRvIGNvdW50IHJlYWRzIG9yDQo+ID4gd3JpdGVzIHdpdGggYW4gQVJJRCBvciBB
V0lEIG1hdGNoaW5nIGZpbHRlciBzZXR0aW5nLiBHcmFudWxhcml0eSBpcyBhdA0KPiA+IHN1YnN5
c3RlbSBsZXZlbC4gSW1wbGVtZW50YXRpb24gZG9lcyBub3QgYWxsb3cgZmlsdHJpbmcgYmV0d2Vl
bg0KPiA+IG1hc3RlcnMgd2l0aGluIGEgc3Vic3lzdGVtLiBGaWx0ZXIgaXMgZGVmaW5lZCB3aXRo
IDIgY29uZmlndXJhdGlvbg0KPiBwYXJhbWV0ZXJzLg0KPiA+DQo+ID4gLS1BWElfSUQgZGVmaW5l
cyBBeElEIG1hdGNoaW5nIHZhbHVlDQo+ID4gLS1BWElfTUFTS0lORyBkZWZpbmVzIHdoaWNoIGJp
dHMgb2YgQXhJRCBhcmUgbWVhbmluZ2Z1bCBmb3IgdGhlIG1hdGNoaW5nDQo+ID4gCTDvvJpjb3Jy
ZXNwb25kaW5nIGJpdCBpcyBtYXNrZWQNCj4gPiAJMTogY29ycmVzcG9uZGluZyBiaXQgaXMgbm90
IG1hc2tlZCwgaS5lLiB1c2VkIHRvIGRvIHRoZSBtYXRjaGluZw0KPiA+DQo+ID4gV2hlbiBub24t
bWFza2VkIGJpdHMgYXJlIG1hdGNoaW5nIGNvcnJlc3BvbmRpbmcgQVhJX0lEIGJpdHMgdGhlbg0K
PiA+IGNvdW50ZXIgaXMgaW5jcmVtZW50ZWQuIFRoaXMgZmlsdGVyIGFsbG93cyBjb3VudGluZyBy
ZWFkIG9yIHdyaXRlDQo+ID4gYWNjZXNzIGZyb20gYSBzdWJzeXN0ZW0gb3IgbXVsdGlwbGUgc3Vi
c3lzdGVtcy4NCj4gPg0KPiA+IFBlcmYgY291bnRlciBpcyBpbmNyZW1lbnRlZCBpZiBBeElEICYm
IEFYSV9NQVNLSU5HID09IEFYSV9JRCAmJg0KPiA+IEFYSV9NQVNLSU5HDQo+ID4NCj4gPiBBWElf
SUQgYW5kIEFYSV9NQVNLSU5HIGFyZSBtYXBwZWQgb24gRFBDUjEgcmVnaXN0ZXIgaW4gcGVyZm9y
bWFuY2UNCj4gY291bnRlci4NCj4gPg0KPiA+IFJlYWQgYW5kIHdyaXRlIEFYSSBJRCBmaWx0ZXIg
c2hvdWxkIHdyaXRlIHNhbWUgdmFsdWUgdG8gRFBDUjEgaWYgd2FudA0KPiA+IHRvIHNwZWNpZnkg
YXQgdGhlIHNhbWUgdGltZSBhcyB0aGlzIGZpbHRlciBpcyBzaGFyZWQgYmV0d2VlbiBjb3VudGVy
cy4NCj4gPg0KPiA+IGUuZy4NCj4gPiBwZXJmIHN0YXQgLWEgLWUNCj4gPg0KPiBpbXg4X2RkcjAv
YXhpZC1yZWFkLGF4aV9pZD0weE1NTU1ERERELyxpbXg4X2RkcjAvYXhpZC13cml0ZSxheGlfaWQ9
MHgNCj4gTQ0KPiA+IE1NTUREREQvIGNtZA0KPiA+IE1NTU06IEFYSV9NQVNLSU5HICBEREREOiBB
WElfSUQNCj4gPiBwZXJmIHN0YXQgLWEgLWUgaW14OF9kZHIwL2F4aWQtcmVhZCxheGlfaWQ9MHgx
Mi8gY21kLCB3aGljaCB3aWxsDQo+ID4gbW9uaXRvciBBUklEPTB4MTINCj4gPg0KPiA+IE5PVEU6
IEFYSV9NQVNLSU5HIGlzIGludmVydGVkIGF0IGRyaXZlcihpLmUuIHNldCBiaXRzIGFyZSBiaXRz
IHRvDQo+ID4gbWFzayksIHNvIHRoYXQgdGhlIHVzZXIgY2FuIGp1c3Qgc3BlY2lmeSBheGlfaWQg
dG8gbW9uaXRvciBhIHNwZWNpZmljDQo+ID4gaWQsIHJhdGhlciB0aGFuIGhhdmluZyB0byBzcGVj
aWZ5IGF4aV9pZD0weGZmZmY8aWQ+Lg0KPiANCj4gWy4uLl0NCj4gDQo+ID4gQEAgLTEzOCw5ICsx
NTYsMTEgQEAgc3RhdGljIHN0cnVjdCBhdHRyaWJ1dGVfZ3JvdXANCj4gPiBkZHJfcGVyZl9ldmVu
dHNfYXR0cl9ncm91cCA9IHsgIH07DQo+ID4NCj4gPiAgUE1VX0ZPUk1BVF9BVFRSKGV2ZW50LCAi
Y29uZmlnOjAtNyIpOw0KPiA+ICtQTVVfRk9STUFUX0FUVFIoYXhpX2lkLCAiY29uZmlnMTowLTMx
Iik7DQo+IA0KPiBJIHN0aWxsIGRvbid0IHRoaW5rIHRoaXMgaXMgcXVpdGUgd2hhdCBNYXJrIHdh
cyBzdWdnZXN0aW5nLiBNeSB1bmRlcnN0YW5kaW5nIG9mDQo+IGhpcyBlbWFpbCBbMV0gd2FzIHRo
YXQgeW91IHdvdWxkIGRvIHNvbWV0aGluZyBsaWtlOg0KPiANCj4gICBQTVVfRk9STUFUX0FUVFIo
YXhpX2lkLCAiY29uZmlnMTowLTE1Iik7DQo+ICAgUE1VX0ZPUk1BVF9BVFRSKGF4aV9tYXNrLCAi
Y29uZmlnMToxNi0zMSIpOw0KPiANCj4gYW5kIHRoZW4gaWYgdGhlIHVzZXIgb21pdHMgdG8gc3Bl
Y2lmeSBheGlfbWFzaywgaXQgaGFzIGEgdmFsdWUgb2YgMCB3aGljaCBtZWFucw0KPiB0aGF0IGFs
bCBvZiB0aGUgYXhpX2lkIGJpdHMgYXJlIG1hdGNoZWQgKGkuZS4gdGhlIGRyaXZlciBpbnZlcnRz
IHRoZSBtYXNrDQo+IGludGVybmFsbHkpLiBJIHRoaW5rIHRoYXQncyBhY3R1YWxseSB3aGF0IHlv
dXIgY29kZSBpcyBkb2luZzoNCj4gDQo+ID4gQEAgLTI4OCw2ICszMzcsMjEgQEAgc3RhdGljIGlu
dCBkZHJfcGVyZl9ldmVudF9hZGQoc3RydWN0IHBlcmZfZXZlbnQNCj4gKmV2ZW50LCBpbnQgZmxh
Z3MpDQo+ID4gIAlzdHJ1Y3QgaHdfcGVyZl9ldmVudCAqaHdjID0gJmV2ZW50LT5odzsNCj4gPiAg
CWludCBjb3VudGVyOw0KPiA+ICAJaW50IGNmZyA9IGV2ZW50LT5hdHRyLmNvbmZpZzsNCj4gPiAr
CWludCBjZmcxID0gZXZlbnQtPmF0dHIuY29uZmlnMTsNCj4gPiArDQo+ID4gKwlpZiAocG11LT5k
ZXZ0eXBlX2RhdGEtPnF1aXJrcyAmIEREUl9DQVBfQVhJX0lEX0ZJTFRFUikgew0KPiA+ICsJCWlu
dCBpOw0KPiA+ICsNCj4gPiArCQlmb3IgKGkgPSAxOyBpIDwgTlVNX0NPVU5URVJTOyBpKyspIHsN
Cj4gPiArCQkJaWYgKHBtdS0+ZXZlbnRzW2ldICYmDQo+ID4gKwkJCSAgICAhZGRyX3BlcmZfZmls
dGVyc19jb21wYXRpYmxlKGV2ZW50LCBwbXUtPmV2ZW50c1tpXSkpDQo+ID4gKwkJCQlyZXR1cm4g
LUVJTlZBTDsNCj4gPiArCQl9DQo+ID4gKw0KPiA+ICsJCS8qIHJldmVydCBheGlfaWQgbWFza2lu
ZyB2YWx1ZSAqLw0KPiA+ICsJCWNmZzEgXj0gQVhJX01BU0tJTkdfUkVWRVJUOw0KPiANCj4gaXQn
cyBqdXN0IHRoYXQgdGhlIHVzZXIgQUJJIHNob3VsZCBwcm9iYWJseSBzZXBhcmF0ZSB0aGVzZSB0
d28gZmllbGRzIG91dCBhcw0KPiBhYm92ZS4NCj4gDQo+IEkgd2FzIGdvaW5nIHRvIG1ha2UgdGhl
IGNoYW5nZSB3aGVuIG1lcmdpbmcgdGhpcyBwYXRjaCwgYnV0IHlvdSBuZWVkIHRvDQo+IHVwZGF0
ZSB0aGUgRG9jdW1lbnRhdGlvbiBpbiB0aGUgc2Vjb25kIHBhdGNoIHRvby4NCg0KW0pvYWtpbV0g
VGhhbmtzIFdpbGwsIEkgaGF2ZSB1cGRhdGVkIHRoZSBkcml2ZXIgYW5kIGNvbW1pdCBtZXNzYWdl
IGluIHRoZSBmaXJzdCBwYXRjaCwgYWxzbyB1cGRhdGVkIGRvYyBpbiB0aGUgc2Vjb25kIHBhdGNo
LiBJIGFtIGdvaW5nIHRvIHNlbmQgb3V0IGEgVjgsIHRoYW5rIHlvdSBmb3IgeW91ciBraW5kbHkg
cmV2aWV3Lg0KDQpCZXN0IFJlZ2FyZHMsDQpKb2FraW0gWmhhbmcNCj4gV2lsbA0KPiANCj4gWzFd
DQo+IGh0dHBzOi8vZXVyMDEuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1o
dHRwcyUzQSUyRiUyRmxrbWwua2VyDQo+IG5lbC5vcmclMkZyJTJGMjAxOTA4MjMxMjU3MTkuR0Q1
NTQ4MCU0MGxha3JpZHMuY2FtYnJpZGdlLmFybS5jb20mYQ0KPiBtcDtkYXRhPTAyJTdDMDElN0Nx
aWFuZ3FpbmcuemhhbmclNDBueHAuY29tJTdDZmE2YWYxMzIwZWQzNDVjMmRlMw0KPiBmMDhkNzJi
MWNhZTg1JTdDNjg2ZWExZDNiYzJiNGM2ZmE5MmNkOTljNWMzMDE2MzUlN0MwJTdDMCU3QzYzNzAN
Cj4gMjUyNzQ1MDc4MjIxMDUmYW1wO3NkYXRhPW13THVhJTJCSW5scWQ4M1ozaDdEVGtZejJXYjBW
eGJpenJyb1dZDQo+IGg4M2wlMkIwZyUzRCZhbXA7cmVzZXJ2ZWQ9MA0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
