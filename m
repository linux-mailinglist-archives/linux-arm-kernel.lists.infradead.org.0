Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87AFE1A0502
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 04:41:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6MH6nKCubb6OhWvKDRMmnLWA9/0HX1jSzUYTXPo6Qkg=; b=Is7pQ7TUsMdyPG
	x7mvsKQk/e+ljx1gj1jH5EqKkyg+YbIeV4MXUr3i3d+eCgFtDpicMWK+YaXITA4ScJ2M2C7VS1vUh
	wdffDW+lkJnKr/ZvKFd0z01yAmOkPOKMYSo+Fnc2em98zEC+Jhp2MszyxuhIDa+IPkU8WWAYafOmg
	4wZPwu9XMO5bFynnT+sWty1IQxnFPTtksqeTIq9O72N1B4KlfM25E4QBEYyvWyUtPNCgzfgL++eG5
	Ww1Miikx6+N/Rs5ccZXDc1BWHDLItEns2jDd4IkYmt1AUNnDYzCUmec3axOhULXAWuhUWf6M6fDxP
	LCkcETAhPv3/p9jXE7mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLeAt-0005kR-IQ; Tue, 07 Apr 2020 02:41:15 +0000
Received: from mail-eopbgr150052.outbound.protection.outlook.com
 ([40.107.15.52] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLeAm-0005jY-TU
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 02:41:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RWDdbC0p4YIBR3IdIyw5skPfQkyGEf8liloYviVAZPrIqOcQl2KnQfNVwQR+StYohkBuWWOddVqzHmrkRh1+wDOvxOALVFeTJzmfkHN1uIggZz3hLz395+T2GUkN7iDk+MiKQgMce+6O28hW49F+ciH1+xoGmqBklEXJds7PKmUiSvlC+3ZyOiLJoITSTJCGAOIkUujNzb92zqYxEVVzx3GdvW6ZMkotvMMfJNi4Jo8xpQXJqHF+Q2pPUZieA9fF8sNEps2uKrSWaIvKynB6pEshbrUqDYYifNaHzquEaUj/MibalNef+tj8qNIBk+KGWUrjEG/XixQL2TLbLuy/nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ziKVVCMcbc2o3dJo49Qq+Vw0lkwqKGID7MTcKhOYn8s=;
 b=Fge222Web7e2trbNZpjMpNAnMr9RvR3WUFxi5J5hBQN2iswn8Z4b4wh8jlvSsfaT8Xc1riaVo/YLQSSItNfVI9e6F/YCXv2GS5NFf2vmIH/Jd8z3og/jT1PAQH/0d/tTc85x6MXid1ZPkFvNiwaw4vI5YxnXnGs4xotMYikzfh0ZDpkjfjhNRgeQvIKNYIDlBwBBwn4U25GAYcAm1QJkHcI6P9vIz1T3Djx0u2YvVWY+oP50uO87H9cgmZH/jwyJekiJ4vfYyf5sPLBpXOt8TVjakn+G+SDYGoJBu4xwyfTcENlDoeaPUwKbOkXn1KP68ynteXgshmhI8d/vs4XE3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ziKVVCMcbc2o3dJo49Qq+Vw0lkwqKGID7MTcKhOYn8s=;
 b=IWRfOCF95dkcpVhX+nQzu3dxGYDzgjfC0JvThds/sg/b+ZBSutfUndPVb7VBAFPmqSx02EVs/7x6zjd+g25be88+9wBZMy9jBSp2rt9FX9P+Lq5jH8sc4E5U+Dnm4Kk/dl4BwluhBwsIEcro+U2uEyfyDpHFOV9i2trKzsqe2Io=
Received: from AM0PR04MB4322.eurprd04.prod.outlook.com (2603:10a6:208:64::12)
 by AM0PR04MB4371.eurprd04.prod.outlook.com (2603:10a6:208:72::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.16; Tue, 7 Apr
 2020 02:41:04 +0000
Received: from AM0PR04MB4322.eurprd04.prod.outlook.com
 ([fe80::6822:8f3b:4365:c35c]) by AM0PR04MB4322.eurprd04.prod.outlook.com
 ([fe80::6822:8f3b:4365:c35c%5]) with mapi id 15.20.2878.018; Tue, 7 Apr 2020
 02:41:04 +0000
From: Andy Tang <andy.tang@nxp.com>
To: Mian Yousaf Kaukab <ykaukab@suse.de>, "linux-pm@vger.kernel.org"
 <linux-pm@vger.kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>, Leo
 Li <leoyang.li@nxp.com>
Subject: RE: [EXT] [PATCH 2/2] clk: qoriq: add cpufreq platform device
Thread-Topic: [EXT] [PATCH 2/2] clk: qoriq: add cpufreq platform device
Thread-Index: AQHWCf3kcQGeCLykpEuuWcAPGdtk96hs95sA
Date: Tue, 7 Apr 2020 02:41:04 +0000
Message-ID: <AM0PR04MB4322E8CBB8C13BA94C802E98F3C30@AM0PR04MB4322.eurprd04.prod.outlook.com>
References: <20200403212114.15565-1-ykaukab@suse.de>
 <20200403212114.15565-2-ykaukab@suse.de>
In-Reply-To: <20200403212114.15565-2-ykaukab@suse.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=andy.tang@nxp.com; 
x-originating-ip: [92.121.68.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d1ff8cbb-caf5-4525-0408-08d7da9d1ded
x-ms-traffictypediagnostic: AM0PR04MB4371:|AM0PR04MB4371:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB437144C56B155845BA0C44DBF3C30@AM0PR04MB4371.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2449;
x-forefront-prvs: 036614DD9C
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB4322.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(376002)(396003)(136003)(366004)(346002)(39860400002)(76116006)(8676002)(66556008)(81156014)(316002)(110136005)(66946007)(81166006)(54906003)(6506007)(66476007)(64756008)(53546011)(71200400001)(7696005)(4744005)(52536014)(5660300002)(478600001)(8936002)(186003)(4326008)(26005)(86362001)(6636002)(2906002)(33656002)(66446008)(55016002)(44832011)(9686003);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lr1XM4tUqccthD1LMiCinZtKJI/Zn8wgy/33Rgop/Fm3F2nKAn5g99kR1Ug3A1c7SrStDsTp8gzrCu3xM+BIi8SVxO0x7QGGsxg1qTe7RK4rli1n5q1dvcbA7mQcO/s53eYgQmeK9/CPR4AesJfl8khNdn8S4SQJjHw/636ldcbIgwkhz1mOdo8giVNC0zP4NnEJc+KmIy2gatjqrAy4/dVtuqhtdYK2xlM3vH0yaqnPoxKtplTEbF9sB3jPyaKAq+VV0693467WM5kxHHpeG+fHH50Cr2+1vC/sAhf1g7d9tLyxcG7zfBczq4Z3A1yIv5yosVAd76/rpyvcQMK5ijciHUw/mn4cvITcuJT/xqE83c6iXwLTRBjfn81YliKe2cq8WwMd+fF+PQvBIf7cuIGwXSxfeYOj96/Fead2wUUsw/ntbxgUroTRfgRn0Umd
x-ms-exchange-antispam-messagedata: gEbfDl/OQvTa4n8embEENWFOsQRTystzNZtZ4cRT4ENHXbgq/3DpGKEFqLL6LBEN6VAqw88whY8nzv+1B1mslvguzLJQtNqV681pNnT7A5VYy/qPBW3B2Jzp9ZbEvsRj0cGSaXvhRzMqAtHdCfEO3A==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d1ff8cbb-caf5-4525-0408-08d7da9d1ded
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2020 02:41:04.1778 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Kjt3IenFLjzivpeZEg3Ws7C+13MD35SzXS2Z0EubLv1pwC6OoYMoJVpiFdiKRpXbb0GSzZ7i7gwGS5SXDotZ9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4371
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_194108_951488_7F2D91AB 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IE1pYW4gWW91c2FmIEthdWth
YiA8eWthdWthYkBzdXNlLmRlPg0KPiBTZW50OiAyMDIwxOo01MI0yNUgNToyMQ0KPiBUbzogbGlu
dXgtcG1Admdlci5rZXJuZWwub3JnOyBBbmR5IFRhbmcgPGFuZHkudGFuZ0BueHAuY29tPjsNCj4g
c2hhd25ndW9Aa2VybmVsLm9yZzsgTGVvIExpIDxsZW95YW5nLmxpQG54cC5jb20+DQo+IENjOiB2
aXJlc2gua3VtYXJAbGluYXJvLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsNCj4g
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBsaW51eHBwYy1kZXZAbGlzdHMu
b3psYWJzLm9yZzsgTWlhbg0KPiBZb3VzYWYgS2F1a2FiIDx5a2F1a2FiQHN1c2UuZGU+DQo+IFN1
YmplY3Q6IFtFWFRdIFtQQVRDSCAyLzJdIGNsazogcW9yaXE6IGFkZCBjcHVmcmVxIHBsYXRmb3Jt
IGRldmljZQ0KPiANCj4gQ2F1dGlvbjogRVhUIEVtYWlsDQo+IA0KPiBBZGQgYSBwbGF0Zm9ybSBk
ZXZpY2UgZm9yIHFvaXJxLWNwdWZyZXEgZHJpdmVyIGZvciB0aGUgY29tcGF0aWJsZSBjbG9ja2dl
bg0KPiBibG9ja3MuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBNaWFuIFlvdXNhZiBLYXVrYWIgPHlr
YXVrYWJAc3VzZS5kZT4NCj4gLS0tDQo+ICBkcml2ZXJzL2Nsay9jbGstcW9yaXEuYyB8IDMwICsr
KysrKysrKysrKysrKysrKysrKysrKysrKy0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDI3IGluc2Vy
dGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsv
Y2xrLXFvcmlxLmMgYi9kcml2ZXJzL2Nsay9jbGstcW9yaXEuYyBpbmRleA0KPiBkNTk0NmY3NDg2
ZDYuLjM3NGFmY2FiODlhZiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9jbGsvY2xrLXFvcmlxLmMN
Cj4gKysrIGIvZHJpdmVycy9jbGsvY2xrLXFvcmlxLmMNCj4gQEAgLTk1LDYgKzk1LDcgQEAgc3Ry
dWN0IGNsb2NrZ2VuIHsNCj4gIH07DQo+IA0KDQpGb3IgYm90aCBwYXRjaGVzLA0KUmV2aWV3ZWQt
Ynk6IFl1YW50aWFuIFRhbmcgPGFuZHkudGFuZ0BueHAuY29tPg0KDQpCUiwNCkFuZHkNCg0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
