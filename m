Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C5F8D5CBF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 09:53:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G/gNg0/eQFwUW5ZICwEhI8rPXokxHofGpOTzQhvpLbs=; b=IfG4+IypeOqX+T
	hV7/83Ljd5ZeAOhO8WrBkscTbc/hAk3mNJcLNBRVk2z4LkKNf3QLvh7pg7LzQrHl7xHnTOwpEOOsy
	ncqFJelEnQLkm/Ewh4kVMrXXEhJR6LomtUzL1UuTBnYZkVJeiYPMKwJaC3CBoGASJcxWB12Oj+vMI
	bqjaHgnSPYOLSb2CM+W7bjyDQOW4QU50K2zKQLep4LeNh77wgLDpavEBCkdPf1WIFGXujpuZVJRNP
	xNRPSiXAwHieyCEMtsoD1hj/IhrjPzCUkdTy4i0cRpc2y1lIz92au9MXBNdpEMlqqI8p30334TXmJ
	KiG5bF0gcUD8t2gUGQ7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJvAO-0006uA-VS; Mon, 14 Oct 2019 07:53:20 +0000
Received: from mail-vi1eur04on060e.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::60e]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJv9z-0006hL-A8
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 07:52:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aK1P4g5BxS5/Va2Iik81EQBl3F5wU4pdKkzTyFb4JrL21IIcYiX9cUX/hNGRLbFWQOE62y6GaPVifYrE/+yT9CWaPZNq07Fw2zz6XNRO7SPxe8Fdcu1/OZuMbjA2YFBAyUFfg4CgxjxkpY4Nu5pgpdAiJhwY8XHdisrbDt3dORvKl0LRjAziQdDC3wLn7KV+M9TwYw0K+8Ne27ohYyYs8O7hN4D1Y9/3TzPquJhtcBAnduJmX0i1mJlIXDcUubGc/whUFLRwyi9k3vOK9975aa4SZxhOoiqmXcNnBQtakauPWG4+XAWUjbk7XvkC6mI54YkdbHG9bJnW5gqT6rmzqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V3nMl3+je2ubQcbmj8p/o+Ncf+w94rV1fgFhFVXhg4w=;
 b=EeMziutkc/bZL7hhJbq1wAWlrd+xDVxbuYmGGncDqH5vABbZ4DuW9duATwKAIEeGhyurRudCePeKRm/3xASa5sh0UMBRDyDnWA0EnrHRKKKwO4B4zgoQhGnQ8lLvy9rD5kHAj7qhc6blWr0aqrpT5F/02hAqxJqBpDG+7SW7Z7PgbvGRE7KBnJAFzgNJsKC4k8KA876bfiAXa6cqSxsEVI+hAYw5HB6hnw2A4HQDg/mEev3NUazicd4N/rHP8j2Z4NkHzVX/eDGtq5lO9sqZ3nR4gXT5WC1Zw47uZZ+Pi4/PkZBYudbXvRjRJmoz9DytjYod5Mk1x2PlE89qQ+YzhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V3nMl3+je2ubQcbmj8p/o+Ncf+w94rV1fgFhFVXhg4w=;
 b=SsXuZgdLgF+TgFOA8meccynx56LaPiKH6JSbnX1sLiyfKHO47w0TqUI4iPVEa3pfXff5+XJt83dAFfGygNFBLkdXnxtyGrQ7sZdUlb/9oN7emv45NQNkI93vpqkNRPgT2gGpSvqdkG7VST1MkcLH4hCCpnBcpxcVRq7PFjnV4wM=
Received: from VI1PR04MB4158.eurprd04.prod.outlook.com (52.133.13.28) by
 VI1PR04MB5536.eurprd04.prod.outlook.com (20.178.122.202) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.18; Mon, 14 Oct 2019 07:52:52 +0000
Received: from VI1PR04MB4158.eurprd04.prod.outlook.com
 ([fe80::dda8:5c80:4c09:4ff1]) by VI1PR04MB4158.eurprd04.prod.outlook.com
 ([fe80::dda8:5c80:4c09:4ff1%6]) with mapi id 15.20.2347.021; Mon, 14 Oct 2019
 07:52:52 +0000
From: Yinbo Zhu <yinbo.zhu@nxp.com>
To: Yinbo Zhu <yinbo.zhu@nxp.com>, Shawn Guo <shawnguo@kernel.org>, Leo Li
 <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>
