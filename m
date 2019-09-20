Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A0FB8D2F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 10:50:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M+bNsonntZq/C+lzK8oLinkwMe8kURP08yJnA2O/kys=; b=DT8O1G9SpbaUoc
	558iCn3ZyPbDSIKYO8zTOahX549xD+tNmk2O0fRE99rtacR//Znc0WXTm5qnkd9RLqqrIp8yEY8s3
	nHyEajrDQdl70W/40gEv/DBlzE3kEAnAWJkIUgPnRhxdjMpSWO769wOXeT9y280avbkNFkklGQvg1
	xnvuvaJTmKbjFmOX9NIf28kQsNrN4YJvkWuI4Dob22+qKAGWhAi+ULXFlcrkiBRnuqJT8Rg5OI+jj
	52P3le6pQi6+NYXy3eByCqBa1BNhNY+RCp6NWXtzO6VYofNtlNG/uEcnwle+AicKz/1MGLjIH34XW
	m+iPofVBG7Uc/JyoE8Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBEcH-0004Pf-Bp; Fri, 20 Sep 2019 08:50:13 +0000
Received: from mail-eopbgr80075.outbound.protection.outlook.com ([40.107.8.75]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBEc3-0004Er-UX
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 08:50:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eHrAYpbJ7yM1A7ebyppihakOEJkUqH6B7Dz6SoINgHi/Zv0CwbxvnH7MhDk13vQEDeSbzS+p2Bh6w4acPY4XEosS7xpFkp80XoFgjRFRZKBzIx/KsaAD9D9ke1Eu/DAfyngaWyFSo0KRtGAh3Q4nMZ/qQ4hnb5tQZbfB7IbVpLoFueiL18QH/THynsVWWsEnVAc+gwZZVCsgbIYIgEOwR0RUd+c70MujjrTxyN44IKAnKspt4dcAvBQr/QQLpL4uaxf9ga5p+TtC6weE3IqI19mRUs9YCXZY2ToteGCxryAEPPDzxxCpfQNUdXdpyUrOPw8ANyXqz4+pT3qTIS1X7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TL6lnL4ivLzmv6u+ZIQrRcMDG88TCOHTE/3mxQXKiwM=;
 b=AMAocfLfk1xtmGHfF6q/FLtNUrltlTBp8CMj1+WBkQGV1J61vhjIFvZ3EeJByaIoYJZzJ9DQz0afBkI3yr4jysKWFA/qMepb6usA8znprebe82Fl8zKLHrwAJqJ54lvuUiuIB6vm8vJJfzJh/8F4gNY1/2vygNY+p4kmPyDdRHHySZ2AuHF0YZj+7cYIhVMIH2lvZuceD3Hyf1LyIgy7LKdIGFA686DVNO3bvs9C8vVCy5EuPRKWMXAV8GqQnTgmhwilwsev23SeKd8+HUM/KUH1D7Z1TZhTo1W0i6tVEvwnDQdjBKQlJjs1rbfGJSq65rflqSu5+VuWf0+zx/r2Nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TL6lnL4ivLzmv6u+ZIQrRcMDG88TCOHTE/3mxQXKiwM=;
 b=lVqbg1WOJr+jBTbsbFDDfHrEciHPFoBJ/Ot6PfgYKS70W7X+SbdrdwC1nyR2GE91D7pNC3UNaf3uXJOGadoNZPdSAI7F815TBMVbCicYcHpIkNFqYdEenRXeMRrdhf4d6YjkZ/CKM3pm1aR+hQuSrCJfvovKrj1A/ckd2XDyu+o=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3769.eurprd04.prod.outlook.com (52.134.71.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.23; Fri, 20 Sep 2019 08:49:54 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38%7]) with mapi id 15.20.2284.023; Fri, 20 Sep 2019
 08:49:54 +0000
From: Anson Huang <anson.huang@nxp.com>
To: =?utf-8?B?VXdlIEtsZWluZS1Lw7ZuaWc=?= <u.kleine-koenig@pengutronix.de>
Subject: RE: [PATCH] pwm: mxs: use devm_platform_ioremap_resource() to
 simplify code
