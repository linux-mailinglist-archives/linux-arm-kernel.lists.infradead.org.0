Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 024BF18EFFF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 07:54:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TnoC4PmJsAgdTitHtXRM01o2ACoccyrELzxBs5c/VBU=; b=ZXZhLaJrOU781bYa9Kv22VXF7l
	dIY137UkRQj0ZTCmC969Bem8q+S6V5R+o935nwlaLqWheGkso9O/wiDnTa0LXJZPQfPrhpkDfHDXM
	vZ52XXRY4uxhBorqD5To8hdOjpB5Ihgz4dMg+gezQlUiQlzH8IvjVpVsZK2p2IfUnVa7JDNNTvypG
	3cIZ923tcSFzeN5m6XmQKdid4DQ6M8HyXRlOu0ZHEm0dBukzid0GFCrerR0LKRyQDOaJTbv6o6n0Q
	MpuE4H6dwctEeewG1rskzcwKPjQL5KvpzA+EnNnVCr569jidwYQF2Gqj7BbYcq3UJxJh+BFTt7j8Q
	7MBNGoDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGGya-0005tU-Mq; Mon, 23 Mar 2020 06:54:20 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGGy2-0005ep-T2
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 06:53:48 +0000
Received: by mail-wm1-x341.google.com with SMTP id c81so2910823wmd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Mar 2020 23:53:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=DuqutkfVD4m7NtyrXjd1qFiuKaLZ6gnOOVtPX0RgVTY=;
 b=TguF1o1/qlgnZwU27lTm96jgi4/VmGaBU9Eea/Y1AGY4nm0JxN1hlQq8gngr0eXvRZ
 COkqUxmF+S78f7qM1i7WsXFrGqJBmuvAzIxi/Mx3KFXr2kUiPBQfEB7TEazWvWf1EJ8d
 kBhyfPSYv7fRe/9sVm6xPmpCcJzBLyo9FjBsA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=DuqutkfVD4m7NtyrXjd1qFiuKaLZ6gnOOVtPX0RgVTY=;
 b=Rg6iORrlYa1Z6wZsPJbZsdedeRpCCr9P/XrFee37sULxbO71b/ET9MEeOjhEZhUtyT
 iSioOH5YZpzx2c4BUKjWqL0BCjPXucbx8EFNeNXuk65eg5cDtmAH7mW6zRSXjT/Dqpb5
 n6/1ThjmGAWpx9qNitt6rOanveDBkUS8Pf5LGDpb8/Q3aIazmRjcUd4IyuR1qEi2VB67
 NwHmVuQ5KKjQ97otnHxTiC6IpdCUB2fuokcFpHqu10VTopsdtpPBCE/JCQYwZ+CJiz6T
 Qx+hN6FwAgdy0HZEqsa8trSw2Ev5PF0VvEnOz56dwF+xIWEcnnk31BRP5CDnzEzy/7e2
 stag==
X-Gm-Message-State: ANhLgQ16dR2+R8R3IobNILQpmEdr+XkTPdDTwg+bihJu6OsCCVGNlroF
 mCVmyN9f5JJ9wllubtRFs0U1pA==
X-Google-Smtp-Source: ADFU+vvTcWQvI4pQ74ETn6iuJkGTxDPyFfqkWItYiIQQfNbGj4qUUZzKTb7JO1lqWDauafYBB0xF4g==
X-Received: by 2002:a1c:196:: with SMTP id 144mr26056577wmb.100.1584946424816; 
 Sun, 22 Mar 2020 23:53:44 -0700 (PDT)
Received: from rayagonda.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id g128sm21127453wmf.27.2020.03.22.23.53.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Mar 2020 23:53:44 -0700 (PDT)
From: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Yendapally Reddy Dhananjaya Reddy <yendapally.reddy@broadcom.com>,
 linux-pwm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/2] pwm: bcm-iproc: remove unnecessary check of 'duty'
Date: Mon, 23 Mar 2020 12:23:18 +0530
Message-Id: <20200323065318.16533-3-rayagonda.kokatanur@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200323065318.16533-1-rayagonda.kokatanur@broadcom.com>
References: <20200323065318.16533-1-rayagonda.kokatanur@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_235346_954817_99B67EAB 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Variable 'duty' is u32. Hence the less-than zero
comparison is never true, remove the check.

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
