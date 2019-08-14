Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AC188D005
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 11:48:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7iKxKruQfn2Af7DpyRE3pOygPD5JLYaWoqxqSy12R98=; b=RtD2+NC0Qcvz7Z
	N7mlhtG5n1SwT5eMw47R3tb7TkTFVt6Y2k5wqG8Chhwjf4CYzn0fCVArdnHM6SW5V4SyQFPffEjIK
	cH9YsNRjMDtSU+LMB/C14lWLaPFypZlE0rlg1rqM+IDiN9PgiYXkZXvEUdiAp9Go+3f+OYqIbccUq
	GtyPjTmUORYc821jMN4qggNLtyiY9rBmYr20mL40wPV2HRabi6S2/fCV4l4/bVF3erhOl8elPc9Iq
	v66meuTbawT3KCLqcraw9j8omLH7+bpppGIuE2eMZC+jfzLsRW8z/YCehDHVJhss7RX8W38II6rCK
	0xCrfSSfXEpb2cY1VDsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxptD-0004y3-QI; Wed, 14 Aug 2019 09:48:19 +0000
Received: from mail-eopbgr140087.outbound.protection.outlook.com
 ([40.107.14.87] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxpsz-0004wX-B0
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 09:48:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bwkwpaawxu1ym0E7wQUUX6fOFksPdn/tK+awmcHqL5zEJHE0Y6Th3kAHQvJCKAXkWJKYqakKJyjENo5GFfflBqi1A5it3GoBvAP3lRtAPS1vSsOVzs878b3xcX1R5brzwSSjGdTkejo2yiiDhuP5vutsBI5XMrxcnv+xeGHWGPMDirT48iliRRMXzwagzW7VFzeq+ftwltE9v76JkTuTf+MN+QAIeDgZg/urQ91wiaD8vsa/hS7fDEuwOBy/giG1HHWIcvcuYeTi6EOCAZE+r+XtSFQsVfHeHFrhvYddZ5kszNJ0VyWvyAD4IVlH4WOIUmv6/n+ovRjbEfTnLA+ETQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=znncMx6vllCfJyxWkEqGwlGZhaNvryEUZOqe1Jjrcd0=;
 b=L0Coq4SyFL5R4lZAkMmN4C0QcIF8LshE54h6YjWjfXzcBq1QAvcbxit43jyxwfghIYoFQ2WdLJli9/UXH8s+A6UcheeOU/KG4IYtxmomtV6K9KjJYyesqR+Mg4S3/k8jB7FY0DCQmG483qRE7G2ThK1eUH/700k2Q3mZH7DeTFyViE6Mfa+NMA6P+9a+wOD66Fuo7VFI9oZDpKBca+juAJOPWceez26lQ+KWTvp2SyW/MJCnGS+V8wEASmS2LfhylkJfsUqMrpPvAIdscz2qvv0DdvvHFj5rZnKzPMQIojgpyUqLQBbhAZHOSjbe7XRB1pcHBmz8R1o0mHbMBJskyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=znncMx6vllCfJyxWkEqGwlGZhaNvryEUZOqe1Jjrcd0=;
 b=JFGDgndUsMc97MhxjLtbPFC9uKb0Sm14mZo+hhxLraAFTXQMiI0yzV8a4wQVZsDXzTEmQoPJxiE7uv8p6bESqTECq1t8Pje3NzlSJWE2sS++I9n7npn54zIHEYobpxoq3MHd7Ym6gWFZX0iUPh9M4kjkXUgZOEGz4K26L2bFwb0=
Received: from AM5PR04MB3299.eurprd04.prod.outlook.com (10.173.255.158) by
 AM5PR04MB3297.eurprd04.prod.outlook.com (10.167.168.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.21; Wed, 14 Aug 2019 09:48:01 +0000
Received: from AM5PR04MB3299.eurprd04.prod.outlook.com
 ([fe80::5012:d47a:1f5d:9b84]) by AM5PR04MB3299.eurprd04.prod.outlook.com
 ([fe80::5012:d47a:1f5d:9b84%5]) with mapi id 15.20.2157.022; Wed, 14 Aug 2019
 09:48:01 +0000
From: Xiaowei Bao <xiaowei.bao@nxp.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: RE: [PATCHv6 1/2] PCI: layerscape: Add the bar_fixed_64bit property
 in EP driver.
Thread-Topic: [PATCHv6 1/2] PCI: layerscape: Add the bar_fixed_64bit property
 in EP driver.
Thread-Index: AQHVUkXX4F7jGdZiC0eiDW46LdzUUKb6YRoAgAABy8A=
Date: Wed, 14 Aug 2019 09:48:00 +0000
Message-ID: <AM5PR04MB32994A55A2951DD071C19F66F5AD0@AM5PR04MB3299.eurprd04.prod.outlook.com>
References: <20190814020330.12133-1-xiaowei.bao@nxp.com>
 <20190814092952.GA26840@e121166-lin.cambridge.arm.com>
In-Reply-To: <20190814092952.GA26840@e121166-lin.cambridge.arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xiaowei.bao@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 032b63a8-b94d-4125-2196-08d7209c7eec
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM5PR04MB3297; 
x-ms-traffictypediagnostic: AM5PR04MB3297:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM5PR04MB32976EABAFAF0D81F000D736F5AD0@AM5PR04MB3297.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 01294F875B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(366004)(136003)(376002)(346002)(189003)(199004)(13464003)(99286004)(25786009)(53936002)(54906003)(478600001)(55016002)(5660300002)(316002)(6246003)(71190400001)(33656002)(256004)(81166006)(81156014)(8676002)(71200400001)(4326008)(9686003)(305945005)(74316002)(14454004)(26005)(52536014)(66446008)(76176011)(53546011)(6506007)(186003)(476003)(66476007)(6916009)(64756008)(66556008)(2906002)(7736002)(229853002)(86362001)(66946007)(8936002)(486006)(102836004)(76116006)(44832011)(66066001)(446003)(6436002)(11346002)(7696005)(3846002)(6116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR04MB3297;
 H:AM5PR04MB3299.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: BintUsxUwyYfBwckeoBu+OFlqDFsxSIAnuXdOTAYVrrZTWpckI3i4NqhN4OpuXX9GEhwh3bedmU2tie9YnY4A3m1OgUNzJHgMIpJqu40T3NI8NzAdJPDY7qdSGC8ZkoJ/20XQf60z+X/vZBoVWj85su8NYoauJKuMp7gRc59kYmXoF7VbRskwPGpc2z8c896KCgqop9TvBpsXwOFekRZG/gJ4c+fqNLrKEpjxqbq47800VjMAAccJ0V6hloKFRJevZ1jyVKCbp7Y/G18EDfrYXTJIQYoHXuHQht2iZYB5bQDmRFk+26MOxnFYpxN61WC2RPPEl1hyTZeyEHEXgBBqHT1QoX34EoJQVbcQWZ6c59bVm9qlVxpzrgRsfdrSxrj6XxlQRVY3Qb1kQQvPavhR5UiazaIvmlll5cWimigZb4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 032b63a8-b94d-4125-2196-08d7209c7eec
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2019 09:48:01.0497 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1cJup7C74HSirz/J66OznZIM1P/EwIGFvZsok3ZPDe6olYwbwdaMWNnUERoEVibIJ/bUri7b1oM6WCPZiXEAcQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR04MB3297
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_024805_385198_1FE06D31 
X-CRM114-Status: GOOD (  19.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.87 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Roy Zang <roy.zang@nxp.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "M.h. Lian" <minghuan.lian@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 Mingkai Hu <mingkai.hu@nxp.com>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTG9yZW56byBQaWVyYWxp
c2kgPGxvcmVuem8ucGllcmFsaXNpQGFybS5jb20+DQo+IFNlbnQ6IDIwMTnE6jjUwjE0yNUgMTc6
MzANCj4gVG86IFhpYW93ZWkgQmFvIDx4aWFvd2VpLmJhb0BueHAuY29tPg0KPiBDYzogTS5oLiBM
aWFuIDxtaW5naHVhbi5saWFuQG54cC5jb20+OyBNaW5na2FpIEh1DQo+IDxtaW5na2FpLmh1QG54
cC5jb20+OyBSb3kgWmFuZyA8cm95LnphbmdAbnhwLmNvbT47DQo+IGJoZWxnYWFzQGdvb2dsZS5j
b207IGxpbnV4cHBjLWRldkBsaXN0cy5vemxhYnMub3JnOw0KPiBsaW51eC1wY2lAdmdlci5rZXJu
ZWwub3JnOyBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7DQo+IGxpbnV4LWtl
cm5lbEB2Z2VyLmtlcm5lbC5vcmcNCj4gU3ViamVjdDogUmU6IFtQQVRDSHY2IDEvMl0gUENJOiBs
YXllcnNjYXBlOiBBZGQgdGhlIGJhcl9maXhlZF82NGJpdCBwcm9wZXJ0eQ0KPiBpbiBFUCBkcml2
ZXIuDQo+IA0KPiBJIGFza2VkIHlvdSB0byByZW1vdmUgdGhlIHBlcmlvZCBhdCB0aGUgZW5kIG9m
IHRoZSBwYXRjaCAkU1VCSkVDVCBhbmQgeW91DQo+IGRpZCBub3QsIGVpdGhlciB5b3UgZG8gbm90
IHJlYWQgd2hhdCBJIHdyaXRlIG9yIGV4cGxhaW4gbWUgd2hhdCdzIGdvaW5nIG9uLg0KU29ycnks
IEkgZGlkbid0IHVuZGVyc3RhbmQgdGhlIG1lYW5pbmcgb2YgcGVyaW9kIGNvcnJlY3RseSBiZWZv
cmUuIA0KPiANCj4gT24gV2VkLCBBdWcgMTQsIDIwMTkgYXQgMTA6MDM6MjlBTSArMDgwMCwgWGlh
b3dlaSBCYW8gd3JvdGU6DQo+ID4gVGhlIFBDSWUgY29udHJvbGxlciBvZiBsYXllcnNjYXBlIGp1
c3QgaGF2ZSA0IEJBUnMsIEJBUjAgYW5kIEJBUjEgaXMNCj4gPiAzMmJpdCwgQkFSMiBhbmQgQkFS
NCBpcyA2NGJpdCwgdGhpcyBpcyBkZXRlcm1pbmVkIGJ5IGhhcmR3YXJlLCBzbyBzZXQNCj4gPiB0
aGUgYmFyX2ZpeGVkXzY0Yml0IHdpdGggMHgxNC4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFhp
YW93ZWkgQmFvIDx4aWFvd2VpLmJhb0BueHAuY29tPg0KPiANCj4gS2lzaG9uIEFDSydlZCB0aGlz
IHBhdGNoIGFuZCB5b3UgaGF2ZSBub3QgY2FycmllZCBoaXMgdGFnLg0KPiANCj4gSSB3aWxsIG1h
a2UgdGhlc2UgY2hhbmdlcyBidXQgdGhhdCdzIHRoZSBsYXN0IHRpbWUgSSBkbyB0aGF0IGZvciB5
b3UuDQpUaGFua3MgYSBsb3QsIHlvdXIgbWVhbnMgaXMgdGhhdCBJIGRvbid0IG5lZWQgdG8gc2Vu
ZCB0aGUgdjcgcGF0Y2ggYW5kIHlvdSBoZWxwIG1lIHRvDQpDb3JyZWN0IHRoaXMgcGF0Y2gsIHll
cz8gVGhhbmtzIGEgbG90IGZvciB5b3VyIGhlbHAgYWJvdXQgdGhlIHJ1bGVzIG9mIHRoZSB1cHN0
cmVhbS4gSSB3aWxsDQpDb3JyZWN0IHRoaXMgZXJyb3IgbmV4dCB0aW1lLiBeLl4gDQo+IA0KPiBM
b3JlbnpvDQo+IA0KPiA+IC0tLQ0KPiA+IHYyOg0KPiA+ICAtIFJlcGxhY2UgdmFsdWUgMHgxNCB3
aXRoIGEgbWFjcm8uDQo+ID4gdjM6DQo+ID4gIC0gTm8gY2hhbmdlLg0KPiA+IHY0Og0KPiA+ICAt
IHNlbmQgdGhlIHBhdGNoIGFnYWluIHdpdGggJy0tdG8nLg0KPiA+IHY1Og0KPiA+ICAtIGZpeCB0
aGUgY29tbWl0IG1lc3NhZ2UuDQo+ID4gdjY6DQo+ID4gIC0gcmVtb3ZlIHRoZSBbRVhUXSB0YWcg
b2YgdGhlICRTVUJKRUNUIGluIGVtYWlsLg0KPiA+DQo+ID4gIGRyaXZlcnMvcGNpL2NvbnRyb2xs
ZXIvZHdjL3BjaS1sYXllcnNjYXBlLWVwLmMgfCAxICsNCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxl
ci9kd2MvcGNpLWxheWVyc2NhcGUtZXAuYw0KPiA+IGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9k
d2MvcGNpLWxheWVyc2NhcGUtZXAuYw0KPiA+IGluZGV4IGJlNjFkOTYuLmNhOWFhNDUgMTAwNjQ0
DQo+ID4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpLWxheWVyc2NhcGUtZXAu
Yw0KPiA+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaS1sYXllcnNjYXBlLWVw
LmMNCj4gPiBAQCAtNDQsNiArNDQsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHBjaV9lcGNfZmVh
dHVyZXMNCj4gbHNfcGNpZV9lcGNfZmVhdHVyZXMgPSB7DQo+ID4gIAkubGlua3VwX25vdGlmaWVy
ID0gZmFsc2UsDQo+ID4gIAkubXNpX2NhcGFibGUgPSB0cnVlLA0KPiA+ICAJLm1zaXhfY2FwYWJs
ZSA9IGZhbHNlLA0KPiA+ICsJLmJhcl9maXhlZF82NGJpdCA9ICgxIDw8IEJBUl8yKSB8ICgxIDw8
IEJBUl80KSwNCj4gPiAgfTsNCj4gPg0KPiA+ICBzdGF0aWMgY29uc3Qgc3RydWN0IHBjaV9lcGNf
ZmVhdHVyZXMqDQo+ID4gLS0NCj4gPiAyLjkuNQ0KPiA+DQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
