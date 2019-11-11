Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E9FF6D19
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 04:05:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=csY3p+I8+iTEwXizJJcMrsR18DlNusjm+pK77O0VnsU=; b=eFkBn6cQIJ1gof
	dj3VpzpeRa3qgv0XNIEcazCqHot0CTQpjBT06mVcmqiz+T3Lta43nSRsZb8L0yaI93zIBcX1gLTIJ
	g7xPtndmXUUFjRFgSumqCXOQYCfgsIjuWHq1THC+Vlne9FYyDtipg5yevD6nzhdHrZLrr4kh7JyHN
	S6jnjKj0OxyxJId7nxM+nWv5kC6ZCmMvACrWet68KnFk3oXHwZO2/4t8iP7YYVviI3aZp2I6ruz2s
	AZfoMqtUKpjkFNOpFtzUbOqZQ25btzg2nrOW1eAhNXEP6WFqbDa9OQp9z9DaIfRXCprhU9WSZ+u0k
	CC+rU1NShfFrl92u+t6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU01L-0004PD-8V; Mon, 11 Nov 2019 03:05:39 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU00Z-0002eQ-Og; Mon, 11 Nov 2019 03:04:54 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id E0EC3AFF7;
 Mon, 11 Nov 2019 03:04:48 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH 1/7] arm64: dts: realtek: rtd129x: Fix GIC CPU masks for
 RTD1293
