Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4292C67D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 14:30:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=To2kCf6F8d3zGso0cOh9H3PbcfBJGvuJ+4heO3T4j8w=; b=nYk
	5bhl47mD27zMCyhkwgD8u2xvwcgjHdyn1cGTNK8dXQSsRS0FqtmTpDRAyJGOBqWfjpzMYu5a885Yw
	NnLHd+at7VWCytdOktiXaaN2d8j2YEwCoEP8EhR/tLiGAFrCaPHPfbZQnAyoAACYzV0qy6mchvppN
	/37jnGV260H4sf4xG4WAfazgvY0kkz88uunnm0YT+/gAwIbt3sCmo/M+Z5/sI6qc8ul8H63Ka5HAa
	4JWnS2ndSVnoVtE0UJj34/eVNNs22WcGg5jx0vK3sHM+7cSxN9GjvsdcXWUnEs7HCkEikVIOZNcCH
	rQIg2LNGFL21vWTIFwQgCdG7a6jZ12w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVbFN-00036b-B4; Tue, 28 May 2019 12:30:29 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVbFG-00035s-Jq
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 12:30:23 +0000
Received: by mail-pf1-x441.google.com with SMTP id c6so11387839pfa.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 05:30:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=wbDGMNbYYQdX+Pxgd0vXZtreujx15Q0l3ZduS6F2GKM=;
 b=DwR7hrH4XP5l1bRLMyG3fcNleGVYoVC/tS84AWJhif6ykzugPG+ekI1PwCGTXaDGO8
 iTfiaOapH9jFQ7MnE8/KcTEt2ffoZKpH7zOQc/D4xQnLu+E4LZ9z9KEMZjrfbXCtiqvi
 dXSo0KyVluHT4kR9p4Riuh7neCVjt4H6ufTo9SAZdKNFKDi6TGRnISCWIPDa0LxGrR5t
 u0dFfncicOOMqrvABG40tZX2m1uKuzIPunjA4FE+mpJpSuDhT8XckfWZ/xkxmOU4Bw3z
 Ri/A/ZUxxMQV4cVycg9pQb2xP9SncyAkEvNCfbSLdx2Gh8LkL2w32g2uPcUiV7kODABg
 EqNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=wbDGMNbYYQdX+Pxgd0vXZtreujx15Q0l3ZduS6F2GKM=;
 b=NuZciE3e2EmGqch66ohOv16KvGkA6ZZB8GxrsXHX3jqu7TvI73lX/uJMZpoMvwxsUR
 rYbvXeUOVhZ8q0WA8/4yDxKTjjgE1Y8sS2nvx6rHzG8J9Qr0DeIUnF/NQ/v+S/7+lKAJ
 TKkmI5SJz7aTrJ+34LeckiXG8HDY3YllFmyTP59LSyKaS0Qg+QnSMD5LD8rGYLB5RTKr
 HmaXJNzxMiEqrXatXSyozpy2obnXTMuyo4p7UTr78seZ4cKFaA1m06wm/dMPzkT+e8SJ
 q28Q2B0ZHHJVjmbecaoIPHvJh156ttIhTzKlB9bF5YYqS+QUKxRUIgGJ+96ZVUt9J3jl
 xEBQ==
X-Gm-Message-State: APjAAAWTG3+c0WWQnX5J++UME3RYpDY0b9Azep3UQyoaaSkGAR9qPgoo
 SW/0D5tnMwdejk+RPUe2wlw=
X-Google-Smtp-Source: APXvYqwWncBkj10LXWl+MumT21W1v1+iisFqPYQvOkVpMdzhh53zR0Fpx8rd0FLH6RVrACMt4bE7ow==
X-Received: by 2002:a62:ab0a:: with SMTP id p10mr44367366pff.143.1559046621476; 
 Tue, 28 May 2019 05:30:21 -0700 (PDT)
