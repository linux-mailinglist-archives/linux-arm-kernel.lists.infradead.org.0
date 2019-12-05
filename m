Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A89113C46
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 08:24:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6p37F0ebrwKR3U19hJnvq7fdIXGyXii3Z+F5zAewNcI=; b=YVcn694uHwjWb/
	j1Ym1bNBsLum6GBF7QvKJJZn6QfhsgrtBkwVs3TCvXn6DsTJcWjKYWUFVFtb3nwL8EhQG8cT/ikqB
	OOx9eMnN7A8tJFtzjITXpW4f18qNV6HstRgEV/Xj6j4nF8DtIi764JNqCXb9o9Aq/inxO4qMW7ViA
	KGXBJEegq5DShRjSHnNv3j8NcFtg8FmJOQEglPKG3ykf9PjIXeU7ujsHNheotSj2Gjr5LSRtN9q1P
	HJnTWeSJbxzWHOJkIsgjZjloVHVzDR5GFJ3RxjWUB48y5dQzJ/GHUW7w/xKfQvLWIaK9H/+ej8RH+
	fWbSu6TDeXmk//f/yx+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iclUr-0005KW-0a; Thu, 05 Dec 2019 07:24:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iclUj-0005Ji-Ef
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 07:24:14 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iclUg-0004Nm-EN; Thu, 05 Dec 2019 08:24:10 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iclUf-00075g-Ed; Thu, 05 Dec 2019 08:24:09 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Colin King <colin.king@canonical.com>,
 Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH] pwm: sun4i: Narrow scope of local variable
Date: Thu,  5 Dec 2019 08:24:04 +0100
Message-Id: <20191205072404.6858-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191002101624.gljyf7g4nia2rcbx@pengutronix.de>
References: <20191002101624.gljyf7g4nia2rcbx@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_232413_486646_3D636AE7 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-pwm@vger.kernel.org, Dan Carpenter <dan.carpenter@oracle.com>,
 kernel-janitors@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel@pengutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIHZhcmlhYmxlIHB2YWwgaXMgb25seSB1c2VkIGluIGEgc2luZ2xlIGJsb2NrIGluIHRoZSBm
dW5jdGlvbgpzdW40aV9wd21fY2FsY3VsYXRlKCkuIFNvIGRlY2xhcmUgaXQgaW4gYSBtb3JlIGxv
Y2FsIHNjb3BlIHRvIHNpbXBsaWZ5CnRoZSBmdW5jdGlvbiBmb3IgaHVtYW5zIGFuZCBjb21waWxl
cnMuCgpXaGlsZSB0aGUgZGlmZnN0YXQgZm9yIHRoaXMgcGF0Y2ggaXMgbmVnYXRpdmUgZm9yIHRo
aXMgcGF0Y2ggSSBzdGlsbAp0aGluZyB0aGUgYWR2YW50YWdlIG9mIGhhdmluZyBhIG5hcnJvd2Vy
IHNjb3BlIGlzIGJlbmVmaWNpYWwuCgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8
dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgotLS0KSGVsbG8sCgpmb3IgdGhlIHBhdGNo
IHRoYXQgYmVjYW1lCgoJMWI5OGFkM2IzYmU5ICgicHdtOiBzdW40aTogRHJvcCByZWR1bmRhbnQg
YXNzaWdubWVudCB0byB2YXJpYWJsZSBwdmFsIikKCihhbmQgd2hpY2ggeWllbGRlZCB0aGUgc2l0
dWF0aW9uIHRoYXQgcHZhbCBpcyBvbmx5IHVzZWQgaW4gdGhpcyBzaW5nbGUKYmxvY2spIEkgc3Vn
Z2VzdGVkIHRvIGRvIHRoaXMgY2hhbmdlLiBUaGlzIHdhcyBpZ25vcmVkIGhvd2V2ZXIgYnkgYm90
aApDb2xpbiBhbmQgVGhpZXJyeSB3aXRob3V0IGNvbW1lbnQuIFNvIEkgc3VnZ2VzdCB0aGUgY2hh
bmdlIGhlcmUKc2VwYXJhdGVseS4KCkJlc3QgcmVnYXJkcwpVd2UKCiBkcml2ZXJzL3B3bS9wd20t
c3VuNGkuYyB8IDQgKysrLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxl
dGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jIGIvZHJpdmVycy9w
d20vcHdtLXN1bjRpLmMKaW5kZXggNTgxZDIzMjg3MzMzLi44OTE5ZTZhYjc1NzcgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCisrKyBiL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5j
CkBAIC0xNDksNyArMTQ5LDcgQEAgc3RhdGljIGludCBzdW40aV9wd21fY2FsY3VsYXRlKHN0cnVj
dCBzdW40aV9wd21fY2hpcCAqc3VuNGlfcHdtLAogCQkJICAgICAgIHUzMiAqZHR5LCB1MzIgKnBy
ZCwgdW5zaWduZWQgaW50ICpwcnNjbHIpCiB7CiAJdTY0IGNsa19yYXRlLCBkaXYgPSAwOwotCXVu
c2lnbmVkIGludCBwdmFsLCBwcmVzY2FsZXIgPSAwOworCXVuc2lnbmVkIGludCBwcmVzY2FsZXIg
PSAwOwogCiAJY2xrX3JhdGUgPSBjbGtfZ2V0X3JhdGUoc3VuNGlfcHdtLT5jbGspOwogCkBAIC0x
NzAsNiArMTcwLDggQEAgc3RhdGljIGludCBzdW40aV9wd21fY2FsY3VsYXRlKHN0cnVjdCBzdW40
aV9wd21fY2hpcCAqc3VuNGlfcHdtLAogCWlmIChwcmVzY2FsZXIgPT0gMCkgewogCQkvKiBHbyB1
cCBmcm9tIHRoZSBmaXJzdCBkaXZpZGVyICovCiAJCWZvciAocHJlc2NhbGVyID0gMDsgcHJlc2Nh
bGVyIDwgUFdNX1BSRVNDQUxfTUFTSzsgcHJlc2NhbGVyKyspIHsKKwkJCXVuc2lnbmVkIGludCBw
dmFsOworCiAJCQlpZiAoIXByZXNjYWxlcl90YWJsZVtwcmVzY2FsZXJdKQogCQkJCWNvbnRpbnVl
OwogCQkJcHZhbCA9IHByZXNjYWxlcl90YWJsZVtwcmVzY2FsZXJdOwotLSAKMi4yNC4wCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
