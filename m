Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2D2BC0BC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 05:30:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TlMuH3i3LWbY1CafEpeo9TIkM4YdSeV6EilCoGyuMYU=; b=mWI31doj3VI6fB
	YxV6QsXeclNS9wb5ac6jdZAwx6mQCrjBpgGPXJcOMH/OrOT+rRO7AgGMmcJbzWacffRRc0qSpx+pz
	vehNt21lDV6JqoMw2hIGDwb5tx3y9h7qM0Ar0+XUkMe0OuDKdJmV9WklouS9lqRqAPqtns6stxr7+
	7wcdUphST/hEeEpYEebIU+hL+6XbMwXR/k6q2KIKtyMbIN0ZOcYNfT6NDj7hrUBRihf9MtM3TmAG+
	CSoxDKhhEUwyjU1IbnVM+C96/bgVcwqTXIG9IC0n+qQRC5vGoCQThpS0DdmmOhfJBdV8EYigt8IdO
	NMdqDOgqtKRU6c8O7EAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCbWz-00044W-5z; Tue, 24 Sep 2019 03:30:25 +0000
Received: from mail-eopbgr40070.outbound.protection.outlook.com ([40.107.4.70]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCbWo-0003p6-1N
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 03:30:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UWQhWtuDnA3/tUhQimTJLpXjdP7hAwH67Cb3wtRvBBol7ip8yB29/aUNA1V/5MInbmxMsZY9VdYoTRRA347ZTVVQfzzbKR/XgWNroFW4fZqEweI9F4wpS7T+yey+pXY9PItnmHhjzS6Tbieiq3ATvwVe9w5Z9PC4nbHjrdOQHwt4E9sU++eFPHZQGFXMg+4D3K6ZH7LsffPrvwsEC7l9qFmvMLJmJ8e6FCvyX+m3zDWrKDzbhv5qJTNiReN1P7fmcfWue/Z4Vx0S2VBIkG++qgw4sEDHw4aAQs9AEhB3mHDLwZyc1hnVXUnEnYDgZkEbmfHkyUntqMsanDzhh90guw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HC5aFZ+AVUf42ydCGK5iw4GtFLL81FSS5O97BdvKyYY=;
 b=iIaPQZ1GopXjn/6domrt+MQkVBKvjLT8eZxDHuFstuuS0XBR/b0cd28INU3iu8hdmcmBILrmLAz6/Zz9hNeeqPMHXgkgYB1mQFL/HWzbrhuXNNmUeUGIFAmVj1E/plcKihedHm1GwANAMqT3Y3k6CG1n5LAV61NO0Sd/RZQAEv5yZMmTDS9/J41xQ/SHJNb7ncnX21NW7LrcPZjX6rj8KZmW0Pp0nea4KSQmKdtrhKpeGnImsZIPdiS+mbnQjCPZosuTSZEiS48rK6juBEfAkeK/acsbU13U0zXoGNrU5sCH6WaZJSL9zLvN0ZQMERoHjJPeYYwAcMbsimOCGMNh4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HC5aFZ+AVUf42ydCGK5iw4GtFLL81FSS5O97BdvKyYY=;
 b=sSx8Qs6hiyUyf+z8ckuS58GQ4wSCc1UPq0Jg1cIZSwk6Fn1WwSBuwhh5PF7Uvb4syGL4xZw4Ol7lRi9HOUVPtTCMZJgWFBvSNmsyRpE+jDQk8rEsMiZ7chKqu5nPkiNsx2vOZPb6qruuoXFm4n1t1FGyvXi2HXNCZC3x9Q1iUWY=
Received: from VI1PR04MB4158.eurprd04.prod.outlook.com (52.133.15.33) by
 VI1PR04MB4734.eurprd04.prod.outlook.com (20.177.48.203) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.26; Tue, 24 Sep 2019 03:30:06 +0000
Received: from VI1PR04MB4158.eurprd04.prod.outlook.com
 ([fe80::fddc:d4ac:5cb9:e1c6]) by VI1PR04MB4158.eurprd04.prod.outlook.com
 ([fe80::fddc:d4ac:5cb9:e1c6%6]) with mapi id 15.20.2284.023; Tue, 24 Sep 2019
 03:30:06 +0000
From: Yinbo Zhu <yinbo.zhu@nxp.com>
To: Yinbo Zhu <yinbo.zhu@nxp.com>, Shawn Guo <shawnguo@kernel.org>, Leo Li
 <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>
Subject: RE: [PATCH v2] usb: dwc3: enable otg mode for dwc3 usb ip on
 layerscape
Thread-Topic: [PATCH v2] usb: dwc3: enable otg mode for dwc3 usb ip on
 layerscape
Thread-Index: AQHVcogKKVIHkmsOA0qi72Us7K9FWKc6KxDQ
Date: Tue, 24 Sep 2019 03:30:06 +0000
Message-ID: <VI1PR04MB4158004466B191173A34B4C9E9840@VI1PR04MB4158.eurprd04.prod.outlook.com>
References: <20190924032903.32775-1-yinbo.zhu@nxp.com>
In-Reply-To: <20190924032903.32775-1-yinbo.zhu@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yinbo.zhu@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6c380c85-39d3-4e96-6dfa-08d7409f7e77
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB4734; 
x-ms-traffictypediagnostic: VI1PR04MB4734:|VI1PR04MB4734:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB4734B17CCED5B858B5FA9661E9840@VI1PR04MB4734.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0170DAF08C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(136003)(396003)(376002)(346002)(199004)(189003)(13464003)(64756008)(76176011)(66446008)(66556008)(25786009)(446003)(3846002)(8676002)(11346002)(54906003)(76116006)(6246003)(7736002)(305945005)(33656002)(52536014)(4326008)(81156014)(81166006)(66946007)(9686003)(66476007)(8936002)(110136005)(476003)(53546011)(486006)(186003)(71190400001)(6506007)(102836004)(2906002)(71200400001)(7696005)(316002)(478600001)(66066001)(74316002)(229853002)(99286004)(5660300002)(14454004)(14444005)(44832011)(6436002)(55016002)(86362001)(256004)(26005)(6116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4734;
 H:VI1PR04MB4158.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: RB6t52t6/eINHI95APCGLGZNwZ0J8MGTwgvAVBa0XOY8JpuRMdfIrydlYQsq+VRTGGHh9CqDbkH1bzTQUGu4kBXsvclK+My7jssVOtdCn3grWwgvmT9CC8Bz1H0P2Nl2coyGG6oq4I1Bb2tR5UhLpO/Tm+0lce2o5ylolCucsdVsalRS9lTVBxuM5ovtG7q+BR7jHYcuf6rk9LUDd3/BntVPC+Jv50lW5E0e5CWexutBntCDM7b4m8fIaZjJocSTnIjwSAs54m8MLzLxYNupi2A67iqZlBl8TXWMODqMAybjzURrRFU8tJckyUZ43/GXK3LPOqR6ZBq0ptNvg0dTGqP/GqRn2dYir4+82ZFInzIgvB60pu2JOCrWjiDOVzFmy/paF+XpJJ9YWncH7MVmowke050N9VkcgC+4XuA8DfQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c380c85-39d3-4e96-6dfa-08d7409f7e77
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2019 03:30:06.0769 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JkDIxwNLFFBjir1vpedtEtGEEXMwg47BGeu0h4Zkb26L/je881c4Cx1/KzT1NebGt+C8Ow38f+k8IoatS5wn2w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4734
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_203014_093026_8170359B 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.70 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.4.70 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Xiaobo Xie <xiaobo.xie@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jiafei Pan <jiafei.pan@nxp.com>, Ran Wang <ran.wang_1@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksDQoNCkNoYW5nZSBpbiB2MjoNCgkJCQltb3ZlIHRoZSBvdGcgcHJvcGVydHkgZnJvbSBkdHNp
IHRvIGR0cy4NCg0KUmVnYXJkcywNCllpbmJvIFpodS4NCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdl
LS0tLS0NCkZyb206IFlpbmJvIFpodSA8eWluYm8uemh1QG54cC5jb20+IA0KU2VudDogMjAxOcTq
OdTCMjTI1SAxMToyOQ0KVG86IFNoYXduIEd1byA8c2hhd25ndW9Aa2VybmVsLm9yZz47IExlbyBM
aSA8bGVveWFuZy5saUBueHAuY29tPjsgUm9iIEhlcnJpbmcgPHJvYmgrZHRAa2VybmVsLm9yZz47
IE1hcmsgUnV0bGFuZCA8bWFyay5ydXRsYW5kQGFybS5jb20+DQpDYzogWWluYm8gWmh1IDx5aW5i
by56aHVAbnhwLmNvbT47IFhpYW9ibyBYaWUgPHhpYW9iby54aWVAbnhwLmNvbT47IEppYWZlaSBQ
YW4gPGppYWZlaS5wYW5AbnhwLmNvbT47IFJhbiBXYW5nIDxyYW4ud2FuZ18xQG54cC5jb20+OyBs
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7IGRldmljZXRyZWVAdmdlci5rZXJu
ZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnDQpTdWJqZWN0OiBbUEFUQ0ggdjJd
IHVzYjogZHdjMzogZW5hYmxlIG90ZyBtb2RlIGZvciBkd2MzIHVzYiBpcCBvbiBsYXllcnNjYXBl
DQoNCmxheWVyc2NhcGUgb3RnIGZ1bmN0aW9uIHNob3VsZCBiZSBzdXBwb3J0ZWQgSE5QIFNSUCBh
bmQgQURQIHByb3RvY29sIGFjY3JvaW5nIHRvIHJtIGRvYywgYnV0IGR3YzMgY29kZSBub3QgcmVh
bGl6ZSBpdCBhbmQgdXNlIGlkIHBpbiB0byBkZXRlY3Qgd2hvIGlzIGhvc3Qgb3IgZGV2aWNlKDAg
aXMgaG9zdCAxIGlzIGRldmljZSkgdGhpcyBwYXRjaCBpcyB0byBlbmFibGUgT1RHIG1vZGUgb24g
bHMxMDI4YXJkYiBsczEwODhhcmRiIGFuZCBsczEwNDZhcmRiIGluIGR0cw0KDQpTaWduZWQtb2Zm
LWJ5OiBZaW5ibyBaaHUgPHlpbmJvLnpodUBueHAuY29tPg0KLS0tDQogYXJjaC9hcm02NC9ib290
L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEtcmRiLmR0cyB8IDQgKysrKyAgYXJjaC9hcm02NC9i
b290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTA0NmEtcmRiLmR0cyB8IDQgKysrKyAgYXJjaC9hcm02
NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTA4OGEtcmRiLmR0cyB8IDEgKw0KIDMgZmlsZXMg
Y2hhbmdlZCwgOSBpbnNlcnRpb25zKCspDQoNCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4YS1yZGIuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9m
cmVlc2NhbGUvZnNsLWxzMTAyOGEtcmRiLmR0cw0KaW5kZXggOWZiOTExMy4uMDc2Y2FjNiAxMDA2
NDQNCi0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLXJkYi5k
dHMNCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLXJkYi5k
dHMNCkBAIC0xNzEsMyArMTcxLDcgQEANCiAmc2F0YSB7DQogCXN0YXR1cyA9ICJva2F5IjsNCiB9
Ow0KKw0KKyZ1c2IxIHsNCisJZHJfbW9kZSA9ICJvdGciOw0KK307DQpkaWZmIC0tZ2l0IGEvYXJj
aC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTA0NmEtcmRiLmR0cyBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwNDZhLXJkYi5kdHMNCmluZGV4IDZhNjUxNGQu
LjBjNzQyYmUgMTAwNjQ0DQotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wt
bHMxMDQ2YS1yZGIuZHRzDQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wt
bHMxMDQ2YS1yZGIuZHRzDQpAQCAtMTIyLDYgKzEyMiwxMCBAQA0KIAl9Ow0KIH07DQogDQorJnVz
YjEgew0KKwlkcl9tb2RlID0gIm90ZyI7DQorfTsNCisNCiAjaW5jbHVkZSAiZnNsLWxzMTA0Ni1w
b3N0LmR0c2kiDQogDQogJmZtYW4wIHsNCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L2ZyZWVzY2FsZS9mc2wtbHMxMDg4YS1yZGIuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVl
c2NhbGUvZnNsLWxzMTA4OGEtcmRiLmR0cw0KaW5kZXggOGU5MjVkZi4uOTBiMTk4OSAxMDA2NDQN
Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwODhhLXJkYi5kdHMN
CisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwODhhLXJkYi5kdHMN
CkBAIC05NSw1ICs5NSw2IEBADQogfTsNCiANCiAmdXNiMSB7DQorCWRyX21vZGUgPSAib3RnIjsN
CiAJc3RhdHVzID0gIm9rYXkiOw0KIH07DQotLQ0KMi45LjUNCg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
