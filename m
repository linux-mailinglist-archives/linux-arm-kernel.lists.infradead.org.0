Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7869EEE21F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 15:23:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iAHVm+eWT/qNm9KUO79t+XTYwEo5rYRiBLyNObNwWwc=; b=W9MjybDLwhKI/QujJSsI6xqFfG
	Hl+URw2oU9+Spltl1ALyNEIHES3zfeMKyIwI/CK68zu3L2jsINEpvDC9IWhfHDBtyReu8L4x34/hH
	t+CI9GZAhBUny1pZPJzNJRd62YjUZB8cwA6YQZqGcnjnfPsKA4UrwxkHOZIrdl8UhSiPmCwX1qVEz
	mayzAKdiUeYSFM7iiwxDxkmL68WwowIhz7conqrPm3sgwxJoUpQW4BMkC6IFDgsgMFoLl6PjD2Zph
	32TTl39Yt9kP1tXWeeRArSvE0+c5/c9uzEfnuKpDmhXyXB28KpOEUTVH4vq4QmpplD0kYYY8tH7iz
	TdpgGMiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRdGe-00075I-Br; Mon, 04 Nov 2019 14:23:40 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRdGG-0006vu-NQ
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 14:23:18 +0000
Received: by mail-wm1-x342.google.com with SMTP id c22so16272361wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 06:23:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=DlHGsHCYz6i9keGsLrYM+8DrDokVvhA17QRfhwApon4=;
 b=pformDiSnMnhGM0gWYP61EL4IsZN5i5fQ20RPhOIcGPtbvADApmq3GGz3ONVTEshHm
 wUje680PA6qM1Er/+RfRn3rLoXyJ3NpKVfmdZ8nVsuKHtCIStEltZD9vqc8Gru0cEJLj
 BBXQmTmeGmCPA0FSuvLswr1oygRQXRacmKn6mMNa7Wj5mCsqwfQ7W3jvUbNWOjsPrE5C
 +s9Tr0F8RqgF+zp6uKjx9lunA6aY0/AHe3l7bor+KvIjirdp5ndgS/qnucYbOCKyo4IN
 EoV8o3HmWJqw6Ffth7CtcZB8UJLk0rlpMe4fCx0380dohUIF1SUGT2Ksbfsdn3hdIR+b
 f/RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=DlHGsHCYz6i9keGsLrYM+8DrDokVvhA17QRfhwApon4=;
 b=Emzm9zrvyt3KEVJHG4lhNwCQVwgZyZKFSEJ1e7sePkWeQPhEEqpNtjrB2GnBzXhc+e
 KDYOCaxzsuDZ7nA3eER0Hu3Nudq07GGeX/zTT4LrvlA/C5PYDOoMO+xPpdnZ9skaOD0p
 hQvxtW9ChWFcKmd9ZLnADNIeFxBAQUlREBGhs7+xzOJXMWRzO0j5R5gy6xhMwX8aunVS
 Umh5/cYk9AdNTqhzntMSKc6vYHZnH0k3c6wkvofHxe3PPiXH9YM2F+XaOfurq/L/+QqR
 LJOJgVDstykJW65zNinv8p8xkFiZd1DGxkxSy/fQOFKJtt9OmKzSbneXWz6S8qBIXWp1
 7I0g==
X-Gm-Message-State: APjAAAWYzS0+iNjNo1ncRR9XUfeoOEJaRjIt43ERhwCnkwiz5bQIzMee
 emkbZ7riMuydkeK+86TxPaV0CA==
X-Google-Smtp-Source: APXvYqw5dRFCT4rWakrmWngzJkmEsTf4OzwjQFejtITeq3kHdmXf626rugiPj/J78gqdopl+XXEyQw==
X-Received: by 2002:a7b:cc89:: with SMTP id p9mr21507045wma.99.1572877394844; 
 Mon, 04 Nov 2019 06:23:14 -0800 (PST)
Received: from mai.imgcgcw.net ([2a01:e34:ed2f:f020:58da:b044:f184:d281])
 by smtp.gmail.com with ESMTPSA id l18sm21692446wrn.48.2019.11.04.06.23.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Nov 2019 06:23:14 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: tglx@linutronix.de
Subject: [PATCH 4/5] clocksource/drivers/renesas-ostm: Use unique device name
 instead of ostm
Date: Mon,  4 Nov 2019 15:22:56 +0100
Message-Id: <20191104142257.30029-4-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191104142257.30029-1-daniel.lezcano@linaro.org>
References: <6fd4d800-b1f8-d757-458e-23742d20884c@linaro.org>
 <20191104142257.30029-1-daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_062316_766038_7ECF8AA6 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "moderated list:ARM/STM32 ARCHITECTURE"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "moderated list:ARM/STM32 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Geert Uytterhoeven <geert+renesas@glider.be>

Currently all OSTM devices are called "ostm", also in kernel messages.

As there can be multiple instances in an SoC, this can confuse the user.
Hence construct a unique name from the DT node name, like is done for
platform devices.

On RSK+RZA1, the boot log changes like:

    -clocksource: ostm: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 57352151442 ns
    +clocksource: timer@fcfec000: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 57352151442 ns
     sched_clock: 32 bits at 33MHz, resolution 30ns, wraps every 64440619504ns
    -ostm: used for clocksource
    -ostm: used for clock events
    +/soc/timer@fcfec000: used for clocksource
    +/soc/timer@fcfec400: used for clock events
     ...
    -clocksource: Switched to clocksource ostm
    +clocksource: Switched to clocksource timer@fcfec000

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Link: https://lore.kernel.org/r/20191016144747.29538-5-geert+renesas@glider.be
---
 drivers/clocksource/renesas-ostm.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/clocksource/renesas-ostm.c b/drivers/clocksource/renesas-ostm.c
index 46012d905604..3d06ba66008c 100644
--- a/drivers/clocksource/renesas-ostm.c
+++ b/drivers/clocksource/renesas-ostm.c
@@ -64,9 +64,9 @@ static int __init ostm_init_clksrc(struct timer_of *to)
 	writeb(CTL_FREERUN, timer_of_base(to) + OSTM_CTL);
 	writeb(TS, timer_of_base(to) + OSTM_TS);
 
-	return clocksource_mmio_init(timer_of_base(to) + OSTM_CNT, "ostm",
-				     timer_of_rate(to), 300, 32,
-				     clocksource_mmio_readl_up);
+	return clocksource_mmio_init(timer_of_base(to) + OSTM_CNT,
+				     to->np->full_name, timer_of_rate(to), 300,
+				     32, clocksource_mmio_readl_up);
 }
 
 static u64 notrace ostm_read_sched_clock(void)
@@ -190,13 +190,13 @@ static int __init ostm_init(struct device_node *np)
 			goto err_cleanup;
 
 		ostm_init_sched_clock(to);
-		pr_info("ostm: used for clocksource\n");
+		pr_info("%pOF: used for clocksource\n", np);
 	} else {
 		ret = ostm_init_clkevt(to);
 		if (ret)
 			goto err_cleanup;
 
-		pr_info("ostm: used for clock events\n");
+		pr_info("%pOF: used for clock events\n", np);
 	}
 
 	return 0;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