Date: Mon, 11 Nov 2019 04:04:28 +0100
Message-Id: <20191111030434.29977-2-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191111030434.29977-1-afaerber@suse.de>
References: <20191111030434.29977-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_190452_092499_43FB2A01 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Q29udmVydCBmcm9tIEdJQ19DUFVfTUFTS19SQVcoKSB0byBHSUNfQ1BVX01BU0tfU0lNUExFKCku
CgpJbiBjYXNlIG9mIFJURDEyOTMgYWRqdXN0IHRoZSBhcmNoIHRpbWVyIGFuZCBWR0lDIGludGVy
cnVwdHMnCkNQVSBtYXNrcyB0byBpdHMgc21hbGxlciBudW1iZXIgb2YgQ1BVcy4KCkZpeGVzOiBj
Zjk3NmY2NjBlZTggKCJhcm02NDogZHRzOiByZWFsdGVrOiBBZGQgUlREMTI5MyBhbmQgU3lub2xv
Z3kgRFM0MThqIikKU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNl
LmRlPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjkzLmR0c2kgfCAxMiAr
KysrKysrKy0tLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjk1LmR0c2kgfCAg
OCArKysrLS0tLQogYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOTYuZHRzaSB8ICA4
ICsrKystLS0tCiAzIGZpbGVzIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjkzLmR0
c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5My5kdHNpCmluZGV4IGJkNGUy
MjcyM2Y3Yi4uMmQ5MmI1NmFjOTRkIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jl
YWx0ZWsvcnRkMTI5My5kdHNpCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQx
MjkzLmR0c2kKQEAgLTM2LDE2ICszNiwyMCBAQAogCXRpbWVyIHsKIAkJY29tcGF0aWJsZSA9ICJh
cm0sYXJtdjgtdGltZXIiOwogCQlpbnRlcnJ1cHRzID0gPEdJQ19QUEkgMTMKLQkJCShHSUNfQ1BV
X01BU0tfUkFXKDB4ZikgfCBJUlFfVFlQRV9MRVZFTF9MT1cpPiwKKwkJCShHSUNfQ1BVX01BU0tf
U0lNUExFKDIpIHwgSVJRX1RZUEVfTEVWRUxfTE9XKT4sCiAJCQkgICAgIDxHSUNfUFBJIDE0Ci0J
CQkoR0lDX0NQVV9NQVNLX1JBVygweGYpIHwgSVJRX1RZUEVfTEVWRUxfTE9XKT4sCisJCQkoR0lD
X0NQVV9NQVNLX1NJTVBMRSgyKSB8IElSUV9UWVBFX0xFVkVMX0xPVyk+LAogCQkJICAgICA8R0lD
X1BQSSAxMQotCQkJKEdJQ19DUFVfTUFTS19SQVcoMHhmKSB8IElSUV9UWVBFX0xFVkVMX0xPVyk+
LAorCQkJKEdJQ19DUFVfTUFTS19TSU1QTEUoMikgfCBJUlFfVFlQRV9MRVZFTF9MT1cpPiwKIAkJ
CSAgICAgPEdJQ19QUEkgMTAKLQkJCShHSUNfQ1BVX01BU0tfUkFXKDB4ZikgfCBJUlFfVFlQRV9M
RVZFTF9MT1cpPjsKKwkJCShHSUNfQ1BVX01BU0tfU0lNUExFKDIpIHwgSVJRX1RZUEVfTEVWRUxf
TE9XKT47CiAJfTsKIH07CiAKICZhcm1fcG11IHsKIAlpbnRlcnJ1cHQtYWZmaW5pdHkgPSA8JmNw
dTA+LCA8JmNwdTE+OwogfTsKKworJmdpYyB7CisJaW50ZXJydXB0cyA9IDxHSUNfUFBJIDkgKEdJ
Q19DUFVfTUFTS19TSU1QTEUoMikgfCBJUlFfVFlQRV9MRVZFTF9MT1cpPjsKK307CmRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5NS5kdHNpIGIvYXJjaC9hcm02
NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOTUuZHRzaQppbmRleCA5M2YwZTFkOTc3MjEuLjM0ZjZj
YzZmMTZmZSAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOTUu
ZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5NS5kdHNpCkBAIC02
MSwxMyArNjEsMTMgQEAKIAl0aW1lciB7CiAJCWNvbXBhdGlibGUgPSAiYXJtLGFybXY4LXRpbWVy
IjsKIAkJaW50ZXJydXB0cyA9IDxHSUNfUFBJIDEzCi0JCQkoR0lDX0NQVV9NQVNLX1JBVygweGYp
IHwgSVJRX1RZUEVfTEVWRUxfTE9XKT4sCisJCQkoR0lDX0NQVV9NQVNLX1NJTVBMRSg0KSB8IElS
UV9UWVBFX0xFVkVMX0xPVyk+LAogCQkJICAgICA8R0lDX1BQSSAxNAotCQkJKEdJQ19DUFVfTUFT
S19SQVcoMHhmKSB8IElSUV9UWVBFX0xFVkVMX0xPVyk+LAorCQkJKEdJQ19DUFVfTUFTS19TSU1Q
TEUoNCkgfCBJUlFfVFlQRV9MRVZFTF9MT1cpPiwKIAkJCSAgICAgPEdJQ19QUEkgMTEKLQkJCShH
SUNfQ1BVX01BU0tfUkFXKDB4ZikgfCBJUlFfVFlQRV9MRVZFTF9MT1cpPiwKKwkJCShHSUNfQ1BV
X01BU0tfU0lNUExFKDQpIHwgSVJRX1RZUEVfTEVWRUxfTE9XKT4sCiAJCQkgICAgIDxHSUNfUFBJ
IDEwCi0JCQkoR0lDX0NQVV9NQVNLX1JBVygweGYpIHwgSVJRX1RZUEVfTEVWRUxfTE9XKT47CisJ
CQkoR0lDX0NQVV9NQVNLX1NJTVBMRSg0KSB8IElSUV9UWVBFX0xFVkVMX0xPVyk+OwogCX07CiB9
OwogCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5Ni5kdHNp
IGIvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOTYuZHRzaQppbmRleCAwZjllNTlj
YWMwODYuLmZiODY0YTEzOWM5NyAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yZWFs
dGVrL3J0ZDEyOTYuZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5
Ni5kdHNpCkBAIC01MCwxMyArNTAsMTMgQEAKIAl0aW1lciB7CiAJCWNvbXBhdGlibGUgPSAiYXJt
LGFybXY4LXRpbWVyIjsKIAkJaW50ZXJydXB0cyA9IDxHSUNfUFBJIDEzCi0JCQkoR0lDX0NQVV9N
QVNLX1JBVygweGYpIHwgSVJRX1RZUEVfTEVWRUxfTE9XKT4sCisJCQkoR0lDX0NQVV9NQVNLX1NJ
TVBMRSg0KSB8IElSUV9UWVBFX0xFVkVMX0xPVyk+LAogCQkJICAgICA8R0lDX1BQSSAxNAotCQkJ
KEdJQ19DUFVfTUFTS19SQVcoMHhmKSB8IElSUV9UWVBFX0xFVkVMX0xPVyk+LAorCQkJKEdJQ19D
UFVfTUFTS19TSU1QTEUoNCkgfCBJUlFfVFlQRV9MRVZFTF9MT1cpPiwKIAkJCSAgICAgPEdJQ19Q
UEkgMTEKLQkJCShHSUNfQ1BVX01BU0tfUkFXKDB4ZikgfCBJUlFfVFlQRV9MRVZFTF9MT1cpPiwK
KwkJCShHSUNfQ1BVX01BU0tfU0lNUExFKDQpIHwgSVJRX1RZUEVfTEVWRUxfTE9XKT4sCiAJCQkg
ICAgIDxHSUNfUFBJIDEwCi0JCQkoR0lDX0NQVV9NQVNLX1JBVygweGYpIHwgSVJRX1RZUEVfTEVW
RUxfTE9XKT47CisJCQkoR0lDX0NQVV9NQVNLX1NJTVBMRSg0KSB8IElSUV9UWVBFX0xFVkVMX0xP
Vyk+OwogCX07CiB9OwogCi0tIAoyLjE2LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
