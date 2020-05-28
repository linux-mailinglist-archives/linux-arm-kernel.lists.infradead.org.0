Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F9441E5381
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 03:57:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LHFNc5zWyggQuep8zHpUUf/V6MazyLTulrDlxiPdxXA=; b=r30YLCAfukb5ms
	nmTFyTkvlewzCzWQOFD/5NsIgFvJXsmfBZMMlERFIoO/Tiz2N1qpIVpDHYbSWgU8qPOFmlLTP1wCu
	P9A6bqZe6Z/BveGaaHJGjjfPMIIvEXUbpu2yTW3YALZMe05CXHPDkkzexFfhUqA+7l8/VP1JzdnCx
	YOT4sE8F2D8reCvUv9D44ExavRL5ByYgee0AJltfG3C66cG8GkdPP/Fgpnz7R7giGy8eO00oUrjUN
	5t+YKc2OAmPoVFF6/h6jZDJzxTPQEGIcVpbdVH8UCdq0dC8qKCurD841LKeRTSZif4meGrfByv6CK
	9b0Kf0+w7NAGwiamB7hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je7nc-0005Wz-6k; Thu, 28 May 2020 01:57:36 +0000
Received: from mail-eopbgr70058.outbound.protection.outlook.com ([40.107.7.58]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je7nQ-0005WW-RA
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 01:57:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LjUTaoCs4mOZIqbjSHkQxfKuCKsaebYLdCzH8WUcVDOjGdT2dZjh3czQdDESM0JANf4Y5urZwPbbM4HzIP5lFtv4Dg27Ir4u6vMc/s2itmxGoM1udJW3EUHvHy92dLzI1h4jdZAz2ghx3TGA9LujEL0XnaDDMLtB7s/8qLpPPmuszR4lzh48HNgWfFgLnKaxhbkVNL331VNI7KIiIadx2/0XQV3S7rlWaXLtO5g4Pfwmd6owhDe6sejs+wmRR7XpUGWuVbf2UOGPP5cmZShDa56da1GiPFGOmJgoDKTdeLe49fvRVz89OmiP8ttiOoYHSzeKoPUcQ67MfrdxKD7ZqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/zqB+m1lBV5UI6C1vvcEnMmd1/bC5QFsATPgeSi9tzU=;
 b=MCrrjoxXigCa33ZMuQX+ynAL1kJ8yjqzxQtj0AHHmB9xCA5yGsUdpNqzGgDR0VWt/QRiXEHZw4nGtTQ0Lq+RcGb/isa6Ty6KwKgS2gFIsKKPD3Po7zU+LDRjExlA9q6Hkj2XoGiPHgIbH8fwy8G3JhBH1U5RBJT4/8lQneFyezFWu1T1iUTB4tGpGKtoQMWkXkI1I8cedykvdt1JG5yhcWyMB2CLNDrFxVEFQZFyh0hlbHMJg+Sw+qkduAJiqd28GDBcoB3xwaxpCfH/qH9CBDCdXfUZJXHe+9yPEOSRvYzeosh0lxOln8JaSAUXmIF4eVKTqx+Tacbz+rIBhX3QdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/zqB+m1lBV5UI6C1vvcEnMmd1/bC5QFsATPgeSi9tzU=;
 b=IvX0V5dOBZ6iNui0CttYf/CBcZS8LMU3XPg7q5hhlDw7opnTNaq411p1VjhvHe4oXmRv2MoHsddIs5ImZqp+DHz76hGK4ZUe+CRR9N3YDlea17C1/lL03N5x6pHkjOsr37jbvWEaBpdNhvED6GK66LK1OGIj2HNgVKLY19N1Zww=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3900.eurprd04.prod.outlook.com (2603:10a6:8:e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Thu, 28 May
 2020 01:57:18 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3%6]) with mapi id 15.20.3045.018; Thu, 28 May 2020
 01:57:18 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "will@kernel.org" <will@kernel.org>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>, "tglx@linutronix.de"
 <tglx@linutronix.de>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 1/2] clocksource: Add support for i.MX TPM driver with
 ARM64
Thread-Topic: [PATCH 1/2] clocksource: Add support for i.MX TPM driver with
 ARM64
