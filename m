Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 909D1172E03
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 02:13:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L+qKTuCsi66rj+8+crb0lYcTAkggrkkhtSZzzMlsne4=; b=Y4MyEptRM5Bybf
	/5tyqhCLY+2S/SWgvP16CHSxVBexW2pJ0w/2d60ZhszZZbl+qnsvWYmdgPNz7L58hHQMAu5VrWn1Z
	Dh9lKS5HoHUK1PMgQvbscV1H0kQCGQV1tz40ldMNylnV7C01BUVx097CYmrDlJ/nZyiYeHLGjwbt4
	Y4vU4iYOYwlpLY7Sf6ObX5FoiS16Fq2uK/9nayqaZrilbqFG+ZszfyaJZNaVoNd3pEdZYPNJ42i/t
	6aCIrV0Te5Z/08hri81PXK33O0zedpY7qwtWTHpfbbc/0R0KVa2r1LxsQ4xFuPQ2iaVah1QwTQjeu
	P8RDkfR0oxJcbQMN0bEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7UDD-0003cV-G4; Fri, 28 Feb 2020 01:13:07 +0000
Received: from mail-eopbgr80042.outbound.protection.outlook.com ([40.107.8.42]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7UD1-0003by-3p
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 01:12:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EoJji+ygc5sufRWVYVtWVJiRU0joPKNmaw/y9Dw7wWSN3gsJ8BW1kO234waw2Ec6SIdcROztnlbUcSDKRdyJtp7hssOuv2WMHnvWvh8T6OVPCjUk6GWK9yMSAjvbz6LmMI+fTQTCVRx7odMjjS9X8iPLdulIWGMXVBi+j4bFsVovsh8Yx4tm2vwzzqZJYQHLqzHuGIwo4zW+qMa52cOTd2ePxTjfdYa/xZ8BsaYxZl0LUgsnLTvebDdtBXq3qrTjOSDYhqd6CsDSw8gMQ1/Lnlqhrtuijvjzyy1v0XIsq4e477s2CYF+e451IhOiK89xJUrrpjRqGVSUUxEjEbTFaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nNhF7CaOU+Lel8VbxhOicQZy7Wb5ip/mZnaV4ekyw6c=;
 b=WZ8Hy3s2nYGqkMPqBjUdySf8BUsb1ANATgJudWbooz6u9ire8XJFbSBCLiHjXiYtBcaefwmiyPkS+O4lpK0l2oIwK/3vaPVEeSrFE7prqNh2KsO35R5nXP+3Iwxx2JocX7SZmw1g9hJVoDvIo8Yg6XFOUYlgTWynZ2nOmH5Dx/v+pdPE+DKy/RJOpoGcmCW3vgUHw2sXsX2NE+95QxYe/2zzZYerYdHZ1zkgF01RZSPiKERn2kytSGfTgzKJK+q+be8JWp1aJxz+n6S47j2k3TzT4W7MhED6otcpzqqqKDJY4LUUen7iVnrg00iW8Ln6AI3lzjRE84GffKk9MNFPRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nNhF7CaOU+Lel8VbxhOicQZy7Wb5ip/mZnaV4ekyw6c=;
 b=T8/BeL1G/vFWgyklTJgTYnUVoHD6SF9yselMBbNBRpQqWaPZMewe5Jrzhc3xXBwMFbL/R7t/A62KVMqY3IXr921+hUbjpjJPDKgY4u0ChKFVKu7Fms4UNbshgCCI5G5vNMkLW0u9zYtE9XlpUvNROIL2s5gBWNrtpXXjWMvMg40=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3660.eurprd04.prod.outlook.com (52.134.70.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.14; Fri, 28 Feb 2020 01:12:52 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96%5]) with mapi id 15.20.2772.012; Fri, 28 Feb 2020
 01:12:52 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, "rui.zhang@intel.com"
 <rui.zhang@intel.com>, "amit.kucheria@verdurent.com"
 <amit.kucheria@verdurent.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will@kernel.org" <will@kernel.org>, Leonard Crestez
 <leonard.crestez@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>, "S.j. Wang"
 <shengjiu.wang@nxp.com>, Peng Fan <peng.fan@nxp.com>, Jacky Bai
 <ping.bai@nxp.com>, Jun Li <jun.li@nxp.com>, "bjorn.andersson@linaro.org"
 <bjorn.andersson@linaro.org>, "olof@lixom.net" <olof@lixom.net>,
 "vkoul@kernel.org" <vkoul@kernel.org>, "dinguyen@kernel.org"
 <dinguyen@kernel.org>, "marcin.juszkiewicz@linaro.org"
 <marcin.juszkiewicz@linaro.org>, "linux-pm@vger.kernel.org"
 <linux-pm@vger.kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH RESEND 2/4] thermal: imx8mm: Add support for i.MX8MM
 thermal monitoring unit
