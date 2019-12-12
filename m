Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6664311D3F6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 18:31:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aVZtEtXwnDw1m5y18rXZUSsJMVZKmFgR/HOSxCvGh2M=; b=HzcJBRff7gwiSB
	CSrwWSpMg4LJOcNZ6meKy0qerCyysA2ksuDUrgnZX6DvwC6Tln2AOGW0CE+8x4y6fUXwCeKUKub/G
	viqH+iVhAipYQNUVnMC6xuQc99+AfCWGE3ne+lrryM4HXQ7h0RBTg9u5rD+Fgu95Bu/nbbI3N2LIX
	+ryXX0YmejiYb5JezJpbkfQnVCuH/omNgE4yKQyOnp/2gSM34Au5k1Xj/buHyt2c5f0EuJWbhssuz
	gS2oeuD1ZhIZnfzxyA3PGctWz4ZY5QyHTPA/3xHXcqmkKRkuoAmGr6xtGIBCP9UxKWApIWWOVldcn
	3n6cd60BQ5I4zX04UaDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifSIh-0007vv-7b; Thu, 12 Dec 2019 17:30:55 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifSGf-0005AL-L2
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 17:28:53 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by cheepnis.misterjones.org with esmtpsa
 (TLSv1.2:DHE-RSA-AES128-GCM-SHA256:128) (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1ifSGa-00069s-F9; Thu, 12 Dec 2019 18:28:44 +0100
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 7/8] KVM: arm64: Ensure 'params' is initialised when looking
 up sys register
Date: Thu, 12 Dec 2019 17:28:23 +0000
Message-Id: <20191212172824.11523-8-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191212172824.11523-1-maz@kernel.org>
References: <20191212172824.11523-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, rkrcmar@redhat.com,
 alexandru.elisei@arm.com, ard.biesheuvel@linaro.org, christoffer.dall@arm.com,
 eric.auger@redhat.com, james.morse@arm.com, justin.he@arm.com,
 mark.rutland@arm.com, linmiaohe@huawei.com, steven.price@arm.com,
 will@kernel.org, kvm@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, stable@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_092849_829438_384125E7 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Miaohe Lin <linmiaohe@huawei.com>,
 Jia He <justin.he@arm.com>, kvm@vger.kernel.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon <will@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, stable@vger.kernel.org,
 Steven Price <steven.price@arm.com>, Eric Auger <eric.auger@redhat.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogV2lsbCBEZWFjb24gPHdpbGxAa2VybmVsLm9yZz4KCkNvbW1pdCA0YjkyN2I5NGQ1ZGYg
