Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9BE778251
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 01:17:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GF9yCRoEGUxtshtFb/MtLvm5jmVvJNOy1kqePvK7+Pc=; b=cIbmOM/bDgrJm+
	5jd0JtMo77IX+aAskjaoIJNxSHw+H2NryG+RHU+E5lWkGbyBV+dvjIYapr0cAw0NATLHMhsNbb1HA
	4l564S8VhW1FOL/n935GPQtM/S+AG0tFymOnY5l7w5NdgC4wO9rpwRdo9b9qMSBzD1JnzLIqVqUcH
	rt3C2cqjBEqTlyK5y5H9aU/+xdjON4IviyZo1vYH/h7yTF176CbtLXNV66ZHnMTW1Sc1KUvHZevdZ
	0NBgPWRqhcamdwF0CuQSQ/QZQ4NY8P0g8XEmoTLoFjAs26lZemsiQO1ocVuu+DlPVVjWCgdogOhR+
	Q2LqAKeZAtFIhzuHbLwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrsPZ-00081l-W8; Sun, 28 Jul 2019 23:17:06 +0000
Received: from gateway34.websitewelcome.com ([192.185.148.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrsPO-00081S-BD
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 23:16:55 +0000
Received: from cm14.websitewelcome.com (cm14.websitewelcome.com [100.42.49.7])
 by gateway34.websitewelcome.com (Postfix) with ESMTP id 85227275A9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Jul 2019 18:16:53 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id rsPNhk9Si2qH7rsPNhmgUZ; Sun, 28 Jul 2019 18:16:53 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
 Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=86XZTQaufMDQruzYVy1gIqXjB4PVGjUo2sh48fKeAsA=; b=A4rAWenDetBFKIVeGlJCyNGtyo
 zIijEdbaJQVXWvA9uEmheqhnby0Gd7mq0TSglO6C60EuF8Lb2BrxCWT10hOq9I1TRh1ynTK6EYDgC
 mfzt8pK5jrv3igsIpLXGHARUoib2Yk+QZDGM0FV3i11jmRO/UUDvwLQm4KfTIyqCQBBNdD4JH8IxZ
 dsqdCNP1hTfcD/eVxo3NQtIfZbdaLUbkQZw+o2K68FR781SbCvAeXtEVZ0QoanFF5PcdxsiUD8rHu
 /Lj3oXp8izpISe15xCRQ2rS7kQ3cGYc+tejScPnWq48KwF6chzQ9BZyoQ2hvX4txs2/ymkTXmRzUP
 aep5/ruA==;
Received: from [187.192.11.120] (port=39048 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1hrsPM-003WPA-9s; Sun, 28 Jul 2019 18:16:52 -0500
Date: Sun, 28 Jul 2019 18:16:51 -0500
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Russell King <linux@armlinux.org.uk>
Subject: [PATCH] ARM/hw_breakpoint: Mark expected switch fall-throughs
Message-ID: <20190728231651.GA22123@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 187.192.11.120
X-Source-L: No
X-Exim-ID: 1hrsPM-003WPA-9s
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (embeddedor) [187.192.11.120]:39048
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 12
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_161654_463988_6D38A399 
X-CRM114-Status: UNSURE (   7.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.148.142 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kees Cook <keescook@chromium.org>, Stephen Rothwell <sfr@canb.auug.org.au>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Mark switch cases where we are expecting to fall through.

This patch fixes the following warnings:

arch/arm/kernel/hw_breakpoint.c: In function 'hw_breakpoint_arch_parse':
arch/arm/kernel/hw_breakpoint.c:609:6: warning: this statement may fall through [-Wimplicit-fallthrough=]
   if (hw->ctrl.len == ARM_BREAKPOINT_LEN_2)
      ^
arch/arm/kernel/hw_breakpoint.c:611:2: note: here
  case 3:
  ^~~~
arch/arm/kernel/hw_breakpoint.c:613:6: warning: this statement may fall through [-Wimplicit-fallthrough=]
   if (hw->ctrl.len == ARM_BREAKPOINT_LEN_1)
      ^
arch/arm/kernel/hw_breakpoint.c:615:2: note: here
  default:
  ^~~~~~~
arch/arm/kernel/hw_breakpoint.c: In function 'arch_build_bp_info':
arch/arm/kernel/hw_breakpoint.c:544:6: warning: this statement may fall through [-Wimplicit-fallthrough=]
   if ((hw->ctrl.type != ARM_BREAKPOINT_EXECUTE)
      ^
arch/arm/kernel/hw_breakpoint.c:547:2: note: here
  default:
  ^~~~~~~
In file included from include/linux/kernel.h:11,
                 from include/linux/list.h:9,
                 from include/linux/preempt.h:11,
                 from include/linux/hardirq.h:5,
                 from arch/arm/kernel/hw_breakpoint.c:16:
arch/arm/kernel/hw_breakpoint.c: In function 'hw_breakpoint_pending':
include/linux/compiler.h:78:22: warning: this statement may fall through [-Wimplicit-fallthrough=]
 # define unlikely(x) __builtin_expect(!!(x), 0)
                      ^~~~~~~~~~~~~~~~~~~~~~~~~~
include/asm-generic/bug.h:136:2: note: in expansion of macro 'unlikely'
  unlikely(__ret_warn_on);     \
  ^~~~~~~~
arch/arm/kernel/hw_breakpoint.c:863:3: note: in expansion of macro 'WARN'
   WARN(1, "Asynchronous watchpoint exception taken. Debugging results may be unreliable\n");
   ^~~~
arch/arm/kernel/hw_breakpoint.c:864:2: note: here
  case ARM_ENTRY_SYNC_WATCHPOINT:
  ^~~~
arch/arm/kernel/hw_breakpoint.c: In function 'core_has_os_save_restore':
arch/arm/kernel/hw_breakpoint.c:910:6: warning: this statement may fall through [-Wimplicit-fallthrough=]
   if (oslsr & ARM_OSLSR_OSLM0)
      ^
arch/arm/kernel/hw_breakpoint.c:912:2: note: here
  default:
  ^~~~~~~

Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
---
 arch/arm/kernel/hw_breakpoint.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/kernel/hw_breakpoint.c b/arch/arm/kernel/hw_breakpoint.c
index af8b8e15f589..b0c195e3a06d 100644
--- a/arch/arm/kernel/hw_breakpoint.c
+++ b/arch/arm/kernel/hw_breakpoint.c
@@ -544,6 +544,7 @@ static int arch_build_bp_info(struct perf_event *bp,
 		if ((hw->ctrl.type != ARM_BREAKPOINT_EXECUTE)
 			&& max_watchpoint_len >= 8)
 			break;
+		/* Else, fall through */
 	default:
 		return -EINVAL;
 	}
@@ -608,10 +609,12 @@ int hw_breakpoint_arch_parse(struct perf_event *bp,
 		/* Allow halfword watchpoints and breakpoints. */
 		if (hw->ctrl.len == ARM_BREAKPOINT_LEN_2)
 			break;
+		/* Else, fall through */
 	case 3:
 		/* Allow single byte watchpoint. */
 		if (hw->ctrl.len == ARM_BREAKPOINT_LEN_1)
 			break;
+		/* Else, fall through */
 	default:
 		ret = -EINVAL;
 		goto out;
@@ -861,6 +864,7 @@ static int hw_breakpoint_pending(unsigned long addr, unsigned int fsr,
 		break;
 	case ARM_ENTRY_ASYNC_WATCHPOINT:
 		WARN(1, "Asynchronous watchpoint exception taken. Debugging results may be unreliable\n");
+		/* Fall through */
 	case ARM_ENTRY_SYNC_WATCHPOINT:
 		watchpoint_handler(addr, fsr, regs);
 		break;
@@ -909,6 +913,7 @@ static bool core_has_os_save_restore(void)
 		ARM_DBG_READ(c1, c1, 4, oslsr);
 		if (oslsr & ARM_OSLSR_OSLM0)
 			return true;
+		/* Else, fall through */
 	default:
 		return false;
 	}
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
