Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D8A171725
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 13:32:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7YEwi6MYAwYoqvCNUfJY4siDwgIA4bDmDG4PSu2gObU=; b=ALn
	u/74TY8yIj8RCd+oS8Hm375agvypVnNCHPpO04PGuQP35G8EWMWDt42lNE5Ya7gVAyAjf/sfN6uUJ
	ZxXEsq7yDWE4bHK2IGYCtGhK9F5oqobL1MaMPst0J8eBaOhQ/rvNirMvjA96Btc/HeZ9nkLxDJtKT
	0zz+4sidLT6Al37GRP8u55VcCk5YeF/KA7lZQPGEmE2Y9IwaWAdJLcnatDssxIXGTGqqdOjZk/JhY
	TrprMn8PW3v87CckEiYb7HgC4CDCtFC9ZPwS0vd/GZHlqBHEg0cREWnbZTt3HffwS+qqDOMIp/gBW
	4C2DzQHIfEGpbil8DlEpzscB0cihHug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpt1Y-0005Nk-7T; Tue, 23 Jul 2019 11:32:04 +0000
Received: from conuserg-11.nifty.com ([210.131.2.78])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpszc-0002q2-HU
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 11:30:07 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-11.nifty.com with ESMTP id x6NBTT9t009036;
 Tue, 23 Jul 2019 20:29:30 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com x6NBTT9t009036
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1563881370;
 bh=pnEKyqfOAohbNR2Gvql1ZArOB+TAbhx27FzF/o9Fefw=;
 h=From:To:Cc:Subject:Date:From;
 b=PdVCcOmgrIK98mD62eH5TYnpnYxkPnNxQXMzBqssPyBsvhlH0A+G3uSD7SRVQM0Xh
 5NJqxMGP4RgedFyZpmY/zrg8JPTHUSz7ukuoKj/z2gV6OeB7wTlJaYrVb3Guh03Lwp
 0vH0qvfUeDIaWF7DbnuOuUphHV4pxpMKeY3X/ATYAaBZviMApHs1IZ7YRNj9o2PoCu
 Cjz7K3+tTCGS3VrYjKAkWujGkqvsAEsW7+Dy80A1RYR1hIRLNNsMcGcE6FN+v8Bauq
 zDW1fMBbdgM+QkKO1ccNKAhBz9BPFurNIVlSQAV+ltWxlqRBUXBeZRp3NfMM/375Tw
 pRzsdLROehVhg==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-arm-kernel@lists.infradead.org, Will Deacon <will.deacon@arm.com>
Subject: [PATCH] arm64: remove unneeded uapi/asm/stat.h
Date: Tue, 23 Jul 2019 20:29:22 +0900
Message-Id: <20190723112922.14315-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_043004_992637_3BE9806C 
X-CRM114-Status: UNSURE (   8.10  )
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
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

stat.h is listed in include/uapi/asm-generic/Kbuild, so Kbuild will
automatically generate it.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 arch/arm64/include/uapi/asm/stat.h | 17 -----------------
 1 file changed, 17 deletions(-)
 delete mode 100644 arch/arm64/include/uapi/asm/stat.h

diff --git a/arch/arm64/include/uapi/asm/stat.h b/arch/arm64/include/uapi/asm/stat.h
deleted file mode 100644
index 313325fa22fa..000000000000
--- a/arch/arm64/include/uapi/asm/stat.h
+++ /dev/null
@@ -1,17 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
-/*
- * Copyright (C) 2012 ARM Ltd.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program.  If not, see <http://www.gnu.org/licenses/>.
- */
-#include <asm-generic/stat.h>
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
