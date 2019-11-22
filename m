Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5417105F09
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 04:31:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZDxn0n0c1oGJXAPXo82nLUkLCi5BfwVJhwWLOZwofTA=; b=tvdHqakZ9NZpzi
	JbjiVtDh1hgFlbPlQ/U+DqrJl8b5BTQ5eANuaofvA1lL5jhFksEO6tSRYMN4kN0GVNVnTVIlep4IF
	KsX37CTP9Vz03pRRvs9YQ3hS2HIAtZBnmYM2D34sakkqE9JcANPaXMgf3BO5AmbH0k/qxhpzQzOh/
	uZs9RRLcmUy0pz040PUfsWuJAbIc8gHkSo1htEhsONziQEE1pAP8l871bT9lvR9odfahnXLb0oONT
	E7/OkAb5FyRCIIeADhCovCtyU6C6wHzJsvjEXeWxzPwtJ+Ipyu2Ot06NqenvsfA39IpxIQoRqMDtk
	gDJ/V7eN1HDTRYT33WrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXzfO-0002rS-1l; Fri, 22 Nov 2019 03:31:30 +0000
Received: from mail-eopbgr150051.outbound.protection.outlook.com
 ([40.107.15.51] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXzfE-0002qs-UB
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 03:31:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HG+5qRCiGOCi/AJM/X/a8h4mHYLISrx+OXGLCkzKfwP3tnp8sysRnTfqmFb3y0JhXtXrsQ3UDpxTaee9Hw+zwiFMBaEsUy7bXpuS+FDa86+sBPQlFkJ0gM9wkX6aDQWLvFRxES5QViHKRS0nm3yA7ll+RaZsCehTTFnMjOEgXUb+omSQ/8Sox0+PxBnUmuUuO0jZb+gFigQwVT73lvfLrHELuL1lwMRi2NIIh31jVy1FqJaeg8j/DWYVxUJa2Iu4juXRZV1SlkdLnEXHwxN7h1hEtcv1NPaWdMNirSC4/F1Rf/7D68AkoIy7Jvkbag8m8yebEXCRufvwO6zp3TNnPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iLM/Fy3utYDh6GyYXq1lrQ1CwoaK9/Skm6zWkkpHg/4=;
 b=On9MJ5X9FORZQH3DAa8dsFNE6oLjNI+TlJJL37TcnliJkFOVJLoj3qr3117RL2HREKje+92w6v9XsQkeR19lGjKqNGy5rM0ZYs6aVimVx67FSZqG+1U2On6VmWDv/bdG+VcEZp81g01uP4XBrZRNgJAglBgwX/dzC23rGgYJncpvvCJkhsuNA34ryml06QHDUeUPTiCcf7bTJJ3qm6qsBMNAyWXAx8v7QGx+SkLRbJoQZQ1I6PFrMvO11Vtt08ZdZKDB/0LKQ97YVV0/c+cEmvV/e0s3Kybzbo4p5YQnuK44Lryr4TWShoUTPQ+lnDynMo7eadxqvtnSnx3TiWWHew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iLM/Fy3utYDh6GyYXq1lrQ1CwoaK9/Skm6zWkkpHg/4=;
 b=scTVoA+EKH08IbPG4NrTVvVTb7Juu2cXSj2E8fJoAjkNne9TWD8R+t7MFZIvfKgkkro+c6zUuBLKiAiet2RfNqsoKXxC4LmugXjtETjKdiHUarkNsXJ9DVTqx1hRgPiZFknMWfgapYTOHKbQvr5D/guVg+/0uVbejZhogfn2Oog=
Received: from VI1PR04MB4158.eurprd04.prod.outlook.com (52.133.13.28) by
 VI1PR04MB4335.eurprd04.prod.outlook.com (10.171.183.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.18; Fri, 22 Nov 2019 03:31:15 +0000
Received: from VI1PR04MB4158.eurprd04.prod.outlook.com
 ([fe80::14c5:a595:82:6429]) by VI1PR04MB4158.eurprd04.prod.outlook.com
 ([fe80::14c5:a595:82:6429%6]) with mapi id 15.20.2474.021; Fri, 22 Nov 2019
 03:31:14 +0000
From: Yinbo Zhu <yinbo.zhu@nxp.com>
To: Yinbo Zhu <yinbo.zhu@nxp.com>, Rob Herring <robh+dt@kernel.org>, Mark
 Rutland <mark.rutland@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Adrian Hunter <adrian.hunter@intel.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Leo Li <leoyang.li@nxp.com>, Claudiu
 Manoil <claudiu.manoil@nxp.com>, "Amit Jain (aj)" <amit.jain_1@nxp.com>,
 "Y.b. Lu" <yangbo.lu@nxp.com>, Vabhav Sharma <vabhav.sharma@nxp.com>, Rajesh
 Bhagat <rajesh.bhagat@nxp.com>, Ashish Kumar <ashish.kumar@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-mmc@vger.kernel.org"
 <linux-mmc@vger.kernel.org>
Subject: RE: [PATCH v1 1/4] arm64: dts: ls1028a-rdb: enable emmc hs400 mode
Thread-Topic: [PATCH v1 1/4] arm64: dts: ls1028a-rdb: enable emmc hs400 mode
Thread-Index: AQHVUnFRogT0ZOoS6US6waLNYbcJp6eXJMWw
Date: Fri, 22 Nov 2019 03:31:14 +0000
Message-ID: <VI1PR04MB41589D01E1733E63E261CA2FE9490@VI1PR04MB4158.eurprd04.prod.outlook.com>
References: <20190814072649.8237-1-yinbo.zhu@nxp.com>
In-Reply-To: <20190814072649.8237-1-yinbo.zhu@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yinbo.zhu@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 145dfa4e-92f3-409c-e38e-08d76efc6dd5
x-ms-traffictypediagnostic: VI1PR04MB4335:|VI1PR04MB4335:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB43351D99E692A40F79CD1808E9490@VI1PR04MB4335.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1923;
x-forefront-prvs: 02296943FF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(396003)(136003)(39860400002)(346002)(199004)(189003)(13464003)(6436002)(3846002)(6116002)(14454004)(508600001)(25786009)(305945005)(14444005)(2201001)(86362001)(256004)(6246003)(2906002)(33656002)(2501003)(55016002)(9686003)(4326008)(71190400001)(110136005)(8676002)(71200400001)(446003)(76116006)(99286004)(5660300002)(11346002)(81156014)(81166006)(8936002)(66066001)(7416002)(229853002)(54906003)(76176011)(74316002)(6506007)(316002)(52536014)(102836004)(44832011)(186003)(66946007)(7736002)(7696005)(66556008)(66476007)(64756008)(66446008)(26005)(53546011)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4335;
 H:VI1PR04MB4158.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: u1aw4g7nKoMQ8zjGjHtEATHO//XM0C5ZKMQjxw0wYFepFlTYKwMkjx0++VNE80N5ojUYA25JcunQunXC/+OymKr2lfXqjGapyzx4KVRePqBQT4zSmCUO91fXMV4tnqHWvWAvXZtKCwiyPbBXHqhCESG73frhPoTJjRs5hDRoi6l9CdKm7XVVpg8xy1o+MiqUhuRATBzpl3DUB/UbH2mvq6shXxc7lJ8tJRp2Y4vFgkCZ2s57KGa53iXG2QoGbJ/4Ehs+t+DzBICGWrYk2DwMd8MmE1JY4T0Y5h4WQEJkeKZ4wG1pIvToPtY+Z2OU36rq758+FoJZ9rN/1YfWMY9AZk/L0d6T/se6vwVGAzfwzD3t8XttuYv2dwBHVAh5/2OCfV086bcnokY6stNubka8K6cjr6arG6unMz53PQ3IyMb8mNllo/zFUncib0+UKj/0
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 145dfa4e-92f3-409c-e38e-08d76efc6dd5
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Nov 2019 03:31:14.8992 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yGH9OKdnAGStDP/khsfBdduBNwW6Cj9NpXfgSzoow8qppt53dxuD5902bGq4IiSXSfSjwKgAtHOEgP2x7AENeg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4335
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_193121_082487_DB8FD916 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.51 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alison Wang <alison.wang@nxp.com>,
 Alexandru Marginean <alexandru.marginean@nxp.com>,
 Xiaobo Xie <xiaobo.xie@nxp.com>, Catalin Horghidan <catalin.horghidan@nxp.com>,
 Rajat Srivastava <rajat.srivastava@nxp.com>, Jiafei Pan <jiafei.pan@nxp.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgDQoNCk15IGhzNDAwIHNlcmllcyBwYXRjaGVzIGZvciBsczEwMjggbmVlZCBkbyBhbnkgY2hh
bmdlcz8gDQogIA0KUmVnYXJkcywNCllpbmJvIFpodS4NCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdl
LS0tLS0NCkZyb206IFlpbmJvIFpodSA8eWluYm8uemh1QG54cC5jb20+IA0KU2VudDogMjAxOcTq
ONTCMTTI1SAxNToyNw0KVG86IFJvYiBIZXJyaW5nIDxyb2JoK2R0QGtlcm5lbC5vcmc+OyBNYXJr
IFJ1dGxhbmQgPG1hcmsucnV0bGFuZEBhcm0uY29tPjsgQ2F0YWxpbiBNYXJpbmFzIDxjYXRhbGlu
Lm1hcmluYXNAYXJtLmNvbT47IFdpbGwgRGVhY29uIDx3aWxsLmRlYWNvbkBhcm0uY29tPjsgQWRy
aWFuIEh1bnRlciA8YWRyaWFuLmh1bnRlckBpbnRlbC5jb20+OyBVbGYgSGFuc3NvbiA8dWxmLmhh
bnNzb25AbGluYXJvLm9yZz47IExlbyBMaSA8bGVveWFuZy5saUBueHAuY29tPjsgQ2xhdWRpdSBN
YW5vaWwgPGNsYXVkaXUubWFub2lsQG54cC5jb20+OyBBbWl0IEphaW4gKGFqKSA8YW1pdC5qYWlu
XzFAbnhwLmNvbT47IFkuYi4gTHUgPHlhbmdiby5sdUBueHAuY29tPjsgVmFiaGF2IFNoYXJtYSA8
dmFiaGF2LnNoYXJtYUBueHAuY29tPjsgUmFqZXNoIEJoYWdhdCA8cmFqZXNoLmJoYWdhdEBueHAu
Y29tPjsgQXNoaXNoIEt1bWFyIDxhc2hpc2gua3VtYXJAbnhwLmNvbT47IGRldmljZXRyZWVAdmdl
ci5rZXJuZWwub3JnOyBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7IGxpbnV4
LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LW1tY0B2Z2VyLmtlcm5lbC5vcmcNCkNjOiBZ
aW5ibyBaaHUgPHlpbmJvLnpodUBueHAuY29tPjsgWGlhb2JvIFhpZSA8eGlhb2JvLnhpZUBueHAu
Y29tPjsgSmlhZmVpIFBhbiA8amlhZmVpLnBhbkBueHAuY29tPjsgQWxpc29uIFdhbmcgPGFsaXNv
bi53YW5nQG54cC5jb20+OyBBbGV4YW5kcnUgTWFyZ2luZWFuIDxhbGV4YW5kcnUubWFyZ2luZWFu
QG54cC5jb20+OyBDYXRhbGluIEhvcmdoaWRhbiA8Y2F0YWxpbi5ob3JnaGlkYW5AbnhwLmNvbT47
IFJhamF0IFNyaXZhc3RhdmEgPHJhamF0LnNyaXZhc3RhdmFAbnhwLmNvbT47IGxpbnV4cHBjLWRl
dkBsaXN0cy5vemxhYnMub3JnDQpTdWJqZWN0OiBbUEFUQ0ggdjEgMS80XSBhcm02NDogZHRzOiBs
czEwMjhhLXJkYjogZW5hYmxlIGVtbWMgaHM0MDAgbW9kZQ0KDQpUaGlzIHBhdGNoIGlzIHRvIGVu
YWJsZSBlbW1jIGhzNDAwIG1vZGUgZm9yIGxzMTAyOGFyZGINCg0KU2lnbmVkLW9mZi1ieTogWWlu
Ym8gWmh1IDx5aW5iby56aHVAbnhwLmNvbT4NCi0tLQ0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJl
ZXNjYWxlL2ZzbC1sczEwMjhhLXJkYi5kdHMgfCA0ICsrKy0NCiAxIGZpbGUgY2hhbmdlZCwgMyBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQoNCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4YS1yZGIuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0
cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEtcmRiLmR0cw0KaW5kZXggOGE3MjU0MDllODgxLi5mMWU0
NmNjNGNlYTEgMTAwNjQ0DQotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wt
bHMxMDI4YS1yZGIuZHRzDQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wt
bHMxMDI4YS1yZGIuZHRzDQpAQCAtOTIsOCArOTIsMTAgQEANCiAJfTsNCiANCiAmZXNkaGMxIHsN
Ci0Jc3RhdHVzID0gIm9rYXkiOw0KIAltbWMtaHMyMDAtMV84djsNCisJbW1jLWhzNDAwLTFfOHY7
DQorCWJ1cy13aWR0aCA9IDw4PjsNCisJc3RhdHVzID0gIm9rYXkiOw0KIAl9Ow0KIA0KICZpMmMw
IHsNCi0tIA0KMi4xNy4xDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
