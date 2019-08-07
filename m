Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D11C3849AC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 12:35:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=vkgQkHiT0+NzSEq4QTrPG/nniGDp+2zmtR+MuE8QEPE=; b=RL+
	NXY48VIpl5ZT68LcniJ6EdXaTh6KjBeRKtiEMDz2XsNOXSywxeoSrj1x+6lMdT+UM8uls5oO8XsTt
	tjvDvaazJQBH7Krg+FYGZkjKot6/ycXMZ/TVi1U3kx66cdi8S6lqkjnMFIASD1WYnRG+FC5JUV/j5
	X0jLTmqIdkQ9Q2vgQRcv0aPT4ZeH35x+PoxL2xM7ZjPm46qZvVDT0anAdgRK76jZZO5njPDTS6LyR
	vmQmi17+ytX6BCMWvoNfOaaMmf3iD+5EVYOzArJeIHRHQPtawsZOEQVzkru4/MCbs21JWF5HOdAO/
	ibW86S0IUBjSRaVu8pcTofEJvt+SvhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvJHe-0003Br-6g; Wed, 07 Aug 2019 10:35:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvJHP-0003B1-LH
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 10:34:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 84A1728;
 Wed,  7 Aug 2019 03:34:49 -0700 (PDT)
Received: from e108454-lin.cambridge.arm.com (e108454-lin.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7DFE13F575;
 Wed,  7 Aug 2019 03:34:48 -0700 (PDT)
From: Julien Grall <julien.grall@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64/ptrace: Fix typoes in sve_set() comment
Date: Wed,  7 Aug 2019 11:34:45 +0100
Message-Id: <20190807103445.32257-1-julien.grall@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_033451_740875_66B25303 
X-CRM114-Status: GOOD (  10.70  )
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
Cc: catalin.marinas@arm.com, Julien Grall <julien.grall@arm.com>,
 will@kernel.org, oleg@redhat.com, Dave.Martin@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The ptrace trace SVE flags are prefixed with SVE_PT_*. Update the
comment accordingly.

Signed-off-by: Julien Grall <julien.grall@arm.com>
---
 arch/arm64/kernel/ptrace.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/ptrace.c b/arch/arm64/kernel/ptrace.c
index 17525da8d5c8..0de3eae09d36 100644
--- a/arch/arm64/kernel/ptrace.c
+++ b/arch/arm64/kernel/ptrace.c
@@ -870,7 +870,7 @@ static int sve_set(struct task_struct *target,
 		goto out;
 
 	/*
-	 * Apart from PT_SVE_REGS_MASK, all PT_SVE_* flags are consumed by
+	 * Apart from SVE_PT_REGS_MASK, all SVE_PT_* flags are consumed by
 	 * sve_set_vector_length(), which will also validate them for us:
 	 */
 	ret = sve_set_vector_length(target, header.vl,
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
