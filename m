Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D8C82B054
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 10:35:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=e0uLMWdGth/aWoBOknRkmQMTdSGvyL4tsaOqLsdJeeo=; b=Igk
	JdwYp6oUgIPygEUDSNkfnNplAmC0BP9C+wFAkqVFlehdTVyhjNOfddVV8WqmsRZGpTh4dukyEc1i3
	1aJFyyniBzuXX1T+CsUy2q+bKoz+E+xHljuFqv+bUQ3Io/WQQx9kT4lNhCiR7B/vtVsmd5GIAN2Hl
	RCCQGnXDILUFxgUtVnxaY0bcMVxBlZc4p9KU+K/g7QnFU4Dc2NBSkLUvESzCUcnuJLJ0PNMsNOBOi
	7PvqnwmU355LErCmi7jmCcTs1WmiOXanSEmy+TyhQt6LpRUruJiSc23sv7+y3LXWIgGde5BmRnGBz
	/lGfw81fSZMGRP5IMl6rUwoc2DRZ80Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVB6o-0000XT-Up; Mon, 27 May 2019 08:35:54 +0000
Received: from conuserg-10.nifty.com ([210.131.2.77])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVB6C-0008I2-SD
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 08:35:18 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-10.nifty.com with ESMTP id x4R8Yoq3030794;
 Mon, 27 May 2019 17:34:51 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com x4R8Yoq3030794
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1558946091;
 bh=uljHGbwcwma+Yj7XR85d+MU5D/JvVLcbwHSAmJZ31rU=;
 h=From:To:Cc:Subject:Date:From;
 b=zqPVOvMowzvhINtwY2QxxN5u+dR1diQPRnYA2a3M5M+kf2exzqxxTqLujOt6DnGP2
 QsZwnXgdU1DFX8JbiZ57RTbw7zer6uVU2zbmc8KVZORVipqdBlcC8/FD7CF162ibws
 A7l3HW7fp/NLvq+uKuXpXggu/FXN4avIJrKlEXEQpM/knEb+g5QTEcP0+rvtGO1H5Y
 Z4QX75CfgEH0y3qbfD9hCs5WPHzBqcrJ6L7xvyMPth/K07KXzA8/hbWXsKI5Eq1CxY
 AoJx1kd3wjdp5OM5xyxVWSa6usleyGgXM/MYlU7cR93MBPLV8avC3v62/TIkS2JCMy
 vwmid5QDw46NQ==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-arm-kernel@lists.infradead.org, Will Deacon <will.deacon@arm.com>
Subject: [PATCH 0/2] Allow assembly code to use BIT(), GENMASK(),
 etc. and clean-up arm64 header
Date: Mon, 27 May 2019 17:34:10 +0900
Message-Id: <20190527083412.26651-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_013517_120269_68929905 
X-CRM114-Status: UNSURE (   6.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.77 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Some in-kernel headers use _BITUL() instead of BIT().

 arch/arm64/include/asm/sysreg.h
 arch/s390/include/asm/*.h

I think the reason is because BIT() is currently not available
in assembly. It hard-codes 1UL, which is not available in assembly.

1/2 replaced
   1UL -> UL(1)
   0UL -> UL(0)
   1ULL -> ULL(1)
   0ULL -> ULL(0)

With this, there is no more restriction that prevents assembly
code from using them.

2/2 is a clean-up as as example.

I can contribute to cleanups of arch/s390/, etc.
once this series lands in upstream.

I hope both patches can go in the arm64 tree.



Masahiro Yamada (2):
  linux/bits.h: make BIT(), GENMASK(), and friends available in assembly
  arm64: replace _BITUL() with BIT()

 arch/arm64/include/asm/sysreg.h | 82 ++++++++++++++++-----------------
 include/linux/bits.h            | 17 ++++---
 2 files changed, 51 insertions(+), 48 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
