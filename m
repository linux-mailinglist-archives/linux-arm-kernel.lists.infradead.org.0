Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B55DD10D2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 16:06:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=igzqCugtOisBmkrfLdpHdY/rfxRhZXYqT/s6IJdlJUk=; b=RIdQic6mpNnscD
	BWKXA7brw1oYl07sW9ZnXclOrfel3LmVGCnSDtiqJaJjriClyY+AU7TRrrIqn5WG3+bmijmZgsCBx
	UN37WBrv4M2yc9HwJcIz7tNsdSFMXX8xQKg85EGhJD9Eds/UCXXNIrc9f8rgtIV7WJZedCH6F9XgE
	3R9D+0VQZENvkXwcm86/6NOdr4dxwEGob3niVjTqkZEzyNA/7leBIWuhJZxyk0BDYEW7vLpJuezfw
	dBRtoaDkpSv59gXDsao0Tn0RJUwG8d0bVFiJmFk5xMc4rWYx6uy87uUej7V92BHlSunftAhBvS0eW
	Msl0QFR5I+WTfFmYl7Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iICc5-0003Jq-Fo; Wed, 09 Oct 2019 14:06:49 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iICby-0003JO-MH
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 14:06:44 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iICbv-0008Pz-1y; Wed, 09 Oct 2019 15:06:39 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iICbu-0003FS-Af; Wed, 09 Oct 2019 15:06:38 +0100
From: Ben Dooks <ben.dooks@codethink.co.uk>
To: linux-kernel@lists.codethink.co.uk
Subject: [PATCH] arm: add kernel/fork.c function definitions
Date: Wed,  9 Oct 2019 15:06:37 +0100
Message-Id: <20191009140637.12443-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_070642_876122_2FFF7C4E 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
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
Cc: Ben Dooks <ben.dooks@codethink.co.uk>, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the definitions of arch_release_task_struct,
arch_task_cache_init and arch_dup_task_struct which
are used in kernel/fork.c but defined in various
architecture's <asm/thread_info.h>.

Fixes the following warnings:

kernel/fork.c:160:13: warning: symbol 'arch_release_task_struct' was not declared. Should it be static?
kernel/fork.c:752:20: warning: symbol 'arch_task_cache_init' was not declared. Should it be static?
kernel/fork.c:841:12: warning: symbol 'arch_dup_task_struct' was not declared. Should it be static?

Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
---
Cc: Russell King <linux@armlinux.org.uk>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 arch/arm/include/asm/thread_info.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/include/asm/thread_info.h b/arch/arm/include/asm/thread_info.h
index 0d0d5178e2c3..3d65d152dd19 100644
--- a/arch/arm/include/asm/thread_info.h
+++ b/arch/arm/include/asm/thread_info.h
@@ -118,6 +118,11 @@ extern void iwmmxt_task_switch(struct thread_info *);
 extern void vfp_sync_hwstate(struct thread_info *);
 extern void vfp_flush_hwstate(struct thread_info *);
 
+/* for kernel/fork.c */
+extern void arch_release_task_struct(struct task_struct *tsk);
+extern void arch_task_cache_init(void);
+extern int arch_dup_task_struct(struct task_struct *dst, struct task_struct *src);
+
 struct user_vfp;
 struct user_vfp_exc;
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
