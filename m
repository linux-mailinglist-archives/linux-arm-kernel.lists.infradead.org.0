Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC0417BCE6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 13:36:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R/Mv2vYUjX5mlwfY3hMefgx4rc5y7Wsru6kBNTner50=; b=jAZrTtG9VZOn8E
	cRrsRXSg2FKd+xQJCKNMyRZPKkM4NLPaQZRwewiYh65ejiGGkznrMlWFBGFlZdYEJM7BaqgO6PNhR
	oouBnf/qVgVOaTWEOzWZj/klEVGlmAr4ZxVFO9/cXMbQFIJ5rkyv1iezpeAaAaP5E6gQo5eZLn9dB
	14/02ny4PH9G4JgG9eyW3gbwJ7MVv4tAmhoI5DrwSnDl/APi+ksPKpZjS10nJzHsZZabcReJtXkkp
	lS0N47+IHTy/fpIxI9HO5s2e+oC5m+PVKXEuJWR4OEp+YgnxRkgIRsByF5qwI4XaVmZZqyJflz3vk
	O9mvBIQYh52c/eGDBBrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jACDb-0003o8-AK; Fri, 06 Mar 2020 12:36:43 +0000
Received: from mail-eopbgr80101.outbound.protection.outlook.com
 ([40.107.8.101] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jACDF-0003dT-9v
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 12:36:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W273/dWF13Qf/lnpuZREuspA2zqMu+f7FItsq63bieVaKIvBYebclPPOobYTXxaJzTjLudywl3uoTlZGSnI9MrsOx64EqfMcH9cvHXRZkXEYV8hc4mLQpI4BwXeKdEt5nwpCejCQRSDFdFyonYWesSz/efFg1hSq2vCRZX79aYNajNVBHT7Dud/MOOaPILSYOu5kMklIpl7eRklFZrIXcrHvUV4BKGRDTlTW4O9h7tJtK/OtJKDleI8sH5ctihUXcBvU8zb2HirFveBuqiyF2COEivfIgRbjI4owg3wG12QjOJQi9uXjuBI+9Lv5XlDaqgTLRlTze4Rm3UaK9h4FQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ko74EqP8cBZE3WxBeJdPc0/SeQUfCqUtNzn003PxIsk=;
 b=D3TylNy88mhU3/Z32aGEHeMDOjl/NATpiouJxHgYyjucTO6DYF74K0/qnbUYRd4+/HUZXDAo5rf9EkjK13YeNivnhgw2byREV6mwlZZoou2kRbuBwuztcZrkJEomYwGMlphvO2E0In6rlxJnOiXrVDHJfcmx6JwMGp8m8AP9dDcjoFWu9Z256HE5mvMsW/KJZdjzHy5WRnPrS1w4OBxNr7ERtqDFIRnQS0d0Co8R5kYSKk914m352hCQkcmpA7mdHsVULXIArfup8Ppuh2gkCqPIf12rs/FBs4+L0QSSOuCZvE0D+G4F2bOK6YNimwm6FoNnMVcseCAs1a3FHzdrxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ko74EqP8cBZE3WxBeJdPc0/SeQUfCqUtNzn003PxIsk=;
 b=Fe32iHVyxq9TzjHwhecomHwd7jaicJr/VwN9MDpfkdKXX1JldqMKr8zhjkN4PG0PLmCYU0Nt3EyfMmLXkZJk0qdkad8i8gCrigrP25Km4PKRMMDBobxHq72k4SvXn9kiStgvFHwySW0HBhk6k4KPUP2xwyzYlfLX8IVopk7jLLE=
Received: from AM6PR05MB6120.eurprd05.prod.outlook.com (20.179.1.217) by
 AM6PR05MB5941.eurprd05.prod.outlook.com (20.179.2.88) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.19; Fri, 6 Mar 2020 12:36:17 +0000
Received: from AM6PR05MB6120.eurprd05.prod.outlook.com
 ([fe80::dee:ffa2:1d09:30e]) by AM6PR05MB6120.eurprd05.prod.outlook.com
 ([fe80::dee:ffa2:1d09:30e%4]) with mapi id 15.20.2772.019; Fri, 6 Mar 2020
 12:36:17 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "o.rempel@pengutronix.de" <o.rempel@pengutronix.de>
Subject: Re: [PATCH] ARM: mach-imx6q: add ksz9131rn_phy_fixup
Thread-Topic: [PATCH] ARM: mach-imx6q: add ksz9131rn_phy_fixup
Thread-Index: AQHV8vTsfP1BktnxKEy+q0EhrXMNZqg6EXKAgAFDQ4CAAAwqgIAAIN8A
Date: Fri, 6 Mar 2020 12:36:17 +0000
Message-ID: <25ea3f7ef7824f99d34dfa65a3d5a8836f7357df.camel@toradex.com>
References: <20200305134928.19775-1-philippe.schenker@toradex.com>
 <20200305143805.dk7fndblnqjnwxu6@pengutronix.de>
 <240b86a0aa76ac1f1d3948fc3089e3d13266f4b1.camel@toradex.com>
 <20200306103837.4b2qfrsnqf2ebqqa@pengutronix.de>
In-Reply-To: <20200306103837.4b2qfrsnqf2ebqqa@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-originating-ip: [31.10.206.124]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c2e65a84-30b0-4c45-43af-08d7c1caf759
x-ms-traffictypediagnostic: AM6PR05MB5941:
x-microsoft-antispam-prvs: <AM6PR05MB594117B0297392837881162EF4E30@AM6PR05MB5941.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2331;
x-forefront-prvs: 0334223192
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(189003)(199004)(498600001)(7416002)(966005)(4326008)(6486002)(54906003)(6506007)(6512007)(44832011)(81156014)(2616005)(64756008)(8936002)(66556008)(91956017)(66476007)(66446008)(71200400001)(8676002)(81166006)(26005)(76116006)(86362001)(5660300002)(2906002)(6916009)(186003)(36756003)(66946007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:AM6PR05MB5941;
 H:AM6PR05MB6120.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gfMbrSIfBRbxUNyzlG09OQerOvikO3nBI8uUi32ZhspKChM6vfC9enDL1wA5suOzREgCzHXny93RHCSQjnqOrnMWGnK38dJlXuwzT2304bm+Qu66JNDnXwoS8DoxylHN9GVveOnmnivgupTmA19thkx/6I9TCAJfNb6/quKZBZiRcZUaPJQwA1f+sl/+bnFcvCRNOivmfTpTYZRzzXWTRlNRmjWzF4C8+WvGSJzeXxR5FAr190ifCH5aggylcDQkY8LT+37iJUHfPq6cclPcMGSsudgaF1vxbICEMdkkJ+iez1tjuMKA80SQ3WCdLDBI9dxtzEUXBfOmFnm5tIhse79WhFYS26i6qldpyKE2vNdQr3cCqjTT5PtKGXgMu8gBCwFy1ioCZv+nPUO2oM0A/XiD+dCebg/m5gZeRqVHqtOyQNOp/ogl4J323mOm6LDusnCMO8V/jGupynY265jtWbDFbxWkz0FeMK334eO2vWuLgZOcU7jO7FeaAYVC8xnhWN/G9h5ElHutKZo7ewjNrw==
x-ms-exchange-antispam-messagedata: MX1EPdaMp1L0LdO7vzgQW2YfES8TPemqSFzwEKG2q2u5KZ6d1/9tQnOBAFeU46MxuLcE+ffhmCNKmUO1bZwo7AF9NCoUFSIymsIjgPAVHPYD3NeHiHlRi9v+sOBQFqNfHBUoYsACBUDrYfOd8Uyr5Q==
x-ms-exchange-transport-forked: True
Content-ID: <5515E7B12B1CF14B9C52852953491A8E@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2e65a84-30b0-4c45-43af-08d7c1caf759
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2020 12:36:17.2821 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xEdL3/SFRUX8BZmB1PoDfxO0vIz1BaqxynrGxWv5+O64OTw6IDV0lChYMfmbJdWlEKSYhJS4/oHNh+wTyPQ9xilX5cAxjGtuOgzqGlE78LQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB5941
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_043621_538056_C493B57C 
X-CRM114-Status: GOOD (  38.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.101 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "kstewart@linuxfoundation.org" <kstewart@linuxfoundation.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "allison@lohutok.net" <allison@lohutok.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAyMDIwLTAzLTA2IGF0IDExOjM4ICswMTAwLCBPbGVrc2lqIFJlbXBlbCB3cm90ZToN
Cj4gSGkgUGhpbGlwcGUsDQo+IA0KPiBPbiBGcmksIE1hciAwNiwgMjAyMCBhdCAwOTo1NTowNkFN
ICswMDAwLCBQaGlsaXBwZSBTY2hlbmtlciB3cm90ZToNCj4gPiBPbiBUaHUsIDIwMjAtMDMtMDUg
YXQgMTU6MzggKzAxMDAsIE9sZWtzaWogUmVtcGVsIHdyb3RlOg0KPiA+ID4gSGkgUGhpbGlwcGUs
DQo+ID4gPiANCj4gPiA+IE9uIFRodSwgTWFyIDA1LCAyMDIwIGF0IDAyOjQ5OjI4UE0gKzAxMDAs
IFBoaWxpcHBlIFNjaGVua2VyIHdyb3RlOg0KPiA+ID4gPiBUaGUgTUFDIG9mIHRoZSBpLk1YNiBT
b0MgaXMgY29tcGxpYW50IHdpdGggUkdNSUkgdjEuMy4gVGhlDQo+ID4gPiA+IEtTWjkxMzENCj4g
PiA+ID4gUEhZDQo+ID4gPiA+IGlzIGxpa2UgS1NaOTAzMSBhZGhlcmluZyB0byBSR01JSSB2Mi4w
IHNwZWNpZmljYXRpb24uIFRoaXMgbWVhbnMNCj4gPiA+ID4gdGhlDQo+ID4gPiA+IE1BQyBzaG91
bGQgcHJvdmlkZSBhIGRlbGF5IHRvIHRoZSBUWEMgbGluZS4gQmVjYXVzZSB0aGUgaS5NWDYNCj4g
PiA+ID4gTUFDDQo+ID4gPiA+IGRvZXMNCj4gPiA+ID4gbm90IHByb3ZpZGUgdGhpcyBkZWxheSB0
aGlzIGhhcyB0byBiZSBkb25lIGluIHRoZSBQSFkuDQo+ID4gPiA+IA0KPiA+ID4gPiBUaGlzIHBh
dGNoIGFkZHMgYnkgZGVmYXVsdCB+MS42bnMgZGVsYXkgdG8gdGhlIFRYQyBsaW5lLiBUaGlzDQo+
ID4gPiA+IHNob3VsZA0KPiA+ID4gPiBiZSBnb29kIGZvciBhbGwgYm9hcmRzIHRoYXQgaGF2ZSB0
aGUgUkdNSUkgc2lnbmFscyByb3V0ZWQgd2l0aA0KPiA+ID4gPiB0aGUNCj4gPiA+ID4gc2FtZSBs
ZW5ndGguDQo+ID4gPiA+IA0KPiA+ID4gPiBUaGUgS1NaOTEzMSBoYXMgcmVsYXRpdmVseSBoaWdo
IHRvbGVyYW5jZXMgb24gc2tldyByZWdpc3RlcnMNCj4gPiA+ID4gZnJvbQ0KPiA+ID4gPiBNTUQg
Mi40IHRvIE1NRCAyLjguIFRoZXJlZm9yZSB0aGUgbmV3IERMTC1iYXNlZCBkZWxheSBvZiAybnMg
aXMNCj4gPiA+ID4gdXNlZA0KPiA+ID4gPiBhbmQgdGhlbiBhcyBsaXR0bGUgYXMgcG9zc2libHkg
c3VidHJhY3RlZCBmcm9tIHRoYXQgc28gd2UgZ2V0DQo+ID4gPiA+IG1vcmUNCj4gPiA+ID4gYWNj
dXJhdGUgZGVsYXkuIFRoaXMgaXMgYWN0dWFsbHkgbmVlZGVkIGJlY2F1c2UgdGhlIGkuTVg2IFNv
Qw0KPiA+ID4gPiBoYXMNCj4gPiA+ID4gYW4gYXN5bmNocm9uIHNrZXcgb24gVFhDIGZyb20gLTEw
MHBzIHRvIDkwMHBzLCB0byBnZXQgYWxsIFJHTUlJDQo+ID4gPiA+IHZhbHVlcyB3aXRoaW4gc3Bl
Yy4NCj4gPiANCj4gPiBIaSBPbGVrc2lqISBUaGFua3MgZm9yIHlvdXIgY29tbWVudHMgYW5kIHJl
dmlldy4NCj4gPiA+IFRoaXMgY29uZmlndXJhdGlvbiBoYXMgbm90aGluZyB0byBkbyBpbiBtYWNo
LWlteC8qIEl0IGJlbG9uZ3MgdG8NCj4gPiA+IHRoZQ0KPiA+ID4gYm9hcmQgZGV2aWNldHJlZS4g
UGxlYXNlIHNlZSBEVCBiaW5kaW5nIGRvY3VtZW50YXRpb24gZm9yIG5lZWRlZA0KPiA+ID4gcHJv
cGVydGllczoNCj4gPiA+IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvbWlj
cmVsLWtzejkweDEudHh0DQo+ID4gDQo+ID4gSSBrbm93IHRoYXQgbm93YWRheXMgdGhpcyBzdHVm
ZiBvbmx5IGJlbG9uZ3MgaW4gdGhlIGRldmljZXRyZWUuIEkNCj4gPiBmdWxseQ0KPiA+IGFncmVl
IHdpdGggeW91LiBJIGFtIGFsc28gYXdhcmUgb2YgdGhlIGRldmljZXRyZWUgYmluZGluZ3MuDQo+
ID4gPiBBbGwgb2YgdGhpcyBtYWNoLWlteCBmaXh1cHMgYXJlIGV2aWwgYW5kIHNob3VsZCBiZSBy
ZW1vdmVkIG9yDQo+ID4gPiBkaXNhYmxlZA0KPiA+ID4gYnkgS2NvbmZpZw0KPiA+ID4gb3B0aW9u
LiBTaW5jZSB0aGV5IHdpbGwgcnVuIG9uIGFsbCBpLk1YIGJhc2VkIGJvYXJkcyBldmVuIGlmIHRo
aXMNCj4gPiA+IFBIWQ0KPiA+ID4gYXJlDQo+ID4gPiBjb25uZWN0ZWQgdG8gc29tZSBzd2l0Y2gg
YW5kIG5vdCBjb25uZWN0ZWQgdG8gdGhlIEZFQyBkaXJlY3RseS4NCj4gPiA+IEFuZC4uIElmIGRy
aXZlciBkaWRuJ3QgbWFkZSB0aGlzIGNvbmZpZ3VyYXRpb24gYWxsIHRoaXMgY2hhbmdlcw0KPiA+
ID4gd2lsbA0KPiA+ID4gYmUgbG9zdCBvbg0KPiA+ID4gc3VzcGVuZC9yZXN1bWUgY3ljbGUgb3Ig
b24gUEhZIHJlc2V0Lg0KPiA+IA0KPiA+IEkgYW0gYWxzbyBhd2FyZSBvZiB0aGlzIGJlaGF2aW91
ci4NCj4gDQo+IC4uLiDDsl/DtCAuLi4NCg0KVGhpcyBkb2VzIG5vdCBoZWxwIGluIGZpbmRpbmcg
YSBzb2x1dGlvbi4NCj4gDQo+ID4gQnV0IHRoZSBpLk1YNiBpcyBhIFNvQyB1c2VkIGluDQo+ID4g
ZW1iZWRkZWQgYXBwbGljYXRpb25zIGFuZCBJIGd1ZXNzIG5vIG9uZSBjb21lcyBhbmQgcGx1Z3Mg
aW4gYSBQQ0llDQo+ID4gTUFDDQo+ID4gY2FyZCBpbiBhbiBlbWJlZGRlZCBkZXZpY2UuDQo+IA0K
PiAuLi4gaG0gLi4uDQo+IA0KPiA+IEJ1dCB5ZXMgeW91J3JlIHJpZ2h0IHlvdSBuZXZlciBrbm93
Lg0KPiANCj4gd2VsbCwgaXQgaXMgbm90IHRoZW9yZXRpY2FsIGRpc2N1c3Npb24uIFRoaXMgZGV2
aWNlcyBkbyBleGlzdC4uIFdpdGgNCj4gdGhpcyBwYXRjaCB5b3Ugd2lsbCBicmVhayBvdGhlciBl
eGlzdGluZyBzeXN0ZW1zLg0KPiANCj4gPiBCZWNhdXNlIHRoZSBpLk1YNiBpcyBhbiBlbWJlZGRl
ZCBwcm9jZXNzb3IgSSBzdGlsbCB0aGluayB3ZSBzaG91bGQNCj4gPiBwbGFjZQ0KPiA+IHRoYXQg
Zml4dXAgaW4gbWFjaC1pbXguIFRoZXJlIGlzIGFscmVhZHkgYSBmaXh1cCBmb3IgdGhlIHByZWRl
Y2Vzc29yDQo+ID4gS1NaOTAzMSBpbiB0aGF0IGNvZGUuIFRoZSBLU1o5MTMxIGlzIHBpbi1jb21w
YXRpYmxlIHdpdGggS1NaOTAzMSBhbmQNCj4gPiBhbHNvIHNvZnR3YXJlIGNvbXBhdGlibGUsIGp1
c3Qgbm90IHdpdGggdGhlIHNrZXcgc2V0dGluZ3MuDQo+IA0KPiBUaGlzIGZpeHVwcyB3aWxsIGJl
IHJlbW92ZWQgb3IgZGlzYWJsZWQgd2l0aCBLY29uZmlnIG9wdGlvbjoNCj4gaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvcGF0Y2h3b3JrL3BhdGNoLzExNjQxNzIvDQoNCldpdGggdGhpcyBwYXRjaCB5
b3Ugd2lsbCBicmVhayBvdXIgaU1YNiBib2FyZC4uLiBDYW4geW91IHBvaW50IG1lIHRvIHRoZQ0K
djIgeW91IG1lbnRpb25lZCBpbiB0aGVyZT8NCj4gDQo+ID4gSSByZWFsbHkgZGlzbGlrZSByZWlu
dmVudGluZyB0aGUgd2VlbCBoZXJlIGZvciBhbiBvbGQgU29DLg0KPiANCj4gV2VsbCwgeW91IGFy
ZSBkb2luZyBpdCBub3QgZm9yIGEgU29DIChvbGQgb3IgbmV3KSwgeW91IGFyZSBkb2luZyBpdA0K
PiBmb3INCj4gUEhZLiBQSFkgZml4ZXMgYmVsb25nIHRvIFBIWSBkcml2ZXIuDQoNClBsZWFzZSBi
ZSBtb3JlIHByZWNpc2UuIE15IHBhdGNoIGZpeGVzIHRoZSBjb21iaW5hdGlvbiBvZiBpLk1YNiBN
QUMgYW5kDQpLU1o5MTMxIFBIWSBtb3N0bHkgYmVjYXVzZSBvZiB0aGF0IHN0cmFuZ2UgVFhDIGNs
b2NrIHNrZXcgdGhlIGkuTVg2IGhhcy4NCg0KSSBhZ3JlZSB0aGF0IG15IHBhdGNoIG1pZ2h0IGJl
IGV2aWwuIEkgYWxzbyB3YW50IHRvIGF2b2lkIGEgc2Vjb25kDQptZXRob2Qgc29sdmluZyB0aGlz
IHByb2JsZW0gd2hlbiB0aGUgc29sdXRpb24gSSBjaG9zZSBub3cgYWxyZWFkeQ0KZXhpc3RzLiBJ
ZiB5b3UgZ29pbmcgdG8gZml4IHRoYXQgcGh5LWZpeHVwcyBpbiBtYWNoLWlteCBvZiBpLk1YNiBJ
IHdpbGwNCmltcGxlbWVudCB0aGUgcmdtaWktdHhpZCBkZWxheSBpbiBLU1o5MTMxIGRyaXZlciBm
b3Igb3VyIGJvYXJkcy4gT0s/DQo+IA0KPiA+IFBoaWxpcHBlDQo+ID4gPiBSZWdhcmRzLA0KPiA+
ID4gT2xla3Npag0KPiA+ID4gDQo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IFBoaWxpcHBlIFNjaGVu
a2VyIDxwaGlsaXBwZS5zY2hlbmtlckB0b3JhZGV4LmNvbT4NCj4gPiA+ID4gDQo+ID4gPiA+IC0t
LQ0KPiA+ID4gPiANCj4gPiA+ID4gIGFyY2gvYXJtL21hY2gtaW14L21hY2gtaW14NnEuYyB8IDM3
DQo+ID4gPiA+ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysNCj4gPiA+ID4gIDEg
ZmlsZSBjaGFuZ2VkLCAzNyBpbnNlcnRpb25zKCspDQo+ID4gPiA+IA0KPiA+ID4gPiBkaWZmIC0t
Z2l0IGEvYXJjaC9hcm0vbWFjaC1pbXgvbWFjaC1pbXg2cS5jIGIvYXJjaC9hcm0vbWFjaC0NCj4g
PiA+ID4gaW14L21hY2gtaW14NnEuYw0KPiA+ID4gPiBpbmRleCBlZGQyNmUwZmZlZWMuLjhhZTVm
MmZhMzNlMiAxMDA2NDQNCj4gPiA+ID4gLS0tIGEvYXJjaC9hcm0vbWFjaC1pbXgvbWFjaC1pbXg2
cS5jDQo+ID4gPiA+ICsrKyBiL2FyY2gvYXJtL21hY2gtaW14L21hY2gtaW14NnEuYw0KPiA+ID4g
PiBAQCAtNjEsNiArNjEsMTQgQEAgc3RhdGljIHZvaWQgbW1kX3dyaXRlX3JlZyhzdHJ1Y3QgcGh5
X2RldmljZQ0KPiA+ID4gPiAqZGV2LA0KPiA+ID4gPiBpbnQgZGV2aWNlLCBpbnQgcmVnLCBpbnQg
dmFsKQ0KPiA+ID4gPiAgCXBoeV93cml0ZShkZXYsIDB4MGUsIHZhbCk7DQo+ID4gPiA+ICB9DQo+
ID4gPiA+ICANCj4gPiA+ID4gK3N0YXRpYyBpbnQgbW1kX3JlYWRfcmVnKHN0cnVjdCBwaHlfZGV2
aWNlICpkZXYsIGludCBkZXZpY2UsIGludA0KPiA+ID4gPiByZWcpDQo+ID4gPiA+ICt7DQo+ID4g
PiA+ICsJcGh5X3dyaXRlKGRldiwgMHgwZCwgZGV2aWNlKTsNCj4gPiA+ID4gKwlwaHlfd3JpdGUo
ZGV2LCAweDBlLCByZWcpOw0KPiA+ID4gPiArCXBoeV93cml0ZShkZXYsIDB4MGQsICgxIDw8IDE0
KSB8IGRldmljZSk7DQo+ID4gPiA+ICsJcmV0dXJuIHBoeV9yZWFkKGRldiwgMHgwZSk7DQo+ID4g
PiA+ICt9DQo+ID4gPiA+ICsNCj4gPiA+ID4gIHN0YXRpYyBpbnQga3N6OTAzMXJuX3BoeV9maXh1
cChzdHJ1Y3QgcGh5X2RldmljZSAqZGV2KQ0KPiA+ID4gPiAgew0KPiA+ID4gPiAgCS8qDQo+ID4g
PiA+IEBAIC03NCw2ICs4MiwzMyBAQCBzdGF0aWMgaW50IGtzejkwMzFybl9waHlfZml4dXAoc3Ry
dWN0DQo+ID4gPiA+IHBoeV9kZXZpY2UNCj4gPiA+ID4gKmRldikNCj4gPiA+ID4gIAlyZXR1cm4g
MDsNCj4gPiA+ID4gIH0NCj4gPiA+ID4gIA0KPiA+ID4gPiArI2RlZmluZSBLU1o5MTMxX1JYVFhE
TExfQllQQVNTCTEyDQo+ID4gPiA+ICsNCj4gPiA+ID4gK3N0YXRpYyBpbnQga3N6OTEzMXJuX3Bo
eV9maXh1cChzdHJ1Y3QgcGh5X2RldmljZSAqZGV2KQ0KPiA+ID4gPiArew0KPiA+ID4gPiArCWlu
dCB0bXA7DQo+ID4gPiA+ICsNCj4gPiA+ID4gKwl0bXAgPSBtbWRfcmVhZF9yZWcoZGV2LCAyLCAw
eDRjKTsNCj4gPiA+ID4gKwkvKiBkaXNhYmxlIHJ4ZGxsIGJ5cGFzcyAoZW5hYmxlIDJucyBza2V3
IGRlbGF5IG9uIFJYQykNCj4gPiA+ID4gKi8NCj4gPiA+ID4gKwl0bXAgJj0gfigxIDw8IEtTWjkx
MzFfUlhUWERMTF9CWVBBU1MpOw0KPiA+ID4gPiArCW1tZF93cml0ZV9yZWcoZGV2LCAyLCAweDRj
LCB0bXApOw0KPiA+ID4gPiArDQo+ID4gPiA+ICsJdG1wID0gbW1kX3JlYWRfcmVnKGRldiwgMiwg
MHg0ZCk7DQo+ID4gPiA+ICsJLyogZGlzYWJsZSB0eGRsbCBieXBhc3MgKGVuYWJsZSAybnMgc2tl
dyBkZWxheSBvbiBUWEMpDQo+ID4gPiA+ICovDQo+ID4gPiA+ICsJdG1wICY9IH4oMSA8PCBLU1o5
MTMxX1JYVFhETExfQllQQVNTKTsNCj4gPiA+ID4gKwltbWRfd3JpdGVfcmVnKGRldiwgMiwgMHg0
ZCwgdG1wKTsNCj4gPiA+ID4gKw0KPiA+ID4gPiArCS8qDQo+ID4gPiA+ICsJICogU3VidHJhY3Qg
fjAuNm5zIGZyb20gdHhkbGwgPSB+MS40bnMgZGVsYXkuDQo+ID4gPiA+ICsJICogbGVhdmUgUlhD
IHBhdGggdW50b3VjaGVkDQo+ID4gPiA+ICsJICovDQo+ID4gPiA+ICsJbW1kX3dyaXRlX3JlZyhk
ZXYsIDIsIDQsIDB4MDA3ZCk7DQo+ID4gPiA+ICsJbW1kX3dyaXRlX3JlZyhkZXYsIDIsIDYsIDB4
ZGRkZCk7DQo+ID4gPiA+ICsJbW1kX3dyaXRlX3JlZyhkZXYsIDIsIDgsIDB4MDAwNyk7DQo+ID4g
PiA+ICsNCj4gPiA+ID4gKwlyZXR1cm4gMDsNCj4gPiA+ID4gK30NCj4gPiA+ID4gKw0KPiA+ID4g
PiAgLyoNCj4gPiA+ID4gICAqIGZpeHVwIGZvciBQTFggUEVYODkwOSBicmlkZ2UgdG8gY29uZmln
dXJlIEdQSU8xLTcgYXMgb3V0cHV0DQo+ID4gPiA+IEhpZ2gNCj4gPiA+ID4gICAqIGFzIHRoZXkg
YXJlIHVzZWQgZm9yIHNsb3RzMS03IFBFUlNUIw0KPiA+ID4gPiBAQCAtMTY3LDYgKzIwMiw4IEBA
IHN0YXRpYyB2b2lkIF9faW5pdCBpbXg2cV9lbmV0X3BoeV9pbml0KHZvaWQpDQo+ID4gPiA+ICAJ
CQkJa3N6OTAyMXJuX3BoeV9maXh1cCk7DQo+ID4gPiA+ICAJCXBoeV9yZWdpc3Rlcl9maXh1cF9m
b3JfdWlkKFBIWV9JRF9LU1o5MDMxLA0KPiA+ID4gPiBNSUNSRUxfUEhZX0lEX01BU0ssDQo+ID4g
PiA+ICAJCQkJa3N6OTAzMXJuX3BoeV9maXh1cCk7DQo+ID4gPiA+ICsJCXBoeV9yZWdpc3Rlcl9m
aXh1cF9mb3JfdWlkKFBIWV9JRF9LU1o5MTMxLA0KPiA+ID4gPiBNSUNSRUxfUEhZX0lEX01BU0ss
DQo+ID4gPiA+ICsJCQkJa3N6OTEzMXJuX3BoeV9maXh1cCk7DQo+ID4gPiA+ICAJCXBoeV9yZWdp
c3Rlcl9maXh1cF9mb3JfdWlkKFBIWV9JRF9BUjgwMzEsDQo+ID4gPiA+IDB4ZmZmZmZmZWYsDQo+
ID4gPiA+ICAJCQkJYXI4MDMxX3BoeV9maXh1cCk7DQo+ID4gPiA+ICAJCXBoeV9yZWdpc3Rlcl9m
aXh1cF9mb3JfdWlkKFBIWV9JRF9BUjgwMzUsDQo+ID4gPiA+IDB4ZmZmZmZmZWYsDQo+ID4gPiA+
IC0tIA0KPiA+ID4gPiAyLjI1LjENCj4gPiA+ID4gDQo+ID4gPiA+IA0KPiA+ID4gPiANCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
