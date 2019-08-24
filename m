Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 684E79BDFF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 15:29:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2i9q2lE0LTa+kj7rLTss1Ih6z1zUAIRjwJv7bNmiG+o=; b=S2p63TBpYiqaDQ
	dc29lss2xWHNTS/egLbK/a9p68MS/plQ+hfOe03sBDGmv96AvzmXw1exfDgCSMvnblrdyDcpw4xF5
	Zam7q417QKq4sJyQJhdaTkyC8Dx9aLSJ785KAj5/QIOrQNcSvRFF2adi/c4P/7U6mEJO/q7OXMfWT
	EJ9927jAxUwdqCa6YjpqfsYdkiXWxwK4i+ezknnH8flye3UeoTN6MQsSPDdbx1qiTCbnfXkjT/+am
	D8+RpoDI0FaU/1QIlMaJGSK9NmM44GTKaphMytYrWlJv79yjKIAMznzkofUOMJsc+NHmqcAJMKcEo
	6LBqwCTF3AHCWy2X4AlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1W6i-0005ip-BZ; Sat, 24 Aug 2019 13:29:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1W6U-0005gV-BD
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 13:29:15 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1i1W6P-0006OD-5g; Sat, 24 Aug 2019 15:29:09 +0200
Received: from ukl by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1i1W6L-0002FP-2q; Sat, 24 Aug 2019 15:29:05 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Rob Herring <robh+dt@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH v1 2/2] of: Let of_for_each_phandle fallback to non-negative
 cell_count
Date: Sat, 24 Aug 2019 15:28:46 +0200
Message-Id: <20190824132846.8589-2-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190824132846.8589-1-u.kleine-koenig@pengutronix.de>
References: <20190824132846.8589-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_062914_381872_E7A408E7 
X-CRM114-Status: GOOD (  16.66  )
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
Cc: devicetree@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-mediatek@lists.infradead.org,
 kernel@pengutronix.de, Matthias Brugger <matthias.bgg@gmail.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UmVmZXJlbmNpbmcgZGV2aWNlIHRyZWUgbm9kZXMgZnJvbSBhIHByb3BlcnR5IGFsbG93cyB0byBw
