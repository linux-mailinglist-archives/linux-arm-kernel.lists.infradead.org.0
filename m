Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA518B0EA9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 14:12:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5iQgS5AYFJrQXn2+yqDL6zsmkyM2jfPI4wFImEKPKaw=; b=p0PD/cfMW9ZwCV
	01LJ2vq0hoJRAQIWzl7JJarY6lZKFLAk/4VjfZCJ/C2jbkh6JQNeoUdhVQ9w+mVhmplHS9Hrzb5XS
	46Sc8Bl8FScZPLbLlJYmeeNIz3BX6eQ3OYi12dGTdW6OrFr/O3LqmtAhlb5H8iNZHueNODKCdvViK
	QaYBdYicNU6HJ6d804SIIrQH8/KIQ+XQQPl0MmHgcP5vgLRlLtoVh5d8GTqqHePNyfl6AFXpD55eX
	YE+06WRpFUrPIgiHqNyw1AmsfQqJslm4ZOYOOGZ7GNICLpl8lgU8BjSz1kSCICC1sHeGSjx+OdRt3
	hbKuX8J+T6Go4/6o/J3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8NxZ-0002Pn-EH; Thu, 12 Sep 2019 12:12:25 +0000
Received: from mail-eopbgr80100.outbound.protection.outlook.com
 ([40.107.8.100] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8NxH-0002P6-Nk
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 12:12:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f+mGo+0BH+8ydlYz3j/L+p3tszKsgj8PGIWw+qIPuCDQyDPiVFDzalsMMec6KyO850YSdokWFPiqWVbAltRWyTpTPCox2E1LTHyBttRqtu+7yECW6d+LQtpeP8VwqF3iVWc/WW4OOvXU6JYwrMl6M6hyAg4XFrnMkO8zdcx4BuHuBiSEF5j3Ns+q2hT7Atr7fHrJVDRDvG8IJPvvLnPjHze9nZFn8lHVphSJGMQn4QQstBlWH6KqvFKtcwk3oD4GVCp/Ii3hGgL0jkw1Mdj20bWu6pEtZ95CKZiDTrRDS6luu4hmI8U3GMoOI3VtIV13iwgtClixUghtfyHzaMI7og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RmRLxkgVmKt+CBibrqWWTxKTAnJ0xZHXIzfs33zXeJA=;
 b=FYDYu6tyyY6IoawRqtwRM9SfIXt/0Te2+y3CcXE5ufrkhnfJa+JTIP9Oui+QL+L5UfaScOnKlmZ3Dq8rRCXIDtbq5lQLYJdoR+ZQFQsk79yaA/4KNYG5ClIPQoRvRQyhYs+kyJTLXhkxDkT5qaMFw1V89qlJTcmkMzKSVQtPd7xxfJecmrwd5C4pezBN19aaiQ3Q2djZu4hxycoGnB1yjdHh8oFkury4LFqD72ZHYx5K2ViI07cDAYnPyp0cEwX7/VqtBPhWSeU5kx4hRywZakGt3egrdwjI1xBBzw/GJhMijgShyv5wm3XHOwoEEw/PygAy8ZXAuSgNvvGV6z4e7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=televic.com; dmarc=pass action=none header.from=televic.com;
 dkim=pass header.d=televic.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=televic.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RmRLxkgVmKt+CBibrqWWTxKTAnJ0xZHXIzfs33zXeJA=;
 b=Yq6BOtylno1DB8Tx4BZdVR2cmiJg5ZKlNHIP2OMEHmIWnEiPD5gibCBzvmPFzOSFKLC4IzOKkxGtT8QwGXcAz0ox/GhDSp4aUSa/4VULpbcj+wUiLaQDqnvyYno57qb1hNODEo+yOi/bpOFOY74kZzZVzQAbC6UMELUSlJRgssA=
Received: from AM0PR07MB5300.eurprd07.prod.outlook.com (20.178.18.224) by
 AM0PR07MB6305.eurprd07.prod.outlook.com (10.186.175.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.10; Thu, 12 Sep 2019 12:12:04 +0000
Received: from AM0PR07MB5300.eurprd07.prod.outlook.com
 ([fe80::c133:f3fd:605b:1108]) by AM0PR07MB5300.eurprd07.prod.outlook.com
 ([fe80::c133:f3fd:605b:1108%6]) with mapi id 15.20.2263.016; Thu, 12 Sep 2019
 12:12:04 +0000
From: Jurgen Lambrecht <J.Lambrecht@TELEVIC.com>
To: Robin Gong <yibin.gong@nxp.com>, Leonard Crestez
 <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>
Subject: Re: FYI: imx-sdma firmware is not compatible with SLUB slab allocator
Thread-Topic: FYI: imx-sdma firmware is not compatible with SLUB slab allocator
Thread-Index: AQHVYmRlwzto4eeux06zQsdxRt35zKcoAcgA
Date: Thu, 12 Sep 2019 12:12:03 +0000
Message-ID: <5274ab9f-999a-9d11-35fa-43b57187607b@televic.com>
References: <1e2fe2dc-f5ea-db73-59cf-c61ec558131a@televic.com>
 <VI1PR04MB7023FB06F79F31334905D34EEEA00@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <7282882c-1c79-9685-4bfe-80195976c8d6@televic.com>
 <VE1PR04MB663818AE90C9997DC340250989A30@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <f68d8972-7471-6544-d50f-55267e6790a7@televic.com>
 <VE1PR04MB66380D06DD2619493904B38B89B90@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <dc06392b-8242-7d09-e0fe-49fb04849ebb@televic.com>
 <VE1PR04MB66385122B55060CE7919014D89B00@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <9a48ca49-4c6f-f17e-3306-6af41d3b162c@televic.com>
In-Reply-To: <9a48ca49-4c6f-f17e-3306-6af41d3b162c@televic.com>
Accept-Language: nl-BE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-originating-ip: [84.199.255.188]
x-clientproxiedby: AM6PR10CA0084.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:209:8c::25) To AM0PR07MB5300.eurprd07.prod.outlook.com
 (2603:10a6:208:f2::32)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=J.Lambrecht@TELEVIC.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 05093779-3feb-4eb5-1c87-08d7377a6c4b
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:AM0PR07MB6305; 
x-ms-traffictypediagnostic: AM0PR07MB6305:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR07MB63054DDF8C67146E451CA828FFB00@AM0PR07MB6305.eurprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 01583E185C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(376002)(136003)(346002)(39850400004)(366004)(199004)(189003)(476003)(2616005)(64756008)(65956001)(65806001)(6436002)(229853002)(66066001)(6486002)(3846002)(36756003)(6116002)(2906002)(71190400001)(8936002)(71200400001)(81166006)(256004)(14444005)(5024004)(8676002)(81156014)(305945005)(7736002)(4001150100001)(31686004)(6246003)(76176011)(52116002)(6306002)(53936002)(99286004)(58126008)(110136005)(54906003)(4326008)(316002)(25786009)(6512007)(386003)(11346002)(446003)(14454004)(53546011)(6506007)(186003)(102836004)(486006)(478600001)(45080400002)(966005)(5660300002)(66574012)(66476007)(66556008)(26005)(66446008)(31696002)(86362001)(66946007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:AM0PR07MB6305;
 H:AM0PR07MB5300.eurprd07.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: TELEVIC.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: nu+aulNZCefCEGW+dN+pBleSC2Nyba2/Vp/9oDxyufOwTw9xEkf3M2V3/KnuI2RSYeWHZfbeMZo0eqpYAcyQ/qmUfNooK4amPKmKq54RPCaAHQy/jKKXTtLX3Hyi8zSvtMr1Og7ItNARx3YkkMbZBJO4Q5WCpG/lX08vPacZovtlYbvZ0JYvD6h0C9ZY27y+kTXlJJkx8qiwIgyF0IPJrhHv6Uj4FnlZ79E06EXyw1BHE7GOJYs9q5Kfw8j/9g6LLXCwhxU8P8AYwTX4i3Jl7bGrn7A7m+LVjfSALu+WTSdsF47X7mDErLopBKLBEME4Gp00dppJCV1TSYLVKAEWu/wBBPGA4ZNGDibAUSCbdDawH0ebGph9JRe/qSfA5T5fg1FOfCc0/NGfoYUSftiBfn3SXB41mmfikjxwrC2ROg0=
x-ms-exchange-transport-forked: True
Content-ID: <684E4652E52104438041E351ACDF9595@eurprd07.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: televic.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05093779-3feb-4eb5-1c87-08d7377a6c4b
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2019 12:12:04.0073 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 68a8593e-d1fc-4a6a-b782-1bdcb0633231
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x2yfmQRr9vSo/JaLtHTmxdpMjQJU2DzmBOViwL/lNt+UUP0hTOT8N48oRNOK6vlSyH4169G6HDixJeqbK7H//Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR07MB6305
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_051207_916798_F3AA4BB3 
X-CRM114-Status: GOOD (  16.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.100 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gOS8xMi8xOSAxMTo0NSBBTSwgSnVyZ2VuIExhbWJyZWNodCB3cm90ZToNCj4gQ0FVVElPTjog
VGhpcyBFbWFpbCBvcmlnaW5hdGVkIGZyb20gb3V0c2lkZSBUZWxldmljLiBEbyBub3QgY2xpY2sg
bGlua3Mgb3Igb3BlbiBhdHRhY2htZW50cyB1bmxlc3MgeW91IHJlY29nbml6ZSB0aGUgc2VuZGVy
IGFuZCBrbm93IHRoZSBjb250ZW50IGlzIHNhZmUuDQo+DQo+DQo+IE9uIDkvMTIvMTkgNDowNiBB
TSwgUm9iaW4gR29uZyB3cm90ZToNCj4+IE9uIDIwMTktOS0zIDIyOjMyIEp1cmdlbiBMYW1icmVj
aHQgPEouTGFtYnJlY2h0QFRFTEVWSUMuY29tPiB3cm90ZQ0KPj4+IE9uIDkvMy8xOSA3OjU3IEFN
LCBSb2JpbiBHb25nIHdyb3RlOg0KPj4+DQo+Pj4+IE9uIDIwMTktOC0yOSAxNDoyNCwgSnVyZ2Vu
IExhbWJyZWNodCB3cm90ZToNCj4+Pj4+IE9uIDgvMjgvMTkgNDowNSBQTSwgUm9iaW4gR29uZyB3
cm90ZToNCj4+Pj4+PiBDb3VsZCB5b3UgaGVscCBjaGVjayBpZiBiZWxvdyBjb21taXQgaW4geW91
ciBzaWRlPw0KPj4+Pj4+IGNvbW1pdCBlYmI4NTNiMWJkNWY2NTliOTJjNzFkYzZhOWRlNDRjZmMz
N2M3OGMwDQo+Pj4+Pj4gQXV0aG9yOiBMdWNhcyBTdGFjaDxsLnN0YWNoQHBlbmd1dHJvbml4LmRl
Pg0KPj4+Pj4+IERhdGU6ICAgVHVlIE5vdiA2IDAzOjQwOjI4IDIwMTggKzAwMDANCj4+Pj4+IHll
cywgaXQncyBpbi4NCj4+Pj4+DQo+Pj4+PiBBbHNvIHRoZSAyIGZvbGxvdy11cCBjb21taXRzIG9m
IEx1Y2FzIFN0YWNoOg0KPj4+Pj4gOTA2M2Y1YTk5ZWE3NmY4NTkzNWUzZTQ1MzQyMmQxNWU3YmU4
OWI5ZSBhbmQNCj4+Pj4+IDM3NGYzODRiYzY2ZjdhOTI4ZjExZWIyMGMwNTE4ZjBmM2ZjMWZmZDYu
DQo+Pj4gSSBoYWQgYWxzbyBhbHJlYWR5IGNoZXJyeSBwaWNrZWQgeW91ciBjb21taXQNCj4+PiAz
ZjVkZTRjN2UxNjE2NGEzNDRhOTA1NjQ5ZjA4ZThhOTBhNjhmZjlmICJkbWFlbmdpbmU6IGlteC1z
ZG1hOg0KPj4+IHJlbW92ZSBCRF9JTlRSIGZvciBjaGFubmVsMCIuDQo+Pj4NCj4+PiBCdXQgYWxz
byB0aGVuIGtlcm5lbCBoYW5ncyBhdCBsb2FkaW5nIHNkbWEgRlcuDQo+Pj4NCj4+PiAodGhpcyBs
b29rZWQgdGhlIG1vc3QgaW50ZXJlc3RpbmcgY29tbWl0KQ0KPj4gSSBpZGVudGlmaWVkIHRoaXMg
aXNzdWUgd2hpY2ggY2F1c2VkIGJ5IFNETUFfU0NSSVBUX0FERFJTX0FSUkFZX1NJWkVfVjMNCj4+
ICg0MSlleGNlZWQgdGhlIHN0cnVjdHVyZSBzZG1hX3NjcmlwdF9zdGFydF9hZGRycyg0MCkgc28g
dGhhdCBpbGxlZ2FsIG1lbW9yeQ0KPj4gdG91Y2gsIHN1Y2ggYXMgc2xvYiBibG9jayBoZWFkZXIs
IHRodXMga2VybmVsIHRyYXAgaW50byB3aGlsZSgpIGxvb3AgZm9yZXZlcg0KPj4gaW4gc2xvYl9m
cmVlKCkuIFBsZWFzZSBzZWUgdGhlIGJlbG93IGNvZGUgcGllY2UgaW4gc2RtYV9hZGRfc2NyaXB0
cygpLg0KPj4gICAgICAgICAgIGZvciAoaSA9IDA7IGkgPCBzZG1hLT5zY3JpcHRfbnVtYmVyOyBp
KyspDQo+PiAgICAgICAgICAgICAgICAgICBpZiAoYWRkcl9hcnJbaV0gPiAwKQ0KPj4gICAgICAg
ICAgICAgICAgICAgICAgICAgICBzYWRkcl9hcnJbaV0gPSBhZGRyX2FycltpXTsNCj4+IFRoYXQg
aXNzdWUgd2FzIGJyb3VnaHQgYnkgY29tbWl0IGE1NzI0NjBiZTljZiAoZG1hZW5naW5lOiBpbXgt
c2RtYToNCj4+IEFkZCBzdXBwb3J0IGZvciB2ZXJzaW9uIDMgZmlybXdhcmUpIGJlY2F1c2UgdGhl
IFNETUFfU0NSSVBUX0FERFJTX0FSUkFZX1NJWkVfVjMNCj4+ICgzOC0+NDEgMyBzY3JpcHRzIGFk
ZGVkKSBub3QgYWxpZ24gd2l0aCBzY3JpcHQgbnVtYmVyIGFkZGVkIGluDQo+PiBzZG1hX3Njcmlw
dF9zdGFydF9hZGRycygyIHNjcmlwdHMpLiBQbGVhc2UgaGF2ZSBhIHRyeSB3aXRoDQo+PiB0aGUg
YmVsb3cgcGF0Y2g6DQo+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9wbGF0Zm9ybV9kYXRh
L2RtYS1pbXgtc2RtYS5oIGIvaW5jbHVkZS9saW51eC9wbGF0Zm9ybV9kYXRhL2RtYS1pbXgtc2Rt
YS5oDQo+PiBpbmRleCA2ZWFhNTNjLi4zMGU2NzZiIDEwMDY0NA0KPj4gLS0tIGEvaW5jbHVkZS9s
aW51eC9wbGF0Zm9ybV9kYXRhL2RtYS1pbXgtc2RtYS5oDQo+PiArKysgYi9pbmNsdWRlL2xpbnV4
L3BsYXRmb3JtX2RhdGEvZG1hLWlteC1zZG1hLmgNCj4+IEBAIC01MSw3ICs1MSwxMCBAQCBzdHJ1
Y3Qgc2RtYV9zY3JpcHRfc3RhcnRfYWRkcnMgew0KPj4gICAgICAgICAgIC8qIEVuZCBvZiB2MiBh
cnJheSAqLw0KPj4gICAgICAgICAgIHMzMiB6Y2FuZmRfMl9tY3VfYWRkcjsNCj4+ICAgICAgICAg
ICBzMzIgenFzcGlfMl9tY3VfYWRkcjsNCj4+ICsgICAgICAgczMyIG1jdV8yX2Vjc3BpX2FkZHI7
DQo+PiAgICAgICAgICAgLyogRW5kIG9mIHYzIGFycmF5ICovDQo+PiArICAgICAgIHMzMiBtY3Vf
Ml96cXNwaV9hZGRyOw0KPj4gKyAgICAgICAvKiBFbmQgb2YgdjQgYXJyYXkgKi8NCj4+ICAgIH07
DQo+Pg0KPiBZZXMsIHRoaXMgcGF0Y2ggc29sdmVzIGl0ISBJIGNhbiBub3cgdXNlIFNMT0Igc2xh
YiBhbGxvY2F0b3IuIEkgdHJpZWQNCj4gc2V2ZXJhbCByZWJvb3RzIGFuZCBwb3dlciBjeWNsZXMu
DQo+IEkgdHJpZWQgd2l0aCBkaWZmZXJlbnQgZHRzICh3aXRob3V0IGVhcmx5Y29uLCB3aXRob3V0
IHNkbWEgb24gdWFydCBhbmQNCj4gZWNzcGkpLg0KPiBJIGRpZCBub3QgdHJ5IG90aGVyIGtlcm5l
bHMsIG9ubHkgNC4xOS42Nitmc2NsIHdpdGggb3VyIHBhdGNoZXMgYW5kIHNkbWENCj4gdjMuNSBi
dWlsdC1pbi4NCkkgdHJpZWQgYWdhaW4gdjUuMyByYzYgd2l0aCBTTE9CLCBidXQgaXQgc3RpbGwg
Ym9vdGVkIE9LLCB0aGVuIHRvb2sgDQpsYXRlc3QgdjUuMyByYzggZnJvbSBtYWlubGluZSwgYW5k
IGl0IGFsc28gYm9vdHMgT0sgLSB0cmllZCBzZXZlcmFsIA0KdGltZXMgYWxzbyB3aXRoIHBvd2Vy
IGN5Y2xlLg0KDQpUaGVuIEkgYWRkZWQgeW91ciBwYXRjaCwgYW5kIGl0ICJzdGlsbCIgYm9vdHMg
Oi0pLiBTbyBPSzoNCg0KTGludXggaW14NnVsLTMzOTI3MzE4IDUuMy4wLXJjOC1kaXJ0eSAjMyBQ
UkVFTVBUIFRodSBTZXAgMTIgMTM6NTQ6MjUgDQpDRVNUIDIwMTkgYXJtdjdsIEdOVS9MaW51eA0K
DQo+IFRoYW5rcyBhbmQgYWxzbyB0aGFua3MgVXdlIGZvciBhbmFseXppbmcgdGhlIGFzc2VtYmx5
LA0KPg0KPiBKw7xyZ2VuDQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fDQo+IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0DQo+IGxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZw0KPiBodHRwczovL2V1cjAzLnNhZmVsaW5rcy5w
cm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cCUzQSUyRiUyRmxpc3RzLmluZnJhZGVhZC5v
cmclMkZtYWlsbWFuJTJGbGlzdGluZm8lMkZsaW51eC1hcm0ta2VybmVsJmFtcDtkYXRhPTAyJTdD
MDElN0NKLkxhbWJyZWNodCU0MHRlbGV2aWMuY29tJTdDMzE1NzFjNjI0ZWI1NGI2ZDZkYmUwOGQ3
Mzc2NjBmNjYlN0M2OGE4NTkzZWQxZmM0YTZhYjc4MjFiZGNiMDYzMzIzMSU3QzElN0MwJTdDNjM3
MDM4NzgzNzk3ODY5NjY4JmFtcDtzZGF0YT1acHpqeG11cG9ITHV2dENGNWtOQkJNZ1h4TUY2U1Vi
bnl1SzdWcHExWXJNJTNEJmFtcDtyZXNlcnZlZD0wDQoNCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
