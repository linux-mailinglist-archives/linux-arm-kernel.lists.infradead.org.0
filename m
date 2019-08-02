Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C1CD8013F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 21:47:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=koqagTKxAK6I7j3tBuJbvx3w7C8mzTJC1i5cAOjuI7s=; b=sV3lZSiVwT52GC
	ob6tP27gi9GOY1FbwojD//mwFPzj8jHa+l7yKaULyU3jHvc10gLcpe+cSNi70i7xtkSBandfP7Eb1
	LfUDGiOhT63md5BhRJx75cs6KYuaf0+rGNrlgLrL85ehTu80Vj7yNQukOQyna6f9yzmBbr08SMV4r
	dIwiQJDcoMKpnt8yGbfOGiKPB1TGZxpgueFvDmwjEupY8lKZNC4mGN9lVTNHDmFvlXUSgH1sEawiv
	ah+PO7EtAlNjpR020pvq6LeXmEV/vEyfYqdNY3tr67HlfwAK/HEDLAHHCj4PRDMKsE2dE7AwbUMl0
	xDnPI+i6hxSkr5Gg9KUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htdWb-0004t7-Cw; Fri, 02 Aug 2019 19:47:37 +0000
Received: from mail-eopbgr40075.outbound.protection.outlook.com ([40.107.4.75]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htdWO-0004sU-2Y
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 19:47:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MH8pKCpkhyjpT3YfSOOX/jAXvJXAVKBJkHDKqmHchpxIblxgeC0IFPB4Yz1ThaQLbc+SELODw97ZCwplsNvO8hxL5xQ6FhfnQQiYPgQL2+gN6EwmEfqJhxJWNkAIRnBegdmGxwsau05YyXb0FsCOyhjbtKJHv/tIgKipn6oGDJzeHfhxonr0e8IXUQ5dTFmKR8IpzM1Jj05cOH+KZPuNGvSmvMh/LSGVhX//VwNTkKE18tIJoquMrIk7D42iAZ5K8jLJhiFSUjD+lEsO1eJfETF+uF/1l2z1cInm1jSLotYz5oibUXWLcMLnkECFaWhK2UacuT+Imrr1dUAF2NuliA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h4Ew6+DCOPCCYQHmY7q1DjHgBUMNOYFamHJxHj/FArE=;
 b=fFNlrKI3wv9opmKXOtqwGZrQp7WW5+Xf4rqxUmhxDjFYb+BfPdu5GRceibmKBuBlRV7d/zYUiDLSBNPENiyQebnH2xCwDw+bBAybbsQ66Js6dis6HUQw7eu6z3biBCJXsnPrFmXgRH5ZN+bIlTy7Txsg4qj1p12aXoMO2nbp4iiEbrIShe2n+m/gfH+lxvlgxjeW1txCpT4vOmECtD76+xH+weTtca/4npXVInNmrJOc7gk9KF8dgC3oil4b+lVYVhQ0Pb2E5++t+p64p154gj2m5dVbHCMqvioL6NAZ4/PL1kAbP21mouI+fNEQmEbiJ5XobUpPe72F1RhNkYy6Ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h4Ew6+DCOPCCYQHmY7q1DjHgBUMNOYFamHJxHj/FArE=;
 b=MGn5Z9je3JNSjwNMaAould0tNZ2BN6Wpax5CvIBU767FsVTzLGHVD9gHXxkUlONjNRz0e/SIgvnofRUzyehuH0vGopuMEpDth7oO23ZgDDbFgGWEwsD8Nr58jlpVR7myqTI81dl+hrIMIKowWlgYa1A3ZHgGQ7fYU0Nh2v1Nkck=
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com (10.175.20.18) by
 VI1PR0402MB2829.eurprd04.prod.outlook.com (10.175.26.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.10; Fri, 2 Aug 2019 19:47:15 +0000
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023]) by VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023%7]) with mapi id 15.20.2136.010; Fri, 2 Aug 2019
 19:47:15 +0000
From: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
To: "corbet@lwn.net" <corbet@lwn.net>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>, Leo Li
 <leoyang.li@nxp.com>
