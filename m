Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ADABE10FF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 06:32:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NNTbVbNGdKNe4L2C7xFlp4YGir8qo1x4diSIDmwgJWs=; b=BBxV3LMO/VGDYFDjGGreAFmrQc
	r4KBZKait2afRPBGamr7aVuyXnJd0JbNQczfccr6mTAMOu/mCxX2dcc6mToKFD1RW5CtP8UMueQZX
	6I759a6OAfsdxsC96fcKnXlbG4CjRcAl8C5CbAmMvFoVG4L2S/lM3SkPWRoVx22Mcm1BiIhBUGMc5
	XxeGskcybxazXB1dDRd7Feuzgu2IA93AX2Ax7MGp5zr5+K4GEY/6Qz2adappxiiq7CUPULN5zqRSQ
	v0KDOG/I1by25mK0Fzk7I4Ug8g5TM+tGwKJaP8FdmcTggUPXZ+8HWc47+3K3R4a1RLxf9Y7zDTjnX
	m5jUAUkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN8JY-0008Gy-Pm; Wed, 23 Oct 2019 04:32:04 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN8JS-0008Gb-Fv
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 04:31:59 +0000
Received: by mail-io1-xd43.google.com with SMTP id u8so23263671iom.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 21:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=NGMLML8IKQMLZFW+6VDxAD0zaTRhNeximY488B0GKP8=;
 b=d/UeAKEWSl2GIHhIhh59Fw6MWWVs03I81D+6yD/uYU9lsHjSLqSLCP1BrR06rHgYpK
 v8XAGA8YLOjIZ30TDhKpz4cbDUksFA8mY4MSnA+m0K/npj+PaasdTPkjNjQOUSTFtwvF
 3UB3Jj7z0af7pH8cYjqjfoCE6VEJ/XAEiTWzk3UgxMgUZZ6N0NwWfDjfRrLeXUn5xyp6
 C/U3S6XbGb/lb+FlxIkYYZ5E+BWvNaCettAFeKRF63zIDICvuLi8ADDyRDmhWI2bO/Eu
 8JVcthF/p2uQ4qaJIn6B8MIc/26eOgjABdjwyzl8QKVqjlbn5ov8MftpO4CboIVPb9xd
 QeGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=NGMLML8IKQMLZFW+6VDxAD0zaTRhNeximY488B0GKP8=;
 b=bSP+v4K6yc93dziyK4rp350CyONq8ypb4pEdRuR0NLU9qt89GABg3dOXTDruZeKOtq
 cVcvBBfGpn8CejgBlbA6a403iZ2TnbIY8sWb62D7Ob++4Kq5tKXWBum1eOx7+M3w6GG9
 LjEXd8Us4pd/nikeNUZj8uwnsjQBQNvhJPO+t+kauMSrRIQbE9GUDumj+BbVKT+akyt2
 YBrSez6FCLzQxig5xMRVu0Gq9oP0neYOkIPLUu6ylQfqkW49qOQijeClErQkdRh9z3oE
 yngyd1gTPwvXJc+stBA/vv6k0eZ+UnlhxANTA6DUopVA9fXl8OAm6riGEZKfsqg4tIVw
 ApMQ==
X-Gm-Message-State: APjAAAUdBodhdJXYVt0mZPIgtwAksk1dRxgRknFmYymMMFMSrjGEQVMC
 FUwBRP7ED6rszXCS9qGXuVg=
X-Google-Smtp-Source: APXvYqwa+rk7FC4WOm3QHKl1zrKosjgaiN7I+AkChk0t8STWUALPGtx8Cerovi0+YAEwwtIdTzW8jg==
X-Received: by 2002:a02:ce9c:: with SMTP id y28mr7623711jaq.84.1571805116709; 
 Tue, 22 Oct 2019 21:31:56 -0700 (PDT)
Received: from cs-dulles.cs.umn.edu (cs-dulles.cs.umn.edu. [128.101.35.54])
 by smtp.googlemail.com with ESMTPSA id k2sm6298667ios.19.2019.10.22.21.31.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 21:31:55 -0700 (PDT)
From: Navid Emamdoost <navid.emamdoost@gmail.com>
To: michal.simek@xilinx.com
Subject: [PATCH v2] clocksource/drivers: Fix memory leak in
 ttc_setup_clockevent
Date: Tue, 22 Oct 2019 23:31:38 -0500
Message-Id: <20191023043139.31183-1-navid.emamdoost@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <2a6cdb63-397b-280a-7379-740e8f43ddf6@xilinx.com>
References: <2a6cdb63-397b-280a-7379-740e8f43ddf6@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_213158_556550_DE4EA7C6 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (navid.emamdoost[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
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

In the implementation of ttc_setup_clockevent() release the allocated
memory for ttcce if clk_notifier_register() fails.

Fixes: 70504f311d4b ("clocksource/drivers/cadence_ttc: Convert init function to return error")
Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
---
Changes in v2:
	- Added goto label for error handling
	- Update description and fix typo

 drivers/clocksource/timer-cadence-ttc.c | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/clocksource/timer-cadence-ttc.c b/drivers/clocksource/timer-cadence-ttc.c
index 88fe2e9ba9a3..0caacbc67102 100644
--- a/drivers/clocksource/timer-cadence-ttc.c
+++ b/drivers/clocksource/timer-cadence-ttc.c
@@ -411,10 +411,8 @@ static int __init ttc_setup_clockevent(struct clk *clk,
 	ttcce->ttc.clk = clk;
 
 	err = clk_prepare_enable(ttcce->ttc.clk);
-	if (err) {
-		kfree(ttcce);
-		return err;
-	}
+	if (err)
+		goto release_ttcce;
 
 	ttcce->ttc.clk_rate_change_nb.notifier_call =
 		ttc_rate_change_clockevent_cb;
@@ -424,7 +422,7 @@ static int __init ttc_setup_clockevent(struct clk *clk,
 				    &ttcce->ttc.clk_rate_change_nb);
 	if (err) {
 		pr_warn("Unable to register clock notifier.\n");
-		return err;
+		goto release_ttcce;
 	}
 
 	ttcce->ttc.freq = clk_get_rate(ttcce->ttc.clk);
@@ -453,15 +451,18 @@ static int __init ttc_setup_clockevent(struct clk *clk,
 
 	err = request_irq(irq, ttc_clock_event_interrupt,
 			  IRQF_TIMER, ttcce->ce.name, ttcce);
-	if (err) {
-		kfree(ttcce);
-		return err;
-	}
+	if (err)
+		goto release_ttcce;
 
 	clockevents_config_and_register(&ttcce->ce,
 			ttcce->ttc.freq / PRESCALE, 1, 0xfffe);
 
 	return 0;
+
+release_ttcce:
+
+	kfree(ttcce);
+	return err;
 }
 
 /**
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
