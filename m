Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 537B97CAA9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 19:37:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zmjXekcy+CaFPFO7i7s//7HJeEEzcRJIwXHRfqaUKMg=; b=n2C8eby4t54oRD
	ADFsPl9Sz+01yG/VaxqBDcjV96GgZRz6urj+dO9/gVmdEA+UvQBtPcs22hL7D2bJDm08kPVJNZUew
	hd1ubncVkc2CD60KsFdVZk3QYynA+3IsUUva7KBFzhwvfBsOhna1Jx+XfZz5kUmNAh2/mYH3kx9Yh
	a4Rd0UufP1K6cyfgUeqkKCtAMT6Mo5I+8oDi6M6aprL3vrQgprS1Np1GYV3uIUCPXh7Iwwgk5HGG1
	iT4HtdtXvNteFsMwH+urnHRVp6pQa8NA+pVI+yrMiR3dvIhEOhrF5ZTGQ1auk5GFNR/yKGDdXto59
	o8k6OmtayKXQIE8qQWqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hssXl-0005Hb-HP; Wed, 31 Jul 2019 17:37:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hssXF-0004m6-Kb
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 17:37:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4448515A2;
 Wed, 31 Jul 2019 10:37:09 -0700 (PDT)
Received: from big-swifty.lan (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 92E5A3F71F;
 Wed, 31 Jul 2019 10:37:06 -0700 (PDT)
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 3/5] KVM: arm: vgic-v3: Mark expected switch fall-through
Date: Wed, 31 Jul 2019 18:36:48 +0100
Message-Id: <20190731173650.12627-4-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190731173650.12627-1-maz@kernel.org>
References: <20190731173650.12627-1-maz@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_103709_723901_15192E2C 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Anders Roxell <anders.roxell@linaro.org>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, James Morse <james.morse@arm.com>,
 Zenghui Yu <yuzenghui@huawei.com>, Andrew Murray <andrew.murray@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogQW5kZXJzIFJveGVsbCA8YW5kZXJzLnJveGVsbEBsaW5hcm8ub3JnPgoKV2hlbiBmYWxs
