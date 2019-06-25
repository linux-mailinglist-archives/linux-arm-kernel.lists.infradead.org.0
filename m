Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 453955244A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 09:21:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uI0uxIGHsF5frxkdun7kXHRateTOLfW2URndKjJCTw8=; b=Jcsele4IDg8hb+
	fjWtGDSRkab5PLEiPbHGJ8yI72giVyxkXB+ZyKAoZmI8Iom6nyWCSAaYRvb1CuKpw6T6QiXIq8gEP
	qc5VZ41iIUjJOxNMgtkqg5666INbIdN0coaep7LFIXQaiHNN484YrhzfLAm9uhX8kXXzLur35GVgc
	U3HV1mtndGqJlrfV54NbkE9yq30yxJ6WBrl/EYXzyG/IMjeIqQk0o9Pe5SK2JwI2MIHIE9m4hJccQ
	FMDAKEHmooKl4lHKqT5c+5aPQ0icXRFI7crqomU2CSuZCvcSu8oGoCBTBHg2vuk3ue6QiZEjQndro
	2sZ5JjhgN2B+DT5SdOAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hffld-0002EI-7Q; Tue, 25 Jun 2019 07:21:25 +0000
Received: from mail-eopbgr30083.outbound.protection.outlook.com ([40.107.3.83]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfflC-0002CY-Qg
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 07:21:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fxf9iEsLPct9rzG/4+XjIat2BCd09sI2VOpCFxjTwEU=;
 b=XgUfG2xgIfpRXdwQNfj3lrJ+9bRKPqFL96C1k/KGEa9VhVhZ9gA4RCNz5xJVrOa8PTlrJTqnItss9kmZ2n0bndWbikFlXHIXBlQcYxxJ+ErUlse1pn4cv1SayXvnmgvpxoX7/fj3TPd9nM/BjiTC8QOmgMO4ihlOvePLajvWvYg=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6180.eurprd04.prod.outlook.com (20.179.34.76) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Tue, 25 Jun 2019 07:20:53 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::2023:c0e5:8a63:2e47]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::2023:c0e5:8a63:2e47%5]) with mapi id 15.20.2008.014; Tue, 25 Jun 2019
 07:20:53 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Jassi Brar <jassisinghbrar@gmail.com>
Subject: RE: [PATCH V2 2/2] mailbox: introduce ARM SMC based mailbox
Thread-Topic: [PATCH V2 2/2] mailbox: introduce ARM SMC based mailbox
Thread-Index: AQHVGeZUO66GnquMY06cfK/cKOI4kaak3KcAgAc6nmA=
Date: Tue, 25 Jun 2019 07:20:53 +0000
Message-ID: <AM0PR04MB4481210CE83416353575C3D988E30@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20190603083005.4304-1-peng.fan@nxp.com>
 <20190603083005.4304-3-peng.fan@nxp.com>
 <CABb+yY1wW-arSMQSYjrezXOZ0Ar_shAr78MOyUD3hBxXohWx3g@mail.gmail.com>
