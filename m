Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A66A310E8C3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 11:29:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JMxerV6+LyTssLBUBNfO5qp+RAxTAsnoG34IpI88C5k=; b=TFI1RmRYyrr9t7
	eUE6kMR6ADW6LjXgWu1w2Qv35JoeqB0gTiS2Pvfdmm7w4n4LeE5ZFG6o+GD59GJT1LCmBn7OBFYEQ
	h/sR2R8P8Srciqie+fcOvkMVBzkPp62mPjU0KVxJrFDY7ekBLrmUQnNdm8EN3b+TiZWV0Fc0AgRok
	4VEj+QAyfsrHjKJSZF57SIoHKCadwxrqeV4sowv/kBe3rMaXQr3LnAQf0K+dr4FRjU84JkNhd59yB
	Xbp9Q851vLYJVKI+ryl8PrGnww4Or1I0uw6ky+ErCWsDrGz3x0BcNuCFaz4Wf6FwfuWqqpUJj72jh
	WmnXP3nTzLsSeOsl0RAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibixS-0005CZ-QQ; Mon, 02 Dec 2019 10:29:34 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibixE-0005B1-Cx; Mon, 02 Dec 2019 10:29:22 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 1A41AB259;
 Mon,  2 Dec 2019 10:29:19 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v2 1/9] arm64: dts: realtek: rtd129x: Fix GIC CPU masks for
 RTD1293
