Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB3ED0555
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 03:48:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H/4rBNj015LGRaDIHxj4N2gs7UHg5E92zpT2cDYUX5I=; b=DkjkrMQ0iipZKe
	gVGtg4e6f972hQG3UAslMHR4UdjH2pQxl6u76We7Qa3d7otXv5VuTRsoX8BbnDxHeOFW4o8AaWG6j
	DSoMLsp/6OXw/LSC3RLFZGNrThHS6XJzpIAMfFb+vjUan3V4y5pZqSSYG1hkAi68JOdqM2A9+aZYA
	V5gTVTsamfnxRJQFpxNaj6fdREx7h2RqzmUghJnlEkGDARg7w1z5GcmPzds5dH3YwNoVJvLemKA3Q
	d8mm37m77KqFdEsYofKeppNv0HbIOeGsuj0n0/4HVlocj1Wle8DuOIFn1BsZId4munKHQfmfqutBa
	xfYr310qxY66sJTWeTHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI154-0008Db-CU; Wed, 09 Oct 2019 01:47:58 +0000
Received: from mail-eopbgr40084.outbound.protection.outlook.com ([40.107.4.84]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI14u-0008Ch-SE
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 01:47:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hY+7nL36C77qSZexYzqKrf0cFwn8A9aQfHSh7EZeQDD958mqD6QgaLzksW81ht44xhUSXkXCZ6cdmBXzz+VuzpdKH8RU8e979VXsAVRdqXK73YZb7F/FQj2jXt5sdEKtBjdidwLuoTONa1nwb4ZLGyE+v9tD6VjUvK33bWvYlbwyQjkkol5ickadEhIPvd54pN6ywUIEAmO9VEt9skHhtbUCLJt6RA3y12ntdfk5xXo8V3lRy87qv2zM4oYYj4ashrmKjUFt9HRKVF/vQS+Nd8y64QNoDEbM2iBZ2IBYlbkhEvJQQvKA6YVa7eJXgbw0sO+UDdsILdIY/18IE4YAfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6oHmVLRH3zAsasrL2QfLXe3Xg84tp+uBzK8385FHD2c=;
 b=e6qavlYfz0UYWZAfckkEHc4AeiirmifzBaJIE3ABydxnqiehO5RGyvT51uD2qMCJT+bcxb5az24kuNJ0WRKS3ckxZzTXGDYBPjn/yYtg1EOIhcKJEG9MOUlaA4SGQjLHTCI+iDdTylifCwW0NINwyyboyjBU77o0vB52C2zGt4nZOspdmzyJ1dTHmTP+ypa0UJc9/SRxh185ZWQJuKQmAeMiAShXL+WxqHVlpu6ubuQKbcsXYMr9X8NLKFqPPLts5oErsWbv+HpoTLTNLPzBPwbthS6UAlg9r49d75K3zHMgTLmbWuSQIhJ0UM0FBklEyVjODvuA0tD2eo+SzVfeeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6oHmVLRH3zAsasrL2QfLXe3Xg84tp+uBzK8385FHD2c=;
 b=CLw1p02kBoFrwQuQvkNgPMya45E82dCgHNQlUZQOY06xnPixcSey1xytLBYsOewOtpwRwc1HSryx2QX9f+gqTk8zmVs3t8kJdAqWWaTBDvbyP8mLf8BcmmsKsD5wK+r6sbwjlu0NM6/XZAMbcaS5XEL8sibRlCIANqrbWtSNPnw=
Received: from AM0PR0402MB3570.eurprd04.prod.outlook.com (52.133.46.11) by
 AM0PR0402MB3876.eurprd04.prod.outlook.com (52.133.39.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.23; Wed, 9 Oct 2019 01:47:42 +0000
Received: from AM0PR0402MB3570.eurprd04.prod.outlook.com
 ([fe80::a894:264d:5dfc:20f4]) by AM0PR0402MB3570.eurprd04.prod.outlook.com
 ([fe80::a894:264d:5dfc:20f4%6]) with mapi id 15.20.2327.026; Wed, 9 Oct 2019
 01:47:41 +0000
From: Richard Zhu <hongxing.zhu@nxp.com>
To: Daniel Baluta <daniel.baluta@gmail.com>
Subject: RE: [EXT] Re: [RESEND PATCH v5 4/4] mailbox: imx: add support for imx
 v1 mu
Thread-Topic: [EXT] Re: [RESEND PATCH v5 4/4] mailbox: imx: add support for
 imx v1 mu
Thread-Index: AQHVS0zBXMw0VywGrk2QggOrf1Hb06bs70WAgGPNT4CAATOa0A==
Date: Wed, 9 Oct 2019 01:47:41 +0000
Message-ID: <AM0PR0402MB35709FCA367D132B3E1634118C950@AM0PR0402MB3570.eurprd04.prod.outlook.com>
References: <1564980742-19124-1-git-send-email-hongxing.zhu@nxp.com>
 <1564980742-19124-5-git-send-email-hongxing.zhu@nxp.com>
 <CAEnQRZBoLw5pfZ10STGMRfmR7=6hFjYNFOmXiMAnbM+-8Q4uLg@mail.gmail.com>
 <CAEnQRZCkoA-q=C6nU0L_i33W8iTPY2RC4Cvb-aWuExA8VEqM4g@mail.gmail.com>
In-Reply-To: <CAEnQRZCkoA-q=C6nU0L_i33W8iTPY2RC4Cvb-aWuExA8VEqM4g@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=hongxing.zhu@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: aa288304-bd30-4ab4-cb9a-08d74c5aac00
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: AM0PR0402MB3876:|AM0PR0402MB3876:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR0402MB3876DB648E866AA7D8633AA58C950@AM0PR0402MB3876.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 018577E36E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(366004)(39860400002)(376002)(396003)(13464003)(189003)(199004)(66066001)(76116006)(15650500001)(53546011)(6506007)(11346002)(486006)(446003)(9686003)(66556008)(66946007)(66476007)(66446008)(55016002)(64756008)(71200400001)(71190400001)(476003)(26005)(6246003)(2906002)(3846002)(186003)(6436002)(229853002)(86362001)(256004)(4326008)(6116002)(102836004)(6916009)(99286004)(8676002)(81156014)(81166006)(33656002)(14454004)(74316002)(76176011)(478600001)(7696005)(5660300002)(25786009)(52536014)(14444005)(316002)(305945005)(8936002)(54906003)(7736002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR0402MB3876;
 H:AM0PR0402MB3570.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: o1EJz+6QL/T5deieMbABLVVzOD1kxAgVDEYQ2WiU/RJkDOx4iB7OyYGiVEvwLtuRjhPztLQUXV8o8P06Bc8Ey99wzX8qFcaXxHZESNaK0YBO+p2lG+30UbDaHzeI1AMpBVDMwf41wtGD0AhsSIH8kvSwJIMD51ZA8Le5EyignPeInapELV1jL5j+uAjGAi/8ue79xkoM4DRSHqDt8NVoHYSxhEAFt1j6AUm3w8hjeuOXqHnPU8ysnpyIlkWVJWvz24rQgECkkq2l8+NR4GQtckW+nM8ECUX/5jVLrWUX+3K09kg8ITvkUbpCm7yANNeL/JcPOl+TqZ1xrGDf3mVc4WqNUo7hQOwZwrz6bqqNWQi2iEbpeXtSqCZXFhjA4H+RlJKFGdwCJ+zG9f8UX3i+ndRZKWH0BMbX4lKif7/fp3Q=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa288304-bd30-4ab4-cb9a-08d74c5aac00
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2019 01:47:41.1346 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2RufV/o0tTFk/MjTP9KkcWi17Gf0VO6Ap30mvAlSUpbpXIebJxzv2GVxkSm0DnrZ3Kek5YcKBwykagJB5UaheA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0402MB3876
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_184749_051762_8947F7B8 
X-CRM114-Status: GOOD (  21.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.84 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.4.84 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Oleksij Rempel <o.rempel@pengutronix.de>, dl-linux-imx <linux-imx@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRGFuaWVsOg0KDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogRGFu
aWVsIEJhbHV0YSA8ZGFuaWVsLmJhbHV0YUBnbWFpbC5jb20+DQo+IFNlbnQ6IDIwMTnlubQxMOac
iDjml6UgMTU6MjYNCj4gVG86IFJpY2hhcmQgWmh1IDxob25neGluZy56aHVAbnhwLmNvbT4NCj4g
Q2M6IGphc3Npc2luZ2hicmFyQGdtYWlsLmNvbTsgT2xla3NpaiBSZW1wZWwgPG8ucmVtcGVsQHBl
bmd1dHJvbml4LmRlPjsNCj4gRGFuaWVsIEJhbHV0YSA8ZGFuaWVsLmJhbHV0YUBueHAuY29tPjsg
QWlzaGVuZyBEb25nDQo+IDxhaXNoZW5nLmRvbmdAbnhwLmNvbT47IGRsLWxpbnV4LWlteCA8bGlu
dXgtaW14QG54cC5jb20+OyBMaW51eCBLZXJuZWwNCj4gTWFpbGluZyBMaXN0IDxsaW51eC1rZXJu
ZWxAdmdlci5rZXJuZWwub3JnPjsgbGludXgtYXJtLWtlcm5lbA0KPiA8bGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnPg0KPiBTdWJqZWN0OiBbRVhUXSBSZTogW1JFU0VORCBQQVRD
SCB2NSA0LzRdIG1haWxib3g6IGlteDogYWRkIHN1cHBvcnQgZm9yIGlteCB2MQ0KPiBtdQ0KPiAN
Cj4gDQo+IEhpIFJpY2hhcmQsDQo+IA0KPiBDYW4geW91IHBsZWFzZSByZWJhc2UgYW5kIHJlc2Vu
ZCB0aGlzIHBhdGNoIHNlcmllcz8NCj4gDQpbUmljaGFyZCBaaHVdIE5vIHByb2JsZW0sIEkgd291
bGQgcmVzZW5kIHRoaXMgcGF0Y2gtc2V0IGxhdGVyLg0KDQoNCkJlc3QgUmVnYXJkcw0KUmljaGFy
ZCBaaHUNCg0KPiBPbiBNb24sIEF1ZyA1LCAyMDE5IGF0IDEwOjIxIFBNIERhbmllbCBCYWx1dGEg
PGRhbmllbC5iYWx1dGFAZ21haWwuY29tPg0KPiB3cm90ZToNCj4gPg0KPiA+IE9uIE1vbiwgQXVn
IDUsIDIwMTkgYXQgODoxNiBBTSBSaWNoYXJkIFpodSA8aG9uZ3hpbmcuemh1QG54cC5jb20+DQo+
IHdyb3RlOg0KPiA+ID4NCj4gPiA+IFRoZXJlIGlzIGEgdmVyc2lvbiAxLjAgTVUgb24gaS5NWDdV
TFAgcGxhdGZvcm0uDQo+ID4gPiBPbmUgbmV3IHZlcnNpb24gSUQgcmVnaXN0ZXIgaXMgYWRkZWQs
IGFuZCBpdCdzIG9mZnNldCBpcyAwLg0KPiA+ID4gVFJuIHJlZ2lzdGVycyBhcmUgZGVmaW5lZCBh
dCB0aGUgb2Zmc2V0IDB4MjAgfiAweDJDLg0KPiA+ID4gUlJuIHJlZ2lzdGVycyBhcmUgZGVmaW5l
ZCBhdCB0aGUgb2Zmc2V0IDB4NDAgfiAweDRDLg0KPiA+ID4gU1IvQ1IgcmVnaXN0ZXJzIGFyZSBk
ZWZpbmVkIGF0IDB4NjAvMHg2NC4NCj4gPiA+IEV4dGVuZCB0aGlzIGRyaXZlciB0byBzdXBwb3J0
IGl0Lg0KPiA+ID4NCj4gPiA+IFNpZ25lZC1vZmYtYnk6IFJpY2hhcmQgWmh1IDxob25neGluZy56
aHVAbnhwLmNvbT4NCj4gPiA+IFN1Z2dlc3RlZC1ieTogT2xla3NpaiBSZW1wZWwgPG8ucmVtcGVs
QHBlbmd1dHJvbml4LmRlPg0KPiA+ID4gUmV2aWV3ZWQtYnk6IERvbmcgQWlzaGVuZyA8YWlzaGVu
Zy5kb25nQG54cC5jb20+DQo+ID4gPiBSZXZpZXdlZC1ieTogT2xla3NpaiBSZW1wZWwgPG8ucmVt
cGVsQHBlbmd1dHJvbml4LmRlPg0KPiA+DQo+ID4gVmVyeSBjbGVhbiBzb2x1dGlvbi4gVGhhbmtz
IFJpY2hhcmQhDQo+ID4NCj4gPiBSZXZpZXdlZC1ieTogRGFuaWVsIEJhbHV0YSA8ZGFuaWVsLmJh
bHV0YUBueHAuY29tPg0KPiA+DQo+ID4gPiAtLS0NCj4gPiA+ICBkcml2ZXJzL21haWxib3gvaW14
LW1haWxib3guYyB8IDU1DQo+ID4gPiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0t
LS0tLS0tLS0tDQo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDM4IGluc2VydGlvbnMoKyksIDE3IGRl
bGV0aW9ucygtKQ0KPiA+ID4NCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21haWxib3gvaW14
LW1haWxib3guYw0KPiA+ID4gYi9kcml2ZXJzL21haWxib3gvaW14LW1haWxib3guYyBpbmRleCBh
ZmU2MjVlLi4yY2RjZGM1IDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9tYWlsYm94L2lteC1t
YWlsYm94LmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvbWFpbGJveC9pbXgtbWFpbGJveC5jDQo+ID4g
PiBAQCAtMTIsMTkgKzEyLDExIEBADQo+ID4gPiAgI2luY2x1ZGUgPGxpbnV4L29mX2RldmljZS5o
Pg0KPiA+ID4gICNpbmNsdWRlIDxsaW51eC9zbGFiLmg+DQo+ID4gPg0KPiA+ID4gLS8qIFRyYW5z
bWl0IFJlZ2lzdGVyICovDQo+ID4gPiAtI2RlZmluZSBJTVhfTVVfeFRSbih4KSAgICAgICAgICgw
eDAwICsgNCAqICh4KSkNCj4gPiA+IC0vKiBSZWNlaXZlIFJlZ2lzdGVyICovDQo+ID4gPiAtI2Rl
ZmluZSBJTVhfTVVfeFJSbih4KSAgICAgICAgICgweDEwICsgNCAqICh4KSkNCj4gPiA+IC0vKiBT
dGF0dXMgUmVnaXN0ZXIgKi8NCj4gPiA+IC0jZGVmaW5lIElNWF9NVV94U1IgICAgICAgICAgICAg
MHgyMA0KPiA+ID4gICNkZWZpbmUgSU1YX01VX3hTUl9HSVBuKHgpICAgICBCSVQoMjggKyAoMyAt
ICh4KSkpDQo+ID4gPiAgI2RlZmluZSBJTVhfTVVfeFNSX1JGbih4KSAgICAgIEJJVCgyNCArICgz
IC0gKHgpKSkNCj4gPiA+ICAjZGVmaW5lIElNWF9NVV94U1JfVEVuKHgpICAgICAgQklUKDIwICsg
KDMgLSAoeCkpKQ0KPiA+ID4gICNkZWZpbmUgSU1YX01VX3hTUl9CUkRJUCAgICAgICBCSVQoOSkN
Cj4gPiA+DQo+ID4gPiAtLyogQ29udHJvbCBSZWdpc3RlciAqLw0KPiA+ID4gLSNkZWZpbmUgSU1Y
X01VX3hDUiAgICAgICAgICAgICAweDI0DQo+ID4gPiAgLyogR2VuZXJhbCBQdXJwb3NlIEludGVy
cnVwdCBFbmFibGUgKi8NCj4gPiA+ICAjZGVmaW5lIElNWF9NVV94Q1JfR0lFbih4KSAgICAgQklU
KDI4ICsgKDMgLSAoeCkpKQ0KPiA+ID4gIC8qIFJlY2VpdmUgSW50ZXJydXB0IEVuYWJsZSAqLw0K
PiA+ID4gQEAgLTQ0LDYgKzM2LDEzIEBAIGVudW0gaW14X211X2NoYW5fdHlwZSB7DQo+ID4gPiAg
ICAgICAgIElNWF9NVV9UWVBFX1JYREIsICAgICAgIC8qIFJ4IGRvb3JiZWxsICovDQo+ID4gPiAg
fTsNCj4gPiA+DQo+ID4gPiArc3RydWN0IGlteF9tdV9kY2ZnIHsNCj4gPiA+ICsgICAgICAgdTMy
ICAgICB4VFJbNF07ICAgICAgICAgLyogVHJhbnNtaXQgUmVnaXN0ZXJzICovDQo+ID4gPiArICAg
ICAgIHUzMiAgICAgeFJSWzRdOyAgICAgICAgIC8qIFJlY2VpdmUgUmVnaXN0ZXJzICovDQo+ID4g
PiArICAgICAgIHUzMiAgICAgeFNSOyAgICAgICAgICAgIC8qIFN0YXR1cyBSZWdpc3RlciAqLw0K
PiA+ID4gKyAgICAgICB1MzIgICAgIHhDUjsgICAgICAgICAgICAvKiBDb250cm9sIFJlZ2lzdGVy
ICovDQo+ID4gPiArfTsNCj4gPiA+ICsNCj4gPiA+ICBzdHJ1Y3QgaW14X211X2Nvbl9wcml2IHsN
Cj4gPiA+ICAgICAgICAgdW5zaWduZWQgaW50ICAgICAgICAgICAgaWR4Ow0KPiA+ID4gICAgICAg
ICBjaGFyDQo+IGlycV9kZXNjW0lNWF9NVV9DSEFOX05BTUVfU0laRV07DQo+ID4gPiBAQCAtNjEs
MTIgKzYwLDI3IEBAIHN0cnVjdCBpbXhfbXVfcHJpdiB7DQo+ID4gPiAgICAgICAgIHN0cnVjdCBt
Ym94X2NoYW4gICAgICAgIG1ib3hfY2hhbnNbSU1YX01VX0NIQU5TXTsNCj4gPiA+DQo+ID4gPiAg
ICAgICAgIHN0cnVjdCBpbXhfbXVfY29uX3ByaXYgIGNvbl9wcml2W0lNWF9NVV9DSEFOU107DQo+
ID4gPiArICAgICAgIGNvbnN0IHN0cnVjdCBpbXhfbXVfZGNmZyAgICAgICAgKmRjZmc7DQo+ID4g
PiAgICAgICAgIHN0cnVjdCBjbGsgICAgICAgICAgICAgICpjbGs7DQo+ID4gPiAgICAgICAgIGlu
dCAgICAgICAgICAgICAgICAgICAgIGlycTsNCj4gPiA+DQo+ID4gPiAgICAgICAgIGJvb2wgICAg
ICAgICAgICAgICAgICAgIHNpZGVfYjsNCj4gPiA+ICB9Ow0KPiA+ID4NCj4gPiA+ICtzdGF0aWMg
Y29uc3Qgc3RydWN0IGlteF9tdV9kY2ZnIGlteF9tdV9jZmdfaW14NnN4ID0gew0KPiA+ID4gKyAg
ICAgICAueFRSICAgID0gezB4MCwgMHg0LCAweDgsIDB4Y30sDQo+ID4gPiArICAgICAgIC54UlIg
ICAgPSB7MHgxMCwgMHgxNCwgMHgxOCwgMHgxY30sDQo+ID4gPiArICAgICAgIC54U1IgICAgPSAw
eDIwLA0KPiA+ID4gKyAgICAgICAueENSICAgID0gMHgyNCwNCj4gPiA+ICt9Ow0KPiA+ID4gKw0K
PiA+ID4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaW14X211X2RjZmcgaW14X211X2NmZ19pbXg3dWxw
ID0gew0KPiA+ID4gKyAgICAgICAueFRSICAgID0gezB4MjAsIDB4MjQsIDB4MjgsIDB4MmN9LA0K
PiA+ID4gKyAgICAgICAueFJSICAgID0gezB4NDAsIDB4NDQsIDB4NDgsIDB4NGN9LA0KPiA+ID4g
KyAgICAgICAueFNSICAgID0gMHg2MCwNCj4gPiA+ICsgICAgICAgLnhDUiAgICA9IDB4NjQsDQo+
ID4gPiArfTsNCj4gPiA+ICsNCj4gPiA+ICBzdGF0aWMgc3RydWN0IGlteF9tdV9wcml2ICp0b19p
bXhfbXVfcHJpdihzdHJ1Y3QgbWJveF9jb250cm9sbGVyDQo+ID4gPiAqbWJveCkgIHsNCj4gPiA+
ICAgICAgICAgcmV0dXJuIGNvbnRhaW5lcl9vZihtYm94LCBzdHJ1Y3QgaW14X211X3ByaXYsIG1i
b3gpOyBAQA0KPiA+ID4gLTg4LDEwICsxMDIsMTAgQEAgc3RhdGljIHUzMiBpbXhfbXVfeGNyX3Jt
dyhzdHJ1Y3QgaW14X211X3ByaXYgKnByaXYsDQo+IHUzMiBzZXQsIHUzMiBjbHIpDQo+ID4gPiAg
ICAgICAgIHUzMiB2YWw7DQo+ID4gPg0KPiA+ID4gICAgICAgICBzcGluX2xvY2tfaXJxc2F2ZSgm
cHJpdi0+eGNyX2xvY2ssIGZsYWdzKTsNCj4gPiA+IC0gICAgICAgdmFsID0gaW14X211X3JlYWQo
cHJpdiwgSU1YX01VX3hDUik7DQo+ID4gPiArICAgICAgIHZhbCA9IGlteF9tdV9yZWFkKHByaXYs
IHByaXYtPmRjZmctPnhDUik7DQo+ID4gPiAgICAgICAgIHZhbCAmPSB+Y2xyOw0KPiA+ID4gICAg
ICAgICB2YWwgfD0gc2V0Ow0KPiA+ID4gLSAgICAgICBpbXhfbXVfd3JpdGUocHJpdiwgdmFsLCBJ
TVhfTVVfeENSKTsNCj4gPiA+ICsgICAgICAgaW14X211X3dyaXRlKHByaXYsIHZhbCwgcHJpdi0+
ZGNmZy0+eENSKTsNCj4gPiA+ICAgICAgICAgc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmcHJpdi0+
eGNyX2xvY2ssIGZsYWdzKTsNCj4gPiA+DQo+ID4gPiAgICAgICAgIHJldHVybiB2YWw7DQo+ID4g
PiBAQCAtMTExLDggKzEyNSw4IEBAIHN0YXRpYyBpcnFyZXR1cm5fdCBpbXhfbXVfaXNyKGludCBp
cnEsIHZvaWQgKnApDQo+ID4gPiAgICAgICAgIHN0cnVjdCBpbXhfbXVfY29uX3ByaXYgKmNwID0g
Y2hhbi0+Y29uX3ByaXY7DQo+ID4gPiAgICAgICAgIHUzMiB2YWwsIGN0cmwsIGRhdDsNCj4gPiA+
DQo+ID4gPiAtICAgICAgIGN0cmwgPSBpbXhfbXVfcmVhZChwcml2LCBJTVhfTVVfeENSKTsNCj4g
PiA+IC0gICAgICAgdmFsID0gaW14X211X3JlYWQocHJpdiwgSU1YX01VX3hTUik7DQo+ID4gPiAr
ICAgICAgIGN0cmwgPSBpbXhfbXVfcmVhZChwcml2LCBwcml2LT5kY2ZnLT54Q1IpOw0KPiA+ID4g
KyAgICAgICB2YWwgPSBpbXhfbXVfcmVhZChwcml2LCBwcml2LT5kY2ZnLT54U1IpOw0KPiA+ID4N
Cj4gPiA+ICAgICAgICAgc3dpdGNoIChjcC0+dHlwZSkgew0KPiA+ID4gICAgICAgICBjYXNlIElN
WF9NVV9UWVBFX1RYOg0KPiA+ID4gQEAgLTEzOCwxMCArMTUyLDEwIEBAIHN0YXRpYyBpcnFyZXR1
cm5fdCBpbXhfbXVfaXNyKGludCBpcnEsIHZvaWQgKnApDQo+ID4gPiAgICAgICAgICAgICAgICAg
aW14X211X3hjcl9ybXcocHJpdiwgMCwgSU1YX01VX3hDUl9USUVuKGNwLT5pZHgpKTsNCj4gPiA+
ICAgICAgICAgICAgICAgICBtYm94X2NoYW5fdHhkb25lKGNoYW4sIDApOw0KPiA+ID4gICAgICAg
ICB9IGVsc2UgaWYgKHZhbCA9PSBJTVhfTVVfeFNSX1JGbihjcC0+aWR4KSkgew0KPiA+ID4gLSAg
ICAgICAgICAgICAgIGRhdCA9IGlteF9tdV9yZWFkKHByaXYsIElNWF9NVV94UlJuKGNwLT5pZHgp
KTsNCj4gPiA+ICsgICAgICAgICAgICAgICBkYXQgPSBpbXhfbXVfcmVhZChwcml2LCBwcml2LT5k
Y2ZnLT54UlJbY3AtPmlkeF0pOw0KPiA+ID4gICAgICAgICAgICAgICAgIG1ib3hfY2hhbl9yZWNl
aXZlZF9kYXRhKGNoYW4sICh2b2lkICopJmRhdCk7DQo+ID4gPiAgICAgICAgIH0gZWxzZSBpZiAo
dmFsID09IElNWF9NVV94U1JfR0lQbihjcC0+aWR4KSkgew0KPiA+ID4gLSAgICAgICAgICAgICAg
IGlteF9tdV93cml0ZShwcml2LCBJTVhfTVVfeFNSX0dJUG4oY3AtPmlkeCksDQo+IElNWF9NVV94
U1IpOw0KPiA+ID4gKyAgICAgICAgICAgICAgIGlteF9tdV93cml0ZShwcml2LCBJTVhfTVVfeFNS
X0dJUG4oY3AtPmlkeCksDQo+ID4gPiArIHByaXYtPmRjZmctPnhTUik7DQo+ID4gPiAgICAgICAg
ICAgICAgICAgbWJveF9jaGFuX3JlY2VpdmVkX2RhdGEoY2hhbiwgTlVMTCk7DQo+ID4gPiAgICAg
ICAgIH0gZWxzZSB7DQo+ID4gPiAgICAgICAgICAgICAgICAgZGV2X3dhcm5fcmF0ZWxpbWl0ZWQo
cHJpdi0+ZGV2LCAiTm90IGhhbmRsZWQNCj4gPiA+IGludGVycnVwdFxuIik7IEBAIC0xNTksNyAr
MTczLDcgQEAgc3RhdGljIGludA0KPiA+ID4gaW14X211X3NlbmRfZGF0YShzdHJ1Y3QgbWJveF9j
aGFuICpjaGFuLCB2b2lkICpkYXRhKQ0KPiA+ID4NCj4gPiA+ICAgICAgICAgc3dpdGNoIChjcC0+
dHlwZSkgew0KPiA+ID4gICAgICAgICBjYXNlIElNWF9NVV9UWVBFX1RYOg0KPiA+ID4gLSAgICAg
ICAgICAgICAgIGlteF9tdV93cml0ZShwcml2LCAqYXJnLCBJTVhfTVVfeFRSbihjcC0+aWR4KSk7
DQo+ID4gPiArICAgICAgICAgICAgICAgaW14X211X3dyaXRlKHByaXYsICphcmcsIHByaXYtPmRj
ZmctPnhUUltjcC0+aWR4XSk7DQo+ID4gPiAgICAgICAgICAgICAgICAgaW14X211X3hjcl9ybXco
cHJpdiwgSU1YX01VX3hDUl9USUVuKGNwLT5pZHgpLCAwKTsNCj4gPiA+ICAgICAgICAgICAgICAg
ICBicmVhazsNCj4gPiA+ICAgICAgICAgY2FzZSBJTVhfTVVfVFlQRV9UWERCOg0KPiA+ID4gQEAg
LTI3MCw3ICsyODQsNyBAQCBzdGF0aWMgdm9pZCBpbXhfbXVfaW5pdF9nZW5lcmljKHN0cnVjdCBp
bXhfbXVfcHJpdg0KPiAqcHJpdikNCj4gPiA+ICAgICAgICAgICAgICAgICByZXR1cm47DQo+ID4g
Pg0KPiA+ID4gICAgICAgICAvKiBTZXQgZGVmYXVsdCBNVSBjb25maWd1cmF0aW9uICovDQo+ID4g
PiAtICAgICAgIGlteF9tdV93cml0ZShwcml2LCAwLCBJTVhfTVVfeENSKTsNCj4gPiA+ICsgICAg
ICAgaW14X211X3dyaXRlKHByaXYsIDAsIHByaXYtPmRjZmctPnhDUik7DQo+ID4gPiAgfQ0KPiA+
ID4NCj4gPiA+ICBzdGF0aWMgaW50IGlteF9tdV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNl
ICpwZGV2KSBAQCAtMjc4LDYNCj4gPiA+ICsyOTIsNyBAQCBzdGF0aWMgaW50IGlteF9tdV9wcm9i
ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQ0KPiA+ID4gICAgICAgICBzdHJ1Y3QgZGV2
aWNlICpkZXYgPSAmcGRldi0+ZGV2Ow0KPiA+ID4gICAgICAgICBzdHJ1Y3QgZGV2aWNlX25vZGUg
Km5wID0gZGV2LT5vZl9ub2RlOw0KPiA+ID4gICAgICAgICBzdHJ1Y3QgaW14X211X3ByaXYgKnBy
aXY7DQo+ID4gPiArICAgICAgIGNvbnN0IHN0cnVjdCBpbXhfbXVfZGNmZyAqZGNmZzsNCj4gPiA+
ICAgICAgICAgdW5zaWduZWQgaW50IGk7DQo+ID4gPiAgICAgICAgIGludCByZXQ7DQo+ID4gPg0K
PiA+ID4gQEAgLTI5NSw2ICszMTAsMTEgQEAgc3RhdGljIGludCBpbXhfbXVfcHJvYmUoc3RydWN0
IHBsYXRmb3JtX2RldmljZQ0KPiAqcGRldikNCj4gPiA+ICAgICAgICAgaWYgKHByaXYtPmlycSA8
IDApDQo+ID4gPiAgICAgICAgICAgICAgICAgcmV0dXJuIHByaXYtPmlycTsNCj4gPiA+DQo+ID4g
PiArICAgICAgIGRjZmcgPSBvZl9kZXZpY2VfZ2V0X21hdGNoX2RhdGEoZGV2KTsNCj4gPiA+ICsg
ICAgICAgaWYgKCFkY2ZnKQ0KPiA+ID4gKyAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOw0K
PiA+ID4gKyAgICAgICBwcml2LT5kY2ZnID0gZGNmZzsNCj4gPiA+ICsNCj4gPiA+ICAgICAgICAg
cHJpdi0+Y2xrID0gZGV2bV9jbGtfZ2V0KGRldiwgTlVMTCk7DQo+ID4gPiAgICAgICAgIGlmIChJ
U19FUlIocHJpdi0+Y2xrKSkgew0KPiA+ID4gICAgICAgICAgICAgICAgIGlmIChQVFJfRVJSKHBy
aXYtPmNsaykgIT0gLUVOT0VOVCkgQEAgLTM0OCw3ICszNjgsOA0KPiA+ID4gQEAgc3RhdGljIGlu
dCBpbXhfbXVfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpICB9DQo+ID4gPg0K
PiA+ID4gIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGlteF9tdV9kdF9pZHNbXSA9
IHsNCj4gPiA+IC0gICAgICAgeyAuY29tcGF0aWJsZSA9ICJmc2wsaW14NnN4LW11IiB9LA0KPiA+
ID4gKyAgICAgICB7IC5jb21wYXRpYmxlID0gImZzbCxpbXg3dWxwLW11IiwgLmRhdGEgPSAmaW14
X211X2NmZ19pbXg3dWxwIH0sDQo+ID4gPiArICAgICAgIHsgLmNvbXBhdGlibGUgPSAiZnNsLGlt
eDZzeC1tdSIsIC5kYXRhID0gJmlteF9tdV9jZmdfaW14NnN4DQo+ID4gPiArIH0sDQo+ID4gPiAg
ICAgICAgIHsgfSwNCj4gPiA+ICB9Ow0KPiA+ID4gIE1PRFVMRV9ERVZJQ0VfVEFCTEUob2YsIGlt
eF9tdV9kdF9pZHMpOw0KPiA+ID4gLS0NCj4gPiA+IDIuNy40DQo+ID4gPg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
