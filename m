Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67DED12EBC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 15:03:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jKvHu/Kd27WYQ8ja+FtS7aKF7ox13QNpWXUXjJcdn2E=; b=fblXR+RubYFoFf
	M4NrbmVqqxeKahEKrs5I6KtWlAyj27NMZ4iKd6+sGfH/cMBoaIY08e7uYUFz+Btqj992/nIFkNo2o
	tagLXTKNdQcO+1kIvJY3DCjgR4SJyUnFWzBwbBu0h/rA76VdNTFRqN94Pa68otkj4DJZRLjAo5gwX
	T2m5UTY64cr+8ktKw6maNuNXtSukeopPNu1tx02F8WLaNUcvgxbnmjn9KQkS6OIrCGm7PxEshivYG
	IREMSdHAOctRXFuvnqW9Ij4TqvBkaXKBQFZF1wtNsqGGJ5WvUTfEdQm4C9nSGoHKSRY1FwmsOSOqC
	3fJ3HUDr1J3PpBVsEjsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMXqj-0004MZ-Pz; Fri, 03 May 2019 13:03:37 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXo7-0000Hk-T1
 for linux-arm-kernel@bombadil.infradead.org; Fri, 03 May 2019 13:00:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=inCZ+AwtU3Se3Y2IG/Iy0AJc8rZS9jhAY3yNzRLhPdU=; b=lINB12xwB3UqELQeeEAHqFMRmM
 VjqfjUeAQnsetNcaze8NIBCKDosuoR0runoGD1qMsa9ejdGZvDJE8rZj7B7eiKKWA0Uh9adn0dtGo
 c5ZB5PCdf+6q22Dmyy7qeajSfnlB6b7en/HabPrp0Is4LaRvSz4sa3GCRoMR9o0RUiiqtgfsmA3Zg
 YNIVncdvDKPcVVnGk0tn7ERk8qWvAbUwO7ncUBHGRhiwU9YTu5qK6QcQgfPNh2vfTolOA6h8BEPGC
 1kWFkLBXxc+PSUll2y37hC0DcoezT6Yv7s9rciZyYQstPjqgcq4ikuXjkiKAr5GQneptgq/CFf343
 4JwgLW/A==;
Received: from foss.arm.com ([217.140.101.70])
 by casper.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXa2-000265-CW
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 12:46:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 281E116A3;
 Fri,  3 May 2019 05:46:21 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E4E863F220;
 Fri,  3 May 2019 05:46:17 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 28/56] arm64: KVM: Fix system register enumeration
Date: Fri,  3 May 2019 13:43:59 +0100
Message-Id: <20190503124427.190206-29-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503124427.190206-1-marc.zyngier@arm.com>
References: <20190503124427.190206-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_134622_650152_74FD929F 
X-CRM114-Status: GOOD (  11.43  )
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

The introduction of the SVE registers to userspace started with a
refactoring of the way we expose any register via the ONE_REG
interface.

Unfortunately, this change doesn't exactly behave as expected
if the number of registers is non-zero and consider everything
to be an error. The visible result is that QEMU barfs very early
when creating vcpus.

Make sure we only exit early in case there is an actual error, rather
than a positive number of registers...

Fixes: be25bbb392fa ("KVM: arm64: Factor out core register ID enumeration")
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 arch/arm64/kvm/guest.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c
index 086ab0508d69..4f7b26bbf671 100644
--- a/arch/arm64/kvm/guest.c
+++ b/arch/arm64/kvm/guest.c
@@ -604,22 +604,22 @@ int kvm_arm_copy_reg_indices(struct kvm_vcpu *vcpu, u64 __user *uindices)
 	int ret;
 
 	ret = copy_core_reg_indices(vcpu, uindices);
-	if (ret)
+	if (ret < 0)
 		return ret;
 	uindices += ret;
 
 	ret = copy_sve_reg_indices(vcpu, uindices);
-	if (ret)
+	if (ret < 0)
 		return ret;
 	uindices += ret;
 
 	ret = kvm_arm_copy_fw_reg_indices(vcpu, uindices);
-	if (ret)
+	if (ret < 0)
 		return ret;
 	uindices += kvm_arm_get_fw_num_regs(vcpu);
 
 	ret = copy_timer_indices(vcpu, uindices);
-	if (ret)
+	if (ret < 0)
 		return ret;
 	uindices += NUM_TIMER_REGS;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
