Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C299B965
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 02:12:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9wmLEHM2kG0Cg9yRI1xt0rmBrtWF4Zm0KEktbmPtm+A=; b=a7S6LZyu52KgpS
	IQn4KFTnpEaY0u5gTOO/eqyW4smCspFzZ0bA2XwAcasAORKELrJQicdHYTOEn/zTVs7i2Z3o/WX9i
	wkbsOxZmi3BgGVdas+5sncspEd5KSYIGm4egvMaZbchqCRyiF9bNPHZw4NYe+B4UGyg1nydmv62hH
	RD2bzHR4xBp04ahtZ4tH5xKG9GXLAgFEbYgEBJpvQrCNZD5D9sFkKMx8CkNwbsR2gpkndegY42Efl
	JexrdfI28TRypV7wlUbD5WZX/1BW5yOxd3xGDg0jVs5oCbZgVwwchpiU76WY6TEbl4rULafFobFzU
	rWPRmUPCJMaCHTqff7mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1JfQ-0003DY-U3; Sat, 24 Aug 2019 00:12:28 +0000
Received: from antares.kleine-koenig.org ([94.130.110.236])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1JeS-00024W-1r
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 00:11:29 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id 9A9A077D4B8; Sat, 24 Aug 2019 02:10:56 +0200 (CEST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>,
 Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v2 3/6] pwm: atmel: replace loop in prescale calculation by
 ad-hoc calculation
Date: Sat, 24 Aug 2019 02:10:38 +0200
Message-Id: <20190824001041.11007-4-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190824001041.11007-1-uwe@kleine-koenig.org>
References: <20190824001041.11007-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_171128_267905_5B0DB047 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [94.130.110.236 listed in list.dnswl.org]
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

