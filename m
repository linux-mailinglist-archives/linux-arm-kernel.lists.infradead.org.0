Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 953B52614E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 12:03:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:From:Reply-To:To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UkehibFyAUetu2o2YAddH7hhaiBK46P8rOQFdDiqVFI=; b=HLOAnbRMZVwaph
	AMsRX0TSOSFMY2UGBm4A4eZDKJTozwEk7z2gIhLIgfZ0aEz6A6Rh8X96FO+ldVtlD+uIpW5T9azZh
	SPW3G4SnOZcNsqUjooOjWdHKImy5xZ8sTBhTGOG1NE1m0rvYzbkfu76X/jUwyANrTtGMxQ9EIecgt
	8lj4f/8pwj/0Uat4xAAdlem4yaA6TeWkQ0oagCYpRXeE7iXD58gIJHJQyEjL29qVk8qDqwnf6RMaC
	rM2YsQSFofMFskrt9A8+V2scwao9jbjNYOZMs+Wznz9NMVrp6yJdYpnuaIah6+/9PakrRDo5ZGMBb
	c11XpdNqRt+Hv9JC8zCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTO6A-000065-1x; Wed, 22 May 2019 10:03:50 +0000
Received: from mail-db5eur03olkn0818.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::818]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTO5h-0008PB-0Y
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 10:03:29 +0000
Received: from DB5EUR03FT027.eop-EUR03.prod.protection.outlook.com
 (10.152.20.60) by DB5EUR03HT010.eop-EUR03.prod.protection.outlook.com
 (10.152.20.73) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1922.16; Wed, 22 May
 2019 10:03:18 +0000
Received: from VI1PR07MB4432.eurprd07.prod.outlook.com (10.152.20.52) by
 DB5EUR03FT027.mail.protection.outlook.com (10.152.20.121) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1922.16 via Frontend Transport; Wed, 22 May 2019 10:03:18 +0000
Received: from VI1PR07MB4432.eurprd07.prod.outlook.com
 ([fe80::91f:b1bb:a60a:fdc3]) by VI1PR07MB4432.eurprd07.prod.outlook.com
 ([fe80::91f:b1bb:a60a:fdc3%7]) with mapi id 15.20.1922.013; Wed, 22 May 2019
 10:03:17 +0000
From: Philippe Mazenauer <philippe.mazenauer@outlook.de>
Subject: [PATCH] arm: topology: make function static
Thread-Topic: [PATCH] arm: topology: make function static
Thread-Index: AQHVEIWUn/i0+75iwk+EnwEgRCDTcw==
Date: Wed, 22 May 2019 10:03:17 +0000
Message-ID: <VI1PR07MB443207D4A7601168EC51C641FD000@VI1PR07MB4432.eurprd07.prod.outlook.com>
Accept-Language: de-CH, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MWHPR15CA0050.namprd15.prod.outlook.com
 (2603:10b6:301:4c::12) To VI1PR07MB4432.eurprd07.prod.outlook.com
 (2603:10a6:802:67::17)
x-incomingtopheadermarker: OriginalChecksum:B2CF39FDFDD89AAA0052F75E9B8DCBAE08792BD69B67008FB2B3B2D5119C3C7F;
 UpperCasedChecksum:62CEE253371D47573478AC960DC26245A833E06E5F2A90DC4E1016866B5C54CB;
 SizeAsReceived:7452; Count:47
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-tmn: [Te3Kow79IK5edHwUwcUouDi32pwLaVe6]
x-microsoft-original-message-id: <20190522100255.157960-1-philippe.mazenauer@outlook.de>
x-ms-publictraffictype: Email
x-incomingheadercount: 47
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031323274)(2017031324274)(2017031322404)(1601125500)(1603101475)(1701031045);
 SRVR:DB5EUR03HT010; 
