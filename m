Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B6F8D6C0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 16:59:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HjvyhfRlz7CkTo0QZGM0lv99y/6j37zfl7rH22O6ZDg=; b=anAWUds2GVgkK+
	9NJNuhwwyOApzhO4PBRHoxSpF28H2SS9URtQTU+kI+yxwEGMqHYE2MzTwz5RrKTAK5ja9z02ZYZD/
	TsnJnkEcZgvemvZzF/kKp/j56LivTmer0KpDwSy5HK1h/h1XgWL/TM5sIlzcW4lxBLF8O3N8hZoCV
	x6jTqqu4BP6Nw+ZqS41TKvZe1Pjo+Q0pDjhuluv3HG42Pf094Sv/C0XXPMq3o9QkSoGLD2X8IwyWl
	3ti4IdiNI04MRW9eOQWrhJY49nwRIl2mgKKXUE+CyLxHUF5w0ygDAsBNv9V8eeHiahr9BnpTnhziJ
	qEfNU9Fpn9Bi4j+5ip+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxujv-0003mn-2N; Wed, 14 Aug 2019 14:59:03 +0000
Received: from mail-eopbgr10077.outbound.protection.outlook.com ([40.107.1.77]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxujj-0003mG-Nj
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 14:58:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gGRY/c4s9TJCkPjS7n5vxd5La7Qy2XifzH8UQP1mBgU0v0OQETZ/ygHlrs7uY5CwTCNALKCtd4QtD01tdcnil+wS1e7zUd+lk2fc8/H6fupLPQy1x4SFU6GT4yApQKp9chBiFlQoSw3tO+fL1tlCQjfq4EemaI9NkxL3NrpfsBGWo6O9eVZ9MJnyTbpSxEfd2gLTDXt2tDDB/Bs0tj+ArqUuNABu8n3TxYwPKtClYuE5GCAzAP7EdL72LqaNgVKmQKDo/PFG5m1Z9dsvHJerI83qYB88o/0lzFIJuvRsNDPj08DAfAnOJ2z1sAhLumNNJ+NA+8sR8cEq8L1Ox1ck7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W0oUQ6jSxv5Smkcr89ImAj4PyISzroBMV+7ODF1K/JQ=;
 b=PSGTsf6NmxthSYDiPLWGFoEeUf9CyX+pBiB2fNwl38ycLGsWo0pD3sx1BXhT+6VnrFR4Pm2TjjreEjPibPhFbq053qdAGQrjbsDRpbhOKyw5VCDEHm35Ucc2l8ONfMMKjnX/z11DgOz0i/GAI673rYqr+11kOhZgJviX9kA6AdL+OW0u9N0DN9DdhCGF3bMv+yN9zzFp5wR/qAsxy0dKDFp0QU3ByChz9B2V49k7mHEiLp6xnKj2aHvrTHGpP9iSGda7hZkt3AoPkyC43RvzV2oGTpZvEWznGi6ZFY4kbJ5eUUXJuN+aB80SExHUySa4zc/3d734/szRIPRIM7XydQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W0oUQ6jSxv5Smkcr89ImAj4PyISzroBMV+7ODF1K/JQ=;
 b=kPcm6A8Nnr6yyKcHXXFgUi5blTgrAddy9jwPdjBrR0zNPuKA6jFPIAu5w2ihhJXFaXs5O8k3tgG19FcgRPfjOGWW3scdWvANH2AeABFQuubwauvJJUgE8u5xkuwBuNAxwpqTMKA6UHzloVk/NDIykq37CZIHaRe34xLuEfDJ5G4=
Received: from DB8PR04MB6715.eurprd04.prod.outlook.com (20.179.251.14) by
 DB8PR04MB6489.eurprd04.prod.outlook.com (20.179.249.204) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.14; Wed, 14 Aug 2019 14:58:47 +0000
Received: from DB8PR04MB6715.eurprd04.prod.outlook.com
 ([fe80::b0ab:d127:ca27:e1fa]) by DB8PR04MB6715.eurprd04.prod.outlook.com
 ([fe80::b0ab:d127:ca27:e1fa%7]) with mapi id 15.20.2157.022; Wed, 14 Aug 2019
 14:58:47 +0000
From: Robert Chiras <robert.chiras@nxp.com>
To: "daniel@fooishbar.org" <daniel@fooishbar.org>
Subject: Re: [EXT] Re: [PATCH v2 06/15] drm/mxsfb: Update mxsfb with
 additional pixel formats
Thread-Topic: [EXT] Re: [PATCH v2 06/15] drm/mxsfb: Update mxsfb with
 additional pixel formats
Thread-Index: AQHVUo3kZqU7u4W/l0qkPdsCk56cbab6hi0AgAA2QgA=
Date: Wed, 14 Aug 2019 14:58:47 +0000
Message-ID: <1565794726.3209.77.camel@nxp.com>
References: <1565779731-1300-1-git-send-email-robert.chiras@nxp.com>
 <1565779731-1300-7-git-send-email-robert.chiras@nxp.com>
 <CAPj87rMFG=RGmfVnawbE7qX4zU7vdYxLJB__K4E3B8jcJ764KQ@mail.gmail.com>
In-Reply-To: <CAPj87rMFG=RGmfVnawbE7qX4zU7vdYxLJB__K4E3B8jcJ764KQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.18.5.2-0ubuntu3.2 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=robert.chiras@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 34c1c0e8-ce11-42ac-a5fe-08d720c7e8d0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR04MB6489; 
x-ms-traffictypediagnostic: DB8PR04MB6489:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB6489E913B5B544222D0BEC38E3AD0@DB8PR04MB6489.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 01294F875B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(396003)(366004)(376002)(39860400002)(189003)(199004)(256004)(7736002)(4326008)(103116003)(102836004)(11346002)(66066001)(186003)(476003)(44832011)(446003)(2616005)(6506007)(8676002)(25786009)(14454004)(26005)(6116002)(486006)(76176011)(3846002)(2501003)(81156014)(99286004)(6512007)(478600001)(81166006)(6486002)(71200400001)(1730700003)(5660300002)(50226002)(66476007)(316002)(2906002)(64756008)(7416002)(54906003)(71190400001)(53936002)(2351001)(5640700003)(86362001)(6436002)(8936002)(36756003)(66446008)(305945005)(66556008)(76116006)(6246003)(91956017)(6916009)(66946007)(229853002)(99106002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB6489;
 H:DB8PR04MB6715.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Qw7kpTRYztOyCHaHxJsYlA2K5vbMEc6hjIGFOwPk659FfV9ugoIbkC9E2qZlZd1JScLEsi4Zre81+IUyOhWX6w1OAvH2d+3Q4OTujzS7eM+A2QVOJLsr1YSNENKPCJrLQwRLw5iZSpJEWgi6clHDe2sKfn0PQFSuOhNfNVk+Oh1u6gB7Tlm7B/ux43E2DTi4hhF9DCe+doBpu5PMgBvcg8FpOV88ba5hox1SS8Rm5O4FVoOmArjWlbMUVNfVhTqtBAl62mE3ZRK3zTY8O0+xdJtUze7VZZM4HCxvGcDOlFWm1RKtp+5uTjZfqoHSFgjpUYAVPKSEt0Vcv+EW3GuIKyEjuD0ANs37D5Gqu59gGrPdWLrliyyhbxk6Bh19zk28/V7+wyiO7O+P/h82O0Qz1s11jjGC9LOStxz993rCfwU=
Content-ID: <337ECD9F9D598D4CA82689858D08C84D@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34c1c0e8-ce11-42ac-a5fe-08d720c7e8d0
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2019 14:58:47.0954 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bYR6h7AYJ7yI/gGHW590P3ldgejfT7wvflEOD7V9z+VM/eeJbidc14GZ7hk8cWsQ5IeIlf7+fp0tqI23wemzMw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6489
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_075851_865217_C399CC01 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.77 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "marex@denx.de" <marex@denx.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "airlied@linux.ie" <airlied@linux.ie>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stefan@agner.ch" <stefan@agner.ch>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, "daniel@ffwll.ch" <daniel@ffwll.ch>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRGFuaWVsLA0KDQpPbiBNaSwgMjAxOS0wOC0xNCBhdCAxMjo0NCArMDEwMCwgRGFuaWVsIFN0
b25lIHdyb3RlOg0KPiBIaSBSb2JlcnQsDQo+IA0KPiBPbiBXZWQsIDE0IEF1ZyAyMDE5IGF0IDEx
OjQ5LCBSb2JlcnQgQ2hpcmFzIDxyb2JlcnQuY2hpcmFzQG54cC5jb20+DQo+IHdyb3RlOg0KPiA+
IA0KPiA+ICvCoMKgwqDCoMKgwqDCoGNhc2UgRFJNX0ZPUk1BVF9CR1I1NjU6IC8qIEJHMTYgKi8N
Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKG14c2ZiLT5kZXZkYXRhLT5p
cHZlcnNpb24gPCA0KQ0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgZ290byBlcnI7DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHdy
aXRlbChDVFJMMl9PRERfTElORV9QQVRURVJOKENUUkwyX0xJTkVfUEFUVEVSTl9CRw0KPiA+IFIp
IHwNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoENU
UkwyX0VWRU5fTElORV9QQVRURVJOKENUUkwyX0xJTkVfUEFUVEVSTl8NCj4gPiBCR1IpLA0KPiA+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbXhzZmItPmJh
c2UgKyBMQ0RDX1Y0X0NUUkwyICsgUkVHX1NFVCk7DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoC8qIEZhbGwgdGhyb3VnaCAqLw0KPiA+ICvCoMKgwqDCoMKgwqDCoGNhc2UgRFJN
X0ZPUk1BVF9SR0I1NjU6IC8qIFJHMTYgKi8NCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgY3RybCB8PSBDVFJMX1NFVF9XT1JEX0xFTkdUSCgwKTsNCj4gPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgY3RybCAmPSB+Q1RSTF9ERjE2Ow0KPiA+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBjdHJsMSB8PSBDVFJMMV9TRVRfQllURV9QQUNLQUdJTkcoMHhmKTsN
Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgYnJlYWs7DQo+IEZvciBub24tQkdS
IGZvcm1hdHMsIGRvIHlvdSBuZWVkIHRvIHdyaXRlIFJHQiBsaW5lLXBhdHRlcm4gYmFjayB0bw0K
PiB0aGUNCj4gQ1RSTDIgcmVnaXN0ZXI/IE90aGVyd2lzZSwgaWYgeW91IHN0YXJ0IHdpdGggQkdS
NTY1IHRoZW4gc3dpdGNoIGJhY2sNCj4gdG8gUkdCNTY1LCBwcmVzdW1hYmx5IENUUkwyIHdvdWxk
IHN0aWxsIGJlIHByb2dyYW1tZWQgZm9yIEJHUiBzbyB5b3UNCj4gd291bGQgZGlzcGxheSBpbnZl
cnRlZCBjaGFubmVscy4NClRoZSBMSU5FX1BBVFRFUk4gZnJvbcKgTENEQ19WNF9DVFJMMiByZWdp
c3RlciBpcyBjbGVhcmVkIGFib3ZlLCB3aXRoDQp0aGlzIGNvZGU6DQorwqDCoMKgwqDCoMKgwqBp
ZiAobXhzZmItPmRldmRhdGEtPmlwdmVyc2lvbiA+PSA0KQ0KK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoHdyaXRlbChDVFJMMl9PRERfTElORV9QQVRURVJOKENUUkwyX0xJTkVfUEFUVEVS
Tl9DTFIpIHwNCivCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoENU
UkwyX0VWRU5fTElORV9QQVRURVJOKENUUkwyX0xJTkVfUEFUVEVSTl9DTFIpLA0KK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbXhzZmItPmJhc2UgKyBMQ0RDX1Y0
X0NUUkwyICsgUkVHX0NMUik7DQo+IA0KPiBTYW1lIGdvZXMgZm9yIGFsbCB0aGUgb3RoZXIgQkdS
L1JHQiBmb3JtYXQgcGFpcnMgYmVsb3cuDQo+IA0KPiBDaGVlcnMsDQo+IERhbmllbA0KDQpUaGFu
a3MsDQpSb2JlcnQKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
