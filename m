Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB9B254A9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 17:57:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:From:Reply-To:To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sMIY2sDyA/rQxgEpLD7Zf45PcGq5AEzvj+hjVggvsUU=; b=l78Wh6ll5W8iwW
	fMGRMQXKelpgjiidxsyJiUJB2oQy8asxXQfm2L6+2gAdEfa9uBPp8Tha2JvHh8alBQayYk8qUHNZW
	JbGNUZAL0TxvfJnjKpY3J+AjazQAvjdn+H8fPRBBtaVixY5uvsWjoQAeakno24FdugpuOSvxzLq69
	zugU4g+AzscMp0n5lbAlC3UsBCn+Cjvnt8z3czdFaZhxHynE4Vt4U9GLpE9PK1CWX/SBbBX/V5Uq+
	ERS0zRm5DynCbfRzW0a/kiqadY8t4e8EHIeeyBSgiM+e3Wf3HupqBUUNl0FLKEh+rmPCPLPDm5zfL
	Qw6LBjzwXP3gVUEaoLew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT78S-0007B1-Tg; Tue, 21 May 2019 15:57:04 +0000
Received: from mail-oln040092068072.outbound.protection.outlook.com
 ([40.92.68.72] helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT78C-0006xP-R1
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 15:56:53 +0000
Received: from HE1EUR02FT018.eop-EUR02.prod.protection.outlook.com
 (10.152.10.56) by HE1EUR02HT039.eop-EUR02.prod.protection.outlook.com
 (10.152.10.183) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1900.16; Tue, 21 May
 2019 15:56:45 +0000
Received: from VI1PR07MB4432.eurprd07.prod.outlook.com (10.152.10.56) by
 HE1EUR02FT018.mail.protection.outlook.com (10.152.10.248) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1900.16 via Frontend Transport; Tue, 21 May 2019 15:56:45 +0000
Received: from VI1PR07MB4432.eurprd07.prod.outlook.com
 ([fe80::91f:b1bb:a60a:fdc3]) by VI1PR07MB4432.eurprd07.prod.outlook.com
 ([fe80::91f:b1bb:a60a:fdc3%7]) with mapi id 15.20.1922.013; Tue, 21 May 2019
 15:56:45 +0000
From: Philippe Mazenauer <philippe.mazenauer@outlook.de>
Subject: [PATCH] arm: arch_timer: add missing include <asm/arch_timer.h>
Thread-Topic: [PATCH] arm: arch_timer: add missing include <asm/arch_timer.h>
Thread-Index: AQHVD+3KlWo8uLaBL0Om+aRELQJgnw==
Date: Tue, 21 May 2019 15:56:45 +0000
Message-ID: <VI1PR07MB443278198DB7B722332BF19EFD070@VI1PR07MB4432.eurprd07.prod.outlook.com>
Accept-Language: de-CH, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: CO2PR05CA0108.namprd05.prod.outlook.com
 (2603:10b6:104:1::34) To VI1PR07MB4432.eurprd07.prod.outlook.com
 (2603:10a6:802:67::17)
x-incomingtopheadermarker: OriginalChecksum:186E5CFB7B24037E55ED5B9FFCB2EC106609FE42483C1837CB115A039DD7DA49;
 UpperCasedChecksum:A469A90C7B9CA5EA58B6ECC21A3510A7C0F06828EC1395F3A28DE01644CEB9D2;
 SizeAsReceived:7465; Count:47
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-tmn: [TQcm3/Y3dd47esT1vuBKNil4lmYimqOs]
x-microsoft-original-message-id: <20190521155618.176880-1-philippe.mazenauer@outlook.de>
x-ms-publictraffictype: Email
x-incomingheadercount: 47
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031323274)(2017031324274)(2017031322404)(1601125500)(1603101475)(1701031045);
 SRVR:HE1EUR02HT039; 
x-ms-traffictypediagnostic: HE1EUR02HT039:
x-microsoft-antispam-message-info: BH6Gp5RW9aEaoCSw8Ec+Miuidkrbu2klVned73NOyXRJi1Lr6oSxUcpV6SSi1zHNSO1DSPe3hrQvflh1okQTxc/5bG69l7J1Z22gXTFYvOW66f7sWExH2Be7Li8honf9FuXsCFhPVMhGxmqh2woHSKHFUK8NFEnL1YnPyagBIQ3zqpjgBGJIzevi+T58PKXl
Content-ID: <6F6827F23A99554DBCA2F4794F2D09C6@eurprd07.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 85d939cc-3911-4733-95ae-08d6de04eccd
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2019 15:56:45.7403 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR02HT039
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_085649_355359_98A55E37 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: 2.8 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.68.72 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (philippe.mazenauer[at]outlook.de)
 1.2 MISSING_HEADERS        Missing To: header
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