x-ms-traffictypediagnostic: DB5EUR03HT010:
x-microsoft-antispam-message-info: 8WLtpJQc7MTNj3jj1KRuaXfkIkyIa7N5x35J8RRDo42SAEmVXeaDD0jvvl7OWX45A4ruKddmCyy1MPQxiN4pu7uMU+eP9g2SYMs6A1APSklzIyI5AP//bDhUXzjMAxABBY0vqLsAK/bhAaVnio36tkyFDn1DTXzXAmJnYTzS53a+Q+X2sXm2/K1URtOz+9Nb
Content-ID: <2B3C6BEBC5B5E94FB67AC814F0603D07@eurprd07.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b07c1ee-b58f-479c-6977-08d6de9cb660
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2019 10:03:17.9347 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR03HT010
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_030321_229651_B92185E9 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: 2.8 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0a:0:0:0:818 listed in]
 [list.dnswl.org]
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
Cc: Rob Herring <robh@kernel.org>,
 Philippe Mazenauer <philippe.mazenauer@outlook.de>,
 Russell King <linux@armlinux.org.uk>, "moderated list:ARM
 PORT" <linux-arm-kernel@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TWFrZSBmdW5jdGlvbiBjcHVfY29yZXBvd2VyX21hc2soKSBzdGF0aWMsIGFzIGl0IGlzIG9ubHkg
cmVmZXJlbmNlZCBpbg0KdGhpcyBmaWxlLg0KDQouLi9hcmNoL2FybS9rZXJuZWwvdG9wb2xvZ3ku
YzoxOTU6MjM6IHdhcm5pbmc6IG5vIHByZXZpb3VzIHByb3RvdHlwZSBmb3Ig4oCYY3B1X2NvcmVw
b3dlcl9tYXNr4oCZIFstV21pc3NpbmctcHJvdG90eXBlc10NCiBjb25zdCBzdHJ1Y3QgY3B1bWFz
ayAqY3B1X2NvcmVwb3dlcl9tYXNrKGludCBjcHUpDQogICAgICAgICAgICAgICAgICAgICAgIF5+
fn5+fn5+fn5+fn5+fn5+fg0KDQpTaWduZWQtb2ZmLWJ5OiBQaGlsaXBwZSBNYXplbmF1ZXIgPHBo
aWxpcHBlLm1hemVuYXVlckBvdXRsb29rLmRlPg0KLS0tDQogYXJjaC9hcm0va2VybmVsL3RvcG9s
b2d5LmMgfCAyICstDQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9u
KC0pDQoNCmRpZmYgLS1naXQgYS9hcmNoL2FybS9rZXJuZWwvdG9wb2xvZ3kuYyBiL2FyY2gvYXJt
L2tlcm5lbC90b3BvbG9neS5jDQppbmRleCA2MGUzNzVjZTFhYjIuLjVjODA3NWVjODA2NSAxMDA2
NDQNCi0tLSBhL2FyY2gvYXJtL2tlcm5lbC90b3BvbG9neS5jDQorKysgYi9hcmNoL2FybS9rZXJu
ZWwvdG9wb2xvZ3kuYw0KQEAgLTE5Miw3ICsxOTIsNyBAQCBjb25zdCBzdHJ1Y3QgY3B1bWFzayAq
Y3B1X2NvcmVncm91cF9tYXNrKGludCBjcHUpDQogICogVGhlIGN1cnJlbnQgYXNzdW1wdGlvbiBp
cyB0aGF0IHdlIGNhbiBwb3dlciBnYXRlIGVhY2ggY29yZSBpbmRlcGVuZGVudGx5Lg0KICAqIFRo
aXMgd2lsbCBiZSBzdXBlcnNlZGVkIGJ5IERUIGJpbmRpbmcgb25jZSBhdmFpbGFibGUuDQogICov
DQotY29uc3Qgc3RydWN0IGNwdW1hc2sgKmNwdV9jb3JlcG93ZXJfbWFzayhpbnQgY3B1KQ0KK3N0
YXRpYyBjb25zdCBzdHJ1Y3QgY3B1bWFzayAqY3B1X2NvcmVwb3dlcl9tYXNrKGludCBjcHUpDQog
ew0KIAlyZXR1cm4gJmNwdV90b3BvbG9neVtjcHVdLnRocmVhZF9zaWJsaW5nOw0KIH0NCi0tIA0K
Mi4xNy4xDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
