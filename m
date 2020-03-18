Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FFB818A1D1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 18:43:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SaLMBOCMZlCSnvxkjRHDv+umW9C6UK8cx8Tz1q0TYTY=; b=QDLJrGjeHM+BxwXbK3GJLiQckP
	c8FkP7PBtAuETRedGDQTvivMz//dZct/jb22wbGCwLKe4NJPMl03U1u+y1L+4C4v6vxMAhGCafIfY
	aaLVaOOsjt1/z91VndgxCfCrZrF3DI6V7m07W7PtaSmz8VUWfkxRqdHwPK56pwOsz91zUyuZW+S+z
	i0rDmJBH7krTf10Rgp8MZ1RbkvTGro1QAECROKXGfDyjDiO9wFBAPN3tLNydUJHjlq+deiYPm2pLA
	bwhgcFXz9Or0x5U17d8nfkKtJMk4m2s/YdnF+EWU9bIZyOueU3HMjWqe1AQKvCSc6pu+h+5g5/V5v
	4fqSyJtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEcjJ-0006Ub-Ho; Wed, 18 Mar 2020 17:43:45 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEcii-0006CL-05
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 17:43:09 +0000
Received: by mail-wr1-x444.google.com with SMTP id v11so31572894wrm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Mar 2020 10:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=LnAT0cbyFmhoBQ00Ga1dspfG4naptUEJD59/Qz0lOxU=;
 b=PRRCKzf4bNfaTiGfWH6QKQv/dvGuLgHqvuvaV4gJcjkcxy2TykA6vkfuE/9hnW5nFy
 2C5jDZXp2cSPSeVa2h3zd+QwRPt4Aslz1Yt2dY5K3rm3bSJ3WN+ZwzMlNuJZRnLHLd5G
 MFY7QL0QVaxtIadyGNDpQHg1bLXXYKNL0c71NGQk+XkNrg2hpz1leQ/zVZV73wyUmAVf
 68gdoIW4mlGnNyiXLvf5nWVhSNsb/IccqAPNXpCYlq/rNKRVzZnW74eI+6npP1WQuyAa
 VcKudz8wE01E22QZoM7HfT8JPlUm/NEiKWRN/1QXmY17419evX78ww3/L+gekT97xd8q
 PfQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=LnAT0cbyFmhoBQ00Ga1dspfG4naptUEJD59/Qz0lOxU=;
 b=A3FIMExlqMPnJdcc/ROrFqzXBVOjL6X8yZpzQ/VUwmIDf12aEo/DFCAVMHduv+S3+Z
 g15jvlcXt8pbUjmK4Dh+/0xulcrNTlOxazn6fxQjq6C8vpsW5/x/iZ+VgGFIQbqqOETj
 sMfPM1cmQWCAyJGzi4X0WphASCPIXooAyfwK/feVqHEOe1uU9H1vsTYBBchcqhZofC4f
 Rjt5Ntip719fOc3VMthwhYsndZuXnz85fJgOSq0jqDM79LuvZzZG3EkfnQ8fe23CGE6/
 CCqx9m5C87pK0P4T5rJF79j16b3X4FycXChx88yLHAATZQ0BlCV66q65shT74sWdRBvx
 6oIA==
X-Gm-Message-State: ANhLgQ3sGavpLuJjP0nszpHGsJrP2qxKcCY0S/z5TyuaH1Tsx6K07cuY
 KOzGh4GUoYPfNZwXtqQXcEk1Ew==
X-Google-Smtp-Source: ADFU+vsd/NKHL4FhKagu2tXjW/yjB1glAeG3sSXkBnkwpLQzrlhtGiCdZpNzuliExWPaVJQE7Mu50w==
X-Received: by 2002:a5d:55c7:: with SMTP id i7mr6954159wrw.252.1584553386183; 
 Wed, 18 Mar 2020 10:43:06 -0700 (PDT)
Received: from mai.imgcgcw.net ([2a01:e34:ed2f:f020:5d64:ea6:49bd:69d7])
 by smtp.gmail.com with ESMTPSA id r3sm3787212wrm.35.2020.03.18.10.43.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Mar 2020 10:43:05 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: tglx@linutronix.de
Subject: [PATCH 20/21] clocksource/drivers/imx-sysctr: Remove unused includes
Date: Wed, 18 Mar 2020 18:41:30 +0100
Message-Id: <20200318174131.20582-20-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200318174131.20582-1-daniel.lezcano@linaro.org>
References: <e6cd8adf-60df-437a-003f-58e3403e4697@linaro.org>
 <20200318174131.20582-1-daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_104308_049006_AAFA45AB 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Anson Huang <Anson.Huang@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang <Anson.Huang@nxp.com>

There is nothing in use from of_address.h/of_irq.h, remove them.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Link: https://lore.kernel.org/r/1584413713-7376-1-git-send-email-Anson.Huang@nxp.com
---
 drivers/clocksource/timer-imx-sysctr.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/clocksource/timer-imx-sysctr.c b/drivers/clocksource/timer-imx-sysctr.c
index b7c80a368a1b..18b90fc56bfc 100644
--- a/drivers/clocksource/timer-imx-sysctr.c
+++ b/drivers/clocksource/timer-imx-sysctr.c
@@ -4,8 +4,6 @@
 
 #include <linux/interrupt.h>
 #include <linux/clockchips.h>
-#include <linux/of_address.h>
-#include <linux/of_irq.h>
 
 #include "timer-of.h"
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
