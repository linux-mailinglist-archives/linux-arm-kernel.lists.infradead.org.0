Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1CDB667A7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 09:18:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wmO3onUSczTouBpw84XF8e6obUxCp59rBGAcsK1mvH8=; b=jEFKqLe7YRQNjA
	SjpIUdX9oRoJT7+IN9zJc7+jKdAyiNNc8cUo1wqcrKNB+Dyv5zRAhCU2Zk3fBgaMAUdPjl6PfbpMo
	8KUBB2dhpStG5JDLij65DrvHGOCSeI+wXZBCHAFMEE0+LqmFRQpxssEpXz6sK8vgg3srsBQrF05kc
	8fwsDdn3Ll5SlRPxw36S4FJyj2jsZjLuWIG5Q7WmpuG+V2iKB00aEhaoSQk2Z9MsNKo4hHWvj0xBy
	0HK0yFoYZIFQoqPOBv+8isxu1ZiYSpVq9nCElg+WU+xeVzi/te8+q8CG/1iD1SSaW/BauftgaKE2Z
	L7oWmyYzDqqaZbLIZ8ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlppC-0000Rm-PW; Fri, 12 Jul 2019 07:18:34 +0000
Received: from mail-ve1eur02on0614.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::614]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlpoy-0000Qv-0x
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 07:18:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Thst/zIs020RedXDeldQIM0WSiJSvJ3mp0Tt+QAX10r2mhoX21ubXcsSVDNHDlTvMBUcYnEAOJqDm8d1u+UM2rnfnUtbISfHYMyZPC9s9WJOaFv7py2yJHaruDAUaLrxcPkMZJTOc5LiLtKEWUk2QEMyTXyM5UWXRIV3YERRhRA3hwXg3jk8WEQbE9zMhp36wjJ8B/kcKfgCDoCduMXTdhG4cNGeXNvfw+DvfYTVZMR92pnizTqzEV/tItJGZC1iQgpyFtn4p0zfZ45+QOIBUFd4+UuTWpTs2hUaBWSFfwGEXF/tK5mFmXTE6l3TBZSZEYwjbQUgtD5mH5LNNY44iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3pUOnZHgkII4eBI1j4Mh7/If1MSXzvM+7rVfBG1SYY4=;
 b=H5nm4h8Y8oppwzIK9zTTYms3yJlQXbvwkBOWzAcjVAdkpvlMjaUFfZUIu6C59xn92S1DEdngHZuGShLwT2XYAWPEw2RJIw9/GYf6AGXsurtf8VmgW7g95aFQyfOuA9A50QINStv8GzCuynKalH4itxSsW9/KWOijcOKZ5JB5wV/wMm1XDmZB/LbeYVagjGFZOgKuJCwvlBJis5Q6lYdU1CBo+rAqvyHoy7kZmjkkL1PC2zTZ3wHE0B5UoFsqJxFdZ8Mtyh2gOz3V6t3eg/v6VuXdvJ168uKM0Qilin/iddMpR6x1UlDJlj0tHH49uP0NhMcUg/HrKU0IDdiwmWPtYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3pUOnZHgkII4eBI1j4Mh7/If1MSXzvM+7rVfBG1SYY4=;
 b=Nw68WmdzdmuUaL22npsr9zCSu+E10W0EJpfnwXcS43DHE/8ub7jk1FhJWsmC8/gcyaEZZCS7JTgMTHjTvH0lH7LtmCGWULgbHh7lxWxPAtt0O6bpAu6dxvTznfUs2rHxJ2cnCY+Qn7TOy+G5N/yXrTg0MqpALzJGQomOPNPBHXk=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB5561.eurprd04.prod.outlook.com (20.178.106.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Fri, 12 Jul 2019 07:18:14 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::6553:8d04:295c:774b]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::6553:8d04:295c:774b%5]) with mapi id 15.20.2073.008; Fri, 12 Jul 2019
 07:18:14 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: Will Deacon <will@kernel.org>
Subject: RE: [PATCH] perf: imx8_ddr_perf: calculate ddr bandwidth via virtual
 event read-bytes/write-bytes
Thread-Topic: [PATCH] perf: imx8_ddr_perf: calculate ddr bandwidth via virtual
 event read-bytes/write-bytes
Thread-Index: AQHVNhmxp3M1xbcYYkqaUv5u35ujeabCcXCAgAQiCLA=
Date: Fri, 12 Jul 2019 07:18:14 +0000
Message-ID: <DB7PR04MB4618081D853C6CF9015D86EFE6F20@DB7PR04MB4618.eurprd04.prod.outlook.com>
References: <20190709054417.11734-1-qiangqing.zhang@nxp.com>
 <20190709155606.x45nmew253giwvgf@willie-the-truck>
