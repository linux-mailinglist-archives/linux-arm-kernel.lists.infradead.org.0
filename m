Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E03524EC5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 14:16:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:From:Reply-To:To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cHL2eaMQoaD1yzZiMYry0JgezKtludrvu95nRUYNK/o=; b=niyUbwAzq6RYrK
	XlhGi2foHyB7aDJPY8rxGCBXHiQePsNqHBIkqWwr+DDChw345xXDz0di2hj2IyEAH9+HDAvwFG9rV
	YLnil3phf5tD8NG21gKhuXEcn61/eMBVHfW3rdteQrxLo33SJrVEpJBiR6bWefqsF7szVBIqXSlEs
	UGP+k/lwHKUcBkc9XaJUuCrzydUO2T89qzOJIyPoiSVOcb3nlpzPW/qUMxxjNO3eWnlIfFS23HlVS
	LOD56Dayqy84SMpjdSujAH8b0+v4NhbtHNcFdgvYpn6X07asKRPMjE4A/ykVHhllYvdiW47DTw952
	TusBRmAOjKejZYNAfAVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT3gx-0002B1-LF; Tue, 21 May 2019 12:16:27 +0000
Received: from mail-oln040092065019.outbound.protection.outlook.com
 ([40.92.65.19] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT3gp-0002A2-Eo; Tue, 21 May 2019 12:16:20 +0000
Received: from VE1EUR01FT058.eop-EUR01.prod.protection.outlook.com
 (10.152.2.54) by VE1EUR01HT145.eop-EUR01.prod.protection.outlook.com
 (10.152.3.191) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1900.16; Tue, 21 May
 2019 12:16:14 +0000
Received: from VI1PR07MB4432.eurprd07.prod.outlook.com (10.152.2.54) by
 VE1EUR01FT058.mail.protection.outlook.com (10.152.3.136) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1900.16 via Frontend Transport; Tue, 21 May 2019 12:16:14 +0000
Received: from VI1PR07MB4432.eurprd07.prod.outlook.com
 ([fe80::91f:b1bb:a60a:fdc3]) by VI1PR07MB4432.eurprd07.prod.outlook.com
 ([fe80::91f:b1bb:a60a:fdc3%7]) with mapi id 15.20.1922.013; Tue, 21 May 2019
 12:16:14 +0000
From: Philippe Mazenauer <philippe.mazenauer@outlook.de>
Subject: [PATCH] clk: Remove unused variable
Thread-Topic: [PATCH] clk: Remove unused variable
Thread-Index: AQHVD878NH4niKcAbkGQS1Zq+TuwCg==
Date: Tue, 21 May 2019 12:16:14 +0000
Message-ID: <VI1PR07MB44324648C54773C24E4B186AFD070@VI1PR07MB4432.eurprd07.prod.outlook.com>
Accept-Language: de-CH, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MWHPR0201CA0045.namprd02.prod.outlook.com
 (2603:10b6:301:73::22) To VI1PR07MB4432.eurprd07.prod.outlook.com
 (2603:10a6:802:67::17)
x-incomingtopheadermarker: OriginalChecksum:AC1CDF9B7E0587675D62C5068EBBAEEFEC3198AA2838AA2DEEEB372B33E36057;
 UpperCasedChecksum:F12575AB9399412C42B53289C4DC711B69F7A80BEF1B18AF3232D82A69D6696A;
 SizeAsReceived:7733; Count:47
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-tmn: [nJ1juxtnP1Zcdux7epdSyzoGFywwolgO]
x-microsoft-original-message-id: <20190521121547.119863-1-philippe.mazenauer@outlook.de>
x-ms-publictraffictype: Email
x-incomingheadercount: 47
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031323274)(2017031324274)(2017031322404)(1601125500)(1603101475)(1701031045);
 SRVR:VE1EUR01HT145; 
