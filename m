Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 883CB1E28F1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 19:35:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=whHZoorzqK/gCvu1cq1EEkfmullQtjf5jM2O0bTqqAk=; b=lt/ZQmN7bjabOZ1DxIy9l2QgrI
	btX13Z68InOGfMgjp2useYksEiaz3Y6aTfrdG63lVsz/hvlZnzmYa/IFsq5yjqvNzg6c0gDld2aiU
	hEm2QUGKN1wqz445tOTgi/wZtm0aeqxtvknfhzXWa0Wepb14cZ/SBNpUtnQURwHSorNZzIU0TQiTe
	MPO08e3Ya+7V7BmU51dwAuJFqud1Clrj4QH+0cejZ5VF0hXzSG7EyrzdztS/3t9iQbmRD+lE20D0y
	7Nl4H7+CXDNI5Ria9VxhTKCDUeyKAKpSZPKytszgghUE+LRrITZesW1wyMIyIakjkpG6VRE0xjWY2
	VHHuIZlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jddUA-0008AP-Kp; Tue, 26 May 2020 17:35:30 +0000
Received: from alexa-out-sd-02.qualcomm.com ([199.106.114.39])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jddTv-00089a-0L
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 17:35:16 +0000
Received: from unknown (HELO ironmsg05-sd.qualcomm.com) ([10.53.140.145])
 by alexa-out-sd-02.qualcomm.com with ESMTP; 26 May 2020 10:35:13 -0700
Received: from gurus-linux.qualcomm.com ([10.46.162.81])
 by ironmsg05-sd.qualcomm.com with ESMTP; 26 May 2020 10:35:13 -0700
Received: by gurus-linux.qualcomm.com (Postfix, from userid 383780)
 id 8C68B4C99; Tue, 26 May 2020 10:35:13 -0700 (PDT)
From: Guru Das Srinagesh <gurus@codeaurora.org>
To: linux-pwm@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: [PATCH v15 07/11] pwm: sifive: Use 64-bit division macro
Date: Tue, 26 May 2020 10:35:07 -0700
Message-Id: <d0c834872cc4e162b2358f801aca783f7e1cc214.1590514331.git.gurus@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1590514331.git.gurus@codeaurora.org>
References: <cover.1590514331.git.gurus@codeaurora.org>
In-Reply-To: <cover.1590514331.git.gurus@codeaurora.org>
References: <cover.1590514331.git.gurus@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_103515_086730_5C8CAA83 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [199.106.114.39 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Daniel Thompson <daniel.thompson@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 David Collins <collinsd@codeaurora.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-kernel@vger.kernel.org, Geert Uytterhoeven <geert@linux-m68k.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, Joe Perches <joe@perches.com>,
 Subbaraman Narayanamurthy <subbaram@codeaurora.org>,
 Lee Jones <lee.jones@linaro.org>, Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since the PWM framework is switching struct pwm_args.period's datatype
to u64, prepare for this transition by using DIV64_U64_ROUND_CLOSEST to
handle a 64-bit divisor.

Signed-off-by: Guru Das Srinagesh <gurus@codeaurora.org>
Acked-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 drivers/pwm/pwm-sifive.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pwm/pwm-sifive.c b/drivers/pwm/pwm-sifive.c
index cc63f9b..62de0bb 100644
--- a/drivers/pwm/pwm-sifive.c
+++ b/drivers/pwm/pwm-sifive.c
@@ -181,7 +181,7 @@ static int pwm_sifive_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 	 * consecutively
 	 */
 	num = (u64)duty_cycle * (1U << PWM_SIFIVE_CMPWIDTH);
-	frac = DIV_ROUND_CLOSEST_ULL(num, state->period);
+	frac = DIV64_U64_ROUND_CLOSEST(num, state->period);
 	/* The hardware cannot generate a 100% duty cycle */
 	frac = min(frac, (1U << PWM_SIFIVE_CMPWIDTH) - 1);
 
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
