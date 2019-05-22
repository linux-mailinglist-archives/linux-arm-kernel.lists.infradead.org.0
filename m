Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E30142604D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 11:18:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:From:Reply-To:To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8bsAztPQKqP+89y9SVA0OHea02Txz1qdltJwxC9zYds=; b=LLCFCzGaYjdcur
	Slfzzl5uX7DBB7Vp6rSUYexd/MHc+svst2ujLDtdZ8prePAFWssQrsSZrt5c/V6z79FdrlsfxqznD
	wMFrNtQQL/ajhrZPDeqlztdavz0gKWc3yM5+HfDOkBLhydNikFEr2AWGQVIXFGOycggBkFcfvrbok
	dFD6ldVqs29UP2ZLdcx/Gg3IO3TDLT3s81bIb9sXTx8EQpXjOlwJiZYvHhXZVECUeAyFUIQMdh3ag
	EuksuFACaoaSHc3JbxhF4Gdpo0j2HYxLb63aqofkoxrhE8ZTRoQVS4Q/IHtBxWxIpQ6/C+EUXWB8l
	XVHRPvhPccGSAkbon0rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTNOD-0000Xd-65; Wed, 22 May 2019 09:18:25 +0000
Received: from mail-ve1eur03olkn081f.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::81f]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTNO5-0000XA-Bx
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 09:18:18 +0000
Received: from VE1EUR03FT047.eop-EUR03.prod.protection.outlook.com
 (10.152.18.56) by VE1EUR03HT069.eop-EUR03.prod.protection.outlook.com
 (10.152.19.236) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1900.16; Wed, 22 May
 2019 09:18:14 +0000
Received: from VI1PR07MB4432.eurprd07.prod.outlook.com (10.152.18.55) by
 VE1EUR03FT047.mail.protection.outlook.com (10.152.19.218) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1922.16 via Frontend Transport; Wed, 22 May 2019 09:18:14 +0000
Received: from VI1PR07MB4432.eurprd07.prod.outlook.com
 ([fe80::91f:b1bb:a60a:fdc3]) by VI1PR07MB4432.eurprd07.prod.outlook.com
 ([fe80::91f:b1bb:a60a:fdc3%7]) with mapi id 15.20.1922.013; Wed, 22 May 2019
 09:18:14 +0000
From: Philippe Mazenauer <philippe.mazenauer@outlook.de>
Subject: [PATCH] arm: Add missing method to asm/irq_work.h
Thread-Topic: [PATCH] arm: Add missing method to asm/irq_work.h
Thread-Index: AQHVEH9I7QiDXzMhvECKeuN2C3td2w==
Date: Wed, 22 May 2019 09:18:14 +0000
Message-ID: <VI1PR07MB4432EEF1C469BE68BF1F1DA7FD000@VI1PR07MB4432.eurprd07.prod.outlook.com>
Accept-Language: de-CH, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MWHPR1601CA0012.namprd16.prod.outlook.com
 (2603:10b6:300:da::22) To VI1PR07MB4432.eurprd07.prod.outlook.com
 (2603:10a6:802:67::17)
x-incomingtopheadermarker: OriginalChecksum:7B409564C77F1D2A3E110E6EF3E316457909D8473D11FEF52362CAD2EC26832E;
 UpperCasedChecksum:9D90EAE8728F0930D4B6E330651CEDE43ED4C9774C4A9236058407059894C598;
 SizeAsReceived:7445; Count:47
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-tmn: [JtX3SCL8CK1gWfMohNhOYjqm1x3+TFT+]
x-microsoft-original-message-id: <20190522091746.132422-1-philippe.mazenauer@outlook.de>
x-ms-publictraffictype: Email
x-incomingheadercount: 47
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031323274)(2017031324274)(2017031322404)(1601125500)(1603101475)(1701031045);
 SRVR:VE1EUR03HT069; 
x-ms-traffictypediagnostic: VE1EUR03HT069:
x-microsoft-antispam-message-info: FADARJh28q77mYtZqB9ED4VgPPelOSxvgSb8yrck/nOm5o78QoO9Bl2yvX8uMFLQE1FpvQNiKwgm5Yobkpjg9DTbdM+8yZ7BX9wH8pHyyff0u4Nr08ySyQk5dYyxRigFmuw95W5gZ2XdvyjdA8wIC0Ap7ZX4uQrhDryM+cVd6/PoQTvTHolMQrbySvYhvsS9
Content-ID: <0F89DECB9B09EB4A9A0D6541B0C58630@eurprd07.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 841c8027-7795-40e1-f9a6-08d6de966b33
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2019 09:18:14.8640 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR03HT069
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_021817_401387_47031359 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.8 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe09:0:0:0:81f listed in]
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
Cc: Philippe Mazenauer <philippe.mazenauer@outlook.de>,
 Russell King <linux@armlinux.org.uk>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIG1pc3NpbmcgbWV0aG9kIGFyY2hfaXJxX3dvcmtfcmFpc2UoKSB0byBpcnFfd29yay5oLCBz
byBhcyB0byByZW1vdmUNCm1pc3NpbmctcHJvdG90eXBlcyB3YXJuaW5nIGluIGtlcm5lbC9zbXAu
Yy4NCg0KLi4vYXJjaC9hcm0va2VybmVsL3NtcC5jOjU3Mjo2OiB3YXJuaW5nOiBubyBwcmV2aW91
cyBwcm90b3R5cGUgZm9yIOKAmGFyY2hfaXJxX3dvcmtfcmFpc2XigJkgWy1XbWlzc2luZy1wcm90
b3R5cGVzXQ0KIHZvaWQgYXJjaF9pcnFfd29ya19yYWlzZSh2b2lkKQ0KICAgICAgXn5+fn5+fn5+
fn5+fn5+fn5+fg0KDQpTaWduZWQtb2ZmLWJ5OiBQaGlsaXBwZSBNYXplbmF1ZXIgPHBoaWxpcHBl
Lm1hemVuYXVlckBvdXRsb29rLmRlPg0KLS0tDQogYXJjaC9hcm0vaW5jbHVkZS9hc20vaXJxX3dv
cmsuaCB8IDIgKysNCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspDQoNCmRpZmYgLS1n
aXQgYS9hcmNoL2FybS9pbmNsdWRlL2FzbS9pcnFfd29yay5oIGIvYXJjaC9hcm0vaW5jbHVkZS9h
c20vaXJxX3dvcmsuaA0KaW5kZXggODg5NTk5OTgzNGNjLi5jOWVkYjllNzUyN2YgMTAwNjQ0DQot
LS0gYS9hcmNoL2FybS9pbmNsdWRlL2FzbS9pcnFfd29yay5oDQorKysgYi9hcmNoL2FybS9pbmNs
dWRlL2FzbS9pcnFfd29yay5oDQpAQCAtNCw2ICs0LDggQEANCiANCiAjaW5jbHVkZSA8YXNtL3Nt
cF9wbGF0Lmg+DQogDQordm9pZCBhcmNoX2lycV93b3JrX3JhaXNlKHZvaWQpOw0KKw0KIHN0YXRp
YyBpbmxpbmUgYm9vbCBhcmNoX2lycV93b3JrX2hhc19pbnRlcnJ1cHQodm9pZCkNCiB7DQogCXJl
dHVybiBpc19zbXAoKTsNCi0tIA0KMi4xNy4xDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
