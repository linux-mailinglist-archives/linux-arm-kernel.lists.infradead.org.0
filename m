Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1741626099
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 11:37:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:From:Reply-To:To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h2Lt79LpVVqIIw0KpgnuPElwjXHY1PCcOjSddYC0SxM=; b=idn+NWPTYm4+M/
	Kn/Rv2qMBWqfwBlsdzGw9YZYDr63kzW8bAFHeEYLq0kef8xmhLJg2Zdw1Cugrxva+mcM1nuxN83xD
	A5GkHEMDYDc71E/02kAQx5KnvLVbWuZGOld2ceDqJl/ZxDBNdgztGcR2gzCxI92bgVBIt5XkSv1dC
	JUjE2en72f2GT/M+m/XprpdC+5f/7fzJlHYnJgCQDmxpBPm1JhpptoHDo0eJ/6igbPH1EzpAnWZ37
	1DLQmVZeheMKaGz6bV03I1NoK0Nu9JIvekwtanfT4M/KU4iBQXVK2VpL1XfalGKmPKuizUqxXDll8
	KTzTb7LCG4xBEW9XFLYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTNgL-0000Jc-7r; Wed, 22 May 2019 09:37:09 +0000
Received: from mail-oln040092068012.outbound.protection.outlook.com
 ([40.92.68.12] helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTNgD-0000JB-24
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 09:37:02 +0000
Received: from AM5EUR02FT003.eop-EUR02.prod.protection.outlook.com
 (10.152.8.60) by AM5EUR02HT037.eop-EUR02.prod.protection.outlook.com
 (10.152.9.162) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1922.16; Wed, 22 May
 2019 09:36:58 +0000
Received: from VI1PR07MB4432.eurprd07.prod.outlook.com (10.152.8.56) by
 AM5EUR02FT003.mail.protection.outlook.com (10.152.8.137) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1922.16 via Frontend Transport; Wed, 22 May 2019 09:36:57 +0000
Received: from VI1PR07MB4432.eurprd07.prod.outlook.com
 ([fe80::91f:b1bb:a60a:fdc3]) by VI1PR07MB4432.eurprd07.prod.outlook.com
 ([fe80::91f:b1bb:a60a:fdc3%7]) with mapi id 15.20.1922.013; Wed, 22 May 2019
 09:36:57 +0000
From: Philippe Mazenauer <philippe.mazenauer@outlook.de>
Subject: [PATCH] arm: add missing include platform-data/atmel.h
Thread-Topic: [PATCH] arm: add missing include platform-data/atmel.h
Thread-Index: AQHVEIHmwqCRWv45dU+96A02oogPbw==
Date: Wed, 22 May 2019 09:36:57 +0000
Message-ID: <VI1PR07MB443209D29ADFA139B9735D89FD000@VI1PR07MB4432.eurprd07.prod.outlook.com>
Accept-Language: de-CH, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MWHPR08CA0059.namprd08.prod.outlook.com
 (2603:10b6:300:c0::33) To VI1PR07MB4432.eurprd07.prod.outlook.com
 (2603:10a6:802:67::17)
x-incomingtopheadermarker: OriginalChecksum:93CD7ADE6AD34B393F044E52CDF5EA4DDF10D87F80E81BFF1E84C4652B53F226;
 UpperCasedChecksum:BAC4A55834B0659D1E2F50FD8CD1AE12D391813C43D7FD10B3A032ABFECA07FD;
 SizeAsReceived:7644; Count:47
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-tmn: [pUfdQLg42iiv9FdXbIJA2HDMX7HzPMgX]
x-microsoft-original-message-id: <20190522093634.157414-1-philippe.mazenauer@outlook.de>
x-ms-publictraffictype: Email
x-incomingheadercount: 47
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031323274)(2017031324274)(2017031322404)(1601125500)(1603101475)(1701031045);
 SRVR:AM5EUR02HT037; 
x-ms-traffictypediagnostic: AM5EUR02HT037:
x-microsoft-antispam-message-info: tfmLjODZCjHZv0L7VHlARd+k3K/x8NB1BwKVcs2QLv2jtfQ8qGnBl+auWfvTuYmHCfKV4NYT0BF8S/ewlNx0wfckDyw5+XzjCxYdpe6NRI/8stmKTLQrZZJjNgrPWMiEgMDcDE/9ZtEEvZa2dGXjQGuhp6iatoHdCCjvbmfRLBZk/eHh+FzKQM0tYYaGgJcy
Content-ID: <7FBCE08C9A428D489A2F271157E25109@eurprd07.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 753f2fa7-2c99-46c3-0771-08d6de99088a
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2019 09:36:57.8987 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5EUR02HT037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_023701_107530_30221DF6 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: 2.8 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.68.12 listed in list.dnswl.org]
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 open list <linux-kernel@vger.kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Philippe Mazenauer <philippe.mazenauer@outlook.de>,
 Russell King <linux@armlinux.org.uk>,
 "moderated list:ARM/Microchip \(AT91\) SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SW5jbHVkZSBjb3JyZXNwb25kaW5nIGhlYWRlcmZpbGUgPGxpbnV4L3BsYXRmb3JtLWRhdGEvYXRt
ZWwuaD4gZm9yDQpmdW5jdGlvbiBhdDkxX3N1c3BlbmRfZW50ZXJpbmdfc2xvd19jbG9jaygpLg0K
DQouLi9hcmNoL2FybS9tYWNoLWF0OTEvcG0uYzoyNzk6NTogd2FybmluZzogbm8gcHJldmlvdXMg
cHJvdG90eXBlIGZvciDigJhhdDkxX3N1c3BlbmRfZW50ZXJpbmdfc2xvd19jbG9ja+KAmSBbLVdt
aXNzaW5nLXByb3RvdHlwZXNdDQogaW50IGF0OTFfc3VzcGVuZF9lbnRlcmluZ19zbG93X2Nsb2Nr
KHZvaWQpDQogICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+DQoNClNpZ25lZC1v
ZmYtYnk6IFBoaWxpcHBlIE1hemVuYXVlciA8cGhpbGlwcGUubWF6ZW5hdWVyQG91dGxvb2suZGU+
DQotLS0NCiBhcmNoL2FybS9tYWNoLWF0OTEvcG0uYyB8IDEgKw0KIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKQ0KDQpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1hdDkxL3BtLmMgYi9h
cmNoL2FybS9tYWNoLWF0OTEvcG0uYw0KaW5kZXggNmM4MTQ3NTM2ZjNkLi4xYzg4YjQ3YzIzNmYg
MTAwNjQ0DQotLS0gYS9hcmNoL2FybS9tYWNoLWF0OTEvcG0uYw0KKysrIGIvYXJjaC9hcm0vbWFj
aC1hdDkxL3BtLmMNCkBAIC0xOSw2ICsxOSw3IEBADQogI2luY2x1ZGUgPGxpbnV4L3N1c3BlbmQu
aD4NCiANCiAjaW5jbHVkZSA8bGludXgvY2xrL2F0OTFfcG1jLmg+DQorI2luY2x1ZGUgPGxpbnV4
L3BsYXRmb3JtX2RhdGEvYXRtZWwuaD4NCiANCiAjaW5jbHVkZSA8YXNtL2NhY2hlZmx1c2guaD4N
CiAjaW5jbHVkZSA8YXNtL2ZuY3B5Lmg+DQotLSANCjIuMTcuMQ0KDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
