Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11FFF1F9121
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 10:13:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4k4g1P4/xVgIP09vYo5+cFmjfnEwsVArnvt4u4Gjysg=; b=K6g/+BORil9Q1i
	+vA8ufi5ZUQO0ewmUyzr/OH71AiTbFp01ru1X7WpvY0zkT7l6lL7/4ba9YgPGe9NN6ELNxYoVQrw/
	TkxILBe6KZXiwrZj83U6YY0G3D45ilzxeuBPKWvwgaUdWSv/kdwYJ9YYyU5JNLdcWbMOD/ZulJKN1
	Mf+FLtwahkRwwF3ZUT7c7cd0U9dXhpGobMakytZdR9PMTl9WQD5fRvKXqNTIsppXDbGZ4xaq5vXpn
	ZMXUMCoVU5zllBxu0+baiMEndXqDn6qpQXa7yPK66W2HeaaU4etWwjh08wo45pRKb1ykXfukH/i3E
	SdT0bRXpM/d2Ef9up2Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkkF9-0006cb-P8; Mon, 15 Jun 2020 08:13:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkkEq-0006VW-3M
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 08:13:05 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1jkkEl-00012a-JS; Mon, 15 Jun 2020 10:12:59 +0200
Received: from pza by lupine with local (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1jkkEj-0004Fe-Rl; Mon, 15 Jun 2020 10:12:57 +0200
Message-ID: <141ae52bdd22079ae5f88dd50c31cac2cc150676.camel@pengutronix.de>
Subject: Re: [PATCH 1/4] spi: bcm63xx-spi: add reset support
From: Philipp Zabel <p.zabel@pengutronix.de>
To: =?ISO-8859-1?Q?=C1lvaro_Fern=E1ndez?= Rojas <noltari@gmail.com>, 
 broonie@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com,  linux-spi@vger.kernel.org,
 linux-kernel@vger.kernel.org,  linux-arm-kernel@lists.infradead.org
Date: Mon, 15 Jun 2020 10:12:57 +0200
In-Reply-To: <20200615080309.2897694-2-noltari@gmail.com>
References: <20200615080309.2897694-1-noltari@gmail.com>
 <20200615080309.2897694-2-noltari@gmail.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_011304_162942_BFB15B15 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgw4FsdmFybywKCk9uIE1vbiwgMjAyMC0wNi0xNSBhdCAxMDowMyArMDIwMCwgw4FsdmFybyBG
ZXJuw6FuZGV6IFJvamFzIHdyb3RlOgo+IGJjbTYzeHggYXJjaCByZXNldHMgdGhlIFNQSSBjb250
cm9sbGVyIGF0IGVhcmx5IGJvb3QuIEhvd2V2ZXIsIGJtaXBzIGFyY2gKPiBuZWVkcyB0byBwZXJm
b3JtIGEgcmVzZXQgd2hlbiBwcm9iaW5nIHRoZSBkcml2ZXIuCj4gCj4gU2lnbmVkLW9mZi1ieTog
w4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIDxub2x0YXJpQGdtYWlsLmNvbT4KPiAtLS0KPiAgZHJp
dmVycy9zcGkvc3BpLWJjbTYzeHguYyB8IDE3ICsrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBj
aGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3BpL3Nw
aS1iY202M3h4LmMgYi9kcml2ZXJzL3NwaS9zcGktYmNtNjN4eC5jCj4gaW5kZXggMGYxYjEwYTRl
ZjBjLi44YWIwNGFmZmFmN2IgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9zcGkvc3BpLWJjbTYzeHgu
Ywo+ICsrKyBiL2RyaXZlcnMvc3BpL3NwaS1iY202M3h4LmMKPiBAQCAtMTgsNiArMTgsNyBAQAo+
ICAjaW5jbHVkZSA8bGludXgvZXJyLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9wbV9ydW50aW1lLmg+
Cj4gICNpbmNsdWRlIDxsaW51eC9vZi5oPgo+ICsjaW5jbHVkZSA8bGludXgvcmVzZXQuaD4KPiAg
Cj4gIC8qIEJDTSA2MzM4LzYzNDggU1BJIGNvcmUgKi8KPiAgI2RlZmluZSBTUElfNjM0OF9SU0VU
X1NJWkUJCTY0Cj4gQEAgLTQ5Myw2ICs0OTQsNyBAQCBzdGF0aWMgaW50IGJjbTYzeHhfc3BpX3By
b2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAlzdHJ1Y3QgYmNtNjN4eF9zcGkg
KmJzOwo+ICAJaW50IHJldDsKPiAgCXUzMiBudW1fY3MgPSBCQ002M1hYX1NQSV9NQVhfQ1M7Cj4g
KwlzdHJ1Y3QgcmVzZXRfY29udHJvbCAqcmVzZXQ7Cj4gIAo+ICAJaWYgKGRldi0+b2Zfbm9kZSkg
ewo+ICAJCWNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgKm1hdGNoOwo+IEBAIC01MjksNiArNTMx
LDE1IEBAIHN0YXRpYyBpbnQgYmNtNjN4eF9zcGlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rldmlj
ZSAqcGRldikKPiAgCQlyZXR1cm4gUFRSX0VSUihjbGspOwo+ICAJfQo+ICAKPiArCXJlc2V0ID0g
ZGV2bV9yZXNldF9jb250cm9sX2dldChkZXYsIE5VTEwpOwoKUGxlYXNlIHVzZSBkZXZtX3Jlc2V0
X2NvbnRyb2xfZ2V0X2V4Y2x1c2l2ZSgpLCBzYW1lIGZvciBwYXRjaCAzLgpXaXRoIHRoYXQgY2hh
bmdlZCwKClJldmlld2VkLWJ5OiBQaGlsaXBwIFphYmVsIDxwLnphYmVsQHBlbmd1dHJvbml4LmRl
PgoKcmVnYXJkcwpQaGlsaXBwCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