Date: Mon,  2 Dec 2019 11:29:02 +0100
Message-Id: <20191202102910.26916-2-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191202102910.26916-1-afaerber@suse.de>
References: <20191202102910.26916-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_022920_728714_62A0740F 
X-CRM114-Status: UNSURE (   9.76  )
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
LmRlPgotLS0KIHYxIC0+IHYyOiBVbmNoYW5nZWQKIAogYXJjaC9hcm02NC9ib290L2R0cy9yZWFs
dGVrL3J0ZDEyOTMuZHRzaSB8IDEyICsrKysrKysrLS0tLQogYXJjaC9hcm02NC9ib290L2R0cy9y
ZWFsdGVrL3J0ZDEyOTUuZHRzaSB8ICA4ICsrKystLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3Jl
YWx0ZWsvcnRkMTI5Ni5kdHNpIHwgIDggKysrKy0tLS0KIDMgZmlsZXMgY2hhbmdlZCwgMTYgaW5z
ZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290
L2R0cy9yZWFsdGVrL3J0ZDEyOTMuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9y
dGQxMjkzLmR0c2kKaW5kZXggYmQ0ZTIyNzIzZjdiLi4yZDkyYjU2YWM5NGQgMTAwNjQ0Ci0tLSBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjkzLmR0c2kKKysrIGIvYXJjaC9hcm02
NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOTMuZHRzaQpAQCAtMzYsMTYgKzM2LDIwIEBACiAJdGlt
ZXIgewogCQljb21wYXRpYmxlID0gImFybSxhcm12OC10aW1lciI7CiAJCWludGVycnVwdHMgPSA8
R0lDX1BQSSAxMwotCQkJKEdJQ19DUFVfTUFTS19SQVcoMHhmKSB8IElSUV9UWVBFX0xFVkVMX0xP
Vyk+LAorCQkJKEdJQ19DUFVfTUFTS19TSU1QTEUoMikgfCBJUlFfVFlQRV9MRVZFTF9MT1cpPiwK
IAkJCSAgICAgPEdJQ19QUEkgMTQKLQkJCShHSUNfQ1BVX01BU0tfUkFXKDB4ZikgfCBJUlFfVFlQ
RV9MRVZFTF9MT1cpPiwKKwkJCShHSUNfQ1BVX01BU0tfU0lNUExFKDIpIHwgSVJRX1RZUEVfTEVW
RUxfTE9XKT4sCiAJCQkgICAgIDxHSUNfUFBJIDExCi0JCQkoR0lDX0NQVV9NQVNLX1JBVygweGYp
IHwgSVJRX1RZUEVfTEVWRUxfTE9XKT4sCisJCQkoR0lDX0NQVV9NQVNLX1NJTVBMRSgyKSB8IElS
UV9UWVBFX0xFVkVMX0xPVyk+LAogCQkJICAgICA8R0lDX1BQSSAxMAotCQkJKEdJQ19DUFVfTUFT
S19SQVcoMHhmKSB8IElSUV9UWVBFX0xFVkVMX0xPVyk+OworCQkJKEdJQ19DUFVfTUFTS19TSU1Q
TEUoMikgfCBJUlFfVFlQRV9MRVZFTF9MT1cpPjsKIAl9OwogfTsKIAogJmFybV9wbXUgewogCWlu
dGVycnVwdC1hZmZpbml0eSA9IDwmY3B1MD4sIDwmY3B1MT47CiB9OworCismZ2ljIHsKKwlpbnRl
cnJ1cHRzID0gPEdJQ19QUEkgOSAoR0lDX0NQVV9NQVNLX1NJTVBMRSgyKSB8IElSUV9UWVBFX0xF
VkVMX0xPVyk+OworfTsKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9y
dGQxMjk1LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5NS5kdHNpCmlu
ZGV4IDkzZjBlMWQ5NzcyMS4uMzRmNmNjNmYxNmZlIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JlYWx0ZWsvcnRkMTI5NS5kdHNpCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVh
bHRlay9ydGQxMjk1LmR0c2kKQEAgLTYxLDEzICs2MSwxMyBAQAogCXRpbWVyIHsKIAkJY29tcGF0
aWJsZSA9ICJhcm0sYXJtdjgtdGltZXIiOwogCQlpbnRlcnJ1cHRzID0gPEdJQ19QUEkgMTMKLQkJ
CShHSUNfQ1BVX01BU0tfUkFXKDB4ZikgfCBJUlFfVFlQRV9MRVZFTF9MT1cpPiwKKwkJCShHSUNf
Q1BVX01BU0tfU0lNUExFKDQpIHwgSVJRX1RZUEVfTEVWRUxfTE9XKT4sCiAJCQkgICAgIDxHSUNf
UFBJIDE0Ci0JCQkoR0lDX0NQVV9NQVNLX1JBVygweGYpIHwgSVJRX1RZUEVfTEVWRUxfTE9XKT4s
CisJCQkoR0lDX0NQVV9NQVNLX1NJTVBMRSg0KSB8IElSUV9UWVBFX0xFVkVMX0xPVyk+LAogCQkJ
ICAgICA8R0lDX1BQSSAxMQotCQkJKEdJQ19DUFVfTUFTS19SQVcoMHhmKSB8IElSUV9UWVBFX0xF
VkVMX0xPVyk+LAorCQkJKEdJQ19DUFVfTUFTS19TSU1QTEUoNCkgfCBJUlFfVFlQRV9MRVZFTF9M
T1cpPiwKIAkJCSAgICAgPEdJQ19QUEkgMTAKLQkJCShHSUNfQ1BVX01BU0tfUkFXKDB4ZikgfCBJ
UlFfVFlQRV9MRVZFTF9MT1cpPjsKKwkJCShHSUNfQ1BVX01BU0tfU0lNUExFKDQpIHwgSVJRX1RZ
UEVfTEVWRUxfTE9XKT47CiAJfTsKIH07CiAKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcmVhbHRlay9ydGQxMjk2LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRk
MTI5Ni5kdHNpCmluZGV4IDBmOWU1OWNhYzA4Ni4uZmI4NjRhMTM5Yzk3IDEwMDY0NAotLS0gYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5Ni5kdHNpCisrKyBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcmVhbHRlay9ydGQxMjk2LmR0c2kKQEAgLTUwLDEzICs1MCwxMyBAQAogCXRpbWVy
IHsKIAkJY29tcGF0aWJsZSA9ICJhcm0sYXJtdjgtdGltZXIiOwogCQlpbnRlcnJ1cHRzID0gPEdJ
Q19QUEkgMTMKLQkJCShHSUNfQ1BVX01BU0tfUkFXKDB4ZikgfCBJUlFfVFlQRV9MRVZFTF9MT1cp
PiwKKwkJCShHSUNfQ1BVX01BU0tfU0lNUExFKDQpIHwgSVJRX1RZUEVfTEVWRUxfTE9XKT4sCiAJ
CQkgICAgIDxHSUNfUFBJIDE0Ci0JCQkoR0lDX0NQVV9NQVNLX1JBVygweGYpIHwgSVJRX1RZUEVf
TEVWRUxfTE9XKT4sCisJCQkoR0lDX0NQVV9NQVNLX1NJTVBMRSg0KSB8IElSUV9UWVBFX0xFVkVM
X0xPVyk+LAogCQkJICAgICA8R0lDX1BQSSAxMQotCQkJKEdJQ19DUFVfTUFTS19SQVcoMHhmKSB8
IElSUV9UWVBFX0xFVkVMX0xPVyk+LAorCQkJKEdJQ19DUFVfTUFTS19TSU1QTEUoNCkgfCBJUlFf
VFlQRV9MRVZFTF9MT1cpPiwKIAkJCSAgICAgPEdJQ19QUEkgMTAKLQkJCShHSUNfQ1BVX01BU0tf
UkFXKDB4ZikgfCBJUlFfVFlQRV9MRVZFTF9MT1cpPjsKKwkJCShHSUNfQ1BVX01BU0tfU0lNUExF
KDQpIHwgSVJRX1RZUEVfTEVWRUxfTE9XKT47CiAJfTsKIH07CiAKLS0gCjIuMTYuNAoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
