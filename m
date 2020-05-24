Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B021DFCFB
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 06:38:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XME+LpTY7YM5Rg3//LA7tZILJhXYk5/I2/kntnpUwbI=; b=SaCKRwdqznaLAJ
	JoOBWtra3WhSl/JaJmdPKvuAwZzbvjWzWIC+FAPe8SeIrqK0tBietKg0nQ7dL3ZZQ/h6ADAUcThQ4
	gtjb11gfH8XUBnMw7erdDKR0VdJtHOEgfDQEZmQtgSHn5qVMFiWpw29tT7FmGSyGMGc/ivI+5wvfj
	58/GMzSsqZjtSbdmNJYV+dnuEsx7Or9zuPqZ+AG1dFr05SgxgQdT9bzBYcmeeZRn33QsCyohInvjK
	7OAeuVxWelkWE80/CG5zK+MR80WyE8e6ARHNNpFySarEibmxV33k7VmJVbI5E9i/Uaa7I2Hx8hHeA
	BoDgbVXj9otEsr22z+Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jciPO-0002DS-T2; Sun, 24 May 2020 04:38:46 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jciPE-0002CE-Ue
 for linux-arm-kernel@lists.infradead.org; Sun, 24 May 2020 04:38:38 +0000
Received: by mail-qv1-xf44.google.com with SMTP id dh1so6653985qvb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 23 May 2020 21:38:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=juliacomputing-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=+fnQ1L4MZVHDyySMrLvQ4yTq8ju47rHA9BsyU3/N81c=;
 b=zYRoi4VKK6bgQlFXVl+FQcITJXNKj8Jn/g2POzeRNJeqF2M3IMmaTlCSWdfjmIwZQ/
 VM5GRCweZa3Hpb12Bxf7HpLAa7SQidSvOVaMm9t3Hp9Ml23jndLpA1JNf5/v+AnMfy/c
 fJ7hkeNzZZoq19BSzGopfytIf82g55h0c0rxwDH3RwbqoaFPQIKAg+zNDANN9r32Nagn
 qX78orv1n7FrzFpeSHqI6lpCKiaJkOh0FNkMJhGw75IcFedJt0N0P57Jq41pksAhlvdb
 //5o5kOkkB9iRAiW+a2J7ODRrlqe3OO1A9jBJpANbQ/jlMH40yJM1UNZUIt2WBxKICUu
 5F1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=+fnQ1L4MZVHDyySMrLvQ4yTq8ju47rHA9BsyU3/N81c=;
 b=Ogo3dxlsmFTDapFtZr2zRwLne2g7ed+Y3peq0sqm0L470dhQyWSdWTaCE8CNVkGVhQ
 Oe7sl6TNeIRH9TTqkJIKDME8nhShMF0/iLWXxAfuXiGauuwVRlx1vzTPHvtTfOE6k8DI
 RwW3vRSLUvd1xMsi16pwATYe00vvJwLf2qgF2YC8+9zAjvvad7j1EQT8kEdWOuCZXJfD
 bCMOZ4igZAezZEcV2j9H7dmkq+0DYh1hiMBSyVqIwltRqwWA2dMYTTcnTesCPO2o3a0H
 Lh2nGZhWmV1KikCoG/XtM9re3Gp0Qn19Bm4AiJCIzsMdvBQa0IpR+yDXpQyDwDb2IC8B
 670g==
X-Gm-Message-State: AOAM531Qg/pAoBG1+t9CCotRMuUAGm2n4xw39sit1zxYBkf+7VcOrJ42
 ob5/vdRe+vimORKgEYPp6KG4Vds0//A=
X-Google-Smtp-Source: ABdhPJwj5LmFx9xHLXq7ePBifECS8a1ivGjTNH8FdA2EAYUeQZ10YdRGzUeTqym64H2OMvVdQN/64A==
X-Received: by 2002:a05:6214:3e4:: with SMTP id
 cf4mr10587958qvb.33.1590295109524; 
 Sat, 23 May 2020 21:38:29 -0700 (PDT)
Received: from juliacomputing.com ([2601:184:4780:3aef:9054:eb80:3431:1b34])
 by smtp.gmail.com with ESMTPSA id c197sm11523352qkg.133.2020.05.23.21.38.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 May 2020 21:38:29 -0700 (PDT)
Date: Sun, 24 May 2020 00:38:27 -0400
From: Keno Fischer <keno@juliacomputing.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: ptrace: Fix PTRACE_SINGLESTEP into signal handler
Message-ID: <20200524043827.GA33001@juliacomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_213837_188356_9375A1FC 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: catalin.marinas@arm.com, will@kernel.org, oleg@redhat.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Executing PTRACE_SINGLESTEP at a signal stop is special. It
is supposed to step merely the signal setup work that the
kernel does, but not any instructions in user space. Since
not all architectures have the ability to generate a
single-step exception directly upon return from user-space,
there is a generic pseudo-single-step-stop that may be used
for this purpose (tracehook_signal_handler). Now, arm64 does
have the ability to generate single-step exceptions directly
upon return to userspace and was using this capability (rather
than the generic pseudo-trap) to obtain a similar effect. However,
there is actually a subtle difference that becomes noticeable
when the signal handler in question attempts to block SIGTRAP
(either because it is set in sa_mask, or because it is a handler
for SIGTRAP itself and SA_NODEFER is not set). In such a
situation, a real single step exception will cause the SIGTRAP
signal to be forcibly unblocked and the signal disposition
to be reset to SIG_DFL. The generic pseudo-single-step does
not suffer from this problem, because the SIGTRAP it delivers
is not real. The arm64 behavior is problematic, because a forced
reset of the signal disposition can be quite disruptive to the
userspace program. This patch brings the arm64 behavior in line
with the other major architectures by using the generic
pseudo-single-step-stop, avoiding the problematic interaction
with SIGTRAP masks.

Fixes: 2c020ed8 ("arm64: Signal handling support")
Signed-off-by: Keno Fischer <keno@juliacomputing.com>
---
 arch/arm64/kernel/signal.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
index 339882db5a91..cf237ee9443b 100644
--- a/arch/arm64/kernel/signal.c
+++ b/arch/arm64/kernel/signal.c
@@ -808,14 +808,7 @@ static void handle_signal(struct ksignal *ksig, struct pt_regs *regs)
 	 */
 	ret |= !valid_user_regs(&regs->user_regs, current);
 
-	/*
-	 * Fast forward the stepping logic so we step into the signal
-	 * handler.
-	 */
-	if (!ret)
-		user_fastforward_single_step(tsk);
-
-	signal_setup_done(ret, ksig, 0);
+	signal_setup_done(ret, ksig, test_thread_flag(TIF_SINGLESTEP));
 }
 
 /*
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
