Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D1FD1889AD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 17:01:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nKsLGQifZyROq6yjHvI6RpMXJ5cvBVhERfFlIZZDnLU=; b=to+G4vXr3ajBTQ
	zBBzz2R1hjtKBrMJOREHJbS+c2r+niyz0BSciN0e7qPFWVZChbHVE3QpsjwRzZlD2qw4XiZGnUdJ1
	S3xpGC1Fhpg/kKHzqr4Sp9ykq9k6dqsWrz6/P/u6aaDdfYHYY1Mu01/+aogtYSbo97vnDooe8D2AY
	Lelb9lubsxDU4Az3GB+K7EZQ+4k1Zv9qpqb+t43BCfpKRpjKwxD+8Z4/rn9DImm8rOG5Axgq2IOlD
	l3/fdYjPdyH5dVeuxYIC1eT9fq5M1xd4M2z3pqWkGgmMSVXG/z2sfONqje7jpi/GoIWhr7XMl++AD
	eljF8JMpywFwvnGhAbiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEEeR-0006tu-63; Tue, 17 Mar 2020 16:01:07 +0000
Received: from web0081.zxcs.nl ([2a06:2ec0:1::81])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEEdX-0005ZA-9W
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 16:00:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=pascalroeleven.nl; s=x; h=Content-Transfer-Encoding:MIME-Version:References
 :In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HWIu6Gi0APrIzMyoHqBqzed91EoxSikvrYfhLbeVFFw=; b=cg9sFtCAwrmdx6rka7MxExCpLO
 ApcT5kz+0tEAgqOQQPojFNu79MiGohxUH3ZStdLgQV/HXK3kbz58jUmhF/hdoTvU2qXGVA17S6lmC
 Pt/6sYyWRqwndFO9oM3wRgnEDXydDzis8Sm98suR9AfFdjXMqDsEG8jJEz8HZUe9XRucMjoOzBPmd
 CvpXQQy92/KcuB0+81CGGSx2wkps4mB2fHjWe5oE/AFtzMvOBCWXI43MnDc62JKYZO4RKrs48PJV5
 mm4c5bhHt3BBKDWJeuBtXFrUKPYkSapmW4ZA2aJe0HAKKlSmNg6X2aU18pRpjIJyFZsGCP+XPlF2O
 9ZFwuHqw==;
Received: from ip565b1bc7.direct-adsl.nl ([86.91.27.199]:60802
 helo=localhost.localdomain)
 by web0081.zxcs.nl with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92.3) (envelope-from <dev@pascalroeleven.nl>)
 id 1jEEdR-001IGT-HV; Tue, 17 Mar 2020 17:00:05 +0100
From: Pascal Roeleven <dev@pascalroeleven.nl>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-pwm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [RFC PATCH 4/4] pwm: sun4i: Delay after writing the period
Date: Tue, 17 Mar 2020 16:59:06 +0100
Message-Id: <20200317155906.31288-5-dev@pascalroeleven.nl>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200317155906.31288-1-dev@pascalroeleven.nl>
References: <20200317155906.31288-1-dev@pascalroeleven.nl>
MIME-Version: 1.0
X-Authenticated-Id: dev@pascalroeleven.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_090011_488469_F2F5C67C 
X-CRM114-Status: GOOD (  10.84  )
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

When disabling, ensure the period write is complete before continuing.
This fixes an issue on some devices when the write isn't complete before
the panel is turned off but the clock gate is still on.

Signed-off-by: Pascal Roeleven <dev@pascalroeleven.nl>
---
 drivers/pwm/pwm-sun4i.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/pwm/pwm-sun4i.c b/drivers/pwm/pwm-sun4i.c
index a11d00f96..75250fd4c 100644
--- a/drivers/pwm/pwm-sun4i.c
+++ b/drivers/pwm/pwm-sun4i.c
@@ -299,6 +299,10 @@ static int sun4i_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 	sun4i_pwm_writel(sun4i_pwm, val, PWM_CH_PRD(pwm->hwpwm));
 	next_period = jiffies + usecs_to_jiffies(cstate.period / 1000 + 1);
 
+	/* When disabling, make sure the period register is written first */
+	if (!state->enabled && cstate.enabled)
+		sun4i_pwm_wait(next_period);
+
 	if (state->polarity != PWM_POLARITY_NORMAL)
 		ctrl &= ~BIT_CH(PWM_ACT_STATE, pwm->hwpwm);
 	else
@@ -320,6 +324,7 @@ static int sun4i_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 		return 0;
 
 	/* We need a full period to elapse before disabling the channel. */
+	next_period = jiffies + usecs_to_jiffies(cstate.period / 1000 + 1);
 	sun4i_pwm_wait(next_period);
 
 	spin_lock(&sun4i_pwm->ctrl_lock);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
