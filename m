Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2F612EAB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 15:02:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jEl7wbwNCjVP2Z3gsrH6Mz35hGSZ9B7rB/2uj0afhlE=; b=ZNU+s/W+hjD3jq
	2Sk3VcpxC36Bmlcqtzxszbz9g4yBy1niPhb3NbqyXN6N2NTNFrK5uLJwoQIgwn/v/rEVW3Q4ohtSk
	uoorUUnX0YPqscCHYLkSWVd3XL6IMlm/e3jc3VdhJHQ1srbWLxfwDWVXyOhza01RtSmqDQ3EhAnfB
	xi91ilQrgsr0GbsOhsFaac2lVPgenGeOx6jVKgHVpbb+ghgZJDIIxzK9RqNSqIHhI8PXqlpNc34nL
	HbCpWRuV/rAHrXzLqWSUI8M6Ml+3q3Ll3cIL1kh8PRmwm6krgbDJN4Eglt8PGULOaHrcHnGs/1ayS
	1rMczO5DXpPUkvBBCoag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMXpC-00020u-3j; Fri, 03 May 2019 13:02:02 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXo2-0000Tx-RP
 for linux-arm-kernel@bombadil.infradead.org; Fri, 03 May 2019 13:00:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lopRP9vwwisAAHRiobtWNpSaw7WuS1moPFtqPYnFuXM=; b=qPWQgYk30HamOh9RdgUYoPH19v
 4Z/ZU857QTFmRDx59cwUBDLrW1wXDAs7dWDzeYV4gTSXeSIDKfzBdcItDGY4+5VAH/y7sr0DFJWz6
 jkB7fB6inQjgRutbRuJVBud3Np3Ht244tkMVohNwoYSkP7lnNBGgkA+MkHEUTGxqfhsFn4YhPA9lO
 pkX1D/F4kPmq+Qz/psxu+PbIvdfjTR1TOaFrjX6TMr9+MztdgeV/AushXwve0RvLC0IhydgQpST7s
 JDZliWS18XVWO6MCHeV/j7qMwuhXpkf6finNI2R0pwsbLmc2MkkkY0aVorMfiw3+Y9kUahmKYRm0G
 qNuRnu4Q==;
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by casper.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXak-0002AC-W0
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 12:47:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AA8DE15AD;
 Fri,  3 May 2019 05:47:06 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 736623F220;
 Fri,  3 May 2019 05:47:03 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 41/56] KVM: Clarify KVM_{SET,
 GET}_ONE_REG error code documentation
Date: Fri,  3 May 2019 13:44:12 +0100
Message-Id: <20190503124427.190206-42-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503124427.190206-1-marc.zyngier@arm.com>
References: <20190503124427.190206-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_134707_385234_E8093C81 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-5.0 points, 5.0 required)
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

