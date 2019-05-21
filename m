Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20388254A3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 17:54:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:From:Reply-To:To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SYtunVoTuYazM1yOmCAMoh6VlGB5kX3QpruxPb7vsyM=; b=nf2MAAqU1bKYSO
	349som8UddKiUiaKXFJdiaeTSVstsKe4PL8Xiy3FIkS9pCe5wIJwtXbKaKAuDpbwpV9TYQagMdVGL
	vgpZbmHST9zTcwKw5O5f8HG19hoduXFmxFdzOZJuUF+nXtLhDd7vuDqiktMySJ6k5M4NMlW0InOQS
	Yj58ViRVMRKRAWqaNmRcdcxnq9LYOHMZngl+NXd98f5ZYHySgpfqTEqeUP0bk8mrRLirtxHtigK9q
	WkaQxlMGBiNevQm7XZFKmE7LQ0UFPYn95QiA5is2kirKPK5iyFBWiNpUcN90QdN4wVah+lTwHZy6g
	FMUIxq0LJH78zv5HwXeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT76I-0005N2-Ns; Tue, 21 May 2019 15:54:50 +0000
Received: from mail-oln040092067017.outbound.protection.outlook.com
 ([40.92.67.17] helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT76B-0005Le-3W
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 15:54:44 +0000
Received: from HE1EUR02FT018.eop-EUR02.prod.protection.outlook.com
 (10.152.10.53) by HE1EUR02HT070.eop-EUR02.prod.protection.outlook.com
 (10.152.11.51) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1900.16; Tue, 21 May
 2019 15:54:40 +0000
Received: from VI1PR07MB4432.eurprd07.prod.outlook.com (10.152.10.56) by
 HE1EUR02FT018.mail.protection.outlook.com (10.152.10.248) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1900.16 via Frontend Transport; Tue, 21 May 2019 15:54:40 +0000
Received: from VI1PR07MB4432.eurprd07.prod.outlook.com
 ([fe80::91f:b1bb:a60a:fdc3]) by VI1PR07MB4432.eurprd07.prod.outlook.com
 ([fe80::91f:b1bb:a60a:fdc3%7]) with mapi id 15.20.1922.013; Tue, 21 May 2019
 15:54:36 +0000
From: Philippe Mazenauer <philippe.mazenauer@outlook.de>
Subject: [PATCH] arm: add missing include <linux/elf-randomize.h>
Thread-Topic: [PATCH] arm: add missing include <linux/elf-randomize.h>
Thread-Index: AQHVD+196VQxVFzkxUm6hIWwPiiwhw==
Date: Tue, 21 May 2019 15:54:36 +0000
Message-ID: <VI1PR07MB44324E07A6AFE89A920444AFFD070@VI1PR07MB4432.eurprd07.prod.outlook.com>
Accept-Language: de-CH, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MWHPR04CA0061.namprd04.prod.outlook.com
 (2603:10b6:300:6c::23) To VI1PR07MB4432.eurprd07.prod.outlook.com
 (2603:10a6:802:67::17)
x-incomingtopheadermarker: OriginalChecksum:1B20B10E0D37E672A2A37032CC990F06044B38EB367D1C78112B8A0A12F11ADF;
 UpperCasedChecksum:D6A7E7506F0D5C558B5E9FCFB493E8F104A525A8B45A64B21960325CF08A7F68;
 SizeAsReceived:7703; Count:47
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-tmn: [0/mt7oT42HkDkcphSArYfbly3ntQ7FEF]
x-microsoft-original-message-id: <20190521155408.176794-1-philippe.mazenauer@outlook.de>
x-ms-publictraffictype: Email
x-incomingheadercount: 47
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031323274)(2017031324274)(2017031322404)(1601125500)(1603101475)(1701031045);
 SRVR:HE1EUR02HT070; 
x-ms-traffictypediagnostic: HE1EUR02HT070:
x-microsoft-antispam-message-info: W493sq3XOzztmL+wkxZ1mIpQe+TyOvYilerCH0Ud4Fu0B9NSriFJiKz7b/bKGcoju7J4O1fgCiiWXSZHAklcFjlFp/xjVhE5TI3KcyODu9DhAHSKR8AGhFR7gS/TxY0LVwucK/wbHYmqnxnbDIuln3TUG3aPO+rRQG/w84FZfIxGaIWEM7MJR5sUtk2azI2u
Content-ID: <42BCE344A2286F4E8170B11CBAEB83E0@eurprd07.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d1fff71-75ec-4e53-59c3-08d6de049efa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2019 15:54:36.6515 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR02HT070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_085443_142065_1495F34C 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: 2.8 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.67.17 listed in list.dnswl.org]
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
Cc: Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Russell King <linux@armlinux.org.uk>, open list <linux-kernel@vger.kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Philippe Mazenauer <philippe.mazenauer@outlook.de>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 Andrew Morton <akpm@linux-foundation.org>, "Kirill
 A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SW5jbHVkZSBjb3JyZXNwb25kaW5nIGhlYWRlciBmaWxlIDxsaW51eC9lbGYtcmFuZG9taXplLmg+
IGZvciBmdW5jdGlvbg0KYXJjaF9yYW5kb21pemVfYnJrKCkuDQoNCi4uL2FyY2gvYXJtL2tlcm5l
bC9wcm9jZXNzLmM6MzI1OjE1OiB3YXJuaW5nOiBubyBwcmV2aW91cyBwcm90b3R5cGUgZm9yIOKA
mGFyY2hfcmFuZG9taXplX2Jya+KAmSBbLVdtaXNzaW5nLXByb3RvdHlwZXNdDQogdW5zaWduZWQg
bG9uZyBhcmNoX3JhbmRvbWl6ZV9icmsoc3RydWN0IG1tX3N0cnVjdCAqbW0pDQogICAgICAgICAg
ICAgICBefn5+fn5+fn5+fn5+fn5+fn4NCg0KU2lnbmVkLW9mZi1ieTogUGhpbGlwcGUgTWF6ZW5h
dWVyIDxwaGlsaXBwZS5tYXplbmF1ZXJAb3V0bG9vay5kZT4NCi0tLQ0KIGFyY2gvYXJtL2tlcm5l
bC9wcm9jZXNzLmMgfCAxICsNCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykNCg0KZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtL2tlcm5lbC9wcm9jZXNzLmMgYi9hcmNoL2FybS9rZXJuZWwvcHJv
Y2Vzcy5jDQppbmRleCA3MmNjMDg2MmEzMGUuLjczNzgyMDEyZDQwMyAxMDA2NDQNCi0tLSBhL2Fy
Y2gvYXJtL2tlcm5lbC9wcm9jZXNzLmMNCisrKyBiL2FyY2gvYXJtL2tlcm5lbC9wcm9jZXNzLmMN
CkBAIC0yMyw2ICsyMyw3IEBADQogI2luY2x1ZGUgPGxpbnV4L2ludGVycnVwdC5oPg0KICNpbmNs
dWRlIDxsaW51eC9pbml0Lmg+DQogI2luY2x1ZGUgPGxpbnV4L2VsZmNvcmUuaD4NCisjaW5jbHVk
ZSA8bGludXgvZWxmLXJhbmRvbWl6ZS5oPg0KICNpbmNsdWRlIDxsaW51eC9wbS5oPg0KICNpbmNs
dWRlIDxsaW51eC90aWNrLmg+DQogI2luY2x1ZGUgPGxpbnV4L3V0c25hbWUuaD4NCi0tIA0KMi4x
Ny4xDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
