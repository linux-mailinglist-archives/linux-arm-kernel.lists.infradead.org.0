Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D14D25FD0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 10:54:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:From:Reply-To:To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8tilUxZIXfR8wtuJBQqJnajKWmxFdtOebHM2Yvfq0e4=; b=YN3KM+780bU0RB
	j7VIEfBkt4lM4d72VloiL/GtoECET2JXQPVUfcQiOi0DW0pCii+0hFZ5IiAkvLvr0L2EDmnQ93XKK
	f8O8kr1t8ruJhGNaEqfLmr4agVn8NjOACF8ZH9sOyo/W7HXiVdSrdlWISx3ighcq0r68WJq4VmI7w
	m7Fwzq/Q3bn05izUB0LPn4TVr3hrvxdlG0ETNBhrAo0OEGSiNDrw+LgBdLQDl7IazZZICT5LzWAMM
	nDqjgeQapdXUA7NK5t5pq21n1n7jyo3Acdj577Uv66Tj+0tW7+KOdO+BAD/gqWtSeyS3yJRE74xbh
	bLhYUbpRELTwDDByRRHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTN1K-0006bh-Cr; Wed, 22 May 2019 08:54:46 +0000
Received: from mail-oln040092067106.outbound.protection.outlook.com
 ([40.92.67.106] helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTN1D-0006b0-K4
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 08:54:41 +0000
Received: from AM5EUR02FT029.eop-EUR02.prod.protection.outlook.com
 (10.152.8.57) by AM5EUR02HT231.eop-EUR02.prod.protection.outlook.com
 (10.152.9.138) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1922.16; Wed, 22 May
 2019 08:54:36 +0000
Received: from VI1PR07MB4432.eurprd07.prod.outlook.com (10.152.8.57) by
 AM5EUR02FT029.mail.protection.outlook.com (10.152.8.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.16 via Frontend Transport; Wed, 22 May 2019 08:54:36 +0000
Received: from VI1PR07MB4432.eurprd07.prod.outlook.com
 ([fe80::91f:b1bb:a60a:fdc3]) by VI1PR07MB4432.eurprd07.prod.outlook.com
 ([fe80::91f:b1bb:a60a:fdc3%7]) with mapi id 15.20.1922.013; Wed, 22 May 2019
 08:54:35 +0000
From: Philippe Mazenauer <philippe.mazenauer@outlook.de>
Subject: [PATCH] ARM: Add method to mach/pci.h
Thread-Topic: [PATCH] ARM: Add method to mach/pci.h
Thread-Index: AQHVEHv6lq8w7O7W1kuo9tizM8ubug==
Date: Wed, 22 May 2019 08:54:34 +0000
Message-ID: <VI1PR07MB443283DF94F9F8942E6A3ADAFD000@VI1PR07MB4432.eurprd07.prod.outlook.com>
Accept-Language: de-CH, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MWHPR0201CA0001.namprd02.prod.outlook.com
 (2603:10b6:301:74::14) To VI1PR07MB4432.eurprd07.prod.outlook.com
 (2603:10a6:802:67::17)
x-incomingtopheadermarker: OriginalChecksum:AE6877DCB04B7A1ABB5EAE267A161E0BB157E0E7B953ABF9D704854FE2E1E338;
 UpperCasedChecksum:1F8AD31A4A089FF3C730F2C3E3FA88C354BFB6319A50B83F0A7CD44991D4E8C2;
 SizeAsReceived:7421; Count:47
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-tmn: [cYBMpV7q8ymNh4KaOYE0WfZP4tigp1go]
x-microsoft-original-message-id: <20190522085353.113717-1-philippe.mazenauer@outlook.de>
x-ms-publictraffictype: Email
x-incomingheadercount: 47
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031323274)(2017031324274)(2017031322404)(1601125500)(1603101475)(1701031045);
 SRVR:AM5EUR02HT231; 
x-ms-traffictypediagnostic: AM5EUR02HT231:
x-microsoft-antispam-message-info: h1vn1LmJtUMreQ0Pee7FC2pTadgObiOZKYK1dMviGlW+IATHSKa3dujBwCgjMMiofT6i2CXo/V5std3KWMCVAJn0lW0a+/QwMiniy8B6klV5TtS2KzhxR+7RNPeJvRNSXz1qWqXo9vfi9Zpl6kpT7M0tu/zUiNGf9DEfFuQYOgPklds+RejtnH5fhkM7Ashm
Content-ID: <17B8CDA1DC5EF441B76A66E351EC577E@eurprd07.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: c8705529-ceb8-49a1-0466-08d6de931c0a
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2019 08:54:35.6337 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5EUR02HT231
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_015439_664990_187D7790 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: 2.8 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.67.106 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.2 MISSING_HEADERS        Missing To: header
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (philippe.mazenauer[at]outlook.de)
 1.6 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Philippe Mazenauer <philippe.mazenauer@outlook.de>,
 Russell King <linux@armlinux.org.uk>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkaW5nIG1ldGhvZCBwY2liaW9zX3JlcG9ydF9zdGF0dXMoKSB0byBtYWNoL3BjaS5oLCBzbyBh
cyB0byByZW1vdmUgdGhlDQpleHRlcm4gZGVjbGFyYXRpb24gaW4gZGMyMTI4NS5jLCBhbmQgcmVt
b3ZlIG1pc3NpbmctcHJvdG90eXBlcyB3YXJuaW5nDQppbiBrZXJuZWwvYmlvczMyLmMuDQoNCi4u
L2FyY2gvYXJtL2tlcm5lbC9iaW9zMzIuYzo1OTo2OiB3YXJuaW5nOiBubyBwcmV2aW91cyBwcm90
b3R5cGUgZm9yIOKAmHBjaWJpb3NfcmVwb3J0X3N0YXR1c+KAmSBbLVdtaXNzaW5nLXByb3RvdHlw
ZXNdDQogdm9pZCBwY2liaW9zX3JlcG9ydF9zdGF0dXModV9pbnQgc3RhdHVzX21hc2ssIGludCB3
YXJuKQ0KICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+DQoNClNpZ25lZC1vZmYtYnk6IFBoaWxp
cHBlIE1hemVuYXVlciA8cGhpbGlwcGUubWF6ZW5hdWVyQG91dGxvb2suZGU+DQotLS0NCiBhcmNo
L2FybS9pbmNsdWRlL2FzbS9tYWNoL3BjaS5oICAgIHwgMiArKw0KIGFyY2gvYXJtL21hY2gtZm9v
dGJyaWRnZS9kYzIxMjg1LmMgfCAxIC0NCiAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQ0KDQpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vaW5jbHVkZS9hc20vbWFj
aC9wY2kuaCBiL2FyY2gvYXJtL2luY2x1ZGUvYXNtL21hY2gvcGNpLmgNCmluZGV4IDIzM2I0YjUw
ZWZmMy4uMWUwNzYxMmJjYmRiIDEwMDY0NA0KLS0tIGEvYXJjaC9hcm0vaW5jbHVkZS9hc20vbWFj
aC9wY2kuaA0KKysrIGIvYXJjaC9hcm0vaW5jbHVkZS9hc20vbWFjaC9wY2kuaA0KQEAgLTU3LDYg
KzU3LDggQEAgc3RydWN0IHBjaV9zeXNfZGF0YSB7DQogCXZvaWQJCSpwcml2YXRlX2RhdGE7CS8q
IHBsYXRmb3JtIGNvbnRyb2xsZXIgcHJpdmF0ZSBkYXRhCSovDQogfTsNCiANCit2b2lkIHBjaWJp
b3NfcmVwb3J0X3N0YXR1cyh1X2ludCBzdGF0dXNfbWFzaywgaW50IHdhcm4pOw0KKw0KIC8qDQog
ICogQ2FsbCB0aGlzIHdpdGggeW91ciBod19wY2kgc3RydWN0IHRvIGluaXRpYWxpc2UgdGhlIFBD
SSBzeXN0ZW0uDQogICovDQpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1mb290YnJpZGdlL2Rj
MjEyODUuYyBiL2FyY2gvYXJtL21hY2gtZm9vdGJyaWRnZS9kYzIxMjg1LmMNCmluZGV4IDE2ZDcx
YmFjMDA2MS4uNzVkOTdjZGU3NjU1IDEwMDY0NA0KLS0tIGEvYXJjaC9hcm0vbWFjaC1mb290YnJp
ZGdlL2RjMjEyODUuYw0KKysrIGIvYXJjaC9hcm0vbWFjaC1mb290YnJpZGdlL2RjMjEyODUuYw0K
QEAgLTM0LDcgKzM0LDYgQEANCiAJCQkJICBQQ0lfU1RBVFVTX1BBUklUWSkgPDwgMTYpDQogDQog
ZXh0ZXJuIGludCBzZXR1cF9hcm1faXJxKGludCwgc3RydWN0IGlycWFjdGlvbiAqKTsNCi1leHRl
cm4gdm9pZCBwY2liaW9zX3JlcG9ydF9zdGF0dXModV9pbnQgc3RhdHVzX21hc2ssIGludCB3YXJu
KTsNCiANCiBzdGF0aWMgdW5zaWduZWQgbG9uZw0KIGRjMjEyODVfYmFzZV9hZGRyZXNzKHN0cnVj
dCBwY2lfYnVzICpidXMsIHVuc2lnbmVkIGludCBkZXZmbikNCi0tIA0KMi4xNy4xDQoNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
