Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 434071889A7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 17:00:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HHSoPCw6NvXPJkZbEdGo2oSJmTsO0OhBxuR+EbYhCDg=; b=Oywi3mJaJ2yiVa
	5Tbmwq/p0BWlrffaIXpTQEsUyW5LjruurSIIcqgSU/kW+mvP2cRF9sLCGwzJij1UDatIr3vi8bUyy
	szOb7Yy3aixL3PaVxGafHp68aVAKBeZU2nIv34VIKf3mQyfy/1enSfwqHR59FBzYIplZ+w/kxftZs
	Hy9u8fwSpJjLl/D0yxBigL6H+dzZn0r2Nt6igxjmdmkQsEAcRFhsxBZBwJYIVigmMNL/BQXsY8Jvl
	7eTls4E+I7OZLv1w6D7zYrOqcGwIEpNsUTSgeFxbgkEU97POlu8L9gmBMPUHCtwduTmwwIAtTCE3e
	6hOe7sxyIe2iPw144CvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEEdp-0006Am-Db; Tue, 17 Mar 2020 16:00:29 +0000
Received: from web0081.zxcs.nl ([2a06:2ec0:1::81])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEEdM-0004ix-2M
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 16:00:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=pascalroeleven.nl; s=x; h=Content-Transfer-Encoding:MIME-Version:References
 :In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nbuCrokfZgS+KDFkBtlQ837IpeveIBjp9cmu5UpyyK8=; b=OAGrX5m0ORyGc9okH++QCW9zWp
 W/38mXJ2gySBtgFpVftPBORd/kDiYnWv35ifBGNgseKqnMztsVoIRbn5Yr5trMmBiBQa1w6ujGiEo
 QijEEwoNuJKSWJ6kYz4+ogkD6P8s/18m4jkexWnPP6yWczWbtPrtK3aCBsYhHvk+xsHIqgOBO+ln3
 D5yOXQh6n6BxiMtSBfTAj5Pp9Vq6900Eu8/Xk4ngkFfMY9wdY4kJDiKjCujemfuO5DG401/ph+mzl
 rT7IRq1hgxCrVMYLXah730Vzvfn0YTJz09RXfGcwIj2Y9YckShiyEYGtK8xcvcRrrGMSRrhLiVJ15
 tZiX8PqA==;
Received: from ip565b1bc7.direct-adsl.nl ([86.91.27.199]:60802
 helo=localhost.localdomain)
 by web0081.zxcs.nl with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92.3) (envelope-from <dev@pascalroeleven.nl>)
 id 1jEEdG-001IGT-MA; Tue, 17 Mar 2020 16:59:54 +0100
From: Pascal Roeleven <dev@pascalroeleven.nl>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-pwm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [RFC PATCH 1/4] pwm: sun4i: Remove redundant needs_delay
Date: Tue, 17 Mar 2020 16:59:03 +0100
Message-Id: <20200317155906.31288-2-dev@pascalroeleven.nl>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200317155906.31288-1-dev@pascalroeleven.nl>
References: <20200317155906.31288-1-dev@pascalroeleven.nl>
MIME-Version: 1.0
X-Authenticated-Id: dev@pascalroeleven.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_090000_264082_44330F0E 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-sunxi@googlegroups.com, Pascal Roeleven <dev@pascalroeleven.nl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

'needs_delay' does now always evaluate to true, so remove all
occurrences.

Signed-off-by: Pascal Roeleven <dev@pascalroeleven.nl>
---
 drivers/pwm/pwm-sun4i.c | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)

diff --git a/drivers/pwm/pwm-sun4i.c b/drivers/pwm/pwm-sun4i.c
index 3e3efa6c7..5c677c563 100644
--- a/drivers/pwm/pwm-sun4i.c
+++ b/drivers/pwm/pwm-sun4i.c
@@ -90,7 +90,6 @@ struct sun4i_pwm_chip {
 	spinlock_t ctrl_lock;
 	const struct sun4i_pwm_data *data;
 	unsigned long next_period[2];
-	bool needs_delay[2];
 };
 
 static inline struct sun4i_pwm_chip *to_sun4i_pwm_chip(struct pwm_chip *chip)
@@ -287,7 +286,6 @@ static int sun4i_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 	sun4i_pwm_writel(sun4i_pwm, val, PWM_CH_PRD(pwm->hwpwm));
 	sun4i_pwm->next_period[pwm->hwpwm] = jiffies +
 		usecs_to_jiffies(cstate.period / 1000 + 1);
-	sun4i_pwm->needs_delay[pwm->hwpwm] = true;
 
 	if (state->polarity != PWM_POLARITY_NORMAL)
 		ctrl &= ~BIT_CH(PWM_ACT_STATE, pwm->hwpwm);
@@ -298,7 +296,7 @@ static int sun4i_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 
 	if (state->enabled) {
 		ctrl |= BIT_CH(PWM_EN, pwm->hwpwm);
-	} else if (!sun4i_pwm->needs_delay[pwm->hwpwm]) {
+	} else {
 		ctrl &= ~BIT_CH(PWM_EN, pwm->hwpwm);
 		ctrl &= ~BIT_CH(PWM_CLK_GATING, pwm->hwpwm);
 	}
@@ -310,15 +308,9 @@ static int sun4i_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 	if (state->enabled)
 		return 0;
 
-	if (!sun4i_pwm->needs_delay[pwm->hwpwm]) {
-		clk_disable_unprepare(sun4i_pwm->clk);
-		return 0;
-	}
-
 	/* We need a full period to elapse before disabling the channel. */
 	now = jiffies;
-	if (sun4i_pwm->needs_delay[pwm->hwpwm] &&
-	    time_before(now, sun4i_pwm->next_period[pwm->hwpwm])) {
+	if (time_before(now, sun4i_pwm->next_period[pwm->hwpwm])) {
 		delay_us = jiffies_to_usecs(sun4i_pwm->next_period[pwm->hwpwm] -
 					   now);
 		if ((delay_us / 500) > MAX_UDELAY_MS)
@@ -326,7 +318,6 @@ static int sun4i_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 		else
 			usleep_range(delay_us, delay_us * 2);
 	}
-	sun4i_pwm->needs_delay[pwm->hwpwm] = false;
 
 	spin_lock(&sun4i_pwm->ctrl_lock);
 	ctrl = sun4i_pwm_readl(sun4i_pwm, PWM_CTRL_REG);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
