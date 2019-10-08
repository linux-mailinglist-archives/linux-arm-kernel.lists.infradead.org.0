Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C961ECF06E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 03:24:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NebJOHqFc3ba9vrmEu5VC6iRrSYQ/R5jgQyLsP9JmAg=; b=iZKhim+fu039jb
	TxpyWfpwln63h4H3QNHmgS7rztChZ2cKH2N14UeLQvFxiX9iaogW+HwRXW4KjZfzYnHbDzCo7GWTi
	mRKlm8OCDIQQwtCgOASB6xZsxEnw+K0jXQu3EGoq4tVihY8RRqCKoj4QnPyDlZ1IpK5KqgY0k2jVG
	A3X4dROYM1vazWmDnboXgqS0qJ1y86GGFACtvKyCYjOPh0hSIKB1pYTS1isPhh+JNxLzzcsdmHt1J
	UWHT8iav6AgmVvOfKIiVvCp/+uWvLHwI74g/P2BnPeJt9e6k5CKiaXwh6Pi7CBArUSiL4JCi2+eS8
	MuU9/2e2hQvfcx2xz7Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHeEV-0005r9-41; Tue, 08 Oct 2019 01:24:11 +0000
Received: from mail-eopbgr40076.outbound.protection.outlook.com ([40.107.4.76]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHeEL-0005qP-Hb
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 01:24:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AGbRK+cO4Hn0tyormGesEL6umKnqcKc6bwMlcis/jgMTAKxgizhLi/Rm54uFQai8C1HFHJ/EgucERlSgK3OfsQS3oIe+YK1icTpz69OxxiBGKuTFKx1SmTwDG/HMRAhBcaC01ZZeDeHx+/qZqq6eYHKRzbEDfk1QJWpJ2cwSf52PLdkIFey0tXy2LSfEk0ujHZ2J0GgGjifs32um7BN35yfkvUO4rI2Cc/GBHOpTOuKhpjW2dXRpmbLRxaQXl43Iko5x81uL+q98U/ZRDNDC5b+vBDXovuvDuCVqaRISpDQkdxrHiJxSghqmCHw+jNJI7JDO7SJSJvYIYIVNhqg1Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PXdl6zGKYQr3UqXF+Q4qnSOYWnnZNBZXfydR2SOhWtU=;
 b=LSUEce54jO6KJzGfvd1QaMH34HkQ8UTuMo/C/WI6LCAxjYNm7+mQta9Mbg0lqbyUlW5tZlSqAlssJ3Ig+u30W/i94SAAr/fN+/ywlETT53tWU3xlxbHJc5oT/5H1aaW6pCS8993nhBoY6s94vI8tsOBrxPlWGdZhR/zdZ9RavygnlFKlReEQ6DQ+F6JQySDfeEMzaNULL+3VtGd1MhXv81XSe/T9PAi/qawFZW0GxBAkow3Q5VRCKIxvTju0BuHS6i9BNEC0NhyW00cH0T1p+DtYAYi+hGuW1svcllDj3ASVYIOgLlFlXZx+WzyJR/tCYh0Y3ZK1Ez4fVQ6DrklMfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PXdl6zGKYQr3UqXF+Q4qnSOYWnnZNBZXfydR2SOhWtU=;
 b=SAECd+P9mCNGogUFk24tXdUux0039itunft1wp/sEvZiVVKfa4TY5xvxoCuXIWn22uyrWhhcsDi2Uio6zdMOdbU5E45ET0Cpi8Hdy9ApYHCb9avwmiVRINteUuBRBh5jbEa0xEYhew49SOSOCVa2QQNR6fU8L+bIxc/ZodY4SKY=
Received: from AM5PR04MB3299.eurprd04.prod.outlook.com (10.173.255.158) by
 AM5PR04MB3027.eurprd04.prod.outlook.com (10.173.254.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.24; Tue, 8 Oct 2019 01:23:55 +0000
Received: from AM5PR04MB3299.eurprd04.prod.outlook.com
 ([fe80::5dd3:ddc9:411a:db41]) by AM5PR04MB3299.eurprd04.prod.outlook.com
 ([fe80::5dd3:ddc9:411a:db41%3]) with mapi id 15.20.2305.023; Tue, 8 Oct 2019
 01:23:55 +0000
From: Xiaowei Bao <xiaowei.bao@nxp.com>
To: Andrew Murray <andrew.murray@arm.com>
Subject: RE: [PATCH v4 11/11] misc: pci_endpoint_test: Add LS1088a in
 pci_device_id table
Thread-Topic: [PATCH v4 11/11] misc: pci_endpoint_test: Add LS1088a in
 pci_device_id table
Thread-Index: AQHVcn/x16DzWe6fqE+HQYFU7grjl6dEWbwAgAuvO5A=
Date: Tue, 8 Oct 2019 01:23:55 +0000
Message-ID: <AM5PR04MB329958D65C0D0B5172FEBE07F59A0@AM5PR04MB3299.eurprd04.prod.outlook.com>
References: <20190924021849.3185-1-xiaowei.bao@nxp.com>
 <20190924021849.3185-12-xiaowei.bao@nxp.com>
 <20190930145723.GC42880@e119886-lin.cambridge.arm.com>
In-Reply-To: <20190930145723.GC42880@e119886-lin.cambridge.arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xiaowei.bao@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f6a50e3b-2525-438e-9b04-08d74b8e3005
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: AM5PR04MB3027:|AM5PR04MB3027:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM5PR04MB3027E3B88FE9BA9C30801119F59A0@AM5PR04MB3027.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 01842C458A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(136003)(396003)(366004)(376002)(13464003)(199004)(189003)(305945005)(66446008)(64756008)(9686003)(6436002)(102836004)(76176011)(53546011)(229853002)(6506007)(256004)(8936002)(7416002)(14454004)(33656002)(81166006)(81156014)(4326008)(44832011)(54906003)(66476007)(478600001)(66556008)(74316002)(316002)(8676002)(6246003)(55016002)(52536014)(6116002)(86362001)(25786009)(26005)(71190400001)(71200400001)(7696005)(7736002)(486006)(2906002)(76116006)(11346002)(446003)(5660300002)(66066001)(66946007)(6916009)(3846002)(186003)(99286004)(476003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR04MB3027;
 H:AM5PR04MB3299.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wTa4eLZVGRwiH5mvZdD9d4dvHBKed8mHXgExF3snZqV7NTFpr3f2NzQKH5l9mdRhVdyTUDide3mtdHPA/8ccdU2s68cXiO9iDkL1rd6yktcC4cohu6Qdm/+r7+3f76ze9tTe3phqrshiypZ2WuMtPjWIu2U/cTn5sdNpMOmbf3EmHP8z5kQLp7eyKR/BTx4UXPke901+SdjEtlVJJ/zB+MdmYrYR8wj1W4WmOk/HmKeKT1a+OuoU+Ol3qEKvCYcACQVRqv9UL6gqeMYLbg7INqYkS+vPg2hVnON+FbxKJ4awdZgWdF16WA+W5C7hpXcre702+cSbioWvzouNX+/EWdSNKSr2Kg5Wp5F63NN1gvUTcnhSsGhO7G4zLYwHNr+tyBJ7v/lqRnbxgfbf4O6SvCYq1dv5OoMHAFnUFp6eDO8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f6a50e3b-2525-438e-9b04-08d74b8e3005
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2019 01:23:55.8358 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7ZQfdJQG7kEn+VRMm8DaviIrY2kXwnl/5vHTpx0CRCdmdxwlh+x+XFJA9wmJPdb18GvHWMBTGxqZQoVruRw8EA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR04MB3027
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_182401_587061_3EB14DBD 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.76 listed in list.dnswl.org]
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
 "jingoohan1@gmail.com" <jingoohan1@gmail.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kishon@ti.com" <kishon@ti.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "gustavo.pimentel@synopsys.com" <gustavo.pimentel@synopsys.com>,
 Leo Li <leoyang.li@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 Mingkai Hu <mingkai.hu@nxp.com>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQW5kcmV3IE11cnJheSA8
YW5kcmV3Lm11cnJheUBhcm0uY29tPg0KPiBTZW50OiAyMDE5xOo51MIzMMjVIDIyOjU3DQo+IFRv
OiBYaWFvd2VpIEJhbyA8eGlhb3dlaS5iYW9AbnhwLmNvbT4NCj4gQ2M6IHJvYmgrZHRAa2VybmVs
Lm9yZzsgbWFyay5ydXRsYW5kQGFybS5jb207IHNoYXduZ3VvQGtlcm5lbC5vcmc7IExlbw0KPiBM
aSA8bGVveWFuZy5saUBueHAuY29tPjsga2lzaG9uQHRpLmNvbTsgbG9yZW56by5waWVyYWxpc2lA
YXJtLmNvbTsgTS5oLg0KPiBMaWFuIDxtaW5naHVhbi5saWFuQG54cC5jb20+OyBNaW5na2FpIEh1
IDxtaW5na2FpLmh1QG54cC5jb20+OyBSb3kNCj4gWmFuZyA8cm95LnphbmdAbnhwLmNvbT47IGpp
bmdvb2hhbjFAZ21haWwuY29tOw0KPiBndXN0YXZvLnBpbWVudGVsQHN5bm9wc3lzLmNvbTsgbGlu
dXgtcGNpQHZnZXIua2VybmVsLm9yZzsNCj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnOyBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsNCj4gbGludXgta2VybmVsQHZnZXIu
a2VybmVsLm9yZzsgbGludXhwcGMtZGV2QGxpc3RzLm96bGFicy5vcmcNCj4gU3ViamVjdDogUmU6
IFtQQVRDSCB2NCAxMS8xMV0gbWlzYzogcGNpX2VuZHBvaW50X3Rlc3Q6IEFkZCBMUzEwODhhIGlu
DQo+IHBjaV9kZXZpY2VfaWQgdGFibGUNCj4gDQo+IE9uIFR1ZSwgU2VwIDI0LCAyMDE5IGF0IDEw
OjE4OjQ5QU0gKzA4MDAsIFhpYW93ZWkgQmFvIHdyb3RlOg0KPiA+IEFkZCBMUzEwODhhIGluIHBj
aV9kZXZpY2VfaWQgdGFibGUgc28gdGhhdCBwY2ktZXBmLXRlc3QgY2FuIGJlIHVzZWQNCj4gPiBm
b3IgdGVzdGluZyBQQ0llIEVQIGluIExTMTA4OGEuDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBY
aWFvd2VpIEJhbyA8eGlhb3dlaS5iYW9AbnhwLmNvbT4NCj4gPiAtLS0NCj4gPiB2MjoNCj4gPiAg
LSBObyBjaGFuZ2UuDQo+ID4gdjM6DQo+ID4gIC0gTm8gY2hhbmdlLg0KPiA+IHY0Og0KPiA+ICAt
IFVzZSBhIG1hY28gdG8gZGVmaW5lIHRoZSBMUzEwODhhIGRldmljZSBJRC4NCj4gPg0KPiA+ICBk
cml2ZXJzL21pc2MvcGNpX2VuZHBvaW50X3Rlc3QuYyB8IDIgKysNCj4gPiAgMSBmaWxlIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWlzYy9w
Y2lfZW5kcG9pbnRfdGVzdC5jDQo+ID4gYi9kcml2ZXJzL21pc2MvcGNpX2VuZHBvaW50X3Rlc3Qu
Yw0KPiA+IGluZGV4IDZlMjA4YTAuLjhjMjIyYTYgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9t
aXNjL3BjaV9lbmRwb2ludF90ZXN0LmMNCj4gPiArKysgYi9kcml2ZXJzL21pc2MvcGNpX2VuZHBv
aW50X3Rlc3QuYw0KPiA+IEBAIC02NSw2ICs2NSw3IEBADQo+ID4gICNkZWZpbmUgUENJX0VORFBP
SU5UX1RFU1RfSVJRX05VTUJFUgkJMHgyOA0KPiA+DQo+ID4gICNkZWZpbmUgUENJX0RFVklDRV9J
RF9USV9BTTY1NAkJCTB4YjAwYw0KPiA+ICsjZGVmaW5lIFBDSV9ERVZJQ0VfSURfTFMxMDg4QQkJ
CTB4ODBjMA0KPiANCj4gUmV2aWV3ZWQtYnk6IEFuZHJldyBNdXJyYXkgPGFuZHJldy5tdXJyYXlA
YXJtLmNvbT4NCg0KVGhhbmtzIEFuZHJldy4NCg0KPiANCj4gPg0KPiA+ICAjZGVmaW5lIGlzX2Ft
NjU0X3BjaV9kZXYocGRldikJCVwNCj4gPiAgCQkoKHBkZXYpLT5kZXZpY2UgPT0gUENJX0RFVklD
RV9JRF9USV9BTTY1NCkgQEAgLTc5Myw2ICs3OTQsNw0KPiBAQA0KPiA+IHN0YXRpYyBjb25zdCBz
dHJ1Y3QgcGNpX2RldmljZV9pZCBwY2lfZW5kcG9pbnRfdGVzdF90YmxbXSA9IHsNCj4gPiAgCXsg
UENJX0RFVklDRShQQ0lfVkVORE9SX0lEX1RJLCBQQ0lfREVWSUNFX0lEX1RJX0RSQTc0eCkgfSwN
Cj4gPiAgCXsgUENJX0RFVklDRShQQ0lfVkVORE9SX0lEX1RJLCBQQ0lfREVWSUNFX0lEX1RJX0RS
QTcyeCkgfSwNCj4gPiAgCXsgUENJX0RFVklDRShQQ0lfVkVORE9SX0lEX0ZSRUVTQ0FMRSwgMHg4
MWMwKSB9LA0KPiA+ICsJeyBQQ0lfREVWSUNFKFBDSV9WRU5ET1JfSURfRlJFRVNDQUxFLCBQQ0lf
REVWSUNFX0lEX0xTMTA4OEEpIH0sDQo+ID4gIAl7IFBDSV9ERVZJQ0VfREFUQShTWU5PUFNZUywg
RUREQSwgTlVMTCkgfSwNCj4gPiAgCXsgUENJX0RFVklDRShQQ0lfVkVORE9SX0lEX1RJLCBQQ0lf
REVWSUNFX0lEX1RJX0FNNjU0KSwNCj4gPiAgCSAgLmRyaXZlcl9kYXRhID0gKGtlcm5lbF91bG9u
Z190KSZhbTY1NF9kYXRhDQo+ID4gLS0NCj4gPiAyLjkuNQ0KPiA+DQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
