Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36EF91D03DB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 02:41:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=d/OQuzFPjkOq1/KCZF3HWz1W/Isb6Gtot9HsTzgt6uA=; b=lPxNQ2/BfbUW4oMhfxvaIowBJQ
	CyjkNu8ZsXBnG/jSDmjJtsaloQTJ+MiFlDCA+Vr9QYvP5QxmdtgqUAZUCyXIsOmbaL3B64CXMH3uj
	Z2eYTWrVv07BG1GF0WdrTNGICFRnaHFCGbdkSlj0yO2/Tgl4YAZA+OSusean8ybLC32IlG0ZrT3PB
	X3g02SUYgMjyctX1x/SvM352CF067LqGJHRsm2SIh0J4njZLzNrwmlD19KeTVcJM+Kzgm5DmFxFcM
	RLv8ANwoySx7Jc1/6LmHkyKVy0wo5njL9Vz2Wt6GNuGOAUY5kOsS4A7Ct3QXCgV3mIf0ILpiR+DhI
	lUaB6b5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYfSp-0007Qv-41; Wed, 13 May 2020 00:41:35 +0000
Received: from alexa-out-sd-01.qualcomm.com ([199.106.114.38])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYfRA-0003oT-R3
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 00:39:54 +0000
Received: from unknown (HELO ironmsg05-sd.qualcomm.com) ([10.53.140.145])
 by alexa-out-sd-01.qualcomm.com with ESMTP; 12 May 2020 17:39:48 -0700
Received: from gurus-linux.qualcomm.com ([10.46.162.81])
 by ironmsg05-sd.qualcomm.com with ESMTP; 12 May 2020 17:39:47 -0700
Received: by gurus-linux.qualcomm.com (Postfix, from userid 383780)
 id A374149C2; Tue, 12 May 2020 17:39:47 -0700 (PDT)
From: Guru Das Srinagesh <gurus@codeaurora.org>
To: linux-pwm@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: [RESEND PATCH v14 05/11] pwm: pwm-imx-tpm: Use 64-bit division macro
Date: Tue, 12 May 2020 17:39:39 -0700
Message-Id: <97e3a807ce9422294d8f05049ea76e9f583f0772.1589330178.git.gurus@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1589330178.git.gurus@codeaurora.org>
References: <cover.1589330178.git.gurus@codeaurora.org>
In-Reply-To: <cover.1589330178.git.gurus@codeaurora.org>
References: <cover.1589330178.git.gurus@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_173952_914536_D6D0F14E 
X-CRM114-Status: GOOD (  11.65  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [199.106.114.38 listed in list.dnswl.org]
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

Since the PWM framework is switching struct pwm_state.period's datatype
to u64, prepare for this transition by using DIV64_U64_ROUND_CLOSEST to
handle a 64-bit divisor.

Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Signed-off-by: Guru Das Srinagesh <gurus@codeaurora.org>
---
 drivers/pwm/pwm-imx-tpm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pwm/pwm-imx-tpm.c b/drivers/pwm/pwm-imx-tpm.c
index 5f3d7f7..fcdf6be 100644
--- a/drivers/pwm/pwm-imx-tpm.c
+++ b/drivers/pwm/pwm-imx-tpm.c
@@ -124,7 +124,7 @@ static int pwm_imx_tpm_round_state(struct pwm_chip *chip,
 		real_state->duty_cycle = state->duty_cycle;
 
 	tmp = (u64)p->mod * real_state->duty_cycle;
-	p->val = DIV_ROUND_CLOSEST_ULL(tmp, real_state->period);
+	p->val = DIV64_U64_ROUND_CLOSEST(tmp, real_state->period);
 
 	real_state->polarity = state->polarity;
 	real_state->enabled = state->enabled;
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