KCJLVk06IGFybS9hcm02NDogdmdpYzogSW50cm9kdWNlIGZpbmRfcmVnX2J5X2lkKCkiKQppbnRy
b2R1Y2VkICdmaW5kX3JlZ19ieV9pZCgpJywgd2hpY2ggbG9va3MgdXAgYSBzeXN0ZW0gcmVnaXN0
ZXIgb25seSBpZgp0aGUgJ2lkJyBpbmRleCBwYXJhbWV0ZXIgaWRlbnRpZmllcyBhIHZhbGlkIHN5
c3RlbSByZWdpc3Rlci4gQXMgcGFydCBvZgp0aGUgcGF0Y2gsIGV4aXN0aW5nIGNhbGxlcnMgb2Yg
J2ZpbmRfcmVnKCknIHdlcmUgcG9ydGVkIG92ZXIgdG8gdGhlIG5ldwppbnRlcmZhY2UsIGJ1dCB0
aGlzIGJyZWFrcyAnaW5kZXhfdG9fc3lzX3JlZ19kZXNjKCknIGluIHRoZSBjYXNlIHRoYXQgdGhl
CmluaXRpYWwgbG9va3VwIGluIHRoZSB2Q1BVIHRhcmdldCB0YWJsZSBmYWlscyBiZWNhdXNlIHdl
IHdpbGwgdGhlbiBjYWxsCmludG8gJ2ZpbmRfcmVnKCknIGZvciB0aGUgc3lzdGVtIHJlZ2lzdGVy
IHRhYmxlIHdpdGggYW4gdW5pbml0aWFsaXNlZAoncGFyYW0nIGFzIHRoZSBrZXkgdG8gdGhlIGxv
b2t1cC4KCkdDQyAxMCBpcyBicmlnaHQgZW5vdWdoIHRvIHNwb3QgdGhpcyAoYW1vbmdzdCBhIHRv
bm5lIG9mIGZhbHNlIHBvc2l0aXZlcywKYnV0IGhleSEpOgoKICB8IGFyY2gvYXJtNjQva3ZtL3N5
c19yZWdzLmM6IEluIGZ1bmN0aW9uIOKAmGluZGV4X3RvX3N5c19yZWdfZGVzYy5wYXJ0LjAuaXNy
YeKAmToKICB8IGFyY2gvYXJtNjQva3ZtL3N5c19yZWdzLmM6OTgzOjMzOiB3YXJuaW5nOiDigJhw
YXJhbXMuT3Ay4oCZIG1heSBiZSB1c2VkIHVuaW5pdGlhbGl6ZWQgaW4gdGhpcyBmdW5jdGlvbiBb
LVdtYXliZS11bmluaXRpYWxpemVkXQogIHwgICA5ODMgfCAgICh1MzIpKHgpLT5DUm4sICh1MzIp
KHgpLT5DUm0sICh1MzIpKHgpLT5PcDIpOwogIHwgWy4uLl0KClJldmVydCB0aGUgaHVuayBvZiA0
YjkyN2I5NGQ1ZGYgd2hpY2ggYnJlYWtzICdpbmRleF90b19zeXNfcmVnX2Rlc2MoKScgc28KdGhh
dCB0aGUgb2xkIGJlaGF2aW91ciBvZiBjaGVja2luZyB0aGUgaW5kZXggdXBmcm9udCBpcyByZXN0
b3JlZC4KCkZpeGVzOiA0YjkyN2I5NGQ1ZGYgKCJLVk06IGFybS9hcm02NDogdmdpYzogSW50cm9k
dWNlIGZpbmRfcmVnX2J5X2lkKCkiKQpTaWduZWQtb2ZmLWJ5OiBXaWxsIERlYWNvbiA8d2lsbEBr
ZXJuZWwub3JnPgpTaWduZWQtb2ZmLWJ5OiBNYXJjIFp5bmdpZXIgPG1hekBrZXJuZWwub3JnPgpD
YzogPHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmc+Ckxpbms6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L3IvMjAxOTEyMTIwOTQwNDkuMTI0MzctMS13aWxsQGtlcm5lbC5vcmcKLS0tCiBhcmNoL2FybTY0
L2t2bS9zeXNfcmVncy5jIHwgNSArKysrLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQva3ZtL3N5c19yZWdzLmMg
Yi9hcmNoL2FybTY0L2t2bS9zeXNfcmVncy5jCmluZGV4IGJkMmFjMzc5NmQ4ZC4uZDc4YjcyNmQ0
NzIyIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2t2bS9zeXNfcmVncy5jCisrKyBiL2FyY2gvYXJt
NjQva3ZtL3N5c19yZWdzLmMKQEAgLTIzNjQsOCArMjM2NCwxMSBAQCBzdGF0aWMgY29uc3Qgc3Ry
dWN0IHN5c19yZWdfZGVzYyAqaW5kZXhfdG9fc3lzX3JlZ19kZXNjKHN0cnVjdCBrdm1fdmNwdSAq
dmNwdSwKIAlpZiAoKGlkICYgS1ZNX1JFR19BUk1fQ09QUk9DX01BU0spICE9IEtWTV9SRUdfQVJN
NjRfU1lTUkVHKQogCQlyZXR1cm4gTlVMTDsKIAorCWlmICghaW5kZXhfdG9fcGFyYW1zKGlkLCAm
cGFyYW1zKSkKKwkJcmV0dXJuIE5VTEw7CisKIAl0YWJsZSA9IGdldF90YXJnZXRfdGFibGUodmNw
dS0+YXJjaC50YXJnZXQsIHRydWUsICZudW0pOwotCXIgPSBmaW5kX3JlZ19ieV9pZChpZCwgJnBh
cmFtcywgdGFibGUsIG51bSk7CisJciA9IGZpbmRfcmVnKCZwYXJhbXMsIHRhYmxlLCBudW0pOwog
CWlmICghcikKIAkJciA9IGZpbmRfcmVnKCZwYXJhbXMsIHN5c19yZWdfZGVzY3MsIEFSUkFZX1NJ
WkUoc3lzX3JlZ19kZXNjcykpOwogCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
