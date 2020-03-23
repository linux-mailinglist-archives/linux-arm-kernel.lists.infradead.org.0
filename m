Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B4F918F1BE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 10:26:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Q+qPz2yHLQaNajkoNlw0ONwhn+jVIwgrH9be6HclF7M=; b=UI+D6ELkR9LBfNn8dn3jXtl9K8
	1pOs0xidzk17s/shmYZezHsKH5YIzlBcI4dqmcctoGcCzUkpx4CmIh40oB2LNf+VPtpRRe+BzOKVy
	NGzCsL9F76ztYI9mdVRnYz+auwu4nU4VkB/tYeQBClh+qplBguFivnFFF1dkr/eODgUUfJ0c6yASg
	K7xaTJozJn9aAPG7tz24WNzzl/H24LCFkf57jjkO/ZbvubtceJwJlB2KltHHlGO4/jzwDYDNZJ3US
	lQfuxc7KXtoFFQHbQgJuX27ItM8PS5gGCn8HYRVc1BpfO3jFAnEVEfbSl17DO2/oObWvKgAgnYSZM
	qNpN2bFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGJLZ-0005do-0f; Mon, 23 Mar 2020 09:26:13 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGJKC-0004We-Qn
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 09:24:50 +0000
Received: by mail-pl1-x644.google.com with SMTP id t16so5676983plr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 02:24:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=C3DogahGC9+RykrmX70/1+RE3NkN/OINb0pWKE0oiy4=;
 b=KY4NTm1xU1uLWsixTz3NKCGR6EPu+Z2kNC/ShiFbEjkV+4fQIuniGYnVYTbdlyeB0U
 BRsww8PZH723mNWmelL0ybE4OPO5GnTtHGYMXxwKr41x9UaPBcttTER9W7dzwxYUr0Ma
 HByNd0+RMg8Gk/1IBidHXMtwssmwRJT4EhhT0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=C3DogahGC9+RykrmX70/1+RE3NkN/OINb0pWKE0oiy4=;
 b=gYbJWEQY0byJN+YTvFmRD7hTgQYCojR7XWdAxjC0wiG180xoBAs01lMsJczAtoQ2AO
 wiOhQuPKPaZwQoCYWVnl/FNzYRyHmdkJsoTtXVV/Jn8TR2DEyc+QW7bDHeKoaM5WL302
 ddjAeQvyuVIfB49HzOtDlAWsF/gKmm6GrNN0Von62EA3GjSOckGVvtQf3zX3wY5Y0575
 K5PyW1yz/Gc9E8In7ciNR6aKsRAaVWd/gtGgdoGYoBXo0t5g36qTt295PMFGjUp0vpA5
 6J99RurDjPMMd0ZFd66naFq2x3iKIThQCUvRn5u5wptRjtSVvUCDnwB+Uy6FMjKN2pnK
 wFkQ==
X-Gm-Message-State: ANhLgQ17xvecziYsg09MwnWeiwactXBeMNC8N45P7eY7fiB6WM9Bpnsf
 LqNzvPLz+VX70TfICEBUdWKnVw==
X-Google-Smtp-Source: ADFU+vu3dwbnOc73Ub2kUbNVRr9hWwQpUgSWBw+ncuy5m5W1glqsH76QRsrnl5u0v4Ym8D/QV0KS2A==
X-Received: by 2002:a17:90a:9742:: with SMTP id
 i2mr2863545pjw.194.1584955488035; 
 Mon, 23 Mar 2020 02:24:48 -0700 (PDT)
Received: from rayagonda.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id t186sm1093068pgd.43.2020.03.23.02.24.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 02:24:47 -0700 (PDT)
From: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Yendapally Reddy Dhananjaya Reddy <yendapally.reddy@broadcom.com>,
 linux-pwm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] pwm: bcm-iproc: handle clk_get_rate() return
Date: Mon, 23 Mar 2020 14:54:23 +0530
Message-Id: <20200323092424.22664-2-rayagonda.kokatanur@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200323092424.22664-1-rayagonda.kokatanur@broadcom.com>
References: <20200323092424.22664-1-rayagonda.kokatanur@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_022448_878647_EE342C62 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Handle clk_get_rate() returning <= 0 condition to avoid
possible division by zero.

Fixes: daa5abc41c80 ("pwm: Add support for Broadcom iProc PWM controller")
Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
---
 drivers/pwm/pwm-bcm-iproc.c | 32 +++++++++++++++++++-------------
 1 file changed, 19 insertions(+), 13 deletions(-)

diff --git a/drivers/pwm/pwm-bcm-iproc.c b/drivers/pwm/pwm-bcm-iproc.c
index 1f829edd8ee7..8bbd2a04fead 100644
--- a/drivers/pwm/pwm-bcm-iproc.c
+++ b/drivers/pwm/pwm-bcm-iproc.c
@@ -99,19 +99,25 @@ static void iproc_pwmc_get_state(struct pwm_chip *chip, struct pwm_device *pwm,
 	else
 		state->polarity = PWM_POLARITY_INVERSED;
 
-	value = readl(ip->base + IPROC_PWM_PRESCALE_OFFSET);
-	prescale = value >> IPROC_PWM_PRESCALE_SHIFT(pwm->hwpwm);
-	prescale &= IPROC_PWM_PRESCALE_MAX;
-
-	multi = NSEC_PER_SEC * (prescale + 1);
-
-	value = readl(ip->base + IPROC_PWM_PERIOD_OFFSET(pwm->hwpwm));
-	tmp = (value & IPROC_PWM_PERIOD_MAX) * multi;
-	state->period = div64_u64(tmp, rate);
-
-	value = readl(ip->base + IPROC_PWM_DUTY_CYCLE_OFFSET(pwm->hwpwm));
-	tmp = (value & IPROC_PWM_PERIOD_MAX) * multi;
-	state->duty_cycle = div64_u64(tmp, rate);
+	if (rate == 0) {
+		state->period = 0;
+		state->duty_cycle = 0;
+	} else {
+		value = readl(ip->base + IPROC_PWM_PRESCALE_OFFSET);
+		prescale = value >> IPROC_PWM_PRESCALE_SHIFT(pwm->hwpwm);
+		prescale &= IPROC_PWM_PRESCALE_MAX;
+
+		multi = NSEC_PER_SEC * (prescale + 1);
+
+		value = readl(ip->base + IPROC_PWM_PERIOD_OFFSET(pwm->hwpwm));
+		tmp = (value & IPROC_PWM_PERIOD_MAX) * multi;
+		state->period = div64_u64(tmp, rate);
+
+		value = readl(ip->base +
+			      IPROC_PWM_DUTY_CYCLE_OFFSET(pwm->hwpwm));
+		tmp = (value & IPROC_PWM_PERIOD_MAX) * multi;
+		state->duty_cycle = div64_u64(tmp, rate);
+	}
 }
 
 static int iproc_pwmc_apply(struct pwm_chip *chip, struct pwm_device *pwm,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
