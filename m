Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B04B8A94D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 23:29:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CMhEt1Tl2KUT1/Q2B/jQg/arRzNzx1TUKRUhtdcG5fU=; b=CbBzOtaIrNbIUC
	7/2IP0uYzG0A+EZPLlP015nHTjyElpxCS4ua6SLhrTiLV3qnXyfugK49yLbCyZyYzy9N3BrOkHmtG
	QSjh1FrpTt3mXwQm3r9H6L5Hnyr4o2Q8cOcbtgWuL1x5uacBNL5yYF06IezmywhkLmiBF1q3FlATD
	iR5LX4OI/QyA1nDJ2e7mlFfdBezbr8uBY1upvrrsJa47TLRztohskUhT6xREdeZBKwLBbgzuNpNI5
	NyKrMgJXZsyOg2vz5LJCvhWk35MbTReXATFqBv6X3f6vbvxjPt1h/cZjde9pMP75iXKsMx6WOd82i
	IXuTux488SUO1+Ip6Zyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxHsH-0001gZ-ET; Mon, 12 Aug 2019 21:29:05 +0000
Received: from antares.kleine-koenig.org ([2a01:4f8:c0c:3a97::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxHrW-0001Bq-GP
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 21:28:19 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id 4297B763AF7; Mon, 12 Aug 2019 23:28:17 +0200 (CEST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>
Subject: [PATCH 3/9] ARM: dts: at91: ariettag25: style cleanup
Date: Mon, 12 Aug 2019 23:27:51 +0200
Message-Id: <20190812212757.23432-3-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190812212757.23432-1-uwe@kleine-koenig.org>
References: <20190812212757.23432-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_142818_698588_7D888991 
X-CRM114-Status: GOOD (  10.01  )
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

LSBuZXdsaW5lIGJldHdlZW4gcHJvcGVydGllcyBhbmQgc3ViLW5vZGVzCi0gdXNlIHRhZ3MgZnJv
bSBpbmNsdWRlZCBkdHNpIGluc3RlYWQgb2YgZHVwbGljYXRpbmcgdGhlIGhpZXJhcmNoeQotIHN0
YXR1cyBzaG91bGQgYmUgdGhlIGxhc3QgcHJvcGVydHkKLSBkcm9wIGR1cGxpY2F0ZWQgYWxpYXMK
ClRoZXJlIGFyZSBubyBkaWZmZXJlbmNlcyBpbiB0aGUgZ2VuZXJhdGVkIC5kdGIKClNpZ25lZC1v
ZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1d2VAa2xlaW5lLWtvZW5pZy5vcmc+Ci0tLQogYXJj
aC9hcm0vYm9vdC9kdHMvYXQ5MS1hcmlldHRhZzI1LmR0cyB8IDEwMCArKysrKysrKysrKystLS0t
LS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQ3IGluc2VydGlvbnMoKyksIDUzIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2F0OTEtYXJpZXR0YWcyNS5kdHMg
Yi9hcmNoL2FybS9ib290L2R0cy9hdDkxLWFyaWV0dGFnMjUuZHRzCmluZGV4IDdhMzRjNGRjMDVk
Mi4uMDI2N2U3MmMwNzRhIDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9hdDkxLWFyaWV0
dGFnMjUuZHRzCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2F0OTEtYXJpZXR0YWcyNS5kdHMKQEAg
LTYsMTQgKzYsMTEgQEAKICAqLwogL2R0cy12MS87CiAjaW5jbHVkZSAiYXQ5MXNhbTlnMjUuZHRz
aSIKKwogLyB7CiAJbW9kZWwgPSAiQWNtZSBTeXN0ZW1zIEFyaWV0dGEgRzI1IjsKIAljb21wYXRp
YmxlID0gImFjbWUsYXJpZXR0YWcyNSIsICJhdG1lbCxhdDkxc2FtOXg1IiwgImF0bWVsLGF0OTFz
YW05IjsKIAotCWFsaWFzZXMgewotCQlzZXJpYWwwID0gJmRiZ3U7Ci0JfTsKLQogCWNob3NlbiB7
CiAJCXN0ZG91dC1wYXRoID0gInNlcmlhbDA6MTE1MjAwbjgiOwogCX07CkBAIC0zMiw1NyArMjks
OSBAQAogCQl9OwogCX07CiAKLQlhaGIgewotCQlhcGIgewotCQkJbW1jMDogbW1jQGYwMDA4MDAw
IHsKLQkJCQlwaW5jdHJsLTAgPSA8Ci0JCQkJICAmcGluY3RybF9tbWMwX3Nsb3QwX2Nsa19jbWRf
ZGF0MAotCQkJCSAgJnBpbmN0cmxfbW1jMF9zbG90MF9kYXQxXzM+OwotCQkJCXN0YXR1cyA9ICJv
a2F5IjsKLQotCQkJCXNsb3RAMCB7Ci0JCQkJCXJlZyA9IDwwPjsKLQkJCQkJYnVzLXdpZHRoID0g
PDQ+OwotCQkJCX07Ci0JCQl9OwotCi0JCQl0Y2IwOiB0aW1lckBmODAwODAwMCB7Ci0JCQkJdGlt
ZXJAMCB7Ci0JCQkJCWNvbXBhdGlibGUgPSAiYXRtZWwsdGNiLXRpbWVyIjsKLQkJCQkJcmVnID0g
PDA+OwotCQkJCX07Ci0KLQkJCQl0aW1lckAxIHsKLQkJCQkJY29tcGF0aWJsZSA9ICJhdG1lbCx0
Y2ItdGltZXIiOwotCQkJCQlyZWcgPSA8MT47Ci0JCQkJfTsKLQkJCX07Ci0KLQkJCXVzYjI6IGdh
ZGdldEBmODAzYzAwMCB7Ci0JCQkJc3RhdHVzID0gIm9rYXkiOwotCQkJfTsKLQotCQkJZGJndTog
c2VyaWFsQGZmZmZmMjAwIHsKLQkJCQlzdGF0dXMgPSAib2theSI7Ci0JCQl9OwotCi0JCQlydGNA
ZmZmZmZlYjAgewotCQkJCXN0YXR1cyA9ICJva2F5IjsKLQkJCX07Ci0JCX07Ci0KLQkJdXNiMDog
b2hjaUA2MDAwMDAgewotCQkJc3RhdHVzID0gIm9rYXkiOwotCQkJbnVtLXBvcnRzID0gPDM+Owot
CQl9OwotCi0JCXVzYjE6IGVoY2lANzAwMDAwIHsKLQkJCXN0YXR1cyA9ICJva2F5IjsKLQkJfTsK
LQl9OwotCiAJbGVkcyB7CiAJCWNvbXBhdGlibGUgPSAiZ3Bpby1sZWRzIjsKKwogCQlhcmlldHRh
X2xlZCB7CiAJCQlsYWJlbCA9ICJhcmlldHRhX2xlZCI7CiAJCQlncGlvcyA9IDwmcGlvQiA4IEdQ
SU9fQUNUSVZFX0hJR0g+OyAvKiBQQjggKi8KQEAgLTkwLDMgKzM5LDQ4IEBACiAJCX07CiAJfTsK
IH07CisKKyZkYmd1IHsKKwlzdGF0dXMgPSAib2theSI7Cit9OworCismbW1jMCB7CisJcGluY3Ry
bC0wID0gPAorCQkmcGluY3RybF9tbWMwX3Nsb3QwX2Nsa19jbWRfZGF0MAorCQkmcGluY3RybF9t
bWMwX3Nsb3QwX2RhdDFfMz47CisJc3RhdHVzID0gIm9rYXkiOworCisJc2xvdEAwIHsKKwkJcmVn
ID0gPDA+OworCQlidXMtd2lkdGggPSA8ND47CisJfTsKK307CisKKyZydGMgeworCXN0YXR1cyA9
ICJva2F5IjsKK307CisKKyZ0Y2IwIHsKKwl0aW1lckAwIHsKKwkJY29tcGF0aWJsZSA9ICJhdG1l
bCx0Y2ItdGltZXIiOworCQlyZWcgPSA8MD47CisJfTsKKworCXRpbWVyQDEgeworCQljb21wYXRp
YmxlID0gImF0bWVsLHRjYi10aW1lciI7CisJCXJlZyA9IDwxPjsKKwl9OworfTsKKworJnVzYjAg
eworCW51bS1wb3J0cyA9IDwzPjsKKwlzdGF0dXMgPSAib2theSI7Cit9OworCismdXNiMSB7CisJ
c3RhdHVzID0gIm9rYXkiOworfTsKKworJnVzYjIgeworCXN0YXR1cyA9ICJva2F5IjsKK307Ci0t
IAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