In-Reply-To: <20190709155606.x45nmew253giwvgf@willie-the-truck>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8b94ce24-a0c8-4133-023c-08d706991ae2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR04MB5561; 
x-ms-traffictypediagnostic: DB7PR04MB5561:
x-microsoft-antispam-prvs: <DB7PR04MB55612BD40EE0DAFBDCEBA35DE6F20@DB7PR04MB5561.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 00963989E5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(136003)(346002)(376002)(366004)(189003)(199004)(13464003)(53546011)(6436002)(74316002)(6506007)(76176011)(305945005)(6246003)(33656002)(7736002)(486006)(14454004)(53936002)(25786009)(4326008)(55016002)(9686003)(478600001)(6916009)(99286004)(52536014)(71190400001)(71200400001)(7696005)(316002)(86362001)(54906003)(66946007)(76116006)(66476007)(476003)(11346002)(66556008)(446003)(64756008)(66446008)(5660300002)(8676002)(229853002)(256004)(81156014)(81166006)(102836004)(2906002)(68736007)(186003)(6116002)(3846002)(26005)(66066001)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB5561;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: kUx1AIKMVK2h9VK8ACwzt6duzg8IzUlKqfBLFidxVe8HeH4Xy8gy0Hy/spJAyKyPhw22MAjvLRmQ6qkyeFsqx0jNWlvgTsXeZ74qmjRVwPGfvSSAL8yvvvYNE/pdYwJRSrL2jYj0kx8YrwGVD3jaleft/U+4SxbDd7IQ2UM8PYKue3+dKgOKNPT83kQBGnCCaebkxUN9eQIw33c9e1rALzWPyUf5hnwJj80QIIlsJYwN6PCSQnH7JOutEEAv1JHjLFQ7cxMBuLtSZbgqaksZQxKQTSXeox89u+p63p9OmuJFcEPXOmGVL+XvUA//tJswxL9aSo4PqMijPnEOepcjAASuqlWtxlMipSWtB8oy3WjJLFYJdS9t/bBQaIhAJA1I5dQ9AFdYaaB1EDwXvcpK3g8tmEQKxnlC7GfivWGa9xw=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b94ce24-a0c8-4133-023c-08d706991ae2
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jul 2019 07:18:14.6107 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qiangqing.zhang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5561
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_001820_174583_5377AF02 
X-CRM114-Status: GOOD (  17.49  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:614 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFdpbGwgRGVhY29uIDx3aWxs
QGtlcm5lbC5vcmc+DQo+IFNlbnQ6IDIwMTnE6jfUwjnI1SAyMzo1Ng0KPiBUbzogSm9ha2ltIFpo
YW5nIDxxaWFuZ3FpbmcuemhhbmdAbnhwLmNvbT4NCj4gQ2M6IG1hcmsucnV0bGFuZEBhcm0uY29t
OyBGcmFuayBMaSA8ZnJhbmsubGlAbnhwLmNvbT47DQo+IGtlcm5lbEBwZW5ndXRyb25peC5kZTsg
ZGwtbGludXgtaW14IDxsaW51eC1pbXhAbnhwLmNvbT47DQo+IGxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZw0KPiBTdWJqZWN0OiBSZTogW1BBVENIXSBwZXJmOiBpbXg4X2Rkcl9w
ZXJmOiBjYWxjdWxhdGUgZGRyIGJhbmR3aWR0aCB2aWEgdmlydHVhbA0KPiBldmVudCByZWFkLWJ5
dGVzL3dyaXRlLWJ5dGVzDQo+IA0KPiBPbiBUdWUsIEp1bCAwOSwgMjAxOSBhdCAwNTo0Njo0NEFN
ICswMDAwLCBKb2FraW0gWmhhbmcgd3JvdGU6DQo+ID4gV2UgY2FuIGNhbGN1bGF0ZSBkZHIgYmFu
ZHdpZHRoIHZpYSB2aXJ0dWFsIGV2ZW50DQo+ID4gcmVhZC1ieXRlcy93cml0ZS1ieXRlcyBiYXNl
ZCBvbiBkZHIgYnVyc3Qgd2lkdGgsIHdoaWNoIGFjdHVhbGx5IHNoYXJlDQo+ID4gZXZlbnQgcmVh
ZC1jeWNsZXMvd3JpdGUtY3ljbGVzLiBCdXJzdCB3aWR0aCBpcyAzMiBiaXQgb24gaS5NWDggYm9h
cmQuDQo+ID4NCj4gPiBUaGUgZGRyIGludGVyZmFjZSB3aWxsIGdlbmVyYXRlIDIgdXAgZWRnZXMg
YW5kIDIgZG93biBlZGdlcyBpbiBhbg0KPiA+IGludGVybmFsIGNsb2NrIGN5Y2xlLCBzbyBpdCBj
YW4gcGFzcyA0IGJlYXRzIG9mIGRhdGEuIDQgYnl0ZXMgb2YgZWFjaA0KPiA+IGJlYXQgaWYgZGRy
IGJ1cnN0IHdpZHRoIGlzIDMyIGJpdC4NCj4gPg0KPiA+IGZvciBleGFtcGxlOg0KPiA+IHBlcmYg
c3RhdCAtYSAtZSBpbXg4X2RkcjAvcmVhZC1ieXRlcy8saW14OF9kZHIwL3dyaXRlLWJ5dGVzLyBs
cw0KPiANCj4gSSBkb24ndCB0aGluayB5b3Ugc2hvdWxkIGJlIGRvaW5nIHRoaXMgaW4gdGhlIGtl
cm5lbC4gQ2FuIHlvdSBsb29rIGF0DQo+IGltcGxlbWVudGluZyBpdCBpbiBwZXJmIHRvb2wgaW5z
dGVhZCBieSBhZGRpbmcgYSAuanNvbiBmaWxlIGZvciB5b3VyIFBNVSBhbmQNCj4gZXhwcmVzc2lu
ZyB0aGlzIGNvbXBvdW5kIGV2ZW50IHVzaW5nICJNZXRyaWNFeHByIj8NCg0KSGkgV2lsbCwNCg0K
SSB0cnkgdG8gaW1wbGVtZW50IGl0IGluIHBlcmYgdG9vbCwgYnV0IGl0IHNob3dzIG5vdGhpbmcg
d2l0aCBwZXJmIGxpc3QgbWV0cmljZ3JvdXAuDQoNCkEuIEFkZCBKU09OIG1ldHJpYy4NCmRpZmYg
LS1naXQgYS90b29scy9wZXJmL3BtdS1ldmVudHMvYXJjaC9hcm02NC9pbXgvaW14OC9kZHItbWV0
cmljLmpzb24gYi90b29scy9wZXJmL3BtdS1ldmVudHMvYXJjaC9hcm02NC9pbXgvaW14OC9kZHIt
bWV0cmljLmpzb24NCm5ldyBmaWxlIG1vZGUgMTAwNjQ0DQppbmRleCAwMDAwMDAwMDAwMDAuLjM1
ODhkYzVhNGY0Ng0KLS0tIC9kZXYvbnVsbA0KKysrIGIvdG9vbHMvcGVyZi9wbXUtZXZlbnRzL2Fy
Y2gvYXJtNjQvaW14L2lteDgvZGRyLW1ldHJpYy5qc29uDQpAQCAtMCwwICsxLDIwIEBADQorWw0K
KyAgICB7DQorICAgICAgICJQdWJsaWNEZXNjcmlwdGlvbiI6ICJDYWxjdWxhdGUgRERSIHJlYWQg
YmFuZHdpZHRoIGJhc2VkIG9uIHJlYWQtY3ljbGVzIGV2ZW50LiBERFIgaW50ZXJmYWNlIGdlbmVy
YXRlcyAyIHVwIGFuZCAyIGRvd24gZWRnZXMgaW4gYW4gaW50ZXJuYWwgY2xvY2sgY3ljbGUsIGNh
biBwYXNzIDQgYmVhdHMgb2YgZGF0YS4gNCBieXRlcyBvZiBlYWNoIGJlYXQgaWYgRERSIGJ1cnN0
IHdpZHRoIGlzIDMyIGJpdC4iLA0KKyAgICAgICAiTWV0cmljTmFtZSI6ICJpbXg4X2RkcjAvcmVh
ZC1ieXRlcy8iLA0KKyAgICAgICAiTWV0cmljR3JvdXAiOiAiYmFuZHdpZHRoIiwNCisgICAgICAg
Ik1ldHJpY0V4cHIiOiAiaW14OF9kZHIwL3JlYWQtY3ljbGVzLyAqIDQgKiA0IiwNCisgICAgICAg
ICJVbml0IjogIk1CIiwNCisgICAgICAgIlNjYWxlVW5pdCI6ICIwLjAwMDAwMSIsDQorICAgICAg
ICJCcmllZkRlc2NyaXB0aW9uIjogIkREUiByZWFkIGJhbmR3aWR0aCINCisgICAgfSwNCisgICAg
ew0KKyAgICAgICAiUHVibGljRGVzY3JpcHRpb24iOiAiQ2FsY3VsYXRlIEREUiB3cml0ZSBiYW5k
d2lkdGggYmFzZWQgb24gd3JpdGUtY3ljbGVzIGV2ZW50LiBERFIgaW50ZXJmYWNlIGdlbmVyYXRl
cyAyIHVwIGFuZCAyIGRvd24gZWRnZXMgaW4gYW4gaW50ZXJuYWwgY2xvY2sgY3ljbGUsIGNhbiBw
YXNzIDQgYmVhdHMgb2YgZGF0YS4gNCBieXRlcyBvZiBlYWNoIGJlYXQgaWYgRERSIGJ1cnN0IHdp
ZHRoIGlzIDMyIGJpdC4iLA0KKyAgICAgICAiTWV0cmljTmFtZSI6ICJpbXg4X2RkcjAvd3JpdGUt
Ynl0ZXMvIiwNCisgICAgICAgIk1ldHJpY0dyb3VwIjogImJhbmR3aWR0aCIsDQorICAgICAgICJN
ZXRyaWNFeHByIjogImlteDhfZGRyMC93cml0ZS1jeWNsZXMgKiA0ICogNCIsDQorICAgICAgICAi
VW5pdCI6ICJNQiIsDQorICAgICAgICJTY2FsZVVuaXQiOiAiMC4wMDAwMDEiLA0KKyAgICAgICAi
QnJpZWZEZXNjcmlwdGlvbiI6ICJERFIgd3JpdGUgYmFuZHdpZHRoIg0KKyAgICB9DQorXQ0KZGlm
ZiAtLWdpdCBhL3Rvb2xzL3BlcmYvcG11LWV2ZW50cy9hcmNoL2FybTY0L21hcGZpbGUuY3N2IGIv
dG9vbHMvcGVyZi9wbXUtZXZlbnRzL2FyY2gvYXJtNjQvbWFwZmlsZS5jc3YNCmluZGV4IDkyN2Zj
ZGRjYjRhYS4uMTJkMzc4ZGNhMGQxIDEwMDY0NA0KLS0tIGEvdG9vbHMvcGVyZi9wbXUtZXZlbnRz
L2FyY2gvYXJtNjQvbWFwZmlsZS5jc3YNCisrKyBiL3Rvb2xzL3BlcmYvcG11LWV2ZW50cy9hcmNo
L2FybTY0L21hcGZpbGUuY3N2DQpAQCAtMjAsMyArMjAsNCBAQA0KIDB4MDAwMDAwMDA0MzBmMGFm
MCx2MSxjYXZpdW0vdGh1bmRlcngyLGNvcmUNCiAweDAwMDAwMDAwNDgwZmQwMTAsdjEsaGlzaWxp
Y29uL2hpcDA4LGNvcmUNCiAweDAwMDAwMDAwNTAwZjAwMDAsdjEsYW1wZXJlL2VtYWcsY29yZQ0K
KzB4MDAwMDAwMDA0MTA4ZDA0MCx2MSxpbXgvaW14OCxjb3JlDQoNCkIuIFRlc3QNCnJvb3RAaW14
OHF4cG1lazp+IyBwZXJmIGxpc3QgbWV0cmljZ3JvdXANCg0KTGlzdCBvZiBwcmUtZGVmaW5lZCBl
dmVudHMgKHRvIGJlIHVzZWQgaW4gLWUpOg0KDQpyb290QGlteDhxeHBtZWs6fiMNCg0KSXQgZ2Vu
ZXJhdGVzIHRoZSBDIHNvdXJjZSBmaWxlLCAncG11LWV2ZW50cy5jJywgYXMgL3Rvb2xzL3BlcmYv
cG11LWV2ZW50cy9SRUFETUUgc2FpZCwgYnV0IGl0IGNhbid0IGdlbmVyYXRlIHRoaXMgQyBmaWxl
IG9uIG15IHNpZGUuDQoNClBsZWFzZSB0ZWxsIG1lIGlmIHNvbWV0aGluZyBJIG1pc3NlZC4gVGhh
bmtzIGEgbG90IQ0KDQpCZXN0IFJlZ2FyZHMsDQpKb2FraW0gWmhhbmcNCj4gV2lsbA0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
