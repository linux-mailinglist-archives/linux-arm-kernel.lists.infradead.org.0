Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93285260DE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 11:57:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:From:Reply-To:To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+NFSVah38HtMepD2o9mklo/z8aFZgRl49MkUXXymQfg=; b=hIU1Fapa5DyOxZ
	scP93GyaLa7ymChcjmkycUAj/Y58KxaAiKGRNMeGLnCAuvi8QjljVX1QeXVlh2XSBiqv52cDDDLTP
	V54RqBlXi8oWB5iREwHrvATM4LgnrGWJs7OdbYSeDGJRUe2yKzTFs9YSDESfamZQQBTV3KpJtMbv8
	iSUMYkNwLyPggzMlFDQ5I+PgnOCR6gWN3M9QqxGxqC6LvplPyIm6IsaMOr3+3nL0roQe13YaxC6IL
	jbJwqMdIeh/fMtx2LB4mDjeFkCTLq2zgg/e9kVqXH3HD+js/O7n+5W7jt16Iy6YDbBQhEJt9FC7ac
	mJMHK4oQmTWxaMMKA7yQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTNzw-0002ak-DX; Wed, 22 May 2019 09:57:24 +0000
Received: from mail-oln040092070039.outbound.protection.outlook.com
 ([40.92.70.39] helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTNzm-0002aO-Ik
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 09:57:16 +0000
Received: from DB5EUR03FT054.eop-EUR03.prod.protection.outlook.com
 (10.152.20.54) by DB5EUR03HT062.eop-EUR03.prod.protection.outlook.com
 (10.152.21.132) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1900.16; Wed, 22 May
 2019 09:57:11 +0000
Received: from VI1PR07MB4432.eurprd07.prod.outlook.com (10.152.20.58) by
 DB5EUR03FT054.mail.protection.outlook.com (10.152.20.248) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.16 via Frontend Transport; Wed, 22 May 2019 09:57:11 +0000
Received: from VI1PR07MB4432.eurprd07.prod.outlook.com
 ([fe80::91f:b1bb:a60a:fdc3]) by VI1PR07MB4432.eurprd07.prod.outlook.com
 ([fe80::91f:b1bb:a60a:fdc3%7]) with mapi id 15.20.1922.013; Wed, 22 May 2019
 09:57:11 +0000
From: Philippe Mazenauer <philippe.mazenauer@outlook.de>
Subject: [PATCH] arm: kernel: add missing import <linux/moduleloader.h>
Thread-Topic: [PATCH] arm: kernel: add missing import <linux/moduleloader.h>
Thread-Index: AQHVEIS5JK/wZFGeW0ysj4hc5NEdmQ==
Date: Wed, 22 May 2019 09:57:11 +0000
Message-ID: <VI1PR07MB443223E9DBAF0354739AA194FD000@VI1PR07MB4432.eurprd07.prod.outlook.com>
Accept-Language: de-CH, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: CO2PR18CA0058.namprd18.prod.outlook.com
 (2603:10b6:104:2::26) To VI1PR07MB4432.eurprd07.prod.outlook.com
 (2603:10a6:802:67::17)
x-incomingtopheadermarker: OriginalChecksum:0EBD54CD39B947CFB26840CC790FA00BE209348308C9BD1E1E04BD5EE7645C2D;
 UpperCasedChecksum:EE1ABD9FF380C1EDF3BE532FC7AFC0E0E37C84844EE9CA122273D302D385E886;
 SizeAsReceived:7461; Count:47
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-tmn: [5JF0WqkuAb62rehId9iJYhLqbNXcWaaU]
x-microsoft-original-message-id: <20190522095649.157754-1-philippe.mazenauer@outlook.de>
x-ms-publictraffictype: Email
x-incomingheadercount: 47
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);
 SRVR:DB5EUR03HT062; 
x-ms-traffictypediagnostic: DB5EUR03HT062:
x-microsoft-antispam-message-info: LrtC/klUwxm4PSfz7sM6of9DNep7vpTwU81yRq/RXWSizKCwkUqVkFbAO+VKUIuCeG7+Tf7HjkPzRamvt/g2DHtf4djX0eKVrLPMwW5bWIz4+L9yKaT7XLK4nqjAyRZxg29Tp/1e0XXB6nLqQOiZgrMNmk0ZEfQH7raUicCsGTpZ+r/iaHYW8zoufRC6Sy77
Content-ID: <45B2D72F8C04944F8780B02BA9D8F266@eurprd07.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 20f0367c-1455-4098-fe91-08d6de9bdc1c
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2019 09:57:11.7486 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR03HT062
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_025714_742090_1EA0A0B6 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: 2.8 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.70.39 listed in list.dnswl.org]
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

SW5jbHVkZSBjb3JyZXNwb25kaW5nIGhlYWRlciBmaWxlIDxsaW51eC9tb2R1bGVsb2FkZXIuaD4g
Zm9yIGZ1bmN0aW9uDQptb2R1bGVfZnJvYl9hcmNoX3NlY3Rpb25zKCkuDQoNCi4uL2FyY2gvYXJt
L2tlcm5lbC9tb2R1bGUtcGx0cy5jOjE5MTo1OiB3YXJuaW5nOiBubyBwcmV2aW91cyBwcm90b3R5
cGUgZm9yIOKAmG1vZHVsZV9mcm9iX2FyY2hfc2VjdGlvbnPigJkgWy1XbWlzc2luZy1wcm90b3R5
cGVzXQ0KIGludCBtb2R1bGVfZnJvYl9hcmNoX3NlY3Rpb25zKEVsZl9FaGRyICplaGRyLCBFbGZf
U2hkciAqc2VjaGRycywNCiAgICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fg0KDQpTaWduZWQt
b2ZmLWJ5OiBQaGlsaXBwZSBNYXplbmF1ZXIgPHBoaWxpcHBlLm1hemVuYXVlckBvdXRsb29rLmRl
Pg0KLS0tDQogYXJjaC9hcm0va2VybmVsL21vZHVsZS1wbHRzLmMgfCAxICsNCiAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKykNCg0KZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2tlcm5lbC9tb2R1
bGUtcGx0cy5jIGIvYXJjaC9hcm0va2VybmVsL21vZHVsZS1wbHRzLmMNCmluZGV4IDNkMGMyZTRk
ZGExZC4uMzcyNWVjY2RhYTczIDEwMDY0NA0KLS0tIGEvYXJjaC9hcm0va2VybmVsL21vZHVsZS1w
bHRzLmMNCisrKyBiL2FyY2gvYXJtL2tlcm5lbC9tb2R1bGUtcGx0cy5jDQpAQCAtOSw2ICs5LDcg
QEANCiAjaW5jbHVkZSA8bGludXgvZWxmLmg+DQogI2luY2x1ZGUgPGxpbnV4L2tlcm5lbC5oPg0K
ICNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4NCisjaW5jbHVkZSA8bGludXgvbW9kdWxlbG9hZGVy
Lmg+DQogI2luY2x1ZGUgPGxpbnV4L3NvcnQuaD4NCiANCiAjaW5jbHVkZSA8YXNtL2NhY2hlLmg+
DQotLSANCjIuMTcuMQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
