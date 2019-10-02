Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94CDBC88BB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 14:38:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=tyw1eVe1TMQ1Hu6kfWrbL0/8E5beZV4y1oUL/F0x7gs=; b=tFQ
	izM1C1+1Di4WEZOAXjhSJhaylcX2yFHad7KOIt7dUZszm5K5cGNb+Mg91Fs7mJOIxisLhz/ofHMWa
	sskQLVEMZmkNJMvS/d9Xqat2ZjQNKWqbPekCFCuUGYFh59bXQ0SfimedrkRE8LVpErAjO8UlZ6Luz
	cY4gapMIFuflzVKj12+VysD10lP4JbxoVX4F6sDAZuKk/p5a+s6Iz6y2PIEWRBGEeH8d43G2+aYkO
	rsPj70akpzq+D9TCx6Zj/vom8WYiut3ilg+80aTR1QIJtNJKM3sGnkpy7kz34GOPczFE3GuZFoYl+
	yzEO9FXPx+pm+AotjR10a4kFlbh/hAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFdtH-00052F-HJ; Wed, 02 Oct 2019 12:37:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFdtB-00051p-33
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 12:37:54 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 449C62133F;
 Wed,  2 Oct 2019 12:37:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570019872;
 bh=ChgbF8+fzmNdqmEfQuAFCyRjTz2T+1noDP824BoUdUA=;
 h=From:To:Cc:Subject:Date:From;
 b=FQ8a5XW46P5kTvQsl4Oh08nxbDx+7S/lIxSjBnAMlgfDhepfa8Snuw90lltokSE1y
 r5FjfeyBlMaXl8v2rG7APdZA7INfhWRnyOsNHWqJG8k+Xq0Dkd01QwlpyoVTInm8Lc
 DgqXXqwIFkB4a85zQXkff0DyjWv8aahFRMq6m9EI=
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: Mark functions using explicit register variables as
 '__always_inline'
Date: Wed,  2 Oct 2019 13:37:46 +0100
Message-Id: <20191002123746.22769-1-will@kernel.org>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_053753_159024_5D14C527 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Russell King <linux@armlinux.org.uk>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, Will Deacon <will@kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As of ac7c3e4ff401 ("compiler: enable CONFIG_OPTIMIZE_INLINING forcibly"),
inline functions are no longer annotated with '__always_inline', which
allows the compiler to decide whether inlining is really a good idea or
not. Although this is a great idea on paper, the reality is that AArch64
GCC prior to 9.1 has been shown to get confused when creating an
out-of-line copy of a function passing explicit 'register' variables
into an inline assembly block:

  https://gcc.gnu.org/bugzilla/show_bug.cgi?id=91111

It's not clear whether this is specific to arm64 or not but, for now,
ensure that all of our functions using 'register' variables are marked
as '__always_inline' so that the old behaviour is effectively preserved.

Hopefully other architectures are luckier with their compilers.

Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Russell King <linux@armlinux.org.uk>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Will Deacon <will@kernel.org>
---

I plan to queue this as a fix via the arm64 tree, although I still think
it's papering over a wider issue for us.

 arch/arm64/include/asm/atomic_lse.h | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/atomic_lse.h b/arch/arm64/include/asm/atomic_lse.h
index c6bd87d2915b..574808b9df4c 100644
--- a/arch/arm64/include/asm/atomic_lse.h
+++ b/arch/arm64/include/asm/atomic_lse.h
@@ -321,7 +321,8 @@ static inline s64 __lse_atomic64_dec_if_positive(atomic64_t *v)
 }
 
 #define __CMPXCHG_CASE(w, sfx, name, sz, mb, cl...)			\
-static inline u##sz __lse__cmpxchg_case_##name##sz(volatile void *ptr,	\
+static __always_inline u##sz						\
+__lse__cmpxchg_case_##name##sz(volatile void *ptr,			\
 					      u##sz old,		\
 					      u##sz new)		\
 {									\
@@ -362,7 +363,8 @@ __CMPXCHG_CASE(x,  ,  mb_, 64, al, "memory")
 #undef __CMPXCHG_CASE
 
 #define __CMPXCHG_DBL(name, mb, cl...)					\
-static inline long __lse__cmpxchg_double##name(unsigned long old1,	\
+static __always_inline long						\
+__lse__cmpxchg_double##name(unsigned long old1,				\
 					 unsigned long old2,		\
 					 unsigned long new1,		\
 					 unsigned long new2,		\
-- 
2.23.0.444.g18eeb5a265-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
