Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D92A1DC66E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 06:57:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YLuppJu35ffX2YeKzrqhSoafgDe4w1U3dbbc1/j3fo8=; b=FODAWfVL82B6fv
	wIP/2vrJilGM0/vaXZupz6/F8Lb+sWqWB0NqW/wpJA8NGHGlCIThbo3VYCKiRL1fhsY0D6jzidaBG
	CMUWDeIE/jG6Hcc+eDvEdijd7B0Zfy3Z+EAR7qBsrDoRRAaKd8f2BTcKzJbr18OQyQMp+uokj/tka
	k03qn926StHZWy/oSxr74Xn1+i6hCeqH3WP8hAWKQU5YLr6xJWNtOG4mOgwjy2CosWTu7o9G9gtGZ
	pC4sdSfxOgEv9W5idhQtdibTd+21m37pBKG03v/3yf6Jr7WhGL0fLxtc37EfWGUX+9OeKjm1R5kl6
	o++KOGjqYbuITyIElUNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbdH4-0006qU-R0; Thu, 21 May 2020 04:57:42 +0000
Received: from mail-vi1eur05on2061.outbound.protection.outlook.com
 ([40.107.21.61] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbdGv-0006pj-EU
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 04:57:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cPkUJZPLkqZLAHbB3dVoJZiubZRw7enmO3pBICS9U/Ibron5JoN4EaGKv1t07BlI4iyVMvzLNLiqO+/rU6PjpExmpS5xEzQZQRHT5XxwqWD3lf6YhadAjJh2ZroZ/rLwSsADPIQjOusXBoKhLzglrW+k9Hqdb5MwDluBB0wm19Dany+x8/AXGxsM54Z9Y9Z0jjX0oeGPKUNUoZ+o3pmO3Utxdm+RKZezbT4OiLFTcXgnSJJZlSGo4WoTUWQSVKYRZ0IadMuTbpl9LOkBxUo4MTQalpyhgAP4ls2OTPSBjC8Gvx8jYBcOLkif/dcGnOrHfjdGWRFlMmVLdN+2dKJ7Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qWmvibp+y0AXu4lGbDf2D3it3SDsvy1VFkPNe9+bIaQ=;
 b=Mgdv1C5wswTRc4POdG4pTANqXuDnFjpVeKOKKPMu/bAp/YI/BQQDeobakWbXFnNN7vk9UiAKPsW9Z8iGhmqEko6/uo08J0tlPNK5WoxG5SpdsolKE17RIQ4W83jthDLRwCLcliFV54DDGDAL26NLafAtOhJETr3iT8U/PBnpnHoaxtuZhFEAAGxF1zQHReAe0lMo/Bn8wzBpKTli+DwOAeljsMWcc85zzpBBOqExsl9Ibs+TxtZBp0KGGa+oDYxX5757M4rTx/Wwfd3GKrg0BdBgtZdNEYyuDsHWQQ/qCq1cN5RBtS3U9sMXftgw4uUPR5BCob6wphRvKXTOnQcOnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qWmvibp+y0AXu4lGbDf2D3it3SDsvy1VFkPNe9+bIaQ=;
 b=nmP+tTbGeXPmg987e3Tn1W2nEUC4wiR6Ib+nIk1lx7l7gKv/OeF9ZeQrn69xA0kV+WEkRa/OWw8q996EJzSUQdDLNBqajQP13AN/xMyCJIOgzmKd22hUSjathnSW7kPSHZZTTqhykCQEwyOstVaiTcIpqf9AqONtVUxpLPMeixw=
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB8PR04MB6793.eurprd04.prod.outlook.com (2603:10a6:10:11a::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.26; Thu, 21 May
 2020 04:57:28 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::7564:54a2:a35e:1066]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::7564:54a2:a35e:1066%9]) with mapi id 15.20.3021.025; Thu, 21 May 2020
 04:57:28 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: Will Deacon <will@kernel.org>
