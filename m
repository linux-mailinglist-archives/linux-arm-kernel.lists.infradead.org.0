Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6502A1926ED
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 12:14:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=38afgLrpbg3SejKGmpmlCG2gJNNc0DJem0UDzbjrWpQ=; b=gYTlkku6/Tox26
	PlAHOGqHuhQrV+b5+vp5tTjvaEmJLRZtARhyb2IRPr2qDmv1sAg7lrGitJax4aFIHKpmAO63NBY5H
	jQTrnx42b75YfchTBjsl+x+aiOSP0LHLcrdrp1vZ4fKZRD5TUojd4fcVkkAsZ8IC4wOhMfSi54ZvU
	Ii2SmYdK/gyw2J0zTx4wOHsvDeCfb4ZHACzjEBgGqMfPy+cyrjNoiOEntqNsHpkoL3dXzmkV+9oOJ
	e/vQZJENLPBONK2mHFkDDzpoQ1KntdwTkPQ+IJIchgIW3dMigPS9yDGRVahWD+c8yCiX0/etdlc+l
	9pyMGoNjwSg2mifWfOMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH3z1-0006YD-UJ; Wed, 25 Mar 2020 11:14:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH3yr-0006XQ-V7
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 11:13:55 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DEA2B20714;
 Wed, 25 Mar 2020 11:13:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585134832;
 bh=BzCuAlwuxAGX3F005NMoJ1SQbjE8q7I0TQauHBZ+31o=;
 h=From:To:Cc:Subject:Date:From;
 b=YKnz9Hecl5fxuD2C7GFv4OgVyH5qObz8ssS4YRbT+X2qm4uFTkze2Xy/WOTKAIx4p
 MbacL9p1KQ5APanJBD1/IcPOu7Ub8XAddFVr6IVWbskaNV8/HkmR6cCGJGgDkaVzFe
 G5G4M+ftNeePFy0vNPDu5KMBY8SVoDgdZvQcZT4c=
From: Will Deacon <will@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] mm/mremap: Add comment explaining the untagging behaviour of
 mremap()
Date: Wed, 25 Mar 2020 11:13:46 +0000
Message-Id: <20200325111347.32553-1-will@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_041354_024391_55847D43 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Will Deacon <will@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, kernel-team@android.com,
 linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit dcde237319e6 ("mm: Avoid creating virtual address aliases in
brk()/mmap()/mremap()") changed mremap() so that only the 'old' address
is untagged, leaving the 'new' address in the form it was passed from
userspace. This prevents the unexpected creation of aliasing virtual
mappings in userspace, but looks a bit odd when you read the code.

Add a comment justifying the untagging behaviour in mremap().

Cc: Catalin Marinas <catalin.marinas@arm.com>
Reported-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Will Deacon <will@kernel.org>
---
 mm/mremap.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/mm/mremap.c b/mm/mremap.c
index af363063ea23..d28f08a36b96 100644
--- a/mm/mremap.c
+++ b/mm/mremap.c
@@ -606,6 +606,16 @@ SYSCALL_DEFINE5(mremap, unsigned long, addr, unsigned long, old_len,
 	LIST_HEAD(uf_unmap_early);
 	LIST_HEAD(uf_unmap);
 
+	/*
+	 * There is a deliberate asymmetry here: we strip the pointer tag
+	 * from the old address but leave the new address alone. This is
+	 * for consistency with mmap(), where we prevent the creation of
+	 * aliasing mappings in userspace by leaving the tag bits of the
+	 * mapping address intact. A non-zero tag will cause the subsequent
+	 * range checks to reject the address as invalid.
+	 *
+	 * See Documentation/arm64/tagged-address-abi.rst for more information.
+	 */
 	addr = untagged_addr(addr);
 
 	if (flags & ~(MREMAP_FIXED | MREMAP_MAYMOVE))
-- 
2.25.1.696.g5e7596f4ac-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
