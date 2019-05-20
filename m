Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 391A6231A9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 12:48:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WJepoRGqb8R1GxqTTyDco/daeRLDO0ddDjJSZuojYCU=; b=QQF8XwT/8YEpty
	72K9/4euwcKlwxsGwKga5AcVzEszvNuJPw7pCNWd472OD6U5t9R5Xak8vE96bRSHBS+tBAK+0Hxs8
	RtZK+TbBwDjZ5lpHqqj7AqYlEhyNJoD5RNlgVnarugUQctRzqxqS1dws7TmSKlAlMkMvR1ibHZOka
	Y+X5uQHpnflYZ0VyqdTqWOwqqb0S/tLjlmp5ClPyFyi/MUwoYYD3Vk97Er5ZjgiSdMs39TmOnbMD7
	YJDrGQwp3IyOz8qQUHBFhrOLil6fCM63HnyK8DiDFuvih7avX/6GF2WrU/T2UmrCCYZSvlmgbh09c
	V0PPv6j5RQIEzvxMkQYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSfpz-00010w-O2; Mon, 20 May 2019 10:48:11 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSfpU-0000RA-4x; Mon, 20 May 2019 10:47:43 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id AD1E1AFD3;
 Mon, 20 May 2019 10:47:36 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: stefan.wahren@i2se.com, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, Eric Anholt <eric@anholt.net>
Subject: [RFC v2 2/5] clk: bcm2835: set pllb_arm divisor as readonly
Date: Mon, 20 May 2019 12:47:04 +0200
Message-Id: <20190520104708.11980-3-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190520104708.11980-1-nsaenzjulienne@suse.de>
References: <20190520104708.11980-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_034740_424459_F0147EEF 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 viresh.kumar@linaro.org, mturquette@baylibre.com, linux-pm@vger.kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 mbrugger@suse.de, ssuloev@orpaltech.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This divisor is controlled by the firmware, we don't want the clock
subsystem to update it inadvertently.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 drivers/clk/bcm/clk-bcm2835.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/bcm/clk-bcm2835.c b/drivers/clk/bcm/clk-bcm2835.c
index c2772dfb155a..5aea110672f3 100644
--- a/drivers/clk/bcm/clk-bcm2835.c
+++ b/drivers/clk/bcm/clk-bcm2835.c
@@ -465,6 +465,7 @@ struct bcm2835_pll_divider_data {
 	u32 hold_mask;
 	u32 fixed_divider;
 	u32 flags;
+	u32 div_flags;
 };
 
 struct bcm2835_clock_data {
@@ -1349,7 +1350,7 @@ bcm2835_register_pll_divider(struct bcm2835_cprman *cprman,
 	divider->div.reg = cprman->regs + data->a2w_reg;
 	divider->div.shift = A2W_PLL_DIV_SHIFT;
 	divider->div.width = A2W_PLL_DIV_BITS;
-	divider->div.flags = CLK_DIVIDER_MAX_AT_ZERO;
+	divider->div.flags = data->div_flags | CLK_DIVIDER_MAX_AT_ZERO;
 	divider->div.lock = &cprman->regs_lock;
 	divider->div.hw.init = &init;
 	divider->div.table = NULL;
@@ -1676,7 +1677,8 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.load_mask = CM_PLLB_LOADARM,
 		.hold_mask = CM_PLLB_HOLDARM,
 		.fixed_divider = 1,
-		.flags = CLK_SET_RATE_PARENT | CLK_GET_RATE_NOCACHE),
+		.flags = CLK_SET_RATE_PARENT | CLK_GET_RATE_NOCACHE,
+		.div_flags = CLK_DIVIDER_READ_ONLY),
 
 	/*
 	 * PLLC is the core PLL, used to drive the core VPU clock.
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
