Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D129BCB888
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 12:42:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NluJMFTWXf6XfdYSr/nyGPX/UN5+9hMVYzcCrJwW9KY=; b=MCwql7iqljH4Xd
	VWg/CcqF3DINClCQWMm+CuYr/3Ci9aOFQff71aLzoMtr4p0VLc7FEdd5SPxV9TaJ8rkYlm/9KhKiB
	MsNMpGVzSvd7BeugzKMPm4JPVirx9J02isL/rZysDNZkeCBi6qWPK3vJ8BiVqFWc0F0i4vlF85pS+
	GuAWB0X5TFwwNcx9FWetGF81RlpR39R9f6Cy8Sj8icmD31/j0EJ6F3vPsXH9zWaB7kFv72510nSWs
	/4wn53OI05TTKef+WV1JY1SKcrNyR7u6Nd0lTaAm1UU0q7VoC3q9VVoJYTPg+4sUYFIHdP5vJR02M
	p/1NeHVi9a090+n2Pckg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGL26-0002md-Bt; Fri, 04 Oct 2019 10:41:58 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGL1z-0002mH-C3
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 10:41:52 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: y3DtXwQO3/05Pm4hcD0MU9CdnJKdTF+ZfCcDA8vYUq1unOT9iKuvlsDCmbymvCsgDUri3pt9FZ
 j24eKdDGByp0D3fehXJiRxQwCkDWjQ+4O/oKtnr44Y7Au4AILF1nu/YcO/NFiBwoJuo570XPVD
 GM8SZ8Ej2JdbRmfU9y96X9rJ32O1GWS6aMTqoiLu07tQIopGk3gRveQN4dsHb/9UrEAtMbl9Tu
 nq7Zaosd2rC/ImENkFZWKNZoNKDOwQYkjkb6peOFbh+KR8PJ2Bb0zdgv6CZEKQDVzBCrxdnqrt
 rfc=
X-IronPort-AV: E=Sophos;i="5.67,256,1566889200"; d="scan'208";a="51744566"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 04 Oct 2019 03:41:32 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 4 Oct 2019 03:41:32 -0700
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 4 Oct 2019 03:41:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z/lYoyXbtk3rtUyDpXEjTKGU43Nt+gdCF33iwjQcYu4Sni13DYjAuze8oOPJx/K0q/NGgoUvc8PegyG4in2M5lRT6DNg4ASWjNrUO4sRsoFBpxLc/SHlKsZn98Sf6olJtzVhD+yEIpYbSobZAo5iessJ1C8t2ZdUlwYmwTulllxxvD/QQy99j7sOcgJhv4REubUJylwepGO0qECwMB4vccohrOJFgi6Jn3x7NNDsibSqbSOJYBMv8ilp8y6E6bHAWgoMYSjZ4hd3dSvj3Kn97guIcRWzThoN6kt1sJ1+7aUzEvPsCRY50pf3Ezsem808XN2BF7rkHzT9wkdZaQfUCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HayT7lEARtRUTeNpCgAo3ZDgrRU+2jwLJNQbU06b9N0=;
 b=g6EtNlQGZsTiIb/nvol3dZg38jYEWpbDecT6Kx3syFL29ucZpNxkh87kDNRk/HuNJP93YTS7S2E0noSOpbtomGaH1RGG+WJgekfaJZd1xGhqoe8FPtKZ9Sg/mWvtK/JmIOqXqX+aTyU/qQ0BXj6bxJ8/zLQILIqGKDL110OCqqLxw7vWMKLGilhPvi9UMmKWHzxyII0rKqVmhVnN9/FFk0zX5RjZ8IpJ5E2L15RLkE5tgzcXnyH+v7JwOjBF3rDDlhT5PO6TWiRzanViayDvMckIooznXTCMWXOkrBGoZsGvPQ2siqdmhqxdCXjh2UFyR1hytZ7bkESRLJ4hX3tsgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HayT7lEARtRUTeNpCgAo3ZDgrRU+2jwLJNQbU06b9N0=;
 b=Rh7Hcw6wTQzZxXTWKHChp/4Gzm2sILynNPFprhw/6gCuJGI5/W/zxgwBtCzMfc00SS5tFDOeVARS+XeTT/v5tMob1wJsYpRzJJQNNXnnPtXoDPVgficdV/opt4vLcGDVsuGUlie/9f8W0GeVXd9YhutxpP9sbMfhCSDBL1CX/CY=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3855.namprd11.prod.outlook.com (20.178.253.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.17; Fri, 4 Oct 2019 10:41:29 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::340d:5a33:dc79:1184]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::340d:5a33:dc79:1184%5]) with mapi id 15.20.2305.023; Fri, 4 Oct 2019
 10:41:29 +0000
