Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8CC3D4D1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 19:59:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JBxeYqgN8HAfaJ3QhtY1Cc+9L9398iN6MhWrT+QKMFI=; b=ZNuc9PoUvDzyPX
	NjQ/9S+gbIj2v7gLV145Q9/Exo0Sc44yP2WH6iJoYAYPnoUhISoMfZNInmqvezf/3JcBbNePwsPLa
	EB+Fq/GkD9x2XteLpWki3j6y1TD2/T/VzuQk6CpSGikumTo0pjC/ei7Qom0G1Xw1llJ0P9y5c04Ft
	1GN4eSy6fhzDvZASsZBs/jozRMLYkrE+M1RwXNiovla3M0NjyXzeRQZcaRLBMBxsv2kcJvE4ZYQPb
	KHDW84AEQFzQPJtonv8DC1S7YnGXahNWtK/+sDpjJiK0yAPX8gBfpSjcdrvVfwZCOYiv76kr9osmK
	AKw74d81iUxC6Hn3mHew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hal3l-0007bl-N6; Tue, 11 Jun 2019 17:59:49 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hal3X-0007R6-SK; Tue, 11 Jun 2019 17:59:37 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 8D1D8AD8D;
 Tue, 11 Jun 2019 17:59:34 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: stefan.wahren@i2se.com, Eric Anholt <eric@anholt.net>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH v3 1/7] clk: bcm2835: remove pllb
Date: Tue, 11 Jun 2019 19:58:34 +0200
Message-Id: <20190611175839.28351-2-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190611175839.28351-1-nsaenzjulienne@suse.de>
References: <20190611175839.28351-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_105936_063402_DAF159BC 
X-CRM114-Status: GOOD (  13.17  )
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

Raspberry Pi's firmware controls this pll, we should use the firmware
interface to access it.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Acked-by: Eric Anholt <eric@anholt.net>
---

Changes since v1:
  - Add comment to explain why pllb isn't there anymore

 drivers/clk/bcm/clk-bcm2835.c | 28 ++++------------------------
 1 file changed, 4 insertions(+), 24 deletions(-)

diff --git a/drivers/clk/bcm/clk-bcm2835.c b/drivers/clk/bcm/clk-bcm2835.c
index 770bb01f523e..867ae3c20041 100644
--- a/drivers/clk/bcm/clk-bcm2835.c
+++ b/drivers/clk/bcm/clk-bcm2835.c
@@ -1651,30 +1651,10 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.fixed_divider = 1,
 		.flags = CLK_SET_RATE_PARENT),
 
-	/* PLLB is used for the ARM's clock. */
-	[BCM2835_PLLB]		= REGISTER_PLL(
-		.name = "pllb",
-		.cm_ctrl_reg = CM_PLLB,
-		.a2w_ctrl_reg = A2W_PLLB_CTRL,
-		.frac_reg = A2W_PLLB_FRAC,
-		.ana_reg_base = A2W_PLLB_ANA0,
-		.reference_enable_mask = A2W_XOSC_CTRL_PLLB_ENABLE,
-		.lock_mask = CM_LOCK_FLOCKB,
-
-		.ana = &bcm2835_ana_default,
-
-		.min_rate = 600000000u,
-		.max_rate = 3000000000u,
-		.max_fb_rate = BCM2835_MAX_FB_RATE),
-	[BCM2835_PLLB_ARM]	= REGISTER_PLL_DIV(
-		.name = "pllb_arm",
-		.source_pll = "pllb",
-		.cm_reg = CM_PLLB,
-		.a2w_reg = A2W_PLLB_ARM,
-		.load_mask = CM_PLLB_LOADARM,
-		.hold_mask = CM_PLLB_HOLDARM,
-		.fixed_divider = 1,
-		.flags = CLK_SET_RATE_PARENT),
+	/*
+	 * PLLB is used for the ARM's clock. Controlled by firmware, see
+	 * clk-raspberrypi.c.
+	 */
 
 	/*
 	 * PLLC is the core PLL, used to drive the core VPU clock.
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
