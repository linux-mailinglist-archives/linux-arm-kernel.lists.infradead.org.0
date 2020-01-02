Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A7912E951
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 18:24:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VEtV5s2BApx/bwExZc69UK0IkSgfdHlrwcASamR2oZU=; b=lQC/63OrNswjMb
	M76lp/ycR04ZHK4Af6mkF3yX2RwSvF8sfbwhbemn/RWE+laRjjLDSrXWIxW9BIUbLkN6vfLlhML9T
	QgblQDqr70F0A/7ttzetLeWNCqp6t6WginaIZJMOcD3nEo/2JmaPFRKT0y3iKWNzy6b2Lem1hSWz9
	6c+jolG2tuRUn7zusWRtlbEwuoZF4d+KwoO7qrYHB2/n/oxKFE+NiwJOc6NnsUkZtFkBrrdQvHbyn
	DnoqTn8GlzN7/YfvWXJZM74j4DLMjDwCPVnqNuPEzsQJQvbPR0flGwiDOR8mX1eNyEjsddzvds/Mq
	4NH1Zhcp6+seFmQ0jXlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in4DC-0007xM-1k; Thu, 02 Jan 2020 17:24:42 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in4Cp-0007a1-TW
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 17:24:21 +0000
Received: by mail-wr1-x441.google.com with SMTP id z3so39988233wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Jan 2020 09:24:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iynuWkDBVTaiEzHNP7sxuTkwJnSTns6zopxJWRhFfwM=;
 b=t7xqOm6OFo39bFTfx2QgOe5P+nWEAEOUff1YJ0pwLEf6Fv1AZqBvjPowdPWbEO6KoE
 Z/9uqLpZ0LzZIHVqJdI3giZkl0gpTCdkocT04PmvIu3PBgyLagUCnjv8kczWyoppCDIb
 c+NcxYZMBC+gUNbOk83IsiTHaC/tQCl5z1POP8n+zKVYYQhHZMeRKB9wA0qZH/BOmGuO
 6f/ycMdHuWvmwKljtf3dL3ThfirhWgPclMEjQIVSrR/x+EB+tMFBtxl8HMCyBqFzMh3m
 qIMRPCxHGm/bcYwCdocfZnXu1WaNpkCBc0ZTiDueiQ4IL3xgm0F28WsImiKxy6Bappvr
 O7gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iynuWkDBVTaiEzHNP7sxuTkwJnSTns6zopxJWRhFfwM=;
 b=HfyQbaks6AmXQ1upzwUhRsrv1f+YGhdHQD6nNGokiwYB/qqgCsN2mLeW544Z5EWQW5
 +N6UGgOGURtCrMrPeqr80g1+KzYw/d3yzkvFtb0mnIK193+lW1P1ephcBBWPugzNrbAf
 Peganzvqj5m+6PQmPMUnqrttaTNiru1F/J2WBcyFoX8JRicscDl9x8iiSzHlGgsH2dQR
 UTmbq8y/y2Bf34WJb4YtsX04wP7sAyjDxXCCBha6VraJOOyAKD/Ppftuix2Ycc/2VIl1
 vstQzZZWt+EOVKSBgAfWr4d0kX74HzbNNpKmBV25NW72Zj1mwK6QEwajYvRmva2WbRKx
 MPGQ==
X-Gm-Message-State: APjAAAXGJoEqbtddKWxKyjuDqjZWIv8g6Bw3oJ3VxifOBK/x/LeWizJ7
 olxaC6ZI3IZ3O9+J0nIfJ3c=
X-Google-Smtp-Source: APXvYqyGvFmZbRqFUgjsGsKZXKYs8CPJrTsut+rS8ZrZ5qhYlWYH9pC/PaHj2Q9P1tF2BhjHeQQ/qg==
X-Received: by 2002:adf:f484:: with SMTP id l4mr83117692wro.207.1577985858109; 
 Thu, 02 Jan 2020 09:24:18 -0800 (PST)
Received: from amanieu-laptop.home ([2a01:cb19:8051:6200:3fe7:84:7f3:e713])
 by smtp.gmail.com with ESMTPSA id z21sm9480328wml.5.2020.01.02.09.24.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Jan 2020 09:24:17 -0800 (PST)
From: Amanieu d'Antras <amanieu@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 2/7] arm64: Implement copy_thread_tls
Date: Thu,  2 Jan 2020 18:24:08 +0100
Message-Id: <20200102172413.654385-3-amanieu@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200102172413.654385-1-amanieu@gmail.com>
References: <20200102172413.654385-1-amanieu@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_092419_964228_6DB85C3E 
X-CRM114-Status: GOOD (  13.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
 arch/arm64/Kconfig          |  1 +
 arch/arm64/kernel/process.c | 10 +++++-----
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index b1b4476ddb83..e688dfad0b72 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -138,6 +138,7 @@ config ARM64
 	select HAVE_CMPXCHG_DOUBLE
 	select HAVE_CMPXCHG_LOCAL
 	select HAVE_CONTEXT_TRACKING
+	select HAVE_COPY_THREAD_TLS
 	select HAVE_DEBUG_BUGVERBOSE
 	select HAVE_DEBUG_KMEMLEAK
 	select HAVE_DMA_CONTIGUOUS
diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index 71f788cd2b18..d54586d5b031 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -360,8 +360,8 @@ int arch_dup_task_struct(struct task_struct *dst, struct task_struct *src)
 
 asmlinkage void ret_from_fork(void) asm("ret_from_fork");
 
-int copy_thread(unsigned long clone_flags, unsigned long stack_start,
-		unsigned long stk_sz, struct task_struct *p)
+int copy_thread_tls(unsigned long clone_flags, unsigned long stack_start,
+		unsigned long stk_sz, struct task_struct *p, unsigned long tls)
 {
 	struct pt_regs *childregs = task_pt_regs(p);
 
@@ -394,11 +394,11 @@ int copy_thread(unsigned long clone_flags, unsigned long stack_start,
 		}
 
 		/*
-		 * If a TLS pointer was passed to clone (4th argument), use it
-		 * for the new thread.
+		 * If a TLS pointer was passed to clone, use it for the new
+		 * thread.
 		 */
 		if (clone_flags & CLONE_SETTLS)
-			p->thread.uw.tp_value = childregs->regs[3];
+			p->thread.uw.tp_value = tls;
 	} else {
 		memset(childregs, 0, sizeof(struct pt_regs));
 		childregs->pstate = PSR_MODE_EL1h;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
