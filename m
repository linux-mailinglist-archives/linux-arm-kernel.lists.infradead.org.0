Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B124DF69C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 22:19:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=RgnNNAxzeY76QpQ0WlUL6GYV0rllM1kv/8XHPIELWFQ=; b=XmT
	R19N2buZUsJs8urMjKDA3cr/m5/bOlYfv9dYwZzxLk4JufDqu6N2P/IwFOO0ppXSKjYEqaCEghLhG
	8tkWWaFsXzHYYNrpSJtkqeUqBe6N6D+hIPWrwgw+l9C9F2F8siVkxqGaLgjajp/FKMq0gAXI13w8z
	/OzbZo95UAeIj5YomNpfesczWOrHfTUzuwetfUIqhrJbUye0tONMPBBrYHre9u732sfxwOZXFlFDy
	Q+VNHw27hvyucC6GdyzPXodIbTAnwlB2VJH3tb+mlPHetYBvWwWeVLj33J2rbRuAyxycgPVo48A+J
	UA5USuXvyX5/RgkwCGM57CAu26W0rqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMe8x-0007qL-HP; Mon, 21 Oct 2019 20:19:07 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMe8o-0007pY-Nd
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 20:18:59 +0000
Received: by mail-io1-xd41.google.com with SMTP id c11so8467942iom.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 13:18:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=41sPlzPXwgbu7RVNQLT0Hyb+2XAax4ZfqY6sIsxCZBg=;
 b=f+RcRdC/dfUjDR9i9fcjXRiSoSRTEbKDszo1gkd/miZbOitkyIjk7ZV4IhZrO123Rx
 hs7sFOhOr85Gg78P83gcbPfOdAXHFDlfb5dtp1/tMbgtVpk2YB8Ht3ToJPmGREksWyQq
 RPrLjVv8uqIaTZfzdfZPBXlie0Bx/b3RPKXWZD2+Z604NtIUrGx7IvFsBWMjqVK2UHP4
 3k4e3rzI+laHqvvDVxxyfltTe7L8W1r6doLaIyjcjXbODkseCWI6e5AMx0qewrcHZUcH
 YdTgFGbDyM/6QWw9RSAFG2gwTg8Oen63WuyMfBJ3H+JzgrNaNm2J0UF/l/CeopuSaNkb
 1JJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=41sPlzPXwgbu7RVNQLT0Hyb+2XAax4ZfqY6sIsxCZBg=;
 b=GJKKqDbEVHC3GBDm4nA6vVRJm0eds/JOl6jo8NG5j0434yxX2b9Zt3s+rh5EiLTYmY
 WV9XnK1N7PPNFgzH+ozBbu6h7agYtVi6Cuqwm7ZnehrtVcx783SXMcGM6jvuFr405hq/
 roWzF4AYxyzHHzOckICKmzW53E8gdt5p9JRfWa0AecTHm9E+jTXTJn6wpAc6/4ZdZg6i
 sMNSzJdSPwyyUAodF4Wnfg8gX5PkLWlJ1fRq1BzzEfBYXD6Iql0yGNGSjVoToWeqsA4F
 ox4bAByMidjCJlLx5dFeER9TQTtTNP0ItMvSGdtg+o4pJHoN6kTTk7Fcc5GWfV85AoDF
 cwtQ==
X-Gm-Message-State: APjAAAV3h6WynvusFJYuyQbujiFraCZC6ykpF66k9lIzXgPMemPl+aaG
 BPHdRmsr9X/1HXqj4FP8nMs=
X-Google-Smtp-Source: APXvYqzMp1w4t60E66YkFH488jk3/NEx6cWKPuFdmuiQW273dcyKd9XO/qIMhz069BX4xQZIHeFnIQ==
X-Received: by 2002:a6b:d812:: with SMTP id y18mr12058iob.151.1571689137744;
 Mon, 21 Oct 2019 13:18:57 -0700 (PDT)
Received: from cs-dulles.cs.umn.edu (cs-dulles.cs.umn.edu. [128.101.35.54])
 by smtp.googlemail.com with ESMTPSA id b7sm4689726iod.42.2019.10.21.13.18.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 13:18:57 -0700 (PDT)
From: Navid Emamdoost <navid.emamdoost@gmail.com>
To: 
Subject: [PATCH] clocksource/drivers: Fix memory leak in ttc_setup_clockevent
Date: Mon, 21 Oct 2019 15:18:47 -0500
Message-Id: <20191021201848.4231-1-navid.emamdoost@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_131858_766330_DE266270 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (navid.emamdoost[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 emamd001@umn.edu, smccaman@umn.edu, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Navid Emamdoost <navid.emamdoost@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the impelementation of ttc_setup_clockevent() the allocated memory
for ttcce should be released if clk_notifier_register() fails.

Fixes: 70504f311d4b ("clocksource/drivers/cadence_ttc: Convert init function to return error")
Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
---
 drivers/clocksource/timer-cadence-ttc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clocksource/timer-cadence-ttc.c b/drivers/clocksource/timer-cadence-ttc.c
index 88fe2e9ba9a3..b40fc6581389 100644
--- a/drivers/clocksource/timer-cadence-ttc.c
+++ b/drivers/clocksource/timer-cadence-ttc.c
@@ -424,6 +424,7 @@ static int __init ttc_setup_clockevent(struct clk *clk,
 				    &ttcce->ttc.clk_rate_change_nb);
 	if (err) {
 		pr_warn("Unable to register clock notifier.\n");
+		kfree(ttcce);
 		return err;
 	}
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
