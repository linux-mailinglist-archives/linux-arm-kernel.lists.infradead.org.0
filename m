Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 316826BA43
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 12:32:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=AY8Gv39tqKXvRByy1LWE4yRQav+TXwxkT3ktggyxi0Q=; b=FXk
	U+XZdQAo9wwoFTUSFIGUa0j0wKgLJ34cHOrfvj9ue3GOWWkIYolf4N9SgUH9Kb24U+f1y8FzLx1uk
	BALHukiWtJFJl22hEW073sVqvt/4w/s7t4BBUB9M+QLnJUBPwFgraIe3SkHl6to4ntUj5T/1f/jxh
	Xd/IaLGA6s4WMAxc7kRDbYWg/Rk2WOPf/rIKBG7oYMUBcnZF58iqathEraO21EYIbzz2e/OqMG5rR
	jVsAL9//u/IKkalGjfLKz0YS/bMPt9X6vIMApbyzIaU2xquPLciFW7cgghNsKzOluCA43Weg5qqMq
	317/A6yymgX4FMJpOtE7+o2PZ3Apvzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnhEr-0003Wn-NZ; Wed, 17 Jul 2019 10:32:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hnhEg-0003WU-Ap
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 10:32:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B648628;
 Wed, 17 Jul 2019 03:32:33 -0700 (PDT)
Received: from e112298-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3B0EF3F71A;
 Wed, 17 Jul 2019 03:32:32 -0700 (PDT)
From: Julien Thierry <julien.thierry@arm.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
Subject: [PATCH] MAINTAINERS: Update my email address
Date: Wed, 17 Jul 2019 11:32:15 +0100
Message-Id: <1563359535-2762-1-git-send-email-julien.thierry@arm.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_033234_415365_3F23A1D8 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, maz@kernel.org,
 Julien Thierry <julien.thierry@arm.com>, james.morse@arm.com,
 catalin.marinas@arm.com, will@kernel.org, julien.thierry.kdev@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

My @arm.com address will stop working in a couple of weeks. Update
MAINTAINERS and .mailmap files with an address I'll have access to.

Signed-off-by: Julien Thierry <julien.thierry@arm.com>
---
 .mailmap    | 1 +
 MAINTAINERS | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/.mailmap b/.mailmap
index 0fef932..468bced8 100644
--- a/.mailmap
+++ b/.mailmap
@@ -116,6 +116,7 @@ John Stultz <johnstul@us.ibm.com>
 Juha Yrjola <at solidboot.com>
 Juha Yrjola <juha.yrjola@nokia.com>
 Juha Yrjola <juha.yrjola@solidboot.com>
+Julien Thierry <julien.thierry.kdev@gmail.com> <julien.thierry@arm.com>
 Kay Sievers <kay.sievers@vrfy.org>
 Kenneth W Chen <kenneth.w.chen@intel.com>
 Konstantin Khlebnikov <koct9i@gmail.com> <k.khlebnikov@samsung.com>
diff --git a/MAINTAINERS b/MAINTAINERS
index 91d8700..9525601 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8808,7 +8808,7 @@ F:	arch/x86/kvm/svm.c
 KERNEL VIRTUAL MACHINE FOR ARM/ARM64 (KVM/arm, KVM/arm64)
 M:	Marc Zyngier <marc.zyngier@arm.com>
 R:	James Morse <james.morse@arm.com>
-R:	Julien Thierry <julien.thierry@arm.com>
+R:	Julien Thierry <julien.thierry.kdev@gmail.com>
 R:	Suzuki K Pouloze <suzuki.poulose@arm.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 L:	kvmarm@lists.cs.columbia.edu
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
