Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8123521AA5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 17:35:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mCxOTBzfHiuI6M9SXyyXOf+XH7MBXY1qnAA81jU5/m0=; b=P1I5WjeMMSJuh3
	gG9XzcQ6VEk9gl1wcpEiQjPrK6beu2srzZp6USUSLUA25B8hAX24jz9eDMrItZRxmcZ3N/UJWM0L/
	FrNL302nVeJZSWKxPIrQKVrze0XGtZhVR6hLAKlFuIRjIABhgRT/Ak82P2f2AUFXbHOOwuH4mZZaF
	YrsPBFMcqtOu0PA49YmM+SUkVqqXEHUHvqNQezuqjMf05sB2QcheL1Ix4i625IH9odWxREh631n3k
	VVPy7Jm91sU175BbEFbu6l5NeF3LaEBFRpQ/8w1YwQRevxsAPp1UxuZzjeWr2jMYkVa+sP6w089KH
	DVnC+99liDJZCfvX6u1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRetJ-00083J-KJ; Fri, 17 May 2019 15:35:25 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRetB-00081P-65; Fri, 17 May 2019 15:35:18 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 6F0E2ACF5;
 Fri, 17 May 2019 15:35:14 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: stefan.wahren@i2se.com, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, Eric Anholt <eric@anholt.net>
Subject: [RFC 1/5] clk: bcm2835: set CLK_GET_RATE_NOCACHE on CPU clocks
Date: Fri, 17 May 2019 17:35:03 +0200
Message-Id: <20190517153508.18314-2-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190517153508.18314-1-nsaenzjulienne@suse.de>
References: <20190517153508.18314-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_083517_368936_F424F230 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, ptesarik@suse.com, sboyd@kernel.org,
 viresh.kumar@linaro.org, Michael Turquette <mturquette@baylibre.com>,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 mbrugger@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Raspberry Pi's firmware is responsible for updating the cpu clocks and
pll. This makes sure we get the right rates anytime.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 drivers/clk/bcm/clk-bcm2835.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/bcm/clk-bcm2835.c b/drivers/clk/bcm/clk-bcm2835.c
index 770bb01f523e..c2772dfb155a 100644
--- a/drivers/clk/bcm/clk-bcm2835.c
+++ b/drivers/clk/bcm/clk-bcm2835.c
@@ -411,6 +411,7 @@ struct bcm2835_pll_data {
 	u32 reference_enable_mask;
 	/* Bit in CM_LOCK to indicate when the PLL has locked. */
 	u32 lock_mask;
+	u32 flags;
 
 	const struct bcm2835_pll_ana_bits *ana;
 
@@ -1299,7 +1300,7 @@ static struct clk_hw *bcm2835_register_pll(struct bcm2835_cprman *cprman,
 	init.num_parents = 1;
 	init.name = data->name;
 	init.ops = &bcm2835_pll_clk_ops;
-	init.flags = CLK_IGNORE_UNUSED;
+	init.flags = data->flags | CLK_IGNORE_UNUSED;
 
 	pll = kzalloc(sizeof(*pll), GFP_KERNEL);
 	if (!pll)
@@ -1660,6 +1661,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.ana_reg_base = A2W_PLLB_ANA0,
 		.reference_enable_mask = A2W_XOSC_CTRL_PLLB_ENABLE,
 		.lock_mask = CM_LOCK_FLOCKB,
+		.flags = CLK_GET_RATE_NOCACHE,
 
 		.ana = &bcm2835_ana_default,
 
@@ -1674,7 +1676,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.load_mask = CM_PLLB_LOADARM,
 		.hold_mask = CM_PLLB_HOLDARM,
 		.fixed_divider = 1,
-		.flags = CLK_SET_RATE_PARENT),
+		.flags = CLK_SET_RATE_PARENT | CLK_GET_RATE_NOCACHE),
 
 	/*
 	 * PLLC is the core PLL, used to drive the core VPU clock.
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
