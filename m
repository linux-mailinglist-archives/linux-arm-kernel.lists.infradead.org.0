Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B0E2EE2EC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 15:56:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JmsuGMR+lf7/qi2tEs1Sj2AiJBzqnviWLa6B6slOXRo=; b=NNxKguSQzPPOqZOcq7At0J0QKC
	KcDWu2/YpA+ix4c3bHqiAClr2mBAI/sBAKAq0w6Gl5GaU5azoGIzzAfbLTfi/HJknNkyYUPoPS1JB
	qOzqMFabLKYyEdJHCABsMe8pfJCkcNajWFtM+rWhTK8nd/z5oVDbpGbGfnN+heS+1Cyf0muxe1qGS
	Q+w2vlh92ieRTtlEGxlK8MoCqdlKkuv4pjLlXAwSBiVHK8NUcIbkPCLeoyBPLXiZlZl+pdGxlXKtF
	44xEpRyDDpjZ+Ec+cJHEnTOllPexNkWXIKg4WKGD02kKEN/dQfwx+7qQ+5Lql2aJdA8Y0aXKgsGeA
	btFIUzFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRdm1-0003i8-Ro; Mon, 04 Nov 2019 14:56:05 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRdlq-0003gC-TX
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 14:55:56 +0000
Received: by mail-wr1-x443.google.com with SMTP id v9so17459478wrq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 06:55:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=x0xctCv2ZXCL79AMXPVjCqXbn5s/U7pml38dAOXy2E4=;
 b=USBcrqb55X8IEr9R+6PEy76ot8zTTG60JR1BqHAr5P8UdlA3pVqDIW4NynvFTyMjff
 lCRl5lvpAW4dzz4BzMP9+TmtW6My7rCHvitpZyk+4IaHp16+XKOht0Nk+unbOTf0AZ59
 AdW14SilzJrZjigDLRva0Gopu57xRfMWNDtOWhazNDi104gHFiosI66RXydndE/r4qoA
 n98gA+YtBTzBppurjsv21dhHNKKTQet8Om52TQ64Vzq6BAyi8uX5WSfNP1dj+d8NSfZf
 LhydcUAE34aJu/NNtKXrof6fgyKwMZYS9H92A57ExYNj+MvorwghUCGuITuSA2I5BcE+
 UHSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=x0xctCv2ZXCL79AMXPVjCqXbn5s/U7pml38dAOXy2E4=;
 b=gi8tyv74mK2RdD11gwN7h9t2AtjfeVVpH5jXrJoU3/H4DfGkzjYo+uwALBufCp58hB
 v+TkYhpDtX/mni+nkz5XIe+rvRoJ3uMdbaXj90S1fw2cwCGeDRfXkusV2WYvCv9I8qQH
 bJrcIqLRMppnlxsDx4ZYoBiLeDTVdyoZiwUWV2MwNdEdJQzPmGTYzw1tv8jrE/VoADip
 7kn9Hu66AQoATBQ4Xsx0hscT4LBlD6sof9xXEKDYztvveA5G1P4thCIuBU2jloZ7cFvN
 lfA1XdFjlUFykFblqAYZ5kMgIZpiJLSNKjV3/ztYQc6rk9eO8rSvL/Z9YetOpJzfSOIm
 KmqQ==
X-Gm-Message-State: APjAAAVI9cWhJTxkzvmE7aqQWAHopPCpPnHhIHMIW7c2Nyd12dnP0aSX
 M/DDOr3uFrscc0uc+ucBRp5NAQ==
X-Google-Smtp-Source: APXvYqxGTS8lxAdtVp22O/xmTQi31hcZy866LHn7jJTH/eFiE4pgUGCrcG0pKGOj1MnkDLxkOIOn/g==
X-Received: by 2002:a5d:6cb0:: with SMTP id a16mr6160594wra.194.1572879353332; 
 Mon, 04 Nov 2019 06:55:53 -0800 (PST)
