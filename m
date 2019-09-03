Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E75FBA60E1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 07:57:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0xTvdCWGRYIVIM+S/fR9+TCpFHjI0MEVrlUEaBVm4SU=; b=qA1XxjR7f0cZ/E
	mJP0wsuKN62wRKLq6s2d9FcWykCFbdAw6RX7R6xk8N840mUTHQ9iX6KQuAJtQIhQFSmGOmHBarruN
	eL4qDcPLquQIbOxd2rWiRriK9+y6e5/MPU0JAE1yUGqqugE6tjWeWiFwjaOQaVFbRi3QmOiRxD/Xw
	5D6vE+cWFBXyXVNjnJ+HgFXWcZS0m+9CWVYGvfW6ZM08eYgPxkuhljqaNvniS7Q+BEFEJ23p+gKKF
	6p1n5MyxKLKwLnYX8457/wZLh0x2W7dqG3oaaheSwLb/mmzDP6QN3fM8tvtHFZoxOHDWcxQr1L3Kc
	EnFc8cLhwKpnoSEiyQ0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i51oy-0000nS-4F; Tue, 03 Sep 2019 05:57:40 +0000
Received: from mail-ve1eur02on0628.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::628]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i51oh-0000mK-B8
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 05:57:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jnFWwJFlpz9Me0DikuM9harQE1NaNdWSxo4O32j7GtFTcOD9om3ayJs+bXDCcJZgD/Jr7RkGJhtefg/sFl4l0rTO797Jn87ntrbNm/tN41RCjYqY+wz1+jwFNg+5FSZCi9kKYbUTayDaNLSSE/SzpnRH9TSwQVCL7bWbJRrYqc7bD1vxLg9NxW4wynmT5itJRNdNpEqP0zWsOI4g0p2CEtHsaq1Nnc5oHQe2zj2r/Sa8dTEdFn+pwSZo4zlB+lQwqxsL/r4I+2i2Ixj/qJmz/HtAfMNA0kp8rVDKesmMju8nWnq8tDVWTib0zfBgWdRxUjfwAWDjD6HKzphOM6GJkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KVcc8+9Ly9+7TUMRBSIxAAYa1Ze2+dr0BaUeJBoufsk=;
 b=PZYNCR3nSAIP4sQhm6oJ1+sxDjvV1R4bXO2Y4WXcL9LGYNTR+0L/VUeriqhlTtmOf9N/YhHPins1CEzBf9vjPUugI/LlP7a1smtWr4mZ+jRIVjl1yEBpUtNNGLO9qN6qs6PPom/XQGHcpx3dR07k1ZetZimGL+Ai9lFz4mD+nkLpQadYMsas4U4XvxrXHBxIIorB2SYb4O7cLls3tDpRFl3nZeJyVmL2EGI0neywB85Qw7dOfqZaOILT1vV59rd5Ab7uY5+iUjLdB1gB1eNR8JeaBP8tPzbsvDOy087WcraPGSxvScqn0mSYaGVgLc6a8Moj9qFhmsacfe5XcAXpNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KVcc8+9Ly9+7TUMRBSIxAAYa1Ze2+dr0BaUeJBoufsk=;
 b=sTGsrRfYY/FkG1zNTqPrIqXFyRZyV8QvOvE7CEY6vGC05KOSkuCn+XdyGn7Y3Zm58MRssZAX//9s2mmIQHAJtKxJWeGdbcZj7YI28JaNlwOYWrDWrFqa4Iet7b4OK3q0TCfW7ENElcX+XvQECz+5NWQHUo7HWZ5XIR4TmAlWBxQ=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.235.81) by
 VE1PR04MB6671.eurprd04.prod.outlook.com (20.179.235.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.19; Tue, 3 Sep 2019 05:57:18 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::8f2:412c:88c6:a365]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::8f2:412c:88c6:a365%7]) with mapi id 15.20.2220.021; Tue, 3 Sep 2019
 05:57:18 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Jurgen Lambrecht <J.Lambrecht@TELEVIC.com>, Leonard Crestez
 <leonard.crestez@nxp.com>
Subject: RE: FYI: imx-sdma firmware is not compatible with SLUB slab allocator
Thread-Topic: FYI: imx-sdma firmware is not compatible with SLUB slab allocator
Thread-Index: AQHVXNw+wzto4eeux06zQsdxRt35zKcQS7yAgABK/MCAARQlAIAH0cMg
Date: Tue, 3 Sep 2019 05:57:18 +0000
Message-ID: <VE1PR04MB66380D06DD2619493904B38B89B90@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <1e2fe2dc-f5ea-db73-59cf-c61ec558131a@televic.com>
 <VI1PR04MB7023FB06F79F31334905D34EEEA00@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <7282882c-1c79-9685-4bfe-80195976c8d6@televic.com>
 <VE1PR04MB663818AE90C9997DC340250989A30@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <f68d8972-7471-6544-d50f-55267e6790a7@televic.com>