Subject: RE: [PATCH v3] arm64: dts: enable otg mode for dwc3 usb ip on
 layerscape
Thread-Topic: [PATCH v3] arm64: dts: enable otg mode for dwc3 usb ip on
 layerscape
Thread-Index: AQHVfYPlUjQ8Kn7Ms0S5umQCEfgqlKdZzGRg
Date: Mon, 14 Oct 2019 07:52:52 +0000
Message-ID: <VI1PR04MB41580274F127E4C4B85071DBE9900@VI1PR04MB4158.eurprd04.prod.outlook.com>
References: <20191008025642.19519-1-yinbo.zhu@nxp.com>
In-Reply-To: <20191008025642.19519-1-yinbo.zhu@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yinbo.zhu@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 85451887-2b68-469a-18ae-08d7507b8418
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: VI1PR04MB5536:|VI1PR04MB5536:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB5536EA4B85B855853DA70F23E9900@VI1PR04MB5536.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01901B3451
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(376002)(346002)(136003)(39860400002)(199004)(189003)(13464003)(71200400001)(71190400001)(55016002)(9686003)(53546011)(44832011)(476003)(486006)(2906002)(446003)(76176011)(52536014)(6436002)(66066001)(6506007)(4326008)(76116006)(66946007)(99286004)(66476007)(66556008)(64756008)(14454004)(6116002)(3846002)(66446008)(11346002)(478600001)(256004)(33656002)(54906003)(14444005)(7736002)(305945005)(7696005)(74316002)(110136005)(316002)(229853002)(5660300002)(186003)(81166006)(81156014)(8676002)(8936002)(6246003)(25786009)(86362001)(102836004)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5536;
 H:VI1PR04MB4158.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Nj7MCeRPDgRHixMprtWE0y7tKElmElr50JXGGxYuakHHnQbxIxjj7fQgR/tpwjFdgH7TsfBweR66iL9fyNJrinlBeRcSGg3FGC+78G4HIdC+bo3w8aerJ8RNmkP+eazikAxmXruGMAsyL1zc8Z8JUNnyXTgCMS09Z9iHfxgPXPubA2ghGM8Q1pBK6hKUj1bYS8I94Nt4Sd9rnGoh4slfDY5NazxuYsx2kyZrwuItZSKckM7BaPxoZSplO2z7Aq+MCkXQnPZLDJzrax5y6cNGV7WOlNiM3TisTsu3EFwHew7iCKBUZyhgcK10Pl2kluF49jWoNMfk8E+dj7h+c9Ll15Qbg+UfLm3YNRzvC4qhHVbc7yUxTum3SSRHR2SLzzoCapjW0lgj1IpOGcMFovrF+9f0sn92SDClBOgUX6l3bRw=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 85451887-2b68-469a-18ae-08d7507b8418
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Oct 2019 07:52:52.1936 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TGw3vutk/BwwKN91/h1IV4Is9ixJXQ4AmPN3mjSXtMXIqnPbEbc8OP1T8KOkxl2mxz0kPDQK1wpb47ILveNP0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5536
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_005255_369849_B1C25EF2 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:60e listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.8 FORGED_SPF_HELO        No description available.
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
 Xiaobo Xie <xiaobo.xie@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jiafei Pan <jiafei.pan@nxp.com>, Ran Wang <ran.wang_1@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU2hhd24gR3VvLA0KDQpQbGVhc2UgY2hlY2sgdGhpcyB2ZXJzaW9uIGNvZGUgcGF0Y2guDQoN
