Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9129F127207
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 01:09:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xw2L6Qqi0VQqAPHLFpV0rPVA4TIPFarXJPaPfZalWno=; b=Nt2
	nsR3Jq7QvdVGv0Mqkj5c0NucAYUYnffXf9MzwsrEhz34/LVDOENzyBPfQfxLHOUe5OSj6Gn4MP8kH
	WJI1xFu6oxxYaaE7hyCC9wvz6o2AgIMgBbLuQetXma4F/uSANLINcTEjfKD909LGKPtFvqtHqjmzk
	9guyqwh23xU2czZSUPDlAtZSKxcoO/fZrEDEajf4bQIOlfHeb9FUl0+NLj9gmZHPtt4QMUI09bOG5
	GPnQ8mI3KbavASjo6p++/I+kauRuottCOoK1JWIfVpTzDdA327uNusvrBJ8eHIHK7l9G7uAQ7xlK5
	3HNXsa7xJLBfNaWsREAbgdUkyHAM4PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii5rX-000423-AF; Fri, 20 Dec 2019 00:09:47 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii5rN-00041D-UX
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 00:09:39 +0000
Received: by mail-io1-xd43.google.com with SMTP id r13so7651672ioa.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 16:09:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=MTszdXA31s6xPF2TlS6Lmct/FIX8+UeMJUwiKqaD1H0=;
 b=n2a18GCi3DeWASocTD5N9/6wsr665l5p4/2DrWqBBQoMBz4RPGUQWN+K0MO4xyr+DF
 rqvRubb02dpEFF0gQpVLlT3xnKIQ/hR4TQ33c21kbCuhSzYhNaZRmTjzOxE/gs5tia9o
 LQu6HUfeOm+x+Z/K/0QdkOI5i+OgB62OHQTHgsu21qbfpTJhYA9LU2FGr1M0EA9kS997
 EJjvOoic7TsMaDD4IG71q5CtwhEvYifVCrQC7nnkM7kQWBK/DDMyvHUToci+XQjt1gbT
 evFV9sQJETWt9Q1lh58zinjU2jOH3cQDR/3Q4nzPG2pyUYd4SMgZJsnBua44AHuPOe8n
 Tvcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=MTszdXA31s6xPF2TlS6Lmct/FIX8+UeMJUwiKqaD1H0=;
 b=MZyPKh9SQUeZxGQyPosce5h3W2f3OvZe9HUYiN2dYsgv3tEHAAEN6vdnJFM7EaCZDA
 CLvavyHOU9n3ggu8/+gQ4uXQQNtmUR085j7KS9rceXMvmvS4n92376iDV4OTRuh5ih/R
 bL/X7AqpEx8J0FW5sngvYTf+maj/P2bhMgJT+rgtHY4AWnWfS3Bwmaa6Gcug+jzzWNyg
 ppBk8zZEjagy7FkHhYK9W/yDfXW8YzFau3gywBFP/ec5U/9saacQykTDIN/ekJZUPXtz
 zSyG3sxRt04U1AbACRiI2xfO/+gWKF4+sdRLzjzN+qmzpSzLeqUdrTAMkrzqvGPu3h+8
 Es8g==
X-Gm-Message-State: APjAAAVblCn0YjcB3+QcJYa207GN+z1Mvg48mFj7KEcaM6k8s5VczrKc
 a+gzOLVfVbjtTvMOHp/or9s=
X-Google-Smtp-Source: APXvYqwJfO4AtKgYH0x9fTiKnObinPDpwfkYMVw1/y/J6GwULjFNxdg8gM1hnHOcY5MvKhXJOfQgww==
X-Received: by 2002:a02:bb02:: with SMTP id y2mr9506946jan.99.1576800575988;
 Thu, 19 Dec 2019 16:09:35 -0800 (PST)
Received: from cs-dulles.cs.umn.edu (cs-dulles.cs.umn.edu. [128.101.35.54])
 by smtp.googlemail.com with ESMTPSA id n9sm2409305ioo.38.2019.12.19.16.09.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 16:09:35 -0800 (PST)
From: Navid Emamdoost <navid.emamdoost@gmail.com>
To: Michal Simek <michal.simek@xilinx.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 =?UTF-8?q?S=C3=B6ren=20Brinkmann?= <soren.brinkmann@xilinx.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] clocksource/drivers: Fix memory leaks in ttc_setup_clockevent
 and ttc_setup_clocksource
Date: Thu, 19 Dec 2019 18:09:21 -0600
Message-Id: <20191220000923.9924-1-navid.emamdoost@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_160937_983523_9796F015 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (navid.emamdoost[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: emamd001@umn.edu, Navid Emamdoost <navid.emamdoost@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the implementation of ttc_setup_clockevent() and
ttc_setup_clocksource(), the allocated memory for ttccs is leaked when
clk_notifier_register() fails. Use goto to direct the execution into error
handling path.

Fixes: 70504f311d4b ("clocksource/drivers/cadence_ttc: Convert init function to return error")
Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
---
 drivers/clocksource/timer-cadence-ttc.c | 22 +++++++++++++---------
 1 file changed, 13 insertions(+), 9 deletions(-)

diff --git a/drivers/clocksource/timer-cadence-ttc.c b/drivers/clocksource/timer-cadence-ttc.c
index c6d11a1cb238..46d69982ad33 100644
--- a/drivers/clocksource/timer-cadence-ttc.c
+++ b/drivers/clocksource/timer-cadence-ttc.c
@@ -328,10 +328,8 @@ static int __init ttc_setup_clocksource(struct clk *clk, void __iomem *base,
 	ttccs->ttc.clk = clk;
 
 	err = clk_prepare_enable(ttccs->ttc.clk);
-	if (err) {
-		kfree(ttccs);
-		return err;
-	}
+	if (err)
+		goto release_ttcce;
 
 	ttccs->ttc.freq = clk_get_rate(ttccs->ttc.clk);
 
@@ -341,8 +339,10 @@ static int __init ttc_setup_clocksource(struct clk *clk, void __iomem *base,
 
 	err = clk_notifier_register(ttccs->ttc.clk,
 				    &ttccs->ttc.clk_rate_change_nb);
-	if (err)
+	if (err) {
 		pr_warn("Unable to register clock notifier.\n");
+		goto release_ttcce;
+	}
 
 	ttccs->ttc.base_addr = base;
 	ttccs->cs.name = "ttc_clocksource";
@@ -363,16 +363,20 @@ static int __init ttc_setup_clocksource(struct clk *clk, void __iomem *base,
 		     ttccs->ttc.base_addr + TTC_CNT_CNTRL_OFFSET);
 
 	err = clocksource_register_hz(&ttccs->cs, ttccs->ttc.freq / PRESCALE);
-	if (err) {
-		kfree(ttccs);
-		return err;
-	}
+	if (err)
+		goto release_ttcce;
 
 	ttc_sched_clock_val_reg = base + TTC_COUNT_VAL_OFFSET;
 	sched_clock_register(ttc_sched_clock_read, timer_width,
 			     ttccs->ttc.freq / PRESCALE);
 
 	return 0;
+
+release_ttcce:
+
+	kfree(ttcce);
+	return err;
+
 }
 
 static int ttc_rate_change_clockevent_cb(struct notifier_block *nb,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
