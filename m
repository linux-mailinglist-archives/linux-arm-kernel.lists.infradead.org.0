Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF9712EB2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 15:03:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vpWEEduK/VLM1d1hpIECnxYc3MOzEa7qNJ2GpO39FVw=; b=kBWPgn5KIhX7j2
	CdyCfFuf9rER9Bl5HOS5VbyvV5U1AzneQKWGjdDu5rkn6GARv/cDOvtMGTaZ9mJ+MS6nZsB46XL0c
	bJakKJ9Q6d82rOgYGTjRh23nxPYCncefNnYozzdNTgroUkmaYIxpKMYP2L83BhPMmkP4nSY/vz5EX
	xMQUqw8URmWbKOZGhDrmJigvnDtBm9ryV16WJ3qWAtKPylhr6LuNFTar/y/1DF0Jmi7Gy7Ba8kWPW
	WMht+5AL7KnjgiI49AoEg03l/tINii4UGj7+u+ihK/4yT7uXlD355JSuZLBS+JOxnA/CnaIDNQewW
	LLrL6hy47t8CqS6YSGuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMXq4-0003It-Vg; Fri, 03 May 2019 13:02:57 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXo5-0000Hz-Qm
 for linux-arm-kernel@bombadil.infradead.org; Fri, 03 May 2019 13:00:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=k8Cxj3HkKO6y0B4Ta4gn1juOdZWyS1Q72cYmYNOe23I=; b=GHMKl7f2GXSWvFcmTNdkT68Nkn
 c/meeLHJpRpJxVra6Vsn25s5KGw8k1apPnygmjgPBJtLbC2p+kNPZ2XfURHUOoDpl7DeAJf3nuBg/
 J9zrXiXPxt0jE5rBgrp2chiw4Z/boutOnSYJLKOneA8FbgFI3t8kIAcfah0T/zWmsvW6MEi6LY6Cx
 EhWxXnwB3eEROSfxKK1f2xAAxI4zLBo81IAZGgUUEnZcwVqiOTcUq32UCbevpWYKphQ9dRXSYfQkM
 l/Qw10Kt9OWl+sQC7A/gwQMwgWbzfPxmIJmSmUvhnvKKxcvQwqC1iq593M7DwgNzjmh0p2ERwxHXf
 aPuT4A7Q==;
Received: from foss.arm.com ([217.140.101.70])
 by casper.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXaC-000265-2x
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 12:46:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A3B7E16A3;
 Fri,  3 May 2019 05:46:31 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6B8B53F220;
 Fri,  3 May 2019 05:46:28 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 31/56] KVM: arm: Make vcpu finalization stubs into inline
 functions
Date: Fri,  3 May 2019 13:44:02 +0100
Message-Id: <20190503124427.190206-32-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503124427.190206-1-marc.zyngier@arm.com>
References: <20190503124427.190206-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_134632_283062_19CB9896 
X-CRM114-Status: GOOD (  10.96  )
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

The vcpu finalization stubs kvm_arm_vcpu_finalize() and
kvm_arm_vcpu_is_finalized() are currently #defines for ARM, which
limits the type-checking that the compiler can do at runtime.

The only reason for them to be #defines was to avoid reliance on
the definition of struct kvm_vcpu, which is not available here due
to circular #include problems.  However, because these are stubs
containing no code, they don't need the definition of struct
kvm_vcpu after all; only a declaration is needed (which is
available already).

So in the interests of cleanliness, this patch converts them to
inline functions.

No functional change.

Suggested-by: Andrew Jones <drjones@redhat.com>
Signed-off-by: Dave Martin <Dave.Martin@arm.com>
Reviewed-by: Andrew Jones <drjones@redhat.com>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 arch/arm/include/asm/kvm_host.h | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/kvm_host.h b/arch/arm/include/asm/kvm_host.h
index d95627393353..7feddacbc207 100644
--- a/arch/arm/include/asm/kvm_host.h
+++ b/arch/arm/include/asm/kvm_host.h
@@ -412,7 +412,14 @@ static inline int kvm_arm_setup_stage2(struct kvm *kvm, unsigned long type)
 	return 0;
 }
 
-#define kvm_arm_vcpu_finalize(vcpu, what) (-EINVAL)
-#define kvm_arm_vcpu_is_finalized(vcpu) true
+static inline int kvm_arm_vcpu_finalize(struct kvm_vcpu *vcpu, int what)
+{
+	return -EINVAL;
+}
+
+static inline bool kvm_arm_vcpu_is_finalized(struct kvm_vcpu *vcpu)
+{
+	return true;
+}
 
 #endif /* __ARM_KVM_HOST_H__ */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