Subject: [PATCH 0/6] Add initial support for S32V234-EVB
Thread-Topic: [PATCH 0/6] Add initial support for S32V234-EVB
Thread-Index: AQHVSWsVUjXAJYKel0u51H+QcB/q5Q==
Date: Fri, 2 Aug 2019 19:47:14 +0000
Message-ID: <20190802194702.30249-1-stefan-gabriel.mirea@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.22.0
x-clientproxiedby: AM6PR04CA0051.eurprd04.prod.outlook.com
 (2603:10a6:20b:f0::28) To VI1PR0402MB2863.eurprd04.prod.outlook.com
 (2603:10a6:800:af::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=stefan-gabriel.mirea@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 34aac034-d59b-4ac3-6a45-08d7178237eb
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB2829; 
x-ms-traffictypediagnostic: VI1PR0402MB2829:
x-ms-exchange-purlcount: 5
x-microsoft-antispam-prvs: <VI1PR0402MB28296503C9E4880541783E88DFD90@VI1PR0402MB2829.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 011787B9DD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(136003)(376002)(39860400002)(366004)(189003)(199004)(68736007)(8676002)(6486002)(54906003)(110136005)(3846002)(966005)(305945005)(7416002)(1076003)(6116002)(66066001)(2906002)(2201001)(316002)(256004)(36756003)(6636002)(486006)(102836004)(14454004)(71200400001)(53936002)(26005)(66476007)(81166006)(71190400001)(186003)(66946007)(2616005)(64756008)(8936002)(66446008)(66556008)(99286004)(4326008)(386003)(6506007)(5660300002)(2501003)(52116002)(81156014)(50226002)(25786009)(476003)(478600001)(86362001)(6306002)(7736002)(6512007)(6436002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB2829;
 H:VI1PR0402MB2863.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: qRz3zx4/WrNcSklkgc8xVud5j7vF1cQTs8KXLgryvE7fcQavH7WjPKpJ/YpxzCS9mn/TZqBJHoKxUQtfhR/ZlItVEnZXBU/qmqUXd8qZ6m3Kpqna0g2cUP1fKSHMOXaaZ7tPlv+iiTrP3h0tqr9pB+n1ljplHv98+wrcVosoZb221OvqaQhmCuIiDuBHKHfboQN/ISHIXmJ+tUURSq0T1cxsQvXuZ70LTzKRRw2yHfdGDf1gGI4BG54pmIdUhEQ4wZmmJZA61KRQIb2FH/itSGcAHu2WertN8VezKPhP4t8kdlH+2ic1SeEMEf+qGq28ia2UBjeck2CT+99wUhclV66Wj8rmaLA8TvIDjkC3U8vvyKXaxU5LevF1fFBamNkRdWQaJlptfVP/C3wz9+uSR8j3v4PacZvLrwqr7lsliBw=
Content-ID: <58E68E0B34376C44AD3829F4B67C58FE@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34aac034-d59b-4ac3-6a45-08d7178237eb
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2019 19:47:14.9885 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: stefan-gabriel.mirea@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB2829
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_124724_200510_C70296F9 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.75 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "jslaby@suse.com" <jslaby@suse.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sDQoNCk5YUCdzIFMzMlYyMzRbMV0gKCJUcmVlcnVubmVyIikgdmlzaW9uIG1pY3JvcHJv
Y2Vzc29ycyBhcmUgdGFyZ2V0ZWQgZm9yDQpoaWdoLXBlcmZvcm1hbmNlLCBjb21wdXRhdGlvbmFs
bHkgaW50ZW5zaXZlIHZpc2lvbiBhbmQgc2Vuc29yIGZ1c2lvbg0KYXBwbGljYXRpb25zIHRoYXQg
cmVxdWlyZSBhdXRvbW90aXZlIHNhZmV0eSBsZXZlbHMuIFRoZXkgaW5jbHVkZSBsZWFkaW5nDQpl
ZGdlIENhbWVyYSBWaXNpb24gbW9kdWxlcyBsaWtlIEFQRVgtMiwgSVNQIGFuZCBHUFUuIFRoZSBT
MzJWMjM0LUVWQiBhbmQNClMzMlYyMzQtU0JDIGJvYXJkcyBhcmUgYXZhaWxhYmxlIGZvciBjdXN0
b21lciBldmFsdWF0aW9uLg0KDQpUaGUgZm9sbG93aW5nIHBhdGNoIHNlcmllcyBpbnRyb2R1Y2Vz
IG1pbmltYWwgZW5hYmxlbWVudCBzdXBwb3J0IGZvciB0aGUNCk5YUCBTMzJWMjM0LUVWQjJbMl0g
Ym9hcmQsIHdoaWNoIGxldmVyYWdlcyBtb3N0IG9mIHRoZSBTb0MgY2FwYWJpbGl0aWVzLg0KVGhl
IHNlcmllcyBpbmNsdWRlcyBhIGRyaXZlciBmb3Igb3BlcmF0aW5nIHRoZSBvbi1jaGlwIExJTkZs
ZXhEIGNvbnRyb2xsZXINCmluIFVBUlQgbW9kZS4NCg0KSW4gdGhlIGZ1dHVyZSwgd2UgYWltIHRv
IHN1Ym1pdCBtdWx0aXBsZSBkcml2ZXJzIHVwc3RyZWFtLCB3aGljaCBjYW4gYmUNCmZvdW5kIGlu
IHRoZSBrZXJuZWwgb2Ygb3VyIEF1dG8gTGludXggQlNQWzNdICgiQUxCIiksIHN0YXJ0aW5nIHdp
dGggYmFzaWMNCnBpbm11eGluZywgY2xvY2sgYW5kIHVTREhDIGRyaXZlcnMuDQoNCkZvciB2YWxp
ZGF0aW9uLCB5b3UgY2FuIHVzZSB0aGUgVS1Cb290IGJvb3Rsb2FkZXIgaW4gdGhlIEFMQls0XSwg
d2hpY2ggd2UNCmJ1aWxkIGFuZCB0ZXN0IHdpdGggb3VyIHBhdGNoZWQgdmVyc2lvbiBvZiB0aGUg
TGluYXJvIEdDQyA2LjMuMSAyMDE3LjA1DQp0b29sY2hhaW4gZm9yIEFSTSA2NC1iaXQsIHdpdGgg
c291cmNlcyBhdmFpbGFibGUgb24gWzVdLg0KDQpbMV0gaHR0cHM6Ly93d3cubnhwLmNvbS9wcm9k
dWN0cy9wcm9jZXNzb3JzLWFuZC1taWNyb2NvbnRyb2xsZXJzL2FybS1iYXNlZC1wcm9jZXNzb3Jz
LWFuZC1tY3VzL3MzMi1hdXRvbW90aXZlLXBsYXRmb3JtL3Zpc2lvbi1wcm9jZXNzb3ItZm9yLWZy
b250LWFuZC1zdXJyb3VuZC12aWV3LWNhbWVyYS1tYWNoaW5lLWxlYXJuaW5nLWFuZC1zZW5zb3It
ZnVzaW9uOlMzMlYyMzQNClsyXSBodHRwczovL3d3dy5ueHAuY29tL3N1cHBvcnQvZGV2ZWxvcGVy
LXJlc291cmNlcy9ldmFsdWF0aW9uLWFuZC1kZXZlbG9wbWVudC1ib2FyZHMvdWx0cmEtcmVsaWFi
bGUtZGV2LXBsYXRmb3Jtcy9zMzJ2LW1wdXMtcGxhdGZvcm1zL3MzMnYtdmlzaW9uLWFuZC1zZW5z
b3ItZnVzaW9uLWV2YWx1YXRpb24tc3lzdGVtOlMzMlYyMzRFVkINClszXSBodHRwczovL3NvdXJj
ZS5jb2RlYXVyb3JhLm9yZy9leHRlcm5hbC9hdXRvYnNwczMyL2xpbnV4Lw0KWzRdIGh0dHBzOi8v
c291cmNlLmNvZGVhdXJvcmEub3JnL2V4dGVybmFsL2F1dG9ic3BzMzIvdS1ib290Lw0KWzVdIGh0
dHBzOi8vc291cmNlLmNvZGVhdXJvcmEub3JnL2V4dGVybmFsL3MzMmRzL2NvbXBpbGVyL2djYy8N
Cg0KRWRkeSBQZXRyaciZb3IgKDEpOg0KICBkdC1iaW5kaW5nczogYXJtOiBmc2w6IEFkZCB0aGUg
UzMyVjIzNC1FVkIgYm9hcmQNCg0KTWloYWVsYSBNYXJ0aW5hcyAoMik6DQogIGFybTY0OiBJbnRy
b2R1Y2UgY29uZmlnIGZvciBTMzINCiAgYXJtNjQ6IGRlZmNvbmZpZzogRW5hYmxlIGNvbmZpZ3Mg
Zm9yIFMzMlYyMzQNCg0KU3RlZmFuLUdhYnJpZWwgTWlyZWEgKDEpOg0KICB0dHk6IHNlcmlhbDog
QWRkIGxpbmZsZXh1YXJ0IGRyaXZlciBmb3IgUzMyVjIzNA0KDQpTdG9pY2EgQ29zbWluLVN0ZWZh
biAoMik6DQogIGFybTY0OiBkdHM6IGZzbDogQWRkIGRldmljZSB0cmVlIGZvciBTMzJWMjM0LUVW
Qg0KICBkdC1iaW5kaW5nczogc2VyaWFsOiBEb2N1bWVudCBGcmVlc2NhbGUgTElORmxleCBVQVJU
DQoNCiAuLi4vYWRtaW4tZ3VpZGUva2VybmVsLXBhcmFtZXRlcnMudHh0ICAgICAgICAgfCAgIDYg
Kw0KIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9mc2wueWFtbCAgICAgICAgICB8ICAgNiAr
DQogLi4uL2JpbmRpbmdzL3NlcmlhbC9mc2wsczMyLWxpbmZsZXh1YXJ0LnR4dCAgIHwgIDI0ICsN
CiBhcmNoL2FybTY0L0tjb25maWcucGxhdGZvcm1zICAgICAgICAgICAgICAgICAgfCAgIDUgKw0K
IGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL01ha2VmaWxlICAgICAgICB8ICAgMiArDQog
Li4uL2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtczMydjIzNC1ldmIuZHRzICAgIHwgIDIwICsNCiAu
Li4vYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1zMzJ2MjM0LmR0c2kgfCAxMzAgKysrDQog
YXJjaC9hcm02NC9jb25maWdzL2RlZmNvbmZpZyAgICAgICAgICAgICAgICAgIHwgICAzICsNCiBk
cml2ZXJzL3R0eS9zZXJpYWwvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgfCAgMTUgKw0KIGRy
aXZlcnMvdHR5L3NlcmlhbC9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICB8ICAgMSArDQogZHJp
dmVycy90dHkvc2VyaWFsL2ZzbF9saW5mbGV4dWFydC5jICAgICAgICAgIHwgOTU2ICsrKysrKysr
KysrKysrKysrKw0KIGluY2x1ZGUvdWFwaS9saW51eC9zZXJpYWxfY29yZS5oICAgICAgICAgICAg
ICB8ICAgMyArDQogMTIgZmlsZXMgY2hhbmdlZCwgMTE3MSBpbnNlcnRpb25zKCspDQogY3JlYXRl
IG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zZXJpYWwvZnNs
LHMzMi1saW5mbGV4dWFydC50eHQNCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290
L2R0cy9mcmVlc2NhbGUvZnNsLXMzMnYyMzQtZXZiLmR0cw0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBh
cmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtczMydjIzNC5kdHNpDQogY3JlYXRlIG1v
ZGUgMTAwNjQ0IGRyaXZlcnMvdHR5L3NlcmlhbC9mc2xfbGluZmxleHVhcnQuYw0KDQotLSANCjIu
MjIuMA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
