Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40FD777168
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 20:42:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ml+0NAtxkVmR8STaMmYRBeNyR1Y43wN/fFizWOwAeYo=; b=jTJ8vlCPJcrvq5
	s9LFfkYaHtvIedOtqakFqbrhWpYwpUIDVoOHBvkJTuPzwZnsIZ64BDZ9He7PFqYdoxHc8i2m7UuTZ
	5fldAdB29T1SOLHT1LIk1SYAsMmNAVzCK29hlqsLGjNKY7YAUQtaZP1IxCdobvF6lQ/EOB1IntfM6
	Dqo11J+uFO1pEr4M3uyWk+6i0T0W9Ob5twYn0fLCbDkv8oPGcQNW+jA9oun0kYTrIT35CaF++jVlT
	RKK3zBcCSskloEITCtECUOoztU3FkQwt5W4KqfvB+lKkCUuL7H9uOl1FUkIMFsgv5Yk04dfSitn+0
	MAGjILaB6edVyBvLSjOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr5AU-0004Lk-B1; Fri, 26 Jul 2019 18:42:14 +0000
Received: from mailoutvs7.siol.net ([185.57.226.198] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr59M-0003W8-Hb
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 18:41:06 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id A2A8A523033;
 Fri, 26 Jul 2019 20:41:01 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id ymv40tVszZwP; Fri, 26 Jul 2019 20:41:01 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 61A51523030;
 Fri, 26 Jul 2019 20:41:01 +0200 (CEST)
Received: from localhost.localdomain (cpe-194-152-11-237.cable.triera.net
 [194.152.11.237]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 13799523033;
 Fri, 26 Jul 2019 20:40:59 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: thierry.reding@gmail.com,
	mripard@kernel.org,
	wens@csie.org
Subject: [PATCH 3/6] pwm: sun4i: Add a quirk for bus clock
Date: Fri, 26 Jul 2019 20:40:42 +0200
Message-Id: <20190726184045.14669-4-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190726184045.14669-1-jernej.skrabec@siol.net>
References: <20190726184045.14669-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_114104_757066_797B1FE0 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.198 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

H6 PWM core needs bus clock to be enabled in order to work.

Add a quirk for it.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/pwm/pwm-sun4i.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/pwm/pwm-sun4i.c b/drivers/pwm/pwm-sun4i.c
index 1b7be8fbde86..7d3ac3f2dc3f 100644
--- a/drivers/pwm/pwm-sun4i.c
+++ b/drivers/pwm/pwm-sun4i.c
@@ -72,6 +72,7 @@ static const u32 prescaler_table[] = {
 };
 
 struct sun4i_pwm_data {
+	bool has_bus_clock;
 	bool has_prescaler_bypass;
 	bool has_reset;
 	unsigned int npwm;
@@ -79,6 +80,7 @@ struct sun4i_pwm_data {
 
 struct sun4i_pwm_chip {
 	struct pwm_chip chip;
+	struct clk *bus_clk;
 	struct clk *clk;
 	struct reset_control *rst;
 	void __iomem *base;
@@ -382,6 +384,16 @@ static int sun4i_pwm_probe(struct platform_device *pdev)
 		reset_control_deassert(pwm->rst);
 	}
 
+	if (pwm->data->has_bus_clock) {
+		pwm->bus_clk = devm_clk_get(&pdev->dev, "bus");
+		if (IS_ERR(pwm->bus_clk)) {
+			ret = PTR_ERR(pwm->bus_clk);
+			goto err_bus;
+		}
+
+		clk_prepare_enable(pwm->bus_clk);
+	}
+
 	pwm->chip.dev = &pdev->dev;
 	pwm->chip.ops = &sun4i_pwm_ops;
 	pwm->chip.base = -1;
@@ -402,6 +414,8 @@ static int sun4i_pwm_probe(struct platform_device *pdev)
 	return 0;
 
 err_pwm_add:
+	clk_disable_unprepare(pwm->bus_clk);
+err_bus:
 	reset_control_assert(pwm->rst);
 
 	return ret;
@@ -416,6 +430,7 @@ static int sun4i_pwm_remove(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
+	clk_disable_unprepare(pwm->bus_clk);
 	reset_control_assert(pwm->rst);
 
 	return 0;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