Thread-Topic: [PATCH] pwm: mxs: use devm_platform_ioremap_resource() to
 simplify code
Thread-Index: AQHVPQnp3vOphZGlaUm/vNIIqkC+RKbPuYMAgDQEZACABe0wAIAq+wHQ
Date: Fri, 20 Sep 2019 08:49:53 +0000
Message-ID: <DB3PR0402MB39167A2F613F92FD8CA145C8F5880@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190718013205.24919-1-Anson.Huang@nxp.com>
 <AM0PR04MB42116F0753C9C6A619A2D8EC80C80@AM0PR04MB4211.eurprd04.prod.outlook.com>
 <DB3PR0402MB3916423A6E334EDD4C06B884F5AB0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190824002634.nfrhof3kpsrcc742@pengutronix.de>
In-Reply-To: <20190824002634.nfrhof3kpsrcc742@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 07061f5f-f715-474f-565b-08d73da781b0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3769; 
x-ms-traffictypediagnostic: DB3PR0402MB3769:|DB3PR0402MB3769:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB37696F556964CDA727F32685F5880@DB3PR0402MB3769.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1417;
x-forefront-prvs: 0166B75B74
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(366004)(346002)(39860400002)(376002)(199004)(189003)(966005)(478600001)(14454004)(45080400002)(476003)(6246003)(11346002)(4326008)(486006)(44832011)(33656002)(446003)(256004)(229853002)(86362001)(6436002)(6116002)(3846002)(71190400001)(71200400001)(25786009)(55016002)(6306002)(9686003)(2906002)(54906003)(66446008)(316002)(66556008)(64756008)(76176011)(5660300002)(52536014)(76116006)(6506007)(74316002)(66946007)(66476007)(7696005)(99286004)(81166006)(8676002)(81156014)(8936002)(66066001)(186003)(26005)(6916009)(305945005)(102836004)(7736002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3769;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: YF5rfLm8nm0DAaXgU4dJt02tSJJBT0o6vkKNS3eimk+9pstyTcFxm4fY9ymJP58bSSsV2z7AvH+mkh+tJ+Sd1jU4eaptLrqqzXI/3QbnwFX7oRqnlTpoTAnL5qLFfgvCZE0zRy2VBj6u5vMLFjZVtE4IKTcs5BCGJC2e21Vnz6VzF9CghgtQr+xBYZDrsL5DqiRMuAsRNmxQjjv5wEuWw2dzavmQkdXUGCEGse20gGbIajWOkLbKPx99H+gTgf0L3FRfl/J36puHU+nEaxwX5//2LRppLPQeHhLRQjsv55OXRraKp4HEygR5Qw7dU1oOVbQM3QXMfZ9NIsfmGF+EuwxNHpeiQQXapTw3hhPwP8OIa9ExsylvwWFgmLLP6pXTBa0PX5Fcve7AiXQRF/qC/0eyfP8FqaCXzz/EOJSclyg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07061f5f-f715-474f-565b-08d73da781b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2019 08:49:53.9125 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BjxKXvqIQXyws/gKRPInHRn6dHDR2bV1gENa7RYuilusZUfnuGtd+/1TvcdRqwZ/2e+/Oi+nynElNGseljR+3w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3769
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_015000_063753_7A743588 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "linux-pwm@vger.kernel.org" <linux-pwm@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UGluZy4uLiwgMSBtb250aCBwYXNzZWQsIE5PVCBzdXJlIHdoYXQgaXMgdGhlIGxhdGVzdCBzdGF0
dXMuDQoNCkFuc29uDQoNCj4gT24gVHVlLCBBdWcgMjAsIDIwMTkgYXQgMDU6NTY6NDBBTSArMDAw
MCwgQW5zb24gSHVhbmcgd3JvdGU6DQo+ID4gR2VudGxlIHBpbmcuLi4NCj4gDQo+IE15IGltcHJl
c3Npb25bMV0gaXMgdGhhdCBUaGllcnJ5IGNvbGxlY3RzIHBhdGNoZXMgaW4gYnVsayBvbmNlIG9y
IHR3aWNlIHBlcg0KPiByZWxlYXNlIGN5Y2xlLiBUaGUgbGFzdCB0d28gc3VjaCBidWxrcyB3ZXJl
IGJldHdlZW4gNS4yLXJjNiBhbmQNCj4gNS4yLXJjNyBhbmQgaW4gdGhlIDUuMiBtZXJnZSB3aW5k
b3cuIFNvIGdpdmVuIHdlJ3JlIGF0IHY1LjMtcmM1IG5vdyBJIGV4cGVjdA0KPiBzb21lIGFjdGlv
biBzb29uIDotKQ0KPiANCj4gPiA+ID4gRnJvbTogQW5zb24uSHVhbmdAbnhwLmNvbSA8QW5zb24u
SHVhbmdAbnhwLmNvbT4NCj4gPiA+ID4gU2VudDogVGh1cnNkYXksIEp1bHkgMTgsIDIwMTkgOToz
MiBBTQ0KPiA+ID4gPg0KPiA+ID4gPiBVc2UgdGhlIG5ldyBoZWxwZXIgZGV2bV9wbGF0Zm9ybV9p
b3JlbWFwX3Jlc291cmNlKCkgd2hpY2ggd3JhcHMNCj4gPiA+ID4gdGhlDQo+ID4gPiA+IHBsYXRm
b3JtX2dldF9yZXNvdXJjZSgpIGFuZCBkZXZtX2lvcmVtYXBfcmVzb3VyY2UoKSB0b2dldGhlciwg
dG8NCj4gPiA+ID4gc2ltcGxpZnkgdGhlIGNvZGUuDQo+ID4gPiA+DQo+ID4gPiA+IFNpZ25lZC1v
ZmYtYnk6IEFuc29uIEh1YW5nIDxBbnNvbi5IdWFuZ0BueHAuY29tPg0KPiA+ID4NCj4gPiA+IFJl
dmlld2VkLWJ5OiBEb25nIEFpc2hlbmcgPGFpc2hlbmcuZG9uZ0BueHAuY29tPg0KPiANCj4gQWNr
ZWQtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+
DQo+IA0KPiBCZXN0IHJlZ2FyZHMNCj4gVXdlDQo+IA0KPiBbMV0gZnJvbSBnaXQgbG9nIC0tY29t
bWl0dGVyPVRoaWVycnkgLS1mb3JtYXQ9JWNpIGRyaXZlcnMvcHdtIHwgY3V0IC1kXCAgLWYxIHwN
Cj4gdW5pcSAtYw0KPiAtLQ0KPiBQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfCBVd2UgS2xlaW5lLUvDtm5pZyAgICAgICAgICAgIHwNCj4gSW5kdXN0cmlhbCBMaW51
eCBTb2x1dGlvbnMgICAgICAgICAgICAgICAgIHwNCj4gaHR0cHM6Ly9ldXIwMS5zYWZlbGlua3Mu
cHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0dHAlM0ElMkYlMkZ3d3cucA0KPiBlbmd1dHJv
bml4LmRlJTJGJmFtcDtkYXRhPTAyJTdDMDElN0NhbnNvbi5odWFuZyU0MG54cC5jb20lN0MzNA0K
PiBlZDc4ZTViOTA2NDJlNjE3M2QwOGQ3MjgyOWJjNjUlN0M2ODZlYTFkM2JjMmI0YzZmYTkyY2Q5
OWM1YzMwMTYzDQo+IDUlN0MwJTdDMCU3QzYzNzAyMjAzMjAyNjc1NTMxMCZhbXA7c2RhdGE9Uk0w
RGpOOUIlMkZvbXhTU2xHcA0KPiBhZHhYNTB5WWVzTmpPQUZUWGFnaGt4eU9DUSUzRCZhbXA7cmVz
ZXJ2ZWQ9MCAgfA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
