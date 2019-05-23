Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B5C27791
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 10:00:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-Type:
	In-Reply-To:References:Message-ID:Date:Subject:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9nqbD5/XtH9hFLh0SU0HQKLoTVcK5wu8Pz3ENXLnuB8=; b=HNjfzkgNJumrJOM0u74hXbq1W
	dscr5Ml957VMaYQ9fFn4wfFquzQSzaesuq+2GrdMrlJ60QqSRW69eL7grQ+bvJA3Ban1ICxG6MvXh
	tv7NXfIBzgM9dpCH2DsUUFFE1TkPn0KYxgjd+uljjaOfPYt629pKREUJkqQxjUDhDlqsIST2UOVEo
	4dj6qqcS8vKPQr+93K3Dm2M7DX1n995TM6AgF7we6q879NcYnuNfa4e6ECm5vGcAUZXjaZsXQ1rH3
	+6p8RVuctYSDLHQ+qkOrZrdPSLXQNqmWd0/RnH5Ts6FNUPCpAe603I75j/6qVjJp29YnDBxaEoi8F
	4k+OQVpNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTidw-0008S7-6X; Thu, 23 May 2019 08:00:04 +0000
Received: from mail-db5eur01on0619.outbound.protection.outlook.com
 ([2a01:111:f400:fe02::619]
 helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTidl-0008Pj-EG
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 07:59:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fiyvHoapf5HtUkIlw4VhTQdSOYaeX9V4NAJxcNBciTw=;
 b=8LOurrFFEYdDzWBzI6qKfH+PbLIT3DTGDVTAqJASTffpCDG+ZlitALzmot7BB1E2akZPkeFeQhXQFFMpiS487lKJWj8LwcynYdUY5zWBIy3nUX2gGb9V3Jals1HGFl8sX4jdXAjqgF3j4SwC/KyS7f94va/gy+g899X/YR1+Pek=
Received: from DB7PR08MB3865.eurprd08.prod.outlook.com (20.178.84.149) by
 DB7PR08MB3692.eurprd08.prod.outlook.com (20.178.45.208) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Thu, 23 May 2019 07:59:50 +0000
Received: from DB7PR08MB3865.eurprd08.prod.outlook.com
 ([fe80::1c44:4e1b:c1e1:543e]) by DB7PR08MB3865.eurprd08.prod.outlook.com
 ([fe80::1c44:4e1b:c1e1:543e%7]) with mapi id 15.20.1922.016; Thu, 23 May 2019
 07:59:50 +0000
From: Raphael Gault <Raphael.Gault@arm.com>
To: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [RFC V2 00/16] objtool: Add support for Arm64
Thread-Topic: [RFC V2 00/16] objtool: Add support for Arm64
Thread-Index: AQHVC9NuTdVCDaa9ZEK795yYRfBvDKZtz9WAgAfQ8QCAAi8HAIAAk4mA
Date: Thu, 23 May 2019 07:59:49 +0000
Message-ID: <5a532c8e-85e0-2f06-0e82-99db487aef10@arm.com>
References: <20190516103655.5509-1-raphael.gault@arm.com>
 <20190516142917.nuhh6dmfiufxqzls@treble>
 <26692833-0e5b-cfe0-0ffd-c2c2f0815935@arm.com>
 <20190522231146.vw43gkah2npeouj3@treble>
In-Reply-To: <20190522231146.vw43gkah2npeouj3@treble>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0426.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a0::30) To DB7PR08MB3865.eurprd08.prod.outlook.com
 (2603:10a6:10:32::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Raphael.Gault@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [217.140.106.53]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0c6c6de3-2634-49d7-e080-08d6df54a15f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(49563074)(7193020);
 SRVR:DB7PR08MB3692; 
x-ms-traffictypediagnostic: DB7PR08MB3692:
x-microsoft-antispam-prvs: <DB7PR08MB3692AA3D9878295620C7B3C1ED010@DB7PR08MB3692.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 00462943DE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(376002)(136003)(346002)(396003)(199004)(40434004)(189003)(8676002)(2351001)(6246003)(476003)(99936001)(446003)(11346002)(8936002)(81156014)(71200400001)(71190400001)(81166006)(53936002)(316002)(2616005)(68736007)(66446008)(14454004)(64756008)(66476007)(66616009)(66556008)(7736002)(66946007)(73956011)(66066001)(486006)(2906002)(36756003)(3846002)(6116002)(72206003)(31686004)(5660300002)(4744005)(256004)(14444005)(5024004)(478600001)(44832011)(86362001)(31696002)(2501003)(99286004)(6512007)(6486002)(102836004)(386003)(26005)(53546011)(6506007)(25786009)(6436002)(6916009)(229853002)(76176011)(5640700003)(186003)(305945005)(52116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR08MB3692;
 H:DB7PR08MB3865.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: pggg0ZDTtY6bNMY/BpXUcL7ex16AibJegsOAKEktWIFUs3sj5ZEqg7kal7VhA+cWIDnjvY87mLf1SkARwQVVrQX3rnPDINjldL7rbEe7FnoJFeVSDdgTAaQHWf5fxSa6KFSbhU+zZNxwZg3KPjrvLdDFyh5FceV2UeNQ1S61hSXgSMwwOR+U/Tali53hP+u6O9QmFHoc+dvIq0x5MvlQgU5oxRoGg/nCXMUV8v+eYyH42WXZH59kBKSGHW946gXi5BA85o8PxMCNSI69Yyy/BFrybGWflnmzLZHcusONaoY/Wob0VUFod28bzK65VZ0fveby1+bRakpRC6/Y2yhhuQH1bxjLWZzHh+Ab1pYKYNXG/UlDAXUqdkhmHBODOVDXFx3kZWo4sdl8OB5+rDORCGuV/73seLrUUCCBm0tRYvw=
Content-Type: multipart/mixed;
 boundary="_002_5a532c8e85e02f060e8299db487aef10armcom_"
MIME-Version: 1.0
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c6c6de3-2634-49d7-e080-08d6df54a15f
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2019 07:59:49.9664 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3692
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_005953_482256_C1B4A58C 
X-CRM114-Status: GOOD (  22.08  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe02:0:0:0:619 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--_002_5a532c8e85e02f060e8299db487aef10armcom_
Content-Type: text/plain; charset="utf-8"
Content-ID: <81FFEACCF831C7498EDBAD88E114429E@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64

SGkgSm9zaCwNCg0KT24gNS8yMy8xOSAxMjoxMSBBTSwgSm9zaCBQb2ltYm9ldWYgd3JvdGU6DQpb
Li4uXQ0KPiBJJ20gYWxzbyBnZXR0aW5nIGEgYnVpbGQgZmFpbHVyZSBvbiBhcm02NDoNCj4NCj4g
ICAgbWFrZVs0XTogKioqIE5vIHJ1bGUgdG8gbWFrZSB0YXJnZXQgJy9yb290L2xpbnV4L3Rvb2xz
L29ianRvb2wvYXJjaC9hcm02NC9hcmNoX3NwZWNpYWwubycsIG5lZWRlZCBieSAnL3Jvb3QvbGlu
dXgvdG9vbHMvb2JqdG9vbC9hcmNoL2FybTY0L29ianRvb2wtaW4ubycuICBTdG9wDQo+DQo+IEl0
IGxvb2tzIGxpa2UgYXJjaC9hcm02NC9CdWlsZCBhbmQgYXJjaC94ODYvQnVpbGQgYXJlIHRyeWlu
ZyB0byBidWlsZA0KPiBmcm9tIGFyY2hfc3BlY2lhbC5jIHdoaWNoIGRvZXNuJ3QgZXhpc3QuDQo+
DQoNClBsZWFzZSBmaW5kIGF0dGFjaCBhIGNvcnJlY3RpdmUgcGF0Y2guIEkgYW0gc29ycnkgYWJv
dXQgdGhhdC4gSSB3aWxsDQppbnRlZ3JhdGUgdGhpcyBmaXggY29ycmVjdGx5IGluIG15IG5leHQg
dmVyc2lvbi4NCg0KVGhhbmtzLA0KDQotLQ0KUmFwaGFlbCBHYXVsdA0KSU1QT1JUQU5UIE5PVElD
RTogVGhlIGNvbnRlbnRzIG9mIHRoaXMgZW1haWwgYW5kIGFueSBhdHRhY2htZW50cyBhcmUgY29u
ZmlkZW50aWFsIGFuZCBtYXkgYWxzbyBiZSBwcml2aWxlZ2VkLiBJZiB5b3UgYXJlIG5vdCB0aGUg
aW50ZW5kZWQgcmVjaXBpZW50LCBwbGVhc2Ugbm90aWZ5IHRoZSBzZW5kZXIgaW1tZWRpYXRlbHkg
YW5kIGRvIG5vdCBkaXNjbG9zZSB0aGUgY29udGVudHMgdG8gYW55IG90aGVyIHBlcnNvbiwgdXNl
IGl0IGZvciBhbnkgcHVycG9zZSwgb3Igc3RvcmUgb3IgY29weSB0aGUgaW5mb3JtYXRpb24gaW4g
YW55IG1lZGl1bS4gVGhhbmsgeW91Lg0K

--_002_5a532c8e85e02f060e8299db487aef10armcom_
Content-Type: text/x-patch;
	name="0001-objtool-special-Correct-mistake-missing-file.patch"
Content-Description: 0001-objtool-special-Correct-mistake-missing-file.patch
Content-Disposition: attachment;
	filename="0001-objtool-special-Correct-mistake-missing-file.patch";
	size=2883; creation-date="Thu, 23 May 2019 07:59:49 GMT";
	modification-date="Thu, 23 May 2019 07:59:49 GMT"
Content-ID: <B82ADCB5944AD74891878B4E50E9F6E1@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64

RnJvbSAxMGFkMTM0ODQxYzM2ZmZjNjAwNzhhOWY1YTBkNjliY2ViYmZmMTc1IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQ0KRnJvbTogUmFwaGFlbCBHYXVsdCA8cmFwaGFlbC5nYXVsdEBhcm0uY29t
Pg0KRGF0ZTogVGh1LCAyMyBNYXkgMjAxOSAwODo1NjozNyArMDEwMA0KU3ViamVjdDogW1BBVENI
XSBvYmp0b29sOiBzcGVjaWFsOiBDb3JyZWN0IG1pc3Rha2UgbWlzc2luZyBmaWxlDQoNClNpZ25l
ZC1vZmYtYnk6IFJhcGhhZWwgR2F1bHQgPHJhcGhhZWwuZ2F1bHRAYXJtLmNvbT4NCi0tLQ0KIHRv
b2xzL29ianRvb2wvYXJjaC9hcm02NC9hcmNoX3NwZWNpYWwuYyB8IDIyICsrKysrKysrKysrKysr
KysrKysNCiB0b29scy9vYmp0b29sL2FyY2gveDg2L2FyY2hfc3BlY2lhbC5jICAgfCAyOCArKysr
KysrKysrKysrKysrKysrKysrKysrDQogMiBmaWxlcyBjaGFuZ2VkLCA1MCBpbnNlcnRpb25zKCsp
DQogY3JlYXRlIG1vZGUgMTAwNjQ0IHRvb2xzL29ianRvb2wvYXJjaC9hcm02NC9hcmNoX3NwZWNp
YWwuYw0KIGNyZWF0ZSBtb2RlIDEwMDY0NCB0b29scy9vYmp0b29sL2FyY2gveDg2L2FyY2hfc3Bl
Y2lhbC5jDQoNCmRpZmYgLS1naXQgYS90b29scy9vYmp0b29sL2FyY2gvYXJtNjQvYXJjaF9zcGVj
aWFsLmMgYi90b29scy9vYmp0b29sL2FyY2gvYXJtNjQvYXJjaF9zcGVjaWFsLmMNCm5ldyBmaWxl
IG1vZGUgMTAwNjQ0DQppbmRleCAwMDAwMDAwMDAwMDAuLmEyMWQyODg3NjMxNw0KLS0tIC9kZXYv
bnVsbA0KKysrIGIvdG9vbHMvb2JqdG9vbC9hcmNoL2FybTY0L2FyY2hfc3BlY2lhbC5jDQpAQCAt
MCwwICsxLDIyIEBADQorLyoNCisgKiBUaGlzIHByb2dyYW0gaXMgZnJlZSBzb2Z0d2FyZTsgeW91
IGNhbiByZWRpc3RyaWJ1dGUgaXQgYW5kL29yDQorICogbW9kaWZ5IGl0IHVuZGVyIHRoZSB0ZXJt
cyBvZiB0aGUgR05VIEdlbmVyYWwgUHVibGljIExpY2Vuc2UNCisgKiBhcyBwdWJsaXNoZWQgYnkg
dGhlIEZyZWUgU29mdHdhcmUgRm91bmRhdGlvbjsgZWl0aGVyIHZlcnNpb24gMg0KKyAqIG9mIHRo
ZSBMaWNlbnNlLCBvciAoYXQgeW91ciBvcHRpb24pIGFueSBsYXRlciB2ZXJzaW9uLg0KKyAqDQor
ICogVGhpcyBwcm9ncmFtIGlzIGRpc3RyaWJ1dGVkIGluIHRoZSBob3BlIHRoYXQgaXQgd2lsbCBi
ZSB1c2VmdWwsDQorICogYnV0IFdJVEhPVVQgQU5ZIFdBUlJBTlRZOyB3aXRob3V0IGV2ZW4gdGhl
IGltcGxpZWQgd2FycmFudHkgb2YNCisgKiBNRVJDSEFOVEFCSUxJVFkgb3IgRklUTkVTUyBGT1Ig
QSBQQVJUSUNVTEFSIFBVUlBPU0UuICBTZWUgdGhlDQorICogR05VIEdlbmVyYWwgUHVibGljIExp
Y2Vuc2UgZm9yIG1vcmUgZGV0YWlscy4NCisgKg0KKyAqIFlvdSBzaG91bGQgaGF2ZSByZWNlaXZl
ZCBhIGNvcHkgb2YgdGhlIEdOVSBHZW5lcmFsIFB1YmxpYyBMaWNlbnNlDQorICogYWxvbmcgd2l0
aCB0aGlzIHByb2dyYW07IGlmIG5vdCwgc2VlIDxodHRwOi8vd3d3LmdudS5vcmcvbGljZW5zZXMv
Pi4NCisgKi8NCisjaW5jbHVkZSAiLi4vLi4vc3BlY2lhbC5oIg0KKyNpbmNsdWRlICJhcmNoX3Nw
ZWNpYWwuaCINCisNCit2b2lkIGFyY2hfZm9yY2VfYWx0X3BhdGgodW5zaWduZWQgc2hvcnQgZmVh
dHVyZSwNCisJCQkgYm9vbCB1YWNjZXNzLA0KKwkJCSBzdHJ1Y3Qgc3BlY2lhbF9hbHQgKmFsdCkN
Cit7DQorfQ0KZGlmZiAtLWdpdCBhL3Rvb2xzL29ianRvb2wvYXJjaC94ODYvYXJjaF9zcGVjaWFs
LmMgYi90b29scy9vYmp0b29sL2FyY2gveDg2L2FyY2hfc3BlY2lhbC5jDQpuZXcgZmlsZSBtb2Rl
IDEwMDY0NA0KaW5kZXggMDAwMDAwMDAwMDAwLi42NTgzYTE3NzBiYjINCi0tLSAvZGV2L251bGwN
CisrKyBiL3Rvb2xzL29ianRvb2wvYXJjaC94ODYvYXJjaF9zcGVjaWFsLmMNCkBAIC0wLDAgKzEs
MjggQEANCisvKg0KKyAqIFRoaXMgcHJvZ3JhbSBpcyBmcmVlIHNvZnR3YXJlOyB5b3UgY2FuIHJl
ZGlzdHJpYnV0ZSBpdCBhbmQvb3INCisgKiBtb2RpZnkgaXQgdW5kZXIgdGhlIHRlcm1zIG9mIHRo
ZSBHTlUgR2VuZXJhbCBQdWJsaWMgTGljZW5zZQ0KKyAqIGFzIHB1Ymxpc2hlZCBieSB0aGUgRnJl
ZSBTb2Z0d2FyZSBGb3VuZGF0aW9uOyBlaXRoZXIgdmVyc2lvbiAyDQorICogb2YgdGhlIExpY2Vu
c2UsIG9yIChhdCB5b3VyIG9wdGlvbikgYW55IGxhdGVyIHZlcnNpb24uDQorICoNCisgKiBUaGlz
IHByb2dyYW0gaXMgZGlzdHJpYnV0ZWQgaW4gdGhlIGhvcGUgdGhhdCBpdCB3aWxsIGJlIHVzZWZ1
bCwNCisgKiBidXQgV0lUSE9VVCBBTlkgV0FSUkFOVFk7IHdpdGhvdXQgZXZlbiB0aGUgaW1wbGll
ZCB3YXJyYW50eSBvZg0KKyAqIE1FUkNIQU5UQUJJTElUWSBvciBGSVRORVNTIEZPUiBBIFBBUlRJ
Q1VMQVIgUFVSUE9TRS4gIFNlZSB0aGUNCisgKiBHTlUgR2VuZXJhbCBQdWJsaWMgTGljZW5zZSBm
b3IgbW9yZSBkZXRhaWxzLg0KKyAqDQorICogWW91IHNob3VsZCBoYXZlIHJlY2VpdmVkIGEgY29w
eSBvZiB0aGUgR05VIEdlbmVyYWwgUHVibGljIExpY2Vuc2UNCisgKiBhbG9uZyB3aXRoIHRoaXMg
cHJvZ3JhbTsgaWYgbm90LCBzZWUgPGh0dHA6Ly93d3cuZ251Lm9yZy9saWNlbnNlcy8+Lg0KKyAq
Lw0KKyNpbmNsdWRlICIuLi8uLi9zcGVjaWFsLmgiDQorI2luY2x1ZGUgImFyY2hfc3BlY2lhbC5o
Ig0KKw0KK3ZvaWQgYXJjaF9mb3JjZV9hbHRfcGF0aCh1bnNpZ25lZCBzaG9ydCBmZWF0dXJlLA0K
KwkJCSBib29sIHVhY2Nlc3MsDQorCQkJIHN0cnVjdCBzcGVjaWFsX2FsdCAqYWx0KQ0KK3sNCisJ
CWlmIChmZWF0dXJlID09IFg4Nl9GRUFUVVJFX1NNQVApIHsNCisJCQlpZiAodWFjY2VzcykNCisJ
CQkJYWx0LT5za2lwX29yaWcgPSB0cnVlOw0KKwkJCWVsc2UNCisJCQkJYWx0LT5za2lwX2FsdCA9
IHRydWU7DQorCQl9DQorfQ0KLS0gDQoyLjE3LjENCg0K

--_002_5a532c8e85e02f060e8299db487aef10armcom_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--_002_5a532c8e85e02f060e8299db487aef10armcom_--

