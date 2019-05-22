Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49345260D2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 11:55:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:From:Reply-To:To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XvPdIiITCjpLZ/vLrqsaGknwf3Yyk1iVTG2EXL31PpA=; b=jBYZ9116KO92Er
	NZ1n2UiK4lrjx7L7mO8IBRz/6WmmhVn9HgQ2XLClXmB+LMd5ssheQP7M1023VfBLzggjBRTjLkN4o
	YUx+gfbvwN/mXxlOezdDzfeIGKAgccc0O2LGItIUEUaQOMY617ew52ms/gu9fzsXmPJoprLF4wVha
	2ErETIUi/hH/mlY1ZiZpn3CUIOdVyY3bNfcsmDscfubP6pWbRVi2Ir96Vu6l+3c2/PT/c6fYJzSc4
	Mk7RzP7vcDaDUJYAJxpDk/fC31RlLlltMwvwJ4280ZM/nX+tMb2dy1dWejGyk4LW9SSF0SbmzwOi3
	iJjFddfuA6yXFNgT0qAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTNxq-0000sb-QK; Wed, 22 May 2019 09:55:14 +0000
Received: from mail-oln040092071014.outbound.protection.outlook.com
 ([40.92.71.14] helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTNxb-0000qP-2D
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 09:55:00 +0000
Received: from DB5EUR03FT054.eop-EUR03.prod.protection.outlook.com
 (10.152.20.53) by DB5EUR03HT105.eop-EUR03.prod.protection.outlook.com
 (10.152.20.228) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1922.16; Wed, 22 May
 2019 09:54:56 +0000
Received: from VI1PR07MB4432.eurprd07.prod.outlook.com (10.152.20.58) by
 DB5EUR03FT054.mail.protection.outlook.com (10.152.20.248) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.16 via Frontend Transport; Wed, 22 May 2019 09:54:56 +0000
Received: from VI1PR07MB4432.eurprd07.prod.outlook.com
 ([fe80::91f:b1bb:a60a:fdc3]) by VI1PR07MB4432.eurprd07.prod.outlook.com
 ([fe80::91f:b1bb:a60a:fdc3%7]) with mapi id 15.20.1922.013; Wed, 22 May 2019
 09:54:56 +0000
From: Philippe Mazenauer <philippe.mazenauer@outlook.de>
Subject: [PATCH] arm: highbank: add missing include "core.h"
Thread-Topic: [PATCH] arm: highbank: add missing include "core.h"
Thread-Index: AQHVEIRpwlbR+xaFOESZgvN+063LTQ==
Date: Wed, 22 May 2019 09:54:56 +0000
Message-ID: <VI1PR07MB443237D908B62034AD42B47CFD000@VI1PR07MB4432.eurprd07.prod.outlook.com>
Accept-Language: de-CH, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BL0PR02CA0062.namprd02.prod.outlook.com
 (2603:10b6:207:3d::39) To VI1PR07MB4432.eurprd07.prod.outlook.com
 (2603:10a6:802:67::17)
x-incomingtopheadermarker: OriginalChecksum:EFD166EDB3D22A56C729BF36814128BF21DAAC513C4A7AE5E4DFFAD14975E30B;
 UpperCasedChecksum:BC61C0A1C5417C4FF375B49158F35D2AFBE82EE64DF7F73B28A7A1F8CD58D805;
 SizeAsReceived:7491; Count:47
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-tmn: [YWasQwWfgd3qdc3fjycWOG6+dGWXGbrR]
x-microsoft-original-message-id: <20190522095439.157660-1-philippe.mazenauer@outlook.de>
x-ms-publictraffictype: Email
x-incomingheadercount: 47
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031323274)(2017031324274)(2017031322404)(1601125500)(1603101475)(1701031045);
 SRVR:DB5EUR03HT105; 
x-ms-traffictypediagnostic: DB5EUR03HT105:
x-microsoft-antispam-message-info: xYmJ6QscMMh/pz4+i0C9M/9ff3zHqF4AZ3Vzsx8vnJYYT6+NX6KT8jfQeNxFU79x9FzHCKen16qqz6vnb/sWgMtNL3bjx2DE4aqjjK71m+Rqy+3RUVcCJK6uHR/Rvzunsdm4RbY6bldhXXs62G/WWe1FO6RGl7LyjyZXMxil7qDMoAym57/b6LvOAUk4OhGn
Content-ID: <20033042072E864BAFAC38291B72E09E@eurprd07.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 98a4099f-384d-464c-62fb-08d6de9b8b7b
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2019 09:54:56.4098 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR03HT105
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_025459_222979_A3951298 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.8 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.71.14 listed in list.dnswl.org]
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
 SUB-ARCHITECTURES" <linux-arm-kernel@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SW5jbHVkZSBjb3JyZXNwb25kaW5nIGhlYWRlciBmaWxlICJjb3JlLmgiIGZvciBmdW5jdGlvbg0K
aGlnaGJhbmtfcG1faW5pdCgpLg0KDQouLi9hcmNoL2FybS9tYWNoLWhpZ2hiYW5rL3BtLmM6NTQ6
MTM6IHdhcm5pbmc6IG5vIHByZXZpb3VzIHByb3RvdHlwZSBmb3Ig4oCYaGlnaGJhbmtfcG1faW5p
dOKAmSBbLVdtaXNzaW5nLXByb3RvdHlwZXNdDQogdm9pZCBfX2luaXQgaGlnaGJhbmtfcG1faW5p
dCh2b2lkKQ0KICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn4NCg0KU2lnbmVkLW9mZi1ieTog
UGhpbGlwcGUgTWF6ZW5hdWVyIDxwaGlsaXBwZS5tYXplbmF1ZXJAb3V0bG9vay5kZT4NCi0tLQ0K
IGFyY2gvYXJtL21hY2gtaGlnaGJhbmsvcG0uYyB8IDIgKysNCiAxIGZpbGUgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspDQoNCmRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLWhpZ2hiYW5rL3BtLmMg
Yi9hcmNoL2FybS9tYWNoLWhpZ2hiYW5rL3BtLmMNCmluZGV4IDQwMDMxMTY5NTU0OC4uMzU4MGRk
ZTdjM2RhIDEwMDY0NA0KLS0tIGEvYXJjaC9hcm0vbWFjaC1oaWdoYmFuay9wbS5jDQorKysgYi9h
cmNoL2FybS9tYWNoLWhpZ2hiYW5rL3BtLmMNCkBAIC0yMyw2ICsyMyw4IEBADQogDQogI2luY2x1
ZGUgPHVhcGkvbGludXgvcHNjaS5oPg0KIA0KKyNpbmNsdWRlICJjb3JlLmgiDQorDQogI2RlZmlu
ZSBISUdIQkFOS19TVVNQRU5EX1BBUkFNIFwNCiAJKCgwIDw8IFBTQ0lfMF8yX1BPV0VSX1NUQVRF
X0lEX1NISUZUKSB8IFwNCiAJICgxIDw8IFBTQ0lfMF8yX1BPV0VSX1NUQVRFX0FGRkxfU0hJRlQp
IHwgXA0KLS0gDQoyLjE3LjENCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
