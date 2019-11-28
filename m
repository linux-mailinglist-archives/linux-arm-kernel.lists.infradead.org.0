Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2512210CF03
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 20:58:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tDb70j79i1wUDl+AhFdM250N1ylR0sNp2nMFtqW2oXc=; b=hixNCqUo4LSRex
	fZlU6i7s2ZxsS3h6zDOrOr5y47ge8wbELoZQwERseojop542wS35u63NIvPj4Ova7OkpMz18Kjdjy
	SstgcUIjopd3aCGqQzFDKpsPe6KqNC3HjM2ZDmmtiCJ/r1Q1shZpDFCKNqEPX8Sw0R/4A66uiwjxi
	PwEkv7BhS1gMyGzxcv1beAYwLN9WK11PAJBr2ehax+P7FxwEuR/RqfwXNzIVXPlYsVRq0odmQ3UXn
	XM+zodX1wEIK2EpEjUdRwopYQgqKLkMAoNGbxXZF3kQvwc7JjrLnIDdyuqcjiJ8PVqTab3/oUsZfN
	0mVkyH7wY8C2qDe4hp0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaPvh-0005Ag-KQ; Thu, 28 Nov 2019 19:58:21 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaPvY-0005A0-LS
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 19:58:14 +0000
Received: from bigeasy by Galois.linutronix.de with local (Exim 4.80)
 (envelope-from <bigeasy@linutronix.de>)
 id 1iaPvR-0001FP-B4; Thu, 28 Nov 2019 20:58:05 +0100
Date: Thu, 28 Nov 2019 20:58:05 +0100
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: James Morse <james.morse@arm.com>
Subject: [PATCH v2] arm64: KVM: Invoke compute_layout() before alternatives
 are applied
Message-ID: <20191128195805.c2pryug4ohmcoqwd@linutronix.de>
References: <20191016165953.o6ogh4fdmsjmd2sw@linutronix.de>
 <ecfbb413-e97e-c3eb-e051-1f218b387edd@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ecfbb413-e97e-c3eb-e051-1f218b387edd@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_115812_845171_AB915004 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org, Marc Zyngier <maz@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Y29tcHV0ZV9sYXlvdXQoKSBpcyBpbnZva2VkIGFzIHBhcnQgb2YgYW4gYWx0ZXJuYXRpdmUgZml4
