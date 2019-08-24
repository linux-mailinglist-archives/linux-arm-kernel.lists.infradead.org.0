Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C24E9BC55
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 09:09:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2xZ+9YH1FwfWm1K0NbXrJ0BtOvcl5TK3iPfetIJivME=; b=olL/1LW+qka8C2f/qvfUvczy+E
	FeCPCkRuedDMop8NUp0rwjFpKXeLlQhQVAe0hNLU1KlxOxDiAEMqSl4UrI/p1ZPOOKY/75QA6NQG8
	J19VblLOxfGn7Q8xx08+n8phxz8cJZngMZdF6nY2d1EKIl6xuWw7qy/7FtbkowuhgM6YPVn9uZUV/
	heOdqvc8B3XjO3H+ylgXBgZ8C4SGm9+T9tbsfPqBuykuM+OSqWD+J7Y0yj1L/u3Sgp9MYOyucZ4mv
	A3PeX+NmLqEH/VHi+6sTqm+HPH9/Eqefx7hdlfICC56J+2/3ix4kFmho8jhJgp0owmLO1mJyVBJyj
	RcfcQoXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1QB4-0000VF-Uw; Sat, 24 Aug 2019 07:09:35 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Q9U-0008Hn-By
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 07:07:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566630464;
 bh=cNfgDpMsStRYRSGRVwwso2ry+d80CNC09Rh9sIRN7vw=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=J1GxJSMmHdiU1WDp/v4RUmwUYaEIFwwSDi1JYNxNf8nmqDiS8zkt4vFLugCEGzB1X
 Sxib9CZaMZH+lR29y4qm6xZKM+LaAkdc5BHvXG9iYPxWn/6YN7tjt4qe1anlNoSCrr
 V8B+qsbivnBDHKIvwwMJi27z3Kt6IvvHgGMluWFo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.106]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1N7zFZ-1iFDlE4AC3-014xl1; Sat, 24 Aug 2019 09:07:44 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Thierry Reding <thierry.reding@gmail.com>, Eric Anholt <eric@anholt.net>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [PATCH 2/3] pwm: bcm2835: fix period_ns range check
