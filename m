Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D631C8268
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 08:20:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t9VcASYEoHj0HhVYFHncyJ8jLk3QaI9qwZY4PXUmUMk=; b=f+lZobdfjr5Zeh
	85SlBH3cfTLQw++jQcO5a0HL68GcraOUd6C/tjfPWBd6AjxygZpMm8rYqjxkarIn/JezkvBED00ed
	pinxH9eQTugrq7FMXPb2GFWXdDzsxIAQzloDhj3nl8lREjmUgYQtNz46WJchPjqX7i4rRqyNGoo48
	9bbc/gASqILuh1atYbtdvIUClnA6FEtTDFCQJbqjH9AiIL9GMZcafDuh9gJvMaSqUcD9b+xOTOGJZ
	cnddX+qKLNrsNKjNt0h7Mp4alJiTvFSSyCmdvRMsWP1mSqbis7UI/9ci4LspdR5pXB2ca8xgu6xWf
	LEg8bvyB8KLrxPCyIDNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWZtR-0000oP-AC; Thu, 07 May 2020 06:20:25 +0000
Received: from mail-eopbgr40065.outbound.protection.outlook.com ([40.107.4.65]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWZtH-0008A0-NN
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 06:20:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fYgX9OvOJw7NBXWLfjGKxRmB92XgrA+tf0oWrq++GqXtICs5ZA3udHglIdMbi+s87HvjdC9tRj3b+vKnWSnndgREGhzAeazCPAKFxXr6ZVtZcO4fSGyO9jQE2YFNEoheySKctR63WQwOXC3lNeqJbCTcn7jTmrZoHa6iwLls1fV41KMCRYkp17chwtZoUGTXVHr5SldmBW+2euASxSIx8OocHKFW+oFVQlNBoIG6q9tHLjzEZ1dleduavR5wfaex8l6M5u/oDdDXS5qIK11/25bC3Sk363WZXb/7hJ4F5S9iNPvz37094YCX9kQIwPCiVPwSiBqp6b4APMSZPF3W8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fi4eBepY/2dWbrA1ZcauJYUaPpsJczk2y3gPqHx80oU=;
 b=SFVgmw/PNNuRdTxW+t6PI/Hva3tVDfDAx7eOS+EIlR2gUSjOAlDPmdnrdgowa5UoyZoLqWqbFdjWxXfe4ZpymsiU/jT3a28y3/a193BlkVH7bIVKQbxDvF0KTOQvJjb2jOgPZ5i+DLbRxu9WyGAcyete4S4vwXhf0srGRW0BQM/sImnPWph6iw1tiMtBad6vO1CtyGnbMhUH0x0yBgXnd92HwHST/CNQ8WEwqrVUfpp3YieGVcMHf6C2VVEvNoPBiw8Dm1ErLyCqaAC6tBngOXRlfmPNfMSCXjQmmudAZnVsy7RoXTbxmPvCGMGdFl/621vy9tnFXOAocsco+nmpmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fi4eBepY/2dWbrA1ZcauJYUaPpsJczk2y3gPqHx80oU=;
 b=IKgtKafHGaiQpjo30bOYGhBdOGt8FYxPUXler8L9mbAMg+lBRxse2QVjeaMJFJbvjl+6vFhd/2HURD+HJBTiTlAlNZeJRWtcGlMY/fPp9bY+K9nkmPiCurqacCxSloeGX9xRP1oRphyjlQ/mQg0s6E57D3AGJ2fQShZtBuxVhT4=
Received: from DBBPR04MB6090.eurprd04.prod.outlook.com (2603:10a6:10:c4::22)
 by DBBPR04MB6170.eurprd04.prod.outlook.com (2603:10a6:10:c9::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.27; Thu, 7 May
 2020 06:20:07 +0000
Received: from DBBPR04MB6090.eurprd04.prod.outlook.com
 ([fe80::107d:2130:2140:23ec]) by DBBPR04MB6090.eurprd04.prod.outlook.com
 ([fe80::107d:2130:2140:23ec%5]) with mapi id 15.20.2958.033; Thu, 7 May 2020
 06:20:06 +0000
From: Andy Tang <andy.tang@nxp.com>
To: Andy Tang <andy.tang@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "will.deacon@arm.com" <will.deacon@arm.com>
Subject: RE: [PATCH] arm64: dts: lx2160a: add more thermal zone support
Thread-Topic: [PATCH] arm64: dts: lx2160a: add more thermal zone support
Thread-Index: AQHWFIH87yVcQzFaz0SXXvTKu8Zwl6icRgTg
Date: Thu, 7 May 2020 06:20:06 +0000
Message-ID: <DBBPR04MB60901517CCEF34DBD9D3109EF3A50@DBBPR04MB6090.eurprd04.prod.outlook.com>
References: <20200417061618.48032-1-andy.tang@nxp.com>
In-Reply-To: <20200417061618.48032-1-andy.tang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 9a03d2df-7e9c-43d0-4609-08d7f24eaff9
x-ms-traffictypediagnostic: DBBPR04MB6170:|DBBPR04MB6170:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DBBPR04MB61700923C2187A23BC4E66BDF3A50@DBBPR04MB6170.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 03965EFC76
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4Lk3/EpyvbiUzH7IJOPddyOM0IY5z63J3AOKDied4oT37xDYNU4AqyeK46DHO+3ztL2suhEQYUx6beWMxaO3aoG7jB4VBs2mpc3RtbcWIQXlWh3S2vyRUP1YBYkV3CMnRv0o7WRhBJlDQonnENKFjSg3snOMGhMENJQwb4u00YyqALdq+fT4AV0XExYiRDQbHioH78tCH9+Mg55QczqtbYGLOdLigIg3ZhOJbZh3huRjel8oPvTsCzF6mi/QIWZya4wVSG+RJyRUCfwUA+Kn1ZMc1Oy4rdmxlZRgP8JMvNRUPb0HnuFDuONYOB4HxTDCqxJbRXGEzS+Yv8E/e1URKvF0qA900u+WDe97q92xptMxrZKw7FXpJBQ5yTXWmHMude95p4fE/d9VTO0gnIMXhQK/Szvm8BHnNjleyDW0ltqb/Bhub4NPMYvpw8yQS0vvFk6j0CbCliWk06rPs4BEThtYOxQxzNUwfTdi11QZfJROhtzb0FuJGFZtT1ICL3kkJNIOARAEaZAhUmwRh5+SAw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR04MB6090.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(396003)(346002)(376002)(366004)(136003)(33430700001)(9686003)(33656002)(52536014)(66556008)(53546011)(6506007)(26005)(64756008)(7696005)(186003)(4326008)(66946007)(66446008)(2906002)(66476007)(8676002)(55016002)(76116006)(5660300002)(44832011)(478600001)(8936002)(33440700001)(54906003)(110136005)(71200400001)(86362001)(316002)(83280400001)(83320400001)(83300400001)(83290400001)(83310400001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: bxKvk839/jTm8dmvlqDGw2hLPSlcYd70u6xnhpHhnJTMAMDYzDIdqTVOYN0v1bmDg6aMrm0s5omekGFiCG9WPFeOquGrdX0Lzi1iuMtHlyp5r73tDvmvAOu3d8Mxjboc1ME42HReB+AFCq9lRGOD9tu7kOfrUSk4PANnw1PrYuY2LIxo4FwI1I+nyMl9m2r6A21LX8pzjiawDDha6aEAoaOG5NGCWyVufi+52NXJ/XP47lJDrccAc1caCG5g4phRmAGHeYt2PiZf0qZogRxzEaRqSLnknnE/J3nNUqr0oVlQeknJYgaadj+cwJJJT1XcTBBrV7nBFwjxcy8fSgNBDQDHoinjlNkLE6wnhdGdjP6Rw1TvaJI1y2PKKjru/8p6f9Wso60j5ypMDJcP+zy7w88/WiT/++1iO8K8IxYSJg8v1cg4ZLjWuJ4CePyDZ709oE1ig779LuACjXDF9nZZjF1TE+rz9tHMU9EZpZx49qfQuDN0tlu6QMBn+/+qGzg+x4cSwAIWCp0sxkkOFBr1w7fpi7caT1isfxeTeh8qd3aaoNyu1a8hd0EgK5dyQm9Kk1FppCP84WZEq5sWEQeXdMlY0B12QonOMP8mp/cBIvTbo4WJ/xX4tMuScdGjOegs9vcvT63adcHxkrtaPjCS7n8LR/VzujLNJnPXLBm/jmrHItIvEUHJuMlN42UvAy3YJ/diZn5bg7L4yj4p1X+4BJLx9GI51CZ6ZeucytbIz/1punGRi8wLgcy0Qt6gngadRxwHzujKzc7nJU0Qub0HiehX5P9MBqUUgsavKgutitc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a03d2df-7e9c-43d0-4609-08d7f24eaff9
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2020 06:20:06.9125 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HZpNqvFDOIa+GLrzN9s2dRTsRKBk2COtAoflVbgNrgC4F+GsxjZHW+cM9QpiVz33ojp7MGJ7X8K00kKD0wi40w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB6170
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_232015_772480_10EC72F7 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.4.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.4.65 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UElORy4NCg0KQlIsDQpBbmR5DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJv
bTogWXVhbnRpYW4gVGFuZyA8YW5keS50YW5nQG54cC5jb20+DQo+IFNlbnQ6IDIwMjDE6jTUwjE3
yNUgMTQ6MTYNCj4gVG86IHNoYXduZ3VvQGtlcm5lbC5vcmc7IHJvYmgrZHRAa2VybmVsLm9yZzsg
bWFyay5ydXRsYW5kQGFybS5jb207DQo+IGNhdGFsaW4ubWFyaW5hc0Bhcm0uY29tOyB3aWxsLmRl
YWNvbkBhcm0uY29tDQo+IENjOiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOw0KPiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwu
b3JnOyBBbmR5IFRhbmcgPGFuZHkudGFuZ0BueHAuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0hdIGFy
bTY0OiBkdHM6IGx4MjE2MGE6IGFkZCBtb3JlIHRoZXJtYWwgem9uZSBzdXBwb3J0DQo+IA0KPiBU
aGVyZSBhcmUgNyB0aGVybWFsIHpvbmVzIGluIGx4MjE2MGEgc29jLiBBZGQgdGhlIHJlc3QgdGhl
cm1hbCB6b25lIG5vZGUgdG8NCj4gZW5hYmxlIHRoZW0uDQo+IEFsc28gY29ycmVjdCBvbmUgb2Yg
dGhlIHZhbHVlcyBmb3IgdG11LWNhbGlicmF0aW9uIHByb3BlcnR5Lg0KPiANCj4gU2lnbmVkLW9m
Zi1ieTogWXVhbnRpYW4gVGFuZyA8YW5keS50YW5nQG54cC5jb20+DQo+IC0tLQ0KPiAgLi4uL2Fy
bTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHgyMTYwYS5kdHNpIHwgMTMwICsrKysrKysrKysr
KysrKysrLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDEyNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9u
cygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2Zz
bC1seDIxNjBhLmR0c2kNCj4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHgy
MTYwYS5kdHNpDQo+IGluZGV4IGFlMWIxMTNhYjE2Mi4uYWJhZWI1ODdkZTQ4IDEwMDY0NA0KPiAt
LS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHgyMTYwYS5kdHNpDQo+ICsr
KyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1seDIxNjBhLmR0c2kNCj4gQEAg
LTQzNiwxOSArNDM2LDE5IEBADQo+ICAJfTsNCj4gDQo+ICAJdGhlcm1hbC16b25lcyB7DQo+IC0J
CWNvcmVfdGhlcm1hbDE6IGNvcmUtdGhlcm1hbDEgew0KPiArCQljbHVzdGVyNi03IHsNCj4gIAkJ
CXBvbGxpbmctZGVsYXktcGFzc2l2ZSA9IDwxMDAwPjsNCj4gIAkJCXBvbGxpbmctZGVsYXkgPSA8
NTAwMD47DQo+ICAJCQl0aGVybWFsLXNlbnNvcnMgPSA8JnRtdSAwPjsNCj4gDQo+ICAJCQl0cmlw
cyB7DQo+IC0JCQkJY29yZV9jbHVzdGVyX2FsZXJ0OiBjb3JlLWNsdXN0ZXItYWxlcnQgew0KPiAr
CQkJCWNsdXN0ZXI2XzdfYWxlcnQ6IGNsdXN0ZXI2LTctYWxlcnQgew0KPiAgCQkJCQl0ZW1wZXJh
dHVyZSA9IDw4NTAwMD47DQo+ICAJCQkJCWh5c3RlcmVzaXMgPSA8MjAwMD47DQo+ICAJCQkJCXR5
cGUgPSAicGFzc2l2ZSI7DQo+ICAJCQkJfTsNCj4gDQo+IC0JCQkJY29yZV9jbHVzdGVyX2NyaXQ6
IGNvcmUtY2x1c3Rlci1jcml0IHsNCj4gKwkJCQljbHVzdGVyNl83X2NyaXQ6IGNsdXN0ZXI2LTct
Y3JpdCB7DQo+ICAJCQkJCXRlbXBlcmF0dXJlID0gPDk1MDAwPjsNCj4gIAkJCQkJaHlzdGVyZXNp
cyA9IDwyMDAwPjsNCj4gIAkJCQkJdHlwZSA9ICJjcml0aWNhbCI7DQo+IEBAIC00NTcsNyArNDU3
LDcgQEANCj4gDQo+ICAJCQljb29saW5nLW1hcHMgew0KPiAgCQkJCW1hcDAgew0KPiAtCQkJCQl0
cmlwID0gPCZjb3JlX2NsdXN0ZXJfYWxlcnQ+Ow0KPiArCQkJCQl0cmlwID0gPCZjbHVzdGVyNl83
X2FsZXJ0PjsNCj4gIAkJCQkJY29vbGluZy1kZXZpY2UgPQ0KPiAgCQkJCQkJPCZjcHUwIFRIRVJN
QUxfTk9fTElNSVQNCj4gVEhFUk1BTF9OT19MSU1JVD4sDQo+ICAJCQkJCQk8JmNwdTEgVEhFUk1B
TF9OT19MSU1JVA0KPiBUSEVSTUFMX05PX0xJTUlUPiwgQEAgLTQ3OCw2ICs0NzgsMTI2IEBADQo+
ICAJCQkJfTsNCj4gIAkJCX07DQo+ICAJCX07DQo+ICsNCj4gKwkJZGRyLWNsdXN0ZXI1IHsNCj4g
KwkJCXBvbGxpbmctZGVsYXktcGFzc2l2ZSA9IDwxMDAwPjsNCj4gKwkJCXBvbGxpbmctZGVsYXkg
PSA8NTAwMD47DQo+ICsJCQl0aGVybWFsLXNlbnNvcnMgPSA8JnRtdSAxPjsNCj4gKw0KPiArCQkJ
dHJpcHMgew0KPiArCQkJCWRkci1jbHVzdGVyNS1hbGVydCB7DQo+ICsJCQkJCXRlbXBlcmF0dXJl
ID0gPDg1MDAwPjsNCj4gKwkJCQkJaHlzdGVyZXNpcyA9IDwyMDAwPjsNCj4gKwkJCQkJdHlwZSA9
ICJwYXNzaXZlIjsNCj4gKwkJCQl9Ow0KPiArDQo+ICsJCQkJZGRyLWNsdXN0ZXI1LWNyaXQgew0K
PiArCQkJCQl0ZW1wZXJhdHVyZSA9IDw5NTAwMD47DQo+ICsJCQkJCWh5c3RlcmVzaXMgPSA8MjAw
MD47DQo+ICsJCQkJCXR5cGUgPSAiY3JpdGljYWwiOw0KPiArCQkJCX07DQo+ICsJCQl9Ow0KPiAr
CQl9Ow0KPiArDQo+ICsJCXdyaW9wIHsNCj4gKwkJCXBvbGxpbmctZGVsYXktcGFzc2l2ZSA9IDwx
MDAwPjsNCj4gKwkJCXBvbGxpbmctZGVsYXkgPSA8NTAwMD47DQo+ICsJCQl0aGVybWFsLXNlbnNv
cnMgPSA8JnRtdSAyPjsNCj4gKw0KPiArCQkJdHJpcHMgew0KPiArCQkJCXdyaW9wLWFsZXJ0IHsN
Cj4gKwkJCQkJdGVtcGVyYXR1cmUgPSA8ODUwMDA+Ow0KPiArCQkJCQloeXN0ZXJlc2lzID0gPDIw
MDA+Ow0KPiArCQkJCQl0eXBlID0gInBhc3NpdmUiOw0KPiArCQkJCX07DQo+ICsNCj4gKwkJCQl3
cmlvcC1jcml0IHsNCj4gKwkJCQkJdGVtcGVyYXR1cmUgPSA8OTUwMDA+Ow0KPiArCQkJCQloeXN0
ZXJlc2lzID0gPDIwMDA+Ow0KPiArCQkJCQl0eXBlID0gImNyaXRpY2FsIjsNCj4gKwkJCQl9Ow0K
PiArCQkJfTsNCj4gKwkJfTsNCj4gKw0KPiArCQlkY2UtcWJtYW4taHNpbzIgew0KPiArCQkJcG9s
bGluZy1kZWxheS1wYXNzaXZlID0gPDEwMDA+Ow0KPiArCQkJcG9sbGluZy1kZWxheSA9IDw1MDAw
PjsNCj4gKwkJCXRoZXJtYWwtc2Vuc29ycyA9IDwmdG11IDM+Ow0KPiArDQo+ICsJCQl0cmlwcyB7
DQo+ICsJCQkJZGNlLXFibWFuLWFsZXJ0IHsNCj4gKwkJCQkJdGVtcGVyYXR1cmUgPSA8ODUwMDA+
Ow0KPiArCQkJCQloeXN0ZXJlc2lzID0gPDIwMDA+Ow0KPiArCQkJCQl0eXBlID0gInBhc3NpdmUi
Ow0KPiArCQkJCX07DQo+ICsNCj4gKwkJCQlkY2UtcWJtYW4tY3JpdCB7DQo+ICsJCQkJCXRlbXBl
cmF0dXJlID0gPDk1MDAwPjsNCj4gKwkJCQkJaHlzdGVyZXNpcyA9IDwyMDAwPjsNCj4gKwkJCQkJ
dHlwZSA9ICJjcml0aWNhbCI7DQo+ICsJCQkJfTsNCj4gKwkJCX07DQo+ICsJCX07DQo+ICsNCj4g
KwkJY2NuLWRwYWEtdGJ1IHsNCj4gKwkJCXBvbGxpbmctZGVsYXktcGFzc2l2ZSA9IDwxMDAwPjsN
Cj4gKwkJCXBvbGxpbmctZGVsYXkgPSA8NTAwMD47DQo+ICsJCQl0aGVybWFsLXNlbnNvcnMgPSA8
JnRtdSA0PjsNCj4gKw0KPiArCQkJdHJpcHMgew0KPiArCQkJCWNjbi1kcGFhLWFsZXJ0IHsNCj4g
KwkJCQkJdGVtcGVyYXR1cmUgPSA8ODUwMDA+Ow0KPiArCQkJCQloeXN0ZXJlc2lzID0gPDIwMDA+
Ow0KPiArCQkJCQl0eXBlID0gInBhc3NpdmUiOw0KPiArCQkJCX07DQo+ICsNCj4gKwkJCQljY24t
ZHBhYS1jcml0IHsNCj4gKwkJCQkJdGVtcGVyYXR1cmUgPSA8OTUwMDA+Ow0KPiArCQkJCQloeXN0
ZXJlc2lzID0gPDIwMDA+Ow0KPiArCQkJCQl0eXBlID0gImNyaXRpY2FsIjsNCj4gKwkJCQl9Ow0K
PiArCQkJfTsNCj4gKwkJfTsNCj4gKw0KPiArCQljbHVzdGVyNC1oc2lvMyB7DQo+ICsJCQlwb2xs
aW5nLWRlbGF5LXBhc3NpdmUgPSA8MTAwMD47DQo+ICsJCQlwb2xsaW5nLWRlbGF5ID0gPDUwMDA+
Ow0KPiArCQkJdGhlcm1hbC1zZW5zb3JzID0gPCZ0bXUgNT47DQo+ICsNCj4gKwkJCXRyaXBzIHsN
Cj4gKwkJCQljbHVzdDQtaHNpbzMtYWxlcnQgew0KPiArCQkJCQl0ZW1wZXJhdHVyZSA9IDw4NTAw
MD47DQo+ICsJCQkJCWh5c3RlcmVzaXMgPSA8MjAwMD47DQo+ICsJCQkJCXR5cGUgPSAicGFzc2l2
ZSI7DQo+ICsJCQkJfTsNCj4gKw0KPiArCQkJCWNsdXN0NC1oc2lvMy1jcml0IHsNCj4gKwkJCQkJ
dGVtcGVyYXR1cmUgPSA8OTUwMDA+Ow0KPiArCQkJCQloeXN0ZXJlc2lzID0gPDIwMDA+Ow0KPiAr
CQkJCQl0eXBlID0gImNyaXRpY2FsIjsNCj4gKwkJCQl9Ow0KPiArCQkJfTsNCj4gKwkJfTsNCj4g
Kw0KPiArCQljbHVzdGVyMi0zIHsNCj4gKwkJCXBvbGxpbmctZGVsYXktcGFzc2l2ZSA9IDwxMDAw
PjsNCj4gKwkJCXBvbGxpbmctZGVsYXkgPSA8NTAwMD47DQo+ICsJCQl0aGVybWFsLXNlbnNvcnMg
PSA8JnRtdSA2PjsNCj4gKw0KPiArCQkJdHJpcHMgew0KPiArCQkJCWNsdXN0ZXIyLTMtYWxlcnQg
ew0KPiArCQkJCQl0ZW1wZXJhdHVyZSA9IDw4NTAwMD47DQo+ICsJCQkJCWh5c3RlcmVzaXMgPSA8
MjAwMD47DQo+ICsJCQkJCXR5cGUgPSAicGFzc2l2ZSI7DQo+ICsJCQkJfTsNCj4gKw0KPiArCQkJ
CWNsdXN0ZXIyLTMtY3JpdCB7DQo+ICsJCQkJCXRlbXBlcmF0dXJlID0gPDk1MDAwPjsNCj4gKwkJ
CQkJaHlzdGVyZXNpcyA9IDwyMDAwPjsNCj4gKwkJCQkJdHlwZSA9ICJjcml0aWNhbCI7DQo+ICsJ
CQkJfTsNCj4gKwkJCX07DQo+ICsJCX07DQo+ICAJfTsNCj4gDQo+ICAJc29jIHsNCj4gQEAgLTU0
OSw3ICs2NjksNyBAQA0KPiAgCQkJCS8qIENhbGlicmF0aW9uIGRhdGEgZ3JvdXAgMSAqLw0KPiAg
CQkJCTwweDAwMDAwMDAwIDB4MDAwMDAwMzUNCj4gIAkJCQkvKiBDYWxpYnJhdGlvbiBkYXRhIGdy
b3VwIDIgKi8NCj4gLQkJCQkweDAwMDEwMDAxIDB4MDAwMDAxNTQ+Ow0KPiArCQkJCTB4MDAwMDAw
MDEgMHgwMDAwMDE1ND47DQo+ICAJCQlsaXR0bGUtZW5kaWFuOw0KPiAgCQkJI3RoZXJtYWwtc2Vu
c29yLWNlbGxzID0gPDE+Ow0KPiAgCQl9Ow0KPiAtLQ0KPiAyLjE3LjENCg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
