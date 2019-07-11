Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E8E65060
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 05:08:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3nNwdPsYRYEp/U9mptWpXtyNX+J+HgLCizx3Uanq92Q=; b=SKe
	/USgauHgayT8iA3RioTGG2n6We2oy+braIDFgXeiycYCieC6crEZP0p/WOyECS1/MD5oua8rbnOUO
	V9o4ArNVr8WBbsLJiMR49pqI/3jHySpoC/qb7SG7IqaQL+LZuxgii2BbrKihp14C+u9SJMT60k9Rt
	b2K27P+5sj8N/cmycNIKgz3+bsP6NJ3olooaWbzog/h35c22LsZKqiypnwFJVcE803jqG5DZTW3mC
	F5XPQagr9/s5LAb/Oedtv8HhIm0RaIwBuAIMmYuxn7UVnRNUvrP8Xs+JdK847W3uuxrIFkSbhC1Lp
	pf+fpqUxXDm5MAB5vFfxN2iIl0vuH2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlPRD-0008AT-U6; Thu, 11 Jul 2019 03:08:04 +0000
Received: from conuserg-09.nifty.com ([210.131.2.76])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlPR0-00089e-Lj
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 03:07:52 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-09.nifty.com with ESMTP id x6B37G9W027198;
 Thu, 11 Jul 2019 12:07:16 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com x6B37G9W027198
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1562814437;
 bh=wDYz/yHhx6nItjKqfKQXfYFVLdaXf3nRB8CNeDF+UBU=;
 h=From:To:Cc:Subject:Date:From;
 b=eD7rAs8EKGC5P51XykS2mWVAA94CATwbNmy2EGX9wxCsfnZ2N+nX82uNV1oXLNDRJ
 hmE5opz4u7WIYBodpMeAswa/Tbt5fDbu1a1ohzDOay944iuA6+8yap8X90hT59kXZc
 Fh2HLRrFOOjtR/N5WRWq/i/YKNJ2av8OqB1bA/riW2PhZjb+VbZdwhDbQgCnIFHJmQ
 va6W9Uoebfkr/qqXPb9dDqk9/PPUupQhM035ktw9Bb1RJxhO8zSDYd4+/XBArLmrar
 9zlpsgXZKC3NoMiOz3oKNCT/pQEX37SA1g+4IPZdJQcF6ykrijwfaDw415a1DZD4AA
 yzRDl1ctAij2A==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: arm@kernel.org
Subject: [PATCH] ARM: fix O= building with CONFIG_FPE_FASTFPE
Date: Thu, 11 Jul 2019 12:07:12 +0900
Message-Id: <20190711030713.4447-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_200751_052311_A79FBDE5 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.76 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To use Fastfpe, a user is supposed to enable CONFIG_FPE_FASTFPE
and put downstream source files into arch/arm/fastfpe/.

It is not working for O= build because $(wildcard arch/arm/fastfpe)
checks if it exists in $(objtree), not in $(srctree).

Add the $(srctree)/ prefix to fix it.

While I was here, I slightly refactored the code.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

KernelVersion: 5.2

 arch/arm/Makefile | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index f863c6935d0e..792f7fa16a24 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -271,14 +271,9 @@ endif
 
 export	TEXT_OFFSET GZFLAGS MMUEXT
 
-# Do we have FASTFPE?
-FASTFPE		:=arch/arm/fastfpe
-ifeq ($(FASTFPE),$(wildcard $(FASTFPE)))
-FASTFPE_OBJ	:=$(FASTFPE)/
-endif
-
 core-$(CONFIG_FPE_NWFPE)	+= arch/arm/nwfpe/
-core-$(CONFIG_FPE_FASTFPE)	+= $(FASTFPE_OBJ)
+# Put arch/arm/fastfpe/ to use this.
+core-$(CONFIG_FPE_FASTFPE)	+= $(patsubst $(srctree)/%,%,$(wildcard $(srctree)/arch/arm/fastfpe/))
 core-$(CONFIG_VFP)		+= arch/arm/vfp/
 core-$(CONFIG_XEN)		+= arch/arm/xen/
 core-$(CONFIG_KVM_ARM_HOST) 	+= arch/arm/kvm/
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