dXAgdW5kZXIKc3RvcF9tYWNoaW5lKCkuIFRoaXMgZnVuY3Rpb24gaW52b2tlcyBnZXRfcmFuZG9t
X2xvbmcoKSB3aGljaCBhY3F1aXJlcyBhCnNsZWVwaW5nIGxvY2sgb24gLVJUIHdoaWNoIGNhbiBu
b3QgYmUgYWNxdWlyZWQgaW4gdGhpcyBjb250ZXh0LgoKUmVuYW1lIGNvbXB1dGVfbGF5b3V0KCkg
dG8ga3ZtX2NvbXB1dGVfbGF5b3V0KCkgYW5kIGludm9rZSBpdCBiZWZvcmUKc3RvcF9tYWNoaW5l
KCkgYXBwbGllcyB0aGUgYWx0ZXJuYXRpdmVzLiBBZGQgYSBfX2luaXQgcHJlZml4IHRvCmt2bV9j
b21wdXRlX2xheW91dCgpIGJlY2F1c2UgdGhlIGNhbGxlciBoYXMgaXQsIHRvbyAoYW5kIHNvIHRo
ZSBjb2RlIGNhbiBiZQpkaXNjYXJkZWQgYWZ0ZXIgYm9vdCkuCgpTaWduZWQtb2ZmLWJ5OiBTZWJh
c3RpYW4gQW5kcnplaiBTaWV3aW9yIDxiaWdlYXN5QGxpbnV0cm9uaXguZGU+Ci0tLQoKdjHigKZ2
MjogTW92ZSBjb2RlIGFzIHN1Z2dlc3RlZCBieSBKYW1lcyBNb3JzZS4gRGlkbid0IGFkZCBoaXMg
UmV2aWV3ZWQtYnkKICAgICAgIChhcyBzdWdnZXN0ZWQpIGJlY2F1c2UgSSdtIG5vdCBzdXJlIHRo
YXQgSSBnb3QgZXZlcnl0aGluZwogICAgICAgY29ycmVjdC4KCiBhcmNoL2FybTY0L2luY2x1ZGUv
YXNtL2t2bV9tbXUuaCB8IDEgKwogYXJjaC9hcm02NC9rZXJuZWwvc21wLmMgICAgICAgICAgfCA0
ICsrKysKIGFyY2gvYXJtNjQva3ZtL3ZhX2xheW91dC5jICAgICAgIHwgOCArLS0tLS0tLQogMyBm
aWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9rdm1fbW11LmggYi9hcmNoL2FybTY0L2luY2x1ZGUv
YXNtL2t2bV9tbXUuaAppbmRleCBiZWZlMzdkNGJjMGU1Li41M2Q4NDZmMWJmZTcwIDEwMDY0NAot
LS0gYS9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL2t2bV9tbXUuaAorKysgYi9hcmNoL2FybTY0L2lu
Y2x1ZGUvYXNtL2t2bV9tbXUuaApAQCAtOTEsNiArOTEsNyBAQCBhbHRlcm5hdGl2ZV9jYl9lbmQK
IAogdm9pZCBrdm1fdXBkYXRlX3ZhX21hc2soc3RydWN0IGFsdF9pbnN0ciAqYWx0LAogCQkJX19s
ZTMyICpvcmlncHRyLCBfX2xlMzIgKnVwZHB0ciwgaW50IG5yX2luc3QpOwordm9pZCBrdm1fY29t
cHV0ZV9sYXlvdXQodm9pZCk7CiAKIHN0YXRpYyBpbmxpbmUgdW5zaWduZWQgbG9uZyBfX2tlcm5f
aHlwX3ZhKHVuc2lnbmVkIGxvbmcgdikKIHsKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQva2VybmVs
L3NtcC5jIGIvYXJjaC9hcm02NC9rZXJuZWwvc21wLmMKaW5kZXggZGM5ZmU4NzljMjc5My4uMDJk
NDFlYWUzZGE4NiAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9rZXJuZWwvc21wLmMKKysrIGIvYXJj
aC9hcm02NC9rZXJuZWwvc21wLmMKQEAgLTMxLDYgKzMxLDcgQEAKICNpbmNsdWRlIDxsaW51eC9v
Zi5oPgogI2luY2x1ZGUgPGxpbnV4L2lycV93b3JrLmg+CiAjaW5jbHVkZSA8bGludXgva2V4ZWMu
aD4KKyNpbmNsdWRlIDxsaW51eC9rdm1faG9zdC5oPgogCiAjaW5jbHVkZSA8YXNtL2FsdGVybmF0
aXZlLmg+CiAjaW5jbHVkZSA8YXNtL2F0b21pYy5oPgpAQCAtMzksNiArNDAsNyBAQAogI2luY2x1
ZGUgPGFzbS9jcHV0eXBlLmg+CiAjaW5jbHVkZSA8YXNtL2NwdV9vcHMuaD4KICNpbmNsdWRlIDxh
c20vZGFpZmZsYWdzLmg+CisjaW5jbHVkZSA8YXNtL2t2bV9tbXUuaD4KICNpbmNsdWRlIDxhc20v
bW11X2NvbnRleHQuaD4KICNpbmNsdWRlIDxhc20vbnVtYS5oPgogI2luY2x1ZGUgPGFzbS9wZ3Rh
YmxlLmg+CkBAIC00MDgsNiArNDEwLDggQEAgc3RhdGljIHZvaWQgX19pbml0IGh5cF9tb2RlX2No
ZWNrKHZvaWQpCiAJCQkgICAiQ1BVOiBDUFVzIHN0YXJ0ZWQgaW4gaW5jb25zaXN0ZW50IG1vZGVz
Iik7CiAJZWxzZQogCQlwcl9pbmZvKCJDUFU6IEFsbCBDUFUocykgc3RhcnRlZCBhdCBFTDFcbiIp
OworCWlmIChJU19FTkFCTEVEKENPTkZJR19LVk1fQVJNX0hPU1QpKQorCQlrdm1fY29tcHV0ZV9s
YXlvdXQoKTsKIH0KIAogdm9pZCBfX2luaXQgc21wX2NwdXNfZG9uZSh1bnNpZ25lZCBpbnQgbWF4
X2NwdXMpCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2t2bS92YV9sYXlvdXQuYyBiL2FyY2gvYXJt
NjQva3ZtL3ZhX2xheW91dC5jCmluZGV4IDJjZjdkNGI2MDZjMzguLmRhYjFmZWE0NzUyYWEgMTAw
NjQ0Ci0tLSBhL2FyY2gvYXJtNjQva3ZtL3ZhX2xheW91dC5jCisrKyBiL2FyY2gvYXJtNjQva3Zt
L3ZhX2xheW91dC5jCkBAIC0yMiw3ICsyMiw3IEBAIHN0YXRpYyB1OCB0YWdfbHNiOwogc3RhdGlj
IHU2NCB0YWdfdmFsOwogc3RhdGljIHU2NCB2YV9tYXNrOwogCi1zdGF0aWMgdm9pZCBjb21wdXRl
X2xheW91dCh2b2lkKQorX19pbml0IHZvaWQga3ZtX2NvbXB1dGVfbGF5b3V0KHZvaWQpCiB7CiAJ
cGh5c19hZGRyX3QgaWRtYXBfYWRkciA9IF9fcGFfc3ltYm9sKF9faHlwX2lkbWFwX3RleHRfc3Rh
cnQpOwogCXU2NCBoeXBfdmFfbXNiOwpAQCAtMTEwLDkgKzExMCw2IEBAIHZvaWQgX19pbml0IGt2
bV91cGRhdGVfdmFfbWFzayhzdHJ1Y3QgYWx0X2luc3RyICphbHQsCiAKIAlCVUdfT04obnJfaW5z
dCAhPSA1KTsKIAotCWlmICghaGFzX3ZoZSgpICYmICF2YV9tYXNrKQotCQljb21wdXRlX2xheW91
dCgpOwotCiAJZm9yIChpID0gMDsgaSA8IG5yX2luc3Q7IGkrKykgewogCQl1MzIgcmQsIHJuLCBp
bnNuLCBvaW5zbjsKIApAQCAtMTU2LDkgKzE1Myw2IEBAIHZvaWQga3ZtX3BhdGNoX3ZlY3Rvcl9i
cmFuY2goc3RydWN0IGFsdF9pbnN0ciAqYWx0LAogCQlyZXR1cm47CiAJfQogCi0JaWYgKCF2YV9t
YXNrKQotCQljb21wdXRlX2xheW91dCgpOwotCiAJLyoKIAkgKiBDb21wdXRlIEhZUCBWQSBieSB1
c2luZyB0aGUgc2FtZSBjb21wdXRhdGlvbiBhcyBrZXJuX2h5cF92YSgpCiAJICovCi0tIAoyLjI0
LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