x-ms-traffictypediagnostic: VE1EUR01HT145:
x-microsoft-antispam-message-info: BQrbwy9gZ2t/mX75oj20cZ9Gt8TciHH9LYQqfCp6YoTF9coVOiYEvbFj1P00OhCK40PNBwo30sfRKUfqGnv/Oy98rwCjTeubSBDzbzyV44SX9qVdDIXCZvQqwcDzxK5W8AUeMmmcZX4XHiSrLdnBvmRLpw6xTLROGrlN46PO5/3/+IYJ/bLymd5NwtWq5Udd
Content-ID: <A735F365BEE52F4FB81877FF849B6A63@eurprd07.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: b43d6e31-bbb0-4f49-bcfd-08d6dde61e20
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2019 12:16:14.4118 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR01HT145
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_051619_492330_2C1FA122 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.8 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.65.19 listed in list.dnswl.org]
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 open list <linux-kernel@vger.kernel.org>, Fabien Parent <fparent@baylibre.com>,
 Philippe Mazenauer <philippe.mazenauer@outlook.de>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, "open
 list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>, "moderated
 list:ARM/Mediatek SoC support" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VmFyaWFibGUgJ2RkcnBoeWNmZ19wYXJlbnRzJyBpcyBkZWZpbmVkIHN0YXRpYyBhbmQgaW5pdGlh
bGl6ZWQsIGJ1dCBub3QNCnVzZWQgaW4gdGhlIGZpbGUuDQoNCi4uL2RyaXZlcnMvY2xrL21lZGlh
dGVrL2Nsay1tdDg1MTYuYzoyMzQ6Mjc6IHdhcm5pbmc6IOKAmGRkcnBoeWNmZ19wYXJlbnRz4oCZ
IGRlZmluZWQgYnV0IG5vdCB1c2VkIFstV3VudXNlZC1jb25zdC12YXJpYWJsZT1dDQogc3RhdGlj
IGNvbnN0IGNoYXIgKiBjb25zdCBkZHJwaHljZmdfcGFyZW50c1tdIF9faW5pdGNvbnN0ID0gew0K
ICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn4NCg0KU2lnbmVkLW9m
Zi1ieTogUGhpbGlwcGUgTWF6ZW5hdWVyIDxwaGlsaXBwZS5tYXplbmF1ZXJAb3V0bG9vay5kZT4N
Ci0tLQ0KIGRyaXZlcnMvY2xrL21lZGlhdGVrL2Nsay1tdDg1MTYuYyB8IDUgLS0tLS0NCiAxIGZp
bGUgY2hhbmdlZCwgNSBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL21l
ZGlhdGVrL2Nsay1tdDg1MTYuYyBiL2RyaXZlcnMvY2xrL21lZGlhdGVrL2Nsay1tdDg1MTYuYw0K
aW5kZXggMjZmZTQzY2M5ZWEyLi45ZDQyNjFlY2M3NjAgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2Ns
ay9tZWRpYXRlay9jbGstbXQ4NTE2LmMNCisrKyBiL2RyaXZlcnMvY2xrL21lZGlhdGVrL2Nsay1t
dDg1MTYuYw0KQEAgLTIzMSwxMSArMjMxLDYgQEAgc3RhdGljIGNvbnN0IGNoYXIgKiBjb25zdCBu
ZmkxeF9wYWRfcGFyZW50c1tdIF9faW5pdGNvbnN0ID0gew0KIAkibmZpMXhfY2siDQogfTsNCiAN
Ci1zdGF0aWMgY29uc3QgY2hhciAqIGNvbnN0IGRkcnBoeWNmZ19wYXJlbnRzW10gX19pbml0Y29u
c3QgPSB7DQotCSJjbGsyNm1fY2siLA0KLQkibWFpbnBsbF9kMTYiDQotfTsNCi0NCiBzdGF0aWMg
Y29uc3QgY2hhciAqIGNvbnN0IHVzYl83OG1fcGFyZW50c1tdIF9faW5pdGNvbnN0ID0gew0KIAki
Y2xrX251bGwiLA0KIAkiY2xrMjZtX2NrIiwNCi0tIA0KMi4xNy4xDQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
