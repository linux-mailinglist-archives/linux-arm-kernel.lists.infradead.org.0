Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E85BF1889A9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 17:00:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LTdoZkNWu43Q8iPOhrpKZDOpXeVm0uV6KHpYDKtUx8U=; b=gcTkBJzmVYFPBx
	hmD5BgGZ//dsES20LEuc5yjWaQIu3vNzM+QIswke30lXmk5dILJtX7OHmPVl6a4047XDG5U39PraK
	FAJc1aX397LN5pMG6g5ScG6X8phpqfsc7h+F7H+P6mVGlw2UqYcB4e4owl3AxwWD/t98rsYN2ThQ1
	jS59U6kxcgqDz80pHv3xUcb1Vbte2iPZT/fqZTTlOpGjQs26aQgCy4GEw1+olA1C87LEQJrXrVx/M
	CQXop7k8kvTk4jVv+FKdCsSKPbvrPgp8rjz6765H4EFZV8sVYoDYUVHuh/3AlYAPupQFdnTizuk9V
	R+TWdgm2/53qq6o07UFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEEe3-0006Mp-HA; Tue, 17 Mar 2020 16:00:43 +0000
Received: from web0081.zxcs.nl ([2a06:2ec0:1::81])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEEdP-0004nK-PO
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 16:00:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=pascalroeleven.nl; s=x; h=Content-Transfer-Encoding:MIME-Version:References
 :In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H9LrRiFVN/DHzGg7tt6K3nT+T7r5Twb2pPaTqb+k2rM=; b=IpjEpVM6M/Ap5GtnnbY2+ddG5c
 jZT3HfDBgt0Ja/5OS9rUGayxXlmLEvKMOLrpW1xZaPZnjMS+gYipvG2rrGBGvGd+S61CdB2ZYul7K
 ojAvrhr5b9ayIU5CBBToMo32i7v2brizj9lc9L+VbX7mlWyz7Zcfzjq9oPrj+s8va+y32RSNyabwi
 j3nre3ZReEVL0lzwmeSgb0sKHjy4q66b6p+GVYKj4PAcDefJxGpm13Y9waZy6sSHC2pEUD2cj7Wex
 Ct3Jd785VUo/AuUJRQR+B8gvMKZj66AOI9Ychs+qktGl8Erd3vJBxP2meNSb4mDlll4do92PdGU4a
 m5nmUKCQ==;
Received: from ip565b1bc7.direct-adsl.nl ([86.91.27.199]:60802
 helo=localhost.localdomain)
 by web0081.zxcs.nl with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92.3) (envelope-from <dev@pascalroeleven.nl>)
 id 1jEEdK-001IGT-0t; Tue, 17 Mar 2020 16:59:58 +0100
From: Pascal Roeleven <dev@pascalroeleven.nl>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-pwm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [RFC PATCH 2/4] pwm: sun4i: Disable pwm before turning off clock gate
Date: Tue, 17 Mar 2020 16:59:04 +0100
Message-Id: <20200317155906.31288-3-dev@pascalroeleven.nl>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200317155906.31288-1-dev@pascalroeleven.nl>
References: <20200317155906.31288-1-dev@pascalroeleven.nl>
MIME-Version: 1.0
X-Authenticated-Id: dev@pascalroeleven.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_090004_045160_CBCB1F5B 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
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

The clock gate must stay on when disabling to ensure proper turning off.
After one period it will still be disabled anyway.

Signed-off-by: Pascal Roeleven <dev@pascalroeleven.nl>
---
 drivers/pwm/pwm-sun4i.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/pwm/pwm-sun4i.c b/drivers/pwm/pwm-sun4i.c
index 5c677c563..56942036b 100644
--- a/drivers/pwm/pwm-sun4i.c
+++ b/drivers/pwm/pwm-sun4i.c
@@ -292,13 +292,12 @@ static int sun4i_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 	else
 		ctrl |= BIT_CH(PWM_ACT_STATE, pwm->hwpwm);
 
-	ctrl |= BIT_CH(PWM_CLK_GATING, pwm->hwpwm);
-
 	if (state->enabled) {
 		ctrl |= BIT_CH(PWM_EN, pwm->hwpwm);
+		ctrl |= BIT_CH(PWM_CLK_GATING, pwm->hwpwm);
 	} else {
+		/* Turn gate off after delay to ensure proper turning off */
 		ctrl &= ~BIT_CH(PWM_EN, pwm->hwpwm);
-		ctrl &= ~BIT_CH(PWM_CLK_GATING, pwm->hwpwm);
 	}
 
 	sun4i_pwm_writel(sun4i_pwm, ctrl, PWM_CTRL_REG);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
