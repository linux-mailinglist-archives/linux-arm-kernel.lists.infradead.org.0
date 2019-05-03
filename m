Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D1D12E6B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 14:48:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2p271//O7ojQAiKlfQAxEpaLTEbQ53zKN8skjyJYCCg=; b=Uhd0f/4yTA5Uqf
	8kLcJNXtTCg0t03+j4LAtrhRWqo13wdKoj6e+ecjGCXFYjDdJuRSMYytxv5OtyF0iAtHyzJ1uk1kN
	ZAG3rhEZvmhg8kfe0Iw9InvxQ5kgwI0maCNn5lYd7XjTEleqmwSPK3mvgI4IB9S08Tw6aU7JwmJr0
	OIPIsmqutAUJVbrFwtTsXJIeYTQFMEBmQq/VHSp8TY1DdcY1x50GSG+H8Zs1bxSife3labw3sIkwj
	cUnLsrt370306sHpKpIQieoHHhVCf7ilJ4B3OIrGlL2f+VZa1rl0qHuNRLAAAGJMh83uWho20H46J
	wg7EX0Zw8SrInCd2nQIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMXbb-0007YT-Hj; Fri, 03 May 2019 12:47:59 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXZu-0005Oc-Iv
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 12:46:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2801D169E;
 Fri,  3 May 2019 05:46:14 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E53323F220;
 Fri,  3 May 2019 05:46:10 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 26/56] KVM: Document errors for KVM_GET_ONE_REG and
 KVM_SET_ONE_REG
Date: Fri,  3 May 2019 13:43:57 +0100
Message-Id: <20190503124427.190206-27-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503124427.190206-1-marc.zyngier@arm.com>
References: <20190503124427.190206-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_054615_271924_FA16003A 
X-CRM114-Status: GOOD (  11.95  )
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

RnJvbTogRGF2ZSBNYXJ0aW4gPERhdmUuTWFydGluQGFybS5jb20+CgpLVk1fR0VUX09ORV9SRUcg
YW5kIEtWTV9TRVRfT05FX1JFRyByZXR1cm4gc29tZSBlcnJvciBjb2RlcyB0aGF0CmFyZSBub3Qg
ZG9jdW1lbnRlZCAoYnV0IGhvcGVmdWxseSBub3Qgc3VycHJpc2luZyBlaXRoZXIpLiAgVG8gZ2l2
ZQphbiBpbmRpY2F0aW9uIG9mIHdoYXQgdGhlc2UgbWF5IG1lYW4sIHRoaXMgcGF0Y2ggYWRkcyBi
cmllZgpkb2N1bWVudGF0aW9uLgoKU2lnbmVkLW9mZi1ieTogRGF2ZSBNYXJ0aW4gPERhdmUuTWFy
dGluQGFybS5jb20+ClNpZ25lZC1vZmYtYnk6IE1hcmMgWnluZ2llciA8bWFyYy56eW5naWVyQGFy
bS5jb20+Ci0tLQogRG9jdW1lbnRhdGlvbi92aXJ0dWFsL2t2bS9hcGkudHh0IHwgNiArKysrKysK
IDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0
aW9uL3ZpcnR1YWwva3ZtL2FwaS50eHQgYi9Eb2N1bWVudGF0aW9uL3ZpcnR1YWwva3ZtL2FwaS50
eHQKaW5kZXggMmQ0ZjdjZTVlOTY3Li5jZDkyMGRkMTE5NWMgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50
YXRpb24vdmlydHVhbC9rdm0vYXBpLnR4dAorKysgYi9Eb2N1bWVudGF0aW9uL3ZpcnR1YWwva3Zt
L2FwaS50eHQKQEAgLTE4NzEsNiArMTg3MSw5IEBAIEFyY2hpdGVjdHVyZXM6IGFsbAogVHlwZTog
dmNwdSBpb2N0bAogUGFyYW1ldGVyczogc3RydWN0IGt2bV9vbmVfcmVnIChpbikKIFJldHVybnM6
IDAgb24gc3VjY2VzcywgbmVnYXRpdmUgdmFsdWUgb24gZmFpbHVyZQorRXJyb3JzOgorIMKgRU5P
RU5UOiDCoMKgbm8gc3VjaCByZWdpc3RlcgorIMKgRUlOVkFMOiDCoMKgb3RoZXIgZXJyb3JzLCBz
dWNoIGFzIGJhZCBzaXplIGVuY29kaW5nIGZvciBhIGtub3duIHJlZ2lzdGVyCiAKIHN0cnVjdCBr
dm1fb25lX3JlZyB7CiAgICAgICAgX191NjQgaWQ7CkBAIC0yMTkyLDYgKzIxOTUsOSBAQCBBcmNo
aXRlY3R1cmVzOiBhbGwKIFR5cGU6IHZjcHUgaW9jdGwKIFBhcmFtZXRlcnM6IHN0cnVjdCBrdm1f
b25lX3JlZyAoaW4gYW5kIG91dCkKIFJldHVybnM6IDAgb24gc3VjY2VzcywgbmVnYXRpdmUgdmFs
dWUgb24gZmFpbHVyZQorRXJyb3JzOgorIMKgRU5PRU5UOiDCoMKgbm8gc3VjaCByZWdpc3Rlcgor
IMKgRUlOVkFMOiDCoMKgb3RoZXIgZXJyb3JzLCBzdWNoIGFzIGJhZCBzaXplIGVuY29kaW5nIGZv
ciBhIGtub3duIHJlZ2lzdGVyCiAKIFRoaXMgaW9jdGwgYWxsb3dzIHRvIHJlY2VpdmUgdGhlIHZh
bHVlIG9mIGEgc2luZ2xlIHJlZ2lzdGVyIGltcGxlbWVudGVkCiBpbiBhIHZjcHUuIFRoZSByZWdp
c3RlciB0byByZWFkIGlzIGluZGljYXRlZCBieSB0aGUgImlkIiBmaWVsZCBvZiB0aGUKLS0gCjIu
MjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
