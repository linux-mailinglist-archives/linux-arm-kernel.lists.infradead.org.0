Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE9F110826D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 Nov 2019 08:08:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z11rU96tairhULl9OENEY18PiNYTD+nc0nHyls4UTJk=; b=LjtR4QbkT/R0Lj
	aN3BwzRd5FVUS4MJs8Wj3Z0uBdr7B7IWRHpCLlOSKDfysZbMpanok8xcMRhZBO0mUcz/Vr5dpVeT2
	LPcu+Okdo/xCqYG5sphz1Qm2KXXdcf3YEle1ev5uZD2Un1XW6Woriu6OITCEIXJdVzf0+eZUgdz6/
	CDNllsHaw+lmqjQvspw7JmntutsWghAqHztVgK4jCzWSdrB0EU3HWfwi2lq5IbWAbP1vlV4GUiFRl
	yjwJLgU1nCk8j/mVnP1OHmOwqNuzr6JV6nQenjeiM12UAln7LzI5XMilA/G87kYHX+fn/+p/cIxjD
	JDTZX0wShnE0Lr827UmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYlzn-00084D-2e; Sun, 24 Nov 2019 07:07:47 +0000
Received: from mail-eopbgr30116.outbound.protection.outlook.com
 ([40.107.3.116] helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYlze-00083r-78
 for linux-arm-kernel@lists.infradead.org; Sun, 24 Nov 2019 07:07:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LZP4skhIi0M+Hf1J1sduhP/0KlJaMfLs9g1D2mqFXhdLL9bvv6yzmrIZpbNg4EQZl/KiI3z7HS3nKgLYIyf4G/2LQ7X3fQ5y7G4c3rJ+a7vhe3+/Az4gqblsq4DCj5kXTm+o6NVzNpKR4OZxg9TaM5Brv/2j5A7T0Ln/gXlgBw3KMM64d0zBnZja3uppClXVFghSTDGn3Raxc+nXBM+cMHoGfhZNgeXGWBRSAGUT1e2sfPQmnxRA/u5S01Sjs5or3M/xpKqXRYXasaF3RSlUNBVhwi+eapvJEUl77ouzG5AJnPL/Vjm4OGJhTa80Cf3W9BlbpL5iflhkTkjYveKUtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Zwx/6MR5TPkCWKlOnJZG/wA20WPt5dkFAo7/OcE5xJk=;
 b=Pk1mODNyHfnRDW8LUnnfsLJSXZ9OliDuurllXLB92hi4U8Hx9AG/3IObUNwzh5nRFhupKs/IkQcrJsUbYmPf06BC1ELhKEZxXK/8ATgyJxRHiHGP5W7TxHQh3+rOrmXlc+Rgm6iAxrwe67RyeRWM4jse/FkL1IsAU32dOZ021N6UTdoMQvHaNF5eAmhO+PaWyf/VVpcJIYuib4uyFR8CIzkp34zqQ5HGcu4Byk9vOOep+rFqneeaJ+AYFK/oGI/ZS+4FLWWlMlTtBKxJ2eyJyBkgWqmEWq7KAXPISsVN5hDZE7Efb0TR6g9uB43u43AZSe2Nhz6LiN1KEFe3SyS4jA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=voleatech.de; dmarc=pass action=none header.from=voleatech.de;
 dkim=pass header.d=voleatech.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=voleatech.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Zwx/6MR5TPkCWKlOnJZG/wA20WPt5dkFAo7/OcE5xJk=;
 b=dYXb3JRFNSPmPS2P3Na17qkaEzRt4wRpOoZEdK9opFfEsslJDrAprRBPI3XuNZHVQJDsQqX/NeJ0l+OC/DWAptixJvIrNuHc5fF6BUOX440SARkIwa4+cKgn1iW4DAbF+j4dYNZPDhH5AwE8hQFJcbQ38pYNEnbvghMoImP+im8=
Received: from AM0PR05MB5156.eurprd05.prod.outlook.com (20.178.20.19) by
 AM0PR05MB6371.eurprd05.prod.outlook.com (20.179.35.203) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.21; Sun, 24 Nov 2019 07:07:34 +0000
Received: from AM0PR05MB5156.eurprd05.prod.outlook.com
 ([fe80::d9d5:8f93:482:2a21]) by AM0PR05MB5156.eurprd05.prod.outlook.com
 ([fe80::d9d5:8f93:482:2a21%2]) with mapi id 15.20.2474.021; Sun, 24 Nov 2019
 07:07:34 +0000
From: Sven Auhagen <sven.auhagen@voleatech.de>
To: "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>
Subject: CP110 Comphy Issue
Thread-Topic: CP110 Comphy Issue
Thread-Index: AQHVopXYeyT7V1R5sE6r1B076sCTaA==
Date: Sun, 24 Nov 2019 07:07:34 +0000
Message-ID: <7BB0B44E-A78D-4DDF-962E-5C8130B6F31A@voleatech.de>
Accept-Language: en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sven.auhagen@voleatech.de; 
x-originating-ip: [78.43.2.70]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4af3233c-b350-4916-89c3-08d770acfb23
x-ms-traffictypediagnostic: AM0PR05MB6371:
x-microsoft-antispam-prvs: <AM0PR05MB6371B570411165729B27A450EF4B0@AM0PR05MB6371.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 02318D10FB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39830400003)(376002)(136003)(366004)(396003)(346002)(189003)(199004)(2501003)(14454004)(102836004)(6116002)(4326008)(15974865002)(81156014)(36756003)(8936002)(99286004)(2351001)(508600001)(6506007)(66066001)(33656002)(25786009)(86362001)(81166006)(305945005)(7736002)(66946007)(54906003)(6512007)(3846002)(71200400001)(2616005)(7116003)(6436002)(6916009)(26005)(64756008)(66556008)(66476007)(66446008)(8676002)(316002)(44832011)(14444005)(256004)(186003)(6486002)(76116006)(2906002)(66574012)(6306002)(71190400001)(5640700003)(5660300002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:AM0PR05MB6371;
 H:AM0PR05MB5156.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: voleatech.de does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: =?utf-8?B?WHNDQUNUait6eDMwdENrQlVWcGdWazQrNU5LTXZuUWZvVDg0bDNsUEdEb2ZM?=
 =?utf-8?B?MStncUdQRXJIbnR3K1RDem4xUTJxL1lpM0p6R1g2Rm1pRzBCendhT2FHQmNl?=
 =?utf-8?B?UFd1aGNLM1ltdTJsSzlKL28vbEQ4dEpTa2dQYyt5a0Z2RVZFT2ZneUlEZmhD?=
 =?utf-8?B?d3AwSnpmeWt5RHUrMGt6Y1dBTlpiMG1ISGRObjB0T3RtVkpqVkV5aEwwR2N1?=
 =?utf-8?B?S2xNR3hkZ3dTREkvcEhUdmpsZU9DSzFxazgyMloyLzcyMHowZmhKTW9LT2k1?=
 =?utf-8?B?WGZvS0JRTWJhK2FRL1o3TFM2OW9XR3lEWHRmQzRiaVdlakREa2ttNzQ1cndz?=
 =?utf-8?B?MjBDejRQWmN2M2VFV2lkNnBBRWFqcENqSC9XV3ZHNUg1d2FsZTlFZ0JmT2VZ?=
 =?utf-8?B?K0xENzdSOXplZSt1YWhZUVdTM1hkcEF2R2xYeWI2b1ZxMUNkMWJWRjB1OTlw?=
 =?utf-8?B?cFhnMEhDRXJobjFzWUJpK3hZNzRYWjh3OXBCTzV5Uzc1b0pVVWtUSDlJRGF2?=
 =?utf-8?B?WVltN1loSXl6QkhFZnlBSERZV1pvQ3lPbDFnS1FYd1lpV2puS3MvaFcwQWJG?=
 =?utf-8?B?bmNsYXdOaHhXV0ozQVB5dkRoZDhyUmFZMlJWZ2Q0c3ZiTXpobURvcCthaWw5?=
 =?utf-8?B?K0JFOXBmTmlJUGJLQ3l2MitVZGFQQmFhRkRUb00zU21VWTdCbUdBYTN6d3Rw?=
 =?utf-8?B?V1RQSzlHcnQxWlBqMVVLeEV1UzF0U09YYS9vT2xHd1lGVk4vZzRRMnBYYVJr?=
 =?utf-8?B?VXoxVG1WcHF1Nk95QXM1WU5QNUdJVndyM2dSZzZLb2ZDaXZVWHladWFhWmlK?=
 =?utf-8?B?VDBjTWN0YjV1Z1hmc1RLZzUzc2ZJZlpseW13S29iRzNtVkp4TXkxRzFHaTVx?=
 =?utf-8?B?bExTUEZ2YkU4Ni9GenJKRDhBcGEvVFhTWExhSitJMzROaWpoOEI5dWNGK2pL?=
 =?utf-8?B?V0NXY0RMWjNZWCs4Wjh5QUphb0pZeHB5TWYwUGZDZnNVS2lIQ0RySnVaRzBK?=
 =?utf-8?B?OW5PeGNLOU1rUU04V09Vak4xcVZjdlVyWVN0OUJUczhVUVkvSEgrdklBVkhT?=
 =?utf-8?B?bEVNenkyOW1ob1hvMWFZbEJnWEphaGwyZjBVSGZnU0ttMkNDMURIM0pQS1Qr?=
 =?utf-8?B?Q0FpQ1N3dENldmF1bk9CRmtZSDJQWkI0VjVEVlZzM2phQ1EyTzJvZWJWUlg5?=
 =?utf-8?B?dUJ4T2xmNmhkSlVmNmE2NnhMY24xWDFrL2pqdDlsaFdydHo4azRXSDh4MHNF?=
 =?utf-8?B?QisxaFVJdlVhaVREMkdqU2xZcUc0T1VyUXRISnAwUWFVRzV6SFlvRkJZbUh0?=
 =?utf-8?B?NnRKV2J0SGZIT2NXMzQ1ei9Zb3NidmZpaU5yUDhRU1BWTFRJU0x4ZVJXRlRD?=
 =?utf-8?B?TElER2VYNUpmZmVwUjZEa05kVXlodlFpQkQ1eW5xL1p2TWI3WGh3cWg0aWps?=
 =?utf-8?B?RFl5MWNieVJjU2JiYkk5cnBTU3FiMDI4NlhETDBiZ3NVOFdzSTVlVUtHZXF3?=
 =?utf-8?B?QVdlNEtOT25wREVCMUU4bkN6NWp1QytWRE5DUk16R05mN2U0NHBTR3M2UW9w?=
 =?utf-8?B?b01KR0t0Nlc3S3hnYSt3MzRJNlNIczdmQUVIbjNEaHpzU0I0WVVjMm0xNDFl?=
 =?utf-8?B?WGJCSFFIT1JSRnFOZ2pTSytLRzd3ZmtWejdzVkYrMWdPdmJkZi91bzZDVXdR?=
 =?utf-8?B?eTRWd1JEQzN6Z1pTSUt0SU1lRUoxeEo4amxmYVgyaHJ1WXJYWkNVUzkvOHNJ?=
 =?utf-8?B?WG5lV3hoVk13WXlENWtjNS94aVRXS2Uxd200MHljUlJjZjVWeVpOUzJpa0lk?=
 =?utf-8?B?bmJkN0Q0eVBwTkp0bmY4SWxBbHBLSHlPcGdkUXB6OWdlRXUzY3B0cFJ5dUs0?=
 =?utf-8?B?OUozRUV4eXcyM210ZVdVdmVDT0xNaTNrRTB3WGY1R3dnTGd0WFU2TzdsMHJD?=
 =?utf-8?B?Q1RPMGNXTVo5VHQ2M3ZtbjRyNFY3dEtrK2xNeWlsdXVBY29TVHpuYThtOUFL?=
 =?utf-8?B?Ky9Qd1Z2ZW05dm5rQkJrc3pyWnVoYVFpOUlXV0ttNHVyL1Y5WHhxZkZDVHFD?=
 =?utf-8?B?M2lPMXRWL3k2dlFScXdrV1l3TUZuZC9HUWkySmVGZVl2b2g3TUppVU9jdHRa?=
 =?utf-8?B?OVRDQWtKMzZRRjdGM1J3b2l5QVhCRXFaM1BnQXZIZWx4cHZncUVlWW5YQkMr?=
 =?utf-8?B?bmdyYVpGRExIbDkyV3E0YTlwNzNWSHQxWXVjMCtyWXluM2tpRWhjc3dVRXFh?=
 =?utf-8?B?RTVuSmROQ3grNGtYcDNGTzV3dms3T29uK2IwNlp5MDNaek1jaWpTR0FOZGI2?=
 =?utf-8?B?UHAvcUZ0ZStTTWtHSzJXdHd6OU5Uc0ZvVWVSUTR4UmxKaUs1UW56L3p3eVVt?=
 =?utf-8?Q?YuONDZ6vmz9EiloAPtXcRETffCva4ZoX0mrnj?=
x-ms-exchange-transport-forked: True
Content-ID: <F71693E94B6A5440B8F25326ED21A919@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: voleatech.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 4af3233c-b350-4916-89c3-08d770acfb23
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Nov 2019 07:07:34.5187 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b82a99f6-7981-4a72-9534-4d35298f847b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: H9IMhZS0cOCu10ZXTumVnZAH+3pap1SzItwoe8IOkEvpo3H+IjuF/Tz576k6nghDRVGS3/HUH3O7nvKKQTF63bkaeyZvL0z1EXV0+kJ4m8k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB6371
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_230738_266622_134F58E0 
X-CRM114-Status: UNSURE (   7.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.116 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Baruch Siach <baruch@solid-run.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWlxdWVsLA0KDQpJIGFtIHRlc3RpbmcgS2VybmVsIDUuNCBSQzggd2l0aCB0aGUgbmV3IENQ
MTEwIGNvbXBoeSBpbml0aWFsaXphdGlvbiBhbmQgaXQgZG9lcyBub3Qgd29yayBmb3Igb3VyIGN1
c3RvbSBib2FyZCBvbiBDUCAxIFBDSUUwLg0KSXQgaGFuZ3Mgb24gcGh5IHVwIGluZGVmaW5pdGVs
eSBkdXJpbmcgYm9vdC4NCg0KQ1AwIFBDSUUwIHdvcmtzIGZpbmUuDQoNCkkgYW0gdXNpbmc6DQor
JmNwMV9wY2llMCB7DQorICAgICAgICAgICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOw0K
KyAgICAgICAgICAgICAgcGluY3RybC0wID0gPCZjcDBfcGNpMV9yZXNldF9waW5zPjsNCisgICAg
ICAgICAgICAgIG51bS1sYW5lcyA9IDwxPjsNCisgICAgICAgICAgICAgIC8vbnVtLXZpZXdwb3J0
ID0gPDg+Ow0KKyAgICAgICAgICAgICAgcmVzZXQtZ3Bpb3MgPSA8JmNwMF9ncGlvMiAxIEdQSU9f
QUNUSVZFX0xPVz47DQorICAgICAgICAgICAgICAvL3J4LWRpc2FibGUtZ3BpbyA9IDwmY3AwX2dw
aW8yIDIwIEdQSU9fQUNUSVZFX0xPVz47DQorICAgICAgICAgICAgICBwaHlzID0gPCZjcDFfY29t
cGh5MCAwPjsNCisgICAgICAgICAgICAgIHBoeS1uYW1lcyA9ICJjcDEtcGNpZTAteDEtcGh5IjsN
CisgICAgICAgICAgICAgIHN0YXR1cyA9ICJva2F5IjsNCit9Ow0KDQpBbmQgdGhpcyBvbmUgd29y
a3MNCg0KKyZjcDBfcGNpZTAgew0KKyAgICAgICAgICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZh
dWx0IjsNCisgICAgICAgICAgICAgIHBpbmN0cmwtMCA9IDwmY3AwX3BjaTBfcmVzZXRfcGlucz47
DQorICAgICAgICAgICAgICBudW0tbGFuZXMgPSA8MT47DQorICAgICAgICAgICAgICAvL251bS12
aWV3cG9ydCA9IDw4PjsNCisgICAgICAgICAgICAgIHJlc2V0LWdwaW9zID0gPCZjcDBfZ3BpbzIg
MCBHUElPX0FDVElWRV9MT1c+Ow0KKyAgICAgICAgICAgICAgLy9yeC1kaXNhYmxlLWdwaW8gPSA8
JmNwMF9ncGlvMiAxOSBHUElPX0FDVElWRV9MT1c+Ow0KKyAgICAgICAgICAgICAgcGh5cyA9IDwm
Y3AwX2NvbXBoeTAgMD47DQorICAgICAgICAgICAgICBwaHktbmFtZXMgPSAiY3AwLXBjaWUwLXgx
LXBoeSI7DQorICAgICAgICAgICAgICBzdGF0dXMgPSAib2theSI7DQorfTsNCisNCg0KSSBhbSB1
c2luZyB1LWJvb3QgMjAxOS4wNCBhbmQgQVRGIDIuMS4NClBDSWUgaXMgaW5pdGlhbGl6ZWQgYnkg
VS1Cb290Lg0KDQpJIHdhcyB1c2luZyBhIHBvcnRlZCB2ZXJzaW9uIG9mIHRoZSBjb21waHkgY29k
ZSBmcm9tIHRoZSBtYXJ2ZWxsIGxpbnV4IGdpdGh1YiBiZWZvcmUgd2hpY2ggZGlkIG5vdCBoYXZl
IHRoaXMgcHJvYmxlbS4NCg0KTGV0IG1lIGtub3cgaWYgSSBjYW4gZGVidWcgYW55dGhpbmcgaGVy
ZSBvbiBteSBlbmQuDQoNCkJlc3QNClN2ZW4NCg0KDQpCZXN0ZSBHcsO8w59lL0Jlc3QgcmVnYXJk
cw0KDQpTdmVuIEF1aGFnZW4NCkRpcGwuIE1hdGguIG9lYy4sIE0uU2MuDQpWb2xlYXRlY2ggR21i
SA0KSFJCOiBCIDc1NDY0Mw0KVVNUSUQ6IERFMzAzNjQzMTgwDQpHcmF0aHdvaGxzdHIuIDUNCjcy
NzYyIFJldXRsaW5nZW4NClRlbDogKzQ5IDcxMjE1Mzk1NTANCkZheDogKzQ5IDcxMjE1Mzk1NTEN
CkUtTWFpbDogc3Zlbi5hdWhhZ2VuQHZvbGVhdGVjaC5kZQ0Kd3d3LnZvbGVhdGVjaC5kZTxodHRw
czovL3d3dy52b2xlYXRlY2guZGU+DQpEaWVzZSBJbmZvcm1hdGlvbiBpc3QgYXVzc2NobGllw59s
aWNoIGbDvHIgZGVuIEFkcmVzc2F0ZW4gYmVzdGltbXQgdW5kIGthbm4gdmVydHJhdWxpY2ggb2Rl
ciBnZXNldHpsaWNoIGdlc2Now7x0enRlIEluZm9ybWF0aW9uZW4gZW50aGFsdGVuLiBXZW5uIFNp
ZSBuaWNodCBkZXIgYmVzdGltbXVuZ3NnZW3DpMOfZSBBZHJlc3NhdCBzaW5kLCB1bnRlcnJpY2h0
ZW4gU2llIGJpdHRlIGRlbiBBYnNlbmRlciB1bmQgdmVybmljaHRlbiBTaWUgZGllc2UgTWFpbC4g
QW5kZXJlbiBhbHMgZGVtIGJlc3RpbW11bmdzZ2Vtw6TDn2VuIEFkcmVzc2F0ZW4gaXN0IGVzIHVu
dGVyc2FndCwgZGllc2UgRS1NYWlsIHp1IGxlc2VuLCB6dSBzcGVpY2hlcm4sIHdlaXRlcnp1bGVp
dGVuIG9kZXIgaWhyZW4gSW5oYWx0IGF1ZiB3ZWxjaGUgV2Vpc2UgYXVjaCBpbW1lciB6dSB2ZXJ3
ZW5kZW4uIEbDvHIgZGVuIEFkcmVzc2F0ZW4gc2luZCBkaWUgSW5mb3JtYXRpb25lbiBpbiBkaWVz
ZXIgTWFpbCBudXIgenVtIHBlcnPDtm5saWNoZW4gR2VicmF1Y2guIEVpbmUgV2VpdGVybGVpdHVu
ZyBkYXJmIG51ciBuYWNoIFLDvGNrc3ByYWNoZSBtaXQgZGVtIEFic2VuZGVyIGVyZm9sZ2VuLiBX
aXIgdmVyd2VuZGVuIGFrdHVlbGxlIFZpcmVuc2NodXR6cHJvZ3JhbW1lLiBGw7xyIFNjaMOkZGVu
LCBkaWUgZGVtIEVtcGbDpG5nZXIgZ2xlaWNod29obCBkdXJjaCB2b24gdW5zIHp1Z2VzYW5kdGUg
bWl0IFZpcmVuIGJlZmFsbGVuZSBFLU1haWxzIGVudHN0ZWhlbiwgc2NobGllw59lbiB3aXIgamVk
ZSBIYWZ0dW5nIGF1cy4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
