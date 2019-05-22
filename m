Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DDE526169
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 12:07:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:From:Reply-To:To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nNFBTpe8shiWjdVfA9Qh7g+CSOMj+mND/mHkkQuk3gQ=; b=q1raIeb6tWGsWA
	r/WINwtsw2617XUoRDJwnj4uM0MutcJV6C6XnTEXP6bbBY+sG/Zul7iIDbNb5iPlqOVcgg2IJaYxR
	7u19htt6Y2upr+2kJxA4yTpcMwY/GUvtNFpK08OvWfY1RJG2M1Wqgz3HZIt+MA7FuaRPbLTRb0yPs
	dYLslwHkcGKfgcSsGePXkFaieD2f3f42g/q8tp3mBGnhcj1lraCc7DX6CBUBPkcahvOrT1zMkk+9M
	ZHE2qxGQVyj4qxxZ5sI9gNNfpe9sWM76pwJ7l3kk1ShnTaC+u/7qL924x4gbbewqYlJeE5Le6Aeyy
	aIjrwmccWnLzKxYhxgSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTO9c-0002Du-La; Wed, 22 May 2019 10:07:24 +0000
Received: from mail-oln040092071011.outbound.protection.outlook.com
 ([40.92.71.11] helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTO9U-0002CI-NV
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 10:07:19 +0000
Received: from DB5EUR03FT027.eop-EUR03.prod.protection.outlook.com
 (10.152.20.52) by DB5EUR03HT031.eop-EUR03.prod.protection.outlook.com
 (10.152.21.117) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1900.16; Wed, 22 May
 2019 10:07:14 +0000
Received: from VI1PR07MB4432.eurprd07.prod.outlook.com (10.152.20.52) by
 DB5EUR03FT027.mail.protection.outlook.com (10.152.20.121) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1922.16 via Frontend Transport; Wed, 22 May 2019 10:07:14 +0000
Received: from VI1PR07MB4432.eurprd07.prod.outlook.com
 ([fe80::91f:b1bb:a60a:fdc3]) by VI1PR07MB4432.eurprd07.prod.outlook.com
 ([fe80::91f:b1bb:a60a:fdc3%7]) with mapi id 15.20.1922.013; Wed, 22 May 2019
 10:07:14 +0000
From: Philippe Mazenauer <philippe.mazenauer@outlook.de>
Subject: [PATCH] crypto: arm/sha512 - make function static
Thread-Topic: [PATCH] crypto: arm/sha512 - make function static
Thread-Index: AQHVEIYg0/n17GVM/0WrI34N1yB+nw==
Date: Wed, 22 May 2019 10:07:14 +0000
Message-ID: <VI1PR07MB44324EFEF57062FCCA758358FD000@VI1PR07MB4432.eurprd07.prod.outlook.com>
Accept-Language: de-CH, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: CO2PR05CA0079.namprd05.prod.outlook.com
 (2603:10b6:102:2::47) To VI1PR07MB4432.eurprd07.prod.outlook.com
 (2603:10a6:802:67::17)
x-incomingtopheadermarker: OriginalChecksum:93E2A0D80A89EB0FBAA122ADC242ADBB36D5B9329F2929AEE227FBF289682C1E;
 UpperCasedChecksum:364AF332B8014653A71F9C05F8B8F4EA0A2873242A451BC0C99AFF3C41216965;
 SizeAsReceived:7591; Count:47
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-tmn: [omNYMT9E9m9SRgFtDZrK8qFeDf5ZrQAu]
x-microsoft-original-message-id: <20190522100649.158063-1-philippe.mazenauer@outlook.de>
x-ms-publictraffictype: Email
x-incomingheadercount: 47
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031323274)(2017031324274)(2017031322404)(1601125500)(1603101475)(1701031045);
 SRVR:DB5EUR03HT031; 
