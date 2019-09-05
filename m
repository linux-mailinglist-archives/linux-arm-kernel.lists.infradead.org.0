Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD63EAA7DE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 18:03:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zIBEQiDN0HOkwh9HxAsabaNePexb//J/W6baGeIyYUg=; b=n+vtvNkGnm48yt
	N3echK7HmBXw758dr5JgMEWbgAecJaF5NDJ/gzciRX5kPWCi7b/LBpFfoD3nk36Offw2ZPgLmDSqr
	X0ibUB2oSRWPdjI+VC3JGOOeM6A6Op+cKpwwh3Xjr3vwl1kWRjtE8CnnhcxEkQspBYxj5wNaUtEz3
	9tDx8qcX3StlVzAHpjH7jKWo6btVu0MzfjpnArb6dw+Z1OklAKj0BgICDpyV/Hkcs/Rait1c16SoU
	qwbt9sSQe27kqN2mAuB14lzw/K/BQKlC0UBQPGKdbcGNDtMojDQcc7M3+5PRb8SeRaKhDhOFR8cB6
	Br3ApKPuBvILc/6nRCsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5uDx-0003qT-Qa; Thu, 05 Sep 2019 16:03:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5uDn-0003pr-Fo
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 16:02:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 577AE28;
 Thu,  5 Sep 2019 09:02:54 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DB2923F67D;
 Thu,  5 Sep 2019 09:02:52 -0700 (PDT)
From: Marc Zyngier <maz@kernel.org>
To: Peter Maydell <peter.maydell@linaro.org>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Zenghui Yu <yuzenghui@huawei.com>, Will Deacon <will@kernel.org>,
 Eric Auger <eric.auger@redhat.com>
Subject: [PATCH v2] KVM: arm/arm64: vgic: Allow more than 256 vcpus for
 KVM_IRQ_LINE
Date: Thu,  5 Sep 2019 17:02:45 +0100
Message-Id: <20190905160245.20746-1-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_090255_617145_E0801F03 
X-CRM114-Status: GOOD (  16.50  )
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
Cc: qemu-arm@nongnu.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

