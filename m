Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D24112A5B2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Dec 2019 04:00:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=H/Yn12/TEV8XlRkgj5/OEdPP6sElL5d1V3vsNiu8M40=; b=LSW
	Qw+ihq1Ld9m1hGVIMzONdopwnqn+VRgDqhBeh5W5QUDlbIpdIMezu2DhJsV+Wxs0vgdRoZB6UoLf7
	R/RoMRjdeweKC6KXYidwtuQEirtcGF6FjS271+Tt76zkU/czLaix3i5aW3UTQ/xLu491b0nVYM7mo
	D4rvpVUY0YEjK9zKZgxDywgdS4y+MA46K6kn7/zyr57MT0OYFqnbiAUgfSnBYwvH31vPms6VY+7pD
	9Iqyf0mexa25xNu5YsueKxNdfaVJHQ6j3l7TtLL7AaMJXnqGBbknwB/549BD1ryI4IvK0tHCSL475
	s4t1ryh9hv4CnJPdH3CPv3rAUx0BS7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijwtx-00015r-H6; Wed, 25 Dec 2019 02:59:57 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijwtk-00014Q-U0; Wed, 25 Dec 2019 02:59:46 +0000
Received: by mail-pj1-x1042.google.com with SMTP id a6so1848799pjh.2;
 Tue, 24 Dec 2019 18:59:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id;
 bh=7nuZCmofGKzlwBIrUtx9+xXC2rtz5xbgMfAxHfQhopg=;
 b=SdALMCXAVU+WmgT7SdCPo8T7YUFkAqo78sHZBDPqKcPfb0pHSebzvwxDizTAN5o33k
 Xc4SB2vWDll6qVjQB/LSZ1R1dEDj6BoNikCjibjnBpLiPxKrgpuIVIbcu+NYiTAMKlgR
 ZPHS70IUiut/x44G6bEtMElLSEhZ1V+rc5+wiBdMNVFkBwOr4xUhzWAcBt0dnMaPUloO
 scL8YERWSUC/fy0qIM1ES1FTlWAhnbM4VET6GzqrOYF3GCIeysWfDwzN+ONlbAB0/Epx
 vWxNJK1PgaleoTDYSIkc5/VuiitEB4mif59a40MHgClxP47DIzTt7fG2baoRpwitRkF7
 YKng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
 bh=7nuZCmofGKzlwBIrUtx9+xXC2rtz5xbgMfAxHfQhopg=;
 b=H8gk0OD2xCMe+PN/ViLeTxE9Kjwm3hq/djOw9SvLC9cJkiHTUufqxpoiRkNQ9pYGAd
 0cU+/+fUo+W6hE3y1TmWykyMdLyfZFlZqWC9FfDWEfgLPMx/Be6RZvrOtPW/cS3Qfj3L
 rDrCjaPyiHxrTtaHzmpEwd6Or2Ty2Hg0lRj972ZvcQ2VA1XMQkAMJ6OH+1ww+P8yUxIG
 jxzq+A+weIwCN88KBP90REk2cpkHwdizzQvQ8vmopYQPy38ekLUcq2E4o1lyRlwFXFgc
 jaSLuH43+jIgpO5Jk5BC+v6tUnBBvkG2b5IC6vgqEXa+KMs7vLUxtQSTeODPjYcfIYy7
 f6oQ==
X-Gm-Message-State: APjAAAWDaYyIdV1pJfBxJeqhP6tP6Yw+Nh0xXOUkSOJrNxIpg5SqSdGK
 1tNp4vIslpzX9noGpOzrKGHK4eqG
X-Google-Smtp-Source: APXvYqys4aYLLyESGItdQnJRkesq6ONgL3NXfKj544HJN4rh5QYA1j7sdRBPrcwNBHwf4EylFnYVsQ==
X-Received: by 2002:a17:90a:d985:: with SMTP id
 d5mr10463606pjv.73.1577242781676; 
 Tue, 24 Dec 2019 18:59:41 -0800 (PST)
Received: from localhost.localdomain ([103.29.142.67])
 by smtp.gmail.com with ESMTPSA id d2sm4849443pjv.18.2019.12.24.18.59.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Dec 2019 18:59:41 -0800 (PST)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH] Revert "rockchip: make sure timer7 is enabled on rk3288
 platforms"
Date: Wed, 25 Dec 2019 10:59:08 +0800
Message-Id: <20191225025908.25305-1-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_185944_993719_F6E8C5B7 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kever.yang[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Kever Yang <kever.yang@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 Russell King <linux@armlinux.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This reverts commit 2a9fe3ca84afff6259820c4f62e579f41476becc.
All the U-Boot version for rk3288 including mainline, rockchip
legacy/next-dev, have init the timer7, so no need to init it in kernel
again.

One more reason is that if  we enable the trust for rk3288, then timer7 is
not able to be accessed in kernel.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

 arch/arm/mach-rockchip/rockchip.c | 23 -----------------------
 1 file changed, 23 deletions(-)

diff --git a/arch/arm/mach-rockchip/rockchip.c b/arch/arm/mach-rockchip/rockchip.c
index f9797a2b5d0d..f6e1851ed46a 100644
--- a/arch/arm/mach-rockchip/rockchip.c
+++ b/arch/arm/mach-rockchip/rockchip.c
@@ -21,31 +21,8 @@
 #include "core.h"
 #include "pm.h"
 
-#define RK3288_TIMER6_7_PHYS 0xff810000
-
 static void __init rockchip_timer_init(void)
 {
-	if (of_machine_is_compatible("rockchip,rk3288")) {
-		void __iomem *reg_base;
-
-		/*
-		 * Most/all uboot versions for rk3288 don't enable timer7
-		 * which is needed for the architected timer to work.
-		 * So make sure it is running during early boot.
-		 */
-		reg_base = ioremap(RK3288_TIMER6_7_PHYS, SZ_16K);
-		if (reg_base) {
-			writel(0, reg_base + 0x30);
-			writel(0xffffffff, reg_base + 0x20);
-			writel(0xffffffff, reg_base + 0x24);
-			writel(1, reg_base + 0x30);
-			dsb();
-			iounmap(reg_base);
-		} else {
-			pr_err("rockchip: could not map timer7 registers\n");
-		}
-	}
-
 	of_clk_init(NULL);
 	timer_probe();
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
