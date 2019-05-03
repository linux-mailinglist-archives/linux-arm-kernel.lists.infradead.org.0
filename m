Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D326D12E0D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 14:45:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5vMdgetif+p8H4BB82oLP611A1At78botK5qoO1QaNQ=; b=BjIfF0KGyXyMhz
	2luqJzmhkGeV/oQmrMa45qZNHKzLvmIuUpAMkTZoH9dBQop8o+07HixHhOSejETffVYA5UV3th2NQ
	Sg2AFzux9t82wrg/ntL2QI84lHzHR3hpauPik7yGZdaOjlPo34WmIf8M8dDVnnhYzjMUQc7wSRRu2
	8Ia9LXj9b/dI+jrvxAHlKWt1NZuu22L9LfFT50bWLcEieQgsw79lLE44LXwrcxvpcCsakSLEx9kyS
	E8voCViONsy3wPIorozNzGeK4AD45HoQaZn2vjRkeKndh+Fm8hfohYOkj342M5kuVNwbgUzGd6+Ua
	HHdtPUrVPFGrGBI13dVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMXZX-0004it-TS; Fri, 03 May 2019 12:45:51 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXYg-0002XQ-Ka
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 12:45:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CB8D1374;
 Fri,  3 May 2019 05:44:56 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 94B493F220;
 Fri,  3 May 2019 05:44:53 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 04/56] KVM: arm64: Refactor kvm_arm_num_regs() for easier
 maintenance
Date: Fri,  3 May 2019 13:43:35 +0100
Message-Id: <20190503124427.190206-5-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503124427.190206-1-marc.zyngier@arm.com>
References: <20190503124427.190206-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_054459_524543_FDC5E944 
X-CRM114-Status: GOOD (  15.23  )
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

RnJvbTogRGF2ZSBNYXJ0aW4gPERhdmUuTWFydGluQGFybS5jb20+Cgprdm1fYXJtX251bV9yZWdz
KCkgYWRkcyB0b2dldGhlciB2YXJpb3VzIHBhcnRpYWwgcmVnaXN0ZXIgY291bnRzIGluCmEgZnJl
ZWZvcm0gc3VtIGV4cHJlc3Npb24sIHdoaWNoIG1ha2VzIGl0IGhhcmRlciB0aGFuIG5lY2Vzc2Fy
eSB0bwpyZWFkIGRpZmZzIHRoYXQgYWRkLCBtb2RpZnkgb3IgcmVtb3ZlIGEgc2luZ2xlIHRlcm0g
aW4gdGhlIHN1bQood2hpY2ggaXMgZXhwZWN0ZWQgdG8gdGhlIGNvbW1vbiBjYXNlIHVuZGVyIG1h
aW50ZW5hbmNlKS4KClRoaXMgcGF0Y2ggcmVmYWN0b3JzIHRoZSBjb2RlIHRvIGFkZCB0aGUgdGVy
bSBvbmUgcGVyIGxpbmUsIGZvcgptYXhpbXVtIHJlYWRhYmlsaXR5LgoKU2lnbmVkLW9mZi1ieTog
RGF2ZSBNYXJ0aW4gPERhdmUuTWFydGluQGFybS5jb20+ClJldmlld2VkLWJ5OiBBbGV4IEJlbm7D
qWUgPGFsZXguYmVubmVlQGxpbmFyby5vcmc+ClRlc3RlZC1ieTogemhhbmcubGVpIDx6aGFuZy5s
ZWlAanAuZnVqaXRzdS5jb20+ClNpZ25lZC1vZmYtYnk6IE1hcmMgWnluZ2llciA8bWFyYy56eW5n
aWVyQGFybS5jb20+Ci0tLQogYXJjaC9hcm02NC9rdm0vZ3Vlc3QuYyB8IDEwICsrKysrKysrLS0K
IDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvYXJjaC9hcm02NC9rdm0vZ3Vlc3QuYyBiL2FyY2gvYXJtNjQva3ZtL2d1ZXN0LmMKaW5k
ZXggZGQ0MzZhNTBmY2U3Li42MjUxNGNiYTk1Y2EgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQva3Zt
L2d1ZXN0LmMKKysrIGIvYXJjaC9hcm02NC9rdm0vZ3Vlc3QuYwpAQCAtMjU4LDggKzI1OCwxNCBA
QCBzdGF0aWMgaW50IGdldF90aW1lcl9yZWcoc3RydWN0IGt2bV92Y3B1ICp2Y3B1LCBjb25zdCBz
dHJ1Y3Qga3ZtX29uZV9yZWcgKnJlZykKICAqLwogdW5zaWduZWQgbG9uZyBrdm1fYXJtX251bV9y
ZWdzKHN0cnVjdCBrdm1fdmNwdSAqdmNwdSkKIHsKLQlyZXR1cm4gbnVtX2NvcmVfcmVncygpICsg
a3ZtX2FybV9udW1fc3lzX3JlZ19kZXNjcyh2Y3B1KQotCQkrIGt2bV9hcm1fZ2V0X2Z3X251bV9y
ZWdzKHZjcHUpCSsgTlVNX1RJTUVSX1JFR1M7CisJdW5zaWduZWQgbG9uZyByZXMgPSAwOworCisJ
cmVzICs9IG51bV9jb3JlX3JlZ3MoKTsKKwlyZXMgKz0ga3ZtX2FybV9udW1fc3lzX3JlZ19kZXNj
cyh2Y3B1KTsKKwlyZXMgKz0ga3ZtX2FybV9nZXRfZndfbnVtX3JlZ3ModmNwdSk7CisJcmVzICs9
IE5VTV9USU1FUl9SRUdTOworCisJcmV0dXJuIHJlczsKIH0KIAogLyoqCi0tIAoyLjIwLjEKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
