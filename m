Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 385F570B91
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 23:37:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p3di5VUBxGEymvY0ZvH5NxLN4UWz26UQvegLKZ4AzLo=; b=AdPwP/Mmxw2kVk
	V/mvYyVL6wv55/o9vEzcQbV76atcStGgTrFsJuCWBfThQrtqEx5aRhxVo/1QEqBolXeXNT1m2MPF2
	ox2Wbyv1jwT8fFppLI1FEEAKUbrng2bpqJMVzRl2SlQaipcF2kgfga3m6UCP6wtSNVv3DajCK4MAp
	qR2BbQhnkkwYNdVlgz0jhYm+T/L7mBhmynKVQ8viFLyjfkydQwnGg2YgbwrufjN2alvLrdmn+TpcL
	exbFHd8b9t4M4Pt8SPobihvX52oitya5R5506+uwPZhemDrWKpNssHXjfI9IA4nldzNeHz/4g6GRB
	lz/SJFjYgWK7FD3D5LMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpg09-0007xM-Bd; Mon, 22 Jul 2019 21:37:45 +0000
Received: from smtp02.smtpout.orange.fr ([80.12.242.124]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpfzt-0007ve-2B
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 21:37:30 +0000
Received: from localhost.localdomain ([92.140.204.221]) by mwinf5d78 with ME
 id fxdM200024n7eLC03xdMiE; Mon, 22 Jul 2019 23:37:22 +0200
X-ME-Helo: localhost.localdomain
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Mon, 22 Jul 2019 23:37:22 +0200
X-ME-IP: 92.140.204.221
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: nsekhar@ti.com,
	bgolaszewski@baylibre.com,
	linux@armlinux.org.uk
Subject: [PATCH] ARM: davinci: dm646x: Fix a typo in the comment
Date: Mon, 22 Jul 2019 23:36:57 +0200
Message-Id: <20190722213657.27175-1-christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_143729_400661_971E4467 
X-CRM114-Status: GOOD (  16.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The driver is dedicated to DM646x. So update the description in the top
most comment accordingly.

It must have been derived from dm644x.c, but looks DM646 speecific now.

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
 arch/arm/mach-davinci/dm646x.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-davinci/dm646x.c b/arch/arm/mach-davinci/dm646x.c
index 62ca952fe161..4c58510e5792 100644
--- a/arch/arm/mach-davinci/dm646x.c
+++ b/arch/arm/mach-davinci/dm646x.c
@@ -1,5 +1,5 @@
 /*
- * TI DaVinci DM644x chip specific setup
+ * TI DaVinci DM646x chip specific setup
  *
  * Author: Kevin Hilman, Deep Root Systems, LLC
  *
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