Date: Sat, 24 Aug 2019 09:07:24 +0200
Message-Id: <1566630445-4599-3-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566630445-4599-1-git-send-email-wahrenst@gmx.net>
References: <1566630445-4599-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:wUJTwdwF8cbSJSzQyvUcO+97RrgtJK5jY47JakdXyNBlfDeOxA6
 TBAht+wgvDofDruqZXGrLWEv2DVBWSagz9wvqFyNzDLYSgDQxR2YeTlVnE/AACzCmLDg3H2
 y2tAIeLE8VhFrevaflCxKgDr2UtjYnm2/NZK2OgSsqpVDimelHf1bUBP7/P96i2rzq9tpY0
 UGJ6xYsNWhDsqxU85wPrA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:mFZRJEsZ2DQ=:LIXA2QWwfPvnGU149PBboe
 NWy7nrmfyj+6creVK/QOPaH4wkW+A99q1w0zdS6lz+L1cU6fx8YdZWT9xuCd8KFjEDP+0iyp9
 pSHANrQfRbAHmBOKdLC3LuQQhN89xbSmCM8rXZGqAwSvPGAsH9fPDYH/BwWHIB/jpUhvOhYIA
 fQcJCyvIihpPMTIhS5CH9n65bhiyYZ/8u7t7ZGymwPyV5JASGeyX6n5LInZ3OYcquBLQxtWPS
 hh5mRMnfT7MixloKkP2FtuYFPmICd7ZjDPKmUSkmCba8rd9+TWACGv39ubEnGVTo1XMHIa5UI
 sjq+Ob8W0+9n5QDmGzhEnQCdczWqmbrGGNPPlldJ4RWKfkZR4tK7xefeVJYFZhQU+qvcj7lBa
 ZsEIz9rVk7nOWVNp2d1AHg8B+EwA1p1iywVx+4f94TaOntwkQteCkopEq4b4DIAbxvdR1jIJR
 Y+yhEW98EwiD9E/Cmf1RQnS4ntHai7V+4W8lLDMBy+2TM91BAKG0N7hZT/tg1sKWmAYqkVZfB
 eCffwGU18xSqO81x2XspLRXYZmH1T8ThgjF2NOitDtg+JguWvhzj+iNvxkpfcr3Wvr04IYcwc
 QNWejTllsgnf7plqKBv6eZ+weJFz/8Yv7FuzuxPuX0U1rXQmKCynz1nQKXy83/XEhu6ArkZWR
 qx7IUSlx5gUaXssrk8wBlvXSHaM/akmDKlKe0RJ2U9XhaRxAFAaer8p5w3wcLPy88/gB7v/nE
 qEHmOJ+m1F+rfPd7dG35w/eCTCqXKAIneqg6imBwpVoaczEgVW6KAk3tGN03abyiYFLxJvJCO
 ConYRnMvgn1Vqvdd1NewXZ32Ot+b0oeVVC4PcNIhbMFgDM1zMKQCCn0SrCDDvbvvfKEJmIhbA
 PQLD9Eqn+n6/eaevv7pMgDpQQ+n4YsIgX/nI8uFGM3PoH9aJ7C9yY8sUsfHnKgK1G9c3ThKTX
 5I0GXQb/47uasEuqft9yowe3ze7kE6H3KVRHT2gVTdWZXLjytz8rYFly5Fs7kh8JGvOiPRMKA
 otQ1bQ3LojJtdTg0TkVqd2C/uBOMTXSa3CncjK54QfPoQWoi77NLrluJf2XvGUg5CyNHg8mzf
 CDZu0eDxaWH0SnKdDOzI3vb/J0J52GUqeZuw34DbjUBpdCC4y/0pHB50A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_000756_709078_30B6537D 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-pwm@vger.kernel.org, Stefan Wahren <wahrenst@gmx.net>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The range check for period_ns was written under assumption of a fixed
PWM clock. With clk-bcm2835 driver the PWM clock is a dynamic one.
So fix this by doing the range check on the period register value.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 drivers/pwm/pwm-bcm2835.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/pwm/pwm-bcm2835.c b/drivers/pwm/pwm-bcm2835.c
index 5276306..2c82386 100644
--- a/drivers/pwm/pwm-bcm2835.c
+++ b/drivers/pwm/pwm-bcm2835.c
@@ -21,7 +21,7 @@
 #define PERIOD(x)		(((x) * 0x10) + 0x10)
 #define DUTY(x)			(((x) * 0x10) + 0x14)

-#define MIN_PERIOD		108		/* 9.2 MHz max. PWM clock */
+#define PERIOD_MIN		0x2

 struct bcm2835_pwm {
 	struct pwm_chip chip;
@@ -64,6 +64,7 @@ static int bcm2835_pwm_config(struct pwm_chip *chip, struct pwm_device *pwm,
 	struct bcm2835_pwm *pc = to_bcm2835_pwm(chip);
 	unsigned long rate = clk_get_rate(pc->clk);
 	unsigned long scaler;
+	u32 period;

 	if (!rate) {
 		dev_err(pc->dev, "failed to get clock rate\n");
@@ -71,14 +72,14 @@ static int bcm2835_pwm_config(struct pwm_chip *chip, struct pwm_device *pwm,
 	}

 	scaler = DIV_ROUND_CLOSEST(NSEC_PER_SEC, rate);
+	period = DIV_ROUND_CLOSEST(period_ns, scaler);

-	if (period_ns <= MIN_PERIOD)
+	if (period < PERIOD_MIN)
 		return -EINVAL;

 	writel(DIV_ROUND_CLOSEST(duty_ns, scaler),
 	       pc->base + DUTY(pwm->hwpwm));
-	writel(DIV_ROUND_CLOSEST(period_ns, scaler),
-	       pc->base + PERIOD(pwm->hwpwm));
+	writel(period, pc->base + PERIOD(pwm->hwpwm));

 	return 0;
 }
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
