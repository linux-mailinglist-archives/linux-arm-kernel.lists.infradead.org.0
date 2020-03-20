Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3540A18C7B7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 07:54:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=LeZBa0wv/QqgiAhBCzI2UuLMtvsQgI0D2Yu43HHaNAk=; b=o2q
	a9c/n/bwenfgsVA4sdt0cMzLS5sEAVX99V+QDWXPsxGB7T26yT+CnAscIHOgEQ2auI0/+CXYWgtQx
	yutD+sLAGmRg40k1rP8Uq+SWAEHdps5RKMKPhPDeR439VGCdLeo9uM/tyowjqeQTQ0cg7mipiiE7w
	1ttY6DeEzvpRO1QSv+oeLMkuR61vsG9wJFHP0WQ3lGh46B6ZLdgz+uC3YNsCq743GIlotsYmI7WF2
	VPmdGWP+xe53YnWtCrv+/3Ey4S0aDhU6p3diHDtZinS/F0f7trDJ1iwPn4JPjK5Pfu6J4nUp2exKY
	hIb1XCz6RuHTf0YLfvzVhZm5umb0wDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFBXc-0006Iu-Rk; Fri, 20 Mar 2020 06:54:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFBXU-0006IE-EA
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 06:53:53 +0000
Received: from localhost.localdomain (unknown [223.93.147.148])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1C14120776;
 Fri, 20 Mar 2020 06:53:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584687230;
 bh=ExI1kfSKUVZS2XzqSdVhVyWr/Qtz6K6BVNxaXsqXMDs=;
 h=From:To:Cc:Subject:Date:From;
 b=cKTqTZDshlB1lRM9r5dVcPtGnlFPxL7114xBariQgVvQYnFztpRP/lHmDAwPEUXoE
 c9pabuEMgWPyYBxmJoo+9VZneQ2Bbqds9K8r6DiLmWWsElk0VgeuxkC6dQAOAHaCkE
 2AL1UZbjx1sHhoI1/bEbhimr7XEpN3t7Y4ApGddg=
From: guoren@kernel.org
To: rostedt@goodmis.org,
	mingo@redhat.co,
	linux@armlinux.org.uk
Subject: [PATCH] arm/ftrace: Remove duplicate function
Date: Fri, 20 Mar 2020 14:53:40 +0800
Message-Id: <20200320065340.32685-1-guoren@kernel.org>
X-Mailer: git-send-email 2.17.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_235352_499998_CD52EE65 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Guo Ren <guoren@linux.alibaba.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Guo Ren <guoren@linux.alibaba.com>

There is no arch implementation of ftrace_arch_code_modify_prepare in arm,
so just use the __weak one in kernel/trace/ftrace.c.

Signed-off-by: Guo Ren <guoren@linux.alibaba.com>
---
 arch/arm/kernel/ftrace.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm/kernel/ftrace.c b/arch/arm/kernel/ftrace.c
index 10499d44964a..f66ade28eb8a 100644
--- a/arch/arm/kernel/ftrace.c
+++ b/arch/arm/kernel/ftrace.c
@@ -56,11 +56,6 @@ static unsigned long adjust_address(struct dyn_ftrace *rec, unsigned long addr)
 	return addr;
 }
 
-int ftrace_arch_code_modify_prepare(void)
-{
-	return 0;
-}
-
 int ftrace_arch_code_modify_post_process(void)
 {
 	/* Make sure any TLB misses during machine stop are cleared. */
-- 
2.17.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