VGhlIGNhbGN1bGF0ZWQgdmFsdWVzIGFyZSB0aGUgc2FtZSB3aXRoIHRoZSBtb2RpZmllZCBhbGdv
cml0aG0uIFRoZSBvbmx5CmRpZmZlcmVuY2UgaXMgdGhhdCB0aGUgY2FsY3VsYXRpb24gaXMgYSBi
aXQgbW9yZSBlZmZpY2llbnQuCgpBY2tlZC1ieTogQ2xhdWRpdSBCZXpuZWEgPGNsYXVkaXUuYmV6
bmVhQG1pY3JvY2hpcC5jb20+ClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1d2VA
a2xlaW5lLWtvZW5pZy5vcmc+Ci0tLQpDaGFuZ2VzIHNpbmNlIChpbXBsaWNpdCkgdjEgc2VudCB3
aXRoIE1lc3NhZ2UtSWQ6CjIwMTkwODE1MjE0MTMzLjExMTM0LTMtdXdlQGtsZWluZS1rb2VuaWcu
b3JnCgogLSBBZGRlZCBDbGF1ZGl1J3MgQWNrCgogZHJpdmVycy9wd20vcHdtLWF0bWVsLmMgfCAy
NCArKysrKysrKysrKysrKysrKy0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25z
KCspLCA3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcHdtL3B3bS1hdG1lbC5j
IGIvZHJpdmVycy9wd20vcHdtLWF0bWVsLmMKaW5kZXggZjQ5N2Y4NDc3MWYwLi4zNzg2YWI5ZGI1
Y2YgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcHdtL3B3bS1hdG1lbC5jCisrKyBiL2RyaXZlcnMvcHdt
L3B3bS1hdG1lbC5jCkBAIC02MCw3ICs2MCw3IEBAIHN0cnVjdCBhdG1lbF9wd21fcmVnaXN0ZXJz
IHsKIH07CiAKIHN0cnVjdCBhdG1lbF9wd21fY29uZmlnIHsKLQl1MzIgbWF4X3BlcmlvZDsKKwl1
MzIgcGVyaW9kX2JpdHM7CiB9OwogCiBzdHJ1Y3QgYXRtZWxfcHdtX2RhdGEgewpAQCAtMTE5LDE3
ICsxMTksMjcgQEAgc3RhdGljIGludCBhdG1lbF9wd21fY2FsY3VsYXRlX2NwcmRfYW5kX3ByZXMo
c3RydWN0IHB3bV9jaGlwICpjaGlwLAogewogCXN0cnVjdCBhdG1lbF9wd21fY2hpcCAqYXRtZWxf
cHdtID0gdG9fYXRtZWxfcHdtX2NoaXAoY2hpcCk7CiAJdW5zaWduZWQgbG9uZyBsb25nIGN5Y2xl
cyA9IHN0YXRlLT5wZXJpb2Q7CisJaW50IHNoaWZ0OwogCiAJLyogQ2FsY3VsYXRlIHRoZSBwZXJp
b2QgY3ljbGVzIGFuZCBwcmVzY2FsZSB2YWx1ZSAqLwogCWN5Y2xlcyAqPSBjbGtfZ2V0X3JhdGUo
YXRtZWxfcHdtLT5jbGspOwogCWRvX2RpdihjeWNsZXMsIE5TRUNfUEVSX1NFQyk7CiAKLQlmb3Ig
KCpwcmVzID0gMDsgY3ljbGVzID4gYXRtZWxfcHdtLT5kYXRhLT5jZmcubWF4X3BlcmlvZDsgY3lj
bGVzID4+PSAxKQotCQkoKnByZXMpKys7CisJLyoKKwkgKiBUaGUgcmVnaXN0ZXIgZm9yIHRoZSBw
ZXJpb2QgbGVuZ3RoIGlzIGNmZy5wZXJpb2RfYml0cyBiaXRzIHdpZGUuCisJICogU28gZm9yIGVh
Y2ggYml0IHRoZSBudW1iZXIgb2YgY2xvY2sgY3ljbGVzIGlzIHdpZGVyIGRpdmlkZSB0aGUgaW5w
dXQKKwkgKiBjbG9jayBmcmVxdWVuY3kgYnkgdHdvIHVzaW5nIHByZXMgYW5kIHNoaWZ0IGNwcmQg
YWNjb3JkaW5nbHkuCisJICovCisJc2hpZnQgPSBmbHMoY3ljbGVzKSAtIGF0bWVsX3B3bS0+ZGF0
YS0+Y2ZnLnBlcmlvZF9iaXRzOwogCi0JaWYgKCpwcmVzID4gUFdNX01BWF9QUkVTKSB7CisJaWYg
KHNoaWZ0ID4gUFdNX01BWF9QUkVTKSB7CiAJCWRldl9lcnIoY2hpcC0+ZGV2LCAicHJlcyBleGNl
ZWRzIHRoZSBtYXhpbXVtIHZhbHVlXG4iKTsKIAkJcmV0dXJuIC1FSU5WQUw7CisJfSBlbHNlIGlm
IChzaGlmdCA+IDApIHsKKwkJKnByZXMgPSBzaGlmdDsKKwkJY3ljbGVzID4+PSAqcHJlczsKKwl9
IGVsc2UgeworCQkqcHJlcyA9IDA7CiAJfQogCiAJKmNwcmQgPSBjeWNsZXM7CkBAIC0yODksNyAr
Mjk5LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBhdG1lbF9wd21fZGF0YSBhdG1lbF9zYW05cmxf
cHdtX2RhdGEgPSB7CiAJfSwKIAkuY2ZnID0gewogCQkvKiAxNiBiaXRzIHRvIGtlZXAgcGVyaW9k
IGFuZCBkdXR5LiAqLwotCQkubWF4X3BlcmlvZAk9IDB4ZmZmZiwKKwkJLnBlcmlvZF9iaXRzCT0g
MTYsCiAJfSwKIH07CiAKQEAgLTMwMiw3ICszMTIsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGF0
bWVsX3B3bV9kYXRhIGF0bWVsX3NhbWE1X3B3bV9kYXRhID0gewogCX0sCiAJLmNmZyA9IHsKIAkJ
LyogMTYgYml0cyB0byBrZWVwIHBlcmlvZCBhbmQgZHV0eS4gKi8KLQkJLm1heF9wZXJpb2QJPSAw
eGZmZmYsCisJCS5wZXJpb2RfYml0cwk9IDE2LAogCX0sCiB9OwogCkBAIC0zMTUsNyArMzI1LDcg
QEAgc3RhdGljIGNvbnN0IHN0cnVjdCBhdG1lbF9wd21fZGF0YSBtY2hwX3NhbTl4NjBfcHdtX2Rh
dGEgPSB7CiAJfSwKIAkuY2ZnID0gewogCQkvKiAzMiBiaXRzIHRvIGtlZXAgcGVyaW9kIGFuZCBk
dXR5LiAqLwotCQkubWF4X3BlcmlvZAk9IDB4ZmZmZmZmZmYsCisJCS5wZXJpb2RfYml0cwk9IDMy
LAogCX0sCiB9OwogCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
