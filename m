Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D7612E957
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 18:25:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1GUC7jCTB22ybngEGUii5/yxL+WDOob9OBnXGBg5MnU=; b=qxiZlEzwlVI8sZ
	vhV5R1DpZBzWULbk/pE3RW/3TTvXRVdwdsUaLGWfhJV3TL1c6esFwxoeewhlrQzxNU4Pv7HpAk7XG
	CNdDvGod6muwBsr00B2gpysrR/AZzf482IuImUttH7foioCo/fSU1IQVoqCOlwG197QZuqjHnnhOG
	NX5OjI+l1hWb9BcGVCitOeG2zSSMgmEHzdcGGJ4WCyhuOvw5drv0lLtKK9D9lhWg6kSPl8mBMCL7Z
	HiEHQgp/wP8kfZL5xP2toeSfFH47KHMzNfHdQwIZnUbU2VdsVH9ltB0v+jmGsg0x83pulJJm5p1le
	aHI3ON5dQusSEL1M8RaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in4DS-0008IA-Je; Thu, 02 Jan 2020 17:24:58 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in4Cq-0007aA-P7
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 17:24:22 +0000
Received: by mail-wr1-x443.google.com with SMTP id c9so39961058wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Jan 2020 09:24:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wNOM5YVf4Ad6YkKqspKwGYhIR/Pz9al6tY5IJ5pfrD0=;
 b=SwCZtPUy7OtzJgJcz1GAVpSUiK2Wku5rYGazNe18hkD4mO3uO37I3VyKCT3uxlHNGQ
 qdExGA/rdyWzZuoQP3xspFWs9ZU2TgiZWUHHojawnIyZPLN7pBWOc+UauRYSVJ7d080c
 ZB+lQ/cSGWPV9wTJDCCg31/w6f02/DWXGF6NlKCGyyLILak+d+AWig7jZvvxj6QFQwkI
 g5gJe/SlzOoKR7nVtsuLhpbeWfFd5+bL/16aiF2HkPcAhvVGyPkW5e8Z94ZbTuJgogIW
 /8770zeWkHXy9I9tENFedyoDEyP6G9mGJgGonax3W7gJ+I1nK8u4GygsoM0A55D8mHKk
 C1eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wNOM5YVf4Ad6YkKqspKwGYhIR/Pz9al6tY5IJ5pfrD0=;
 b=c8WKUUEW8p+QHrDxB0aMXdW6tM9fFfjchs2fq+itcu8JRAXTo2NzXzZcxvRtBRSPNa
 r8GJcSZbmgnaWYpLUgzTUIuIiupJRwom731pFtT90/YUz3IqtM3lqUweZljCxfUrZ5dn
 NT+fbhZjsPofMy8LYpkYNycXKpGZXIdqMDpDIvspvMQJs0FH7aBYAKIdkOQFLYrr3lbH
 3aVl/2YuKQOA0czpOe4Egrs70octhdJT5RsNfj4tl9aYmJWXSkAzGUXFit4FIKzoYYga
 nIvTdja/N/R/m23Q+J84gMygZ4en6dCi+WjBgVgDm1S+SgV0j76dcvVLyfAG3CtMOEho
 flGA==
X-Gm-Message-State: APjAAAWMYGiL2yUY9LM2uaN4A5sN5gjHAJu6hLP0gWUXzoKY99HiPO8W
 Y8o4n884iIsF05IT+t2zWzI=
X-Google-Smtp-Source: APXvYqzgd13vw55RXc1eoKXj4u9D5u6lDd1qVd/FLD5j6iUamc1uycDFuWu9VEWu7ed++1noj0mNVQ==
X-Received: by 2002:adf:f091:: with SMTP id n17mr85594064wro.387.1577985858946; 
 Thu, 02 Jan 2020 09:24:18 -0800 (PST)
Received: from amanieu-laptop.home ([2a01:cb19:8051:6200:3fe7:84:7f3:e713])
 by smtp.gmail.com with ESMTPSA id z21sm9480328wml.5.2020.01.02.09.24.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Jan 2020 09:24:18 -0800 (PST)
From: Amanieu d'Antras <amanieu@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 3/7] arm: Implement copy_thread_tls
Date: Thu,  2 Jan 2020 18:24:09 +0100
Message-Id: <20200102172413.654385-4-amanieu@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200102172413.654385-1-amanieu@gmail.com>
References: <20200102172413.654385-1-amanieu@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_092420_830088_C31F2330 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (amanieu[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org, Amanieu d'Antras <amanieu@gmail.com>,
 stable@vger.kernel.org, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is required for clone3 which passes the TLS value through a
struct rather than a register.

Signed-off-by: Amanieu d'Antras <amanieu@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: <stable@vger.kernel.org> # 5.3.x
---
 arch/arm/Kconfig          | 1 +
 arch/arm/kernel/process.c | 6 +++---
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index ba75e3661a41..96dab76da3b3 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -72,6 +72,7 @@ config ARM
 	select HAVE_ARM_SMCCC if CPU_V7
 	select HAVE_EBPF_JIT if !CPU_ENDIAN_BE32
 	select HAVE_CONTEXT_TRACKING
+	select HAVE_COPY_THREAD_TLS
 	select HAVE_C_RECORDMCOUNT
 	select HAVE_DEBUG_KMEMLEAK
 	select HAVE_DMA_CONTIGUOUS if MMU
diff --git a/arch/arm/kernel/process.c b/arch/arm/kernel/process.c
index cea1c27c29cb..46e478fb5ea2 100644
--- a/arch/arm/kernel/process.c
+++ b/arch/arm/kernel/process.c
@@ -226,8 +226,8 @@ void release_thread(struct task_struct *dead_task)
 asmlinkage void ret_from_fork(void) __asm__("ret_from_fork");
 
 int
-copy_thread(unsigned long clone_flags, unsigned long stack_start,
-	    unsigned long stk_sz, struct task_struct *p)
+copy_thread_tls(unsigned long clone_flags, unsigned long stack_start,
+	    unsigned long stk_sz, struct task_struct *p, unsigned long tls)
 {
 	struct thread_info *thread = task_thread_info(p);
 	struct pt_regs *childregs = task_pt_regs(p);
@@ -261,7 +261,7 @@ copy_thread(unsigned long clone_flags, unsigned long stack_start,
 	clear_ptrace_hw_breakpoint(p);
 
 	if (clone_flags & CLONE_SETTLS)
-		thread->tp_value[0] = childregs->ARM_r3;
+		thread->tp_value[0] = tls;
 	thread->tp_value[1] = get_tpuser();
 
 	thread_notify(THREAD_NOTIFY_COPY, thread);
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