Thread-Topic: [PATCH RESEND 2/4] thermal: imx8mm: Add support for i.MX8MM
 thermal monitoring unit
Thread-Index: AQHV58cPTXVn3qoaD0ekPBUouxzRXKgu7K0AgADqiSA=
Date: Fri, 28 Feb 2020 01:12:51 +0000
Message-ID: <DB3PR0402MB39163AE75E59613AB6B21575F5E80@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1582186646-22096-1-git-send-email-Anson.Huang@nxp.com>
 <1582186646-22096-2-git-send-email-Anson.Huang@nxp.com>
 <f8dfdb39-14e5-4ee2-927a-fecbcd66c71e@linaro.org>
In-Reply-To: <f8dfdb39-14e5-4ee2-927a-fecbcd66c71e@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 2b71d6f6-72bf-409b-9696-08d7bbeb5570
x-ms-traffictypediagnostic: DB3PR0402MB3660:|DB3PR0402MB3660:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3660F46A17A268BC320003EFF5E80@DB3PR0402MB3660.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0327618309
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10001)(10009020)(4636009)(346002)(366004)(396003)(136003)(39860400002)(376002)(199004)(189003)(66476007)(64756008)(66556008)(76116006)(66446008)(66946007)(5660300002)(9686003)(6506007)(81156014)(55016002)(2906002)(53546011)(7696005)(81166006)(52536014)(8936002)(71200400001)(8676002)(966005)(86362001)(186003)(7416002)(44832011)(26005)(33656002)(4326008)(110136005)(316002)(478600001)(45080400002)(921003)(32563001)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3660;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Gwls+gYTf7XDKR+sf3xj+iEbQu04PzAGPFQl+XS1P5iuQyLWO9wVhOSzmSXRAIt+Hkbuw+nTX6e6NbeIvWYe8dHTlaWnOLAeufpcv1G3qIWFWsKZjEa7vkC0kF629zCBzRhnOm9upRn/92zR3RDTjqtnDwQB1vOp1Hu+XMl5jnGqx5/KI5QT3HicpCrtIWrLfXxltRFSdTtazZN0BQpuNbYQJtzL5takD0QFAUt2X6PtWovGJ5D97fCb3xRYQJD4SfEtmPO4eV6oOYnZrqZeAgAhSryJB6QSI1PJ8fVh5339baugwvkv9T/zLVd2ixR7fc5FylX10hRgTTJyvzXNhBuxawkyTsNIyszdFhwXMsNDeLG9M+2RDNnX1hcYoU2PsldRDiBVvzUPoXjJNAzoZfxv7e+1X7H179+BFNqIUoiM1kCF78ufYWKyV/BnLJ7bQDMFBT6gBTzhhKRx4OjovzRQCnsEv6i/gidjx/wthqDG+/wJSo6KGW0jc2VgQx9Ix9eS2cpBRgmpp4/1wrOSWwgqKkjEfyp6z4e4mEBUaOeZlqfq6eGXtlh2HX4DunirfHCd3OsSAujmvNV5wpiueCfbZn5BLaitBiPe08AvFbETK3lc83Ono7uxjc7OmAt0CqLHZPRyloqAuFMnNibtE8NqxHLFCQuUIaaPuUhJI7OtLqLekQWjeZhvxNHkMwniQ73oCKmgJpI02jndGJKH2A==
x-ms-exchange-antispam-messagedata: NZfgNcxen/wUFCIh+vPkEHx2dVmboRCxbg0R5RtbYbf0c/0/TGTbvRArZMQPVAfHZjo+nbJEQw1BQmgYm3KKYVFYktRLeexyJZ6Q1DVwl5vhORMzKqNBVQmSMXDFL3R6hPgkC5TW35AfFx4gTVYZWw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b71d6f6-72bf-409b-9696-08d7bbeb5570
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2020 01:12:51.8756 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: buBOFCbJXZmFbeM6ydfaRYebg88pdTGivurXiBqbkIFLVxXp/3n41dlng3bNClpGq0mOqEr0LhPFqZE8rBXNnQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3660
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_171255_321398_C9C9D850 
X-CRM114-Status: GOOD (  27.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIERhbmllbA0KDQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggUkVTRU5EIDIvNF0gdGhlcm1hbDog
aW14OG1tOiBBZGQgc3VwcG9ydCBmb3INCj4gaS5NWDhNTSB0aGVybWFsIG1vbml0b3JpbmcgdW5p
dA0KPiANCj4gT24gMjAvMDIvMjAyMCAwOToxNywgQW5zb24gSHVhbmcgd3JvdGU6DQo+ID4gaS5N
WDhNTSBoYXMgYSB0aGVybWFsIG1vbml0b3JpbmcgdW5pdChUTVUpIGluc2lkZSwgaXQgT05MWSBo
YXMgb25lDQo+ID4gc2Vuc29yIGZvciBDUFUsIGFkZCBzdXBwb3J0IGZvciByZWFkaW5nIGltbWVk
aWF0ZSB0ZW1wZXJhdHVyZSBvZiB0aGlzDQo+ID4gc2Vuc29yLg0KPiA+DQo+ID4gU2lnbmVkLW9m
Zi1ieTogQW5zb24gSHVhbmcgPEFuc29uLkh1YW5nQG54cC5jb20+DQo+ID4gLS0tDQo+ID4gVGhp
cyBwYXRjaCBpcyBiYXNlIG9uIHBhdGNoIHNlcmllczoNCj4gPiBodHRwczovL2V1cjAxLnNhZmVs
aW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMlM0ElMkYlMkZsa21sDQo+ID4g
Lm9yZyUyRmxrbWwlMkYyMDIwJTJGMiUyRjE5JTJGMTI1OCZhbXA7ZGF0YT0wMiU3QzAxJTdDQW5z
b24uDQo+IEh1YW5nJTQwbngNCj4gPg0KPiBwLmNvbSU3Q2E5OGM1ZjVkYTIwMjQwYWFmM2E3MDhk
N2JiNzU0MmI4JTdDNjg2ZWExZDNiYzJiNGM2ZmE5MmMNCj4gZDk5YzVjMw0KPiA+DQo+IDAxNjM1
JTdDMCU3QzAlN0M2MzcxODM5ODQ2MTMyNzEyOTQmYW1wO3NkYXRhPWxKNFl6cDU3a0pnMmZPSXVz
YjINCj4gOWUlMkZCDQo+ID4gMlA2Q3BxNmlTVlFxUzU3MUlET2slM0QmYW1wO3Jlc2VydmVkPTAN
Cj4gPiAtLS0NCj4gPiAgZHJpdmVycy90aGVybWFsL0tjb25maWcgICAgICAgICAgfCAgMTAgKysr
DQo+ID4gIGRyaXZlcnMvdGhlcm1hbC9NYWtlZmlsZSAgICAgICAgIHwgICAxICsNCj4gPiAgZHJp
dmVycy90aGVybWFsL2lteDhtbV90aGVybWFsLmMgfCAxMzQNCj4gPiArKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysNCj4gPiAgMyBmaWxlcyBjaGFuZ2VkLCAxNDUgaW5zZXJ0
aW9ucygrKQ0KPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy90aGVybWFsL2lteDhtbV90
aGVybWFsLmMNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3RoZXJtYWwvS2NvbmZpZyBi
L2RyaXZlcnMvdGhlcm1hbC9LY29uZmlnIGluZGV4DQo+ID4gZDFjYjhkYy4uOTcyYjE2OSAxMDA2
NDQNCj4gPiAtLS0gYS9kcml2ZXJzL3RoZXJtYWwvS2NvbmZpZw0KPiA+ICsrKyBiL2RyaXZlcnMv
dGhlcm1hbC9LY29uZmlnDQo+ID4gQEAgLTI2Miw2ICsyNjIsMTYgQEAgY29uZmlnIElNWF9TQ19U
SEVSTUFMDQo+ID4gIAkgIHNlbnNvci4gSXQgc3VwcG9ydHMgb25lIGNyaXRpY2FsIHRyaXAgcG9p
bnQgYW5kIG9uZQ0KPiA+ICAJICBwYXNzaXZlIHRyaXAgcG9pbnQgZm9yIGVhY2ggdGhlcm1hbCBz
ZW5zb3IuDQo+ID4NCj4gPiArY29uZmlnIElNWDhNTV9USEVSTUFMDQo+ID4gKwl0cmlzdGF0ZSAi
VGVtcGVyYXR1cmUgc2Vuc29yIGRyaXZlciBmb3IgRnJlZXNjYWxlIGkuTVg4TU0gU29DIg0KPiA+
ICsJZGVwZW5kcyBvbiBBUkNIX01YQw0KPiA+ICsJZGVwZW5kcyBvbiBPRg0KPiA+ICsJaGVscA0K
PiA+ICsJICBTdXBwb3J0IGZvciBUaGVybWFsIE1vbml0b3JpbmcgVW5pdCAoVE1VKSBmb3VuZCBv
biBGcmVlc2NhbGUNCj4gaS5NWDhNTSBTb0MuDQo+ID4gKwkgIEl0IHN1cHBvcnRzIG9uZSBjcml0
aWNhbCB0cmlwIHBvaW50IGFuZCBvbmUgcGFzc2l2ZSB0cmlwIHBvaW50LiBUaGUNCj4gPiArCSAg
Y3B1ZnJlcSBpcyB1c2VkIGFzIHRoZSBjb29saW5nIGRldmljZSB0byB0aHJvdHRsZSBDUFVzIHdo
ZW4gdGhlDQo+IHBhc3NpdmUNCj4gPiArCSAgdHJpcCBpcyBjcm9zc2VkLg0KPiA+ICsNCj4gPiAg
Y29uZmlnIE1BWDc3NjIwX1RIRVJNQUwNCj4gPiAgCXRyaXN0YXRlICJUZW1wZXJhdHVyZSBzZW5z
b3IgZHJpdmVyIGZvciBNYXhpbSBNQVg3NzYyMCBQTUlDIg0KPiA+ICAJZGVwZW5kcyBvbiBNRkRf
TUFYNzc2MjANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy90aGVybWFsL01ha2VmaWxlIGIvZHJp
dmVycy90aGVybWFsL01ha2VmaWxlIGluZGV4DQo+ID4gYTExYTZkOC4uMTIwYTA1ZSAxMDA2NDQN
Cj4gPiAtLS0gYS9kcml2ZXJzL3RoZXJtYWwvTWFrZWZpbGUNCj4gPiArKysgYi9kcml2ZXJzL3Ro
ZXJtYWwvTWFrZWZpbGUNCj4gPiBAQCAtNDQsNiArNDQsNyBAQCBvYmotJChDT05GSUdfQVJNQURB
X1RIRVJNQUwpCSs9DQo+IGFybWFkYV90aGVybWFsLm8NCj4gPiAgb2JqLSQoQ09ORklHX1RBTkdP
X1RIRVJNQUwpCSs9IHRhbmdvX3RoZXJtYWwubw0KPiA+ICBvYmotJChDT05GSUdfSU1YX1RIRVJN
QUwpCSs9IGlteF90aGVybWFsLm8NCj4gPiAgb2JqLSQoQ09ORklHX0lNWF9TQ19USEVSTUFMKQkr
PSBpbXhfc2NfdGhlcm1hbC5vDQo+ID4gK29iai0kKENPTkZJR19JTVg4TU1fVEhFUk1BTCkJKz0g
aW14OG1tX3RoZXJtYWwubw0KPiA+ICBvYmotJChDT05GSUdfTUFYNzc2MjBfVEhFUk1BTCkJKz0g
bWF4Nzc2MjBfdGhlcm1hbC5vDQo+ID4gIG9iai0kKENPTkZJR19RT1JJUV9USEVSTUFMKQkrPSBx
b3JpcV90aGVybWFsLm8NCj4gPiAgb2JqLSQoQ09ORklHX0RBOTA2Ml9USEVSTUFMKQkrPSBkYTkw
NjItdGhlcm1hbC5vDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdGhlcm1hbC9pbXg4bW1fdGhl
cm1hbC5jDQo+ID4gYi9kcml2ZXJzL3RoZXJtYWwvaW14OG1tX3RoZXJtYWwuYw0KPiA+IG5ldyBm
aWxlIG1vZGUgMTAwNjQ0DQo+ID4gaW5kZXggMDAwMDAwMC4uMDRmOGE4Zg0KPiA+IC0tLSAvZGV2
L251bGwNCj4gPiArKysgYi9kcml2ZXJzL3RoZXJtYWwvaW14OG1tX3RoZXJtYWwuYw0KPiA+IEBA
IC0wLDAgKzEsMTM0IEBADQo+ID4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4w
DQo+ID4gKy8qDQo+ID4gKyAqIENvcHlyaWdodCAyMDE5IE5YUC4NCj4gDQo+IENvcHlyaWdodCAo
YykgMjAyMCwgTlhQIFNlbWljb25kdWN0b3JzDQo+IA0KPiBBdXRob3JzOiBBbnNvbiBIdWFuZyA8
QW5zb24uSHVhbmdAbnhwLmNvbT4NCg0KT0ssIEkgd2lsbCB1cGRhdGUgdGhlIGNvcHlyaWdodCB5
ZWFyIGFuZCBhZGQgdGhlIGF1dGhvci4NCg0KDQo+ID4gKyAqDQo+ID4gKyAqLw0KPiA+ICsNCj4g
PiArI2luY2x1ZGUgPGxpbnV4L2Nsay5oPg0KPiA+ICsjaW5jbHVkZSA8bGludXgvZGVsYXkuaD4N
Cj4gPiArI2luY2x1ZGUgPGxpbnV4L2Vyci5oPg0KPiA+ICsjaW5jbHVkZSA8bGludXgvaW8uaD4N
Cj4gPiArI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPg0KPiA+ICsjaW5jbHVkZSA8bGludXgvb2Yu
aD4NCj4gPiArI2luY2x1ZGUgPGxpbnV4L29mX2FkZHJlc3MuaD4NCj4gPiArI2luY2x1ZGUgPGxp
bnV4L3BsYXRmb3JtX2RldmljZS5oPg0KPiA+ICsjaW5jbHVkZSA8bGludXgvdGhlcm1hbC5oPg0K
PiA+ICsNCj4gPiArI2luY2x1ZGUgInRoZXJtYWxfY29yZS5oIg0KPiA+ICsNCj4gPiArI2RlZmlu
ZSBURVIJCQkweDAJLyogVE1VIGVuYWJsZSAqLw0KPiA+ICsjZGVmaW5lIFRSSVRTUgkJCTB4MjAJ
LyogVE1VIGltbWVkaWF0ZSB0ZW1wICovDQo+ID4gKw0KPiA+ICsjZGVmaW5lIFRFUl9FTgkJCUJJ
VCgzMSkNCj4gPiArI2RlZmluZSBUUklUU1JfVkFMX01BU0sJCTB4ZmYNCj4gPiArDQo+ID4gKyNk
ZWZpbmUgVEVNUF9MT1dfTElNSVQJCTEwDQo+ID4gKw0KPiA+ICtzdHJ1Y3QgaW14OG1tX3RtdSB7
DQo+ID4gKwlzdHJ1Y3QgdGhlcm1hbF96b25lX2RldmljZSAqdHpkOw0KPiA+ICsJdm9pZCBfX2lv
bWVtICpiYXNlOw0KPiA+ICsJc3RydWN0IGNsayAqY2xrOw0KPiA+ICt9Ow0KPiA+ICsNCj4gPiAr
c3RhdGljIGludCB0bXVfZ2V0X3RlbXAodm9pZCAqZGF0YSwgaW50ICp0ZW1wKSB7DQo+ID4gKwlz
dHJ1Y3QgaW14OG1tX3RtdSAqdG11ID0gZGF0YTsNCj4gPiArCXUzMiB2YWw7DQo+ID4gKw0KPiA+
ICsJLyogdGhlIHRlbXAgc2Vuc29yIG5lZWQgYWJvdXQgMW1zIHRvIGZpbmlzaCB0aGUgbWVhc3Vy
ZW1lbnQgKi8NCj4gPiArCXVzbGVlcF9yYW5nZSgxMDAwLCAyMDAwKTsNCj4gDQo+IFdoeSBkbyB5
byBuZWVkIHRvIGZvcmNlIGEgZGVsYXkgaGVyZT8gSWYgdGhlIHNlbnNvciBjYW4gbm90IGJlIHJl
YWQgbW9yZQ0KPiB0aGFuIG9uZSB0aW1lIGV2ZXJ5IDFtcywgdGhlbiBzcGVjaWZ5IHRoYXQgaW4g
dGhlIERUIHN3aXRjaGluZyB0aGUgcG9sbGluZyB0bw0KPiB0aGUgcmlnaHQgdmFsdWUsIG5vPw0K
DQpUaGUgcG9sbGluZyB0aW1lKDIgc2Vjb25kcykgaXMgT0sgZm9yIHRoaXMgY2FzZSwgYWRkaW5n
IHRoaXMgc2xlZXAgaXMgdG8gcHJldmVudCB1c2VyIGZyb20gcmVhZGluZw0KdGVtcGVyYXR1cmUg
ZnJvbSBzeXNmcyBpbnRlcmZhY2UgdmVyeSBmcmVxdWVudGx5IGxpa2UgbGVzcyB0aGFuIDFtcywg
ZG9lcyBpdCBtYWtlIHNlbnNlPyANCg0KDQo+IA0KPiA+ICsJdmFsID0gcmVhZGxfcmVsYXhlZCh0
bXUtPmJhc2UgKyBUUklUU1IpICYgVFJJVFNSX1ZBTF9NQVNLOw0KPiA+ICsJaWYgKHZhbCA8IFRF
TVBfTE9XX0xJTUlUKQ0KPiA+ICsJCXJldHVybiAtRUFHQUlOOz4NCj4gPiArCSp0ZW1wID0gdmFs
ICogMTAwMDsNCj4gPiArCXJldHVybiAwOw0KPiA+ICt9DQo+ID4gKw0KPiA+ICtzdGF0aWMgc3Ry
dWN0IHRoZXJtYWxfem9uZV9vZl9kZXZpY2Vfb3BzIHRtdV90el9vcHMgPSB7DQo+ID4gKwkuZ2V0
X3RlbXAgPSB0bXVfZ2V0X3RlbXAsDQo+ID4gK307DQo+ID4gKw0KPiA+ICtzdGF0aWMgaW50IGlt
eDhtbV90bXVfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikgew0KPiA+ICsJc3Ry
dWN0IGlteDhtbV90bXUgKnRtdTsNCj4gPiArCXUzMiB2YWw7DQo+ID4gKwlpbnQgcmV0Ow0KPiA+
ICsNCj4gPiArCXRtdSA9IGRldm1fa3phbGxvYygmcGRldi0+ZGV2LCBzaXplb2Yoc3RydWN0IGlt
eDhtbV90bXUpLA0KPiBHRlBfS0VSTkVMKTsNCj4gPiArCWlmICghdG11KQ0KPiA+ICsJCXJldHVy
biAtRU5PTUVNOw0KPiA+ICsNCj4gPiArCXRtdS0+YmFzZSA9IGRldm1fcGxhdGZvcm1faW9yZW1h
cF9yZXNvdXJjZShwZGV2LCAwKTsNCj4gPiArCWlmIChJU19FUlIodG11LT5iYXNlKSkNCj4gPiAr
CQlyZXR1cm4gUFRSX0VSUih0bXUtPmJhc2UpOw0KPiA+ICsNCj4gPiArCXRtdS0+Y2xrID0gZGV2
bV9jbGtfZ2V0KCZwZGV2LT5kZXYsIE5VTEwpOw0KPiA+ICsJaWYgKElTX0VSUih0bXUtPmNsaykp
IHsNCj4gPiArCQlyZXQgPSBQVFJfRVJSKHRtdS0+Y2xrKTsNCj4gPiArCQlpZiAocmV0ICE9IC1F
UFJPQkVfREVGRVIpDQo+ID4gKwkJCWRldl9lcnIoJnBkZXYtPmRldiwNCj4gPiArCQkJCSJmYWls
ZWQgdG8gZ2V0IHRtdSBjbG9jazogJWRcbiIsIHJldCk7DQo+ID4gKwkJcmV0dXJuIHJldDsNCj4g
PiArCX0NCj4gPiArDQo+ID4gKwlyZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUodG11LT5jbGspOw0K
PiA+ICsJaWYgKHJldCkgew0KPiA+ICsJCWRldl9lcnIoJnBkZXYtPmRldiwgImZhaWxlZCB0byBl
bmFibGUgdG11IGNsb2NrOiAlZFxuIiwgcmV0KTsNCj4gPiArCQlyZXR1cm4gcmV0Ow0KPiA+ICsJ
fQ0KPiA+ICsNCj4gPiArCXRtdS0+dHpkID0gZGV2bV90aGVybWFsX3pvbmVfb2Zfc2Vuc29yX3Jl
Z2lzdGVyKCZwZGV2LT5kZXYsIDAsDQo+ID4gKwkJCQkJCQl0bXUsICZ0bXVfdHpfb3BzKTsNCj4g
PiArCWlmIChJU19FUlIodG11LT50emQpKSB7DQo+ID4gKwkJZGV2X2VycigmcGRldi0+ZGV2LA0K
PiA+ICsJCQkiZmFpbGVkIHRvIHJlZ2lzdGVyIHRoZXJtYWwgem9uZSBzZW5zb3I6ICVkXG4iLCBy
ZXQpOw0KPiA+ICsJCXJldHVybiBQVFJfRVJSKHRtdS0+dHpkKTsNCj4gPiArCX0NCj4gPiArDQo+
ID4gKwlwbGF0Zm9ybV9zZXRfZHJ2ZGF0YShwZGV2LCB0bXUpOw0KPiA+ICsNCj4gPiArCS8qIGVu
YWJsZSB0aGUgbW9uaXRvciAqLw0KPiA+ICsJdmFsID0gcmVhZGxfcmVsYXhlZCh0bXUtPmJhc2Ug
KyBURVIpOw0KPiA+ICsJdmFsIHw9IFRFUl9FTjsNCj4gPiArCXdyaXRlbF9yZWxheGVkKHZhbCwg
dG11LT5iYXNlICsgVEVSKTsNCj4gDQo+IEEgc2lkZSBub3RlIHBlcmhhcHMgeW91IGNhbiB3cmFw
Og0KPiANCj4gc3RhdGljIGludCBpbXg4bW1fc3RhcnQoc3RydWN0IGlteDhtbV90bXUgKnRtdSkg
ew0KPiAJY2xrX3ByZXBhcmVfZW5hYmxlKCkNCj4gCXZhbCA9IHJlYWRsX3JlbGF4ZWQodG11LT5i
YXNlICsgVEVSKTsNCj4gCXZhbCB8PSBURVJfRU47DQo+IAl3cml0ZWxfcmVsYXhlZCh2YWwsIHRt
dS0+YmFzZSArIFRFUik7DQo+IH0NCj4gDQo+IGFuZA0KPiANCj4gc3RhdGljIHZvaWQgaW14OG1t
X3N0b3Aoc3RydWN0IGlteDhtbV90bXUgKnRtdSkgew0KPiAJdmFsID0gcmVhZGxfcmVsYXhlZCh0
bXUtPmJhc2UgKyBURVIpOw0KPiAJdmFsICY9IH5URVJfRU47DQo+IAl3cml0ZWxfcmVsYXhlZCh2
YWwsIHRtdS0+YmFzZSArIFRFUik7DQo+IAljbGtfZGlzYWJsZV91bnByZXBhcmUodG11LT5jbGsp
Ow0KPiB9DQo+IA0KPiBTbyB0aGUgc3VzcGVuZC9yZXN1bWUgY2FsbGJhY2tzIGNhbiBjYWxsIHRo
ZW0gZGlyZWN0bHkgaWYgeW91IGRlY2lkZSB0byBhZGQNCj4gdGhlbS4NCj4gDQoNClRoYW5rcyBm
b3IgdGhlIHN1Z2dlc3Rpb24sIHNvIGZhciwgdGhlIGkuTVg4TU0gdGhlcm1hbCBkcml2ZXIgbm8g
bmVlZCB0byBoYXZlIHN1c3BlbmQvcmVzdW1lDQpjYWxsYmFjaywgaXRzIGNsb2NrL2Z1bmN0aW9u
IHdpbGwgYmUgYXV0b21hdGljYWxseSBkaXNhYmxlZCBhZnRlciBzeXN0ZW0gZW50ZXIgc3VzcGVu
ZCwgaWYgc3VzcGVuZC9yZXN1bWUNCmNhbGxiYWNrIGlzIG5lY2Vzc2FyeSBsYXRlciwgSSB3aWxs
IHdyYXAgaXQuDQoNClRoYW5rcywNCkFuc29uDQoNCg0KPiA+ICsJcmV0dXJuIDA7DQo+ID4gK30N
Cj4gPiArDQo+ID4gK3N0YXRpYyBpbnQgaW14OG1tX3RtdV9yZW1vdmUoc3RydWN0IHBsYXRmb3Jt
X2RldmljZSAqcGRldikgew0KPiA+ICsJc3RydWN0IGlteDhtbV90bXUgKnRtdSA9IHBsYXRmb3Jt
X2dldF9kcnZkYXRhKHBkZXYpOw0KPiA+ICsJdTMyIHZhbDsNCj4gPiArDQo+ID4gKwkvKiBkaXNh
YmxlIFRNVSAqLw0KPiA+ICsJdmFsID0gcmVhZGxfcmVsYXhlZCh0bXUtPmJhc2UgKyBURVIpOw0K
PiA+ICsJdmFsICY9IH5URVJfRU47DQo+ID4gKwl3cml0ZWxfcmVsYXhlZCh2YWwsIHRtdS0+YmFz
ZSArIFRFUik7DQo+ID4gKw0KPiA+ICsJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHRtdS0+Y2xrKTsN
Cj4gPiArCXBsYXRmb3JtX3NldF9kcnZkYXRhKHBkZXYsIE5VTEwpOw0KPiA+ICsNCj4gPiArCXJl
dHVybiAwOw0KPiA+ICt9DQo+ID4gKw0KPiA+ICtzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2Rldmlj
ZV9pZCBpbXg4bW1fdG11X3RhYmxlW10gPSB7DQo+ID4gKwl7IC5jb21wYXRpYmxlID0gImZzbCxp
bXg4bW0tdG11IiwgfSwNCj4gPiArCXsgfSwNCj4gPiArfTsNCj4gPiArDQo+ID4gK3N0YXRpYyBz
dHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIGlteDhtbV90bXUgPSB7DQo+ID4gKwkuZHJpdmVyID0gew0K
PiA+ICsJCS5uYW1lCT0gImkubXg4bW1fdGhlcm1hbCIsDQo+ID4gKwkJLm9mX21hdGNoX3RhYmxl
ID0gaW14OG1tX3RtdV90YWJsZSwNCj4gPiArCX0sDQo+ID4gKwkucHJvYmUgPSBpbXg4bW1fdG11
X3Byb2JlLA0KPiA+ICsJLnJlbW92ZSA9IGlteDhtbV90bXVfcmVtb3ZlLA0KPiA+ICt9Ow0KPiA+
ICttb2R1bGVfcGxhdGZvcm1fZHJpdmVyKGlteDhtbV90bXUpOw0KPiA+ICsNCj4gPiArTU9EVUxF
X0FVVEhPUigiQW5zb24gSHVhbmcgPEFuc29uLkh1YW5nQG54cC5jb20+Iik7DQo+ID4gK01PRFVM
RV9ERVNDUklQVElPTigiaS5NWDhNTSBUaGVybWFsIE1vbml0b3IgVW5pdCBkcml2ZXIiKTsNCj4g
PiArTU9EVUxFX0xJQ0VOU0UoIkdQTCB2MiIpOw0KPiA+DQo+IA0KPiANCj4gLS0NCj4gDQo+IDxo
dHRwczovL2V1cjAxLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cCUz
QSUyRiUyRnd3dy4NCj4gbGluYXJvLm9yZyUyRiZhbXA7ZGF0YT0wMiU3QzAxJTdDQW5zb24uSHVh
bmclNDBueHAuY29tJTdDYTk4YzVmDQo+IDVkYTIwMjQwYWFmM2E3MDhkN2JiNzU0MmI4JTdDNjg2
ZWExZDNiYzJiNGM2ZmE5MmNkOTljNWMzMDE2MzUlNw0KPiBDMCU3QzAlN0M2MzcxODM5ODQ2MTMy
NzEyOTQmYW1wO3NkYXRhPWs2Um1McEpMdWpzZ2ZORERTYUJDQSUyRg0KPiBncVVnN1YlMkJleCUy
RnZnZ1paZURUZ09zJTNEJmFtcDtyZXNlcnZlZD0wPiBMaW5hcm8ub3JnIOKUgiBPcGVuDQo+IHNv
dXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MNCj4gDQo+IEZvbGxvdyBMaW5hcm86DQo+IDxodHRw
czovL2V1cjAxLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cCUzQSUy
RiUyRnd3dy4NCj4gZmFjZWJvb2suY29tJTJGcGFnZXMlMkZMaW5hcm8mYW1wO2RhdGE9MDIlN0Mw
MSU3Q0Fuc29uLkh1YW5nJTQNCj4gMG54cC5jb20lN0NhOThjNWY1ZGEyMDI0MGFhZjNhNzA4ZDdi
Yjc1NDJiOCU3QzY4NmVhMWQzYmMyYjRjNmZhDQo+IDkyY2Q5OWM1YzMwMTYzNSU3QzAlN0MwJTdD
NjM3MTgzOTg0NjEzMjcxMjk0JmFtcDtzZGF0YT1wMURETEsNCj4gT0xDRTZ3ZlZrVkFrNkY2ZFdv
aTllY3RYdlAwQWZ4V3ExaXhIdyUzRCZhbXA7cmVzZXJ2ZWQ9MD4NCj4gRmFjZWJvb2sgfA0KPiA8
aHR0cHM6Ly9ldXIwMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0dHAl
M0ElMkYlMkZ0d2l0dGUNCj4gci5jb20lMkYlMjMhJTJGbGluYXJvb3JnJmFtcDtkYXRhPTAyJTdD
MDElN0NBbnNvbi5IdWFuZyU0MG54cC5jDQo+IG9tJTdDYTk4YzVmNWRhMjAyNDBhYWYzYTcwOGQ3
YmI3NTQyYjglN0M2ODZlYTFkM2JjMmI0YzZmYTkyY2Q5OQ0KPiBjNWMzMDE2MzUlN0MwJTdDMCU3
QzYzNzE4Mzk4NDYxMzI3MTI5NCZhbXA7c2RhdGE9a2RUUENCRnpodTVKOQ0KPiBSMmNjcmZFdmdI
TmhNb2lZeXFoU2hYSlpjcGhhMlUlM0QmYW1wO3Jlc2VydmVkPTA+IFR3aXR0ZXIgfA0KPiA8aHR0
cHM6Ly9ldXIwMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0dHAlM0El
MkYlMkZ3d3cuDQo+IGxpbmFyby5vcmclMkZsaW5hcm8tDQo+IGJsb2clMkYmYW1wO2RhdGE9MDIl
N0MwMSU3Q0Fuc29uLkh1YW5nJTQwbnhwLmNvbSU3Q2E5OGM1ZjVkYTINCj4gMDI0MGFhZjNhNzA4
ZDdiYjc1NDJiOCU3QzY4NmVhMWQzYmMyYjRjNmZhOTJjZDk5YzVjMzAxNjM1JTdDMCU3DQo+IEMw
JTdDNjM3MTgzOTg0NjEzMjcxMjk0JmFtcDtzZGF0YT12UnFTWXpRWVRsMVdxOE5aZnR1a3lubnls
YUJhekYNCj4gTGppaktsdSUyQjhDV2lJJTNEJmFtcDtyZXNlcnZlZD0wPiBCbG9nDQoNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
