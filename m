Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A15865062
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 05:08:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3nNwdPsYRYEp/U9mptWpXtyNX+J+HgLCizx3Uanq92Q=; b=igA
	xwsx8Ztbrh61B6fZB5hWN0/dQbRm+brx2Xu68PJfXV3MXvST8CrsUjc+6N9Xv1WArknNztvXNZRTj
	1e6dIAvYvdxY1OUXZMOBRDIICeAHpfWLaq0Jk3ms+g7/DaSUzRwYSQXKbRh3Dx3MFQYoe9hX9G0Ry
	Y5bbmqQ0ZyGvOXwxf4kj+C4E0xn/sa9OXxggQjLDiFpmY8KOmidBK1C0XpLwkaB9MuVLr9l7LQl5C
	+7yIUoKgUGb0azvd5Xzfvdv5U6DUYLO9TAd5CzSlgVBzyluFVdh1y/1eScLpH1UkOUYwFl8Tlsr3G
	Xgtdi6xJUM0OLtOmLazkz9KSQ7ZrirA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlPRn-0008PR-0H; Thu, 11 Jul 2019 03:08:39 +0000
Received: from conuserg-11.nifty.com ([210.131.2.78])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlPRW-0008Oo-5u
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 03:08:23 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-11.nifty.com with ESMTP id x6B37xiF002252;
 Thu, 11 Jul 2019 12:07:59 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com x6B37xiF002252
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1562814480;
 bh=wDYz/yHhx6nItjKqfKQXfYFVLdaXf3nRB8CNeDF+UBU=;
 h=From:To:Cc:Subject:Date:From;
 b=V9PkWY5tLYehK0nfbUXdhff3w2l+B7zk5PrPFh+Bh61Od5q54W9mfsVEyvL+pOs5J
 Qw71DbB7253tKzAcTJNAXzc+nVFyVJBaKopJ8kEnL5cjtLsbcAgc+SWblGsia9paLm
 MztR4nDGrdQMERC39gVxPJOxC2h5GVdE0qWLLbeS1lCAraFH/Siydi+fKyM1Qfk+Zr
 OWnXUaVSFWKbQxtSl/MTu9NnIixkYqLEkxq61cqjQsPKChxSCjpiOKBTDaoNcvPtL0
 hBCN78ryQOPYwdw4q+qefZQOznnVVmc7SPSVj/0MgeMszvzV3mO3hSFZUbATP0mdp0
 CEyADH22YtY2g==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: patches@arm.linux.org.uk
Subject: [PATCH] ARM: fix O= building with CONFIG_FPE_FASTFPE
Date: Thu, 11 Jul 2019 12:07:56 +0900
Message-Id: <20190711030756.4612-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_200822_462568_2784403F 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.78 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.78 listed in wl.mailspike.net]
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
