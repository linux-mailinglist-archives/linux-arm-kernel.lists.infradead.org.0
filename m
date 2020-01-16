Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 815CE13E0CF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 17:46:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KZOR4+kp9CVeqOv3o8SG5uP2ZF7yXgmkB0zenj7K0NU=; b=QuG/dioX+pxPSQ
	IainIdEF/NmepcaeU4CZmPD24fHZlmPTyHorbpc72RrFpQbPY0ynFcWygEkHm53sJqoD+k5bKkRSV
	wnHGmKeKDGkac8wFpykQoyuKsRNgyhCEMMs6hzhKUrhi/eTU444kUOJhErBNhd9fFwi5dFtZDqd0Z
	Go4c9eImByC3P8IyIBZjnd9G2D5K6iI58Ikit+o5nUCbGFCWf5W7JH6PfoyntOxr5LnlzDxfrFTuL
	ybGGx2tbRfI+a336j8YafXs5O0U6f0tEopyMrrr4ERKi83awneFf282pCxyjxkLPwdaSewgro/dbk
	adk8HFKcx1q0gS9ruMlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8HO-0000YD-HA; Thu, 16 Jan 2020 16:45:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8Ga-00080P-Rt
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 16:45:12 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7605F214AF;
 Thu, 16 Jan 2020 16:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579193106;
 bh=mq8awXAD97Rhq5Zg59z6Y62K8XMyf1u1nUaUOsd7PZs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=JneiLwnJwocSA+ZVKsxWhy1qWUkQkdxj5I1LVP+dDQJptthLcXcvid8ycPaYm3znz
 TKa+l2xYuG8Rrw+o5pqURcPwDVlU+CcKKt8J19ueskfscBFDfhuJjSPmXqQgc5nBcL
 RHr0HtYGaDK32olVNpiKrPLEgWw68KAL+xBcHraw=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 025/205] hwrng: omap3-rom - Fix missing clock by
 probing with device tree
