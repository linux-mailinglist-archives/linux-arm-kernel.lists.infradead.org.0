Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2483212EA8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 15:01:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n8vgci2rjf/lXmIvcSXBUDz4susoo/zd6g1WQ3wA3GQ=; b=mEfbSPHkdTPtdf
	BGjZeCC2LjFn09gvX4q5iGMJyh359/+QOmkLCQVRK+QAm2eG2TyuqBOScWSByDOXgz0Q1DXuhaFGq
	EfUdWjE+5tJlVINrwDhEAhepjGnaO3G4KK9F0ZOQs4CvHyJdox7QDbF4V6GL5TFYNKgvXJAi/wtLj
	BvnNlvJYVEnIMRr8mHdFaCQciBXHRealO/G5KcyLhWM/+voKmSF7aY4xBwcFyeGznueoN8cnBZ9oU
	0TR/H+i9kHt058wLsMpx7aipxDVD9u/LMSUGITDHr0CUP156NirH8sqiplBNWJg770WZ1j68+hJ6u
	WhU9vLS0nIH/Bg6PcGuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMXor-0001Zb-80; Fri, 03 May 2019 13:01:41 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXo2-0000Hz-ER
 for linux-arm-kernel@bombadil.infradead.org; Fri, 03 May 2019 13:00:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5r0eNa4hfshjb+VyA/r2q7SEryAmXJsKilm+w8QZAt8=; b=GbzJabSDI1+TQPPBRXeZgGZhAL
 8sveRmJPmWcObib4d20ejab3Dzc8c9O6WRowbKb6zVQHmOPT8ws0Bt9ZwBQ4VPfelcG370fqjFHIE
 HOor7WHB5TmfneqMLICzD65yuevoG2ep3fSuIf9BblSHxijJNOrJzbaUgoN21JV2G5R1gnNqNypfe
 T50DqP/A7caMp9sjiZw3WlQSJwTly+avn0uRGAHTlgnQaWe38OTv27EMn3PK2HHLOon7AY28uHtcU
 bocJfY8/WjYQ05Jv0Q3EbA1RHb3xR2w3YLzNL6yLTWFI5r/w5uYNUXcQXkLiQ+HRZ2LLfJ/PiOSRQ
 jt4q5cbw==;
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by casper.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXao-0002AC-Eh
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 12:47:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 30B9C15AD;
 Fri,  3 May 2019 05:47:10 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ED90D3F220;
 Fri,  3 May 2019 05:47:06 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 42/56] KVM: arm64: Clarify access behaviour for out-of-range
 SVE register slice IDs
Date: Fri,  3 May 2019 13:44:13 +0100
Message-Id: <20190503124427.190206-43-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503124427.190206-1-marc.zyngier@arm.com>
References: <20190503124427.190206-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_134710_638953_B89FF5AD 
X-CRM114-Status: GOOD (  11.57  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dave Martin <Dave.Martin@arm.com>

The existing documentation for which SVE register slice IDs are
considered out-of-range, and what happens when userspace tries to
access them, is cryptic.

This patch rewords the text with the aim of making it a bit easier to
understand.

No functional change.

Suggested-by: Andrew Jones <drjones@redhat.com>
Signed-off-by: Dave Martin <Dave.Martin@arm.com>
Reviewed-by: Andrew Jones <drjones@redhat.com>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 Documentation/virtual/kvm/api.txt | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/virtual/kvm/api.txt b/Documentation/virtual/kvm/api.txt
index 818ac97fdabc..e410a9f0f0d4 100644
--- a/Documentation/virtual/kvm/api.txt
+++ b/Documentation/virtual/kvm/api.txt
@@ -2159,8 +2159,9 @@ arm64 SVE registers have the following bit patterns:
   0x6050 0000 0015 060 <slice:5>        FFR bits[256*slice + 255 : 256*slice]
   0x6060 0000 0015 ffff                 KVM_REG_ARM64_SVE_VLS pseudo-register
 
-Access to slices beyond the maximum vector length configured for the
-vcpu (i.e., where 16 * slice >= max_vq (**)) will fail with ENOENT.
+Access to register IDs where 2048 * slice >= 128 * max_vq will fail with
+ENOENT.  max_vq is the vcpu's maximum supported vector length in 128-bit
+quadwords: see (**) below.
 
 These registers are only accessible on vcpus for which SVE is enabled.
 See KVM_ARM_VCPU_INIT for details.
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