In-Reply-To: <f68d8972-7471-6544-d50f-55267e6790a7@televic.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9297adce-a977-482a-699d-08d730339465
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR04MB6671; 
x-ms-traffictypediagnostic: VE1PR04MB6671:|VE1PR04MB6671:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB6671C8A87D334C722EDDB2DF89B90@VE1PR04MB6671.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 01494FA7F7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(376002)(346002)(366004)(396003)(189003)(199004)(86362001)(4001150100001)(5660300002)(53546011)(110136005)(66066001)(476003)(7696005)(305945005)(6116002)(6246003)(54906003)(11346002)(81156014)(6506007)(8676002)(81166006)(7736002)(33656002)(102836004)(3846002)(76176011)(8936002)(229853002)(74316002)(4326008)(478600001)(64756008)(66556008)(66476007)(71200400001)(71190400001)(66446008)(25786009)(52536014)(6636002)(6436002)(2906002)(99286004)(14454004)(26005)(76116006)(53936002)(186003)(4744005)(256004)(55016002)(486006)(9686003)(66946007)(446003)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6671;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 6hNdi3/wYm5bv7x3m9XU/XV2KfxrqRjxPCaSa81gzqKj4WmjjQAdThGVtBSB1YRVsiRIT8p3hB1ILZ8E/r9G+4O2178cU5l4ECyQ48Q2En3ImdZ1Bb5QMTzjIxfTJwcdrSstGstCw8mmbumyd0xWgxTXhlevXT2JvaHROdE4QVoxuVlNAiT19W3xItJUJfLhqtXS0I1XzecHrDF58xP2DrouwqRAa08UeDqtVzkCi0l8OXOv6UMznUAtsBbHlvcninlF8NGjnODbtPjesCIbeJbv8mHYKgCYyyCYlvYRJj0tLZimM/bDQ0fG0NsxjIwiaEDLpWGXyhdYJjosO/xucDXHwgyKJVAkWvvjHl28NmUO/2CwNC3H/6p8K07P92AslQqCClCnuTaLg6PQtgG35KTf+qPLmkLOeXTLVDl6q1g=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9297adce-a977-482a-699d-08d730339465
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2019 05:57:18.5225 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LmRPUwNOB8bFHv856JxP3IGBMudSX7+RMC1+z0/d21ys2Ziu/y2fjg6EJYJTdu08SuRz1BuPcTHP05sAbVFLhw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6671
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_225723_768875_9707BE89 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:628 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS04LTI5IDE0OjI0LCBKdXJnZW4gTGFtYnJlY2h0IHdyb3RlOg0KPiBPbiA4LzI4LzE5
IDQ6MDUgUE0sIFJvYmluIEdvbmcgd3JvdGU6DQo+ID4gQ291bGQgeW91IGhlbHAgY2hlY2sgaWYg
YmVsb3cgY29tbWl0IGluIHlvdXIgc2lkZT8NCj4gPiBjb21taXQgZWJiODUzYjFiZDVmNjU5Yjky
YzcxZGM2YTlkZTQ0Y2ZjMzdjNzhjMA0KPiA+IEF1dGhvcjogTHVjYXMgU3RhY2g8bC5zdGFjaEBw
ZW5ndXRyb25peC5kZT4NCj4gPiBEYXRlOiAgIFR1ZSBOb3YgNiAwMzo0MDoyOCAyMDE4ICswMDAw
DQo+IA0KPiB5ZXMsIGl0J3MgaW4uDQo+IA0KPiBBbHNvIHRoZSAyIGZvbGxvdy11cCBjb21taXRz
IG9mIEx1Y2FzIFN0YWNoOg0KPiA5MDYzZjVhOTllYTc2Zjg1OTM1ZTNlNDUzNDIyZDE1ZTdiZTg5
YjllIGFuZA0KPiAzNzRmMzg0YmM2NmY3YTkyOGYxMWViMjBjMDUxOGYwZjNmYzFmZmQ2Lg0KPiAN
Cj4gQW5kIHRoYXQgYXJlIHRoZSBsYXN0IGNvbW1pdHMgb24gZHJpdmVycy9kbWEvaW14LXNkbWEu
YyBmb3IgbXkgNC4xOS54K2ZzbGMNCj4gYnJhbmNoLiBCdXQgSSBoYXZlIGFscmVhZHkgdHJpZWQg
NS4xLngrZnNsYywgYW5kIGl0IGFsc28gZ290IHN0dWNrLg0KU29ycnksIEkgY2FuJ3QgcmVwcm9k
dWNlIHlvdXIgaXNzdWUgb24gTGludXggNS4zLXJjNiB3aXRoICdDT05GSUdfU0xPQj15JyBhbmQN
ClNETUEgZmlybXdhcmUgYnVpbHQgaW4ga2VybmVsLCBDb3VsZCB5b3UgaGF2ZSBhIHRyeSBvbiBv
dXIgaW14NnVsLTE0eDE0LWV2aw0KYm9hcmQgd2l0aCBMaW51eCA1LjMtcmM2IGRpcmVjdGx5KG5v
IGFueSBwYXRjaCBuZWVkZWQpPw0Kcm9vdEBpbXg2dWw3ZDp+IyBkbWVzZyB8IGdyZXAgZG1hDQpb
ICAgIDAuOTkxOTI4XSBteHMtZG1hIDE4MDQwMDAuZG1hLWFwYmg6IGluaXRpYWxpemVkDQpbICAg
IDQuMTYyMTk5XSBpbXgtc2RtYSAyMGVjMDAwLnNkbWE6IGxvYWRlZCBmaXJtd2FyZSAzLjUgDQo+
IA0KPiBLaW5kIHJlZ2FyZHMsDQo+IA0KPiBKw7xyZ2VuDQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
