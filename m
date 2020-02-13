Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5641815BB89
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 10:21:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ew82S7MBLPkXJqQd2ZGfOKms+L3N6KofOgjdaQQTpP0=; b=a/Ot6DgrUex8Xm
	1rL758Pw3K32FkOkpxuzpS4d/KIsIDNoBlvEXJBUXt9rjYJqpTPdTTut8gTtaY7i+nlR3SB8OrUTF
	d4JCWy6qaPuUHCWuPLSdtRWtxYJM8xFpnY8gTwR4noeuqtU8bsz1lA+nJ38Rw2VnkjSYLnS0QdH7b
	bAnvAoAbQ0J5SirKjDCDjgV4MdNG+UTdXC9HLOCejrmcegicyWs0OPlNeQAXSvzLWepqGUqWBZvYh
	pSNFNBdJLMNJm8fKZa4Ypi4rvZxk09GMLtYFzlqaS8shXOuVCHkbXc0T2e59N1VwOsG5Q8XCmnba7
	xcBQEgz1VPkdWI15hwhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2AgQ-00069r-10; Thu, 13 Feb 2020 09:21:18 +0000
Received: from mail-eopbgr30057.outbound.protection.outlook.com ([40.107.3.57]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2AgJ-00069P-6w
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 09:21:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HR+01XObHmxe0Phh7pqD6uqkr14z96nwxqpYMEiQic4bpqDeiWA8hT64vONizhr27xaz/Yi5IO0VG1L1sd1WxUYw8HOiBi5bhAHmqZYmd9jpMM4RuIagEKsKbW5wO8gK13gxQYmzgzYyi4l6d92B2in7TCAH0OuOv2DseifIKM9QjylkQr430xizMxtO34pLxFFO//LJLFQ2lkoQNiHeCqJON0lLNKfgIgXbVa5wmo3fet3Ci85w8HpFQKCwb+7sWIMhuA29Wqni6R2GrAfSLGkUdRKIQ/THmREUR+u1mklZK8jXkG28Q9nhz3li5MVB+y0weZYrc6SJ/1uGblIEoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=atzhjWXuNPSvHA14BHm1oCxPeR2Vqj4e0XW51d0ib5A=;
 b=N9eFGkt3FeFNcUcJCj3jTgO7uUdsqRqupLg+jYqwvv3hxInICnm226PmLSH87tJ+4eVS2wSw46o8uu/6UoeU7epduoi4mQaRi4OLe1vOtcjunngejW6lxg6oObZK2KRuO+PoBWY8CYy+4hL7RrtWZH6HGVZAKWuD2S0Wa1Xivun7YYK8DRfGXD3xYbV/XAhRoIYxLj5uRDQAo+qzH81XE593ArRoQLZk8SJ9VWX2enCf9FzxC2VjHN/bNHqJ7IO+UV3CEvLLFoDEHnpXYMrdFD+M56ebKueAeArX7qqXNi5pGmLkALWEtyYCDKekv/HYqh4DTOBGPvwB0cYeRGEtwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=atzhjWXuNPSvHA14BHm1oCxPeR2Vqj4e0XW51d0ib5A=;
 b=V7rmpKL//fpkC2zrhs68o+Al9Z6tblU/67gNbmlMNXtdxvYnwbtN4baDUmkX9sxlIstS3RqeSF8sssLorDw4wTIRjlpyQGN2BVfNPCQBWv2O7dn8qiBRLiQm7qMEpTH4x6Hj0xcjrVhfop3CdA1jBmTc2oZtYa2Per24MT8uJ+k=
Received: from VI1PR04MB6992.eurprd04.prod.outlook.com (52.133.247.22) by
 VI1PR04MB4045.eurprd04.prod.outlook.com (52.133.13.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.24; Thu, 13 Feb 2020 09:21:02 +0000
Received: from VI1PR04MB6992.eurprd04.prod.outlook.com
 ([fe80::9454:2b46:a973:efdf]) by VI1PR04MB6992.eurprd04.prod.outlook.com
 ([fe80::9454:2b46:a973:efdf%3]) with mapi id 15.20.2729.025; Thu, 13 Feb 2020
 09:21:02 +0000
From: Jacky Bai <ping.bai@nxp.com>
To: Schrempf Frieder <frieder.schrempf@kontron.de>, Adam Ford
 <aford173@gmail.com>, Sudeep Holla <sudeep.holla@arm.com>
Subject: RE: [PATCH 0/3] Add power domain driver support for i.mx8m family
Thread-Topic: [PATCH 0/3] Add power domain driver support for i.mx8m family
Thread-Index: AQHVlbJUA691HUFq00G9JmwM2VD7GagZcSCAgAAAzeA=
Date: Thu, 13 Feb 2020 09:21:02 +0000
Message-ID: <VI1PR04MB6992DF27336AC51945D1C0C1871A0@VI1PR04MB6992.eurprd04.prod.outlook.com>
References: <20190417053211.2195-1-ping.bai@nxp.com>
 <AM0PR04MB42116FEB1EE2CAE68A1CAA8980250@AM0PR04MB4211.eurprd04.prod.outlook.com>
 <1555503195.2317.19.camel@pengutronix.de>
 <VI1PR04MB55330105F4839FCF98B7CFC0EE250@VI1PR04MB5533.eurprd04.prod.outlook.com>
 <68aaace3-f66e-b4b8-30a0-57b8b66a7524@arm.com>
 <VI1PR04MB5533A1F87436C0839A772D03EE250@VI1PR04MB5533.eurprd04.prod.outlook.com>
 <20190418144330.GD7770@e107155-lin>
 <CAHCN7xKK3zWE9i24prauPw0DSNTjASsMgDYY8w3OBJ+hb2y-sg@mail.gmail.com>
 <871ac22a-0508-8e92-b012-f414be5bd174@kontron.de>
In-Reply-To: <871ac22a-0508-8e92-b012-f414be5bd174@kontron.de>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ping.bai@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e7f28147-bd98-45d2-d0d3-08d7b0660b9c
x-ms-traffictypediagnostic: VI1PR04MB4045:|VI1PR04MB4045:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB40458C839AE635A88B277123871A0@VI1PR04MB4045.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 031257FE13
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(366004)(346002)(396003)(376002)(199004)(189003)(110136005)(71200400001)(54906003)(7416002)(9686003)(52536014)(55016002)(4326008)(6506007)(2906002)(53546011)(33656002)(26005)(478600001)(76116006)(66556008)(66446008)(64756008)(66476007)(66946007)(186003)(8676002)(8936002)(81166006)(66574012)(316002)(81156014)(7696005)(86362001)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4045;
 H:VI1PR04MB6992.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 33xVN5QWtzUjrs0XkTYOYoCO8HTI5/YpnKMIFBVhq27kr2onJg55JADc58z0YpLCE+5IfPPCHQ6RJn3BQCmmHSDM9VqcZhub0jJxNXYSLkyLnTyIxZTs6vmpjbS3GeKMSe7M6bF2aOa2yU5pHuMq2i6XMFYfePLnyEMMlU90KoabeuKO11s6Ab6v8YeBqOFXGdYET3jYDcLVkDJGg5WM++cgvOTDdutKSAEjnkQ5rCGCnnvkFX/E+3pCg23A3CIAQZV2LfHed+1DTX2Yt0iDq0An9lPe/3+Jon84vhsFNynrMg3jzkbR8ZVXpjYzT9odAKy2oLY41YR+fgqhD32Haf0vNO9vEFSgwYbNiaxqPqLzaPi43dtHPwjQWAFjg98cZrkGMujWLUl6Y8LVppLLng75GCXCXQYX6oyV7r1nla5TRBu+pQWfl5MzbkpzUrpC
x-ms-exchange-antispam-messagedata: zOx6eV/JaHyjogpQ64YVuwqaL+0YQ8MxeWuEeqK+Q1/YGDWR8dgrHyueWeKXb3Ry6HqGYydQw6Z29WRD5YyqjrqjTq51jA3oTA17w12AbBTDpaXarYkQJNAkeG9Zo8xC7nMOfnbtW5rx0BHpw/xKww==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e7f28147-bd98-45d2-d0d3-08d7b0660b9c
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2020 09:21:02.3088 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IlX2H7T1x6AdU88p5KNYuX7SE6ZrFmBEpd+pcbB/pofY7qssakcyVSe8ZGWFp8fgBLKlMAQzHza4PmKn05jWmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_012111_255909_3F32A29E 
X-CRM114-Status: GOOD (  22.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.57 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "mark.rutland@arm.com" <mark.rutland@arm.com>, Peng Fan <peng.fan@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
 =?utf-8?B?Q2zDqW1lbnQgRmF1cmU=?= <clement.faure@nxp.com>,
 Andre Przywara <andre.przywara@arm.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Silvano Di Ninno <silvano.dininno@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBTY2hyZW1wZiBGcmllZGVyIDxm
cmllZGVyLnNjaHJlbXBmQGtvbnRyb24uZGU+DQo+IFNlbnQ6IFRodXJzZGF5LCBGZWJydWFyeSAx
MywgMjAyMCA1OjE2IFBNDQo+IFRvOiBBZGFtIEZvcmQgPGFmb3JkMTczQGdtYWlsLmNvbT47IFN1
ZGVlcCBIb2xsYQ0KPiA8c3VkZWVwLmhvbGxhQGFybS5jb20+DQo+IENjOiBBaXNoZW5nIERvbmcg
PGFpc2hlbmcuZG9uZ0BueHAuY29tPjsgbWFyay5ydXRsYW5kQGFybS5jb207IFBlbmcNCj4gRmFu
IDxwZW5nLmZhbkBueHAuY29tPjsgU291dmlrIENoYWtyYXZhcnR5DQo+IDxTb3V2aWsuQ2hha3Jh
dmFydHlAYXJtLmNvbT47IEphY2t5IEJhaSA8cGluZy5iYWlAbnhwLmNvbT47DQo+IGRldmljZXRy
ZWVAdmdlci5rZXJuZWwub3JnOyBDbMOpbWVudCBGYXVyZSA8Y2xlbWVudC5mYXVyZUBueHAuY29t
PjsNCj4gcy5oYXVlckBwZW5ndXRyb25peC5kZTsgc2hhd25ndW9Aa2VybmVsLm9yZzsgcm9iaCtk
dEBrZXJuZWwub3JnOw0KPiBkbC1saW51eC1pbXggPGxpbnV4LWlteEBueHAuY29tPjsga2VybmVs
QHBlbmd1dHJvbml4LmRlOyBBbmRyZSBQcnp5d2FyYQ0KPiA8YW5kcmUucHJ6eXdhcmFAYXJtLmNv
bT47IFNpbHZhbm8gRGkgTmlubm8gPHNpbHZhbm8uZGluaW5ub0BueHAuY29tPjsNCj4gTGVvbmFy
ZCBDcmVzdGV6IDxsZW9uYXJkLmNyZXN0ZXpAbnhwLmNvbT47IGZlc3RldmFtQGdtYWlsLmNvbTsN
Cj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBMdWNhcyBTdGFjaCA8bC5z
dGFjaEBwZW5ndXRyb25peC5kZT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSCAwLzNdIEFkZCBwb3dl
ciBkb21haW4gZHJpdmVyIHN1cHBvcnQgZm9yIGkubXg4bSBmYW1pbHkNCj4gDQo+IEhpLA0KPiAN
Cj4gT24gMDcuMTEuMTkgMjI6MjgsIEFkYW0gRm9yZCB3cm90ZToNCj4gPiBPbiBUaHUsIEFwciAx
OCwgMjAxOSBhdCA5OjQzIEFNIFN1ZGVlcCBIb2xsYSA8c3VkZWVwLmhvbGxhQGFybS5jb20+DQo+
IHdyb3RlOg0KPiA+Pg0KPiA+PiBPbiBXZWQsIEFwciAxNywgMjAxOSBhdCAwNDoyMTo1NVBNICsw
MDAwLCBMZW9uYXJkIENyZXN0ZXogd3JvdGU6DQo+ID4+PiBPbiA0LzE3LzIwMTkgNDozMyBQTSwg
U3VkZWVwIEhvbGxhIHdyb3RlOg0KPiA+Pj4+Pj4gSSBkb24ndCB5ZXQgYnV5IHRoZSBzZWN1cml0
eSBhcmd1bWVudC4gVGhlcmUgYXJlIG1hbnkgbW9yZSBzaGFyZWQNCj4gPj4+Pj4+IHBhcnRzIG9u
IHRoZSBTb0MsIGxpa2UgdGhlIGNsb2NrIGNvbnRyb2xsZXIsIHRoYXQgd291bGQgbmVlZCB0bw0K
PiA+Pj4+Pj4gYmUgdGFrZW4gYXdheSBmcm9tIHRoZSBub24tc2VjdXJlIHdvcmxkIGlmIG9uZSB3
b3VsZCB3YW50IHRvIHJ1bg0KPiA+Pj4+Pj4gYW4gdW50cnVzdGVkIE9TIGtlcm5lbCBvbiBhIGku
TVg4TSBzeXN0ZW0uDQo+ID4+Pj4+Pg0KPiA+Pj4+Pj4gVG8gcHJvcGVybHkgaW1wbGVtZW50IHNl
Y3VyaXR5IG9uIGFueSBpLk1YOE0gYmFzZWQgc3lzdGVtIHRoZQ0KPiA+Pj4+Pj4gZmlybXdhcmUg
d291bGQgbmVlZCB0byBncm93IHNvbWV0aGluZyBsaWtlIGEgZnVsbCBBUk0gU0NQSQ0KPiA+Pj4+
Pj4gaW1wbGVtZW50YXRpb24sIHNvIGFsbCBzaGFyZWQgY3JpdGljYWwgcGVyaXBoZXJhbHMgYXJl
IHNvbGVseSB1bmRlcg0KPiBmaXJtd2FyZSBjb250cm9sLg0KPiA+Pj4+Pg0KPiA+Pj4+PiBJdCBt
aWdodCBiZSBwb3NzaWJsZSB0byByZXdvcmsgdGhpcyB0byB1c2Ugc29tZSBmb3JtIG9mDQo+ID4+
Pj4+IFNDTUktb3Zlci1TTUMgaW5zdGVhZCBvZiB2ZW5kb3Itc3BlY2lmaWMgU01DQ0MgU0lQIGNh
bGxzDQo+ID4NCj4gPiBJIHdhcyBqdXN0IGN1cmlvdXMgdG8ga25vdyBpZiB0aGVyZSBpcyBhbnkg
cHJvZ3Jlc3MgYmVpbmcgbWFkZSBvbg0KPiA+IHRoaXMuICBUaGUgaS5teDhtbS1ldmsgaXMgbWlz
c2luZyBmdW5jdGlvbmFsaXR5IHVwc3RyZWFtIGFuZCBJIHRoaW5rDQo+ID4gdGhlIHBvd2VyIGRv
bWFpbiBzdXBwb3J0IHdvdWxkIGhlbHAgZW5hYmxlIHNvbWUgb2YgdGhlc2UgZmVhdHVyZXMuDQo+
ID4NCj4gDQo+IEhhcyB0aGVyZSBiZWVuIGFueSBkZWNpc2lvbiBvciBhY3Rpb24gdGFrZW4gaW4g
dGhpcyB0b3BpYz8NCj4gV2lsbCB0aGUgcG93ZXIgZG9tYWluIGRyaXZlciBhcyBwcm9wb3NlZCBp
biB0aGlzIHBhdGNoIGJlIHVwc3RyZWFtZWQgYXQNCj4gc29tZSB0aW1lLCBvciByYXRoZXIgbm90
Pw0KPiANCj4gSSB0cnkgdG8gYnVpbGQgYSBtYWlubGluZSBCU1AgZm9yIGkuTVg4TU0gKE1MIFUt
Qm9vdCwgTUwgVEYtQSwgTUwgTGludXgpDQo+IGFuZCBJIGludGVncmF0ZWQgZGlzcGxheSBhbmQg
Z3JhcGhpY3Mgc3VwcG9ydCBmcm9tIHRoZSBkb3duc3RyZWFtIE5YUA0KPiBrZXJuZWwuDQo+IA0K
PiBXaGlsZSBtb3N0IHRoaW5ncyBhbHJlYWR5IHdvcmsgZmluZSwgdGhlcmUncyB0aGUgaXNzdWUg
b2YgaG93IHRvIGhhbmRsZSB0aGUNCj4gcG93ZXIgZG9tYWlucy4gQ3VycmVudGx5IEkgbmVlZCB0
byB1bmdhdGUgc29tZSBjbG9ja3MgaW4gdGhlIFRGLUENCj4gQkwzMSB0byBnZXQgZm9yIGV4YW1w
bGUgdGhlIEdQVSBydW5uaW5nLiBJZiBJIHVuZGVyc3RhbmQgdGhpcyBjb3JyZWN0bHkgdGhlDQo+
IHByb3Bvc2VkIHBvd2VyIGRvbWFpbiBkcml2ZXIgY291bGQgaGFuZGxlIHRoaXMgaW4gTGludXgg
b3RoZXJ3aXNlLg0KPiANCg0KdGhlIFNDTUkgb3ZlciBTTUMgaXMgc3RpbGwgdW5kZXIgcmV2aWV3
DQoNCkJSDQpKYWNreSBCYWkgDQo+IFRoYW5rcywNCj4gRnJpZWRlcg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
