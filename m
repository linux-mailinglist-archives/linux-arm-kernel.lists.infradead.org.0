Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B11A441C0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 18:18:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CmUkO2ELZ5WP5Wsa95DNZpfIyciQWV4IpFOcF9DYl+Y=; b=Ul11mCJ4Xk1DtslUwjm6gZz9Df
	4KGBuIR7oQ4MoL54rDjxFvMZsGX7ohPSf60FT6TYrwWOMM3JwDA+lG1cZvYBvQJEJ4wkKoZrOpZrl
	KmB/7NNcgo7YGjhi6LRh7ayl5iqnVEPPWIu8YOCjU9cg9pIE5cFu+LZhzWYPrTbp82/Ed2w0LlDeg
	2Z3SCJEoVODBQ3o5r+43a1sqo2dhBnSu1pHk/bVPcJlX8/IiraKbYtNwQNjKukG1VGXmvXlx/pFMC
	YA3Kve4QzaM297Id/BKe367A8KpcFjW3+7mLjf9Rv49OKr4zQA4AV6kGkdXdonxycJVYFTlLYGWJf
	2RzSPVEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbSQP-0004fF-Kg; Thu, 13 Jun 2019 16:18:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSPS-00044q-OD
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 16:17:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 58E32C14;
 Thu, 13 Jun 2019 09:17:06 -0700 (PDT)
Received: from e108454-lin.cambridge.arm.com (e108454-lin.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 04E4B3F694;
 Thu, 13 Jun 2019 09:17:04 -0700 (PDT)
From: Julien Grall <julien.grall@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH v2 2/8] arm64/signal: Update the comment in
 preserve_sve_context
Date: Thu, 13 Jun 2019 17:16:50 +0100
Message-Id: <20190613161656.20765-3-julien.grall@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190613161656.20765-1-julien.grall@arm.com>
References: <20190613161656.20765-1-julien.grall@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_091706_829587_52B1B218 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Anton.Kirilov@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 oleg@redhat.com, zhang.lei@jp.fujitsu.com, Julien Grall <julien.grall@arm.com>,
 alex.bennee@linaro.org, Dave.Martin@arm.com, Daniel.Kiss@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The SVE state is saved by fpsimd_signal_preserve_current_state() and not
preserve_fpsimd_context(). Update the comment in preserve_sve_context to
reflect the current behavior.

Signed-off-by: Julien Grall <julien.grall@arm.com>
---
 arch/arm64/kernel/signal.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
index a9b0485df074..ab3e56bbfb07 100644
--- a/arch/arm64/kernel/signal.c
+++ b/arch/arm64/kernel/signal.c
@@ -255,7 +255,8 @@ static int preserve_sve_context(struct sve_context __user *ctx)
 	if (vq) {
 		/*
 		 * This assumes that the SVE state has already been saved to
-		 * the task struct by calling preserve_fpsimd_context().
+		 * the task struct by calling the function
+		 * fpsimd_signal_preserve_current_state().
 		 */
 		err |= __copy_to_user((char __user *)ctx + SVE_SIG_REGS_OFFSET,
 				      current->thread.sve_state,
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
