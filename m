Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E5C260C2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 11:52:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:From:Reply-To:To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sMIY2sDyA/rQxgEpLD7Zf45PcGq5AEzvj+hjVggvsUU=; b=hXqsb0E30AgVSw
	CXZg/RbuU8omCWCLC+0LAfebAab3oEvMhcjV6C68w0kysJMpRnDrfYgZiJ449ZLFT7DlHSSYcNEHu
	4H5qsXNDeR1Nb2Zg5vN4cKnHlQ1LUvJ/pCyMlOLr38N6+PhLKMfTbBW2qpVVIZKLsTYDqp3Qkl/c7
	jYomeFvMIB/yWg+DkXi7qH5BUVBOe7qqzaKjtUL3FWXgCPUnJ+NxVzkjZ1wJcYus5h5aJahYTAAfV
	iuNXYhotwEAIrxvLwM0ZQPBdznBJXQE+bx7+zuCGL/rLFqKRs2K99ibqw0FfCHVxQmgI8ySkdqpCZ
	mEu7xpP222OXLlqWGCfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTNvc-0000SF-Eu; Wed, 22 May 2019 09:52:56 +0000
Received: from mail-oln040092071043.outbound.protection.outlook.com
 ([40.92.71.43] helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTNvS-0000Rs-VH
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 09:52:48 +0000
Received: from DB5EUR03FT054.eop-EUR03.prod.protection.outlook.com
 (10.152.20.54) by DB5EUR03HT051.eop-EUR03.prod.protection.outlook.com
 (10.152.21.9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1900.16; Wed, 22 May
 2019 09:52:44 +0000
Received: from VI1PR07MB4432.eurprd07.prod.outlook.com (10.152.20.58) by
 DB5EUR03FT054.mail.protection.outlook.com (10.152.20.248) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.16 via Frontend Transport; Wed, 22 May 2019 09:52:44 +0000
Received: from VI1PR07MB4432.eurprd07.prod.outlook.com
 ([fe80::91f:b1bb:a60a:fdc3]) by VI1PR07MB4432.eurprd07.prod.outlook.com
 ([fe80::91f:b1bb:a60a:fdc3%7]) with mapi id 15.20.1922.013; Wed, 22 May 2019
 09:52:44 +0000
From: Philippe Mazenauer <philippe.mazenauer@outlook.de>
Subject: [PATCH] arm: arch_timer: add missing include <asm/arch_timer.h>
Thread-Topic: [PATCH] arm: arch_timer: add missing include <asm/arch_timer.h>
Thread-Index: AQHVEIQaLSPiDAkMGkqrMzxROUApjg==
Date: Wed, 22 May 2019 09:52:44 +0000
Message-ID: <VI1PR07MB44325686CBB7085417C6754BFD000@VI1PR07MB4432.eurprd07.prod.outlook.com>
Accept-Language: de-CH, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MWHPR10CA0007.namprd10.prod.outlook.com (2603:10b6:301::17)
 To VI1PR07MB4432.eurprd07.prod.outlook.com
 (2603:10a6:802:67::17)
x-incomingtopheadermarker: OriginalChecksum:D45B6809606F275CE0756F5625A90A7E788ECA32AE6DEAF2CC6933905CD9724E;
 UpperCasedChecksum:56C7425290EDACB7D2138C04EE7A86B74904D25CEB97A64C5D6910A939672725;
 SizeAsReceived:7447; Count:47
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-tmn: [WCI34R2IF49cDwn7cRyyIVXlQeIw9VJw]
x-microsoft-original-message-id: <20190522095223.157574-1-philippe.mazenauer@outlook.de>
x-ms-publictraffictype: Email
x-incomingheadercount: 47
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031323274)(2017031324274)(2017031322404)(1601125500)(1603101475)(1701031045);
 SRVR:DB5EUR03HT051; 
x-ms-traffictypediagnostic: DB5EUR03HT051:
x-microsoft-antispam-message-info: 1RU92cdUtwPNOet+Ih5mpomM4BaC+2qvg27bRF8YHJlSKwRWwcb3L/g7y9iUH9t+Us1tvyL1xbrv/QQAwsGlfrtWEdilWl1YwxvucaYTfdw6CFNJk5O8T1A+R991mKtEx+bIqf56gJLZMOVOT2ymY/RcgS5d8LneW+ZnZTwiIVKo+z8tbYC23ADywmZulFHg
Content-ID: <B9C1413FBFF368459A62E0CFFD61BC5B@eurprd07.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: f53bd173-624a-48d6-e848-08d6de9b3cba
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2019 09:52:44.5459 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR03HT051
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_025247_013429_58C432F7 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.71.43 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.4 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.71.43 listed in wl.mailspike.net]
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

SW5jbHVkZSBjb3JyZXNwb25pbmcgaGVhZGVyIGZpbGUgPGFzbS9hcmNoX3RpbWVyLmg+IGZvciBm
dW5jdGlvbg0KYXJjaF90aW1lcl9hcmNoX2luaXQoKS4NCg0KLi4vYXJjaC9hcm0va2VybmVsL2Fy
Y2hfdGltZXIuYzozNDoxMjogd2FybmluZzogbm8gcHJldmlvdXMgcHJvdG90eXBlIGZvciDigJhh
cmNoX3RpbWVyX2FyY2hfaW5pdOKAmSBbLVdtaXNzaW5nLXByb3RvdHlwZXNdDQogaW50IF9faW5p
dCBhcmNoX3RpbWVyX2FyY2hfaW5pdCh2b2lkKQ0KICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+
fn5+fn4NCg0KU2lnbmVkLW9mZi1ieTogUGhpbGlwcGUgTWF6ZW5hdWVyIDxwaGlsaXBwZS5tYXpl
bmF1ZXJAb3V0bG9vay5kZT4NCi0tLQ0KIGFyY2gvYXJtL2tlcm5lbC9hcmNoX3RpbWVyLmMgfCAx
ICsNCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykNCg0KZGlmZiAtLWdpdCBhL2FyY2gv
YXJtL2tlcm5lbC9hcmNoX3RpbWVyLmMgYi9hcmNoL2FybS9rZXJuZWwvYXJjaF90aW1lci5jDQpp
bmRleCAxNzkxZjEyYzE4MGIuLmY5ZTdmNWI0YjE3NSAxMDA2NDQNCi0tLSBhL2FyY2gvYXJtL2tl
cm5lbC9hcmNoX3RpbWVyLmMNCisrKyBiL2FyY2gvYXJtL2tlcm5lbC9hcmNoX3RpbWVyLmMNCkBA
IC0xMyw2ICsxMyw3IEBADQogI2luY2x1ZGUgPGxpbnV4L2Vycm5vLmg+DQogDQogI2luY2x1ZGUg
PGFzbS9kZWxheS5oPg0KKyNpbmNsdWRlIDxhc20vYXJjaF90aW1lci5oPg0KIA0KICNpbmNsdWRl
IDxjbG9ja3NvdXJjZS9hcm1fYXJjaF90aW1lci5oPg0KIA0KLS0gDQoyLjE3LjENCg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
