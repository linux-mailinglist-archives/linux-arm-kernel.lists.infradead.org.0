Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA1F512E2A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 14:46:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XiD9FW+gauPR4CmXJCQHu5HukMgQWgfbxfmJ+uP8yJE=; b=uSCV4EJBca6vmY
	yC6F+bLvIaKv/5r1fltz6NIO7bOQOWFkLFQ++Te3KF0gwTC0wKgG9+DZKstKY0HizjdVb+zMVvDMb
	82gXISU7yZorgXvxJQG2uUYO6oTPYJTGdINKEPRL2IjWDzmZoF7pDzBbCsH/bvDbsIjl7jxN2TDDN
	xVp5nacNkqx52bwAzUokpGGKehEQb/V4d+mTsrqC1fRFp4ZBVb35To7dpaXKDZHQrFBKe/Cvv/coj
	IbFCP6MKpBInksfnSKvb4peMZ61Iwwzge6YFn2dUPxC9IJeXpgEF2ZaLIojglf9wIQ8QpmYPpCDbI
	eYPp4z7C7mzw6ZhIq+zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMXaH-0005hN-0S; Fri, 03 May 2019 12:46:37 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXYw-0002bL-Jh
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 12:45:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 63E3C1684;
 Fri,  3 May 2019 05:45:14 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2CD753F220;
 Fri,  3 May 2019 05:45:11 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 09/56] KVM: arm64: Add a vcpu flag to control SVE visibility
 for the guest
Date: Fri,  3 May 2019 13:43:40 +0100
Message-Id: <20190503124427.190206-10-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503124427.190206-1-marc.zyngier@arm.com>
References: <20190503124427.190206-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_054515_387767_63A460F0 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 Peter Maydell <peter.maydell@linaro.org>, Andrew Jones <drjones@redhat.com>,
 kvm@vger.kernel.org, Julien Thierry <julien.thierry@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Will Deacon <will.deacon@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 "zhang . lei" <zhang.lei@jp.fujitsu.com>, Julien Grall <julien.grall@arm.com>,
 kvmarm@lists.cs.columbia.edu, Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 =?UTF-8?q?Alex=20Benn=C3=A9e?= <alex.bennee@linaro.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogRGF2ZSBNYXJ0aW4gPERhdmUuTWFydGluQGFybS5jb20+CgpTaW5jZSBTVkUgd2lsbCBi
ZSBlbmFibGVkIG9yIGRpc2FibGVkIG9uIGEgcGVyLXZjcHUgYmFzaXMsIGEgZmxhZwppcyBuZWVk
ZWQgaW4gb3JkZXIgdG8gdHJhY2sgd2hpY2ggdmNwdXMgaGF2ZSBpdCBlbmFibGVkLgoKVGhpcyBw
YXRjaCBhZGRzIGEgc3VpdGFibGUgZmxhZyBhbmQgYSBoZWxwZXIgZm9yIGNoZWNraW5nIGl0LgoK
U2lnbmVkLW9mZi1ieTogRGF2ZSBNYXJ0aW4gPERhdmUuTWFydGluQGFybS5jb20+ClJldmlld2Vk
LWJ5OiBBbGV4IEJlbm7DqWUgPGFsZXguYmVubmVlQGxpbmFyby5vcmc+ClRlc3RlZC1ieTogemhh
bmcubGVpIDx6aGFuZy5sZWlAanAuZnVqaXRzdS5jb20+ClNpZ25lZC1vZmYtYnk6IE1hcmMgWnlu
Z2llciA8bWFyYy56eW5naWVyQGFybS5jb20+Ci0tLQogYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9r
dm1faG9zdC5oIHwgNCArKysrCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCgpkaWZm
IC0tZ2l0IGEvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9rdm1faG9zdC5oIGIvYXJjaC9hcm02NC9p
bmNsdWRlL2FzbS9rdm1faG9zdC5oCmluZGV4IDZkMTAxMDBmZjg3MC4uYWQ0ZjdmMDA0NDk4IDEw
MDY0NAotLS0gYS9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL2t2bV9ob3N0LmgKKysrIGIvYXJjaC9h
cm02NC9pbmNsdWRlL2FzbS9rdm1faG9zdC5oCkBAIC0zMjgsNiArMzI4LDEwIEBAIHN0cnVjdCBr
dm1fdmNwdV9hcmNoIHsKICNkZWZpbmUgS1ZNX0FSTTY0X0ZQX0hPU1QJCSgxIDw8IDIpIC8qIGhv
c3QgRlAgcmVncyBsb2FkZWQgKi8KICNkZWZpbmUgS1ZNX0FSTTY0X0hPU1RfU1ZFX0lOX1VTRQko
MSA8PCAzKSAvKiBiYWNrdXAgZm9yIGhvc3QgVElGX1NWRSAqLwogI2RlZmluZSBLVk1fQVJNNjRf
SE9TVF9TVkVfRU5BQkxFRAkoMSA8PCA0KSAvKiBTVkUgZW5hYmxlZCBmb3IgRUwwICovCisjZGVm
aW5lIEtWTV9BUk02NF9HVUVTVF9IQVNfU1ZFCQkoMSA8PCA1KSAvKiBTVkUgZXhwb3NlZCB0byBn
dWVzdCAqLworCisjZGVmaW5lIHZjcHVfaGFzX3N2ZSh2Y3B1KSAoc3lzdGVtX3N1cHBvcnRzX3N2
ZSgpICYmIFwKKwkJCSAgICAoKHZjcHUpLT5hcmNoLmZsYWdzICYgS1ZNX0FSTTY0X0dVRVNUX0hB
U19TVkUpKQogCiAjZGVmaW5lIHZjcHVfZ3BfcmVncyh2KQkJKCYodiktPmFyY2guY3R4dC5ncF9y
ZWdzKQogCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
