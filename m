Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B67E51C9774
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 19:25:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CUcRJ0RniG1Qt0dssTkTvNUj/qqL3yKahov50TlEYkU=; b=aKV5ijYfchUTIQ
	AhAEs2PkDgzltZ4JDLBL4X16LRidQ5DXDBAUdVIK9fPfHcPJhy62TI1/+tsuRWqWIySvexjjirh12
	az1mpz6LR5Wybi1+Is9r3H8mFwCf4oMi/2+PNWRwCJ0ch65CZcU3cQJYXTSEJNqshlqDe8r6EHsKO
	F1Oxt7ESOv8wyt+ZWnDy8Oxycg9w5AhghllRHx4bUHbMPlZbJc+X+4ZSnMobS9+pqHpp7uI2tCbPo
	qAsV4TmrbHeDO4e1exeXv8T8aJx/2mOJgTV9tFiwROIGzDO2eMDHDgZ2o4zle2q770agw4AG9oi59
	HMgcF245h93+GY9J1sGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWkH0-0003Q1-7N; Thu, 07 May 2020 17:25:26 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWkFP-00028U-8I
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 17:23:48 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 03DD881A1;
 Thu,  7 May 2020 17:24:34 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 03/14] clk: ti: dm816: enable sysclk6_ck on init
Date: Thu,  7 May 2020 10:23:19 -0700
Message-Id: <20200507172330.18679-4-tony@atomide.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200507172330.18679-1-tony@atomide.com>
References: <20200507172330.18679-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_102347_347683_77EBDE4A 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: Rob Herring <robh@kernel.org>, Grygorii Strashko <grygorii.strashko@ti.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Stephen Boyd <sboyd@kernel.org>,
 "H. Nikolaus Schaller" <hns@goldelico.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Graeme Smecher <gsmecher@threespeedlogic.com>, linux-kernel@vger.kernel.org,
 Brian Hutchinson <b.hutchman@gmail.com>, Tero Kristo <t-kristo@ti.com>,
 Lokesh Vutla <lokeshvutla@ti.com>, devicetree@vger.kernel.org,
 Andreas Kemnade <andreas@kemnade.info>, Keerthy <j-keerthy@ti.com>,
 linux-omap@vger.kernel.org, Adam Ford <aford173@gmail.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We need sysclk6_ck enabled early as it is needed by l4_ls and system
timers early on boot. This removes the dependency of system timers to
the interconnect related code that can be then probed later on when
suitable at module_init time.

Cc: linux-clk@vger.kernel.org
Cc: Grygorii Strashko <grygorii.strashko@ti.com>
Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Rob Herring <robh@kernel.org>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: Tero Kristo <t-kristo@ti.com>
Acked-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/clk/ti/clk-816x.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/ti/clk-816x.c b/drivers/clk/ti/clk-816x.c
--- a/drivers/clk/ti/clk-816x.c
+++ b/drivers/clk/ti/clk-816x.c
@@ -73,6 +73,7 @@ static const char *enable_init_clks[] = {
 	"ddr_pll_clk1",
 	"ddr_pll_clk2",
 	"ddr_pll_clk3",
+	"sysclk6_ck",
 };
 
 int __init dm816x_dt_clk_init(void)
-- 
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