x-ms-traffictypediagnostic: DB5EUR03HT031:
x-microsoft-antispam-message-info: k9zPpgcEv+Y35MFMFfvUzP1JUpTutQyXOJSTCm07G3tj/aMDswjt7vN8KPYP1JgguXFtAGC7tO959slhAHC5k2dMcOhJS/6LSMPO/3rpSSETjlzJBnkTKqT3e2Dtt+u1WerN/kf1O+nsxg8bLh8M3hj1mY9gW/VoSp5beddeGsZx1tb4ByhnqNwk14ET2DtT
Content-ID: <73AB4A9B5F272D408CC901F2856F9BDD@eurprd07.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 43087c09-cd2d-4f59-444e-08d6de9d4342
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2019 10:07:14.2749 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR03HT031
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_030716_762105_04E542F3 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: 2.8 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.71.11 listed in list.dnswl.org]
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Russell King <linux@armlinux.org.uk>, open list <linux-kernel@vger.kernel.org>,
 Philippe Mazenauer <philippe.mazenauer@outlook.de>,
 "open list:CRYPTO API" <linux-crypto@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnVuY3Rpb24gc2hhNTEyX2FybV9maW5hbCgpIGlzIG9ubHkgdXNlZCBpbiB0aGlzIGZpbGUsIHRo
ZXJlZm9yZSBzaG91bGQNCmJlIHN0YXRpYw0KDQouLi9hcmNoL2FybS9jcnlwdG8vc2hhNTEyLWds
dWUuYzo0MDo1OiB3YXJuaW5nOiBubyBwcmV2aW91cyBwcm90b3R5cGUgZm9yIOKAmHNoYTUxMl9h
cm1fZmluYWzigJkgWy1XbWlzc2luZy1wcm90b3R5cGVzXQ0KIGludCBzaGE1MTJfYXJtX2ZpbmFs
KHN0cnVjdCBzaGFzaF9kZXNjICpkZXNjLCB1OCAqb3V0KQ0KICAgICBefn5+fn5+fn5+fn5+fn5+
DQoNClNpZ25lZC1vZmYtYnk6IFBoaWxpcHBlIE1hemVuYXVlciA8cGhpbGlwcGUubWF6ZW5hdWVy
QG91dGxvb2suZGU+DQotLS0NCiBhcmNoL2FybS9jcnlwdG8vc2hhNTEyLWdsdWUuYyB8IDIgKy0N
CiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCg0KZGlmZiAt
LWdpdCBhL2FyY2gvYXJtL2NyeXB0by9zaGE1MTItZ2x1ZS5jIGIvYXJjaC9hcm0vY3J5cHRvL3No
YTUxMi1nbHVlLmMNCmluZGV4IDg2NTQwY2Q0YTZmYS4uMjNmYzM4MTNhOTFiIDEwMDY0NA0KLS0t
IGEvYXJjaC9hcm0vY3J5cHRvL3NoYTUxMi1nbHVlLmMNCisrKyBiL2FyY2gvYXJtL2NyeXB0by9z
aGE1MTItZ2x1ZS5jDQpAQCAtMzcsNyArMzcsNyBAQCBpbnQgc2hhNTEyX2FybV91cGRhdGUoc3Ry
dWN0IHNoYXNoX2Rlc2MgKmRlc2MsIGNvbnN0IHU4ICpkYXRhLA0KIAkJKHNoYTUxMl9ibG9ja19m
biAqKXNoYTUxMl9ibG9ja19kYXRhX29yZGVyKTsNCiB9DQogDQotaW50IHNoYTUxMl9hcm1fZmlu
YWwoc3RydWN0IHNoYXNoX2Rlc2MgKmRlc2MsIHU4ICpvdXQpDQorc3RhdGljIGludCBzaGE1MTJf
YXJtX2ZpbmFsKHN0cnVjdCBzaGFzaF9kZXNjICpkZXNjLCB1OCAqb3V0KQ0KIHsNCiAJc2hhNTEy
X2Jhc2VfZG9fZmluYWxpemUoZGVzYywNCiAJCShzaGE1MTJfYmxvY2tfZm4gKilzaGE1MTJfYmxv
Y2tfZGF0YV9vcmRlcik7DQotLSANCjIuMTcuMQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
