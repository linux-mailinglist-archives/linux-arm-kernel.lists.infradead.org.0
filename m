Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D27E81C2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 08:03:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BAtrpmayjiFyN+HcrRmzlhqNoeldBapxBowDGtwcvMA=; b=m9yUL736SQS0WV
	wxqmEzLdb94zgUAnHMpsl5j+7HJ7j70Bop3TZISEoGEkXt5gnrBicqI+JfT6Shc5n5uKvCjPPSmA7
	llrs+AXTJVI1Sm6PtfGnYCBgRJIFnP74BhC25m7S6WdLB3Tvz4o6XX5q187UqwB8VWLLjX2evl2tW
	YmEtihQ/mHHZKEdsaE7YJUQ4xqWTnbDd5SwHbHXearvuJgTDzEKXXy9k4rAytR9ZoYInAqt6tXPIa
	folcJSfPYZMgZckoPTn6uLYldI2rGR2tXMbihKeYsZCV5d20CT2vN6kwpQZvGd8Rwai6AbrAU6sHR
	EPYIZw18MoyHhgb9Rmfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPLXB-0003Ry-R1; Tue, 29 Oct 2019 07:03:17 +0000
Received: from mail-db5eur03on0612.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::612]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPLWT-0002v4-An
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 07:02:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bUIcNjjhiMi1ZJ4mm2zYRs2Er6kk7yZdW+gGUuXrcNVpTLx4wh5AUK/fFpra1An2JuSylW9C19s3ByFGJhSZ3+kLnVEHlEweQbFTN7324Ac8XJlyq90sNZCpNicGJDxcFkfMpsDMIrQOZeGpDp8XGToi9gBifWUxpyxKccgY1tJJxyeNuueXdUIIVxNGAzGqbVDzG0jP2OjQYllJ/fAJ48IuOBQgJq8ovSeUFWcjuP/WyXM4OfKH4C+hT0UT8OUYujsASeHRVpPMUMWPjpQTHmb1WAGuDgrAGF2HBhX/mwgxNaFuzI2GWPVd0RFyxDdtxYvtjdgf/CeypC6mjrae6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VZkluJby2ub8IccaBF72IkngZx44qPa9KbjnfKxK3PA=;
 b=G4lSMFeDJ2xGMozl8QKy3kLeIPO/1d1jmQI0GiIsayaGSmQQLnCa4RGJHGKCH1uvsKoNIlp9uPkJs3W8sj2ovqZQzqT/vmhNZKYR9RL3Erl5b2rTn5e9lVXMrEK1KDgFNG9kg0Yt8efOflsTr8lbyd4TPQBfq+u0V7qA7sb3j6oVXjFLqVSF+E5qpvooj2MdT+Oe1QIP3kC1hMktQQRu2KqmEV9dMhBZUct/I5A1q2SB2XJB1NFD4pWQY+9qR81ULVKsbbqYibiZ8rPnsOxfxV397GQLoWRniYRzUzuSm1sH4P3UotB1oUQTjpnUDxuwdY7BxVbANuJP1tYmOloZ5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VZkluJby2ub8IccaBF72IkngZx44qPa9KbjnfKxK3PA=;
 b=P2R2AJtUMTON3pwUgBZHu/oXdsmWFacrpcmNqAuyALKflre5Mj4lhBAxtMIlAQYP2fuzTUgeBYjLYJhHgcskwscd38zZD/PxYJ6iVWtXZBkuSWeopCSc9PmigspQNQA6Pj2CPVHaEAn7Na40MXLHyRvWIvfNK5w3e4NkHo/V6ns=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4457.eurprd04.prod.outlook.com (52.135.141.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.21; Tue, 29 Oct 2019 07:02:28 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::79f1:61a7:4076:8679]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::79f1:61a7:4076:8679%3]) with mapi id 15.20.2367.031; Tue, 29 Oct 2019
 07:02:28 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: Will Deacon <will@kernel.org>
Subject: RE: [PATCH 1/2] perf/imx_ddr: add enhanced AXI ID filter support
Thread-Topic: [PATCH 1/2] perf/imx_ddr: add enhanced AXI ID filter support
Thread-Index: AQHVZIzXxnEyO/p2cU+i3CnZc4qNBqdwdiKAgADCnLA=
Date: Tue, 29 Oct 2019 07:02:28 +0000
Message-ID: <DB7PR04MB4618B90121FE884B8864E7AFE6610@DB7PR04MB4618.eurprd04.prod.outlook.com>
References: <20190906082356.25485-1-qiangqing.zhang@nxp.com>
 <20191028145436.GA5576@willie-the-truck>
