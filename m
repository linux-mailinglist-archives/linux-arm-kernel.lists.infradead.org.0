Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1880B6ED56
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jul 2019 04:33:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N9tNLLNnp6gdnPAKMeIsWCCANltGS9QYydEbM3xs3uU=; b=op9HckzgVFINiq
	F24yPdxCaG8nL/kGZeYiCURzouJTB1iApPdOCuNuVv6XrbP3AZ9WFwcEYyRWp31+97IVe0V8sXavB
	q42mRAmynkG3IRuexnNpo2aTIq1F+XtcjvuFERDhHbdH0m+3hBqdZ8/hRjDwpkNxTVABs5gflPc+y
	M2bofIHM0kzAoV1r5do4BNPc6KEo9ULC9MIKJlSh+NLTT0vILawRtsFMfT8Sc30FOTQ0QQ8zEXihq
	BAYgVabC/WhGAQ/436v83MOSuUWtYaNRsKjznGHvyOJWhzXGA8Pf7ATHDhrpEAV1/9piF5EEA9NGC
	Dqo5vtyntsD7xGP3zq6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hofBz-0003CV-Nf; Sat, 20 Jul 2019 02:33:47 +0000
Received: from relay1.mentorg.com ([192.94.38.131])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hofBl-0003Bd-Ed
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jul 2019 02:33:35 +0000
Received: from svr-orw-mbx-01.mgc.mentorg.com ([147.34.90.201])
 by relay1.mentorg.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 id 1hofBR-0001QZ-Ku from George_Davis@mentor.com ;
 Fri, 19 Jul 2019 19:33:13 -0700
Received: from localhost (147.34.91.1) by svr-orw-mbx-01.mgc.mentorg.com
 (147.34.90.201) with Microsoft SMTP Server (TLS) id 15.0.1320.4; Fri, 19 Jul
 2019 19:33:11 -0700
From: "George G. Davis" <george_davis@mentor.com>
To: Russell King <linux@armlinux.org.uk>, "Eric W. Biederman"
 <ebiederm@xmission.com>, Thomas Gleixner <tglx@linutronix.de>, Florian
 Fainelli <f.fainelli@gmail.com>, Allison Randal <allison@lohutok.net>,
 "George G. Davis" <george_davis@mentor.com>, Souptick Joarder
 <jrdr.linux@gmail.com>, "moderated list:ARM PORT"
 <linux-arm-kernel@lists.infradead.org>, open list
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] ARM: Fix null die() string for unhandled data and prefetch
 abort cases
Date: Fri, 19 Jul 2019 22:32:55 -0400
Message-ID: <1563589976-19004-1-git-send-email-george_davis@mentor.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-ClientProxiedBy: svr-orw-mbx-04.mgc.mentorg.com (147.34.90.204) To
 svr-orw-mbx-01.mgc.mentorg.com (147.34.90.201)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_193333_707884_29C52BF9 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.94.38.131 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When an unhandled data or prefetch abort occurs, the die() string
is empty resulting in backtrace messages similar to the following:

	Internal error: : 1 [#1] PREEMPT SMP ARM

Replace the null string with the name of the abort handler in order
to provide more meaningful hints as to the cause of the fault.

Signed-off-by: George G. Davis <george_davis@mentor.com>
---
 arch/arm/mm/fault.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mm/fault.c b/arch/arm/mm/fault.c
index 0048eadd0681..dddea0a21220 100644
--- a/arch/arm/mm/fault.c
+++ b/arch/arm/mm/fault.c
@@ -557,7 +557,7 @@ do_DataAbort(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
 		inf->name, fsr, addr);
 	show_pte(current->mm, addr);
 
-	arm_notify_die("", regs, inf->sig, inf->code, (void __user *)addr,
+	arm_notify_die(inf->name, regs, inf->sig, inf->code, (void __user *)addr,
 		       fsr, 0);
 }
 
@@ -585,7 +585,7 @@ do_PrefetchAbort(unsigned long addr, unsigned int ifsr, struct pt_regs *regs)
 	pr_alert("Unhandled prefetch abort: %s (0x%03x) at 0x%08lx\n",
 		inf->name, ifsr, addr);
 
-	arm_notify_die("", regs, inf->sig, inf->code, (void __user *)addr,
+	arm_notify_die(inf->name, regs, inf->sig, inf->code, (void __user *)addr,
 		       ifsr, 0);
 }
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
