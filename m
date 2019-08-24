Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38FAB9B963
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 02:12:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UOUl14XsMderAZRdsObt0y0nvudDPE92dzoQm0BmkGI=; b=Yv/YVqJwbXTP8R
	X7AYii+z3iYyspLUOs/DPydDinMiWNZqcdDFjxerqJTEabmJnDjWob6AsWArEVxlQv9Iw5HlQSa4Y
	KkVWki7qTodLAlrlbNax2ghGCAk6Eq0zmVC8dHeWMz3Oam3qvu4ybCQ9fCmSa6z2qdcYgMErjsoAk
	DlffQdGN6smFVIdCfr0+TmiAIE9Txf0HwsWNlk4uibatyd0P5SA16jkx7FkrymayxvQh4qWzRXig5
	jsXlBOlWEBruzpS8CcOXhs4j2We2uuQ0qJzi7t6UgIRKfy/craVFIT54VzGqm0hc5idvulXYIG/kB
	5fpHKA5glOkDr/v/l0XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Jf8-0002o3-RH; Sat, 24 Aug 2019 00:12:10 +0000
Received: from antares.kleine-koenig.org ([2a01:4f8:c0c:3a97::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1JeL-0001uo-Ex
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 00:11:23 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id 3431277D4BE; Sat, 24 Aug 2019 02:11:03 +0200 (CEST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>,
 Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v2 6/6] pwm: atmel: implement .get_state()
Date: Sat, 24 Aug 2019 02:10:41 +0200
Message-Id: <20190824001041.11007-7-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190824001041.11007-1-uwe@kleine-koenig.org>
References: <20190824001041.11007-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_171121_669997_6A3854C1 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-pwm@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBmdW5jdGlvbiByZWFkcyBiYWNrIHRoZSBjb25maWd1cmVkIHBhcmFtZXRlcnMgZnJvbSB0
aGUgaGFyZHdhcmUuIEFzCi5hcHBseSByb3VuZHMgZG93biAobW9zdGx5KSBJJ20gcm91bmRpbmcg
dXAgaW4gLmdldF9zdGF0ZSgpIHRvIGFjaGlldmUKdGhhdCBhcHBseWluZyBhIHN0YXRlIGp1c3Qg
cmVhZCBmcm9tIGhhcmR3YXJlIGlzIGEgbm8tb3AuCgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5l
LUvDtm5pZyA8dXdlQGtsZWluZS1rb2VuaWcub3JnPgotLS0KTmV3IGluIHYyCgogZHJpdmVycy9w
d20vcHdtLWF0bWVsLmMgfCAzOSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysKIDEgZmlsZSBjaGFuZ2VkLCAzOSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9wd20vcHdtLWF0bWVsLmMgYi9kcml2ZXJzL3B3bS9wd20tYXRtZWwuYwppbmRleCAxNTJjMmI3
ZGQ2ZGYuLmY3ODg1MDFhYjZjYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9wd20vcHdtLWF0bWVsLmMK
KysrIGIvZHJpdmVycy9wd20vcHdtLWF0bWVsLmMKQEAgLTI5NSw4ICsyOTUsNDcgQEAgc3RhdGlj
IGludCBhdG1lbF9wd21fYXBwbHkoc3RydWN0IHB3bV9jaGlwICpjaGlwLCBzdHJ1Y3QgcHdtX2Rl
dmljZSAqcHdtLAogCXJldHVybiAwOwogfQogCitzdGF0aWMgdm9pZCBhdG1lbF9wd21fZ2V0X3N0
YXRlKHN0cnVjdCBwd21fY2hpcCAqY2hpcCwgc3RydWN0IHB3bV9kZXZpY2UgKnB3bSwKKwkJCQlz
dHJ1Y3QgcHdtX3N0YXRlICpzdGF0ZSkKK3sKKwlzdHJ1Y3QgYXRtZWxfcHdtX2NoaXAgKmF0bWVs
X3B3bSA9IHRvX2F0bWVsX3B3bV9jaGlwKGNoaXApOworCXUzMiBzciwgY21yOworCisJc3IgPSBh
dG1lbF9wd21fcmVhZGwoYXRtZWxfcHdtLCBQV01fU1IpOworCWNtciA9IGF0bWVsX3B3bV9jaF9y
ZWFkbChhdG1lbF9wd20sIHB3bS0+aHdwd20sIFBXTV9DTVIpOworCisJaWYgKHNyICYgKDEgPDwg
cHdtLT5od3B3bSkpIHsKKwkJdW5zaWduZWQgbG9uZyByYXRlID0gY2xrX2dldF9yYXRlKGF0bWVs
X3B3bS0+Y2xrKTsKKwkJdTMyIGNkdHksIGNwcmQsIHByZXM7IAorCQl1NjQgdG1wOworCisJCXBy
ZXMgPSBjbXIgJiBQV01fQ01SX0NQUkVfTVNLOworCisJCWNwcmQgPSBhdG1lbF9wd21fY2hfcmVh
ZGwoYXRtZWxfcHdtLCBwd20tPmh3cHdtLCBhdG1lbF9wd20tPmRhdGEtPnJlZ3MucGVyaW9kKTsK
KwkJdG1wID0gKHU2NCljcHJkICogTlNFQ19QRVJfU0VDOworCQl0bXAgPDw9IHByZXM7CisJCXN0
YXRlLT5wZXJpb2QgPSBESVY2NF9VNjRfUk9VTkRfVVAodG1wLCByYXRlKTsKKworCQljZHR5ID0g
YXRtZWxfcHdtX2NoX3JlYWRsKGF0bWVsX3B3bSwgcHdtLT5od3B3bSwgYXRtZWxfcHdtLT5kYXRh
LT5yZWdzLmR1dHkpOworCQl0bXAgPSAodTY0KWNkdHkgKiBOU0VDX1BFUl9TRUM7CisJCXRtcCA8
PD0gcHJlczsKKwkJc3RhdGUtPmR1dHlfY3ljbGUgPSBESVY2NF9VNjRfUk9VTkRfVVAodG1wLCBy
YXRlKTsKKworCQlzdGF0ZS0+ZW5hYmxlZCA9IHRydWU7CisJfSBlbHNlIHsKKwkJc3RhdGUtPmVu
YWJsZWQgPSBmYWxzZTsKKwl9CisKKwlpZiAoY21yICYgUFdNX0NNUl9DUE9MKQorCQlzdGF0ZS0+
cG9sYXJpdHkgPSBQV01fUE9MQVJJVFlfSU5WRVJTRUQ7CisJZWxzZQorCQlzdGF0ZS0+cG9sYXJp
dHkgPSBQV01fUE9MQVJJVFlfTk9STUFMOworCit9CisKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcHdt
X29wcyBhdG1lbF9wd21fb3BzID0gewogCS5hcHBseSA9IGF0bWVsX3B3bV9hcHBseSwKKwkuZ2V0
X3N0YXRlID0gYXRtZWxfcHdtX2dldF9zdGF0ZSwKIAkub3duZXIgPSBUSElTX01PRFVMRSwKIH07
CiAKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