Date: Thu, 16 Jan 2020 11:40:00 -0500
Message-Id: <20200116164300.6705-25-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116164300.6705-1-sashal@kernel.org>
References: <20200116164300.6705-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_084509_473398_56DD5B0F 
X-CRM114-Status: GOOD (  20.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 Herbert Xu <herbert@gondor.apana.org.au>, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Tony Lindgren <tony@atomide.com>, Sebastian Reichel <sre@kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>,
 linux-crypto@vger.kernel.org,
 =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali.rohar@gmail.com>,
 linux-omap@vger.kernel.org, Adam Ford <aford173@gmail.com>,
 Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogVG9ueSBMaW5kZ3JlbiA8dG9ueUBhdG9taWRlLmNvbT4KClsgVXBzdHJlYW0gY29tbWl0
IDBjMGVmOWVhNmYzZjBkNTk3OWRjN2IwOTRiMGExODRjMWE5NDcxNmIgXQoKQ29tbWl0IDBlZDI2
NmQ3YWU1ZSAoImNsazogdGk6IG9tYXAzOiBjbGVhbnVwIHVubmVjZXNzYXJ5IGNsb2NrIGFsaWFz
ZXMiKQpyZW1vdmVkIG9sZCBvbWFwMyBjbG9jayBmcmFtZXdvcmsgYWxpYXNlcyBidXQgY2F1c2Vk
IG9tYXAzLXJvbS1ybmcgdG8Kc3RvcCB3b3JraW5nIHdpdGggY2xvY2sgbm90IGZvdW5kIGVycm9y
LgoKQmFzZWQgb24gZGlzY3Vzc2lvbnMgb24gdGhlIG1haWxpbmcgbGlzdCBpdCB3YXMgcmVxdWVz
dGVkIGJ5IFRlcm8gS3Jpc3RvCnRoYXQgaXQgd291bGQgYmUgYmVzdCB0byBmaXggdGhpcyBpc3N1
ZSBieSBwcm9iaW5nIG9tYXAzLXJvbS1ybmcgdXNpbmcKZGV2aWNlIHRyZWUgdG8gcHJvdmlkZSBh
IHByb3BlciBjbGsgcHJvcGVydHkuIFRoZSBvdGhlciBvcHRpb24gd291bGQgYmUKdG8gYWRkIGJh
Y2sgdGhlIG1pc3NpbmcgY2xvY2sgYWxpYXMsIGJ1dCB0aGF0IGRvZXMgbm90IGhlbHAgbW92aW5n
IHRoaW5ncwpmb3J3YXJkIHdpdGggcmVtb3Zpbmcgb2xkIGxlZ2FjeSBwbGF0Zm9ybV9kYXRhLgoK
TGV0J3MgYWxzbyBhZGQgYSBwcm9wZXIgZGV2aWNlIHRyZWUgYmluZGluZyBhbmQga2VlcCBpdCB0
b2dldGhlciB3aXRoCnRoZSBmaXguCgpDYzogZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmcKQ2M6
IEFhcm8gS29za2luZW4gPGFhcm8ua29za2luZW5AaWtpLmZpPgpDYzogQWRhbSBGb3JkIDxhZm9y
ZDE3M0BnbWFpbC5jb20+CkNjOiBQYWxpIFJvaMOhciA8cGFsaS5yb2hhckBnbWFpbC5jb20+CkNj
OiBSb2IgSGVycmluZyA8cm9iaCtkdEBrZXJuZWwub3JnPgpDYzogU2ViYXN0aWFuIFJlaWNoZWwg
PHNyZUBrZXJuZWwub3JnPgpDYzogVGVybyBLcmlzdG8gPHQta3Jpc3RvQHRpLmNvbT4KRml4ZXM6
IDBlZDI2NmQ3YWU1ZSAoImNsazogdGk6IG9tYXAzOiBjbGVhbnVwIHVubmVjZXNzYXJ5IGNsb2Nr
IGFsaWFzZXMiKQpSZXBvcnRlZC1ieTogQWFybyBLb3NraW5lbiA8YWFyby5rb3NraW5lbkBpa2ku
Zmk+ClNpZ25lZC1vZmYtYnk6IFRvbnkgTGluZGdyZW4gPHRvbnlAYXRvbWlkZS5jb20+CkFja2Vk
LWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgpTaWduZWQtb2ZmLWJ5OiBIZXJiZXJ0
IFh1IDxoZXJiZXJ0QGdvbmRvci5hcGFuYS5vcmcuYXU+ClNpZ25lZC1vZmYtYnk6IFNhc2hhIExl
dmluIDxzYXNoYWxAa2VybmVsLm9yZz4KLS0tCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9ybmcv
b21hcDNfcm9tX3JuZy50eHQgfCAyNyArKysrKysrKysrKysrKysrKysrCiBhcmNoL2FybS9ib290
L2R0cy9vbWFwMy1uOTAwLmR0cyAgICAgICAgICAgICAgfCAgNiArKysrKwogYXJjaC9hcm0vbWFj
aC1vbWFwMi9wZGF0YS1xdWlya3MuYyAgICAgICAgICAgIHwgMTIgKy0tLS0tLS0tCiBkcml2ZXJz
L2NoYXIvaHdfcmFuZG9tL29tYXAzLXJvbS1ybmcuYyAgICAgICAgfCAxNyArKysrKysrKysrLS0K
IDQgZmlsZXMgY2hhbmdlZCwgNDkgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pCiBjcmVh
dGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3JuZy9vbWFw
M19yb21fcm5nLnR4dAoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9ybmcvb21hcDNfcm9tX3JuZy50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3Mvcm5nL29tYXAzX3JvbV9ybmcudHh0Cm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAw
MDAwMDAwMDAwMC4uZjMxNWM5NzIzYmQyCi0tLSAvZGV2L251bGwKKysrIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3JuZy9vbWFwM19yb21fcm5nLnR4dApAQCAtMCwwICsxLDI3
IEBACitPTUFQIFJPTSBSTkcgZHJpdmVyIGJpbmRpbmcKKworU2VjdXJlIFNvQ3MgbWF5IHByb3Zp
ZGUgUk5HIHZpYSBzZWN1cmUgUk9NIGNhbGxzIGxpa2UgTm9raWEgTjkwMCBkb2VzLiBUaGUKK2lt
cGxlbWVudGF0aW9uIGNhbiBkZXBlbmQgb24gdGhlIFNvQyBzZWN1cmUgUk9NIHVzZWQuCisKKy0g
Y29tcGF0aWJsZToKKwlVc2FnZTogcmVxdWlyZWQKKwlWYWx1ZSB0eXBlOiA8c3RyaW5nPgorCURl
ZmluaXRpb246IG11c3QgYmUgIm5va2lhLG45MDAtcm9tLXJuZyIKKworLSBjbG9ja3M6CisJVXNh
Z2U6IHJlcXVpcmVkCisJVmFsdWUgdHlwZTogPHByb3AtZW5jb2RlZC1hcnJheT4KKwlEZWZpbml0
aW9uOiByZWZlcmVuY2UgdG8gdGhlIHRoZSBSTkcgaW50ZXJmYWNlIGNsb2NrCisKKy0gY2xvY2st
bmFtZXM6CisJVXNhZ2U6IHJlcXVpcmVkCisJVmFsdWUgdHlwZTogPHN0cmluZ2xpc3Q+CisJRGVm
aW5pdGlvbjogbXVzdCBiZSAiaWNrIgorCitFeGFtcGxlOgorCisJcm9tX3JuZzogcm5nIHsKKwkJ
Y29tcGF0aWJsZSA9ICJub2tpYSxuOTAwLXJvbS1ybmciOworCQljbG9ja3MgPSA8JnJuZ19pY2s+
OworCQljbG9jay1uYW1lcyA9ICJpY2siOworCX07CmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290
L2R0cy9vbWFwMy1uOTAwLmR0cyBiL2FyY2gvYXJtL2Jvb3QvZHRzL29tYXAzLW45MDAuZHRzCmlu
ZGV4IDg0YTVhZGUxZTg2NS4uNjM2NTk4ODBlZWIzIDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290
L2R0cy9vbWFwMy1uOTAwLmR0cworKysgYi9hcmNoL2FybS9ib290L2R0cy9vbWFwMy1uOTAwLmR0
cwpAQCAtMTU1LDYgKzE1NSwxMiBAQAogCQlwd21zID0gPCZwd205IDAgMjYzMTYgMD47IC8qIDM4
MDAwIEh6ICovCiAJfTsKIAorCXJvbV9ybmc6IHJuZyB7CisJCWNvbXBhdGlibGUgPSAibm9raWEs
bjkwMC1yb20tcm5nIjsKKwkJY2xvY2tzID0gPCZybmdfaWNrPjsKKwkJY2xvY2stbmFtZXMgPSAi
aWNrIjsKKwl9OworCiAJLyogY29udHJvbGxlZCAoZW5hYmxlZC9kaXNhYmxlZCkgZGlyZWN0bHkg
YnkgYmNtMjA0OCBhbmQgd2wxMjUxICovCiAJdmN0Y3hvOiB2Y3RjeG8gewogCQljb21wYXRpYmxl
ID0gImZpeGVkLWNsb2NrIjsKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtb21hcDIvcGRhdGEt
cXVpcmtzLmMgYi9hcmNoL2FybS9tYWNoLW9tYXAyL3BkYXRhLXF1aXJrcy5jCmluZGV4IDFiN2Nm
ODFmZjAzNS4uNzE4OTUzNWNiYjMyIDEwMDY0NAotLS0gYS9hcmNoL2FybS9tYWNoLW9tYXAyL3Bk
YXRhLXF1aXJrcy5jCisrKyBiL2FyY2gvYXJtL21hY2gtb21hcDIvcGRhdGEtcXVpcmtzLmMKQEAg
LTI2OCwxNCArMjY4LDYgQEAgc3RhdGljIHZvaWQgX19pbml0IGFtMzUxN19ldm1fbGVnYWN5X2lu
aXQodm9pZCkKIAlhbTM1eHhfZW1hY19yZXNldCgpOwogfQogCi1zdGF0aWMgc3RydWN0IHBsYXRm
b3JtX2RldmljZSBvbWFwM19yb21fcm5nX2RldmljZSA9IHsKLQkubmFtZQkJPSAib21hcDMtcm9t
LXJuZyIsCi0JLmlkCQk9IC0xLAotCS5kZXYJPSB7Ci0JCS5wbGF0Zm9ybV9kYXRhCT0gcng1MV9z
ZWN1cmVfcm5nX2NhbGwsCi0JfSwKLX07Ci0KIHN0YXRpYyB2b2lkIF9faW5pdCBub2tpYV9uOTAw
X2xlZ2FjeV9pbml0KHZvaWQpCiB7CiAJaHNtbWMyX2ludGVybmFsX2lucHV0X2NsaygpOwpAQCAt
MjkxLDkgKzI4Myw2IEBAIHN0YXRpYyB2b2lkIF9faW5pdCBub2tpYV9uOTAwX2xlZ2FjeV9pbml0
KHZvaWQpCiAJCQlwcl93YXJuKCJSWC01MTogTm90IGVuYWJsaW5nIEFSTSBlcnJhdGEgNDMwOTcz
IHdvcmthcm91bmRcbiIpOwogCQkJcHJfd2FybigiVGh1bWIgYmluYXJpZXMgbWF5IGNyYXNoIHJh
bmRvbWx5IHdpdGhvdXQgdGhpcyB3b3JrYXJvdW5kXG4iKTsKIAkJfQotCi0JCXByX2luZm8oIlJY
LTUxOiBSZWdpc3RlcmluZyBPTUFQMyBIV1JORyBkZXZpY2VcbiIpOwotCQlwbGF0Zm9ybV9kZXZp
Y2VfcmVnaXN0ZXIoJm9tYXAzX3JvbV9ybmdfZGV2aWNlKTsKIAl9CiB9CiAKQEAgLTUzNCw2ICs1
MjMsNyBAQCBzdGF0aWMgc3RydWN0IG9mX2Rldl9hdXhkYXRhIG9tYXBfYXV4ZGF0YV9sb29rdXBb
XSA9IHsKIAlPRl9ERVZfQVVYREFUQSgidGksZGF2aW5jaV9tZGlvIiwgMHg1YzAzMDAwMCwgImRh
dmluY2lfbWRpby4wIiwgTlVMTCksCiAJT0ZfREVWX0FVWERBVEEoInRpLGFtMzUxNy1lbWFjIiwg
MHg1YzAwMDAwMCwgImRhdmluY2lfZW1hYy4wIiwKIAkJICAgICAgICZhbTM1eHhfZW1hY19wZGF0
YSksCisJT0ZfREVWX0FVWERBVEEoIm5va2lhLG45MDAtcm9tLXJuZyIsIDAsIE5VTEwsIHJ4NTFf
c2VjdXJlX3JuZ19jYWxsKSwKIAkvKiBNY0JTUCBtb2R1bGVzIHdpdGggc2lkZXRvbmUgY29yZSAq
LwogI2lmIElTX0VOQUJMRUQoQ09ORklHX1NORF9TT0NfT01BUF9NQ0JTUCkKIAlPRl9ERVZfQVVY
REFUQSgidGksb21hcDMtbWNic3AiLCAweDQ5MDIyMDAwLCAiNDkwMjIwMDAubWNic3AiLCAmbWNi
c3BfcGRhdGEpLApkaWZmIC0tZ2l0IGEvZHJpdmVycy9jaGFyL2h3X3JhbmRvbS9vbWFwMy1yb20t
cm5nLmMgYi9kcml2ZXJzL2NoYXIvaHdfcmFuZG9tL29tYXAzLXJvbS1ybmcuYwppbmRleCA2NDhl
MzljZTZiZDkuLjhkZjNjYWQ3Yzk3YSAxMDA2NDQKLS0tIGEvZHJpdmVycy9jaGFyL2h3X3JhbmRv
bS9vbWFwMy1yb20tcm5nLmMKKysrIGIvZHJpdmVycy9jaGFyL2h3X3JhbmRvbS9vbWFwMy1yb20t
cm5nLmMKQEAgLTIwLDYgKzIwLDggQEAKICNpbmNsdWRlIDxsaW51eC93b3JrcXVldWUuaD4KICNp
bmNsdWRlIDxsaW51eC9jbGsuaD4KICNpbmNsdWRlIDxsaW51eC9lcnIuaD4KKyNpbmNsdWRlIDxs
aW51eC9vZi5oPgorI2luY2x1ZGUgPGxpbnV4L29mX2RldmljZS5oPgogI2luY2x1ZGUgPGxpbnV4
L3BsYXRmb3JtX2RldmljZS5oPgogCiAjZGVmaW5lIFJOR19SRVNFVAkJCTB4MDEKQEAgLTg2LDE0
ICs4OCwxOCBAQCBzdGF0aWMgaW50IG9tYXAzX3JvbV9ybmdfcmVhZChzdHJ1Y3QgaHdybmcgKnJu
Zywgdm9pZCAqZGF0YSwgc2l6ZV90IG1heCwgYm9vbCB3KQogCiBzdGF0aWMgc3RydWN0IGh3cm5n
IG9tYXAzX3JvbV9ybmdfb3BzID0gewogCS5uYW1lCQk9ICJvbWFwMy1yb20iLAotCS5yZWFkCQk9
IG9tYXAzX3JvbV9ybmdfcmVhZCwKIH07CiAKIHN0YXRpYyBpbnQgb21hcDNfcm9tX3JuZ19wcm9i
ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogewogCWludCByZXQgPSAwOwogCi0JcHJf
aW5mbygiaW5pdGlhbGl6aW5nXG4iKTsKKwlvbWFwM19yb21fcm5nX29wcy5yZWFkID0gb2ZfZGV2
aWNlX2dldF9tYXRjaF9kYXRhKCZwZGV2LT5kZXYpOworCWlmICghb21hcDNfcm9tX3JuZ19vcHMu
cmVhZCkgeworCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJtaXNzaW5nIHJvbSBjb2RlIGhhbmRsZXJc
biIpOworCisJCXJldHVybiAtRU5PREVWOworCX0KIAogCW9tYXAzX3JvbV9ybmdfY2FsbCA9IHBk
ZXYtPmRldi5wbGF0Zm9ybV9kYXRhOwogCWlmICghb21hcDNfcm9tX3JuZ19jYWxsKSB7CkBAIC0x
MjYsOSArMTMyLDE2IEBAIHN0YXRpYyBpbnQgb21hcDNfcm9tX3JuZ19yZW1vdmUoc3RydWN0IHBs
YXRmb3JtX2RldmljZSAqcGRldikKIAlyZXR1cm4gMDsKIH0KIAorc3RhdGljIGNvbnN0IHN0cnVj
dCBvZl9kZXZpY2VfaWQgb21hcF9yb21fcm5nX21hdGNoW10gPSB7CisJeyAuY29tcGF0aWJsZSA9
ICJub2tpYSxuOTAwLXJvbS1ybmciLCAuZGF0YSA9IG9tYXAzX3JvbV9ybmdfcmVhZCwgfSwKKwl7
IC8qIHNlbnRpbmVsICovIH0sCit9OworTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgb21hcF9yb21f
cm5nX21hdGNoKTsKKwogc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgb21hcDNfcm9tX3Ju
Z19kcml2ZXIgPSB7CiAJLmRyaXZlciA9IHsKIAkJLm5hbWUJCT0gIm9tYXAzLXJvbS1ybmciLAor
CQkub2ZfbWF0Y2hfdGFibGUgPSBvbWFwX3JvbV9ybmdfbWF0Y2gsCiAJfSwKIAkucHJvYmUJCT0g
b21hcDNfcm9tX3JuZ19wcm9iZSwKIAkucmVtb3ZlCQk9IG9tYXAzX3JvbV9ybmdfcmVtb3ZlLAot
LSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
