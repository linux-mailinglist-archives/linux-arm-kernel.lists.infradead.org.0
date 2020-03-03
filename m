Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC7B1773DF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 11:19:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uZjg+S46GC4nf959XV+qs1a2rXlJyu+34hY026vMZkI=; b=Byc3lt9VmWeHWy
	VPL3XwvxYdGKEBwQXaOf/yKcOfKNbips4FsyROkW8pg3rlxtMc565sB3hjrrZhVs3fWNcZ0MCCNuS
	iyA7GB+2HOehABQYt91WuZubIIzb/6c3aY4f7NxRYBqJ2kwEav+QdHouIuz5VIV5CBjIkXH5Lmygd
	gl6AZU46KKEnKP0wWjgJlnWsmtByN5yVgZ/Uvg+37cShVTiV1njZ1mDLhM2K5jrBvG12AYeZx0MW0
	UKQPTVGMieJeEvL2zHNVSMuQDs3sLnt5DYFw7zlPBiLFOijOChYm2ea7LvQuUmmIO/6Oov8wuQgjs
	4rO2pnWE2PFixwj9+CaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j94eL-0003ji-Mu; Tue, 03 Mar 2020 10:19:41 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j94eA-0003hn-5k; Tue, 03 Mar 2020 10:19:31 +0000
X-UUID: 32216669192f44229ce3ff9c2e44121a-20200303
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=kNo7DFj3b9HktV/9EBruUcLqKxjTBFu6uKwuH9eM2VA=; 
 b=fStkvVGfdODZUFXguzcaSao361mDB+EW3bBusAbnaUlGGE/VqKZLS5KuAaEyBY9TUxIXZXS5weqU0adXCsNkx6rOzkyQYQmMquvB2VF3631lmuQE71qIba/YVbK+YKby1XTp4ukN2F+CcXHcwjVWne3RcKqaERgSJw5JrlcgMCQ=;
X-UUID: 32216669192f44229ce3ff9c2e44121a-20200303
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <sam.shih@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1481984747; Tue, 03 Mar 2020 02:19:21 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Mar 2020 02:20:11 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Mar 2020 18:18:18 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 3 Mar 2020 18:19:16 +0800
From: Sam Shih <sam.shih@mediatek.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v2 1/1] pwm: mediatek: add longer period support
Date: Tue, 3 Mar 2020 18:19:15 +0800
Message-ID: <1583230755-25986-2-git-send-email-sam.shih@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1583230755-25986-1-git-send-email-sam.shih@mediatek.com>
References: <1583230755-25986-1-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_021930_224400_23657B83 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-pwm@vger.kernel.org, Sam Shih <sam.shih@mediatek.com>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pwm clock source could be divided by 1625 with PWM_CON
BIT(3) setting in mediatek hardware.

This patch add support for longer pwm period configuration,
which allowing blinking LEDs via pwm interface.

Signed-off-by: Sam Shih <sam.shih@mediatek.com>
---
 drivers/pwm/pwm-mediatek.c | 34 ++++++++++++++++++++++++++++++----
 1 file changed, 30 insertions(+), 4 deletions(-)

diff --git a/drivers/pwm/pwm-mediatek.c b/drivers/pwm/pwm-mediatek.c
index b94e0d09c300..c64ecff6c550 100644
--- a/drivers/pwm/pwm-mediatek.c
+++ b/drivers/pwm/pwm-mediatek.c
@@ -121,8 +121,11 @@ static int pwm_mediatek_config(struct pwm_chip *chip, struct pwm_device *pwm,
 			       int duty_ns, int period_ns)
 {
 	struct pwm_mediatek_chip *pc = to_pwm_mediatek_chip(chip);
-	u32 clkdiv = 0, cnt_period, cnt_duty, reg_width = PWMDWIDTH,
-	    reg_thres = PWMTHRES;
+	/* The source clock is divided by 2^clkdiv or iff the clksel bit
+	 * is set by (2^clkdiv*1625)
+	 */
+	u32 clkdiv = 0, clksel = 0, cnt_period, cnt_duty,
+	    reg_width = PWMDWIDTH, reg_thres = PWMTHRES;
 	u64 resolution;
 	int ret;
 
@@ -133,12 +136,30 @@ static int pwm_mediatek_config(struct pwm_chip *chip, struct pwm_device *pwm,
 
 	/* Using resolution in picosecond gets accuracy higher */
 	resolution = (u64)NSEC_PER_SEC * 1000;
+	/* Calculate resolution based on current clock frequency */
 	do_div(resolution, clk_get_rate(pc->clk_pwms[pwm->hwpwm]));
-
+	/* Using resolution to calculate cnt_period which represents
+	 * the effective range of the PWM period counter
+	 */
 	cnt_period = DIV_ROUND_CLOSEST_ULL((u64)period_ns * 1000, resolution);
 	while (cnt_period > 8191) {
+		/* Using clkdiv to reduce clock frequency and calculate
+		 * new resolution based on new clock speed
+		 */
 		resolution *= 2;
 		clkdiv++;
+		if (clkdiv > PWM_CLK_DIV_MAX && !clksel) {
+			/* Using clksel to divide the pwm source clock by
+			 * an additional 1625, and recalculate new clkdiv
+			 * and resolution
+			 */
+			clksel = 1;
+			clkdiv = 0;
+			resolution = (u64)NSEC_PER_SEC * 1000 * 1625;
+			do_div(resolution,
+				clk_get_rate(pc->clk_pwms[pwm->hwpwm]));
+		}
+		/* Calculate cnt_period based on resolution */
 		cnt_period = DIV_ROUND_CLOSEST_ULL((u64)period_ns * 1000,
 						   resolution);
 	}
@@ -158,8 +179,13 @@ static int pwm_mediatek_config(struct pwm_chip *chip, struct pwm_device *pwm,
 		reg_thres = PWM45THRES_FIXUP;
 	}
 
+	/* Calculate cnt_duty based on resolution */
 	cnt_duty = DIV_ROUND_CLOSEST_ULL((u64)duty_ns * 1000, resolution);
-	pwm_mediatek_writel(pc, pwm->hwpwm, PWMCON, BIT(15) | clkdiv);
+	if (clksel)
+		pwm_mediatek_writel(pc, pwm->hwpwm, PWMCON, BIT(15) | BIT(3) |
+				    clkdiv);
+	else
+		pwm_mediatek_writel(pc, pwm->hwpwm, PWMCON, BIT(15) | clkdiv);
 	pwm_mediatek_writel(pc, pwm->hwpwm, reg_width, cnt_period);
 	pwm_mediatek_writel(pc, pwm->hwpwm, reg_thres, cnt_duty);
 
-- 
2.17.1
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