YXNzIGFyZ3VtZW50cy4KVGhpcyBpcyBmb3IgZXhhbXBsZSB1c2VkIGZvciByZWZlcmVuY2luZyBn
cGlvcy4gVGhpcyBsb29rcyBhcyBmb2xsb3dzOgoKCWdwaW9fY3RybDogZ3Bpby1jb250cm9sbGVy
IHsKCQkjZ3Bpby1jZWxscyA9IDwyPgoJCS4uLgoJfQoKCXNvbWVvdGhlcm5vZGUgewoJCWdwaW9z
ID0gPCZncGlvX2N0cmwgNSAwICZncGlvX2N0cmwgMyAwPjsKCQkuLi4KCX0KClRvIGtub3cgdGhl
IG51bWJlciBvZiBhcmd1bWVudHMgdGhpcyBtdXN0IGJlIGVpdGhlciBmaXhlZCwgb3IgdGhlCnJl
ZmVyZW5jZWQgbm9kZSBpcyBjaGVja2VkIGZvciBhICRjZWxsc19uYW1lIChoZXJlOiAiI2dwaW8t
Y2VsbHMiKQpwcm9wZXJ0eSBhbmQgd2l0aCB0aGlzIGluZm9ybWF0aW9uIHRoZSBzdGFydCBvZiB0
aGUgc2Vjb25kIHJlZmVyZW5jZSBjYW4KYmUgZGV0ZXJtaW5lZC4KCkN1cnJlbnRseSByZWd1bGF0
b3JzIGFyZSByZWZlcmVuY2VkIHdpdGggbm8gYWRkaXRpb25hbCBhcmd1bWVudHMuIFRvCmFsbG93
IHNvbWUgb3B0aW9uYWwgYXJndW1lbnRzIHdpdGhvdXQgaGF2aW5nIHRvIGNoYW5nZSBhbGwgcmVm
ZXJlbmNlZApub2RlcyB0aGlzIGNoYW5nZSBpbnRyb2R1Y2VzIGEgd2F5IHRvIHNwZWNpZnkgYSBk
ZWZhdWx0IGNlbGxfY291bnQuIFNvCndoZW4gYSBwaGFuZGxlIGlzIHBhcnNlZCB3ZSBjaGVjayBm
b3IgdGhlICRjZWxsc19uYW1lIHByb3BlcnR5IGFuZCB1c2UKaXQgYXMgYmVmb3JlIGlmIHByZXNl
bnQuIElmIGl0IGlzIG5vdCBwcmVzZW50IHdlIGZhbGwgYmFjayB0bwpjZWxsc19jb3VudCBpZiBu
b24tbmVnYXRpdmUgYW5kIG9ubHkgZmFpbCBpZiBjZWxsc19jb3VudCBpcyBzbWFsbGVyIHRoYW4K
emVyby4KClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdA
cGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJpdmVycy9vZi9iYXNlLmMgfCAyNSArKysrKysrKysrKysr
KysrKy0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL29mL2Jhc2UuYyBiL2RyaXZlcnMvb2YvYmFzZS5j
CmluZGV4IDU1ZTdmNWJiMDU0OS4uMmYyNWQyZGZlY2ZhIDEwMDY0NAotLS0gYS9kcml2ZXJzL29m
L2Jhc2UuYworKysgYi9kcml2ZXJzL29mL2Jhc2UuYwpAQCAtMTMzNSwxMSArMTMzNSwyMCBAQCBp
bnQgb2ZfcGhhbmRsZV9pdGVyYXRvcl9uZXh0KHN0cnVjdCBvZl9waGFuZGxlX2l0ZXJhdG9yICpp
dCkKIAogCQkJaWYgKG9mX3Byb3BlcnR5X3JlYWRfdTMyKGl0LT5ub2RlLCBpdC0+Y2VsbHNfbmFt
ZSwKIAkJCQkJCSAmY291bnQpKSB7Ci0JCQkJcHJfZXJyKCIlcE9GOiBjb3VsZCBub3QgZ2V0ICVz
IGZvciAlcE9GXG4iLAotCQkJCSAgICAgICBpdC0+cGFyZW50LAotCQkJCSAgICAgICBpdC0+Y2Vs
bHNfbmFtZSwKLQkJCQkgICAgICAgaXQtPm5vZGUpOwotCQkJCWdvdG8gZXJyOworCQkJCS8qCisJ
CQkJICogSWYgYm90aCBjZWxsX2NvdW50IGFuZCBjZWxsc19uYW1lIGlzIGdpdmVuLAorCQkJCSAq
IGZhbGwgYmFjayB0byBjZWxsX2NvdW50IGluIGFic2VuY2UKKwkJCQkgKiBvZiB0aGUgY2VsbHNf
bmFtZSBwcm9wZXJ0eQorCQkJCSAqLworCQkJCWlmIChpdC0+Y2VsbF9jb3VudCA+PSAwKSB7CisJ
CQkJCWNvdW50ID0gaXQtPmNlbGxfY291bnQ7CisJCQkJfSBlbHNlIHsKKwkJCQkJcHJfZXJyKCIl
cE9GOiBjb3VsZCBub3QgZ2V0ICVzIGZvciAlcE9GXG4iLAorCQkJCQkgICAgICAgaXQtPnBhcmVu
dCwKKwkJCQkJICAgICAgIGl0LT5jZWxsc19uYW1lLAorCQkJCQkgICAgICAgaXQtPm5vZGUpOwor
CQkJCQlnb3RvIGVycjsKKwkJCQl9CiAJCQl9CiAJCX0gZWxzZSB7CiAJCQljb3VudCA9IGl0LT5j
ZWxsX2NvdW50OwpAQCAtMTUwNSw3ICsxNTE0LDcgQEAgaW50IG9mX3BhcnNlX3BoYW5kbGVfd2l0
aF9hcmdzKGNvbnN0IHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAsIGNvbnN0IGNoYXIgKmxpc3RfbmEK
IHsKIAlpZiAoaW5kZXggPCAwKQogCQlyZXR1cm4gLUVJTlZBTDsKLQlyZXR1cm4gX19vZl9wYXJz
ZV9waGFuZGxlX3dpdGhfYXJncyhucCwgbGlzdF9uYW1lLCBjZWxsc19uYW1lLCAwLAorCXJldHVy
biBfX29mX3BhcnNlX3BoYW5kbGVfd2l0aF9hcmdzKG5wLCBsaXN0X25hbWUsIGNlbGxzX25hbWUs
IC0xLAogCQkJCQkgICAgaW5kZXgsIG91dF9hcmdzKTsKIH0KIEVYUE9SVF9TWU1CT0wob2ZfcGFy
c2VfcGhhbmRsZV93aXRoX2FyZ3MpOwpAQCAtMTU4OCw3ICsxNTk3LDcgQEAgaW50IG9mX3BhcnNl
X3BoYW5kbGVfd2l0aF9hcmdzX21hcChjb25zdCBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wLAogCWlm
ICghcGFzc19uYW1lKQogCQlnb3RvIGZyZWU7CiAKLQlyZXQgPSBfX29mX3BhcnNlX3BoYW5kbGVf
d2l0aF9hcmdzKG5wLCBsaXN0X25hbWUsIGNlbGxzX25hbWUsIDAsIGluZGV4LAorCXJldCA9IF9f
b2ZfcGFyc2VfcGhhbmRsZV93aXRoX2FyZ3MobnAsIGxpc3RfbmFtZSwgY2VsbHNfbmFtZSwgLTEs
IGluZGV4LAogCQkJCQkgICBvdXRfYXJncyk7CiAJaWYgKHJldCkKIAkJZ290byBmcmVlOwpAQCAt
MTc1Niw3ICsxNzY1LDcgQEAgaW50IG9mX2NvdW50X3BoYW5kbGVfd2l0aF9hcmdzKGNvbnN0IHN0
cnVjdCBkZXZpY2Vfbm9kZSAqbnAsIGNvbnN0IGNoYXIgKmxpc3RfbmEKIAlzdHJ1Y3Qgb2ZfcGhh
bmRsZV9pdGVyYXRvciBpdDsKIAlpbnQgcmMsIGN1cl9pbmRleCA9IDA7CiAKLQlyYyA9IG9mX3Bo
YW5kbGVfaXRlcmF0b3JfaW5pdCgmaXQsIG5wLCBsaXN0X25hbWUsIGNlbGxzX25hbWUsIDApOwor
CXJjID0gb2ZfcGhhbmRsZV9pdGVyYXRvcl9pbml0KCZpdCwgbnAsIGxpc3RfbmFtZSwgY2VsbHNf
bmFtZSwgLTEpOwogCWlmIChyYykKIAkJcmV0dXJuIHJjOwogCi0tIAoyLjIwLjEKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
