Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5802B191A5A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 20:53:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9i/mfEOJ/yzSY7bV+jSFfHGw2D3IzrkDeQEfz6+10H0=; b=X3SNfMwjfFZU4I
	1SMOUqOG9c9ESdXDEknm4RyheQfFwduzqSBmkMD7S1ckuu3xQgCxkRGMBIDqL+7NFoIQbOdSJCDbd
	wUVxfmNwjnbRsx2fM3gHzzkk2yPU8yhTLNL3FTl5RM5e/Rk3ZNqldGTwdeHaZGxEzFsItNAAwDxd3
	jAoBHuEcaE1Cg6V6tunveVzaBcDHvITTCJI480hN1KcojSSytF4M5u7NkzZNuDpfGuXc6FWzq3Stl
	tqHupH9jr+PXOLk3WOVEddZTYbIdKu12/BDoGC9Q2tk7xtDU7D9djpQZic6lcEtKv/GzbrufQmHnY
	qaIeTTGBxJM0c91atKEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGpc2-0007yP-KV; Tue, 24 Mar 2020 19:53:22 +0000
Received: from mail-pj1-x1049.google.com ([2607:f8b0:4864:20::1049])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGpbp-0007r2-LQ
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 19:53:11 +0000
Received: by mail-pj1-x1049.google.com with SMTP id d9so3344114pjs.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 12:53:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=1yB0CYPrzQ4Yl04wZfzYWlJ24CZkmQCx7EKSiot+wr8=;
 b=sxvls+XPSQ2VIqzbPGi7E7p//gwKfNCz6cvV+XdQmEN9a39woGfEKfZYgXkDwW8YXj
 bKfVNGD3ohruJb1mErLEEkQnptEAid0Ue3EPBCA2/uZEjwke5XhQynBR5DWVRcAl7uMZ
 xqWqYy94F51UQgAmGfgKcZ/SUJCj7ESgeaNKnxHFubWP4q/Uno3VhUx3pAuSJSGG+MlX
 mzPBvMqZy2tLc+bh8EiHTVwqtYF2m7nwbAk6Gk/MOwVW/Dp7wac4ccGRzv56eHjXweKa
 jwRcQ3SnU1WB5HNTp+3E2YI7vAvt0Cm0n5BWTDIjm6HD5dcgQbleoea7+pc3YXEqWh/8
 ULVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=1yB0CYPrzQ4Yl04wZfzYWlJ24CZkmQCx7EKSiot+wr8=;
 b=W5QCgoJmspwQcTNRVt9A7ut/OtMYc+7Qjy5W0wqtwRNu6EDjIgcXz0/uPSEIt87ogQ
 mzl+0ge3IgY1t+uI3S1ez9KX0TgeXYI/wwDS5YWJpSOX1qB8SO9g3syffjBYyGL4HLsE
 VaneGlwBZDugyfyVADgZKRB+retJbhozKdi8t+Px5oxAYl/vBnKKxwtMV6lsCUElu3ed
 bAXfleNLx6bgj+wyWZpzCDO+UYd+LRbnt8BaM0qglgWrVXwC4+oARc3aYE+JyONiVjAx
 QuIQOZbkoJvz1fbiBYHf5l8YZAQhyMcsxA9v78JmeeOnmwvEF4zXnbpYIqEYXx/rofrK
 kOnA==
X-Gm-Message-State: ANhLgQ1n3p6RZgX9e0ucX9UCRwBh0utNc0Tf3O57RVirlFmV/p/b97yt
 /gSWE7mLktb2Twk7iBCy/0LDDGvHXuLRQNg=
X-Google-Smtp-Source: ADFU+vt9AUzxHCZt+lQUhNSQMtyJprTXre/WTxRnr5Ff+RI/UhKS5xFaEQxJRW9i6WOI2gCuHTFU9l3TsJYnxww=
X-Received: by 2002:a17:90a:228c:: with SMTP id
 s12mr7332521pjc.68.1585079588430; 
 Tue, 24 Mar 2020 12:53:08 -0700 (PDT)
Date: Tue, 24 Mar 2020 12:53:02 -0700
Message-Id: <20200324195302.203115-1-saravanak@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.1.696.g5e7596f4ac-goog
Subject: [PATCH v1] clocksource/drivers/timer-versatile: Clear OF_POPULATED
 flag
From: Saravana Kannan <saravanak@google.com>
To: Ionela Voinescu <ionela.voinescu@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, 
 Saravana Kannan <saravanak@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_125309_731142_BD0B4A6F 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: kernel-team@android.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The commit 4f41fe386a94 ("clocksource/drivers/timer-probe: Avoid
creating dead devices") broke the handling of arm,vexpress-sysreg [1].

The arm,vexpress-sysreg device is handled by both timer-versatile.c and
drivers/mfd/vexpress-sysreg.c. While the timer driver doesn't use the
device, the mfd driver still needs a device to probe.

So, this patch clears the OF_POPULATED flag to continue creating the
device.

[1] - https://lore.kernel.org/lkml/20200324175955.GA16972@arm.com/
Fixes: 4f41fe386a94
Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/clocksource/timer-versatile.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clocksource/timer-versatile.c b/drivers/clocksource/timer-versatile.c
index e4ebb656d005..f5d017b31afa 100644
--- a/drivers/clocksource/timer-versatile.c
+++ b/drivers/clocksource/timer-versatile.c
@@ -6,6 +6,7 @@
 
 #include <linux/clocksource.h>
 #include <linux/io.h>
+#include <linux/of.h>
 #include <linux/of_address.h>
 #include <linux/sched_clock.h>
 
@@ -22,6 +23,8 @@ static int __init versatile_sched_clock_init(struct device_node *node)
 {
 	void __iomem *base = of_iomap(node, 0);
 
+	of_node_clear_flag(node, OF_POPULATED);
+
 	if (!base)
 		return -ENXIO;
 
-- 
2.25.1.696.g5e7596f4ac-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
