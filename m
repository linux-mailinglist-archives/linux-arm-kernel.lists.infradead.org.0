Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB3B1ED319
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 17:12:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H7wSYb9FY++nDmJqCDz4N2saDgznTdSbNgSCV+XLgm8=; b=CN5GnrLVonDXgg
	EhY4DqkX6Nu5qX99BSDaOK/wCNXdgZcVFOlQUIA71Q1V3ouzoiTX3ftlx70BXMqf7O5hg0SfgBd4y
	oPMDOijk/Lw77wciiXiwktCHZzt4DUzgBWRF60UlotqZxHmHM5rwIXeePK7JvjGtQWhX58aGZ/fkP
	Dniv4sVVdE4MgtslB1ekpu9Uqguo3O3x2mPfDnKG5Fdt9B6GLGuY5qWPr0uI8iGit7tkVWH93Kt9j
	KmG/8SUZv9CLcGs5NtKFxIR/DFl8KUt0FiQvPMDfOVgDnjVAEpz4EbnaHPP+A6rnUVq0BgawzdNxv
	d56mwHNObixiS8T5xEdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgV4N-0002Yk-QE; Wed, 03 Jun 2020 15:12:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgV4E-0002U5-H2
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 15:12:35 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3026F206E6;
 Wed,  3 Jun 2020 15:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591197154;
 bh=KWFBsll9HGUfZ4R12kYQEDC71yH0LO07oDOecGGX1gE=;
 h=From:To:Cc:Subject:Date:From;
 b=sKH5G5sLHMI6gplPsIj90aUd4PNiT4FOwaZhFsikRBearsdJn+bm0O3vONgGxMLrI
 yfoYiCBhUmnRmGkB/S000V/TDuTh13QlKMnof6Zv6ExIcUIN7x6HsjcVE/EELQx5an
 C9SfJlbEHDFfOUbsKIVSjWA7n+rNHr+AdS7xIiVg=
From: Will Deacon <will@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] scs: Report SCS usage in bytes rather than number of entries
Date: Wed,  3 Jun 2020 16:12:17 +0100
Message-Id: <20200603151218.11659-1-will@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_081234_582377_CF512499 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>,
 keescook@chromium.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix the SCS debug usage check so that we report the number of bytes
usedm, rather than the number of entries.

Fixes: 5bbaf9d1fcb9 ("scs: Add support for stack usage debugging")
Reported-by: Sami Tolvanen <samitolvanen@google.com>
Signed-off-by: Will Deacon <will@kernel.org>
---
 kernel/scs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/scs.c b/kernel/scs.c
index 222a7a9ad543..5d4d9bbdec36 100644
--- a/kernel/scs.c
+++ b/kernel/scs.c
@@ -74,7 +74,7 @@ static void scs_check_usage(struct task_struct *tsk)
 	for (p = task_scs(tsk); p < __scs_magic(tsk); ++p) {
 		if (!READ_ONCE_NOCHECK(*p))
 			break;
-		used++;
+		used += sizeof(*p);
 	}
 
 	while (used > curr) {
-- 
2.27.0.rc2.251.g90737beb825-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