V2hpbGUgcGFydHMgb2YgdGhlIFZHSUMgc3VwcG9ydCBhIGxhcmdlIG51bWJlciBvZiB2Y3B1cyAo
d2UKYnJhdmVseSBhbGxvdyB1cCB0byA1MTIpLCBvdGhlciBwYXJ0cyBhcmUgbW9yZSBsaW1pdGVk
LgoKT25lIG9mIHRoZXNlIGxpbWl0cyBpcyB2aXNpYmxlIGluIHRoZSBLVk1fSVJRX0xJTkUgaW9j
dGwsIHdoaWNoCm9ubHkgYWxsb3dzIDI1NiB2Y3B1cyB0byBiZSBzaWduYWxsZWQgd2hlbiB1c2lu
ZyB0aGUgQ1BVIG9yIFBQSQp0eXBlcy4gVW5mb3J0dW5hdGVseSwgd2UndmUgY29ybmVyZWQgb3Vy
c2VsdmVzIGJhZGx5IGJ5IGFsbG9jYXRpbmcKYWxsIHRoZSBiaXRzIGluIHRoZSBpcnEgZmllbGQu
CgpTaW5jZSB0aGUgaXJxX3R5cGUgc3ViZmllbGQgKDggYml0IHdpZGUpIGlzIGN1cnJlbnRseSBv
bmx5IHRha2luZwp0aGUgdmFsdWVzIDAsIDEgYW5kIDIgKGFuZCB3ZSBoYXZlIGJlZW4gY2FyZWZ1
bCBub3QgdG8gYWxsb3cgYW55dGhpbmcKZWxzZSksIGxldCdzIHJlZHVjZSB0aGlzIGZpZWxkIHRv
IG9ubHkgNCBiaXRzLCBhbmQgYWxsb2NhdGUgdGhlCnJlbWFpbmluZyA0IGJpdHMgdG8gYSB2Y3B1
Ml9pbmRleCwgd2hpY2ggYWN0cyBhcyBhIG11bHRpcGxpZXI6CgogIHZjcHVfaWQgPSAyNTYgKiB2
Y3B1Ml9pbmRleCArIHZjcHVfaW5kZXgKCldpdGggdGhhdCwgYW5kIGEgbmV3IGNhcGFiaWxpdHkg
KEtWTV9DQVBfQVJNX0lSUV9MSU5FX0xBWU9VVF8yKQphbGxvd2luZyB0aGlzIHRvIGJlIGRpc2Nv
dmVyZWQsIGl0IGJlY29tZXMgcG9zc2libGUgdG8gaW5qZWN0ClBQSXMgdG8gdXAgdG8gNDA5NiB2
Y3B1cy4gQnV0IHBsZWFzZSBqdXN0IGRvbid0LgoKV2hpbHN0IHdlJ3JlIHRoZXJlLCBhZGQgYSBj
bGFyaWZpY2F0aW9uIGFib3V0IHRoZSB1c2Ugb2YgS1ZNX0lSUV9MSU5FCm9uIGFybSwgd2hpY2gg
aXMgbm90IGNvbXBsZXRlbHkgY29uZGl0aW9ubmVkIGJ5IEtWTV9DQVBfSVJRQ0hJUC4KClJlcG9y
dGVkLWJ5OiBaZW5naHVpIFl1IDx5dXplbmdodWlAaHVhd2VpLmNvbT4KUmV2aWV3ZWQtYnk6IEVy
aWMgQXVnZXIgPGVyaWMuYXVnZXJAcmVkaGF0LmNvbT4KUmV2aWV3ZWQtYnk6IFplbmdodWkgWXUg
PHl1emVuZ2h1aUBodWF3ZWkuY29tPgpTaWduZWQtb2ZmLWJ5OiBNYXJjIFp5bmdpZXIgPG1hekBr
ZXJuZWwub3JnPgotLS0KKiBGcm9tIHYxIChodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMTkw
ODE4MTQwNzEwLjIzOTIwLTEtbWF6QGtlcm5lbC5vcmcpCiAgLSBBbHdheXMgc2F5IHRoYXQgd2Ug
c3VwcG9ydCB0aGUgbmV3IGxheW91dCwgbm8gbWF0dGVyIHdoZXRoZXIKICAgIHdlIGhhdmUgYW4g
aW4ta2VybmVsIGlycWNoaXAgb3Igbm90CiAgLSBDbGFyaWZ5IHVzZSBvZiBLVk1fSVJRX0xJTkUg
d3J0IEtWTV9DQVBfSVJRQ0hJUAogIC0gQ29sbGVjdGVkIFJCcwoKIERvY3VtZW50YXRpb24vdmly
dC9rdm0vYXBpLnR4dCAgICB8IDEyICsrKysrKysrKystLQogYXJjaC9hcm0vaW5jbHVkZS91YXBp
L2FzbS9rdm0uaCAgIHwgIDQgKysrLQogYXJjaC9hcm02NC9pbmNsdWRlL3VhcGkvYXNtL2t2bS5o
IHwgIDQgKysrLQogaW5jbHVkZS91YXBpL2xpbnV4L2t2bS5oICAgICAgICAgIHwgIDEgKwogdmly
dC9rdm0vYXJtL2FybS5jICAgICAgICAgICAgICAgIHwgIDIgKysKIDUgZmlsZXMgY2hhbmdlZCwg
MTkgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0
aW9uL3ZpcnQva3ZtL2FwaS50eHQgYi9Eb2N1bWVudGF0aW9uL3ZpcnQva3ZtL2FwaS50eHQKaW5k
ZXggMmQwNjc3NjdiNjE3Li4yNTkzMWNhMWNiMzggMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24v
dmlydC9rdm0vYXBpLnR4dAorKysgYi9Eb2N1bWVudGF0aW9uL3ZpcnQva3ZtL2FwaS50eHQKQEAg
LTc1Myw4ICs3NTMsOCBAQCBpbi1rZXJuZWwgaXJxY2hpcCAoR0lDKSwgYW5kIGZvciBpbi1rZXJu
ZWwgaXJxY2hpcCBjYW4gdGVsbCB0aGUgR0lDIHRvCiB1c2UgUFBJcyBkZXNpZ25hdGVkIGZvciBz
cGVjaWZpYyBjcHVzLiAgVGhlIGlycSBmaWVsZCBpcyBpbnRlcnByZXRlZAogbGlrZSB0aGlzOgog
Ci0gwqBiaXRzOiAgfCAzMSAuLi4gMjQgfCAyMyAgLi4uIDE2IHwgMTUgICAgLi4uICAgIDAgfAot
ICBmaWVsZDogfCBpcnFfdHlwZSAgfCB2Y3B1X2luZGV4IHwgICAgIGlycV9pZCAgICAgfAorIMKg
Yml0czogIHwgIDMxIC4uLiAyOCAgfCAyNyAuLi4gMjQgfCAyMyAgLi4uIDE2IHwgMTUgLi4uIDAg
fAorICBmaWVsZDogfCB2Y3B1Ml9pbmRleCB8IGlycV90eXBlICB8IHZjcHVfaW5kZXggfCAgaXJx
X2lkICB8CiAKIFRoZSBpcnFfdHlwZSBmaWVsZCBoYXMgdGhlIGZvbGxvd2luZyB2YWx1ZXM6CiAt
IGlycV90eXBlWzBdOiBvdXQtb2Yta2VybmVsIEdJQzogaXJxX2lkIDAgaXMgSVJRLCBpcnFfaWQg
MSBpcyBGSVEKQEAgLTc2Niw2ICs3NjYsMTQgQEAgVGhlIGlycV90eXBlIGZpZWxkIGhhcyB0aGUg
Zm9sbG93aW5nIHZhbHVlczoKIAogSW4gYm90aCBjYXNlcywgbGV2ZWwgaXMgdXNlZCB0byBhc3Nl
cnQvZGVhc3NlcnQgdGhlIGxpbmUuCiAKK1doZW4gS1ZNX0NBUF9BUk1fSVJRX0xJTkVfTEFZT1VU
XzIgaXMgc3VwcG9ydGVkLCB0aGUgdGFyZ2V0IHZjcHUgaXMKK2lkZW50aWZpZWQgYXMgKDI1NiAq
IHZjcHUyX2luZGV4ICsgdmNwdV9pbmRleCkuIE90aGVyd2lzZSwgdmNwdTJfaW5kZXgKK211c3Qg
YmUgemVyby4KKworTm90ZSB0aGF0IG9uIGFybS9hcm02NCwgdGhlIEtWTV9DQVBfSVJRQ0hJUCBj
YXBhYmlsaXR5IG9ubHkgY29uZGl0aW9ucworaW5qZWN0aW9uIG9mIGludGVycnVwdHMgZm9yIHRo
ZSBpbi1rZXJuZWwgaXJxY2hpcC4gS1ZNX0lSUV9MSU5FIGNhbiBhbHdheXMKK2JlIHVzZWQgZm9y
IGEgdXNlcnNwYWNlIGludGVycnVwdCBjb250cm9sbGVyLgorCiBzdHJ1Y3Qga3ZtX2lycV9sZXZl
bCB7CiAJdW5pb24gewogCQlfX3UzMiBpcnE7ICAgICAvKiBHU0kgKi8KZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtL2luY2x1ZGUvdWFwaS9hc20va3ZtLmggYi9hcmNoL2FybS9pbmNsdWRlL3VhcGkvYXNt
L2t2bS5oCmluZGV4IGE0MjE3YzFhNWQwMS4uMjc2OTM2MGYxOTVjIDEwMDY0NAotLS0gYS9hcmNo
L2FybS9pbmNsdWRlL3VhcGkvYXNtL2t2bS5oCisrKyBiL2FyY2gvYXJtL2luY2x1ZGUvdWFwaS9h
c20va3ZtLmgKQEAgLTI2Niw4ICsyNjYsMTAgQEAgc3RydWN0IGt2bV92Y3B1X2V2ZW50cyB7CiAj
ZGVmaW5lICAgS1ZNX0RFVl9BUk1fSVRTX0NUUkxfUkVTRVQJCTQKIAogLyogS1ZNX0lSUV9MSU5F
IGlycSBmaWVsZCBpbmRleCB2YWx1ZXMgKi8KKyNkZWZpbmUgS1ZNX0FSTV9JUlFfVkNQVTJfU0hJ
RlQJCTI4CisjZGVmaW5lIEtWTV9BUk1fSVJRX1ZDUFUyX01BU0sJCTB4ZgogI2RlZmluZSBLVk1f
QVJNX0lSUV9UWVBFX1NISUZUCQkyNAotI2RlZmluZSBLVk1fQVJNX0lSUV9UWVBFX01BU0sJCTB4
ZmYKKyNkZWZpbmUgS1ZNX0FSTV9JUlFfVFlQRV9NQVNLCQkweGYKICNkZWZpbmUgS1ZNX0FSTV9J
UlFfVkNQVV9TSElGVAkJMTYKICNkZWZpbmUgS1ZNX0FSTV9JUlFfVkNQVV9NQVNLCQkweGZmCiAj
ZGVmaW5lIEtWTV9BUk1fSVJRX05VTV9TSElGVAkJMApkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9p
bmNsdWRlL3VhcGkvYXNtL2t2bS5oIGIvYXJjaC9hcm02NC9pbmNsdWRlL3VhcGkvYXNtL2t2bS5o
CmluZGV4IDlhNTA3NzE2YWUyZi4uNjdjMjFmOWJkYmFkIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0
L2luY2x1ZGUvdWFwaS9hc20va3ZtLmgKKysrIGIvYXJjaC9hcm02NC9pbmNsdWRlL3VhcGkvYXNt
L2t2bS5oCkBAIC0zMjUsOCArMzI1LDEwIEBAIHN0cnVjdCBrdm1fdmNwdV9ldmVudHMgewogI2Rl
ZmluZSAgIEtWTV9BUk1fVkNQVV9USU1FUl9JUlFfUFRJTUVSCQkxCiAKIC8qIEtWTV9JUlFfTElO
RSBpcnEgZmllbGQgaW5kZXggdmFsdWVzICovCisjZGVmaW5lIEtWTV9BUk1fSVJRX1ZDUFUyX1NI
SUZUCQkyOAorI2RlZmluZSBLVk1fQVJNX0lSUV9WQ1BVMl9NQVNLCQkweGYKICNkZWZpbmUgS1ZN
X0FSTV9JUlFfVFlQRV9TSElGVAkJMjQKLSNkZWZpbmUgS1ZNX0FSTV9JUlFfVFlQRV9NQVNLCQkw
eGZmCisjZGVmaW5lIEtWTV9BUk1fSVJRX1RZUEVfTUFTSwkJMHhmCiAjZGVmaW5lIEtWTV9BUk1f
SVJRX1ZDUFVfU0hJRlQJCTE2CiAjZGVmaW5lIEtWTV9BUk1fSVJRX1ZDUFVfTUFTSwkJMHhmZgog
I2RlZmluZSBLVk1fQVJNX0lSUV9OVU1fU0hJRlQJCTAKZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFw
aS9saW51eC9rdm0uaCBiL2luY2x1ZGUvdWFwaS9saW51eC9rdm0uaAppbmRleCA1ZTNmMTJkNTM1
OWUuLjU0MTRiNjU4OGZiYiAxMDA2NDQKLS0tIGEvaW5jbHVkZS91YXBpL2xpbnV4L2t2bS5oCisr
KyBiL2luY2x1ZGUvdWFwaS9saW51eC9rdm0uaApAQCAtOTk2LDYgKzk5Niw3IEBAIHN0cnVjdCBr
dm1fcHBjX3Jlc2l6ZV9ocHQgewogI2RlZmluZSBLVk1fQ0FQX0FSTV9QVFJBVVRIX0FERFJFU1Mg
MTcxCiAjZGVmaW5lIEtWTV9DQVBfQVJNX1BUUkFVVEhfR0VORVJJQyAxNzIKICNkZWZpbmUgS1ZN
X0NBUF9QTVVfRVZFTlRfRklMVEVSIDE3MworI2RlZmluZSBLVk1fQ0FQX0FSTV9JUlFfTElORV9M
QVlPVVRfMiAxNzQKIAogI2lmZGVmIEtWTV9DQVBfSVJRX1JPVVRJTkcKIApkaWZmIC0tZ2l0IGEv
dmlydC9rdm0vYXJtL2FybS5jIGIvdmlydC9rdm0vYXJtL2FybS5jCmluZGV4IDM1YTA2OTgxNWJh
Zi4uODZjNmFhMWNiNThlIDEwMDY0NAotLS0gYS92aXJ0L2t2bS9hcm0vYXJtLmMKKysrIGIvdmly
dC9rdm0vYXJtL2FybS5jCkBAIC0xOTYsNiArMTk2LDcgQEAgaW50IGt2bV92bV9pb2N0bF9jaGVj
a19leHRlbnNpb24oc3RydWN0IGt2bSAqa3ZtLCBsb25nIGV4dCkKIAljYXNlIEtWTV9DQVBfTVBf
U1RBVEU6CiAJY2FzZSBLVk1fQ0FQX0lNTUVESUFURV9FWElUOgogCWNhc2UgS1ZNX0NBUF9WQ1BV
X0VWRU5UUzoKKwljYXNlIEtWTV9DQVBfQVJNX0lSUV9MSU5FX0xBWU9VVF8yOgogCQlyID0gMTsK
IAkJYnJlYWs7CiAJY2FzZSBLVk1fQ0FQX0FSTV9TRVRfREVWSUNFX0FERFI6CkBAIC04ODgsNiAr
ODg5LDcgQEAgaW50IGt2bV92bV9pb2N0bF9pcnFfbGluZShzdHJ1Y3Qga3ZtICprdm0sIHN0cnVj
dCBrdm1faXJxX2xldmVsICppcnFfbGV2ZWwsCiAKIAlpcnFfdHlwZSA9IChpcnEgPj4gS1ZNX0FS
TV9JUlFfVFlQRV9TSElGVCkgJiBLVk1fQVJNX0lSUV9UWVBFX01BU0s7CiAJdmNwdV9pZHggPSAo
aXJxID4+IEtWTV9BUk1fSVJRX1ZDUFVfU0hJRlQpICYgS1ZNX0FSTV9JUlFfVkNQVV9NQVNLOwor
CXZjcHVfaWR4ICs9ICgoaXJxID4+IEtWTV9BUk1fSVJRX1ZDUFUyX1NISUZUKSAmIEtWTV9BUk1f
SVJRX1ZDUFUyX01BU0spICogKEtWTV9BUk1fSVJRX1ZDUFVfTUFTSyArIDEpOwogCWlycV9udW0g
PSAoaXJxID4+IEtWTV9BUk1fSVJRX05VTV9TSElGVCkgJiBLVk1fQVJNX0lSUV9OVU1fTUFTSzsK
IAogCXRyYWNlX2t2bV9pcnFfbGluZShpcnFfdHlwZSwgdmNwdV9pZHgsIGlycV9udW0sIGlycV9s
ZXZlbC0+bGV2ZWwpOwotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