Subject: RE: [PATCH 2/2] perf/imx_ddr: Add stop counter support for i.MX8MP
Thread-Topic: [PATCH 2/2] perf/imx_ddr: Add stop counter support for i.MX8MP
Thread-Index: AQHV69tuZyXpBq3blUKm1+CLo0yF5ag1Mp2AgAEBQ0CARZ0ekIA1TkkAgAEr2JA=
Date: Thu, 21 May 2020 04:57:28 +0000
Message-ID: <DB8PR04MB679500AE5F752910C9B1024BE6B70@DB8PR04MB6795.eurprd04.prod.outlook.com>
References: <20200225125644.18853-1-qiangqing.zhang@nxp.com>
 <20200225125644.18853-2-qiangqing.zhang@nxp.com>
 <20200302112441.GB7995@willie-the-truck>
 <DB7PR04MB46189CEDD1DFD5B5B6C1FD15E6E40@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <DB8PR04MB67952EC95A5BE39C60F7F1FCE6D80@DB8PR04MB6795.eurprd04.prod.outlook.com>
 <20200520075140.GB23818@willie-the-truck>
In-Reply-To: <20200520075140.GB23818@willie-the-truck>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 37b73ba4-0182-4084-5ed4-08d7fd437661
x-ms-traffictypediagnostic: DB8PR04MB6793:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB67932D48CA09C2A89E1C6CA3E6B70@DB8PR04MB6793.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 041032FF37
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PMte1cA03WGQ5azDMesryLhb66DJWwpiOkuJ3IY5gLB9KAX9ozLrnOWHfgDgJadGnkG9iFHOF4SsRI00d77cxtPC3JqlIXuLR5Et9G7YTIjuk4/CWMBYKwP72J4y9B4Mis2q2fXLyDkHo60ywBCYmOBgDae4yXsokVD/+TBz/Ulf28kzN7SGmSnqRM+RmSIGqLeYPwspR00hcVNPRb9yH04qX/exq0iAF099BkPaRMW0tIlu/U7SmfFL0IiV25ObPz73kcSX8HJaB8Wiv9ZK2kRxPcrN2Q3wtsctlZGCWgr0VR/6F4PVeXqWdwI2jbea3E5rpLVPzq52L172DTIWOg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR04MB6795.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(39860400002)(366004)(376002)(396003)(346002)(7696005)(6506007)(5660300002)(53546011)(316002)(54906003)(86362001)(52536014)(26005)(33656002)(6916009)(4326008)(2906002)(478600001)(9686003)(55016002)(71200400001)(76116006)(66476007)(64756008)(66446008)(8676002)(186003)(66946007)(8936002)(66556008);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: yBynFee44ZhcIpTEAX0sl0jd688oRCgIUcey8C4bAHa66KPZ5Li1k8+1MqZlXLxvovFXQ4uQfIFji4O0+vH8Q4bEHmAFfEsMotWwp9iktNi2c/0dCydPNdEXX2y3zy/i4aQ7scKcHQoWEWxk1PpwRemLQRibXaH+sdbGsoJvDou3y0KJ01s+4WBVJtyQNyUXwSCXC2ePqvhAudF9Kqv7/8d2SIgGyxQ6qg3ZztArU8eYYqdPJO2sNqjCeX23g5DcAzz7j3hj5fBup5IULkbiucY/3ahv/mXJJCdfNYKxlT+nSNmwZ5UQq87v0mZDuPksfxBAGqeYg1tffw2nK2YNbMjHTPaAzuA5sCguYbgC4BCSgmBVadC2CCJxU7cP2E/SdqKckVWm1nSkdv0SZ2OJ6XdJPU6fFgfm6/Ma4w9i4zQcEU3yXPb0qIi98+VsdnZfkvgChnB5pj4eCA5gWuMgDLvXRnteCTpewEJzHWxGzvA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 37b73ba4-0182-4084-5ed4-08d7fd437661
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2020 04:57:28.5768 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zOcTxCWrjQbfHO+mSuoGZBjaoTRrih90JwojBNGOcbhYAKO7Dji9RRYMvzKwp0UfAIegzHosQD5FbiIb+AM67Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6793
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_215733_531072_F19C02D3 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.21.61 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.61 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFdpbGwgRGVhY29uIDx3aWxs
QGtlcm5lbC5vcmc+DQo+IFNlbnQ6IDIwMjDE6jXUwjIwyNUgMTU6NTINCj4gVG86IEpvYWtpbSBa
aGFuZyA8cWlhbmdxaW5nLnpoYW5nQG54cC5jb20+DQo+IENjOiBtYXJrLnJ1dGxhbmRAYXJtLmNv
bTsgcm9iaW4ubXVycGh5QGFybS5jb207IGRsLWxpbnV4LWlteA0KPiA8bGludXgtaW14QG54cC5j
b20+OyBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcNCj4gU3ViamVjdDogUmU6
IFtQQVRDSCAyLzJdIHBlcmYvaW14X2RkcjogQWRkIHN0b3AgY291bnRlciBzdXBwb3J0IGZvciBp
Lk1YOE1QDQo+IA0KPiBPbiBUaHUsIEFwciAxNiwgMjAyMCBhdCAwOTo1MToxM0FNICswMDAwLCBK
b2FraW0gWmhhbmcgd3JvdGU6DQo+ID4gQW55IGNvbW1lbnRzIGFib3V0IHRoaXMgaXNzdWU/IFRo
YW5rcyBhIGxvdCENCj4gDQo+IFlvdSBkaWRuJ3QgcmVhbGx5IGFuc3dlciBhbnkgb2YgbXkgcXVl
c3Rpb25zLCBzbyBJIGRvbid0IHJlYWxseSBrbm93IHdoYXQgdG8gZG8NCj4gd2l0aCB0aGlzLg0K
PiANCj4gICAtIFRoZSBsb2NraW5nIGFwcGVhcnMgdG8gYmUgYnJva2VuLiBZb3VyIHNvbHV0aW9u
IHdhcyB0byByZW1vdmUgaXQNCj4gICAgIGVudGlyZWx5Lg0KPiANCj4gICAtIEl0IGFwcGVhcnMg
dG8gYmUgYSB1c2VyIHZpc2libGUgY2hhbmdlIGFuZCB5b3UgaGF2ZW4ndCBleHBsYWluZWQgaG93
IGl0DQo+ICAgICBjb250aW51ZXMgdG8gd29yayB3aXRoIG9sZCB1c2Vyc3BhY2UNCj4gDQo+ICAg
LSBQZXJmIGNvcmUgaXMgbm90IGF3YXJlIG9mIHlvdSBzdG9wcGluZyBjb3VudGVycyBhbmQgeW91
IGhhdmVuJ3Qgc2FpZCB3aHkNCj4gICAgIHRoYXQncyBub3QgYW4gaXNzdWUuDQo+IA0KPiBXaGls
ZSB0aGVzZSBpc3N1ZXMgYXJlIG91dHN0YW5kaW5nLCBJIGNhbm5vdCBtZXJnZSB0aGUgcGF0Y2gu
IFNvcnJ5Lg0KDQpIaSBXaWxsLA0KDQpZb3UgYXJlIHJlYWxseSBraW5kLiBTb3JyeSBmb3IgdGhh
dCwgc29tZXRpbWVzIEkgYW0gbm90IHF1aXRlIHVuZGVyc3RhbmQgd2hhdCB5b3Ugd2FudC4gSSBz
ZW5kIG91dCB0aGlzIHBhdGNoLCBqdXN0IHdhbnQgdG8gdGFsayB3aXRoIHlvdSB0byBmaW5kIGEg
YmV0dGVyIHNvbHV0aW9uLCB5b3UgY291bGQgcHJvdmlkZSBwcm9mZXNzaW9uIG9waW5pb24uDQoN
CkFjdHVhbGx5IG5ldyBTb0MgaGFzIGEgaGFyZHdhcmUgY2hhbmdlOg0KDQpPbGQgU29DOg0KQ291
bnRlcjAgaXMgYSBzcGVjaWFsIGNvdW50ZXIsIG9ubHkgY291bnQgY3ljbGVzLiBDb3VudGVyMS0z
IGFyZSBldmVudCBjb3VudGVycy4gV2hlbiBjb3VudGVyMCBvdmVyZmxvdywgaXQgd2lsbCBsb2Nr
IGFsbCBjb3VudGVycyBhbmQgZ2VuZXJhdGUgYW4gaW50ZXJydXB0LiBJbiBkZHJfcGVyZl9pcnFf
aGFuZGxlcigpLCBkaXNhYmxlIGNvdW50ZXIwIHRoZW4gYWxsIGNvdW50ZXIxLTMgd2lsbCBzdG9w
IGF0IHRoZSBzYW1lIHRpbWUsIHVwZGF0ZSBhbGwgY291bnRlcnMnIGNvdW50LCB0aGVuIGVuYWJs
ZSBjb3VudGVyMCB0aGF0IGFsbCBjb3VudGVycyB3b3VsZCBjb3VudCBhZ2Fpbi4gWW91IGNhbiBz
ZWUgdGhhdCB3aGVuIGVuYWJsZSBjb3VudGVyMCBpdCB3b3VsZCBjbGVhciBvdmVyZmxvdyBiaXQs
IGJ1dCBjb3VudGVyMS0zIGFyZSBmcmVlLXJ1bm5pbmcsIG5lZWQgbm90IGNsZWFyIGl0LiBEby93
aGlsZSgpIGZyb20gZGRyX3BlcmZfZXZlbnRfdXBkYXRlKCkgY2FuIGhhbmRsZSBjb3VudGVyMS0z
IG92ZXJmbG93IGNhc2UuDQoNCk1YOE1QOg0KQWxtb3N0IGlzIHNhbWUgd2l0aCBvbGQgU29DLCB0
aGUgb25seSBkaWZmZXJlbnQgaXMgdGhhdCwgY291bnRlcjEtMyBhcmUgbm90IGZyZWUtcnVubmlu
ZyBub3cuIExpa2UgY291bnRlcjAsIHdoZW4gY291bnRlcjEtMyBhcmUgb3ZlcmZsb3csIHRoZXkg
d291bGQgc3RvcCBjb3VudGluZyB1bmxlc3MgY2xlYXIgdGhlaXIgb3ZlcmZsb3cgYml0LiBDb3Vu
dGVyMCBvdmVyZmxvdyBvY2N1cnMgYXQgbGVhc3QgNCB0aW1lcyBhcyBvZnRlbiBhcyBvdGhlciBj
b3VudGVycywgc28gSSB3YW50IHRvIHJlLWVuYWJsZSBjb3VudGVyMS0zIHRoZW4gdGhleSBjYW4g
cmUtY291bnQgYWdhaW4sIHRvIGVuc3VyZSB0aGF0IGNvdW50ZXIxLTMgd2lsbCBub3QgbG9zZSBk
YXRhLiBUaGUga2V5IGlzIHRoYXQgSSBuZWVkIGNsZWFyIGNvdW50ZXIxLTMgaW4gY291bnRlcjAg
aXJxIGhhbmRsZXIuDQoNClRoZSBjb3VudCB1cGRhdGluZyB3b3VsZCBoYXBwZW4gYXQgaXJxIGhh
bmRsZXIgb3IgcGVyZiBjb3JlKHJlYWQgY2FsbGJhY2spLiBJIGFkZCBhIHNwaW5sb2NrIHRvIGF2
b2lkIHVwZGF0aW5nIGNvdW50ZXIxLTMgd2hpbGUgY2xlYXJpbmcgY291bnRlcjEtMywgYnV0IEkg
YW0gbm90IHN1cmUgaWYgaXQgbmVlZHMuIExvb2tpbmcgZm9yd2FyZCB0byB5b3VyIGZlZWRiYWNr
cywgcGxlYXNlIHBvaW50IG91dCBteSBtaXN0YWtlcy4gVGhhbmtzIGEgbG90Lg0KDQpCZXN0IFJl
Z2FyZHMsDQpKb2FraW0gWmhhbmcNCj4gV2lsbA0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
