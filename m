Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA8EFB0BCD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 11:46:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=it1cQYEUaMf+Fqx5T6H8QhoAC7BwT66lLBe0hUaMtpY=; b=G2NkuDosBy8s9e
	Dn3xioF0Vg0fjr8kn17p+Rehdjf9XojC/r5egEZzv7wg/WjE2ec9/Wlp3lX+5RRQUjbY6Krvy+CIP
	C4Pj8oHzW9DK3QBfvORY05zuN5rX3iS9EXQVqJRn3cGH5ZZdKV1bCItdmMZWtrG6+1U7fwe23bFin
	MKnx+cE7LV8gotVDRHDOultOzWZVERaset7PnLvhDPOLpmEdgUUbNvp/Eh7dAI7qDaKzWGz/boF/o
	cqVmpu2VFuJMlDHIFnxuzR8WaY9HUEgC4XHga3HY1uHZVwR293+FYGeDrH7o9jpJq7LGIBa2XeNeN
	VJATIVwm1CcMYsmsGTJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Lg8-0004AX-TC; Thu, 12 Sep 2019 09:46:17 +0000
Received: from mail-eopbgr130117.outbound.protection.outlook.com
 ([40.107.13.117] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Lfr-00049z-JJ
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 09:46:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d08VHzHjwBnIRWM/4x63iNYY5mpvV8TRPuVhoyLCU49CGVDjbnvw6ZSb5snjR6kPVpmzmyHkR/aY2YkohPA7v2Q4agJ625o3pb1okQOmVpfsqFbxyPQCkwfzsXaQgcBM2ZtieJtlYUuPpZLsafgd+yZehSJDJOC7NnIg2ClzpSiN+s8uzfpUf7yuoMuWtN774YkiLmGV2nEzfBamruOgANXs3ZoiFezu3PiYNlb5WHktEDA6wDx1WPJZTzZQPcP4wRdt5AJ6bsrO0fmAVyDSdyUdD9+diwqcpdSqjLA/qyiz90CRcy/cAYsNHU9yDtK38CL9kjyIDJoVSQmMTDXG6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oRV/KDOl/6J92raoO0DLcyp9ZpyfTJpybS9vf7VF+UA=;
 b=gsaufZsldNVXvFuUswe6+txvPbSw1CCrJl4GBQFic/MkUrxB2nGryrfDHzFwbZjrP+cijl3EbPUlj/h+kx0nhig45gqIRax7Dj3NYI9kdFLkCj/rRnP6y4hRthy6Lg3Alo2z0Kr0m3OU14cAbiSko6TcV+VW0kbVBgDG+iPJWq4hMrBeAB3fE8FyoTtPxD55pRrRAaxPg7uuaNzPNNQo8MVwzRuv1wqnI9e7iEwNwc1cOxW8vvP3D3TtKoebcqi7PRkXIZsCnwJ+e9SVvyjJ418sRaUyJHl3Cx2R/ulz6aHzRXauP1kGG9ZHfQ+DrS9ZT7pDTzGHIUnPtD9cObxMVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=televic.com; dmarc=pass action=none header.from=televic.com;
 dkim=pass header.d=televic.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=televic.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oRV/KDOl/6J92raoO0DLcyp9ZpyfTJpybS9vf7VF+UA=;
 b=j+Eizyf0QMkHaNi5dgNl7luHfy8T6vC+1Yz3q2rFE0tIzT46tYNwHjqs2vtjpEFlaXkLxdEQoAnZpFR078pk2PAk1BS98DXwqgVkxNp7UlYfiPRYmlvLdFgjCgBlH+46dse8DhxICqRT5JOoJA5nWJKDWSF3lRsh9RPWdku2GVM=
Received: from AM0PR07MB5300.eurprd07.prod.outlook.com (20.178.18.224) by
 AM0PR07MB3939.eurprd07.prod.outlook.com (52.133.63.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.7; Thu, 12 Sep 2019 09:45:50 +0000
Received: from AM0PR07MB5300.eurprd07.prod.outlook.com
 ([fe80::c133:f3fd:605b:1108]) by AM0PR07MB5300.eurprd07.prod.outlook.com
 ([fe80::c133:f3fd:605b:1108%6]) with mapi id 15.20.2263.016; Thu, 12 Sep 2019
 09:45:50 +0000
From: Jurgen Lambrecht <J.Lambrecht@TELEVIC.com>
To: Robin Gong <yibin.gong@nxp.com>, Leonard Crestez
 <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>
Subject: Re: FYI: imx-sdma firmware is not compatible with SLUB slab allocator
Thread-Topic: FYI: imx-sdma firmware is not compatible with SLUB slab allocator
Thread-Index: AQHVYmRlwzto4eeux06zQsdxRt35zA==
Date: Thu, 12 Sep 2019 09:45:50 +0000
Message-ID: <9a48ca49-4c6f-f17e-3306-6af41d3b162c@televic.com>
References: <1e2fe2dc-f5ea-db73-59cf-c61ec558131a@televic.com>
 <VI1PR04MB7023FB06F79F31334905D34EEEA00@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <7282882c-1c79-9685-4bfe-80195976c8d6@televic.com>
 <VE1PR04MB663818AE90C9997DC340250989A30@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <f68d8972-7471-6544-d50f-55267e6790a7@televic.com>
 <VE1PR04MB66380D06DD2619493904B38B89B90@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <dc06392b-8242-7d09-e0fe-49fb04849ebb@televic.com>
 <VE1PR04MB66385122B55060CE7919014D89B00@VE1PR04MB6638.eurprd04.prod.outlook.com>
In-Reply-To: <VE1PR04MB66385122B55060CE7919014D89B00@VE1PR04MB6638.eurprd04.prod.outlook.com>
Accept-Language: nl-BE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-originating-ip: [84.199.255.188]
x-clientproxiedby: AM5PR04CA0017.eurprd04.prod.outlook.com
 (2603:10a6:206:1::30) To AM0PR07MB5300.eurprd07.prod.outlook.com
 (2603:10a6:208:f2::32)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=J.Lambrecht@TELEVIC.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0bd1fc09-c0fc-44a3-0377-08d73765fea6
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:AM0PR07MB3939; 
x-ms-traffictypediagnostic: AM0PR07MB3939:
x-microsoft-antispam-prvs: <AM0PR07MB393932A9465D4C4119EE6A2BFFB00@AM0PR07MB3939.eurprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 01583E185C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(136003)(346002)(396003)(39850400004)(366004)(189003)(199004)(102836004)(4326008)(486006)(476003)(2616005)(14454004)(25786009)(11346002)(66066001)(65956001)(65806001)(446003)(8936002)(66574012)(229853002)(386003)(6506007)(53546011)(6512007)(6116002)(305945005)(58126008)(4001150100001)(110136005)(3846002)(54906003)(6436002)(316002)(6246003)(31686004)(71200400001)(186003)(71190400001)(86362001)(64756008)(66446008)(26005)(53936002)(66556008)(66946007)(66476007)(7736002)(2906002)(478600001)(31696002)(6486002)(99286004)(8676002)(76176011)(36756003)(81166006)(81156014)(5660300002)(256004)(52116002)(14444005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:AM0PR07MB3939;
 H:AM0PR07MB5300.eurprd07.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: TELEVIC.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ZWGnvJ7LHxKQ65IKDfL4Ywnd/hT8ZyIAbOUOhL2u74sgp8sVars2vcAIktBVkd1kKd74VsIR0UcIVkQRNHA5vXX1zOCGdcpPRotU8VRCxG3BsS37TmfcXrse87ADOC1eiZQOk+aetkb5Gd+UoUPZFa7sBvrqPpU5JMiJN1q7xXXrGHeoWksDnT+aLkFNlfKp2AwHTAkW3EWLWQw0545aG3IjMd7mwneBOXTnh8CWnECsCReJ9WwGCKL1aZCk3TMukL7K7KhpYwgNR+pDLhWufAyjAEOVVBTcZGr3d5ktY2p88VZEfjHqjrVbG7vfLQMuh8emQi0lYJLrjhr2h+7RtQjf+AIz9RtrLjd8UNPYSXTV+uS+lV1Q1loaJbUdeSfOFMmW2JHwP0rifF/1ZretdJAkq/iOxcJVHDTX8LCQFEE=
x-ms-exchange-transport-forked: True
Content-ID: <8EE347301BF63D4CBF86303914E506E1@eurprd07.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: televic.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0bd1fc09-c0fc-44a3-0377-08d73765fea6
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2019 09:45:50.0711 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 68a8593e-d1fc-4a6a-b782-1bdcb0633231
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VpoP+SMsS+Q7HrUnckUbVz+fUh6eJ6FO24RpvCWjGihH2Lrwv7eXtr3v1HSxZxXkfsOP2DB/VoVoYSndPKngWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR07MB3939
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_024559_843164_F0AB0170 
X-CRM114-Status: GOOD (  15.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.117 listed in list.dnswl.org]
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

T24gOS8xMi8xOSA0OjA2IEFNLCBSb2JpbiBHb25nIHdyb3RlOg0KPiBPbiAyMDE5LTktMyAyMjoz
MiBKdXJnZW4gTGFtYnJlY2h0IDxKLkxhbWJyZWNodEBURUxFVklDLmNvbT4gd3JvdGUNCj4+IE9u
IDkvMy8xOSA3OjU3IEFNLCBSb2JpbiBHb25nIHdyb3RlOg0KPj4NCj4+PiBPbiAyMDE5LTgtMjkg
MTQ6MjQsIEp1cmdlbiBMYW1icmVjaHQgd3JvdGU6DQo+Pj4+IE9uIDgvMjgvMTkgNDowNSBQTSwg
Um9iaW4gR29uZyB3cm90ZToNCj4+Pj4+IENvdWxkIHlvdSBoZWxwIGNoZWNrIGlmIGJlbG93IGNv
bW1pdCBpbiB5b3VyIHNpZGU/DQo+Pj4+PiBjb21taXQgZWJiODUzYjFiZDVmNjU5YjkyYzcxZGM2
YTlkZTQ0Y2ZjMzdjNzhjMA0KPj4+Pj4gQXV0aG9yOiBMdWNhcyBTdGFjaDxsLnN0YWNoQHBlbmd1
dHJvbml4LmRlPg0KPj4+Pj4gRGF0ZTogICBUdWUgTm92IDYgMDM6NDA6MjggMjAxOCArMDAwMA0K
Pj4+PiB5ZXMsIGl0J3MgaW4uDQo+Pj4+DQo+Pj4+IEFsc28gdGhlIDIgZm9sbG93LXVwIGNvbW1p
dHMgb2YgTHVjYXMgU3RhY2g6DQo+Pj4+IDkwNjNmNWE5OWVhNzZmODU5MzVlM2U0NTM0MjJkMTVl
N2JlODliOWUgYW5kDQo+Pj4+IDM3NGYzODRiYzY2ZjdhOTI4ZjExZWIyMGMwNTE4ZjBmM2ZjMWZm
ZDYuDQo+PiBJIGhhZCBhbHNvIGFscmVhZHkgY2hlcnJ5IHBpY2tlZCB5b3VyIGNvbW1pdA0KPj4g
M2Y1ZGU0YzdlMTYxNjRhMzQ0YTkwNTY0OWYwOGU4YTkwYTY4ZmY5ZiAiZG1hZW5naW5lOiBpbXgt
c2RtYToNCj4+IHJlbW92ZSBCRF9JTlRSIGZvciBjaGFubmVsMCIuDQo+Pg0KPj4gQnV0IGFsc28g
dGhlbiBrZXJuZWwgaGFuZ3MgYXQgbG9hZGluZyBzZG1hIEZXLg0KPj4NCj4+ICh0aGlzIGxvb2tl
ZCB0aGUgbW9zdCBpbnRlcmVzdGluZyBjb21taXQpDQo+IEkgaWRlbnRpZmllZCB0aGlzIGlzc3Vl
IHdoaWNoIGNhdXNlZCBieSBTRE1BX1NDUklQVF9BRERSU19BUlJBWV9TSVpFX1YzDQo+ICg0MSll
eGNlZWQgdGhlIHN0cnVjdHVyZSBzZG1hX3NjcmlwdF9zdGFydF9hZGRycyg0MCkgc28gdGhhdCBp
bGxlZ2FsIG1lbW9yeQ0KPiB0b3VjaCwgc3VjaCBhcyBzbG9iIGJsb2NrIGhlYWRlciwgdGh1cyBr
ZXJuZWwgdHJhcCBpbnRvIHdoaWxlKCkgbG9vcCBmb3JldmVyDQo+IGluIHNsb2JfZnJlZSgpLiBQ
bGVhc2Ugc2VlIHRoZSBiZWxvdyBjb2RlIHBpZWNlIGluIHNkbWFfYWRkX3NjcmlwdHMoKS4NCj4g
ICAgICAgICAgZm9yIChpID0gMDsgaSA8IHNkbWEtPnNjcmlwdF9udW1iZXI7IGkrKykNCj4gICAg
ICAgICAgICAgICAgICBpZiAoYWRkcl9hcnJbaV0gPiAwKQ0KPiAgICAgICAgICAgICAgICAgICAg
ICAgICAgc2FkZHJfYXJyW2ldID0gYWRkcl9hcnJbaV07DQo+IFRoYXQgaXNzdWUgd2FzIGJyb3Vn
aHQgYnkgY29tbWl0IGE1NzI0NjBiZTljZiAoZG1hZW5naW5lOiBpbXgtc2RtYToNCj4gQWRkIHN1
cHBvcnQgZm9yIHZlcnNpb24gMyBmaXJtd2FyZSkgYmVjYXVzZSB0aGUgU0RNQV9TQ1JJUFRfQURE
UlNfQVJSQVlfU0laRV9WMw0KPiAoMzgtPjQxIDMgc2NyaXB0cyBhZGRlZCkgbm90IGFsaWduIHdp
dGggc2NyaXB0IG51bWJlciBhZGRlZCBpbg0KPiBzZG1hX3NjcmlwdF9zdGFydF9hZGRycygyIHNj
cmlwdHMpLiBQbGVhc2UgaGF2ZSBhIHRyeSB3aXRoDQo+IHRoZSBiZWxvdyBwYXRjaDoNCj4gZGlm
ZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvcGxhdGZvcm1fZGF0YS9kbWEtaW14LXNkbWEuaCBiL2lu
Y2x1ZGUvbGludXgvcGxhdGZvcm1fZGF0YS9kbWEtaW14LXNkbWEuaA0KPiBpbmRleCA2ZWFhNTNj
Li4zMGU2NzZiIDEwMDY0NA0KPiAtLS0gYS9pbmNsdWRlL2xpbnV4L3BsYXRmb3JtX2RhdGEvZG1h
LWlteC1zZG1hLmgNCj4gKysrIGIvaW5jbHVkZS9saW51eC9wbGF0Zm9ybV9kYXRhL2RtYS1pbXgt
c2RtYS5oDQo+IEBAIC01MSw3ICs1MSwxMCBAQCBzdHJ1Y3Qgc2RtYV9zY3JpcHRfc3RhcnRfYWRk
cnMgew0KPiAgICAgICAgICAvKiBFbmQgb2YgdjIgYXJyYXkgKi8NCj4gICAgICAgICAgczMyIHpj
YW5mZF8yX21jdV9hZGRyOw0KPiAgICAgICAgICBzMzIgenFzcGlfMl9tY3VfYWRkcjsNCj4gKyAg
ICAgICBzMzIgbWN1XzJfZWNzcGlfYWRkcjsNCj4gICAgICAgICAgLyogRW5kIG9mIHYzIGFycmF5
ICovDQo+ICsgICAgICAgczMyIG1jdV8yX3pxc3BpX2FkZHI7DQo+ICsgICAgICAgLyogRW5kIG9m
IHY0IGFycmF5ICovDQo+ICAgfTsNCj4NClllcywgdGhpcyBwYXRjaCBzb2x2ZXMgaXQhIEkgY2Fu
IG5vdyB1c2UgU0xPQiBzbGFiIGFsbG9jYXRvci4gSSB0cmllZCANCnNldmVyYWwgcmVib290cyBh
bmQgcG93ZXIgY3ljbGVzLg0KSSB0cmllZCB3aXRoIGRpZmZlcmVudCBkdHMgKHdpdGhvdXQgZWFy
bHljb24sIHdpdGhvdXQgc2RtYSBvbiB1YXJ0IGFuZCANCmVjc3BpKS4NCkkgZGlkIG5vdCB0cnkg
b3RoZXIga2VybmVscywgb25seSA0LjE5LjY2K2ZzY2wgd2l0aCBvdXIgcGF0Y2hlcyBhbmQgc2Rt
YSANCnYzLjUgYnVpbHQtaW4uDQoNClRoYW5rcyBhbmQgYWxzbyB0aGFua3MgVXdlIGZvciBhbmFs
eXppbmcgdGhlIGFzc2VtYmx5LA0KDQpKw7xyZ2VuDQoNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
