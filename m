Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF5B1B6B6B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 04:36:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QbiEZnu7seBntoBIqH2iBVqosbJT4i5MiwrPN3h7voE=; b=PuudYw54uueYg8
	5N7C9pD2oDX49t5pVbvI2pV9zmtyxKTqnAgFSMbdAFraigKClAqV+MhuNswvsz2B6OtiyFNiOjBGL
	k2pZu/36G872+yH5NwWng9la6NRrb5jIjIuNsDN6e6I6BvEmXbnMtY/i3WHCloUDAttedRIb9XMsc
	O7EMQzpT/bdwlHTQ115prp8hSwKTghgBtzZK/VZ9/ZCI4etIoMhJCJpP4LAVS6tUcp2teSNCDHOJ+
	Aid0TqH0QjyJhKbBLXX9rp+4EyBfkwvAhnZov3Qycf9fWP+sBLIp0uFxesF/2U4K4S6QtBWUdHRlP
	4fIDPLoaHTqNEaltJQGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRoCi-0002pf-Mp; Fri, 24 Apr 2020 02:36:36 +0000
Received: from mail-eopbgr00065.outbound.protection.outlook.com ([40.107.0.65]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRoCY-0002oG-Sa
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 02:36:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TX+egzHglXZ6/DmyZ9/H0UaTXfEEuiRjd9230it6F6ONP+j/+ElMk9nT9eO4L1S82JRSSzi7otStzcbeNDgGwdbW9EyT9+dM0S7w/DoEzYf4AybVoOmToFKaKl6jnNApGI/DTiBa2Eesx6ayxRBZHIE1zilu/t2hI5AuKLoHwYqsZ+fd05KS02oLuyDYWV43wsYSERVtFRa7Wv6PndvXBPBbW4CYo1jc6pI3/6B99d5myN7N+yTtK8zQj6lZLAI0jPjVSMyjkye4Pyhqtx7pbazaUaJrxSQs2udBrm+v49nJJKTsZHylLPn+AaU20NHmPOZwis/OhEgoUaigFHzWuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jr49xRxlegXSsBJ1hteIt4eCbTdG1UzFXkD8zdSaliA=;
 b=YBL7ceTIOp/Sp06pPTDNb8Jp9m6GX92HS9xPg88I6k7j2TDXRyaVqp/8sjVplGDB5U+rKacTOsbhOZ4ZR8YOxKQInlijVDp+TUihu1yDUBoS83nLTjnE52Kit8lcLv5AmzLyjkwBymIJ11gZz+OnKvo3sglrDWuOzOsNgEYCZP7+o8dikxordESK46gNT2IoGX4Nnaltxa+FjsYS8fzSPJ4nvcwi+xSXwie4A1sjn0605g8zFRnnBuTntn12nMRwyHBIxCDgNVNHaa89zbQF5HKvqzckJALeMRtR57SMkYGR4TaeY/ydtw22Mrt39u7YCxkMhRM7PEuueCyr6q8tqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jr49xRxlegXSsBJ1hteIt4eCbTdG1UzFXkD8zdSaliA=;
 b=UDsVAUlgJ6c4Arnr7E87Zo4ZeCYJgUKyf2jYlmm81l4H1pm3/zsPCX7KfRov7LZJlzRbZggB6bWdSF4XyUQaLEz5uQDzUQbduTH9Qnp8tpbN6j6E/yr+rX4uGvT9OTFG0W9oYUXXurqT24MgbJHD1Fgwgw3ttvzD9gQeIG89TvU=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3772.eurprd04.prod.outlook.com (2603:10a6:8:e::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Fri, 24 Apr
 2020 02:36:20 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b%7]) with mapi id 15.20.2921.035; Fri, 24 Apr 2020
 02:36:20 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "ben.dooks@codethink.co.uk"
 <ben.dooks@codethink.co.uk>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 2/2] firmware: imx: MU IRQ group number should be 7
