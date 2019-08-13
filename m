Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD378B5BA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 12:37:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pYU3PQqxAWPf+tyb/zlPP3/f9tFhP+qEObvGlVx/uek=; b=AWZGBBouHIeR4C
	JahpG5ft4wftudtqyE210Bs2fNMeT3mYOyJyoCdlwZ6nefsq69xQjNgAWCIvXcDBlsNBXDpp/MzUr
	sYHJ3O4TvE5GUBqpbWr3fJZ/OTlFEkf9+8PABMAoryQWIJdfYfUlT5QZHH0pojnivgSHZnnztn1Eb
	mxUbqHSKesZH3z+YYjs3cZpdOd8HT9md+FZ9fMU51yJZLtABGPAVP35800gvlQTr7VyVn2dy8exbo
	ECSsYI9Aubsofye9bpkaHxcZfNF7gdls/a4iQyBunCgI8rK/6w4sBXilUGVTMToW2GAweu/qus8tS
	fbyzvGWMnir46QUCgf1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxUAn-0002f8-Bh; Tue, 13 Aug 2019 10:37:01 +0000
Received: from mail-db5eur01on060e.outbound.protection.outlook.com
 ([2a01:111:f400:fe02::60e]
 helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxUAY-0002dw-7G
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 10:36:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=frAlh6Sytz7K67UkI7/GxkUKPamnDZHOocQolyDIV7zzXHabKO5KLIuysNvlbr19dEWNENkhSYf/8LOh6dVA1oldQT+2c/59lTzCJbHlRXwCRWI3ZqYtIWuyZk8rUCcHesb4izALA7dpNCaHAFN04VYPqdaS/t6B3yU40pJCyhyXBclTj6aIw4aKlP67vRmEZCoqOwoWQ1dt4PxA3x7ha9BdrcH1HsIqGbdj4Qy7K7GlH2joxdm1ZKd4lf5rMnvZfeXSvsrz15Fbh69aWenwVgYO9Kq7PNGuUW/e938/PBwl/5p0n0e2dRb1P2R9hcPyiwvbyw4S0uFKoGNUGE1BGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L328Gjry8w2xCMnLfGXmL5AVe0M06JI2pNJW97tNV/I=;
 b=eGwWIkyNNfcOLkU122zjukUaRrBUHd4FMSLanTiQEi3EWWB95yErCiXbyI67jIS1u432IO6UVZb9SfBzkpHrPE+KQ7FCEaW2KA7AHVVkMPHvh6uJI/HNa80o9wkB3fUxpRLi6lb4825PhvUm36xSMh0BZnLbhjrfTWTrvXGnh6nNArybl8hlfRGoKmxYLqVwzOOc3+2T62I1lcdpL53MbXWsJrqt2ufsTR2ZZN7YWAMF8CRoqvPZESTTRiB4WehB27XX9ymukLza84tMRBvQ+ldjEEJHNFtgcSVhi8IkZXWIxfeQ1CyW8PoIlSNvK0+vfbOGq276MkJmrmHO+eoXHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L328Gjry8w2xCMnLfGXmL5AVe0M06JI2pNJW97tNV/I=;
 b=FP7I9Qd92hN5y14zJm6vamXGrh8xhF5mumSVTONeNL6uBAKcRz10zoKoTLO99S5RYf0BeQs2hDRrgug5NH59H40un7qizRKWWnIklEACmv/2ELq0GypNVsGpRAb1IQFEtuAYlGHOW/O0b9EAwA1rLCHTlR+6adO/N479TC5ay7U=
Received: from DB8PR04MB6715.eurprd04.prod.outlook.com (20.179.251.14) by
 DB8PR04MB5930.eurprd04.prod.outlook.com (20.179.8.217) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.18; Tue, 13 Aug 2019 10:36:41 +0000
Received: from DB8PR04MB6715.eurprd04.prod.outlook.com
 ([fe80::b0ab:d127:ca27:e1fa]) by DB8PR04MB6715.eurprd04.prod.outlook.com
 ([fe80::b0ab:d127:ca27:e1fa%7]) with mapi id 15.20.2136.018; Tue, 13 Aug 2019
 10:36:41 +0000
From: Robert Chiras <robert.chiras@nxp.com>
To: "agx@sigxcpu.org" <agx@sigxcpu.org>
Subject: Re: [EXT] Re: [PATCH 00/10] Improvements and fixes for mxsfb DRM
 driver
Thread-Topic: [EXT] Re: [PATCH 00/10] Improvements and fixes for mxsfb DRM
 driver
Thread-Index: AQHVLCOX39rb+e39GkGlwLk9dRqh9Kb5KeuAgAADyQA=
Date: Tue, 13 Aug 2019 10:36:41 +0000
Message-ID: <1565692600.3209.43.camel@nxp.com>
References: <1561555938-21595-1-git-send-email-robert.chiras@nxp.com>
 <20190813102307.GA22623@bogon.m.sigxcpu.org>
In-Reply-To: <20190813102307.GA22623@bogon.m.sigxcpu.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.18.5.2-0ubuntu3.2 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=robert.chiras@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 318e5352-9a9a-469c-a54b-08d71fda212e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR04MB5930; 
x-ms-traffictypediagnostic: DB8PR04MB5930:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB59306E9803DAF62A091B405EE3D20@DB8PR04MB5930.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01283822F8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(136003)(346002)(39860400002)(376002)(51914003)(189003)(199004)(103116003)(86362001)(229853002)(7736002)(26005)(66476007)(66446008)(8936002)(305945005)(91956017)(1730700003)(81166006)(6486002)(2906002)(64756008)(76116006)(81156014)(7416002)(66556008)(66946007)(8676002)(256004)(2351001)(6916009)(6436002)(50226002)(45080400002)(966005)(3846002)(478600001)(6116002)(486006)(25786009)(446003)(6246003)(53936002)(44832011)(2501003)(36756003)(4326008)(6506007)(102836004)(316002)(66066001)(6512007)(11346002)(5640700003)(76176011)(2616005)(6306002)(99286004)(71190400001)(71200400001)(186003)(476003)(14454004)(54906003)(5660300002)(99106002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB5930;
 H:DB8PR04MB6715.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: wdFxeYZ9CD1LoWeSKjOLwkqA3x8Q9Ernj90G9Ih9C1/UQAZwE1ceYUnxodRNbhhezHgr1d5g54Meconsh8HkdptBUqmEtCvYNACSjBnKZcpUEVmU6ib2yLMMXMHEdlG6TseNM8VJOFUSdJT2Xh3aBbkVfz20IKN0886ARYZD4wNoYc3cuTf1PGGJTIGNrbEFJhqNhOVMClPpnFdEFN6oGIrC/xfgeIfEwhAmz58jiqIpuWkSzQxgdvE0pEJY2ZW/yFqi7RWgOafdwCcLAVGDf6cYvg58CjfnTbKyu0u5pLk6ceXEuKJ2INKnwnkADSfcQ59blCKuTBAd0EW8wu5SWRK1V2eZ70WycpTMlinYgFcljTRq9vfzTZ10nSz/V54kNWFPuWTJFsOq5qJvKUAopDuspGxt9xQJfMVe2QCF+gQ=
Content-ID: <AFA2B89B03FD444FBEABF1AE1F1FD100@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 318e5352-9a9a-469c-a54b-08d71fda212e
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Aug 2019 10:36:41.4292 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: robert.chiras@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB5930
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_033646_337312_6C91E900 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe02:0:0:0:60e listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "marex@denx.de" <marex@denx.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "airlied@linux.ie" <airlied@linux.ie>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stefan@agner.ch" <stefan@agner.ch>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, "daniel@ffwll.ch" <daniel@ffwll.ch>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTWEsIDIwMTktMDgtMTMgYXQgMTI6MjMgKzAyMDAsIEd1aWRvIEfDvG50aGVyIHdyb3RlOg0K
PiBIaSBSb2JlcnQsDQo+IE9uIFdlZCwgSnVuIDI2LCAyMDE5IGF0IDA0OjMyOjA4UE0gKzAzMDAs
IFJvYmVydCBDaGlyYXMgd3JvdGU6DQo+ID4gDQo+ID4gVGhpcyBwYXRjaC1zZXQgaW1wcm92ZXMg
dGhlIHVzZSBvZiBlTENESUYgYmxvY2sgb24gaU1YIDggU29DcyAobGlrZQ0KPiA+IDhNUSwgOE1N
DQo+ID4gYW5kIDhRWFApLiBGb2xsb3dpbmcsIGFyZSB0aGUgbmV3IGZlYXR1cmVzIGFkZGVkIGFu
ZCBmaXhlcyBmcm9tDQo+ID4gdGhpcw0KPiA+IHBhdGNoLXNldDoNCj4gVGhlcmUgd2FzIHNvbWUg
ZmVlZGJhY2sgb24gdmFyaW91cyBwYXRjaGVzLCBkbyB5b3UgaW50ZW5kIHRvIHBpY2sNCj4gdGhh
dA0KPiB1cCBhZ2Fpbj8gVGhhdCB3b3VsZCBiZSBjb29sIHNpbmNlIHRoZXJlJ3Mgc29tZSBvdmVy
bGFwcGluZyB3b3JrDQo+IHBvcHBpbmcNCj4gdXAgYWxyZWFkeSBlLmcuIGluDQo+IA0KPiDCoMKg
wqDCoGh0dHBzOi8vZXVyMDEuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1o
dHRwcyUzQSUyRiUyDQo+IEZwYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnJTJGc2VyaWVzJTJGNjQ1
OTUlMkYmYW1wO2RhdGE9MDIlN0MwMSU3Q3JvYg0KPiBlcnQuY2hpcmFzJTQwbnhwLmNvbSU3QzZj
YTY3MjRhNjU2YjQxOTEyZjA0MDhkNzFmZDgzZGEwJTdDNjg2ZWExZDNiYzINCj4gYjRjNmZhOTJj
ZDk5YzVjMzAxNjM1JTdDMCU3QzAlN0M2MzcwMTI4ODU5MTg2MzExOTYmYW1wO3NkYXRhPWIzQ3Ji
TnUlDQo+IDJGY3NXQk9BJTJCY2FRTFglMkJybHJLNyUyRmhmMiUyRjF2WlMzZVFHTjdhTSUzRCZh
bXA7cmVzZXJ2ZWQ9MA0KPiANCj4gc2hvd2luZyB1cCBhbmQgaXQncyB0aGUgYmFzZSBmb3IgdGhl
IHRpbnkNCj4gDQo+IMKgwqDCoMKgaHR0cHM6Ly9ldXIwMS5zYWZlbGlua3MucHJvdGVjdGlvbi5v
dXRsb29rLmNvbS8/dXJsPWh0dHBzJTNBJTJGJTINCj4gRnBhdGNod29yay5mcmVlZGVza3RvcC5v
cmclMkZzZXJpZXMlMkY2NDMwMCUyRiZhbXA7ZGF0YT0wMiU3QzAxJTdDcm9iDQo+IGVydC5jaGly
YXMlNDBueHAuY29tJTdDNmNhNjcyNGE2NTZiNDE5MTJmMDQwOGQ3MWZkODNkYTAlN0M2ODZlYTFk
M2JjMg0KPiBiNGM2ZmE5MmNkOTljNWMzMDE2MzUlN0MwJTdDMCU3QzYzNzAxMjg4NTkxODY0MTE5
NiZhbXA7c2RhdGE9aDZLTFZuU3gNCj4geEJ3dkslMkZ2UEY5enQ0RFFSNlduRjFweVFTd0tCVE80
clFUZyUzRCZhbXA7cmVzZXJ2ZWQ9MA0KPiANCj4gQ2hlZXJzLA0KPiDCoC0tIEd1aWRvDQoNCkhp
IEd1aWRvLA0KDQpZZXMsIEkgcGxhbiB0byBzdWJtaXQgYSBuZXh0IHJldmlzaW9uLCBidXQgZmly
c3QgSSB3YW50ZWQgdG8gdHJ5IGl0IHdpdGggeW91ciBwYXRjaC1zZXQgZm9yIHRoZSBud2wtZHNp
IGRyaXZlci4NClRoYW5rcyBmb3IgdGhlIGhlYWRzLXVwLg0KDQpCZXN0IHJlZ2FyZHMsDQpSb2Jl
cnQKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