LXRocm91Z2ggd2FybmluZ3Mgd2FzIGVuYWJsZWQgYnkgZGVmYXVsdCB0aGUgZm9sbG93aW5nIHdh
cm5pbmdzCndhcyBzdGFydGluZyB0byBzaG93IHVwOgoKLi4vdmlydC9rdm0vYXJtL2h5cC92Z2lj
LXYzLXNyLmM6IEluIGZ1bmN0aW9uIOKAmF9fdmdpY192M19zYXZlX2FwcnPigJk6Ci4uL3ZpcnQv
a3ZtL2FybS9oeXAvdmdpYy12My1zci5jOjM1MToyNDogd2FybmluZzogdGhpcyBzdGF0ZW1lbnQg
bWF5IGZhbGwKIHRocm91Z2ggWy1XaW1wbGljaXQtZmFsbHRocm91Z2g9XQogICBjcHVfaWYtPnZn
aWNfYXAwclsyXSA9IF9fdmdpY192M19yZWFkX2FwMHJuKDIpOwogICB+fn5+fn5+fn5+fn5+fn5+
fn5+fn5efn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+Ci4uL3ZpcnQva3ZtL2FybS9oeXAvdmdpYy12
My1zci5jOjM1MjoyOiBub3RlOiBoZXJlCiAgY2FzZSA2OgogIF5+fn4KLi4vdmlydC9rdm0vYXJt
L2h5cC92Z2ljLXYzLXNyLmM6MzUzOjI0OiB3YXJuaW5nOiB0aGlzIHN0YXRlbWVudCBtYXkgZmFs
bAogdGhyb3VnaCBbLVdpbXBsaWNpdC1mYWxsdGhyb3VnaD1dCiAgIGNwdV9pZi0+dmdpY19hcDBy
WzFdID0gX192Z2ljX3YzX3JlYWRfYXAwcm4oMSk7CiAgIH5+fn5+fn5+fn5+fn5+fn5+fn5+fl5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KLi4vdmlydC9rdm0vYXJtL2h5cC92Z2ljLXYzLXNyLmM6
MzU0OjI6IG5vdGU6IGhlcmUKICBkZWZhdWx0OgogIF5+fn5+fn4KClJld29yayBzbyB0aGF0IHRo
ZSBjb21waWxlciBkb2Vzbid0IHdhcm4gYWJvdXQgZmFsbC10aHJvdWdoLgoKRml4ZXM6IGQ5MzUx
MmVmMGYwZSAoIk1ha2VmaWxlOiBHbG9iYWxseSBlbmFibGUgZmFsbC10aHJvdWdoIHdhcm5pbmci
KQpTaWduZWQtb2ZmLWJ5OiBBbmRlcnMgUm94ZWxsIDxhbmRlcnMucm94ZWxsQGxpbmFyby5vcmc+
ClNpZ25lZC1vZmYtYnk6IE1hcmMgWnluZ2llciA8bWF6QGtlcm5lbC5vcmc+Ci0tLQogdmlydC9r
dm0vYXJtL2h5cC92Z2ljLXYzLXNyLmMgfCA4ICsrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgOCBp
bnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvdmlydC9rdm0vYXJtL2h5cC92Z2ljLXYzLXNyLmMg
Yi92aXJ0L2t2bS9hcm0vaHlwL3ZnaWMtdjMtc3IuYwppbmRleCAyNTRjNWYxOTBhM2QuLmNjZjFm
ZGU5ODM2YyAxMDA2NDQKLS0tIGEvdmlydC9rdm0vYXJtL2h5cC92Z2ljLXYzLXNyLmMKKysrIGIv
dmlydC9rdm0vYXJtL2h5cC92Z2ljLXYzLXNyLmMKQEAgLTM0OSw4ICszNDksMTAgQEAgdm9pZCBf
X2h5cF90ZXh0IF9fdmdpY192M19zYXZlX2FwcnMoc3RydWN0IGt2bV92Y3B1ICp2Y3B1KQogCWNh
c2UgNzoKIAkJY3B1X2lmLT52Z2ljX2FwMHJbM10gPSBfX3ZnaWNfdjNfcmVhZF9hcDBybigzKTsK
IAkJY3B1X2lmLT52Z2ljX2FwMHJbMl0gPSBfX3ZnaWNfdjNfcmVhZF9hcDBybigyKTsKKwkJLyog
RmFsbCB0aHJvdWdoICovCiAJY2FzZSA2OgogCQljcHVfaWYtPnZnaWNfYXAwclsxXSA9IF9fdmdp
Y192M19yZWFkX2FwMHJuKDEpOworCQkvKiBGYWxsIHRocm91Z2ggKi8KIAlkZWZhdWx0OgogCQlj
cHVfaWYtPnZnaWNfYXAwclswXSA9IF9fdmdpY192M19yZWFkX2FwMHJuKDApOwogCX0KQEAgLTM1
OSw4ICszNjEsMTAgQEAgdm9pZCBfX2h5cF90ZXh0IF9fdmdpY192M19zYXZlX2FwcnMoc3RydWN0
IGt2bV92Y3B1ICp2Y3B1KQogCWNhc2UgNzoKIAkJY3B1X2lmLT52Z2ljX2FwMXJbM10gPSBfX3Zn
aWNfdjNfcmVhZF9hcDFybigzKTsKIAkJY3B1X2lmLT52Z2ljX2FwMXJbMl0gPSBfX3ZnaWNfdjNf
cmVhZF9hcDFybigyKTsKKwkJLyogRmFsbCB0aHJvdWdoICovCiAJY2FzZSA2OgogCQljcHVfaWYt
PnZnaWNfYXAxclsxXSA9IF9fdmdpY192M19yZWFkX2FwMXJuKDEpOworCQkvKiBGYWxsIHRocm91
Z2ggKi8KIAlkZWZhdWx0OgogCQljcHVfaWYtPnZnaWNfYXAxclswXSA9IF9fdmdpY192M19yZWFk
X2FwMXJuKDApOwogCX0KQEAgLTM4Miw4ICszODYsMTAgQEAgdm9pZCBfX2h5cF90ZXh0IF9fdmdp
Y192M19yZXN0b3JlX2FwcnMoc3RydWN0IGt2bV92Y3B1ICp2Y3B1KQogCWNhc2UgNzoKIAkJX192
Z2ljX3YzX3dyaXRlX2FwMHJuKGNwdV9pZi0+dmdpY19hcDByWzNdLCAzKTsKIAkJX192Z2ljX3Yz
X3dyaXRlX2FwMHJuKGNwdV9pZi0+dmdpY19hcDByWzJdLCAyKTsKKwkJLyogRmFsbCB0aHJvdWdo
ICovCiAJY2FzZSA2OgogCQlfX3ZnaWNfdjNfd3JpdGVfYXAwcm4oY3B1X2lmLT52Z2ljX2FwMHJb
MV0sIDEpOworCQkvKiBGYWxsIHRocm91Z2ggKi8KIAlkZWZhdWx0OgogCQlfX3ZnaWNfdjNfd3Jp
dGVfYXAwcm4oY3B1X2lmLT52Z2ljX2FwMHJbMF0sIDApOwogCX0KQEAgLTM5Miw4ICszOTgsMTAg
QEAgdm9pZCBfX2h5cF90ZXh0IF9fdmdpY192M19yZXN0b3JlX2FwcnMoc3RydWN0IGt2bV92Y3B1
ICp2Y3B1KQogCWNhc2UgNzoKIAkJX192Z2ljX3YzX3dyaXRlX2FwMXJuKGNwdV9pZi0+dmdpY19h
cDFyWzNdLCAzKTsKIAkJX192Z2ljX3YzX3dyaXRlX2FwMXJuKGNwdV9pZi0+dmdpY19hcDFyWzJd
LCAyKTsKKwkJLyogRmFsbCB0aHJvdWdoICovCiAJY2FzZSA2OgogCQlfX3ZnaWNfdjNfd3JpdGVf
YXAxcm4oY3B1X2lmLT52Z2ljX2FwMXJbMV0sIDEpOworCQkvKiBGYWxsIHRocm91Z2ggKi8KIAlk
ZWZhdWx0OgogCQlfX3ZnaWNfdjNfd3JpdGVfYXAxcm4oY3B1X2lmLT52Z2ljX2FwMXJbMF0sIDAp
OwogCX0KLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
