Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA76F26113
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 12:00:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:From:Reply-To:To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cVRUnjhSDHsgkWIfGmduno9+nxv0bzXClpIoUtATWeE=; b=dtU8dQ0EtD71u4
	LmSMcJyYCEchKxjzb7gMAZwwtkEDXeof5OmKWPZ09FCbHg00ACDiem8T+euqgksi5OYW0YKZvirpE
	E4Wvj3a/EBg2SqaHgnoIEcBbdEgtbMarJYvZAE0VvYyDEMj4bZacnf6oR6jraKT44fx8PnDou6isC
	JpeRltGQ4zmfdwhsIP+jO71JmrPDXrrrb4Du7PHQqkxm4nQlze12DM7q624SzpqzBhqzQatPiOhq9
	O54L/oKHfJENzbetqSfhrNh4zNqdpi1Dby1r68jZAhst2HvtvmfkGOWldvlGw7zs3/Eja5mTlwPgv
	NIiye0oMKaaA+kzvjucw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTO3A-0005Bb-Ub; Wed, 22 May 2019 10:00:44 +0000
Received: from mail-db5eur03olkn0802.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::802]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTO2Q-0003J8-Lh
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 10:00:02 +0000
Received: from VE1EUR03FT044.eop-EUR03.prod.protection.outlook.com
 (10.152.18.57) by VE1EUR03HT110.eop-EUR03.prod.protection.outlook.com
 (10.152.19.189) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1900.16; Wed, 22 May
 2019 09:59:56 +0000
Received: from VI1PR07MB4432.eurprd07.prod.outlook.com (10.152.18.60) by
 VE1EUR03FT044.mail.protection.outlook.com (10.152.19.106) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1922.16 via Frontend Transport; Wed, 22 May 2019 09:59:56 +0000
Received: from VI1PR07MB4432.eurprd07.prod.outlook.com
 ([fe80::91f:b1bb:a60a:fdc3]) by VI1PR07MB4432.eurprd07.prod.outlook.com
 ([fe80::91f:b1bb:a60a:fdc3%7]) with mapi id 15.20.1922.013; Wed, 22 May 2019
 09:59:52 +0000
From: Philippe Mazenauer <philippe.mazenauer@outlook.de>
Subject: [PATCH] arm: kexec: Make function static
Thread-Topic: [PATCH] arm: kexec: Make function static
Thread-Index: AQHVEIUZgDg7hS40xUq+6eBVL19VIg==
Date: Wed, 22 May 2019 09:59:52 +0000
Message-ID: <VI1PR07MB443291A1A53B11863CC94CF2FD000@VI1PR07MB4432.eurprd07.prod.outlook.com>
Accept-Language: de-CH, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: CO2PR04CA0184.namprd04.prod.outlook.com
 (2603:10b6:104:5::14) To VI1PR07MB4432.eurprd07.prod.outlook.com
 (2603:10a6:802:67::17)
x-incomingtopheadermarker: OriginalChecksum:9142456758F54D39B48F89E39745417DE4858B598A4A4642D51B4949F38FC9BA;
 UpperCasedChecksum:673D0B77AC37DD197533B001F0229245E98729DDA58EB21241DBD1DE73F31F60;
 SizeAsReceived:7446; Count:47
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-tmn: [N+ZqhKH1FPuF8bK7tTriPAl46xXok0HX]
x-microsoft-original-message-id: <20190522095930.157843-1-philippe.mazenauer@outlook.de>
x-ms-publictraffictype: Email
x-incomingheadercount: 47
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);
 SRVR:VE1EUR03HT110; 
x-ms-traffictypediagnostic: VE1EUR03HT110:
x-microsoft-antispam-message-info: eS9mnvW9kHXHBBWNTG9JZafcO8zVJPEQAWqDW3RrlqB5J/XLPlW5PYAyq7MzzS2ZvWeSyjOkEOk+A6PshOjMyqJlOGW2dIHCV3VsIGbrsd8spimjIQ2U5JdcusrQAC029JFwqg13iL/Y1ngrE0QH+TB9LGia7nYat3apUdC9i2P/3K5ZoW3Uf8sbLIY/dThr
Content-ID: <F1A48A595A058F458EE05BA24C232FBE@eurprd07.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: dab1e480-4559-47e7-9221-08d6de9c3c0d
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2019 09:59:52.7398 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR03HT110
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_025958_715436_D7084076 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: 2.8 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0a:0:0:0:802 listed in]
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
 Will Deacon <will.deacon@arm.com>, Russell King <linux@armlinux.org.uk>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TWFrZSBmdW5jdGlvbiBtYWNoaW5lX2NyYXNoX25vbnBhbmljX2NvcmUoKSBzdGF0aWMsIGFzIGl0
IGlzIG9ubHkNCnJlZmVyZW5jZWQgaW4gdGhpcyBmaWxlLg0KDQouLi9hcmNoL2FybS9rZXJuZWwv
bWFjaGluZV9rZXhlYy5jOjgyOjY6IHdhcm5pbmc6IG5vIHByZXZpb3VzIHByb3RvdHlwZSBmb3Ig
4oCYbWFjaGluZV9jcmFzaF9ub25wYW5pY19jb3Jl4oCZIFstV21pc3NpbmctcHJvdG90eXBlc10N
CiB2b2lkIG1hY2hpbmVfY3Jhc2hfbm9ucGFuaWNfY29yZSh2b2lkICp1bnVzZWQpDQogICAgICBe
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4NCg0KU2lnbmVkLW9mZi1ieTogUGhpbGlwcGUgTWF6
ZW5hdWVyIDxwaGlsaXBwZS5tYXplbmF1ZXJAb3V0bG9vay5kZT4NCi0tLQ0KIGFyY2gvYXJtL2tl
cm5lbC9tYWNoaW5lX2tleGVjLmMgfCAyICstDQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspLCAxIGRlbGV0aW9uKC0pDQoNCmRpZmYgLS1naXQgYS9hcmNoL2FybS9rZXJuZWwvbWFjaGlu
ZV9rZXhlYy5jIGIvYXJjaC9hcm0va2VybmVsL21hY2hpbmVfa2V4ZWMuYw0KaW5kZXggNzYzMDBm
MzgxM2U4Li4yNDU2MjE1NzM4MDIgMTAwNjQ0DQotLS0gYS9hcmNoL2FybS9rZXJuZWwvbWFjaGlu
ZV9rZXhlYy5jDQorKysgYi9hcmNoL2FybS9rZXJuZWwvbWFjaGluZV9rZXhlYy5jDQpAQCAtNzks
NyArNzksNyBAQCB2b2lkIG1hY2hpbmVfa2V4ZWNfY2xlYW51cChzdHJ1Y3Qga2ltYWdlICppbWFn
ZSkNCiB7DQogfQ0KIA0KLXZvaWQgbWFjaGluZV9jcmFzaF9ub25wYW5pY19jb3JlKHZvaWQgKnVu
dXNlZCkNCitzdGF0aWMgdm9pZCBtYWNoaW5lX2NyYXNoX25vbnBhbmljX2NvcmUodm9pZCAqdW51
c2VkKQ0KIHsNCiAJc3RydWN0IHB0X3JlZ3MgcmVnczsNCiANCi0tIA0KMi4xNy4xDQoNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
