Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD83C2016
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 13:46:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=56x4/By25DV0K4ei7y9Dr5sPYvmrYtNkuq9bz5vQEIs=; b=LiW
	fsGiKUBrj84oI6x31xDP8J50tPWL/l7lokpa327RVEIBDgoKi8e4arzrClx9DuQpM6RJDovgfWogc
	wkENBsoX7QeSEHzO7yjGLac6sQk9qOVjz/s7jcqy/wB+SR1exjK7fWFjWxCt2kBFafhuUj6++SvNI
	HJHHrkXwx+8PLpnDFnUr5Y1uzNpWrZfMF9Cw0K+HlR1GeMn8kC6jX50QlpUogINXQ0XFGVthaj2qk
	5YuL3fH7SXTBRANIIEbDikEzqsnoZqUJcg18ez/Q3Fs/GhKXEo6LUeikIenOyYFRwUzn5nW4jsisz
	FMhQDMCLGITUQmDUNkPdou0jR8rUeRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEu7q-0002GV-WE; Mon, 30 Sep 2019 11:45:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEu7e-0002DM-P9
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 11:45:48 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 97087216F4;
 Mon, 30 Sep 2019 11:45:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569843946;
 bh=iv/Dtkavbg/c29QLGURU+cPsjlv6mILK2Etm2RWqlsg=;
 h=From:To:Cc:Subject:Date:From;
 b=0SYpXQ7z0QqoDRun4j/lbd+Nx36/8rnMBqY1n7l6Y4BBOg6z5T4r6JtXfDJGLvQQr
 dcVxK9jQDZFTsjWZbuJCCNAP+8uqw3xcoyqeX9kSfNfU9Th0kgCph02Y2BHC1OSk3F
 da3X7DvTVSE0cKe9gbaWg3qLY9bKfNv/RYIiA1FE=
From: Will Deacon <will@kernel.org>
To: torvalds@linux-foundation.org,
	yamada.masahiro@socionext.com
Subject: [PATCH] Partially revert "compiler: enable CONFIG_OPTIMIZE_INLINING
 forcibly"
Date: Mon, 30 Sep 2019 12:45:40 +0100
Message-Id: <20190930114540.27498-1-will@kernel.org>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_044546_847331_6856946A 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Will Deacon <will@kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This reverts commit ac7c3e4ff401b304489a031938dbeaab585bfe0a for ARM and
arm64.

Building an arm64 kernel with CONFIG_OPTIMIZE_INLINING=y has been shown
to violate fixed register allocations of local variables passed to
inline assembly with GCC prior to version 9 which can lead to subtle
failures at runtime:

  https://gcc.gnu.org/bugzilla/show_bug.cgi?id=91111

A very similar has been reported for 32-bit ARM as well:

  https://lkml.kernel.org/r/f5c221f5749e5768c9f0d909175a14910d349456.camel@suse.de

Although GCC 9.1 appears to work for the specific case in the bugzilla
above, the exact issue has not been root-caused so play safe and disable
the option for now on these architectures.

Cc: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Russell King <linux@armlinux.org.uk>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
Cc: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Will Deacon <will@kernel.org>
---
 lib/Kconfig.debug | 1 +
 1 file changed, 1 insertion(+)

diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index 93d97f9b0157..c37c72adaeff 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -312,6 +312,7 @@ config HEADERS_CHECK
 
 config OPTIMIZE_INLINING
 	def_bool y
+	depends on !(ARM || ARM64) # https://gcc.gnu.org/bugzilla/show_bug.cgi?id=91111
 	help
 	  This option determines if the kernel forces gcc to inline the functions
 	  developers have marked 'inline'. Doing so takes away freedom from gcc to
-- 
2.23.0.444.g18eeb5a265-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