Thread-Topic: [PATCH 2/2] firmware: imx: MU IRQ group number should be 7
Thread-Index: AQHWGcUyRBBHbYoQgE22BeJnUGUH+KiHjasAgAAAN3A=
Date: Fri, 24 Apr 2020 02:36:20 +0000
Message-ID: <DB3PR0402MB391699FFA107CD570B943705F5D00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1587683231-18468-1-git-send-email-Anson.Huang@nxp.com>
 <1587683231-18468-2-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB496669637FE86E928B9E0EBE80D00@AM6PR04MB4966.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB496669637FE86E928B9E0EBE80D00@AM6PR04MB4966.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 87deac25-fb5d-4cdf-2c79-08d7e7f845be
x-ms-traffictypediagnostic: DB3PR0402MB3772:|DB3PR0402MB3772:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB377286A689858C7435AC1FA8F5D00@DB3PR0402MB3772.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2399;
x-forefront-prvs: 03838E948C
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(39860400002)(366004)(346002)(396003)(376002)(76116006)(33656002)(26005)(8936002)(186003)(71200400001)(66946007)(81156014)(4326008)(5660300002)(53546011)(44832011)(6506007)(7696005)(86362001)(478600001)(316002)(52536014)(4744005)(110136005)(64756008)(2906002)(66446008)(66476007)(9686003)(66556008)(8676002)(55016002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GnbybofAbVU6wO7KD29iw9keGYoeNsCp5oxHQtsBc3cvvxrf0Dr3QLmRYeRwH5uW+vk6UwRt8SBXEvu0udTGdwfSYTagUdr+eF9/KgTlMXmZke4z3jhFTgRaTbwgGpk6BUxrzzj/77Pe0G+6hsRDgyS3xyBOZv39k3uApq7g/qwU/MSAtgSL2dbEx47nDWi8p4WmP9zeOugc9pyPbyLVWt10BJAB2ho2ztfhagjZ93k8W9jxk6t2MvhLawCbtExrxpK0DyYsBdzapcdUDzqKssK3ur5LWgbZ5ZtTmYTlcGreLaM4InnG6lXIP7as3WI1CnTvoTn89cj9Lw8dugdWlCRjGh8CY7IMEOk0eUsNxAMnUcpyDA8ZqTrB6heg+KMuPBqXo2t9bRKmo3fO/CDYHMLh6Kjv+lLXumfRePKYVpvVwCtXu0KZ943Ia2jKKfQK
x-ms-exchange-antispam-messagedata: ePK2qt+f6bPsfw4REWoeRVuHdeZzMmOFCaUp2Ho4F9p52pW50KwOLry4qYkFyrvZPPWpsFwfLmVNs4jYjJBQHYgG+Yu49u2Ld8gcCj8OlQmz9m1rp6fCVtnM91ddgr/bB2gTsfODuhCMkVKEQ12cTeUidN38trWwo0krjga0vzFGLGMt+NsFQ2WJIDEWPGF1ol3MoecP0xq0C2uETX5Nq8vMIoxgOBctuq1a+cmLTaSX3Pwr2suP7gyRv+FujdF4rZpAUtEIvi7W+7ngbAnkoXGh2Wb4AW9iFM6SqIX5dorODH8aQZ/FsH7rGUz4SQ/4grUeSTXX9If1ybcYeCHTxlcAaLjnfoso8lPMKi892SLPmY/gAfpWXR9WY9BjptawOu/mQzjmmxld24LO6C9gXa1nuoKqVnxL3M7ICfUMRfMxJGlCd1XAd6ZUGMLKvZg9eDQim+S4a/Mo0Yd1LwTHqFPQImJ1riGhnfTm1e8mGoxpdbMqGwz9HRY71x8K8PPVBTqnTWnyxxGtEaM+BOtgaSkAobsXFlREtCHq18Dp6Mj2XY0w5kKgzQ6ZT2caWBcFHIubS9/CIbNMxXQRwk2vduJiwXF3zGAMtZuN993+tjov9dC3TlHMjL+VXUekssTpoycGF63WEk5esdy4dgTpMmp/2kT8mmPH7YZshhSKdSPDj5VhHn8/6YejDWl8nB0sPZEWtMi9baZYE9pSCpf3tSe56dTcOEY/OnLIQtHT0DNLFVJzPCo1oZLHvsbqrEcK/f7g8UG+v4PGnFbUxlvlEnln+Mrbf8N88RBdanXG4Ws=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87deac25-fb5d-4cdf-2c79-08d7e7f845be
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2020 02:36:20.3611 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9R33N31FkxRRBA5No6TaRpP11F+zoDz2wQF9RjBSspCieL0KvcrdWgEcB7ZpidmHSEglH3WrBVsaQa7u50ZmrA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3772
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_193626_921746_964C34A5 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQWlzaGVuZyBEb25nIDxh
aXNoZW5nLmRvbmdAbnhwLmNvbT4NCj4gU2VudDogMjAyMOW5tDTmnIgyNOaXpSAxMDozMw0KPiBU
bzogQW5zb24gSHVhbmcgPGFuc29uLmh1YW5nQG54cC5jb20+OyBzaGF3bmd1b0BrZXJuZWwub3Jn
Ow0KPiBzLmhhdWVyQHBlbmd1dHJvbml4LmRlOyBrZXJuZWxAcGVuZ3V0cm9uaXguZGU7IGZlc3Rl
dmFtQGdtYWlsLmNvbTsNCj4gYmVuLmRvb2tzQGNvZGV0aGluay5jby51azsgbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOw0KPiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3Jn
DQo+IENjOiBkbC1saW51eC1pbXggPGxpbnV4LWlteEBueHAuY29tPg0KPiBTdWJqZWN0OiBSRTog
W1BBVENIIDIvMl0gZmlybXdhcmU6IGlteDogTVUgSVJRIGdyb3VwIG51bWJlciBzaG91bGQgYmUg
Nw0KPiANCj4gPiBGcm9tOiBBbnNvbiBIdWFuZyA8QW5zb24uSHVhbmdAbnhwLmNvbT4NCj4gPiBT
ZW50OiBGcmlkYXksIEFwcmlsIDI0LCAyMDIwIDc6MDcgQU0NCj4gPg0KPiA+IFRoZSBNVSBJUlEg
Z3JvdXAgbnVtYmVyIHNob3VsZCBiZSA3IGluc3RlYWQgb2YgNC4NCj4gPg0KPiA+IFNpZ25lZC1v
ZmYtYnk6IEFuc29uIEh1YW5nIDxBbnNvbi5IdWFuZ0BueHAuY29tPg0KPiANCj4gQXJlIHdlIHVz
aW5nIG90aGVycyBJUlEgZ3JvdXA/DQo+IElmIG5vdCwgdGhpcyBjaGFuZ2UgbWF5IHNsb3cgZG93
biB0aGUgaXJxIGhhbmRsaW5nIHNwZWVkLg0KDQpUaGUgaXJxIGhhbmRsaW5nIGlzIHVzaW5nIHdv
cmsgcXVldWUsIE5PVCBpbiBJU1IsIHNvIHRoZSBzcGVlZCBpcyBOT1QgdGhhdCBzZW5zaXRpdmUu
DQpUaGUgc2N1IGdyb3VwIGlycSBkcml2ZXIgc2hvdWxkIHByb3ZpZGUgZnVsbCBmdW5jdGlvbnMs
IGFzIG90aGVyIGRyaXZlcnMgdXNpbmcgaXQgbWF5IGVuYWJsZQ0KdGhlIGdyb3VwIHRoZXkgd2Fu
dC4NCg0KQW5zb24NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
