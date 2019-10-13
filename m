Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E80ED588C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 00:14:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1AWCvH/NScXlbWKV/48+1mEhqIusPCBKtIQntgMssuY=; b=dLb7JxP0U3CSO3
	uBTFgVDz1fRA3S5Zjzo76k6Xx+W1FLO8hnm0Zu3pkQT9TMs1nlxYSeKTyux97UJ3mAgtICj23vMZ7
	dvNpagmrd7PSm+PjtSuAmUoKrSq2JTLfX+Bg0zjrlazcDlVKrSPWJoFFmtY27Fmn1tOa4dOS2Ff9X
	MZ7WAf27duQgtSg/WkNROWolALM9XoAyC9I5Uk3wWqQ0lAHe93x6c5yT2TeptMRdABZ7tisvieYdI
	gR8aUrz+VapI0FIRJwnQraY55mWoqY51SuQ41troPKbdFzqRYK4+/S4/Z6WIvxaSMC0vPuCRVKL7g
	NkTGAw6DxxierhaZFamw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJm7t-0006RL-Fd; Sun, 13 Oct 2019 22:14:09 +0000
Received: from chamillionaire.breakpoint.cc ([2a0a:51c0:0:12e:520::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJm7g-0006QA-FH
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 22:13:58 +0000
Received: from localhost ([127.0.0.1] helo=flow.W.breakpoint.cc)
 by Chamillionaire.breakpoint.cc with esmtp (Exim 4.92)
 (envelope-from <sebastian@breakpoint.cc>)
 id 1iJm7a-00089S-Qc; Mon, 14 Oct 2019 00:13:52 +0200
From: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/6] sh: Move cmpxchg-xchg.h to asm-generic
Date: Mon, 14 Oct 2019 00:13:05 +0200
Message-Id: <20191013221310.30748-2-sebastian@breakpoint.cc>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191013221310.30748-1-sebastian@breakpoint.cc>
References: <20191013221310.30748-1-sebastian@breakpoint.cc>
MIME-Version: 1.0
X-Breakpoint-Spam-Score: -1.0
X-Breakpoint-Spam-Level: -
X-Breakpoint-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_151356_508883_F23EB340 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:520:0:0:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-arch@vger.kernel.org, Rich Felker <dalias@libc.org>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Arnd Bergmann <arnd@arndb.de>,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Russell King <linux@armlinux.org.uk>,
 Sebastian Andrzej Siewior <sebastian@breakpoint.cc>,
 Ingo Molnar <mingo@redhat.com>, Waiman Long <longman@redhat.com>,
 Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The header file is very generic and could be reused by other
architectures as long as they provide __cmpxchg_u32().

Move sh's cmpxchg-xchg.h to asm-generic.

Cc: Yoshinori Sato <ysato@users.sourceforge.jp>
Cc: Rich Felker <dalias@libc.org>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: linux-sh@vger.kernel.org
Cc: linux-arch@vger.kernel.org
Signed-off-by: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
---
 arch/sh/include/asm/Kbuild                                  | 1 +
 {arch/sh/include/asm => include/asm-generic}/cmpxchg-xchg.h | 0
 2 files changed, 1 insertion(+)
 rename {arch/sh/include/asm => include/asm-generic}/cmpxchg-xchg.h (100%)

diff --git a/arch/sh/include/asm/Kbuild b/arch/sh/include/asm/Kbuild
index 51a54df22c110..08c1d96286d9d 100644
--- a/arch/sh/include/asm/Kbuild
+++ b/arch/sh/include/asm/Kbuild
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 generated-y += syscall_table.h
+generic-y += cmpxchg-xchg.h
 generic-y += compat.h
 generic-y += current.h
 generic-y += delay.h
diff --git a/arch/sh/include/asm/cmpxchg-xchg.h b/include/asm-generic/cmpxchg-xchg.h
similarity index 100%
rename from arch/sh/include/asm/cmpxchg-xchg.h
rename to include/asm-generic/cmpxchg-xchg.h
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