From: <Tudor.Ambarus@microchip.com>
To: <kamel.bouhara@bootlin.com>, <Nicolas.Ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>,
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v3] soc: at91: Add Atmel SFR SN (Serial Number) support
Thread-Topic: [PATCH v3] soc: at91: Add Atmel SFR SN (Serial Number) support
Thread-Index: AQHVeeA0JR4R7ZzLG0y4zK4g6f6ROKdKFxiAgAAiQoCAABNsAA==
Date: Fri, 4 Oct 2019 10:41:29 +0000
Message-ID: <8d57ae18-4437-81cf-f263-8b01fbd58cc5@microchip.com>
References: <20191003114606.7846-1-kamel.bouhara@bootlin.com>
 <0b863bf1-7950-a139-92c5-d983821e8021@microchip.com>
 <b0fe8886-618e-5406-4bff-0ac5211c70eb@bootlin.com>
In-Reply-To: <b0fe8886-618e-5406-4bff-0ac5211c70eb@bootlin.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR07CA0258.eurprd07.prod.outlook.com
 (2603:10a6:803:b4::25) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4f8a1a51-96a9-45bf-976a-08d748b76a48
x-ms-traffictypediagnostic: MN2PR11MB3855:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3855518EEF68D437428DC33BF09E0@MN2PR11MB3855.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 018093A9B5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(396003)(136003)(376002)(39860400002)(199004)(189003)(40224003)(6246003)(64756008)(4326008)(66446008)(66556008)(66946007)(36756003)(446003)(6512007)(66066001)(3846002)(5660300002)(71200400001)(229853002)(25786009)(6436002)(71190400001)(66476007)(256004)(14444005)(2906002)(7736002)(6486002)(305945005)(6116002)(86362001)(110136005)(2501003)(316002)(31686004)(386003)(14454004)(53546011)(99286004)(8936002)(6506007)(76176011)(478600001)(186003)(2616005)(476003)(26005)(486006)(11346002)(81166006)(81156014)(8676002)(31696002)(52116002)(102836004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3855;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rwhm0CAPfuSePi+kUgyTdRU5zYR5rprzPxpRzGhReoiwD5SpCmxNlbjhT4zDE84+an0BuHQhT6wFUwUtZ8MYZNm88jnLATnWgeetafNKsXtINjdBr2zwocoydjmPe0mp8mgs+C8hOJ+dvRGInveiLpV/hQkfTsEScUchG153C+vb2EXQq+QqQv+qQT5yHl9krs9XxwH02mBDYq1RroQlykIQQ5C0g9qqOspUyMMfa+4yaZ+KuS11TFkuoTXWjBeahoX3C0k07UN9UQCeeypD3Ar9gy/Y9c41ysou6R/zeb5ibXWR8b64URX8bE3JwFa8xAwbgQ77Kvn3mavofSQ1r9CE8CMfpRbm0dqKO6G15hKoShWEouW3tQw4FySPsUNy/hsjqPhlMxbzdzjynHhqZr/IrtkbmxktPb6A+ZO7Pm0=
Content-ID: <06B27AFAFC5FFE439FC84D664B38C9E2@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f8a1a51-96a9-45bf-976a-08d748b76a48
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Oct 2019 10:41:29.6891 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DigLIdo+cWrAFDFe5P7JBYfnNLtQVyp5ry34XXLy2rIAeS8uvDNxUZ0nrwQNBX/NfQs3VfYHs+GeTQKk31uT8c4sl9BwSMO2NINItq2DmFw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3855
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_034151_416644_A2A80E35 
X-CRM114-Status: GOOD (  19.31  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: thomas.petazzoni@bootlin.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCk9uIDEwLzA0LzIwMTkgMTI6MzEgUE0sIEthbWVsIEJvdWhhcmEgd3JvdGU6DQo+IEV4dGVy
bmFsIEUtTWFpbA0KPiANCj4gDQo+IEhpIFR1ZG9yLA0KDQpIaSwgS2FtZWwsDQoNCj4gDQo+IE9u
IDEwLzQvMTkgOToyOSBBTSwgVHVkb3IuQW1iYXJ1c0BtaWNyb2NoaXAuY29tIHdyb3RlOg0KPj4g
SGksIEthbWVsLA0KPj4NCj4+IE9uIDEwLzAzLzIwMTkgMDI6NDYgUE0sIEthbWVsIEJvdWhhcmEg
d3JvdGU6DQo+Pj4gRXh0ZXJuYWwgRS1NYWlsDQo+Pj4NCj4+Pg0KPj4+IEFkZCBzdXBwb3J0IHRv
IHJlYWQgU0ZSJ3MgcmVhZC1vbmx5IHJlZ2lzdGVycyBwcm92aWRpbmcgdGhlIFNvQw0KPj4+IFNl
cmlhbCBOdW1iZXJzIChTTjArU04xKSB0byB1c2Vyc3BhY2UuDQo+Pj4NCj4+PiB+ICPCoCBoZXhk
dW1wIC1uIDjCoCAtZSciJWRcbiInIC9zeXMvYnVzL252bWVtL2RldmljZXMvYXRtZWwtc2ZyMC9u
dm1lbQ0KPj4gbml0cGljayBwcm9iYWJseSBpdCdzIGJldHRlciB0byBwcmludCB0aGUgU04gaW4g
aGV4LCBzbyAlMDh4IGluc3RlYWQgb2YgJWQNCj4gT2YgY291cnNlLCBpdCBpcyBqdXN0IGFuIGV4
YW1wbGUgb2YgdXNlciBzcGFjZSBjb21tYW5kLCB0aGlzIGlzIGNvbXBsZXRlbHkgdXAgdG8gdXNl
ciB0byBjaG9vc2UgdGhlIHJlbGV2YW50IGZvcm1hdC4NCj4+PiA5NTk1MjcyNDMNCj4+PiAzNzE1
MzkyNzQNCj4+Pg0KPj4+IFNpZ25lZC1vZmYtYnk6IEthbWVsIEJvdWhhcmEgPGthbWVsLmJvdWhh
cmFAYm9vdGxpbi5jb20+DQo+PiBUZXN0ZWQtYnk6IFR1ZG9yIEFtYmFydXMgPHR1ZG9yLmFtYmFy
dXNAbWljcm9jaGlwLmNvbT4NCj4+DQo+PiBJcyB0aGUgU04gdW5pcXVlIGZvciBlYWNoIGRldmlj
ZSBvciBpdCBpcyB1bmlxdWUgcGVyIFNvQz8gRm9yIGV4YW1wbGUsIGZvcg0KPj4gc2FtYTVkMiwg
SSBnZXQgdGhlIGZvbGxvd2luZyAoaW4gaGV4KToNCj4+DQo+PiByb290QHNhbWE1ZDIteHBsYWlu
ZWQtc2Q6fiPCoCBoZXhkdW1wIC1uIDjCoCAtZSAnIiUwOHhcbiInDQo+PiAvc3lzL2J1cy9udm1l
bS9kZXZpY2VzL2F0bWVsLXNmcjAvbnZtZW0NCj4+IDQ2NDM1MjRiDQo+PiAwMjAxMDY1Nw0KPj4N
Cj4+IElmIHRoaXMgaXMgdW5pcXVlIGZvciBlYWNoIGRldmljZSwgdGhlbiBtYXliZSBpcyBpdCB3
b3J0aCB0byBhZGQgdGhlIHNlcmlhbA0KPj4gbnVtYmVyIGluIHRoZSBlbnRyb3B5IHBvb2wgKHdp
dGggYWRkX2RldmljZV9yYW5kb21uZXNzKCk/KQ0KPiANCj4gWWVzIGl0IGlzLiBNYXliZSBpdCBp
cyBub3Qgc3VpdGVkIHRvIHRocm93IGEgbm9uIHJhbmRvbSA4IGJ5dGVzIChvbmx5KSBudW1iZXIg
dG8gdGhlIGVudHJvcHkgcG9vbCA/DQo+IA0KPiBCeSB0aGUgd2F5LCBzb21lIFNvQyBkcml2ZXJz
IGRvIGl0IGFscmVhZHkuDQo+IA0KPiBTaGFsbCBJIHByb3Bvc2UgYSB2NCBmb3IgdGhpcyA/DQoN
Ckkgd291bGQuIFRoaXMgaXMgbW9yZSBsaWtlIGFuIGltcHJvdmVtZW50LCBpdCdzIG5vdCBtYW5k
YXRvcnksIGl0J3MgeW91ciBjYWxsLg0KVGhlIGNvZGUgbG9va3MgZ29vZC4gSSBoYXZlIHNvbWUg
ZG91YnRzIG9uIHRoZSB1c2UgY2FzZXMgdGhvdWdoLCBidXQgdGhlIGF0OTENCm1haW50YWluZXJz
IHdpbGwgcHJvYmFibHkgZGVjaWRlIG9uIHRoaXMuIExldCBtZSBrbm93IGlmIHlvdSBhcmUgc2Vu
ZGluZyB2NCwgc28NCkkgY2FuIGtub3cgd2hlcmUgdG8gYWRkIG15IFItYiB0YWcgOikNCj4gDQo+
Pg0KPj4gV2hhdCB3YXMgeW91ciB1c2UgY2FzZSwgd2h5IGRvIHlvdSBuZWVkIHRvIHByaW50IHRo
ZSBTTj/CoMKgwqANCj4gSXQgY2FuIGJlIHVzZWQgaW4gYSBmYWN0b3J5IHByb2Nlc3MgdG8gYXNz
b2NpYXRlIGEgbWFjIGFkZHJlc3MgZm9yIGluc3RhbmNlLi4uIGJ1dCBJJ20gc3VyZSB0aGVyZSBp
cyBsb3Qgb2YgdXNlIGNhc2UgdXNpbmcgYSB1bmlxdWUgaWRlbnRpZmllci4NCg0KSSBkb24ndCBr
bm93IHRoZSBzdHJhdGVneSBpbiByZWdhcmRzIHRvIHNlcmlhbCBudW1iZXJzLiBJIGd1ZXNzIHRo
ZXJlIGFyZSBzb21lDQpJUHMgdGhhdCBoYXZlIGZpZWxkcyBmb3Igc2VyaWFsIG51bWJlcnMgaW4g
dGhlaXIgcmVnaXN0ZXJzLCBzaG91bGQgd2UgZXhwb3NlDQp0aGVtIGFsbD8NCg0KQ2hlZXJzLA0K
dGENCg0KPj4NCj4+IEFuZCB5b3UgaGF2ZSBhIGJsYW5rIGxpbmUgYXQgRU9GLCBidXQgcHJvYmFi
bHkgdGhlIG1haW50YWluZXJzIGNhbiByZW1vdmUgaXQsIGlmDQo+PiB0aGUgcGF0Y2ggd2lsbCBy
ZW1haW4gYXMgaXMuDQo+IA0KPiBPSywgdGhhbmtzIGZvciB5b3UgcmV2aWV3LCBJZiBzbywgaXQg
d2lsbCBiZSBmaXhlZCBpbiB2NC4NCj4gDQo+IEthbWVsDQo+IA0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