Received: from mai.imgcgcw.net ([2a01:e34:ed2f:f020:58da:b044:f184:d281])
 by smtp.gmail.com with ESMTPSA id f143sm18490907wme.40.2019.11.04.06.55.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Nov 2019 06:55:52 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: tglx@linutronix.de
Subject: [PATCH 1/2] clocksource/drivers/mediatek: Fix error handling
Date: Mon,  4 Nov 2019 15:55:42 +0100
Message-Id: <20191104145543.2523-1-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <2210d602-bdab-5256-57b4-6e499c4b7644@linaro.org>
References: <2210d602-bdab-5256-57b4-6e499c4b7644@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_065554_984393_44CEF4F8 
X-CRM114-Status: GOOD (  15.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
 Fabien Parent <fparent@baylibre.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 linux-kernel@vger.kernel.org, "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Fabien Parent <fparent@baylibre.com>

When timer_of_init fails, it cleans up after itself by undoing
everything it did during the initialization function.

mtk_syst_init and mtk_gpt_init both call timer_of_cleanup if
timer_of_init fails. timer_of_cleanup try to release the resource
taken.  Since these resources have already been cleaned up by
timer_of_init, we end up getting a few warnings printed:

[    0.001935] WARNING: CPU: 0 PID: 0 at __clk_put+0xe8/0x128
[    0.002650] Modules linked in:
[    0.003058] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 4.19.67+ #1
[    0.003852] Hardware name: MediaTek MT8183 (DT)
[    0.004446] pstate: 20400085 (nzCv daIf +PAN -UAO)
[    0.005073] pc : __clk_put+0xe8/0x128
[    0.005555] lr : clk_put+0xc/0x14
[    0.005988] sp : ffffff80090b3ea0
[    0.006422] x29: ffffff80090b3ea0 x28: 0000000040e20018
[    0.007121] x27: ffffffc07bfff780 x26: 0000000000000001
[    0.007819] x25: ffffff80090bda80 x24: ffffff8008ec5828
[    0.008517] x23: ffffff80090bd000 x22: ffffff8008d8b2e8
[    0.009216] x21: 0000000000000001 x20: fffffffffffffdfb
[    0.009914] x19: ffffff8009166180 x18: 00000000002bffa8
[    0.010612] x17: ffffffc012996980 x16: 0000000000000000
[    0.011311] x15: ffffffbf004a6800 x14: 3536343038393334
[    0.012009] x13: 2079726576652073 x12: 7eb9c62c5c38f100
[    0.012707] x11: ffffff80090b3ba0 x10: ffffff80090b3ba0
[    0.013405] x9 : 0000000000000004 x8 : 0000000000000040
[    0.014103] x7 : ffffffc079400270 x6 : 0000000000000000
[    0.014801] x5 : ffffffc079400248 x4 : 0000000000000000
[    0.015499] x3 : 0000000000000000 x2 : 0000000000000000
[    0.016197] x1 : ffffff80091661c0 x0 : fffffffffffffdfb
[    0.016896] Call trace:
[    0.017218]  __clk_put+0xe8/0x128
[    0.017654]  clk_put+0xc/0x14
[    0.018048]  timer_of_cleanup+0x60/0x7c
[    0.018551]  mtk_syst_init+0x8c/0x9c
[    0.019020]  timer_probe+0x6c/0xe0
[    0.019469]  time_init+0x14/0x44
[    0.019893]  start_kernel+0x2d0/0x46c
[    0.020378] ---[ end trace 8c1efabea1267649 ]---
[    0.020982] ------------[ cut here ]------------
[    0.021586] Trying to vfree() nonexistent vm area ((____ptrval____))
[    0.022427] WARNING: CPU: 0 PID: 0 at __vunmap+0xd0/0xd8
[    0.023119] Modules linked in:
[    0.023524] CPU: 0 PID: 0 Comm: swapper/0 Tainted: G        W         4.19.67+ #1
[    0.024498] Hardware name: MediaTek MT8183 (DT)
[    0.025091] pstate: 60400085 (nZCv daIf +PAN -UAO)
[    0.025718] pc : __vunmap+0xd0/0xd8
[    0.026176] lr : __vunmap+0xd0/0xd8
[    0.026632] sp : ffffff80090b3e90
[    0.027066] x29: ffffff80090b3e90 x28: 0000000040e20018
[    0.027764] x27: ffffffc07bfff780 x26: 0000000000000001
[    0.028462] x25: ffffff80090bda80 x24: ffffff8008ec5828
[    0.029160] x23: ffffff80090bd000 x22: ffffff8008d8b2e8
[    0.029858] x21: 0000000000000000 x20: 0000000000000000
[    0.030556] x19: ffffff800800d000 x18: 00000000002bffa8
[    0.031254] x17: 0000000000000000 x16: 0000000000000000
[    0.031952] x15: ffffffbf004a6800 x14: 3536343038393334
[    0.032651] x13: 2079726576652073 x12: 7eb9c62c5c38f100
[    0.033349] x11: ffffff80090b3b40 x10: ffffff80090b3b40
[    0.034047] x9 : 0000000000000005 x8 : 5f5f6c6176727470
[    0.034745] x7 : 5f5f5f5f28282061 x6 : ffffff80091c86ef
[    0.035443] x5 : ffffff800852b690 x4 : 0000000000000000
[    0.036141] x3 : 0000000000000002 x2 : 0000000000000002
[    0.036839] x1 : 7eb9c62c5c38f100 x0 : 7eb9c62c5c38f100
[    0.037536] Call trace:
[    0.037859]  __vunmap+0xd0/0xd8
[    0.038271]  vunmap+0x24/0x30
[    0.038664]  __iounmap+0x2c/0x34
[    0.039088]  timer_of_cleanup+0x70/0x7c
[    0.039591]  mtk_syst_init+0x8c/0x9c
[    0.040060]  timer_probe+0x6c/0xe0
[    0.040507]  time_init+0x14/0x44
[    0.040932]  start_kernel+0x2d0/0x46c

This commit remove the calls to timer_of_cleanup when timer_of_init
fails since it is unnecessary and actually cause warnings to be printed.

Fixes: a0858f937960 ("mediatek: Convert the driver to timer-of")
Signed-off-by: Fabien Parent <fparent@baylibre.com>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Link: https://lore.kernel.org/linux-arm-kernel/20190919191315.25190-1-fparent@baylibre.com/
---
 drivers/clocksource/timer-mediatek.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/clocksource/timer-mediatek.c b/drivers/clocksource/timer-mediatek.c
index a562f491b0f8..9318edcd8963 100644
--- a/drivers/clocksource/timer-mediatek.c
+++ b/drivers/clocksource/timer-mediatek.c
@@ -268,15 +268,12 @@ static int __init mtk_syst_init(struct device_node *node)
 
 	ret = timer_of_init(node, &to);
 	if (ret)
-		goto err;
+		return ret;
 
 	clockevents_config_and_register(&to.clkevt, timer_of_rate(&to),
 					TIMER_SYNC_TICKS, 0xffffffff);
 
 	return 0;
-err:
-	timer_of_cleanup(&to);
-	return ret;
 }
 
 static int __init mtk_gpt_init(struct device_node *node)
@@ -293,7 +290,7 @@ static int __init mtk_gpt_init(struct device_node *node)
 
 	ret = timer_of_init(node, &to);
 	if (ret)
-		goto err;
+		return ret;
 
 	/* Configure clock source */
 	mtk_gpt_setup(&to, TIMER_CLK_SRC, GPT_CTRL_OP_FREERUN);
@@ -311,9 +308,6 @@ static int __init mtk_gpt_init(struct device_node *node)
 	mtk_gpt_enable_irq(&to, TIMER_CLK_EVT);
 
 	return 0;
-err:
-	timer_of_cleanup(&to);
-	return ret;
 }
 TIMER_OF_DECLARE(mtk_mt6577, "mediatek,mt6577-timer", mtk_gpt_init);
 TIMER_OF_DECLARE(mtk_mt6765, "mediatek,mt6765-timer", mtk_syst_init);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