Received: from xy-data.openstacklocal
 (ecs-159-138-22-150.compute.hwclouds-dns.com. [159.138.22.150])
 by smtp.gmail.com with ESMTPSA id y12sm1434787pgi.10.2019.05.28.05.30.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 28 May 2019 05:30:20 -0700 (PDT)
From: Young Xiao <92siuyang@gmail.com>
To: will.deacon@arm.com, linux@armlinux.org.uk, mark.rutland@arm.com,
 mingo@redhat.com, bp@alien8.de, hpa@zytor.com, x86@kernel.org,
 peterz@infradead.org, kan.liang@linux.intel.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] perf: Fix oops when kthread execs user process
Date: Tue, 28 May 2019 20:31:29 +0800
Message-Id: <1559046689-24091-1-git-send-email-92siuyang@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_053022_680014_DC87E509 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (92siuyang[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Young Xiao <92siuyang@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When a kthread calls call_usermodehelper() the steps are:
  1. allocate current->mm
  2. load_elf_binary()
  3. populate current->thread.regs

While doing this, interrupts are not disabled. If there is a perf
interrupt in the middle of this process (i.e. step 1 has completed
but not yet reached to step 3) and if perf tries to read userspace
regs, kernel oops.

Fix it by setting abi to PERF_SAMPLE_REGS_ABI_NONE when userspace
pt_regs are not set.

See commit bf05fc25f268 ("powerpc/perf: Fix oops when kthread execs
user process") for details.

Signed-off-by: Young Xiao <92siuyang@gmail.com>
---
 arch/arm/kernel/perf_regs.c   | 3 ++-
 arch/arm64/kernel/perf_regs.c | 3 ++-
 arch/x86/kernel/perf_regs.c   | 3 ++-
 3 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/arm/kernel/perf_regs.c b/arch/arm/kernel/perf_regs.c
index 05fe92a..78ee29a 100644
--- a/arch/arm/kernel/perf_regs.c
+++ b/arch/arm/kernel/perf_regs.c
@@ -36,5 +36,6 @@ void perf_get_regs_user(struct perf_regs *regs_user,
 			struct pt_regs *regs_user_copy)
 {
 	regs_user->regs = task_pt_regs(current);
-	regs_user->abi = perf_reg_abi(current);
+	regs_user->abi = (regs_user->regs) ? perf_reg_abi(current) :
+			 PERF_SAMPLE_REGS_ABI_NONE;
 }
diff --git a/arch/arm64/kernel/perf_regs.c b/arch/arm64/kernel/perf_regs.c
index 0bbac61..ac19d19 100644
--- a/arch/arm64/kernel/perf_regs.c
+++ b/arch/arm64/kernel/perf_regs.c
@@ -58,5 +58,6 @@ void perf_get_regs_user(struct perf_regs *regs_user,
 			struct pt_regs *regs_user_copy)
 {
 	regs_user->regs = task_pt_regs(current);
-	regs_user->abi = perf_reg_abi(current);
+	regs_user->abi = (regs_user->regs) ? perf_reg_abi(current) :
+			 PERF_SAMPLE_REGS_ABI_NONE;
 }
diff --git a/arch/x86/kernel/perf_regs.c b/arch/x86/kernel/perf_regs.c
index 07c30ee..fa79d6d 100644
--- a/arch/x86/kernel/perf_regs.c
+++ b/arch/x86/kernel/perf_regs.c
@@ -102,7 +102,8 @@ void perf_get_regs_user(struct perf_regs *regs_user,
 			struct pt_regs *regs_user_copy)
 {
 	regs_user->regs = task_pt_regs(current);
-	regs_user->abi = perf_reg_abi(current);
+	regs_user->abi = (regs_user->regs) ? perf_reg_abi(current) :
+			 PERF_SAMPLE_REGS_ABI_NONE;
 }
 #else /* CONFIG_X86_64 */
 #define REG_NOSUPPORT ((1ULL << PERF_REG_X86_DS) | \
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