RnJvbTogRGF2ZSBNYXJ0aW4gPERhdmUuTWFydGluQGFybS5jb20+CgpUaGUgY3VycmVudCBlcnJv
ciBjb2RlIGRvY3VtZW50YXRpb24gZm9yIEtWTV9HRVRfT05FX1JFRyBhbmQKS1ZNX1NFVF9PTkVf
UkVHIGNvdWxkIGJlIHJlYWQgYXMgaW1wbHlpbmcgdGhhdCBhbGwgYXJjaGl0ZWN0dXJlcwppbXBs
ZW1lbnQgdGhlc2UgZXJyb3IgY29kZXMsIG9yIHRoYXQgS1ZNIGd1YXJhbnRlZXMgd2hpY2ggZXJy
b3IKY29kZSBpcyByZXR1cm5lZCBpbiBhIHBhcnRpY3VsYXIgc2l0dWF0aW9uLgoKQmVjYXVzZSB0
aGlzIGlzIG5vdCByZWFsbHkgdGhlIGNhc2UsIHRoaXMgcGF0Y2ggd2F0ZXJzIGRvd24gdGhlCmRv
Y3VtZW50YXRpb24gZXhwbGljaXRseSB0byByZW1vdmUgc3VjaCBndWFyYW50ZWVzLgoKRVBFUk0g
aXMgbWFya2VkIGFzIGFybTY0LXNwZWNpZmljLCBzaW5jZSBmb3Igbm93IGFybTY0IHJlYWxseSBp
cwp0aGUgb25seSBhcmNoaXRlY3R1cmUgdGhhdCB5aWVsZHMgdGhpcyBlcnJvciBjb2RlIGZvciB0
aGUKZmluYWxpemF0aW9uLXJlcXVpcmVkIGNhc2UuICBLZWVwaW5nIHRoaXMgYXMgYSBkaXN0aW5j
dCBlcnJvciBjb2RlCmlzIHVzZWZ1bCBob3dldmVyIGZvciBkZWJ1Z2dpbmcgZHVlIHRvIHRoZSBz
dGF0ZWZ1bG5lc3Mgb2YgdGhlIEFQSQppbiB0aGlzIGluc3RhbmNlLgoKTm8gZnVuY3Rpb25hbCBj
aGFuZ2UuCgpTdWdnZXN0ZWQtYnk6IEFuZHJldyBKb25lcyA8ZHJqb25lc0ByZWRoYXQuY29tPgpG
aXhlczogMzk1ZjU2MmYyYjRjICgiS1ZNOiBEb2N1bWVudCBlcnJvcnMgZm9yIEtWTV9HRVRfT05F
X1JFRyBhbmQgS1ZNX1NFVF9PTkVfUkVHIikKRml4ZXM6IDUwMDM2YWQwNmI3ZiAoIktWTTogYXJt
NjQvc3ZlOiBEb2N1bWVudCBLVk0gQVBJIGV4dGVuc2lvbnMgZm9yIFNWRSIpClNpZ25lZC1vZmYt
Ynk6IERhdmUgTWFydGluIDxEYXZlLk1hcnRpbkBhcm0uY29tPgpSZXZpZXdlZC1ieTogQW5kcmV3
IEpvbmVzIDxkcmpvbmVzQHJlZGhhdC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hcmMgWnluZ2llciA8
bWFyYy56eW5naWVyQGFybS5jb20+Ci0tLQogRG9jdW1lbnRhdGlvbi92aXJ0dWFsL2t2bS9hcGku
dHh0IHwgMTQgKysrKysrKysrLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyks
IDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi92aXJ0dWFsL2t2bS9h
cGkudHh0IGIvRG9jdW1lbnRhdGlvbi92aXJ0dWFsL2t2bS9hcGkudHh0CmluZGV4IDU1MTlkZjBk
M2VkMC4uODE4YWM5N2ZkYWJjIDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL3ZpcnR1YWwva3Zt
L2FwaS50eHQKKysrIGIvRG9jdW1lbnRhdGlvbi92aXJ0dWFsL2t2bS9hcGkudHh0CkBAIC0xODcz
LDggKzE4NzMsMTAgQEAgUGFyYW1ldGVyczogc3RydWN0IGt2bV9vbmVfcmVnIChpbikKIFJldHVy
bnM6IDAgb24gc3VjY2VzcywgbmVnYXRpdmUgdmFsdWUgb24gZmFpbHVyZQogRXJyb3JzOgogIMKg
RU5PRU5UOiDCoMKgbm8gc3VjaCByZWdpc3RlcgotIMKgRVBFUk06IMKgwqDCoHJlZ2lzdGVyIGFj
Y2VzcyBmb3JiaWRkZW4gZm9yIGFyY2hpdGVjdHVyZS1kZXBlbmRlbnQgcmVhc29ucwotIMKgRUlO
VkFMOiDCoMKgb3RoZXIgZXJyb3JzLCBzdWNoIGFzIGJhZCBzaXplIGVuY29kaW5nIGZvciBhIGtu
b3duIHJlZ2lzdGVyCisgwqBFSU5WQUw6IMKgwqBpbnZhbGlkIHJlZ2lzdGVyIElELCBvciBubyBz
dWNoIHJlZ2lzdGVyCisgwqBFUEVSTTogwqDCoMKgKGFybTY0KSByZWdpc3RlciBhY2Nlc3Mgbm90
IGFsbG93ZWQgYmVmb3JlIHZjcHUgZmluYWxpemF0aW9uCisoVGhlc2UgZXJyb3IgY29kZXMgYXJl
IGluZGljYXRpdmUgb25seTogZG8gbm90IHJlbHkgb24gYSBzcGVjaWZpYyBlcnJvcgorY29kZSBi
ZWluZyByZXR1cm5lZCBpbiBhIHNwZWNpZmljIHNpdHVhdGlvbi4pCiAKIHN0cnVjdCBrdm1fb25l
X3JlZyB7CiAgICAgICAgX191NjQgaWQ7CkBAIC0yMjYwLDEwICsyMjYyLDEyIEBAIEFyY2hpdGVj
dHVyZXM6IGFsbAogVHlwZTogdmNwdSBpb2N0bAogUGFyYW1ldGVyczogc3RydWN0IGt2bV9vbmVf
cmVnIChpbiBhbmQgb3V0KQogUmV0dXJuczogMCBvbiBzdWNjZXNzLCBuZWdhdGl2ZSB2YWx1ZSBv
biBmYWlsdXJlCi1FcnJvcnM6CitFcnJvcnMgaW5jbHVkZToKICDCoEVOT0VOVDogwqDCoG5vIHN1
Y2ggcmVnaXN0ZXIKLSDCoEVQRVJNOiDCoMKgwqByZWdpc3RlciBhY2Nlc3MgZm9yYmlkZGVuIGZv
ciBhcmNoaXRlY3R1cmUtZGVwZW5kZW50IHJlYXNvbnMKLSDCoEVJTlZBTDogwqDCoG90aGVyIGVy
cm9ycywgc3VjaCBhcyBiYWQgc2l6ZSBlbmNvZGluZyBmb3IgYSBrbm93biByZWdpc3RlcgorIMKg
RUlOVkFMOiDCoMKgaW52YWxpZCByZWdpc3RlciBJRCwgb3Igbm8gc3VjaCByZWdpc3RlcgorIMKg
RVBFUk06IMKgwqDCoChhcm02NCkgcmVnaXN0ZXIgYWNjZXNzIG5vdCBhbGxvd2VkIGJlZm9yZSB2
Y3B1IGZpbmFsaXphdGlvbgorKFRoZXNlIGVycm9yIGNvZGVzIGFyZSBpbmRpY2F0aXZlIG9ubHk6
IGRvIG5vdCByZWx5IG9uIGEgc3BlY2lmaWMgZXJyb3IKK2NvZGUgYmVpbmcgcmV0dXJuZWQgaW4g
YSBzcGVjaWZpYyBzaXR1YXRpb24uKQogCiBUaGlzIGlvY3RsIGFsbG93cyB0byByZWNlaXZlIHRo
ZSB2YWx1ZSBvZiBhIHNpbmdsZSByZWdpc3RlciBpbXBsZW1lbnRlZAogaW4gYSB2Y3B1LiBUaGUg
cmVnaXN0ZXIgdG8gcmVhZCBpcyBpbmRpY2F0ZWQgYnkgdGhlICJpZCIgZmllbGQgb2YgdGhlCi0t
IAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
