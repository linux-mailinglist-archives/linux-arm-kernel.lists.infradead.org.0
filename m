Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A50B9142849
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 11:36:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4wfa2SzS7sPce2Nw409DOur5wBvSQaDnR3vK5Vhtd5w=; b=dVSCiH6NdYROFY
	ngb0jMzRt4tx2jnI5giiYKydkDAexeVjM0tYVvs518pf08DiX497B2LgUGLvvF+M2n0zQH+YbPi+Z
	KRI5rRWqYXcQWfWXyY+BlhksCqPHUYB5eMfeDrUlxKnHPNDle+9M6LWn3K0oduboC0kAMV7cR60xW
	z1XsBXiDcCRHcBhfnCzTzXMuxQlU35oD/xKOYJ51TxYjQ1WFO4tkE7VVxbSbxjyT4uR8MoqzFL9E7
	SOrz7KTQn8weFV0mHAPJp9NQk03iwPJBZdVVuPy0apBwieECSAHnILXPTsH8Xu1h1PZjpSAp+06r7
	BWIBeKZmJMP2lOsBB6WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itUQ8-0000KL-4x; Mon, 20 Jan 2020 10:36:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itUPu-0000JX-I1
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 10:36:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 001D830E
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Jan 2020 02:36:18 -0800 (PST)
Received: from login2.euhpc.arm.com. (login2.euhpc.arm.com [10.6.27.34])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 974D63F68E
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Jan 2020 02:36:17 -0800 (PST)
From: Vladimir Murzin <vladimir.murzin@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: Kconfig: select HAVE_FUTEX_CMPXCHG
Date: Mon, 20 Jan 2020 10:36:02 +0000
Message-Id: <1579516562-52175-1-git-send-email-vladimir.murzin@arm.com>
X-Mailer: git-send-email 2.0.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_023622_642296_E5DB3426 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

arm64 provides always working implementation of futex_atomic_cmpxchg_inatomic(),
so there is no need to check it runtime.

Reported-by: Piyush swami <Piyush.swami@arm.com>
Signed-off-by: Vladimir Murzin <vladimir.murzin@arm.com>
---
 arch/arm64/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index b1b4476..910a686 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -161,6 +161,7 @@ config ARM64
 	select HAVE_PERF_USER_STACK_DUMP
 	select HAVE_REGS_AND_STACK_ACCESS_API
 	select HAVE_FUNCTION_ARG_ACCESS_API
+	select HAVE_FUTEX_CMPXCHG if FUTEX
 	select HAVE_RCU_TABLE_FREE
 	select HAVE_RSEQ
 	select HAVE_STACKPROTECTOR
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
