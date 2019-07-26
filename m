Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E0807716D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 20:42:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gooyzTSD6p688jy/xIpoTTEgK9R2YSa4dyd1XeJTDuM=; b=d4WyCdPOVwhH+s
	HChU1+XAxF4knCStR2q3JwlkhAQP0pLpJ3PgdM1Y/FDYh1ihED+yjpECmC/TRE/TAIquuDrVju7xD
	XFsTQS7uRmNMiRLApXRXM91Phx2TNq/IwAVi6zhylZ5lr1B0/42sE5WLN3ykj1f7Ri1+7/8F8vCbd
	Xor+mkP7FMXGZl1oojxpaG3q9Xn2Vv+ETPDOBd7/xUNLp03GSAgxhSwt1R5hgt/ffe1gBherVo/+c
	+JJ9kEPPJdh/i7iYeRI5gF1FrsI3GoptG08+bTHW4De3RfYF07N5j7fkm+mgT3JQK/o9lc1sTAh2y
	0jAktT19f2u3td41/Lxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr5Ay-0004pU-Tt; Fri, 26 Jul 2019 18:42:44 +0000
Received: from mailoutvs48.siol.net ([185.57.226.239] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr59Q-0003dI-H8
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 18:41:10 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 628C652303F;
 Fri, 26 Jul 2019 20:41:06 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id K7nmLpb6mIDb; Fri, 26 Jul 2019 20:41:06 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 1607052303B;
 Fri, 26 Jul 2019 20:41:06 +0200 (CEST)
Received: from localhost.localdomain (cpe-194-152-11-237.cable.triera.net
 [194.152.11.237]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id BCFB7523040;
 Fri, 26 Jul 2019 20:41:03 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: thierry.reding@gmail.com,
	mripard@kernel.org,
	wens@csie.org
Subject: [PATCH 5/6] pwm: sun4i: Add support to output source clock directly
Date: Fri, 26 Jul 2019 20:40:44 +0200
Message-Id: <20190726184045.14669-6-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190726184045.14669-1-jernej.skrabec@siol.net>
References: <20190726184045.14669-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_114108_765803_F1669A6B 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.239 listed in list.dnswl.org]
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

PWM core has an option to bypass whole logic and output unchanged source
clock as PWM output. This is achieved by enabling bypass bit.

Note that when bypass is enabled, no other setting has any meaning, not
even enable bit.

This mode of operation is needed to achieve high enough frequency to
serve as clock source for AC200 chip, which is integrated into same
package as H6 SoC.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/pwm/pwm-sun4i.c | 31 ++++++++++++++++++++++++++++++-
 1 file changed, 30 insertions(+), 1 deletion(-)

diff --git a/drivers/pwm/pwm-sun4i.c b/drivers/pwm/pwm-sun4i.c
index 9e0eca79ff88..848cff26f385 100644
--- a/drivers/pwm/pwm-sun4i.c
+++ b/drivers/pwm/pwm-sun4i.c
@@ -120,6 +120,19 @@ static void sun4i_pwm_get_state(struct pwm_chip *chip,
 
 	val = sun4i_pwm_readl(sun4i_pwm, PWM_CTRL_REG);
 
+	/*
+	 * PWM chapter in H6 manual has a diagram which explains that if bypass
+	 * bit is set, no other setting has any meaning. Even more, experiment
+	 * proved that also enable bit is ignored in this case.
+	 */
+	if (val & BIT_CH(PWM_BYPASS, pwm->hwpwm)) {
+		state->period = DIV_ROUND_CLOSEST_ULL(NSEC_PER_SEC, clk_rate);
+		state->duty_cycle = state->period / 2;
+		state->polarity = PWM_POLARITY_NORMAL;
+		state->enabled = true;
+		return;
+	}
+
 	if ((PWM_REG_PRESCAL(val, pwm->hwpwm) == PWM_PRESCAL_MASK) &&
 	    sun4i_pwm->data->has_prescaler_bypass)
 		prescaler = 1;
@@ -211,7 +224,8 @@ static int sun4i_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 {
 	struct sun4i_pwm_chip *sun4i_pwm = to_sun4i_pwm_chip(chip);
 	struct pwm_state cstate;
-	u32 ctrl;
+	u32 ctrl, clk_rate;
+	bool bypass;
 	int ret;
 	unsigned int delay_us;
 	unsigned long now;
@@ -226,6 +240,16 @@ static int sun4i_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 		}
 	}
 
+	/*
+	 * Although it would make much more sense to check for bypass in
+	 * sun4i_pwm_calculate(), value of bypass bit also depends on "enabled".
+	 * Period is allowed to be rounded up or down.
+	 */
+	clk_rate = clk_get_rate(sun4i_pwm->clk);
+	bypass = (state->period == NSEC_PER_SEC / clk_rate ||
+		 state->period == DIV_ROUND_UP(NSEC_PER_SEC, clk_rate)) &&
+		 state->enabled;
+
 	spin_lock(&sun4i_pwm->ctrl_lock);
 	ctrl = sun4i_pwm_readl(sun4i_pwm, PWM_CTRL_REG);
 
@@ -273,6 +297,11 @@ static int sun4i_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 		ctrl &= ~BIT_CH(PWM_CLK_GATING, pwm->hwpwm);
 	}
 
+	if (bypass)
+		ctrl |= BIT_CH(PWM_BYPASS, pwm->hwpwm);
+	else
+		ctrl &= ~BIT_CH(PWM_BYPASS, pwm->hwpwm);
+
 	sun4i_pwm_writel(sun4i_pwm, ctrl, PWM_CTRL_REG);
 
 	spin_unlock(&sun4i_pwm->ctrl_lock);
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
