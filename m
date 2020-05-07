Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 486A61C82F7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 09:00:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/FBftg6HahmT4LaA6uDyL4j/wIpIamcC7T1rjlaCJLU=; b=jIz4Or7pNvRbDY
	Cs3E3KbN66wjFYGJG2zVyLvLUeLv5MzW7E5xwsMAhe+CQNZJIIpKbskmsIeG0QjePV8YPXAYgaM4m
	q0dNdCXqGAvFndsVmchKtPiDhu8Cr3knBaOd0HZUtL1Sh3wEbqCXBgRgi1D915mbjuU0DMAhkTEEw
	GQHPxB4nYCjw1qkL4/V7gqRDfy9qiufYmRW7Nb/ZgeAfyUPGwJ8aBu7BXNdRMofY4WiWsNs4DoANd
	35GMEjnk5ZWrMAByUB/7KXsvT82ww4JKViX5i/0Gmqeam+iUMU/BXEbfoUyb1+G5PEw5BCk1Qr32T
	Q6f/uPtJQwTEvZ4kEtXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWaW3-0002NU-Nt; Thu, 07 May 2020 07:00:19 +0000
Received: from mail-eopbgr140083.outbound.protection.outlook.com
 ([40.107.14.83] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWaVl-0001km-Hr
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 07:00:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kNFcbjrOJIGUrV4KfYUTgLk5bGOyXKGqBi8eUDs3ynyIplPC3GOoxkLoI3u9pK/91qqZSWB28uB+KrJ24y5T17G51CjYasElb6P1Xnybk8Cz7SVfwZNXjJeAjxs+yg/IPOcCRc6D3w2t54yTC5e5UeqOyLG3qykh8SfbNZeG08/eBB15ljiNay6pS8WPhvrGyelkeswZu5INe81r0odBQG5zkfJl7JLlHZypGIj9IPhb1A7Cq7Issw4wzvvCuPxRwqWS1xf+41wdUw/OD+4TsDxFpBO9mwg8qdHSpR+ObK+CatqYNT0kjHtjCflAtW9a0R6GYOFjhlFAj57by5Ngvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/IAlmpzg5NKvQNR4guObfvHdtkBMxElstzpmy2P143Y=;
 b=DO4nSG/4VyhiOPjOHCGvmh81H1z9bx8VYjxD3xIilAxV4tb90o+6uvY7zOfvjXlhANbm+ihOFoUcKikDuthMH0NFmAiYTAH8MKlYAywJhWy4KLsMtK3SryeqEzJJKk6NYv/0hA3aDYaMMnEaCmJRw6hpZFWiih5Zjksjsexp+6qehXKtVze3M27nnYglNclFcrXXOhh2/6bnLn3icIDN/gIjgKPAfXvpMTV5PgXmNvoM/ztwCJ2+GVC27iBSv5RikCkrg8HkaSwjiJN32nvXGrWU1T4Y7hXbWVfimxv5AJpE9KAgo2wDIzOZpAhiCh16NLeTVL8IkbEHvBConYfuyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/IAlmpzg5NKvQNR4guObfvHdtkBMxElstzpmy2P143Y=;
 b=aZ1Fxz4gFKfxSKHrG0oG+iFObiECWKEj4+RE9g8AqT92wgh4YWANSg64LS0GkMZZ21Tv3d/nGREu8gPy4oTl+W07wlFHw+r0OnIqA4uXd+4VPyuP6rkzWw+vXEwf6k7DEX4VoRaUKfTxXYPEyfMqby7uAEqqS4AEHVdRfTsfRN8=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB4327.eurprd04.prod.outlook.com (2603:10a6:209:40::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.30; Thu, 7 May
 2020 06:59:58 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.2958.030; Thu, 7 May 2020
 06:59:58 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, Leonard Crestez
 <leonard.crestez@nxp.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: RE: [PATCH V3 10/10] clk: imx8mp: mark memrepair clock as critical
Thread-Topic: [PATCH V3 10/10] clk: imx8mp: mark memrepair clock as critical
Thread-Index: AQHWJDWhjZi073lyL0yiNUcbBmTUnaicMYKw
Date: Thu, 7 May 2020 06:59:58 +0000
Message-ID: <AM6PR04MB49662BE27D52DC539B615B9180A50@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1588830979-11586-1-git-send-email-peng.fan@nxp.com>
 <1588830979-11586-11-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1588830979-11586-11-git-send-email-peng.fan@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b0b77458-6861-468a-be70-08d7f254418d
x-ms-traffictypediagnostic: AM6PR04MB4327:|AM6PR04MB4327:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB43274FF4C6A6BC0F5514836480A50@AM6PR04MB4327.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 03965EFC76
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: x+6mKCIouR/OOu/Mrpxzs5hUukM+QS6Q7e13vU+ADdi3lAdwWJJuq32S8lM77LqxLSC7FYpxDwj/I+BOBkQcCBASNgN3QG5tX3++Um0I/ICQINI8JXAZEJ2vl74s+ojZrae0ZxJuEtIL2uuiQL/lh4yRJpUAY/qzxZwP81WDHkMffK+BGePQBJqtojZHAUR6J6TS8q7I5qNZqO3krcDkCO1lt2oijSbHm03VHobxt2ag+bo0z70po7bXUJ+Wf6QMnVsmqreLtHQkFt/lV6IaGzOyJtu67aJceZlkE8ghjW0OyYhYWoCmDcUWRVwCz0Q3H+9/rs4wcd+U8cKcbet0MDExT7llBWWl+QHlj0Xi768gFe9K+plX8weAkNrbl7m00peT6safRYzS0n7GybzYaZxSS7rrbL+ffRR3cxYe9u9ib0IqzV+5PBAn4Wye9iBPVSP2Kt9i/Wrw2KgzQMeiB68OxwzjNHQWxbI1wYJu7AeA34JReeFs62MB1VufnnGfK0klPG0HXDpAQME1/QQxw/kFKZdWu4eAKI3bgwko0U7Sfda9hbaTtO5XS8vcNI3A
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(346002)(396003)(39860400002)(136003)(366004)(33430700001)(6506007)(7696005)(478600001)(316002)(110136005)(186003)(54906003)(5660300002)(33656002)(8676002)(83300400001)(83310400001)(83290400001)(8936002)(9686003)(83280400001)(83320400001)(2906002)(44832011)(55016002)(6636002)(76116006)(4326008)(33440700001)(26005)(64756008)(66476007)(71200400001)(66946007)(52536014)(86362001)(66556008)(66446008)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: syZguA6TliGmSxRoHx4Wd1+aiIg4nbrOGs5eQUvPZ95dUuyM3gxDY1usquKf3SnBRLDOyxBAPdOYhbJL3jGwHfWmrdqDpcehMtpbmWxrRM1x+V5WuwQ1ZmreLhSp6U+qzCv+SY9xol3XJlguVUVKF4V+lZw9P7qNBUnDCfGUtP0jH+6wxFHN/w/HDK5Ee6jQNn7gE+EZlFTscNup01UY1ZO2HV5YYoL6ss05fjDpMBelR+2flUglCbe/P83spCc75Ch0AFelHay1oEdC6w8KLd4qHiFcSe3sWsOBOVh+lpXaiUYNxAt7EZhJXCtViogjGNPvvUpjfsx5BAJQmihyOM2tIz3B/S3w398GzeNcBFjMw5yvrxVNXz/Mo3syHSyT6GaSoWVld2YoFjJ6bH8I6MYMYY4zJ679sF73tjjCF4Mn9Cn1QcbOuW7SSBjU/r5Qn2i4Zg2chaSG+Pm+e07zb2e0C9cnTC6blRTB38RvbojcnCZOLf8t5uSQePZJcFbj5OTEyegz8LkkZ5HtFr9LLlKMztGCjgDHM1kDH3I31l+e2mOaEo9wKMoRqkYHzA84r66EcRVQ5xOSypyacVNNx+xUk4WI8YPuTaRONfkPuu/PwEnbfqcUYMzNOsE4cfT5Se4OguQ0kXFo6KOWXohdEMABWl2jMb29dB+kP7emh3OO36T1LNx+RQyhqlocXcbvnZavdonDoIM13mAEf07M3AtyeK1YJwj3ut7ckwZwriqVVYJycneirdy2IJ6X+dqImUpTx6RITbswG/C/+XGptL4C77VFhkQrhb7eAEniveY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0b77458-6861-468a-be70-08d7f254418d
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2020 06:59:58.6637 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zHSdP786ry3HK/wtdEfYwHds7y96duUbpe9AtCcc4SF+8lDpttdr/oayxUZXKIy4B5k3gwMxIe/8C1W7BKX76Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4327
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_000001_615324_6D8C9752 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.14.83 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.14.83 listed in wl.mailspike.net]
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
 Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PiBGcm9tOiBQZW5nIEZhbiA8cGVuZy5mYW5AbnhwLmNvbT4NCj4gU2VudDogVGh1cnNkYXksIE1h
eSA3LCAyMDIwIDE6NTYgUE0NCj4gDQo+IElmIG1lbXJlcGFpciByb290IGNsb2NrIGluIENDTSBp
cyBkaXNhYmxlZCwgdGhlIG1lbW9yeSByZXBhaXIgbG9naWMgaW4gSERNSU1JWA0KPiBjYW7igJl0
IHdvcmsuIFNvIGxldCdzIG1hcmsgaXQgYXMgY3JpdGljYWwgY2xvY2suDQoNCkEgc21hbGwgcXVl
c3Rpb24gaGVyZToNCklzIHRoaXMgY2xvY2sgY3JpdGljYWwgZm9yIHRoZSB3aG9sZSBzeXN0ZW0g
b3Igb25seSBmb3IgSERNSU1JWD8NCldoYXQgaWYgSERNSUlYIGlzIG5vdCBlbmFibGVkPw0KDQpS
ZWdhcmRzDQpBaXNoZW5nDQoNCj4gDQo+IFJldmlld2VkLWJ5OiBMZW9uYXJkIENyZXN0ZXogPGxl
b25hcmQuY3Jlc3RlekBueHAuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBQZW5nIEZhbiA8cGVuZy5m
YW5AbnhwLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2Nsay9pbXgvY2xrLWlteDhtcC5jIHwgMiAr
LQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvaW14L2Nsay1pbXg4bXAuYyBiL2RyaXZlcnMvY2xr
L2lteC9jbGstaW14OG1wLmMgaW5kZXgNCj4gYjRkOWRiOWQ1YmYxLi5hN2M1OWQ3YTQwZGUgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvY2xrL2lteC9jbGstaW14OG1wLmMNCj4gKysrIGIvZHJpdmVy
cy9jbGsvaW14L2Nsay1pbXg4bXAuYw0KPiBAQCAtNTkwLDcgKzU5MCw3IEBAIHN0YXRpYyBpbnQg
aW14OG1wX2Nsb2Nrc19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlDQo+ICpwZGV2KQ0KPiAg
CWh3c1tJTVg4TVBfQ0xLX1ZQVV9HMl0gPSBpbXg4bV9jbGtfaHdfY29tcG9zaXRlKCJ2cHVfZzIi
LA0KPiBpbXg4bXBfdnB1X2cyX3NlbHMsIGNjbV9iYXNlICsgMHhhMTgwKTsNCj4gIAlod3NbSU1Y
OE1QX0NMS19DQU4xXSA9IGlteDhtX2Nsa19od19jb21wb3NpdGUoImNhbjEiLA0KPiBpbXg4bXBf
Y2FuMV9zZWxzLCBjY21fYmFzZSArIDB4YTIwMCk7DQo+ICAJaHdzW0lNWDhNUF9DTEtfQ0FOMl0g
PSBpbXg4bV9jbGtfaHdfY29tcG9zaXRlKCJjYW4yIiwNCj4gaW14OG1wX2NhbjJfc2VscywgY2Nt
X2Jhc2UgKyAweGEyODApOw0KPiAtCWh3c1tJTVg4TVBfQ0xLX01FTVJFUEFJUl0gPQ0KPiBpbXg4
bV9jbGtfaHdfY29tcG9zaXRlKCJtZW1yZXBhaXIiLCBpbXg4bXBfbWVtcmVwYWlyX3NlbHMsIGNj
bV9iYXNlICsNCj4gMHhhMzAwKTsNCj4gKwlod3NbSU1YOE1QX0NMS19NRU1SRVBBSVJdID0NCj4g
K2lteDhtX2Nsa19od19jb21wb3NpdGVfY3JpdGljYWwoIm1lbXJlcGFpciIsIGlteDhtcF9tZW1y
ZXBhaXJfc2VscywNCj4gK2NjbV9iYXNlICsgMHhhMzAwKTsNCj4gIAlod3NbSU1YOE1QX0NMS19Q
Q0lFX1BIWV0gPSBpbXg4bV9jbGtfaHdfY29tcG9zaXRlKCJwY2llX3BoeSIsDQo+IGlteDhtcF9w
Y2llX3BoeV9zZWxzLCBjY21fYmFzZSArIDB4YTM4MCk7DQo+ICAJaHdzW0lNWDhNUF9DTEtfUENJ
RV9BVVhdID0gaW14OG1fY2xrX2h3X2NvbXBvc2l0ZSgicGNpZV9hdXgiLA0KPiBpbXg4bXBfcGNp
ZV9hdXhfc2VscywgY2NtX2Jhc2UgKyAweGE0MDApOw0KPiAgCWh3c1tJTVg4TVBfQ0xLX0kyQzVd
ID0gaW14OG1fY2xrX2h3X2NvbXBvc2l0ZSgiaTJjNSIsDQo+IGlteDhtcF9pMmM1X3NlbHMsIGNj
bV9iYXNlICsgMHhhNDgwKTsNCj4gLS0NCj4gMi4xNi40DQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
