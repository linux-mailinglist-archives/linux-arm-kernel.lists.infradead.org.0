Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3ED018F1C3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 10:27:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eDU5dr6iB9TZ1RuIKnPXPk1WiJbFosNm961glpYRQlM=; b=AQSI1L43PRLnKnu25NllvcNQFl
	ZiV35Yrh9Ca0ea3QE2oxhYmWZU1uwA/SrzmLSHRe6FfFJ6VdJbmeG4Xx/87NDS2latvufbR0MNXav
	8j8mHu43rz5p2UlLcVAP2Z5ImxR4puOK8BBeYjJAXW/IepiC5jql3qodKwr2j2xiaIO2uaMFMGO1D
	5ifzgRVH1QNVXwSMFNkVZuTAUJ7l/mX+BiXcV320QHv9HMlJvFr+9neKSZePuW2k9TfyYYM6tI5i1
	HCrNTJ/oCdFg5bK805Ds5KGgKB4yGAIwc25biyHrk6xjt+OmlB2kS89HZbs63VRDx32x+yuFYUS5L
	AtpwgPwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGJMh-0007tg-4L; Mon, 23 Mar 2020 09:27:23 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGJKH-0004bu-Rv
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 09:24:55 +0000
Received: by mail-pg1-x541.google.com with SMTP id x7so6906909pgh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 02:24:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=A/0NRUsfnu7n/YoGxddH0xC1BSLSDDMn2mXtHQEsBCY=;
 b=H0/vrJJc4UTp4a1L7+UIrsXgbN2ZX+7FVzPetQZIdA9e76ziulDaDd2NAhYkIPjkxS
 YT987yydfco9sXyReNE47Uy1nFABe5RZIGH+tsYqgmg60OQudmltQHH7WVpP7G8VHogy
 +GLzGp5ZIudGxaUkMdcxKmubUoLfIMq6950kg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=A/0NRUsfnu7n/YoGxddH0xC1BSLSDDMn2mXtHQEsBCY=;
 b=o6X4RZklJ+Muhssb6Rm0wx8RgHK/Ts/OOUrm96S38TnENTOretTeNpLorUrEqTNJge
 mMI2K698J3KXTdRnlswEsXAJHMIQ0MWXUnU33SylmM5eOdBESR8PHxCWnCPEdvwnd5jd
 88JpLUZZocWz7/WvZ7cMXOXDmq022Sa64nrbhQTE3EIU80lL/Z0aXSDL6KEMshze/AIQ
 LxD3YTQxF3+0a6TKSxcBqiRf4w+RfquZFCn7GG0rGI1hEJaEuJ1kopznKmcf21qzJmc9
 cVJB8jLxwgdwOmioGOrO/I9bjNzgwHFBAmKHg29kFXTlydLVpBjqOcFRlT6qSeo5AKNH
 Dn5g==
X-Gm-Message-State: ANhLgQ2c3N2PimNVmfjcjIuvlFj/K4DZTlzzYUqr4s650lyrvuIrMwTW
 uiVuqfuKCFxHZe68zEpEwvJqtQ==
X-Google-Smtp-Source: ADFU+vsQVINq2XB12jFlGwrLlldGkGz/5WxUV8cQYnSGPxofZHvKAe+lIqQmXoaWxjTZF4JRtCVP8w==
X-Received: by 2002:a63:794d:: with SMTP id u74mr8709869pgc.15.1584955492897; 
 Mon, 23 Mar 2020 02:24:52 -0700 (PDT)
Received: from rayagonda.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id t186sm1093068pgd.43.2020.03.23.02.24.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 02:24:52 -0700 (PDT)
From: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Yendapally Reddy Dhananjaya Reddy <yendapally.reddy@broadcom.com>,
 linux-pwm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] pwm: bcm-iproc: remove unnecessary check of 'duty'
Date: Mon, 23 Mar 2020 14:54:24 +0530
Message-Id: <20200323092424.22664-3-rayagonda.kokatanur@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200323092424.22664-1-rayagonda.kokatanur@broadcom.com>
References: <20200323092424.22664-1-rayagonda.kokatanur@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_022453_931777_396DAFF4 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

Variable 'duty' is u32 and IPROC_PWM_DUTY_CYCLE_MIN is zero.
Hence the less-than zero comparison is never true,remove the check.

Fixes: daa5abc41c80 ("pwm: Add support for Broadcom iProc PWM controller")
Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
---
 drivers/pwm/pwm-bcm-iproc.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/pwm/pwm-bcm-iproc.c b/drivers/pwm/pwm-bcm-iproc.c
index 8bbd2a04fead..1bb66721f985 100644
--- a/drivers/pwm/pwm-bcm-iproc.c
+++ b/drivers/pwm/pwm-bcm-iproc.c
@@ -149,8 +149,7 @@ static int iproc_pwmc_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 		value = rate * state->duty_cycle;
 		duty = div64_u64(value, div);
 
-		if (period < IPROC_PWM_PERIOD_MIN ||
-		    duty < IPROC_PWM_DUTY_CYCLE_MIN)
+		if (period < IPROC_PWM_PERIOD_MIN)
 			return -EINVAL;
 
 		if (period <= IPROC_PWM_PERIOD_MAX &&
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