In-Reply-To: <CABb+yY1wW-arSMQSYjrezXOZ0Ar_shAr78MOyUD3hBxXohWx3g@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4cc9cd08-9794-446a-a262-08d6f93da8a7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6180; 
x-ms-traffictypediagnostic: AM0PR04MB6180:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR04MB618056798B5D0530232432E588E30@AM0PR04MB6180.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0079056367
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(346002)(366004)(376002)(136003)(396003)(199004)(189003)(13464003)(52536014)(25786009)(5660300002)(71200400001)(44832011)(486006)(66066001)(476003)(446003)(81166006)(55016002)(81156014)(14454004)(6116002)(3846002)(66476007)(73956011)(71190400001)(99286004)(8676002)(256004)(14444005)(316002)(66556008)(64756008)(66446008)(11346002)(33656002)(54906003)(66946007)(305945005)(6436002)(102836004)(7736002)(7696005)(26005)(4326008)(229853002)(76176011)(6916009)(6506007)(76116006)(7416002)(86362001)(1411001)(2906002)(478600001)(15650500001)(53936002)(68736007)(966005)(6306002)(186003)(6246003)(8936002)(9686003)(45080400002)(74316002)(53546011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6180;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: VN0VsoXx7nItUoEvgkrWHmYbfWKdg0fgIaUaiPcZMUNmRAQc2JM2JlulfwE+ip+YEJY+H71idwLubKu8IZ5tcZEXgjU4pUrd2ap05sc8LidGJJPVqkB3fLRZql4vaRhwYVHC2An/rmhCuMMj/uEYxiVOERlgbY4p1a2AOKNG5ZE0OrJIghO4IHUE8Yg5JN2KL6Wx7H4xMOUhYsiLVuABM22H5Bldv951pWtxHkergM58Wo2EI36niI6HxsKUfqsNf+wuzoX2S1NMOY8Sy31XwnAQlHHjYMX+vDxMODGtLlqkUyT8lZvNqndujnrfjWWAGhWEJXRdM8dnYpP3i8zSDkH0/hZyBpgpy1RKRuqJkHNqwTWvKFB2HdvBCJ7QZRYS4BWSIoTEOhqtE00GKIOaVEUXnTMT439NC4lSJEsmN80=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4cc9cd08-9794-446a-a262-08d6f93da8a7
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2019 07:20:53.6773 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peng.fan@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_002058_866844_DB16349E 
X-CRM114-Status: GOOD (  32.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.83 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andre Przywara <andre.przywara@arm.com>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, ", Sascha Hauer" <kernel@pengutronix.de>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSmFzc2ksDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSmFzc2kg
QnJhciBbbWFpbHRvOmphc3Npc2luZ2hicmFyQGdtYWlsLmNvbV0NCj4gU2VudDogMjAxOeW5tDbm
nIgyMeaXpSAwOjUwDQo+IFRvOiBQZW5nIEZhbiA8cGVuZy5mYW5AbnhwLmNvbT4NCj4gQ2M6IFJv
YiBIZXJyaW5nIDxyb2JoK2R0QGtlcm5lbC5vcmc+OyBNYXJrIFJ1dGxhbmQNCj4gPG1hcmsucnV0
bGFuZEBhcm0uY29tPjsgU3VkZWVwIEhvbGxhIDxzdWRlZXAuaG9sbGFAYXJtLmNvbT47IEZsb3Jp
YW4NCj4gRmFpbmVsbGkgPGYuZmFpbmVsbGlAZ21haWwuY29tPjsgLCBTYXNjaGEgSGF1ZXIgPGtl
cm5lbEBwZW5ndXRyb25peC5kZT47DQo+IGRsLWxpbnV4LWlteCA8bGludXgtaW14QG54cC5jb20+
OyBTaGF3biBHdW8gPHNoYXduZ3VvQGtlcm5lbC5vcmc+Ow0KPiBmZXN0ZXZhbUBnbWFpbC5jb207
IERldmljZXRyZWUgTGlzdCA8ZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc+OyBMaW51eA0KPiBL
ZXJuZWwgTWFpbGluZyBMaXN0IDxsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnPjsNCj4gbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBBbmRyZSBQcnp5d2FyYQ0KPiA8YW5k
cmUucHJ6eXdhcmFAYXJtLmNvbT47IHZhbi5mcmVlbml4QGdtYWlsLmNvbQ0KPiBTdWJqZWN0OiBS
ZTogW1BBVENIIFYyIDIvMl0gbWFpbGJveDogaW50cm9kdWNlIEFSTSBTTUMgYmFzZWQgbWFpbGJv
eA0KPiANCj4gT24gTW9uLCBKdW4gMywgMjAxOSBhdCAzOjI4IEFNIDxwZW5nLmZhbkBueHAuY29t
PiB3cm90ZToNCj4gPg0KPiA+IEZyb206IFBlbmcgRmFuIDxwZW5nLmZhbkBueHAuY29tPg0KPiA+
DQo+ID4gVGhpcyBtYWlsYm94IGRyaXZlciBpbXBsZW1lbnRzIGEgbWFpbGJveCB3aGljaCBzaWdu
YWxzIHRyYW5zbWl0dGVkDQo+ID4gZGF0YSB2aWEgYW4gQVJNIHNtYyAoc2VjdXJlIG1vbml0b3Ig
Y2FsbCkgaW5zdHJ1Y3Rpb24uIFRoZSBtYWlsYm94DQo+ID4gcmVjZWl2ZXIgaXMgaW1wbGVtZW50
ZWQgaW4gZmlybXdhcmUgYW5kIGNhbiBzeW5jaHJvbm91c2x5IHJldHVybiBkYXRhDQo+ID4gd2hl
biBpdCByZXR1cm5zIGV4ZWN1dGlvbiB0byB0aGUgbm9uLXNlY3VyZSB3b3JsZCBhZ2Fpbi4NCj4g
PiBBbiBhc3luY2hyb25vdXMgcmVjZWl2ZSBwYXRoIGlzIG5vdCBpbXBsZW1lbnRlZC4NCj4gPiBU
aGlzIGFsbG93cyB0aGUgdXNhZ2Ugb2YgYSBtYWlsYm94IHRvIHRyaWdnZXIgZmlybXdhcmUgYWN0
aW9ucyBvbiBTb0NzDQo+ID4gd2hpY2ggZWl0aGVyIGRvbid0IGhhdmUgYSBzZXBhcmF0ZSBtYW5h
Z2VtZW50IHByb2Nlc3NvciBvciBvbiB3aGljaA0KPiA+IHN1Y2ggYSBjb3JlIGlzIG5vdCBhdmFp
bGFibGUuIEEgdXNlciBvZiB0aGlzIG1haWxib3ggY291bGQgYmUgdGhlIFNDUA0KPiA+IGludGVy
ZmFjZS4NCj4gPg0KPiA+IE1vZGlmaWVkIGZyb20gQW5kcmUgUHJ6eXdhcmEncyB2MiBwYXRjaA0K
PiA+IGh0dHBzOi8vZXVyMDEuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1o
dHRwcyUzQSUyRiUyRmxvcmUNCj4gPiAua2VybmVsLm9yZyUyRnBhdGNod29yayUyRnBhdGNoJTJG
ODEyOTk5JTJGJmFtcDtkYXRhPTAyJTdDMDElNw0KPiBDcGVuZy5mYQ0KPiA+DQo+IG4lNDBueHAu
Y29tJTdDMTIzNzY3N2NiMDEwNDRhZDcxNDUwOGQ2ZjU5ZjY0OGYlN0M2ODZlYTFkM2JjMmI0DQo+
IGM2ZmE5MmNkDQo+ID4NCj4gOTljNWMzMDE2MzUlN0MwJTdDMCU3QzYzNjk2NjQ2MjI3MjQ1Nzk3
OCZhbXA7c2RhdGE9SHpnZXU0M201DQo+IFprZVJNdEw4QngNCj4gPiBnVW0zJTJCNkZCT2JpYjFP
UEhQbFNjY0UlMkIwJTNEJmFtcDtyZXNlcnZlZD0wDQo+ID4NCj4gPiBDYzogQW5kcmUgUHJ6eXdh
cmEgPGFuZHJlLnByenl3YXJhQGFybS5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogUGVuZyBGYW4g
PHBlbmcuZmFuQG54cC5jb20+DQo+ID4gLS0tDQo+ID4NCj4gPiBWMjoNCj4gPiAgQWRkIGludGVy
cnVwdHMgbm90aWZpY2F0aW9uIHN1cHBvcnQuDQo+ID4NCj4gPiAgZHJpdmVycy9tYWlsYm94L0tj
b25maWcgICAgICAgICAgICAgICAgIHwgICA3ICsrDQo+ID4gIGRyaXZlcnMvbWFpbGJveC9NYWtl
ZmlsZSAgICAgICAgICAgICAgICB8ICAgMiArDQo+ID4gIGRyaXZlcnMvbWFpbGJveC9hcm0tc21j
LW1haWxib3guYyAgICAgICB8IDE5MA0KPiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
Kw0KPiA+ICBpbmNsdWRlL2xpbnV4L21haWxib3gvYXJtLXNtYy1tYWlsYm94LmggfCAgMTAgKysN
Cj4gPiAgNCBmaWxlcyBjaGFuZ2VkLCAyMDkgaW5zZXJ0aW9ucygrKQ0KPiA+ICBjcmVhdGUgbW9k
ZSAxMDA2NDQgZHJpdmVycy9tYWlsYm94L2FybS1zbWMtbWFpbGJveC5jICBjcmVhdGUgbW9kZQ0K
PiA+IDEwMDY0NCBpbmNsdWRlL2xpbnV4L21haWxib3gvYXJtLXNtYy1tYWlsYm94LmgNCj4gPg0K
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21haWxib3gvS2NvbmZpZyBiL2RyaXZlcnMvbWFpbGJv
eC9LY29uZmlnIGluZGV4DQo+ID4gNTk1NTQyYmZhZTg1Li5jM2JkMGYxZGRjZDggMTAwNjQ0DQo+
ID4gLS0tIGEvZHJpdmVycy9tYWlsYm94L0tjb25maWcNCj4gPiArKysgYi9kcml2ZXJzL21haWxi
b3gvS2NvbmZpZw0KPiA+IEBAIC0xNSw2ICsxNSwxMyBAQCBjb25maWcgQVJNX01IVQ0KPiA+ICAg
ICAgICAgICBUaGUgY29udHJvbGxlciBoYXMgMyBtYWlsYm94IGNoYW5uZWxzLCB0aGUgbGFzdCBv
ZiB3aGljaCBjYW4gYmUNCj4gPiAgICAgICAgICAgdXNlZCBpbiBTZWN1cmUgbW9kZSBvbmx5Lg0K
PiA+DQo+ID4gK2NvbmZpZyBBUk1fU01DX01CT1gNCj4gPiArICAgICAgIHRyaXN0YXRlICJHZW5l
cmljIEFSTSBzbWMgbWFpbGJveCINCj4gPiArICAgICAgIGRlcGVuZHMgb24gT0YgJiYgSEFWRV9B
Uk1fU01DQ0MNCj4gPiArICAgICAgIGhlbHANCj4gPiArICAgICAgICAgR2VuZXJpYyBtYWlsYm94
IGRyaXZlciB3aGljaCB1c2VzIEFSTSBzbWMgY2FsbHMgdG8gY2FsbCBpbnRvDQo+ID4gKyAgICAg
ICAgIGZpcm13YXJlIGZvciB0cmlnZ2VyaW5nIG1haWxib3hlcy4NCj4gPiArDQo+ID4gIGNvbmZp
ZyBJTVhfTUJPWA0KPiA+ICAgICAgICAgdHJpc3RhdGUgImkuTVggTWFpbGJveCINCj4gPiAgICAg
ICAgIGRlcGVuZHMgb24gQVJDSF9NWEMgfHwgQ09NUElMRV9URVNUIGRpZmYgLS1naXQNCj4gPiBh
L2RyaXZlcnMvbWFpbGJveC9NYWtlZmlsZSBiL2RyaXZlcnMvbWFpbGJveC9NYWtlZmlsZSBpbmRl
eA0KPiA+IGMyMmZhZDZmNjk2Yi4uOTM5MThhODRjOTFiIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZl
cnMvbWFpbGJveC9NYWtlZmlsZQ0KPiA+ICsrKyBiL2RyaXZlcnMvbWFpbGJveC9NYWtlZmlsZQ0K
PiA+IEBAIC03LDYgKzcsOCBAQCBvYmotJChDT05GSUdfTUFJTEJPWF9URVNUKSAgICAgICs9IG1h
aWxib3gtdGVzdC5vDQo+ID4NCj4gPiAgb2JqLSQoQ09ORklHX0FSTV9NSFUpICArPSBhcm1fbWh1
Lm8NCj4gPg0KPiA+ICtvYmotJChDT05GSUdfQVJNX1NNQ19NQk9YKSAgICAgKz0gYXJtLXNtYy1t
YWlsYm94Lm8NCj4gPiArDQo+ID4gIG9iai0kKENPTkZJR19JTVhfTUJPWCkgKz0gaW14LW1haWxi
b3gubw0KPiA+DQo+ID4gIG9iai0kKENPTkZJR19BUk1BREFfMzdYWF9SV1RNX01CT1gpICAgICs9
DQo+IGFybWFkYS0zN3h4LXJ3dG0tbWFpbGJveC5vDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
bWFpbGJveC9hcm0tc21jLW1haWxib3guYw0KPiA+IGIvZHJpdmVycy9tYWlsYm94L2FybS1zbWMt
bWFpbGJveC5jDQo+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQNCj4gPiBpbmRleCAwMDAwMDAwMDAw
MDAuLmZlZjZlMzhkOGI5OA0KPiA+IC0tLSAvZGV2L251bGwNCj4gPiArKysgYi9kcml2ZXJzL21h
aWxib3gvYXJtLXNtYy1tYWlsYm94LmMNCj4gPiBAQCAtMCwwICsxLDE5MCBAQA0KPiA+ICsvLyBT
UERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMA0KPiA+ICsvKg0KPiA+ICsgKiBDb3B5cmln
aHQgKEMpIDIwMTYsMjAxNyBBUk0gTHRkLg0KPiA+ICsgKiBDb3B5cmlnaHQgMjAxOSBOWFANCj4g
PiArICovDQo+ID4gKw0KPiA+ICsjaW5jbHVkZSA8bGludXgvYXJtLXNtY2NjLmg+DQo+ID4gKyNp
bmNsdWRlIDxsaW51eC9kZXZpY2UuaD4NCj4gPiArI2luY2x1ZGUgPGxpbnV4L2tlcm5lbC5oPg0K
PiA+ICsjaW5jbHVkZSA8bGludXgvaW50ZXJydXB0Lmg+DQo+ID4gKyNpbmNsdWRlIDxsaW51eC9t
YWlsYm94X2NvbnRyb2xsZXIuaD4gI2luY2x1ZGUNCj4gPiArPGxpbnV4L21haWxib3gvYXJtLXNt
Yy1tYWlsYm94Lmg+DQo+ID4gKyNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4NCj4gPiArI2luY2x1
ZGUgPGxpbnV4L3BsYXRmb3JtX2RldmljZS5oPg0KPiA+ICsNCj4gPiArI2RlZmluZSBBUk1fU01D
X01CT1hfVVNFX0hWQyAgIEJJVCgwKQ0KPiA+ICsjZGVmaW5lIEFSTV9TTUNfTUJPWF9VU0JfSVJR
ICAgQklUKDEpDQo+ID4gKw0KPiBJUlEgYml0IGlzIHVudXNlZCAoYW5kIHVubmVjZXNzYXJ5IElN
TykNCg0KVGhpcyB3aWxsIGJlIHJlbW92ZWQgaW4gbmV4dCB2ZXJzaW9uLg0KDQo+IA0KPiA+ICtz
dHJ1Y3QgYXJtX3NtY19jaGFuX2RhdGEgew0KPiA+ICsgICAgICAgdTMyIGZ1bmN0aW9uX2lkOw0K
PiA+ICsgICAgICAgdTMyIGZsYWdzOw0KPiA+ICsgICAgICAgaW50IGlycTsNCj4gPiArfTsNCj4g
PiArDQo+ID4gK3N0YXRpYyBpbnQgYXJtX3NtY19zZW5kX2RhdGEoc3RydWN0IG1ib3hfY2hhbiAq
bGluaywgdm9pZCAqZGF0YSkgew0KPiA+ICsgICAgICAgc3RydWN0IGFybV9zbWNfY2hhbl9kYXRh
ICpjaGFuX2RhdGEgPSBsaW5rLT5jb25fcHJpdjsNCj4gPiArICAgICAgIHN0cnVjdCBhcm1fc21j
Y2NfbWJveF9jbWQgKmNtZCA9IGRhdGE7DQo+ID4gKyAgICAgICBzdHJ1Y3QgYXJtX3NtY2NjX3Jl
cyByZXM7DQo+ID4gKyAgICAgICB1MzIgZnVuY3Rpb25faWQ7DQo+ID4gKw0KPiA+ICsgICAgICAg
aWYgKGNoYW5fZGF0YS0+ZnVuY3Rpb25faWQgIT0gVUlOVF9NQVgpDQo+ID4gKyAgICAgICAgICAg
ICAgIGZ1bmN0aW9uX2lkID0gY2hhbl9kYXRhLT5mdW5jdGlvbl9pZDsNCj4gPiArICAgICAgIGVs
c2UNCj4gPiArICAgICAgICAgICAgICAgZnVuY3Rpb25faWQgPSBjbWQtPmEwOw0KPiA+ICsNCj4g
Tm90IHN1cmUgYWJvdXQgY2hhbl9kYXRhLT5mdW5jdGlvbl9pZC4gIFdoeSByZXN0cmljdCBmcm9t
IERUPw0KPiAnYTAnIGlzIHRoZSBmdW5jdGlvbl9pZCByZWdpc3RlciwgbGV0IHRoZSB1c2VyIHBh
c3MgZnVuYy1pZCB2aWEgdGhlICdhMCcgbGlrZSBvdGhlcg0KPiB2YWx1ZXMgdmlhICdhWzEtN10n
DQo+IA0KPiANCj4gPiArICAgICAgIGlmIChjaGFuX2RhdGEtPmZsYWdzICYgQVJNX1NNQ19NQk9Y
X1VTRV9IVkMpDQo+ID4gKyAgICAgICAgICAgICAgIGFybV9zbWNjY19odmMoZnVuY3Rpb25faWQs
IGNtZC0+YTEsIGNtZC0+YTIsDQo+IGNtZC0+YTMsIGNtZC0+YTQsDQo+ID4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgY21kLT5hNSwgY21kLT5hNiwgY21kLT5hNywgJnJlcyk7DQo+ID4g
KyAgICAgICBlbHNlDQo+ID4gKyAgICAgICAgICAgICAgIGFybV9zbWNjY19zbWMoZnVuY3Rpb25f
aWQsIGNtZC0+YTEsIGNtZC0+YTIsDQo+IGNtZC0+YTMsIGNtZC0+YTQsDQo+ID4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgY21kLT5hNSwgY21kLT5hNiwgY21kLT5hNywgJnJlcyk7DQo+
ID4gKw0KPiA+ICsgICAgICAgaWYgKGNoYW5fZGF0YS0+aXJxKQ0KPiA+ICsgICAgICAgICAgICAg
ICByZXR1cm4gMDsNCj4gPiArDQo+IFRoaXMgaXJxIHRoaW5nIHNlZW1zIGxpa2Ugb29iIHNpZ25h
bGxpbmcsIHRoYXQgaXMsIGEgcHJvdG9jb2wgdGhpbmcuDQo+IEFuZCB0aGVuIGl0IHByb3ZpZGVz
IGxlc3NlciBpbmZvIHZpYSBjaGFuX2lycV9oYW5kbGVyIChyZXR1cm5zIE5VTEwpIHRoYW4NCj4g
cmVzLmEwIC0gd2hpY2ggY2FuIGFsd2F5cyBiZSBpZ25vcmVkIGlmIG5vdCBuZWVkZWQuDQo+IFNv
IHRoZSBpcnEgc2hvdWxkIGJlIGltcGxlbWVudGVkIGluIHRoZSB1cHBlciBsYXllciBpZiB0aGUg
cHJvdG9jb2wgbmVlZHMgaXQuDQoNClRoZSBpbnRlcnJ1cHRzIHdhcyBhZGRlZCBoZXJlIGJlY2F1
c2UgaW4gdjEsIEZsb3JpYW4gc3VnZ2VzdA0KIg0KSSB3b3VsZCBqdXN0IHB1dCBhDQpwcm92aXNp
b24gaW4gdGhlIGJpbmRpbmcgdG8gc3VwcG9ydCBhbiBvcHRpb25hbCBpbnRlcnJ1cHQgc3VjaCB0
aGF0DQphc3luY2hyb25pc20gZ2V0cyByZWFzb25hYmx5IGVhc3kgdG8gcGx1ZyBpbiB3aGVuIGl0
IGlzIGF2YWlsYWJsZSAoYW5kDQpkZXNpcmFibGUpLg0KIg0KDQpTbyBJIGludHJvZHVjZWQgaW50
ZXJydXB0IGluIFYyLiBJbiBteSB0ZXN0Y2FzZSwgYWZ0ZXIgc21jIGNhbGwgZG9uZSwNCml0IG1l
YW5zIGZpcm13YXJlLT5zbWMgbWFpbGJveC0+ZmlybXdhcmUgZG9uZS4gSW50ZXJydXB0IG5vdGlm
aWNhdGlvbg0KZnJvbSBmaXJtd2FyZS0+TGludXgsIG1lYW5zIGZpcm13YXJlIGhhcyBkb25lIHRo
ZSBvcGVyYXRpb24uDQoNCldoZW4gdXNpbmcgaW50ZXJydXB0cywgd2UgY291bGQgbm90IGtub3cg
cmVzLmEwIGFzIHNtYyBzeW5jIGNhbGwuDQoNCkludGVycnVwdHMgaXMgbm90IGEgbXVzdCBpbiBt
eSB0ZXN0Y2FzZSwgRmxvcmlhbiwgQW5kcmUsIGRvIHlvdSBoYXZlDQphbnkgY29tbWVudHM/IFNo
b3VsZCBJIGtlZXAgaW50ZXJydXB0cyBpbiBWMyBvciBkcm9wIGl0IGFzIEphc3NpIGNvbW1lbnRz
Pw0KDQpUaGFua3MsDQpQZW5nLg0KDQo+IA0KPiA+ICsgICAgICAgbWJveF9jaGFuX3JlY2VpdmVk
X2RhdGEobGluaywgKHZvaWQgKilyZXMuYTApOw0KPiA+ICsNCj4gVGhpcyBpcyBmaW5lLg0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
