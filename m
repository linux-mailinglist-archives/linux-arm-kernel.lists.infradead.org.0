Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 702FF1D32F1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 16:33:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rYgqd48eRUcRna7T9FuAei4wCZUHfFGWIUlEDiuFWPI=; b=AYYB6WAF2T7ceeT7zl6qGIgpnm
	0jaQMcTYugdviMyimbXpIDmVroLhhxOLJAYf4BwbAEN/uW7ehaR5EkvxQBXPdM2DEvMI8DVD61Tan
	ZPy7kKIeo/FFZLpeg95xxi4RKl2LtMRbd2efZZf/wMwsV/8uY+j5CyIo7EH7kdx8rcx4yTA8Ci+fO
	k97omVE1CFXG6vzgP00DGcPP0qZ/eGB/YZoyXpiPZ389XL1XHcCHCWUm2OqN7qLhkVnFs0wUP19VU
	xo4iiY7s+4aqbBvaMSyAKHv8xV+SiYbF3ZBcIALHqihYXBpUMwDLTudS2B+0dF8q8p153k1XWlk3t
	nj/3Vqcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZEv9-0007Q6-Ip; Thu, 14 May 2020 14:33:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZEun-0007OO-K7
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 14:32:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DEA7311B3;
 Thu, 14 May 2020 07:32:48 -0700 (PDT)
Received: from seattle-bionic.arm.com.Home (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F17AE3F71E;
 Thu, 14 May 2020 07:32:47 -0700 (PDT)
From: Oliver Swede <oli.swede@arm.com>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v3 02/13] arm64: kprobes: Drop open-coded exception fixup
Date: Thu, 14 May 2020 14:32:16 +0000
Message-Id: <20200514143227.605-3-oli.swede@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200514143227.605-1-oli.swede@arm.com>
References: <20200514143227.605-1-oli.swede@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_073249_698334_47EF4C63 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Robin Murphy <robin.murphy@arm.com>

The short-circuit call to fixup_exception() from kprobe_fault_handler()
poses a problem now that the former wants to consume the fault address
too, since the common kprobes API offers us no way to pass it through.
Fortunately, however, it works out to be unnecessary:

- uaccess instructions themselves are not probeable, so at most we
  should only ever expect to take a fixable fault from the pre or post
  handlers.
- the pre and post handler run with preemption disabled, thus for any
  fault they may cause, an unhandled return from kprobe_page_fault()
  will proceed directly to __do_kernel_fault() thanks to the
  faulthandler_disabled() check.
- __do_kernel_fault() will immediately call fixup_exception() unless
  we're in an EL1 instruction abort, and if we've somehow taken one of
  those on what we think is the middle of a uaccess routine, then the
  world is already very on fire.

Thus we can reasonably drop the call from kprobe_fault_handler() and
leave uaccess fixups to the regular flow.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Oliver Swede <oli.swede@arm.com>
---
 arch/arm64/kernel/probes/kprobes.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/arch/arm64/kernel/probes/kprobes.c b/arch/arm64/kernel/probes/kprobes.c
index d1c95dcf1d78..771635360110 100644
--- a/arch/arm64/kernel/probes/kprobes.c
+++ b/arch/arm64/kernel/probes/kprobes.c
@@ -334,13 +334,6 @@ int __kprobes kprobe_fault_handler(struct pt_regs *regs, unsigned int fsr)
 		 */
 		if (cur->fault_handler && cur->fault_handler(cur, regs, fsr))
 			return 1;
-
-		/*
-		 * In case the user-specified fault handler returned
-		 * zero, try to fix up.
-		 */
-		if (fixup_exception(regs))
-			return 1;
 	}
 	return 0;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