ClRoYW5rcywNClJlZ2FyZHMsDQpZaW5ibyBaaHUNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0t
LS0NCkZyb206IFlpbmJvIFpodSA8eWluYm8uemh1QG54cC5jb20+IA0KU2VudDogMjAxOcTqMTDU
wjjI1SAxMDo1Nw0KVG86IFNoYXduIEd1byA8c2hhd25ndW9Aa2VybmVsLm9yZz47IExlbyBMaSA8
bGVveWFuZy5saUBueHAuY29tPjsgUm9iIEhlcnJpbmcgPHJvYmgrZHRAa2VybmVsLm9yZz47IE1h
cmsgUnV0bGFuZCA8bWFyay5ydXRsYW5kQGFybS5jb20+DQpDYzogWWluYm8gWmh1IDx5aW5iby56
aHVAbnhwLmNvbT47IFhpYW9ibyBYaWUgPHhpYW9iby54aWVAbnhwLmNvbT47IEppYWZlaSBQYW4g
PGppYWZlaS5wYW5AbnhwLmNvbT47IFJhbiBXYW5nIDxyYW4ud2FuZ18xQG54cC5jb20+OyBsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7IGRldmljZXRyZWVAdmdlci5rZXJuZWwu
b3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnDQpTdWJqZWN0OiBbUEFUQ0ggdjNdIGFy
bTY0OiBkdHM6IGVuYWJsZSBvdGcgbW9kZSBmb3IgZHdjMyB1c2IgaXAgb24gbGF5ZXJzY2FwZQ0K
DQpsYXllcnNjYXBlIG90ZyBmdW5jdGlvbiBzaG91bGQgYmUgc3VwcG9ydGVkIEhOUCBTUlAgYW5k
IEFEUCBwcm90b2NvbCBhY2Nyb2luZyB0byBybSBkb2MsIGJ1dCBkd2MzIGNvZGUgbm90IHJlYWxp
emUgaXQgYW5kIHVzZSBpZCBwaW4gdG8gZGV0ZWN0IHdobyBpcyBob3N0IG9yIGRldmljZSgwIGlz
IGhvc3QgMSBpcyBkZXZpY2UpIHRoaXMgcGF0Y2ggaXMgdG8gZW5hYmxlIE9URyBtb2RlIG9uIGxz
MTAyOGFyZGIgbHMxMDg4YXJkYiBhbmQgbHMxMDQ2YXJkYiBpbiBkdHMNCg0KU2lnbmVkLW9mZi1i
eTogWWluYm8gWmh1IDx5aW5iby56aHVAbnhwLmNvbT4NCi0tLQ0KQ2hhbmdlZCBpbiB2MzoNCgkJ
dXBkYXRlZCB0aGUgcGF0Y2ggdGl0bGUgd2l0aCAiYXJtNjQ6IGR0cyINCg0KIGFyY2gvYXJtNjQv
Ym9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLXJkYi5kdHMgfCA0ICsrKysgIGFyY2gvYXJt
NjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwNDZhLXJkYi5kdHMgfCA0ICsrKysgIGFyY2gv
YXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwODhhLXJkYi5kdHMgfCAxICsNCiAzIGZp
bGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQ0KDQpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9i
b290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEtcmRiLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLXJkYi5kdHMNCmluZGV4IDlmYjkxMTMuLjA3NmNhYzYg
MTAwNjQ0DQotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4YS1y
ZGIuZHRzDQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4YS1y
ZGIuZHRzDQpAQCAtMTcxLDMgKzE3MSw3IEBADQogJnNhdGEgew0KIAlzdGF0dXMgPSAib2theSI7
DQogfTsNCisNCismdXNiMSB7DQorCWRyX21vZGUgPSAib3RnIjsNCit9Ow0KZGlmZiAtLWdpdCBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwNDZhLXJkYi5kdHMgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDQ2YS1yZGIuZHRzDQppbmRleCA2YTY1
MTRkLi4wYzc0MmJlIDEwMDY0NA0KLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUv
ZnNsLWxzMTA0NmEtcmRiLmR0cw0KKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUv
ZnNsLWxzMTA0NmEtcmRiLmR0cw0KQEAgLTEyMiw2ICsxMjIsMTAgQEANCiAJfTsNCiB9Ow0KIA0K
KyZ1c2IxIHsNCisJZHJfbW9kZSA9ICJvdGciOw0KK307DQorDQogI2luY2x1ZGUgImZzbC1sczEw
NDYtcG9zdC5kdHNpIg0KIA0KICZmbWFuMCB7DQpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290
L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTA4OGEtcmRiLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
ZnJlZXNjYWxlL2ZzbC1sczEwODhhLXJkYi5kdHMNCmluZGV4IDhlOTI1ZGYuLjkwYjE5ODkgMTAw
NjQ0DQotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDg4YS1yZGIu
ZHRzDQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDg4YS1yZGIu
ZHRzDQpAQCAtOTUsNSArOTUsNiBAQA0KIH07DQogDQogJnVzYjEgew0KKwlkcl9tb2RlID0gIm90
ZyI7DQogCXN0YXR1cyA9ICJva2F5IjsNCiB9Ow0KLS0NCjIuOS41DQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
