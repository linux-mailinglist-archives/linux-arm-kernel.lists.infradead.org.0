Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 449FA1EC50F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 00:33:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SysnwYtyKXsj1sSEhF21E9bYQ7zKMdAQWhwG2b7B90U=; b=PngfpMKBFL+Mca/XePesFSNB+U
	1Gz4NbENiSiqkY5NFZPQRuBDat1PSd72ouHri1iZObskwgO+6xi/n8PSuUU2yJoERkwl2vsf0HeZ2
	X+YFlEW3GYDxOEnAXbKklt73FH4VJO5FrcWLwV5zQm4y9MjTLVLMo9VphcPHhpWXVrtfaNrVjjo99
	IZ9GasydfKLTLtdFnlqUE0JfCwe9/VUa+Nnel+BPvPIqDi6IlqPtCKWLe+cWAi6ythbb6hD0bOCFm
	iznI8MF2R114KMNkV/WavCGTNAnqHhy0Xlc52hqBp2QmyHEa8RSBMxwDSjfrRr/wtFnexTW0A5brx
	blrTpG0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgFTB-0003Zz-C9; Tue, 02 Jun 2020 22:33:17 +0000
Received: from alexa-out-sd-02.qualcomm.com ([199.106.114.39])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgFRP-0001qk-Rt
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 22:31:29 +0000
Received: from unknown (HELO ironmsg03-sd.qualcomm.com) ([10.53.140.143])
 by alexa-out-sd-02.qualcomm.com with ESMTP; 02 Jun 2020 15:31:23 -0700
Received: from gurus-linux.qualcomm.com ([10.46.162.81])
 by ironmsg03-sd.qualcomm.com with ESMTP; 02 Jun 2020 15:31:22 -0700
Received: by gurus-linux.qualcomm.com (Postfix, from userid 383780)
 id 735944D82; Tue,  2 Jun 2020 15:31:22 -0700 (PDT)
From: Guru Das Srinagesh <gurus@codeaurora.org>
To: linux-pwm@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: [PATCH v16 06/11] pwm: imx27: Use 64-bit division macro and function
Date: Tue,  2 Jun 2020 15:31:10 -0700
Message-Id: <bb43ff8ad9e0b9884722d85e51c8fdb3ef4154d1.1591136989.git.gurus@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1591136989.git.gurus@codeaurora.org>
References: <cover.1591136989.git.gurus@codeaurora.org>
In-Reply-To: <cover.1591136989.git.gurus@codeaurora.org>
References: <cover.1591136989.git.gurus@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_153127_953925_F547FEEC 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [199.106.114.39 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-arm-kernel@lists.infradead.org,
 Guru Das Srinagesh <gurus@codeaurora.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Fabio Estevam <festevam@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 David Collins <collinsd@codeaurora.org>, Stephen Boyd <sboyd@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Geert Uytterhoeven <geert@linux-m68k.org>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Joe Perches <joe@perches.com>,
 Subbaraman Narayanamurthy <subbaram@codeaurora.org>,
 Lee Jones <lee.jones@linaro.org>, Guenter Roeck <linux@roeck-us.net>,
 NXP Linux Team <linux-imx@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since the PWM framework is switching struct pwm_state.period's
datatype to u64, prepare for this transition by using
DIV_ROUND_UP_ULL to handle a 64-bit dividend, and div64_u64 to handle a
64-bit divisor.

Also handle a possible overflow in the calculation of period_cycles when
both clk_rate and period are large numbers. This logic was unit-tested
out by calculating period_cycles using both the existing logic and the
proposed one, and the results are as below.

----------------------------------------------------------------------------
 clk_rate            period           existing            proposed
----------------------------------------------------------------------------
1000000000   18446744073709551615    18446744072    18446744073000000000
                   (U64_MAX)
----------------------------------------------------------------------------
1000000000        4294967291         4294967291         4294967291
----------------------------------------------------------------------------

Overflow occurs in the first case with the existing logic, whereas the
proposed logic handles it better, sacrificing some precision in a best-effort
attempt to handle overflow. As for the second case where there are
more typical values of period, the proposed logic handles that correctly
too.

Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Signed-off-by: Guru Das Srinagesh <gurus@codeaurora.org>
---
 drivers/pwm/pwm-imx27.c | 48 +++++++++++++++++++++++++++++++++++++++++++-----
 1 file changed, 43 insertions(+), 5 deletions(-)

diff --git a/drivers/pwm/pwm-imx27.c b/drivers/pwm/pwm-imx27.c
index 732a6f3..147729d 100644
--- a/drivers/pwm/pwm-imx27.c
+++ b/drivers/pwm/pwm-imx27.c
@@ -202,7 +202,7 @@ static void pwm_imx27_wait_fifo_slot(struct pwm_chip *chip,
 	sr = readl(imx->mmio_base + MX3_PWMSR);
 	fifoav = FIELD_GET(MX3_PWMSR_FIFOAV, sr);
 	if (fifoav == MX3_PWMSR_FIFOAV_4WORDS) {
-		period_ms = DIV_ROUND_UP(pwm_get_period(pwm),
+		period_ms = DIV_ROUND_UP_ULL(pwm_get_period(pwm),
 					 NSEC_PER_MSEC);
 		msleep(period_ms);
 
@@ -212,6 +212,45 @@ static void pwm_imx27_wait_fifo_slot(struct pwm_chip *chip,
 	}
 }
 
+static int pwm_imx27_calc_period_cycles(const struct pwm_state *state,
+					unsigned long clk_rate,
+					unsigned long *period_cycles)
+{
+	u64 c = 0, c1, c2;
+
+	c1 = clk_rate;
+	c2 = state->period;
+	if (c2 > c1) {
+		c2 = c1;
+		c1 = state->period;
+	}
+
+	if (!c1 || !c2) {
+		pr_err("clk rate and period should be nonzero\n");
+		return -EINVAL;
+	}
+
+	if (c2 <= div64_u64(U64_MAX, c1)) {
+		c = c1 * c2;
+		do_div(c, 1000000000);
+	} else if (c2 <= div64_u64(U64_MAX, div64_u64(c1, 1000))) {
+		do_div(c1, 1000);
+		c = c1 * c2;
+		do_div(c, 1000000);
+	} else if (c2 <= div64_u64(U64_MAX, div64_u64(c1, 1000000))) {
+		do_div(c1, 1000000);
+		c = c1 * c2;
+		do_div(c, 1000);
+	} else if (c2 <= div64_u64(U64_MAX, div64_u64(c1, 1000000000))) {
+		do_div(c1, 1000000000);
+		c = c1 * c2;
+	}
+
+	*period_cycles = c;
+
+	return 0;
+}
+
 static int pwm_imx27_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 			   const struct pwm_state *state)
 {
@@ -226,10 +265,9 @@ static int pwm_imx27_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 	pwm_get_state(pwm, &cstate);
 
 	clkrate = clk_get_rate(imx->clk_per);
-	c = clkrate * state->period;
-
-	do_div(c, NSEC_PER_SEC);
-	period_cycles = c;
+	ret = pwm_imx27_calc_period_cycles(state, clkrate, &period_cycles);
+	if (ret)
+		return ret;
 
 	prescale = period_cycles / 0x10000 + 1;
 
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
