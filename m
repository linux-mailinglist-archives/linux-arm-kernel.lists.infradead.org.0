Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0B77D06B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 00:01:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fEyGs4usG764MvCY+FVQzBt0kr0CO1AptnjCtcHSR4A=; b=h0MI2hssOJIKk8
	QjO9cFq87jMo+gcqQMWLezWllGijbj63O+lMQ+qHvi8SooKz7eAYJc1rlsBpz6Ko4XDo9PuTXcJvW
	WqIrYBKIF2m/6WQkc9PzYGMrfo2gMyuIcNDrLdNCBKrvmBq+1fZdenQPHaYCTir6jLGF/Wn+9ZXkV
	uJ/uzaNpC3H/1YPz17bqNhVW9Jj3mZ/v5S6L3C/hDuldjx8he4TMGp/a/Eq0VAdQyvX2LunWMI8cZ
	ecAKIkg+sGXChxIkWPdkmf98Nv1CZIFQ5Un7LXmlFb6/5d80ipzCb0ZdSJAP6/yOQaARIq7objdfR
	9Oq/5yeBj43GyU+xTvYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsweZ-0005uu-Fi; Wed, 31 Jul 2019 22:00:59 +0000
Received: from antares.kleine-koenig.org ([2a01:4f8:c0c:3a97::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsweS-0005uU-0a
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 22:00:53 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id A4201747A37; Thu,  1 Aug 2019 00:00:50 +0200 (CEST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>
Subject: [PATCH] at91/dt: ariettag25: style cleanup
Date: Thu,  1 Aug 2019 00:00:45 +0200
Message-Id: <20190731220045.3992-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_150052_210963_3C083883 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

LSBuZXdsaW5lIGJldHdlZW4gcHJvcGVydGllcyBhbmQgc3ViLW5vZGVzCi0gdXNlIHRhZ3MgZnJv
bSBpbmNsdWRlZCBkdHNpIGluc3RlYWQgb2YgZHVwbGljYXRpbmcgdGhlIGhpZXJhcmNoeQotIHN0
YXR1cyBzaG91bGQgYmUgdGhlIGxhc3QgcHJvcGVydHkKLSBkcm9wIGR1cGxpY2F0ZWQgYWxpYXMK
ClRoZXJlIGFyZSBubyBkaWZmZXJlbmNlcyBpbiB0aGUgZ2VuZXJhdGVkIC5kdGIKClNpZ25lZC1v
ZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1d2VAa2xlaW5lLWtvZW5pZy5vcmc+Ci0tLQpIZWxs
bywKCnRoZXNlIGFyZSB0aGUgc3R5bGUgcnVsZXMgSSB3YXMgdGVhY2hlZCB3aGVuIG1vZGlmeWlu
ZyBpbXggZHRzIGZpbGVzLgpEbyB0aGV5IGFwcGx5IHRvIGF0OTEsIHRvbz8KCkJlc3QgcmVnYXJk
cwpVd2UKCiBhcmNoL2FybS9ib290L2R0cy9hdDkxLWFyaWV0dGFnMjUuZHRzIHwgODcgKysrKysr
KysrKysrKy0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNDMgaW5zZXJ0aW9ucygrKSwg
NDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvYXQ5MS1hcmll
dHRhZzI1LmR0cyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2F0OTEtYXJpZXR0YWcyNS5kdHMKaW5kZXgg
N2EzNGM0ZGMwNWQyLi44ZjlmNWEyMmNiZjYgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRz
L2F0OTEtYXJpZXR0YWcyNS5kdHMKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvYXQ5MS1hcmlldHRh
ZzI1LmR0cwpAQCAtNiwxNCArNiwxMSBAQAogICovCiAvZHRzLXYxLzsKICNpbmNsdWRlICJhdDkx
c2FtOWcyNS5kdHNpIgorCiAvIHsKIAltb2RlbCA9ICJBY21lIFN5c3RlbXMgQXJpZXR0YSBHMjUi
OwogCWNvbXBhdGlibGUgPSAiYWNtZSxhcmlldHRhZzI1IiwgImF0bWVsLGF0OTFzYW05eDUiLCAi
YXRtZWwsYXQ5MXNhbTkiOwogCi0JYWxpYXNlcyB7Ci0JCXNlcmlhbDAgPSAmZGJndTsKLQl9Owot
CiAJY2hvc2VuIHsKIAkJc3Rkb3V0LXBhdGggPSAic2VyaWFsMDoxMTUyMDBuOCI7CiAJfTsKQEAg
LTM0LDU1ICszMSwxNiBAQAogCiAJYWhiIHsKIAkJYXBiIHsKLQkJCW1tYzA6IG1tY0BmMDAwODAw
MCB7Ci0JCQkJcGluY3RybC0wID0gPAotCQkJCSAgJnBpbmN0cmxfbW1jMF9zbG90MF9jbGtfY21k
X2RhdDAKLQkJCQkgICZwaW5jdHJsX21tYzBfc2xvdDBfZGF0MV8zPjsKLQkJCQlzdGF0dXMgPSAi
b2theSI7Ci0KLQkJCQlzbG90QDAgewotCQkJCQlyZWcgPSA8MD47Ci0JCQkJCWJ1cy13aWR0aCA9
IDw0PjsKLQkJCQl9OwotCQkJfTsKLQotCQkJdGNiMDogdGltZXJAZjgwMDgwMDAgewotCQkJCXRp
bWVyQDAgewotCQkJCQljb21wYXRpYmxlID0gImF0bWVsLHRjYi10aW1lciI7Ci0JCQkJCXJlZyA9
IDwwPjsKLQkJCQl9OwotCi0JCQkJdGltZXJAMSB7Ci0JCQkJCWNvbXBhdGlibGUgPSAiYXRtZWws
dGNiLXRpbWVyIjsKLQkJCQkJcmVnID0gPDE+OwotCQkJCX07Ci0JCQl9OwotCi0JCQl1c2IyOiBn
YWRnZXRAZjgwM2MwMDAgewotCQkJCXN0YXR1cyA9ICJva2F5IjsKLQkJCX07Ci0KLQkJCWRiZ3U6
IHNlcmlhbEBmZmZmZjIwMCB7Ci0JCQkJc3RhdHVzID0gIm9rYXkiOwotCQkJfTsKLQogCQkJcnRj
QGZmZmZmZWIwIHsKIAkJCQlzdGF0dXMgPSAib2theSI7CiAJCQl9OwogCQl9OwogCi0JCXVzYjA6
IG9oY2lANjAwMDAwIHsKLQkJCXN0YXR1cyA9ICJva2F5IjsKLQkJCW51bS1wb3J0cyA9IDwzPjsK
LQkJfTsKLQotCQl1c2IxOiBlaGNpQDcwMDAwMCB7Ci0JCQlzdGF0dXMgPSAib2theSI7Ci0JCX07
CiAJfTsKIAogCWxlZHMgewogCQljb21wYXRpYmxlID0gImdwaW8tbGVkcyI7CisKIAkJYXJpZXR0
YV9sZWQgewogCQkJbGFiZWwgPSAiYXJpZXR0YV9sZWQiOwogCQkJZ3Bpb3MgPSA8JnBpb0IgOCBH
UElPX0FDVElWRV9ISUdIPjsgLyogUEI4ICovCkBAIC05MCwzICs0OCw0NCBAQAogCQl9OwogCX07
CiB9OworCismZGJndSB7CisJc3RhdHVzID0gIm9rYXkiOworfTsKKworJm1tYzAgeworCXBpbmN0
cmwtMCA9IDwKKwkJJnBpbmN0cmxfbW1jMF9zbG90MF9jbGtfY21kX2RhdDAKKwkJJnBpbmN0cmxf
bW1jMF9zbG90MF9kYXQxXzM+OworCXN0YXR1cyA9ICJva2F5IjsKKworCXNsb3RAMCB7CisJCXJl
ZyA9IDwwPjsKKwkJYnVzLXdpZHRoID0gPDQ+OworCX07Cit9OworCismdGNiMCB7CisJdGltZXJA
MCB7CisJCWNvbXBhdGlibGUgPSAiYXRtZWwsdGNiLXRpbWVyIjsKKwkJcmVnID0gPDA+OworCX07
CisKKwl0aW1lckAxIHsKKwkJY29tcGF0aWJsZSA9ICJhdG1lbCx0Y2ItdGltZXIiOworCQlyZWcg
PSA8MT47CisJfTsKK307CisKKyZ1c2IwIHsKKwludW0tcG9ydHMgPSA8Mz47CisJc3RhdHVzID0g
Im9rYXkiOworfTsKKworJnVzYjEgeworCXN0YXR1cyA9ICJva2F5IjsKK307CisKKyZ1c2IyIHsK
KwlzdGF0dXMgPSAib2theSI7Cit9OwotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
