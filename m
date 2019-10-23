Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 825B1E112C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 06:48:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dKMJ4ay/9oHjAclSTPA6V0mcA8djwhDHZIoozfidijU=; b=koLas2b9xOOdQYVYpIQqP9MKXd
	XMsTujOKfiTUhnCSwd1jSz/XXd+MyzwjeSj5H0V4eg9qqgchUZoYoVDkafnK8fzpWkMjjOTtEpBjn
	2jCilFHSnmMCGU5ybdWWQ/7tkrbFcQejhqdpZZiz9Y/qMi9VzqPdxWtdSWcIK4i9wpKsv+3pwIYgd
	OlE9hjvph/0WljMe87AnShzGNQv1XAFIan0+5Wm+m4t7advgIp8f2wGWI5HKRgjz8XFNy7X/AP1p+
	ht7yFv/2jjPUcQ081zjiPwk3fXl2QUV934+C9XiitO7OxjghJEv1HaCKfWVQAjHE5J5YM3JRkHqTQ
	tJep3Srw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN8Z1-0005PC-0E; Wed, 23 Oct 2019 04:48:03 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN8Yp-0005OQ-UJ
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 04:47:53 +0000
Received: by mail-io1-xd44.google.com with SMTP id 1so11975102iou.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 21:47:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=8s5Hu4KyRljjB6EbA5uq0pBLzHLqE6KU1oX4tmploss=;
 b=u1Lus7UDOm+SKfnoGFsmG4wfwjvs5p3bXbMjvCxR7fedthqKhDjCwwriDAqYJFE4bM
 Znl+41N+UHVA5B3MkXhRLKrrzW9vu9PPQnUX1h5i/06G4J6HtV4y37L1z6vVr6qQGNoe
 X2D2eaC14k6KgoNDvg/ldAJZbULZADk2Hc14X0yooUdVwleGQa7xcfuJdMyS301ttxdW
 UvAWlIll6fRjY/igwPTJk8U1K82ovfELMBORqGZW2o/Op0bMN5eYKAaI1VXmzvRBtPT4
 PTWn7HXSJly/B1DTQ21bSumX+9/qGVfQLKxwQ2CPzKjx3ZmF5JmzJsrhe4K5s87bpIfO
 B2Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=8s5Hu4KyRljjB6EbA5uq0pBLzHLqE6KU1oX4tmploss=;
 b=mo529Uflaj9/h1nViql0BplvzMIiS88koZtuKpmUzxDRYK4343arFt7zEJojGiwkR1
 KE66IZXslzCL5D1Pxjhird2I2pquE3EFT372KJZkk7JaVKATnaKEfTyYh5CtP72je9sa
 aQASXwk4lpzScA1BkNac0Krquwe34D9ffoMHNWmoC+oIBfkrGO8xTYPBUNPHUwBKvAyt
 0wKGkRbQSS/gqt7slubn84r3kDBYtrFeLISFO0yzNUFDlVXvLNoCAqMu7qvlPP+ZxTYw
 WVIzAe85CPemsazROV1dO18/y2Xa6zs4OtTx5VvgdiO+U5WRuHQpF54zFfxtyij3tsEU
 JHUQ==
X-Gm-Message-State: APjAAAUMM8WTsIbdNdz7MqNFcJ1MuR+0T0HDM5pqwEer8mtoy1qBJBzw
 /dz/V9w86HVrnB+BEKcDOec=
X-Google-Smtp-Source: APXvYqylczteWA5Ex/xulqtHFYZRtyZvZ+/djFw2nj7Bkv2Xd43P5j40w3DyJCsBgy/vrBCnGIpA/w==
X-Received: by 2002:a6b:510f:: with SMTP id f15mr1393656iob.116.1571806067822; 
 Tue, 22 Oct 2019 21:47:47 -0700 (PDT)
Received: from cs-dulles.cs.umn.edu (cs-dulles.cs.umn.edu. [128.101.35.54])
 by smtp.googlemail.com with ESMTPSA id k22sm3049563iom.38.2019.10.22.21.47.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 21:47:47 -0700 (PDT)
From: Navid Emamdoost <navid.emamdoost@gmail.com>
To: michal.simek@xilinx.com
Subject: [PATCH] clocksource/drivers: Fix error handling in
 ttc_setup_clocksource
Date: Tue, 22 Oct 2019 23:47:36 -0500
Message-Id: <20191023044737.2824-1-navid.emamdoost@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <2a6cdb63-397b-280a-7379-740e8f43ddf6@xilinx.com>
References: <2a6cdb63-397b-280a-7379-740e8f43ddf6@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_214751_976232_34ED1A0E 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (navid.emamdoost[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, kjlu@umn.edu,
 linux-kernel@vger.kernel.org, emamd001@umn.edu, Markus.Elfring@web.de,
 smccaman@umn.edu, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Navid Emamdoost <navid.emamdoost@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the implementation of ttc_setup_clocksource() when
clk_notifier_register() fails the execution should go to error handling.
Additionally, to avoid memory leak the allocated memory for ttccs should
be released, too. So, goto error handling to release the memory and
return.

Fixes: e932900a3279 ("arm: zynq: Use standard timer binding")
Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
---
 drivers/clocksource/timer-cadence-ttc.c | 20 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/clocksource/timer-cadence-ttc.c b/drivers/clocksource/timer-cadence-ttc.c
index 88fe2e9ba9a3..035e16bc17d3 100644
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
+		goto release_ttccs;
 
 	ttccs->ttc.freq = clk_get_rate(ttccs->ttc.clk);
 
@@ -341,8 +339,10 @@ static int __init ttc_setup_clocksource(struct clk *clk, void __iomem *base,
 
 	err = clk_notifier_register(ttccs->ttc.clk,
 				    &ttccs->ttc.clk_rate_change_nb);
-	if (err)
+	if (err) {
 		pr_warn("Unable to register clock notifier.\n");
+		goto release_ttccs;
+	}
 
 	ttccs->ttc.base_addr = base;
 	ttccs->cs.name = "ttc_clocksource";
@@ -363,16 +363,18 @@ static int __init ttc_setup_clocksource(struct clk *clk, void __iomem *base,
 		     ttccs->ttc.base_addr + TTC_CNT_CNTRL_OFFSET);
 
 	err = clocksource_register_hz(&ttccs->cs, ttccs->ttc.freq / PRESCALE);
-	if (err) {
-		kfree(ttccs);
-		return err;
-	}
+	if (err)
+		goto release_ttccs;
 
 	ttc_sched_clock_val_reg = base + TTC_COUNT_VAL_OFFSET;
 	sched_clock_register(ttc_sched_clock_read, timer_width,
 			     ttccs->ttc.freq / PRESCALE);
 
 	return 0;
+
+release_ttccs:
+	kfree(ttccs);
+	return err;
 }
 
 static int ttc_rate_change_clockevent_cb(struct notifier_block *nb,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