In-Reply-To: <20191028145436.GA5576@willie-the-truck>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 35e8f5ae-cfff-4d03-6159-08d75c3df609
x-ms-traffictypediagnostic: DB7PR04MB4457:|DB7PR04MB4457:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB44571AC2069F1891D0570015E6610@DB7PR04MB4457.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0205EDCD76
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(366004)(376002)(39860400002)(346002)(13464003)(189003)(199004)(99286004)(33656002)(66946007)(66556008)(7696005)(64756008)(76116006)(76176011)(316002)(66476007)(66446008)(66066001)(229853002)(54906003)(81156014)(9686003)(6436002)(81166006)(6246003)(4326008)(8676002)(8936002)(55016002)(71190400001)(71200400001)(476003)(7736002)(305945005)(14454004)(256004)(102836004)(74316002)(11346002)(446003)(14444005)(86362001)(26005)(25786009)(6116002)(5660300002)(186003)(3846002)(2906002)(52536014)(478600001)(6506007)(6916009)(53546011)(486006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4457;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iW8LZwNtbnLpFNDHq1CbyxmFkZ7A6pYV4gQNMtjlv3fJRGGQdwsVwuWABehz835pp+rYx1jD1J3iwFH7TGrPlQ+QpHqSmW3W0d2z2rAJd9U4gTuFanYc77skZdwVLmNjfKlI2JsdzrFAYFI+F9CcZKkc/OLhdan6+ya4xjwNBV3fQyjNMkGvhJ97JOgGpVbKdbxFcbcGtIkDU9mYCzMr2nXVPLFrnVVSkHLudVW6GlH5L9yocfBFRGTUpF8yM5di9nAF420AuqSAQ+v921eodeDwx1JhHquQyNPQ92XCxk/FJmfJX/ZdqkloWJASsle5rZeD/JqGeJNZxuokxltH4nIdgvE5d4obQpox8DZiJ1uI8cUZ+nprodLkYuuPClaarhk6NnBGx06kaDT7kbGl6qTbwyftVbKdqGgYyMFJtFuUS3Kpg5EKCcgBJc7XYZOx
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35e8f5ae-cfff-4d03-6159-08d75c3df609
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2019 07:02:28.2947 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S6VmL/+CbQrdjqRtj7EGdfvaUwc4Pd6ed7BN7n4MFz/YV4NekrTWBbxVjj8tMlUV6sO02Qlf1XLJ+R41wXYumw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4457
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_000233_469734_D75343A5 
X-CRM114-Status: GOOD (  21.91  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0a:0:0:0:612 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Frank Li <frank.li@nxp.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFdpbGwgRGVhY29uIDx3aWxs
QGtlcm5lbC5vcmc+DQo+IFNlbnQ6IDIwMTnE6jEw1MIyOMjVIDIyOjU1DQo+IFRvOiBKb2FraW0g
WmhhbmcgPHFpYW5ncWluZy56aGFuZ0BueHAuY29tPg0KPiBDYzogbWFyay5ydXRsYW5kQGFybS5j
b207IHJvYmluLm11cnBoeUBhcm0uY29tOyBGcmFuayBMaQ0KPiA8ZnJhbmsubGlAbnhwLmNvbT47
IGRsLWxpbnV4LWlteCA8bGludXgtaW14QG54cC5jb20+Ow0KPiBsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcNCj4gU3ViamVjdDogUmU6IFtQQVRDSCAxLzJdIHBlcmYvaW14X2Rk
cjogYWRkIGVuaGFuY2VkIEFYSSBJRCBmaWx0ZXIgc3VwcG9ydA0KPiANCj4gT24gRnJpLCBTZXAg
MDYsIDIwMTkgYXQgMDg6MjY6NTVBTSArMDAwMCwgSm9ha2ltIFpoYW5nIHdyb3RlOg0KPiA+IFdp
dGggRERSX0NBUF9BWElfSURfRklMVEVSIHF1aXJrLCBpbmRpY2F0aW5nIEhXIHN1cHBvcnRzIEFY
SSBJRCBmaWx0ZXINCj4gPiB3aGljaCBvbmx5IGNhbiBnZXQgYnVyc3RzIG9mIHJlYWRpbmcvd3Jp
dGluZyBERFIsIGkuZS4gRERSIHJlYWQvd3JpdGUNCj4gPiByZXF1ZXN0Lg0KPiA+DQo+ID4gVGhp
cyBwYXRjaCBhZGQgRERSX0NBUF9BWElfSURfRU5IQU5DRURfRklMVEVSIHF1aXJrLCBpbmRpY2F0
aW5nIEhXDQo+ID4gc3VwcG9ydHMgQVhJIElEIGZpbHRlciB3aGljaCBjYW4gZ2V0IGJ5dGVzIG9m
IHJlYWRpbmcvd3JpdGluZyBERFIuDQo+ID4gVGhpcyBmZWF0dXJlIGlzIG1vcmUgbWVhbmluZ2Z1
bCBkdWUgdG8gd2UgYWx3YXlzIGNhcmUgbW9yZSBhYm91dA0KPiBiYW5kd2lkdGguDQo+ID4NCj4g
PiBOZWVkIHNlbGVjdCBib3RoIGFib3ZlIHR3byBxaXVya3MgdG9nZXRoZXIgd2hlbiBIVyBzdXBw
b3J0IGVuaGFuY2VkDQo+ID4gQVhJIElEIGZpbHRlci4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6
IEpvYWtpbSBaaGFuZyA8cWlhbmdxaW5nLnpoYW5nQG54cC5jb20+DQo+ID4gLS0tDQo+ID4gIGRy
aXZlcnMvcGVyZi9mc2xfaW14OF9kZHJfcGVyZi5jIHwgMTMgKysrKysrKysrKystLQ0KPiA+ICAx
IGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gPg0KPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BlcmYvZnNsX2lteDhfZGRyX3BlcmYuYw0KPiA+IGIvZHJp
dmVycy9wZXJmL2ZzbF9pbXg4X2Rkcl9wZXJmLmMNCj4gPiBpbmRleCBjZTczNDU3NDViNDIuLjVm
NzBkYmZhOTYwNyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL3BlcmYvZnNsX2lteDhfZGRyX3Bl
cmYuYw0KPiA+ICsrKyBiL2RyaXZlcnMvcGVyZi9mc2xfaW14OF9kZHJfcGVyZi5jDQo+ID4gQEAg
LTQ1LDcgKzQ1LDggQEANCj4gPiAgc3RhdGljIERFRklORV9JREEoZGRyX2lkYSk7DQo+ID4NCj4g
PiAgLyogRERSIFBlcmYgaGFyZHdhcmUgZmVhdHVyZSAqLw0KPiA+IC0jZGVmaW5lIEREUl9DQVBf
QVhJX0lEX0ZJTFRFUiAgICAgICAgICAweDEgICAgIC8qIHN1cHBvcnQgQVhJIElEDQo+IGZpbHRl
ciAqLw0KPiA+ICsjZGVmaW5lIEREUl9DQVBfQVhJX0lEX0ZJTFRFUgkJCUJJVCgxKSAgICAgLyog
c3VwcG9ydCBBWEkgSUQNCj4gZmlsdGVyICovDQo+DQo+IElzIHRoaXMgYSBkZWxpYmVyYXRlIGNo
YW5nZSBmcm9tIHRoZSBwcmV2aW91cyBjb2RlIGFuZCwgaWYgc28sIHdoeT8NCg0KW0pvYWtpbV0g
RERSIFBNVSBpbnRlZ3JhdGVkIGluIHZhcmlvdXMgU29DcyBtYXkgaGF2ZSBkaWZmZXJlbnQgZmVh
dHVyZXMoZXh0ZW5kIG1vcmUgZmVhdHVyZXMpLCB1c2UgQklUKDEpL0JJVCgyKS9CSVQoMykuLi4g
aW5zdGVhZCBvZiAweDEvMHgyLzB4NC4uLiwgSSB0aGluayBpdCBpcyBtb3JlIGVhc2llci4NCiAg
ICAgICAgVGhpcyBkZWxpYmVyYXRlIGNoYW5nZSBmcm9tIHByZXZpb3VzIGNvZGUgaGFzIG5vIGZ1
bmN0aW9uYWwgZWZmZWN0Lg0KDQo+ID4gKyNkZWZpbmUgRERSX0NBUF9BWElfSURfRklMVEVSX0VO
SEFOQ0VECQlCSVQoMikgICAgIC8qDQo+IHN1cHBvcnQgZW5oYW5jZWQgQVhJIElEIGZpbHRlciAq
Lw0KPiANCj4gV2hhdCBkb2VzIGl0IG1lYW4gdG8gaGF2ZSBERFJfQ0FQX0FYSV9JRF9GSUxURVJf
RU5IQU5DRUQgYnV0IG5vdA0KPiBERFJfQ0FQX0FYSV9JRF9GSUxURVI/IENvdWxkIHdlIGp1c3Qg
c2F5IHRoYXQNCj4gRERSX0NBUF9BWElfSURfRklMVEVSX0VOSEFOQ0VEIGltcGxpZXMgRERSX0NB
UF9BWElfSURfRklMVEVSPw0KDQpbSm9ha2ltXSBZZXMsIEREUl9DQVBfQVhJX0lEX0ZJTFRFUl9F
TkhBTkNFRCBpcyBiYXNlZCBvbiBERFJfQ0FQX0FYSV9JRF9GSUxURVIgYW5kIGV4dGVuZCBpdC4g
VGhleSBhcmUgYm90aCBmb3IgZXZlbnQgMHg0MSBhbmQgZXZlbnQgMHg0Mi4NCiAgICAgICAgMSlI
VyhpLk1YOE0gTWluaS9RdWFkL05hbm8pIHN1cHBvcnQgRERSX0NBUF9BWElfSURfRklMVEVSLCBj
b3VudGVycyBvbmx5IGNhbiBjb3VudCBERFIgYnVyc3QgdHJhbnNhY3Rpb24ocmVhZC93cml0ZSBy
ZXF1ZXN0cykuDQoJCTIpSFcoaS5NWDhNIFBsdXMpIHN1cHBvcnQgYm90aCBERFJfQ0FQX0FYSV9J
RF9GSUxURVIgYW5kIEREUl9DQVBfQVhJX0lEX0ZJTFRFUl9FTkhBTkNFRCwgbWVhbnMgdGhhdCBj
b3VudGVycyBjYW4gY291bnQgRERSIGJ1cnN0KHJlYWQvd3JpdGUgcmVxdWVzdHMpIGFuZCBkYXRh
KGJ5dGVzKSB0cmFuc2FjdGlvbiBhdCB0aGUgc2FtZSB0aW1lIGR1ZSB0byBpdCBleHRlbmQgYW5v
dGhlciBzZXQgb2YgZGF0YSBjb3VudGVycyhyZWdpc3RlcnMgYWRkcmVzczogMHgzNCwweDM4LDB4
M2MpLiBTbyB3ZSBjYW4gcmVhZCB0aGVzZSBjb3VudGVycyB2YWx1ZSB0byBnZXQgdGhlICpieXRl
cyogZnJvbSBERFIgdHJhbnNhY3Rpb24uIFRoaXMgaXMgbW9yZSBtZWFuaW5nZnVsIGZvciB1c2Vy
cy4NCg0KPiA+ICBzdHJ1Y3QgZnNsX2Rkcl9kZXZ0eXBlX2RhdGEgew0KPiA+ICAJdW5zaWduZWQg
aW50IHF1aXJrczsgICAgLyogcXVpcmtzIG5lZWRlZCBmb3IgZGlmZmVyZW50IEREUiBQZXJmIGNv
cmUgKi8NCj4gPiBAQCAtMjA5LDcgKzIxMCwxNSBAQCBzdGF0aWMgdm9pZCBkZHJfcGVyZl9mcmVl
X2NvdW50ZXIoc3RydWN0IGRkcl9wbXUNCj4gPiAqcG11LCBpbnQgY291bnRlcikNCj4gPg0KPiA+
ICBzdGF0aWMgdTMyIGRkcl9wZXJmX3JlYWRfY291bnRlcihzdHJ1Y3QgZGRyX3BtdSAqcG11LCBp
bnQgY291bnRlcikgIHsNCj4gPiAtCXJldHVybiByZWFkbF9yZWxheGVkKHBtdS0+YmFzZSArIENP
VU5URVJfUkVBRCArIGNvdW50ZXIgKiA0KTsNCj4gPiArCWlmICgocG11LT5kZXZ0eXBlX2RhdGEt
PnF1aXJrcyAmIEREUl9DQVBfQVhJX0lEX0ZJTFRFUikgJiYNCj4gPiArCSAgICAocG11LT5kZXZ0
eXBlX2RhdGEtPnF1aXJrcyAmDQo+IEREUl9DQVBfQVhJX0lEX0ZJTFRFUl9FTkhBTkNFRCkpIHsN
Cj4gPiArCQlpZiAoKHBtdS0+ZXZlbnRzW2NvdW50ZXJdLT5hdHRyLmNvbmZpZyA9PSAweDQxKSB8
fA0KPiA+ICsJCSAgICAocG11LT5ldmVudHNbY291bnRlcl0tPmF0dHIuY29uZmlnID09IDB4NDIp
KQ0KPiA+ICsJCQlyZXR1cm4gcmVhZGxfcmVsYXhlZChwbXUtPmJhc2UgKyBDT1VOVEVSX0RQQ1Ix
ICsgY291bnRlcg0KPiAqIDQpOw0KPiANCj4gSW4gd2hpY2ggY2FzZSwgdGhpcyBjb3VsZCBiZSBz
bGlnaHRseSBzaW1wbGlmaWVkLg0KDQpbSm9ha2ltXSBJIHdpbGwgdXNlIHRoZSBkZHJfcGVyZl9p
c19maWx0ZXJlZCgpIGhlbHBlciB0byBzaW1wbHkgdGhlIGNvZGUuIEEgdjIgaXMgc2VuZGluZywg
ZmVlbCBmcmVlIHRvIGdpdmUgY29tbWVudHMuDQoNClRoYW5rcyBXaWxsLg0KDQpCZXN0IFJlZ2Fy
ZHMsDQpKb2FraW0gWmhhbmcNCj4gV2lsbA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
