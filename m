Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4BE7EE2F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 10:00:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nD03q+3GYFT7ZRV9C5+ozph841HOigwIv0ZZ8S5zuqc=; b=VtD60oXUMOG9VM
	j2aZIsd5HuC76bjf1peifyvazjCYIuOCP+s3zSRuXK7D7y29b+867JpulZpP5YmOSX+66CODR++Un
	rghvS5NPdvA7eSC4UPyTlrB6YJH3GmjsWK5V3Rm3UuWlMd2ZFstRZGYeSoM1F6Gguk/imFHeRZJ0/
	rKUq+/6bl+vd4E/+OMKg8/KHaYGKpi86GQbdn1rsNdYsZlh68d8pzus5KE7Euzgl5TGGxDnCu6LA3
	ATWlH8aYKMEBRZ3pfCc9tJ+oKX0q11/KPsPkuskjCv5Cftb5Ags97uJYT7K9T7VCOMz0kLPs0/21Y
	cVrrFckf+KPTvGlmG41w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htSTr-000787-D1; Fri, 02 Aug 2019 08:00:03 +0000
Received: from skedge04.snt-world.com ([91.208.41.69])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htSTc-00077j-8g
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 07:59:49 +0000
Received: from sntmail10s.snt-is.com (unknown [10.203.32.183])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge04.snt-world.com (Postfix) with ESMTPS id 4D06467A8D8;
 Fri,  2 Aug 2019 09:59:45 +0200 (CEST)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail10s.snt-is.com
 (10.203.32.183) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Fri, 2 Aug 2019
 09:59:44 +0200
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1713.004; Fri, 2 Aug 2019 09:59:44 +0200
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: =?utf-8?B?VXdlIEtsZWluZS1Lw7ZuaWc=?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v2 2/3] serial: sh-sci: Remove check for specific
 mctrl_gpio_init() return value
Thread-Topic: [PATCH v2 2/3] serial: sh-sci: Remove check for specific
 mctrl_gpio_init() return value
Thread-Index: AQHVSJlHEoc0h/HtdUeNtLGwgfHXXKbmn5QAgAC+MAA=
Date: Fri, 2 Aug 2019 07:59:44 +0000
Message-ID: <75b5875d-fa88-3995-6776-ac9a67a3de3c@kontron.de>
References: <20190801184505.17239-1-frieder.schrempf@kontron.de>
 <20190801184505.17239-2-frieder.schrempf@kontron.de>
 <20190801203902.xie5dexnsoqxxlat@pengutronix.de>
In-Reply-To: <20190801203902.xie5dexnsoqxxlat@pengutronix.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <8DB2351A1567814DB91DE6E1D595A641@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 4D06467A8D8.AF499
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: festevam@gmail.com, geert+renesas@glider.be,
 gregkh@linuxfoundation.org, jslaby@suse.com, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
 s.hauer@pengutronix.de, shawnguo@kernel.org,
 u.kleine-koenig@pengutronix.de
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_005948_475020_C24A1213 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [91.208.41.69 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 Jiri Slaby <jslaby@suse.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDEuMDguMTkgMjI6MzksIFV3ZSBLbGVpbmUtS8O2bmlnIHdyb3RlOg0KPiBPbiBUaHUsIEF1
ZyAwMSwgMjAxOSBhdCAwNjo0NToyNFBNICswMDAwLCBTY2hyZW1wZiBGcmllZGVyIHdyb3RlOg0K
Pj4gRnJvbTogRnJpZWRlciBTY2hyZW1wZiA8ZnJpZWRlci5zY2hyZW1wZkBrb250cm9uLmRlPg0K
Pj4NCj4+IE5vdyB0aGF0IHRoZSBtY3RybF9ncGlvIGNvZGUgcmV0dXJucyBOVUxMIGluc3RlYWQg
b2YgRVJSX1BUUigtRU5PU1lTKQ0KPj4gaW4gY2FzZXMgd2hlbiBDT05GSUdfR1BJT0xJQiBpcyBk
aXNhYmxlZCwgd2UgY2FuIHNhZmVseSByZW1vdmUgdGhpcw0KPj4gY2hlY2suDQo+IA0KPiBJIHdv
dWxkIG1lbnRpb24gLUVOT1NZUyBpbiB0aGUgU3ViamVjdCBsaW5lLiBTb21ldGhpbmcgbGlrZToN
Cj4gDQo+IAlzZXJpYWw6IHNoLXNjaTogZG9uJ3QgY2hlY2sgZm9yIG1jdHJsX2dwaW9faW5pdCBy
ZXR1cm5pbmcgLUVOT1NZUw0KPiANCj4gCU5vdyB0aGF0IHRoZSBtY3RybF9ncGlvIGNvZGUgcmV0
dXJucyBOVUxMIGluc3RlYWQgb2YNCj4gCUVSUl9QVFIoLUVOT1NZUykgaWYgQ09ORklHX0dQSU9M
SUIgaXMgZGlzYWJsZWQsIHdlIGNhbiBzYWZlbHkNCj4gCXJlbW92ZSB0aGlzIGNoZWNrLg0KDQpJ
bmRlZWQsIEkgZmFpbGVkIHRvIGNvbWUgdXAgd2l0aCBhIGJldHRlciBzdWJqZWN0IGxpbmUuIEkg
d2lsbCBhZG9wdCANCnlvdXIgcHJvcG9zYWwuDQoNCj4gVGhhbmtzDQo+IFV3ZQ0KPiAKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
