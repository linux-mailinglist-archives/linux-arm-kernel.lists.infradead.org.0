Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4DA3657B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 22:30:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i4HWQempQw+Uiqmk0fkDKA3NV4+wUc1y4Y1dCiLzA+0=; b=oSvdb8B9qcPoaj
	wQab+PbKThWKyM5u2CQTOydFB+vqXLE1tdG8VSil+7Cgq1YX8JstyUnXZDLlWwVe80K2Trv24E2Xn
	a1kEuuubqzsAuz6DNDJiUGjaE7InUvv/d3G+WnlW+hFp9NGmKjDJBJQR5xgWtNVep8tStMDxRqmub
	iN5Ji0Pk0/FFRGSL37jcMyiqm4TZexLFHV7OJ4qdIyXqrI9JYDJbGWgxmiMPp7YImFBIOQwMIsXBs
	lK4yRbtMm2++zvfY5dHY/b27foA99tcEmnStUpbmyn2baLMvl+QqHrUw5NNiBEwOJC+i6Ys/pGgUB
	uyjoWAJmUI23CBuOB+kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYcYM-00051H-De; Wed, 05 Jun 2019 20:30:34 +0000
Received: from relay1.mentorg.com ([192.94.38.131])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYcYE-00050q-QJ
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 20:30:28 +0000
Received: from svr-orw-mbx-01.mgc.mentorg.com ([147.34.90.201])
 by relay1.mentorg.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 id 1hYcY5-0007fD-46 from George_Davis@mentor.com ;
 Wed, 05 Jun 2019 13:30:17 -0700
Received: from localhost (147.34.91.1) by svr-orw-mbx-01.mgc.mentorg.com
 (147.34.90.201) with Microsoft SMTP Server (TLS) id 15.0.1320.4; Wed, 5 Jun
 2019 13:30:14 -0700
From: "George G. Davis" <george_davis@mentor.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon
 <will.deacon@arm.com>, Kees Cook <keescook@chromium.org>, Andy Lutomirski
 <luto@amacapital.net>, Will Drewry <wad@chromium.org>, Jiri Kosina
 <trivial@kernel.org>, Julien Grall <julien.grall@arm.com>, Kristina Martsenko
 <kristina.martsenko@arm.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 "George G. Davis" <george_davis@mentor.com>, Mark Rutland
 <mark.rutland@arm.com>, "moderated list:ARM64 PORT (AARCH64 ARCHITECTURE)"
 <linux-arm-kernel@lists.infradead.org>, open list
 <linux-kernel@vger.kernel.org>
Subject: [PATCH 1/3] ARM64: trivial: s/TIF_SECOMP/TIF_SECCOMP/ comment typo fix
Date: Wed, 5 Jun 2019 16:30:09 -0400
Message-ID: <1559766612-12178-1-git-send-email-george_davis@mentor.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-ClientProxiedBy: svr-orw-mbx-08.mgc.mentorg.com (147.34.90.208) To
 svr-orw-mbx-01.mgc.mentorg.com (147.34.90.201)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_133026_851890_80B1EEAA 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.94.38.131 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix a s/TIF_SECOMP/TIF_SECCOMP/ comment typo

Cc: Jiri Kosina <trivial@kernel.org>
Signed-off-by: George G. Davis <george_davis@mentor.com>
---
 arch/arm64/include/asm/thread_info.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/thread_info.h b/arch/arm64/include/asm/thread_info.h
index eb3ef73e07cf..f1d032be628a 100644
--- a/arch/arm64/include/asm/thread_info.h
+++ b/arch/arm64/include/asm/thread_info.h
@@ -75,7 +75,7 @@ void arch_release_task_struct(struct task_struct *tsk);
  *  TIF_SYSCALL_TRACE	- syscall trace active
  *  TIF_SYSCALL_TRACEPOINT - syscall tracepoint for ftrace
  *  TIF_SYSCALL_AUDIT	- syscall auditing
- *  TIF_SECOMP		- syscall secure computing
+ *  TIF_SECCOMP		- syscall secure computing
  *  TIF_SIGPENDING	- signal pending
  *  TIF_NEED_RESCHED	- rescheduling necessary
  *  TIF_NOTIFY_RESUME	- callback before returning to user
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
