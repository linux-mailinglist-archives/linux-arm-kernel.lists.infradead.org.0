Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D75432B45
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 11:01:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0SOhs+xnxNkgWmlZ2CKi8guiO396JMrffQ9X4lflQRc=; b=st5DjGAmMDH6ha
	rSnTt5B6TgUqAoKfETRDZq17Zb6041KIAfC0jnb+jQkHrNA4MyG9r+7Dz92zJunLUpUTsSrcziGv3
	Uejx//FkU0qY1m1OEdqI3zJJxqTaVOy8SkTxRprSevHZ2397UqWc8U9rtjjMnSYAvxE4IeDOit3+W
	PUZx/zB3rA+PyAZwBBnB1JdHaQnAdiu73YKV5sAR0Upcduh3yOEEZjZhOltfRUaFEQ9EuZDk4uvhc
	D3bN3B9Np1jaU2nG525zUoz1gjbSk5rLmEtK2RqNfYFKaOkjO3DBCsa2KvydCCeu9Yi4+dd1leyep
	r4gc9naF/zDggZDkHTKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXiq6-0003Og-5O; Mon, 03 Jun 2019 09:01:10 +0000
Received: from gofer.mess.org ([2a02:8011:d000:212::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXipz-0003Nw-Da; Mon, 03 Jun 2019 09:01:05 +0000
Received: by gofer.mess.org (Postfix, from userid 1000)
 id 8805160599; Mon,  3 Jun 2019 10:00:58 +0100 (BST)
Date: Mon, 3 Jun 2019 10:00:58 +0100
From: Sean Young <sean@mess.org>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: [PATCH v2] pwm: bcm2835: improve precision of pwm
Message-ID: <20190603090058.qd3tbiffmdgqm34d@gofer.mess.org>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_020103_594558_1992F210 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-pwm@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>,
 Andreas Christ <andreas@christ-faesch.ch>, Ray Jui <rjui@broadcom.com>,
 Eric Anholt <eric@anholt.net>, Thierry Reding <thierry.reding@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If sending IR with carrier of 455kHz using the pwm-ir-tx driver, the
carrier ends up being 476kHz. The clock is set to bcm2835-pwm with a
rate of 10MHz.

A carrier of 455kHz has a period of 2198ns, but the arithmetic truncates
this to 2100ns rather than 2200ns. So, use DIV_ROUND_CLOSEST() to reduce
rounding errors, and we have a much more accurate carrier of 454.5kHz.

Reported-by: Andreas Christ <andreas@christ-faesch.ch>
Signed-off-by: Sean Young <sean@mess.org>
---
 drivers/pwm/pwm-bcm2835.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/pwm/pwm-bcm2835.c b/drivers/pwm/pwm-bcm2835.c
index 5652f461d994..f6fe0b922e1e 100644
--- a/drivers/pwm/pwm-bcm2835.c
+++ b/drivers/pwm/pwm-bcm2835.c
@@ -70,7 +70,7 @@ static int bcm2835_pwm_config(struct pwm_chip *chip, struct pwm_device *pwm,
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
