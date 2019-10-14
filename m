Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 767EBD6473
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 15:53:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d4KV+rVvf+OiQZ0uUFaKpjouYN+5wISXIcVBb5n0cpQ=; b=GCtM0Jg2stkw16
	wvX/euVHDefkR+Tjc7hQAiWBQjUpHSK3DfqRlFQvcAzlXC3drcBTtu0ciI1iorUy5X39dY3VXQ0Pf
	LdRCzbHHHKXvAQTm2/VkuVsKDLOgfD4Iqoy+vtU+TwUbf3KCzR6hAPu5J9AVCfj59Sq0u573Ztvxc
	3XCdS0vtq8WfDWRMLgnlcvGDwuEJ2pfuEZouCAFT9gLsTsYGk8/8H9pRS/Nb7I11FRrjF3+O0BMng
	yYC9jof1UsXHshr1UZiJB1EtJfiixCphoA0Ifw3ZiD4UhBXckN6uzxJKiv1iG2uiXMeWxXrLMicN7
	C6rQE57wa+Ng7xGiyB6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK0mv-0001Id-6s; Mon, 14 Oct 2019 13:53:29 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK0mk-0001Hb-CQ
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 13:53:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1571061192; bh=46QzCIBZ/9atA9i8sP3TsXg10uJJ6p13+mX/uBQH05Y=;
 h=From:To:Cc:Subject:Date:From;
 b=qeaJSpN7BUJp2ZteQ5BjyIkVRC6U0UOhE7/gTCpY+DprLpl8kJMvhno9FN5fEXAj/
 vqfuwWbW7gK6ALcnPDN5dGh0qLtwAAR92w1PbxUXFpnTl3wx9TeUVdsvoQiTHkucCk
 6LgmSYX/mtr2I/n5v+Sbbo87xQkbzlHzWd6xUGPY=
From: megous@megous.com
To: 
Subject: [PATCH] pwm: sun4i: Fix incorrect calculation of duty_cycle/period
Date: Mon, 14 Oct 2019 15:53:03 +0200
Message-Id: <20191014135303.2944058-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_065318_591242_F864CBC9 
X-CRM114-Status: UNSURE (   7.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 2.5 TO_EQ_FM_DIRECT_MX     To == From and direct-to-MX
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
Cc: Ondrej Jirman <megous@megous.com>,
 "open list:PWM SUBSYSTEM" <linux-pwm@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ondrej Jirman <megous@megous.com>

Since 5.4-rc1, pwm_apply_state calls ->get_state after ->apply
if available, and this revealed an issue with integer precision
when calculating duty_cycle and period for the currently set
state in ->get_state callback.

This issue manifested in broken backlight on several Allwinner
based devices.

Previously this worked, because ->apply updated the passed state
directly.

Fixes: deb9c462f4e53 ("pwm: sun4i: Don't update the state for the caller of pwm_apply_state")
Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 drivers/pwm/pwm-sun4i.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/pwm/pwm-sun4i.c b/drivers/pwm/pwm-sun4i.c
index 6f5840a1a82d..05273725a9ff 100644
--- a/drivers/pwm/pwm-sun4i.c
+++ b/drivers/pwm/pwm-sun4i.c
@@ -137,10 +137,10 @@ static void sun4i_pwm_get_state(struct pwm_chip *chip,
 
 	val = sun4i_pwm_readl(sun4i_pwm, PWM_CH_PRD(pwm->hwpwm));
 
-	tmp = prescaler * NSEC_PER_SEC * PWM_REG_DTY(val);
+	tmp = (u64)prescaler * NSEC_PER_SEC * PWM_REG_DTY(val);
 	state->duty_cycle = DIV_ROUND_CLOSEST_ULL(tmp, clk_rate);
 
-	tmp = prescaler * NSEC_PER_SEC * PWM_REG_PRD(val);
+	tmp = (u64)prescaler * NSEC_PER_SEC * PWM_REG_PRD(val);
 	state->period = DIV_ROUND_CLOSEST_ULL(tmp, clk_rate);
 }
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
