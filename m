Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1C916434A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 12:23:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C65q5XBCM2ReRI65IiJ3S3d+biY5ngFwNKFf0q5ouX0=; b=blJj/3zTsXBN/Y
	EN81nESY81c5bOE4U8crldj7tUzGwfsnRPicLyyCq0woqqXNoGq5XovsIkpVKkDos/Kw8yTIcz6Ks
	vgMg/VcEDHu5IIyy3N5oqPWX4IvQT8sz3+5V48ZuVlGQGeQadx35EIiNzkjvkbSxWyHhCMe90AZfZ
	zBgxbPIJi4h+C7yDth1MdqOkmwHNe0EulBkV/WJylQskB3rTqPhEOOn73SouEq9ZjzA8e7UMvvvb5
	j1JMPLs8fw3fegJKR++f1QVnUaGMrm8wMlMXhPhFKDAaP7TBzn0RZ7DpGlrbtAIDSiehBzT55pjnZ
	n18u9GnN9mvz+896csIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4NSB-0000Fj-6R; Wed, 19 Feb 2020 11:23:43 +0000
Received: from mail-mw2nam12on2048.outbound.protection.outlook.com
 ([40.107.244.48] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4NRy-0000Eb-Rr
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 11:23:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P9l73c9paAkjhu4a/MRi9vEPCYl0kRWEBpWLYp+wUxjhcE/Mx9jI47ODYRxCmtPw+DWuckcR5Sf9izCr/zjZPQZI2eDUIJQG8ML8Zfl6/hzqARpN4+d75NrJQT04STcMOBzNVnzxbMdrTqfeR0RSEhndfSC6X+FZIkblcT+yVhh1Jlg26sU1Yb9U9dOH+3ewsMcgBxSTEqcuDrBdubQ5kz12qMzHhqXruyUN4o9YptulKUSnQ48uhFLRoxUsM01wN/qxkEQm+l7zGzjFovRWhiXultV1Ss6mLvEpU3XghnibpgHLoFhOnaL2CgF8inMgxEVcYQV/ggsnvLgcgXYAkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FE7E7+M1XEvOTiLHLL2Xv29C492pApOWVbkAt8KeObk=;
 b=hKYZxKQ6FLuu1rX2XzgnAIU1GzJGPEm+yKPq2i6p4XlarGaTMAbrak5bhp0gdRm33E+CtdgJLD/JXkWSn5KDvBVWDVzjtjorFtLPl6a4Ps53MTo+6tsWm9qtcHm8/d+Zq1LYKa6AsYeWtJzFfcgox4a5mlAbXy0tbKwLao4IUmLUVm8ec3NwplVSl9T9LWFgqc1lvfYymW9C5jdKrtvb3EKSgPTvgRCoxF3HU2MtuTscmGD0wDVkstINLMNa3aisCROb3I/Ro0oOCUXj3qnJPxEXiR2b+7Flec+hlxzjhb4qJf7CTrNJI3f59HHBgYGhlFnl51ZzPhsnJAVk2DqJzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FE7E7+M1XEvOTiLHLL2Xv29C492pApOWVbkAt8KeObk=;
 b=cPgVfl0NqYzcYXcRnVhea9nAsV9Na9Amwm2OwTkr0EXO75OfltbtdMM0O4rDQw4toJn+c8AjAVzrEKn0GdkbqjCvRJ/l7VTXz7lztjuOFUtYlSPWag4R0ydJqkiXD8i2GT7urmwo4IwsVKV7m1YR9cqToDnNMBvx5fennNWMjFM=
Received: from CH2PR02MB6901.namprd02.prod.outlook.com (20.180.12.24) by
 CH2PR02MB6328.namprd02.prod.outlook.com (52.132.228.89) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Wed, 19 Feb 2020 11:23:27 +0000
Received: from CH2PR02MB6901.namprd02.prod.outlook.com
 ([fe80::95d9:9035:6ddb:ad7]) by CH2PR02MB6901.namprd02.prod.outlook.com
 ([fe80::95d9:9035:6ddb:ad7%6]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 11:23:27 +0000
From: Srinivas Neeli <sneeli@xilinx.com>
To: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: RE: [PATCH 1/2] gpio: xilinx: Add clock adaptation support
Thread-Topic: [PATCH 1/2] gpio: xilinx: Add clock adaptation support
Thread-Index: AQHV5YEu9K+ZmL8L5kSaxUcVp9zKO6ghHquAgAFBNxA=
Date: Wed, 19 Feb 2020 11:23:27 +0000
Message-ID: <CH2PR02MB690148992E8DF052649E3BDEAF100@CH2PR02MB6901.namprd02.prod.outlook.com>
References: <1581937039-12964-1-git-send-email-srinivas.neeli@xilinx.com>
 <CAMpxmJUkyaU_W2nuBVkun=Trxzvfo4+L5FV4kvBK_KqRbY-eng@mail.gmail.com>
In-Reply-To: <CAMpxmJUkyaU_W2nuBVkun=Trxzvfo4+L5FV4kvBK_KqRbY-eng@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sneeli@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e26a524f-5a0d-4620-0668-08d7b52e2404
x-ms-traffictypediagnostic: CH2PR02MB6328:|CH2PR02MB6328:
x-ld-processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR02MB632833B3A478D4703846ADBBAF100@CH2PR02MB6328.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0318501FAE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(366004)(346002)(136003)(39860400002)(189003)(199004)(478600001)(81166006)(81156014)(8676002)(8936002)(64756008)(2906002)(76116006)(66476007)(66556008)(71200400001)(66446008)(66946007)(86362001)(316002)(9686003)(4326008)(5660300002)(107886003)(55016002)(6916009)(33656002)(6506007)(53546011)(186003)(26005)(52536014)(7696005)(54906003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6328;
 H:CH2PR02MB6901.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Gx73uZOjpLSQkj4WXAlV8xlxWVmAPMF8oWCaM/xu9XQFBF+RShzHiO5EebPhKApxe3jVEB/u5ZFa6HR9w3TD8Xt8e4q8aoQGMSH/a3SeHRTOphg6dn2nigJB/9tT+btDAseDRnJ957rX6l+iG4vhX+X51Yee/AK9IgSbUYf2n6bo5wTLZceZV5Cb4zPE11fj8Hyh4T9B0cJMOUTSP4nzPeHhJ6dtr+Qkvo0Lm66D9MRUzOOLNp3UuC5F6TmxRzoqCUfpLAFGO3n+T4pvguO8uyPkfbVREd/9ofpZ4aolahC01JWXnrtwkbJM89knzG7hW9/JsmJljGf+OZlOaMNfWu7sZXJnO/TeM+j82Xr8wvjWLocNyibmwQjOVidh2WjhlUe5FNeeNnF5kJn1rJ0xfbK3NNOaH2YiIFokLXqK/eKv5iJqYYyf6iWwQ3aSxjyc
x-ms-exchange-antispam-messagedata: 4vMUnhJ4tm5gswqhLZFGQ01eo4MfE24jbIG31yr8b1GRV/x7BxEoDnguOBRb5W68/gCqm6Lox1LkSkpd3nQbIs8lcpnNHzHGd/kbT/nOdE6UpaCw8WW0U/jYi/vLXQxZipHHoQnRvy6QpMtPpiumMQ==
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e26a524f-5a0d-4620-0668-08d7b52e2404
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2020 11:23:27.1729 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EPY4TYaL/1pD7JYhC35zR/BdvzWrgO0aePHEKwfE5BVa8u6Z4MLWMLbgkVcvzzzofY62nP7MDMSuAB5zu1nI6Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6328
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_032330_926321_FEDE67A5 
X-CRM114-Status: GOOD (  24.97  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.244.48 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Srinivas Goud <sgoud@xilinx.com>, Linus Walleij <linus.walleij@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-gpio <linux-gpio@vger.kernel.org>,
 Michal Simek <michals@xilinx.com>, git <git@xilinx.com>,
 Shubhrajyoti Datta <shubhraj@xilinx.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksDQpJIGFncmVlICx3aWxsIGFkZHJlc3MgY29tbWVudHMgaW4gVjIuDQoNCj4gLS0tLS1Pcmln
aW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQmFydG9zeiBHb2xhc3pld3NraSA8YmdvbGFzemV3
c2tpQGJheWxpYnJlLmNvbT4NCj4gU2VudDogVHVlc2RheSwgRmVicnVhcnkgMTgsIDIwMjAgOToz
MyBQTQ0KPiBUbzogU3Jpbml2YXMgTmVlbGkgPHNuZWVsaUB4aWxpbnguY29tPg0KPiBDYzogTWlj
aGFsIFNpbWVrIDxtaWNoYWxzQHhpbGlueC5jb20+OyBTaHViaHJhanlvdGkgRGF0dGENCj4gPHNo
dWJocmFqQHhpbGlueC5jb20+OyBTcmluaXZhcyBHb3VkIDxzZ291ZEB4aWxpbnguY29tPjsgTGlu
dXMgV2FsbGVpag0KPiA8bGludXMud2FsbGVpakBsaW5hcm8ub3JnPjsgTEtNTCA8bGludXgta2Vy
bmVsQHZnZXIua2VybmVsLm9yZz47IGFybS1zb2MNCj4gPGxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZz47IGxpbnV4LWdwaW8gPGxpbnV4LQ0KPiBncGlvQHZnZXIua2VybmVsLm9y
Zz47IGdpdCA8Z2l0QHhpbGlueC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggMS8yXSBncGlv
OiB4aWxpbng6IEFkZCBjbG9jayBhZGFwdGF0aW9uIHN1cHBvcnQNCj4gDQo+IHBvbi4sIDE3IGx1
dCAyMDIwIG8gMTE6NTcgU3Jpbml2YXMgTmVlbGkgPHNyaW5pdmFzLm5lZWxpQHhpbGlueC5jb20+
IG5hcGlzYcWCKGEpOg0KPiA+DQo+ID4gQWRkIHN1cHBvcnQgb2YgY2xvY2sgYWRhcHRhdGlvbiBm
b3IgQVhJIEdQSU8gZHJpdmVyLg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogU3Jpbml2YXMgTmVl
bGkgPHNyaW5pdmFzLm5lZWxpQHhpbGlueC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3Bp
by9ncGlvLXhpbGlueC5jIHwgMTA1DQo+ID4gKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKystDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxMDMgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwaW8vZ3Bpby14
aWxpbnguYyBiL2RyaXZlcnMvZ3Bpby9ncGlvLXhpbGlueC5jDQo+ID4gaW5kZXggYTk3NDhiNTE5
OGU2Li4yNjc1M2FlNTgyOTUgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncGlvL2dwaW8teGls
aW54LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwaW8vZ3Bpby14aWxpbnguYw0KPiA+IEBAIC0xNCw2
ICsxNCw4IEBADQo+ID4gICNpbmNsdWRlIDxsaW51eC9pby5oPg0KPiA+ICAjaW5jbHVkZSA8bGlu
dXgvZ3Bpby9kcml2ZXIuaD4NCj4gPiAgI2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4NCj4gPiArI2lu
Y2x1ZGUgPGxpbnV4L3BtX3J1bnRpbWUuaD4NCj4gPiArI2luY2x1ZGUgPGxpbnV4L2Nsay5oPg0K
PiA+DQo+ID4gIC8qIFJlZ2lzdGVyIE9mZnNldCBEZWZpbml0aW9ucyAqLw0KPiA+ICAjZGVmaW5l
IFhHUElPX0RBVEFfT0ZGU0VUICAgKDB4MCkgICAgICAvKiBEYXRhIHJlZ2lzdGVyICAqLw0KPiA+
IEBAIC0zOCw2ICs0MCw3IEBADQo+ID4gICAqIEBncGlvX3N0YXRlOiBHUElPIHN0YXRlIHNoYWRv
dyByZWdpc3Rlcg0KPiA+ICAgKiBAZ3Bpb19kaXI6IEdQSU8gZGlyZWN0aW9uIHNoYWRvdyByZWdp
c3Rlcg0KPiA+ICAgKiBAZ3Bpb19sb2NrOiBMb2NrIHVzZWQgZm9yIHN5bmNocm9uaXphdGlvbg0K
PiA+ICsgKiBAY2xrOiBjbG9jayByZXNvdXJjZSBmb3IgdGhpcyBkcml2ZXINCj4gPiAgICovDQo+
ID4gIHN0cnVjdCB4Z3Bpb19pbnN0YW5jZSB7DQo+ID4gICAgICAgICBzdHJ1Y3QgZ3Bpb19jaGlw
IGdjOw0KPiA+IEBAIC00NSw3ICs0OCw4IEBAIHN0cnVjdCB4Z3Bpb19pbnN0YW5jZSB7DQo+ID4g
ICAgICAgICB1bnNpZ25lZCBpbnQgZ3Bpb193aWR0aFsyXTsNCj4gPiAgICAgICAgIHUzMiBncGlv
X3N0YXRlWzJdOw0KPiA+ICAgICAgICAgdTMyIGdwaW9fZGlyWzJdOw0KPiA+IC0gICAgICAgc3Bp
bmxvY2tfdCBncGlvX2xvY2tbMl07DQo+ID4gKyAgICAgICBzcGlubG9ja190IGdwaW9fbG9ja1sy
XTsgICAgICAgIC8qIEZvciBzZXJpYWxpemluZyBvcGVyYXRpb25zICovDQo+ID4gKyAgICAgICBz
dHJ1Y3QgY2xrICpjbGs7DQo+ID4gIH07DQo+ID4NCj4gPiAgc3RhdGljIGlubGluZSBpbnQgeGdw
aW9faW5kZXgoc3RydWN0IHhncGlvX2luc3RhbmNlICpjaGlwLCBpbnQgZ3BpbykNCj4gPiBAQCAt
MjU1LDYgKzI1OSw3MCBAQCBzdGF0aWMgdm9pZCB4Z3Bpb19zYXZlX3JlZ3Moc3RydWN0IHhncGlv
X2luc3RhbmNlDQo+ICpjaGlwKQ0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgY2hpcC0+Z3Bp
b19kaXJbMV0pOyAgfQ0KPiA+DQo+ID4gK3N0YXRpYyBpbnQgeGdwaW9fcmVxdWVzdChzdHJ1Y3Qg
Z3Bpb19jaGlwICpjaGlwLCB1bnNpZ25lZCBpbnQgb2Zmc2V0KQ0KPiA+ICt7DQo+ID4gKyAgICAg
ICBpbnQgcmV0ID0gcG1fcnVudGltZV9nZXRfc3luYyhjaGlwLT5wYXJlbnQpOw0KPiA+ICsNCj4g
PiArICAgICAgIC8qDQo+ID4gKyAgICAgICAgKiBJZiB0aGUgZGV2aWNlIGlzIGFscmVhZHkgYWN0
aXZlIHBtX3J1bnRpbWVfZ2V0KCkgd2lsbCByZXR1cm4gMSBvbg0KPiA+ICsgICAgICAgICogc3Vj
Y2VzcywgYnV0IGdwaW9fcmVxdWVzdCBzdGlsbCBuZWVkcyB0byByZXR1cm4gMC4NCj4gPiArICAg
ICAgICAqLw0KPiA+ICsgICAgICAgcmV0dXJuIHJldCA8IDAgPyByZXQgOiAwOw0KPiA+ICt9DQo+
ID4gKw0KPiA+ICtzdGF0aWMgdm9pZCB4Z3Bpb19mcmVlKHN0cnVjdCBncGlvX2NoaXAgKmNoaXAs
IHVuc2lnbmVkIGludCBvZmZzZXQpIHsNCj4gPiArICAgICAgIHBtX3J1bnRpbWVfcHV0KGNoaXAt
PnBhcmVudCk7DQo+ID4gK30NCj4gPiArDQo+ID4gK3N0YXRpYyBpbnQgX19tYXliZV91bnVzZWQg
eGdwaW9fc3VzcGVuZChzdHJ1Y3QgZGV2aWNlICpkZXYpIHsNCj4gPiArICAgICAgIHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYgPSB0b19wbGF0Zm9ybV9kZXZpY2UoZGV2KTsNCj4gPiArICAg
ICAgIGludCBpcnEgPSBwbGF0Zm9ybV9nZXRfaXJxKHBkZXYsIDApOw0KPiA+ICsgICAgICAgc3Ry
dWN0IGlycV9kYXRhICpkYXRhID0gaXJxX2dldF9pcnFfZGF0YShpcnEpOw0KPiA+ICsNCj4gPiAr
ICAgICAgIGlmICghaXJxZF9pc193YWtldXBfc2V0KGRhdGEpKQ0KPiA+ICsgICAgICAgICAgICAg
ICByZXR1cm4gcG1fcnVudGltZV9mb3JjZV9zdXNwZW5kKGRldik7DQo+ID4gKw0KPiA+ICsgICAg
ICAgcmV0dXJuIDA7DQo+ID4gK30NCj4gPiArDQo+ID4gK3N0YXRpYyBpbnQgX19tYXliZV91bnVz
ZWQgeGdwaW9fcmVzdW1lKHN0cnVjdCBkZXZpY2UgKmRldikgew0KPiA+ICsgICAgICAgc3RydWN0
IHBsYXRmb3JtX2RldmljZSAqcGRldiA9IHRvX3BsYXRmb3JtX2RldmljZShkZXYpOw0KPiA+ICsg
ICAgICAgaW50IGlycSA9IHBsYXRmb3JtX2dldF9pcnEocGRldiwgMCk7DQo+ID4gKyAgICAgICBz
dHJ1Y3QgaXJxX2RhdGEgKmRhdGEgPSBpcnFfZ2V0X2lycV9kYXRhKGlycSk7DQo+ID4gKw0KPiA+
ICsgICAgICAgaWYgKCFpcnFkX2lzX3dha2V1cF9zZXQoZGF0YSkpDQo+ID4gKyAgICAgICAgICAg
ICAgIHJldHVybiBwbV9ydW50aW1lX2ZvcmNlX3Jlc3VtZShkZXYpOw0KPiA+ICsNCj4gPiArICAg
ICAgIHJldHVybiAwOw0KPiA+ICt9DQo+ID4gKw0KPiA+ICtzdGF0aWMgaW50IF9fbWF5YmVfdW51
c2VkIHhncGlvX3J1bnRpbWVfc3VzcGVuZChzdHJ1Y3QgZGV2aWNlICpkZXYpIHsNCj4gPiArICAg
ICAgIHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYgPSB0b19wbGF0Zm9ybV9kZXZpY2UoZGV2
KTsNCj4gPiArICAgICAgIHN0cnVjdCB4Z3Bpb19pbnN0YW5jZSAqZ3BpbyA9IHBsYXRmb3JtX2dl
dF9kcnZkYXRhKHBkZXYpOw0KPiA+ICsNCj4gPiArICAgICAgIGNsa19kaXNhYmxlKGdwaW8tPmNs
ayk7DQo+ID4gKw0KPiA+ICsgICAgICAgcmV0dXJuIDA7DQo+ID4gK30NCj4gPiArDQo+ID4gK3N0
YXRpYyBpbnQgX19tYXliZV91bnVzZWQgeGdwaW9fcnVudGltZV9yZXN1bWUoc3RydWN0IGRldmlj
ZSAqZGV2KSB7DQo+ID4gKyAgICAgICBzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2ID0gdG9f
cGxhdGZvcm1fZGV2aWNlKGRldik7DQo+ID4gKyAgICAgICBzdHJ1Y3QgeGdwaW9faW5zdGFuY2Ug
KmdwaW8gPSBwbGF0Zm9ybV9nZXRfZHJ2ZGF0YShwZGV2KTsNCj4gPiArDQo+ID4gKyAgICAgICBy
ZXR1cm4gY2xrX2VuYWJsZShncGlvLT5jbGspOw0KPiA+ICt9DQo+ID4gKw0KPiA+ICtzdGF0aWMg
Y29uc3Qgc3RydWN0IGRldl9wbV9vcHMgeGdwaW9fZGV2X3BtX29wcyA9IHsNCj4gPiArICAgICAg
IFNFVF9TWVNURU1fU0xFRVBfUE1fT1BTKHhncGlvX3N1c3BlbmQsIHhncGlvX3Jlc3VtZSkNCj4g
PiArICAgICAgIFNFVF9SVU5USU1FX1BNX09QUyh4Z3Bpb19ydW50aW1lX3N1c3BlbmQsDQo+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgeGdwaW9fcnVudGltZV9yZXN1bWUsIE5VTEwpIH07
DQo+ID4gKw0KPiA+ICAvKioNCj4gPiAgICogeGdwaW9fb2ZfcHJvYmUgLSBQcm9iZSBtZXRob2Qg
Zm9yIHRoZSBHUElPIGRldmljZS4NCj4gPiAgICogQHBkZXY6IHBvaW50ZXIgdG8gdGhlIHBsYXRm
b3JtIGRldmljZSBAQCAtMzIzLDYgKzM5MSw4IEBAIHN0YXRpYw0KPiA+IGludCB4Z3Bpb19wcm9i
ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQ0KPiA+ICAgICAgICAgY2hpcC0+Z2MuZGly
ZWN0aW9uX291dHB1dCA9IHhncGlvX2Rpcl9vdXQ7DQo+ID4gICAgICAgICBjaGlwLT5nYy5nZXQg
PSB4Z3Bpb19nZXQ7DQo+ID4gICAgICAgICBjaGlwLT5nYy5zZXQgPSB4Z3Bpb19zZXQ7DQo+ID4g
KyAgICAgICBjaGlwLT5nYy5yZXF1ZXN0ID0geGdwaW9fcmVxdWVzdDsNCj4gPiArICAgICAgIGNo
aXAtPmdjLmZyZWUgPSB4Z3Bpb19mcmVlOw0KPiA+ICAgICAgICAgY2hpcC0+Z2Muc2V0X211bHRp
cGxlID0geGdwaW9fc2V0X211bHRpcGxlOw0KPiA+DQo+ID4gICAgICAgICBjaGlwLT5nYy5sYWJl
bCA9IGRldl9uYW1lKCZwZGV2LT5kZXYpOyBAQCAtMzMzLDE1ICs0MDMsNDUgQEANCj4gPiBzdGF0
aWMgaW50IHhncGlvX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpDQo+ID4gICAg
ICAgICAgICAgICAgIHJldHVybiBQVFJfRVJSKGNoaXAtPnJlZ3MpOw0KPiA+ICAgICAgICAgfQ0K
PiA+DQo+ID4gKyAgICAgICBjaGlwLT5jbGsgPSBkZXZtX2Nsa19nZXQoJnBkZXYtPmRldiwgInNf
YXhpX2FjbGsiKTsNCj4gPiArICAgICAgIGlmIChJU19FUlIoY2hpcC0+Y2xrKSkgew0KPiA+ICsg
ICAgICAgICAgICAgICBpZiAoUFRSX0VSUihjaGlwLT5jbGspICE9IC1FTk9FTlQpIHsNCj4gPiAr
ICAgICAgICAgICAgICAgICAgICAgICBpZiAoUFRSX0VSUihjaGlwLT5jbGspICE9IC1FUFJPQkVf
REVGRVIpDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBkZXZfZXJyKCZwZGV2
LT5kZXYsICJJbnB1dCBjbG9jayBub3QgZm91bmRcbiIpOw0KPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAgIHJldHVybiBQVFJfRVJSKGNoaXAtPmNsayk7DQo+ID4gKyAgICAgICAgICAgICAgIH0N
Cj4gPiArICAgICAgICAgICAgICAgLyoNCj4gPiArICAgICAgICAgICAgICAgICogQ2xvY2sgZnJh
bWV3b3JrIHN1cHBvcnQgaXMgb3B0aW9uYWwsIGNvbnRpbnVlIG9uDQo+ID4gKyAgICAgICAgICAg
ICAgICAqIGFueXdheXMgaWYgd2UgZG9uJ3QgZmluZCBhIG1hdGNoaW5nIGNsb2NrLg0KPiA+ICsg
ICAgICAgICAgICAgICAgKi8NCj4gDQo+IFdoeSBub3QgdXNlIGRldm1fY2xrX2dldF9vcHRpb25h
bCgpIHRoZW4/DQo+IA0KPiA+ICsgICAgICAgICAgICAgICBjaGlwLT5jbGsgPSBOVUxMOw0KPiA+
ICsgICAgICAgfQ0KPiA+ICsgICAgICAgc3RhdHVzID0gY2xrX3ByZXBhcmVfZW5hYmxlKGNoaXAt
PmNsayk7DQo+ID4gKyAgICAgICBpZiAoc3RhdHVzIDwgMCkgew0KPiA+ICsgICAgICAgICAgICAg
ICBkZXZfZXJyKCZwZGV2LT5kZXYsICJGYWlsZWQgdG8gcHJlcGFyZSBjbGtcbiIpOw0KPiA+ICsg
ICAgICAgICAgICAgICByZXR1cm4gc3RhdHVzOw0KPiA+ICsgICAgICAgfQ0KPiA+ICsgICAgICAg
cG1fcnVudGltZV9lbmFibGUoJnBkZXYtPmRldik7DQo+ID4gKyAgICAgICBzdGF0dXMgPSBwbV9y
dW50aW1lX2dldF9zeW5jKCZwZGV2LT5kZXYpOw0KPiA+ICsgICAgICAgaWYgKHN0YXR1cyA8IDAp
DQo+ID4gKyAgICAgICAgICAgICAgIGdvdG8gZXJyX3VucHJlcGFyZV9jbGs7DQo+ID4gKw0KPiA+
ICAgICAgICAgeGdwaW9fc2F2ZV9yZWdzKGNoaXApOw0KPiA+DQo+ID4gICAgICAgICBzdGF0dXMg
PSBkZXZtX2dwaW9jaGlwX2FkZF9kYXRhKCZwZGV2LT5kZXYsICZjaGlwLT5nYywgY2hpcCk7DQo+
ID4gICAgICAgICBpZiAoc3RhdHVzKSB7DQo+ID4gICAgICAgICAgICAgICAgIGRldl9lcnIoJnBk
ZXYtPmRldiwgImZhaWxlZCB0byBhZGQgR1BJTyBjaGlwXG4iKTsNCj4gPiAtICAgICAgICAgICAg
ICAgcmV0dXJuIHN0YXR1czsNCj4gPiArICAgICAgICAgICAgICAgZ290byBlcnJfcG1fcHV0Ow0K
PiA+ICAgICAgICAgfQ0KPiA+DQo+ID4gKyAgICAgICBwbV9ydW50aW1lX3B1dCgmcGRldi0+ZGV2
KTsNCj4gPiAgICAgICAgIHJldHVybiAwOw0KPiA+ICtlcnJfcG1fcHV0Og0KPiA+ICsgICAgICAg
cG1fcnVudGltZV9wdXQoJnBkZXYtPmRldik7DQo+ID4gK2Vycl91bnByZXBhcmVfY2xrOg0KPiA+
ICsgICAgICAgcG1fcnVudGltZV9kaXNhYmxlKCZwZGV2LT5kZXYpOw0KPiA+ICsgICAgICAgY2xr
X3VucHJlcGFyZShjaGlwLT5jbGspOw0KPiA+ICsgICAgICAgcmV0dXJuIHN0YXR1czsNCj4gPiAg
fQ0KPiA+DQo+ID4gIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHhncGlvX29mX21h
dGNoW10gPSB7IEBAIC0zNTYsNg0KPiA+ICs0NTYsNyBAQCBzdGF0aWMgc3RydWN0IHBsYXRmb3Jt
X2RyaXZlciB4Z3Bpb19wbGF0X2RyaXZlciA9IHsNCj4gPiAgICAgICAgIC5kcml2ZXIgICAgICAg
ICA9IHsNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAubmFtZSA9ICJncGlvLXhpbGlueCIs
DQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgLm9mX21hdGNoX3RhYmxlID0geGdwaW9fb2Zf
bWF0Y2gsDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgLnBtID0gJnhncGlvX2Rldl9wbV9v
cHMsDQo+ID4gICAgICAgICB9LA0KPiA+ICB9Ow0KPiA+DQo+ID4gLS0NCj4gPiAyLjcuNA0KPiA+
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