Thread-Index: AQHWDwIfykn3GbYV0USEb7mMaI2Asqi9CHHQ
Date: Thu, 28 May 2020 01:57:18 +0000
Message-ID: <DB3PR0402MB3916D1D331DF9C64DE4814C9F58E0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1586500008-4418-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1586500008-4418-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 11ab2ec4-55fb-42cd-70b2-08d802aa73d1
x-ms-traffictypediagnostic: DB3PR0402MB3900:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3900E7826A21B30B6EBCC1B3F58E0@DB3PR0402MB3900.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 0417A3FFD2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Gen1h8G18e0Bqnpl7xVvDev7s96fE5F5ho8IY21wmd+B+QgW3rnhi8gVGHMYxUd/E9ubumh/IsApNoERA1ZzZeBPhq+KjLrWdtBjv1gDD8MG5J9jVIB1xCO0Uo8FqXoEimJUsPDdiPKD3SNCHRJ/SInNJq4xAB3wpGifrlXngD9fXlsmh7id+Uf3NQxT8kg7xJswLd0nd8eDsSRNO1xRNRxT3rdrv6bhxRrGWuXHQEgYiASLw7YTQdK3uhjl11DdH8HtJB2nslH/vJMKCSZm4L35K70k6/I8fySsuQVZsu47Jnb+vBQdgWtI7xTJXvtmhd8U94+hNEGGviOBdxkQwA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(376002)(346002)(366004)(136003)(396003)(83380400001)(71200400001)(110136005)(478600001)(66556008)(66476007)(44832011)(66446008)(76116006)(52536014)(64756008)(66946007)(5660300002)(6506007)(8676002)(53546011)(186003)(26005)(7696005)(33656002)(4326008)(55016002)(2906002)(86362001)(8936002)(9686003)(316002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: dTN39I6U583lP2q4dEbyVW/QmQ9kzF+oC5CTv502hAon7nFswPotoCZUDZQcoRUbH9a85VG6yjPPRWTF341c/9bsxt7GISAE5m4ZNoRhvz0GAlcMCc2Utq5iUXbmMQYlIfEwgXh9Y474fI4oaDbC9mMdSv5Pyf0GlZj9zd2xcVmQ7te1E5i4f9V4PdpxTgZ10pgyK2y3VhNQm2KeBK9hsyk5tCnZAczpxCbpYg5+Yt8vFL7ZUJtPVWejigplDiXhA3FqZ5u6kV9senBOVMaHB2wEiP72Z8Lio8SFacIGCEkHFdRxLq5RzULhc1YPfaXUUw7xqk8RX2ZIePMuxOHx9LRsxB8d+GzbCLoQKfd/LoMBc7sFGd4pq1ntGtqIR5N0yUtz7LJSiEkDBOQJgpF1PSV1TKqQgz3KIa9ZFj2SgXyvdm8Ohz5eOmt9OuLnh2jzsnTtpnkPZvU7w3vXdLCHuf0xrglcdUqhy+bxUBaUiXKuMg4+wG0iSAkqpWZSoyzA
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 11ab2ec4-55fb-42cd-70b2-08d802aa73d1
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2020 01:57:18.2447 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: suGVxQjHRlVTTT6WfQLyZv9Vk50MLNjJLIrCRdnedibdvA6kJ59en1isLWxhuX6X9zWeZ2/6CyIfkBCUR5CQyw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3900
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_185724_880588_DAABABF2 
X-CRM114-Status: GOOD (  15.78  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.7.58 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.58 listed in wl.mailspike.net]
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
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

R2VudGxlIHBpbmcuLi4NCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBB
bnNvbiBIdWFuZyA8QW5zb24uSHVhbmdAbnhwLmNvbT4NCj4gU2VudDogMjAyMMTqNNTCMTDI1SAx
NDoyNw0KPiBUbzogY2F0YWxpbi5tYXJpbmFzQGFybS5jb207IHdpbGxAa2VybmVsLm9yZzsgZGFu
aWVsLmxlemNhbm9AbGluYXJvLm9yZzsNCj4gdGdseEBsaW51dHJvbml4LmRlOyBsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7DQo+IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5v
cmcNCj4gQ2M6IGRsLWxpbnV4LWlteCA8bGludXgtaW14QG54cC5jb20+DQo+IFN1YmplY3Q6IFtQ
QVRDSCAxLzJdIGNsb2Nrc291cmNlOiBBZGQgc3VwcG9ydCBmb3IgaS5NWCBUUE0gZHJpdmVyIHdp
dGgNCj4gQVJNNjQNCj4gDQo+IEFsbG93cyBidWlsZGluZyBhbmQgY29tcGlsZS10ZXN0aW5nIHRo
ZSBpLk1YIFRQTSBkcml2ZXIgZm9yIEFSTTY0Lg0KPiANCj4gU2lnbmVkLW9mZi1ieTogQW5zb24g
SHVhbmcgPEFuc29uLkh1YW5nQG54cC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9jbG9ja3NvdXJj
ZS9LY29uZmlnIHwgMiArLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRl
bGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbG9ja3NvdXJjZS9LY29uZmln
IGIvZHJpdmVycy9jbG9ja3NvdXJjZS9LY29uZmlnIGluZGV4DQo+IGYyMTQyZTYuLmU5ZTdmZTEg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvY2xvY2tzb3VyY2UvS2NvbmZpZw0KPiArKysgYi9kcml2
ZXJzL2Nsb2Nrc291cmNlL0tjb25maWcNCj4gQEAgLTYxNyw3ICs2MTcsNyBAQCBjb25maWcgQ0xL
U1JDX0lNWF9HUFQNCj4gDQo+ICBjb25maWcgQ0xLU1JDX0lNWF9UUE0NCj4gIAlib29sICJDbG9j
a3NvdXJjZSB1c2luZyBpLk1YIFRQTSIgaWYgQ09NUElMRV9URVNUDQo+IC0JZGVwZW5kcyBvbiBB
Uk0gJiYgQ0xLREVWX0xPT0tVUA0KPiArCWRlcGVuZHMgb24gKEFSTSB8fCBBUk02NCkgJiYgQ0xL
REVWX0xPT0tVUA0KPiAgCXNlbGVjdCBDTEtTUkNfTU1JTw0KPiAgCWhlbHANCj4gIAkgIEVuYWJs
ZSB0aGlzIG9wdGlvbiB0byB1c2UgSU1YIFRpbWVyL1BXTSBNb2R1bGUgKFRQTSkgdGltZXIgYXMN
Cj4gLS0NCj4gMi43LjQNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
