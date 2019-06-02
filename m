Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9DDC322F0
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Jun 2019 12:24:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qjjGc7MDisq4wC9us8ATbSW07Ru2WeVfLVj6uUgEJy8=; b=h4wbBnc6zJ10ZB
	Hfw48mW1D93deudxLqKz2YZk8Y2VUgUUwID32vAZPtfcDNg2h1TR+pqXrO6KoxCtjr7BT1vDXbHlZ
	B9q43MQMyex3gPXI+ephvMcqHSJhtAP/C4OMGt31X39ooCiy/oirvbMZ5qRxcMKG1k3Ki3MOdRjKG
	VBscSCg717iEA084kr4SGJC1bnI6ogn2qnLMAtoqhenvxh9ummv3wDFKl23kbqwXzxJtc/j83t6wE
	b+QaSwHKdbDQxlbvFc1JkInnYzmw5dinF3xLjSA9nTjNbZCF9xbVEjYV5IHKoHitBQ2uAIWxVFwNR
	gsJh5nStvn1TJU2ZzMEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXNen-00036W-4t; Sun, 02 Jun 2019 10:24:05 +0000
Received: from gofer.mess.org ([88.97.38.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXNeg-000363-6c; Sun, 02 Jun 2019 10:23:59 +0000
Received: by gofer.mess.org (Postfix, from userid 1000)
 id A747D60474; Sun,  2 Jun 2019 11:23:50 +0100 (BST)
Date: Sun, 2 Jun 2019 11:23:50 +0100
From: Sean Young <sean@mess.org>
To: Thierry Reding <thierry.reding@gmail.com>, Eric Anholt <eric@anholt.net>,
 Stefan Wahren <stefan.wahren@i2se.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-pwm@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Andreas Christ <andreas@christ-faesch.ch>
Subject: [PATCH] pwm: bcm2835: increase precision of pwm
Message-ID: <20190602102350.zzwmfvlky3mnlqln@gofer.mess.org>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_032358_438091_C5F10417 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If sending IR with carrier of 455kHz using the pwm-ir-tx driver, the
carrier ends up being 476kHz.

A carrier of 455kHz has a period of 2198ns, but the arithmetic truncates
this to 2.1ns rather than 2.2ns. So, use DIV_ROUND_CLOSEST() to reduce
rounding errors, and we have a much more accurate carrier of 454.5kHz.

Reported-by: Andreas Christ <andreas@christ-faesch.ch>
Signed-off-by: Sean Young <sean@mess.org>
---
 drivers/pwm/pwm-bcm2835.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/pwm/pwm-bcm2835.c b/drivers/pwm/pwm-bcm2835.c
index 5652f461d994..edb2387c49a2 100644
--- a/drivers/pwm/pwm-bcm2835.c
+++ b/drivers/pwm/pwm-bcm2835.c
@@ -63,14 +63,14 @@ static int bcm2835_pwm_config(struct pwm_chip *chip, struct pwm_device *pwm,
 {
 	struct bcm2835_pwm *pc = to_bcm2835_pwm(chip);
 	unsigned long rate = clk_get_rate(pc->clk);
-	unsigned long scaler;
+	unsigned int scaler;
 
 	if (!rate) {
 		dev_err(pc->dev, "failed to get clock rate\n");
 		return -EINVAL;
 	}
 
-	scaler = NSEC_PER_SEC / rate;
+	scaler = DIV_ROUND_CLOSEST(NSEC_PER_SEC, rate);
 
 	if (period_ns <= MIN_PERIOD) {
 		dev_err(pc->dev, "period %d not supported, minimum %d\n",
@@ -78,8 +78,10 @@ static int bcm2835_pwm_config(struct pwm_chip *chip, struct pwm_device *pwm,
 		return -EINVAL;
 	}
 
-	writel(duty_ns / scaler, pc->base + DUTY(pwm->hwpwm));
-	writel(period_ns / scaler, pc->base + PERIOD(pwm->hwpwm));
+	writel(DIV_ROUND_CLOSEST(duty_ns, scaler),
+	       pc->base + DUTY(pwm->hwpwm));
+	writel(DIV_ROUND_CLOSEST(period_ns, scaler),
+	       pc->base + PERIOD(pwm->hwpwm));
 
 	return 0;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
