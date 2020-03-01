Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10719174D50
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Mar 2020 13:24:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=CkF8XIG0CNI42BVJZugr31LnNqzI88sbX6wiCPp7ro0=; b=hcX
	1LSNhyTrNin8ia8i5wJWnhIlYf2bVDNxNR6CMKoFjclDb9dxJXztXQlpyyjQ3GUdhbPmz23TTFsPf
	S4rbRRb7ezHyofAkwQyIXw3YLSfB9XBTW4fz0QDRI+0AzORccJpLsn+17ecAIQQxAXyDS4M0I/tp7
	fV9iURMAk9aJbYWaht8LEt9XBHMDHRRer2T+ixC/bWFgiSfb3lC5b0SSjFOKHZjlC6W7UR0Q8p9Vp
	rAdYP8dmxIopKLfzDnMlehDq3gVuuOarul3uQOEjIIDHN5xLjhEDlB5FWoVIAYdU+3/mtG4lvTb18
	VPgR0b/pTvqzodH9meNKCZCIQd3LPmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8Ndb-0007PO-Dj; Sun, 01 Mar 2020 12:24:03 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8NdA-0007GR-Rr
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Mar 2020 12:23:38 +0000
Received: by mail-pl1-x644.google.com with SMTP id g12so1054330plo.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 01 Mar 2020 04:23:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=M1Tw0l8NSxHrnFk48cTGyVKS7Y6NVhLq2HbfLfz6X0M=;
 b=LoR5EYtINgvkiEV3tCchC2pkp0jOybj1tIf7CJHE6zujeJm3l6uBnAI3u0dPHLjuoJ
 qpu0F2CIQsiemqzWI+CgQzB/K+TV+acy/bKaRe/TLKqks+3XOM8B9tdaEZOtaSc1sEpA
 qxdEc9U1TWc3L6/h1NzAw683JgPMXOKAXJX6Ne1Z/vLcgMT9UG8PZyQUaf2LV5QcDysC
 ZbAsZz0PwVvOBxAnOnT6x0aReD6xEDH/8Buw6mafWqD3z4wKeGF3BotpjSkZ/4jOFy1n
 +uwTPEtLRFfeoSgaiRq6FiELLp2pgiCdlXUDXVinSva6MM9G3IVU8pVUXdTxu8SS+lg9
 0jmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=M1Tw0l8NSxHrnFk48cTGyVKS7Y6NVhLq2HbfLfz6X0M=;
 b=I16YkL/9RaZpVBBRFy5Md9THD1IInID1Bxahkf5eCcO3y1oFORAUip1MKg1oirTqhi
 t746kl62UnXmOEBwosh8AZo6A3R09o0IvCiNnAfM74C9YMUJO/tdrZGF+Mf92GuhrjTI
 ImuqOjaKwXz86n4KERXH4QwWvLfOf4f6eJpZBcJ5Lv1C6W7ueid9ZMwxqF4DMrIwYVo8
 2ge7mTTQMV0HV2VLhTIQdGO2dC+t9+VbefsLBUcmCDB1rhhWMAn15ThwGizivA0GthUr
 hSYTJsG1uDhiZ73HrJHOYNQTlfYr+GDBAK0MXyb/crVr7dKRnHlyefO1I1mHgD3AiGE3
 unMw==
X-Gm-Message-State: ANhLgQ31JzfUfvuBXWP2cqwnwyLS5oL7k1ThPV+70pDic5HXw61pi+Wx
 lmGRYli5VYUCNyCHkrsflI4=
X-Google-Smtp-Source: ADFU+vvzI5wnq+cQKsvcTg/UAQ1prjIw+f6K6U2mxOpdS0K1OmtZ28my7M9tmttdLToU5QfXf9QjlA==
X-Received: by 2002:a17:90a:bd90:: with SMTP id
 z16mr1106965pjr.36.1583065415887; 
 Sun, 01 Mar 2020 04:23:35 -0800 (PST)
Received: from localhost.localdomain ([106.51.232.35])
 by smtp.gmail.com with ESMTPSA id l37sm8280607pjb.15.2020.03.01.04.23.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 01 Mar 2020 04:23:35 -0800 (PST)
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Viresh Kumar <viresh.kumar@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3] ARM: orion: replace setup_irq() by request_irq()
Date: Sun,  1 Mar 2020 17:53:30 +0530
Message-Id: <20200301122330.4296-1-afzal.mohd.ma@gmail.com>
X-Mailer: git-send-email 2.18.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_042336_966134_46911469 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: afzal mohammed <afzal.mohd.ma@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

request_irq() is preferred over setup_irq(). Invocations of setup_irq()
occur after memory allocators are ready.

Per tglx[1], setup_irq() existed in olden days when allocators were not
ready by the time early interrupts were initialized.

Hence replace setup_irq() by request_irq().

[1] https://lkml.kernel.org/r/alpine.DEB.2.20.1710191609480.1971@nanos

Signed-off-by: afzal mohammed <afzal.mohd.ma@gmail.com>
---
Hi sub-arch maintainers,

If the patch is okay, please take it thr' your tree.

Regards
afzal

v3:
 * Split out from series, also split out from ARM patch to subarch level
	as Thomas suggested to take it thr' respective maintainers
 * Modify string displayed in case of error as suggested by Thomas
 * Re-arrange code as required to improve readability
 * Remove irrelevant parts from commit message & improve
 
v2:
 * Replace pr_err("request_irq() on %s failed" by
           pr_err("%s: request_irq() failed"
 * Commit message massage

 arch/arm/plat-orion/time.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/arch/arm/plat-orion/time.c b/arch/arm/plat-orion/time.c
index ffb93db68e9c..509d4824dc1c 100644
--- a/arch/arm/plat-orion/time.c
+++ b/arch/arm/plat-orion/time.c
@@ -177,12 +177,6 @@ static irqreturn_t orion_timer_interrupt(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
-static struct irqaction orion_timer_irq = {
-	.name		= "orion_tick",
-	.flags		= IRQF_TIMER,
-	.handler	= orion_timer_interrupt
-};
-
 void __init
 orion_time_set_base(void __iomem *_timer_base)
 {
@@ -236,7 +230,9 @@ orion_time_init(void __iomem *_bridge_base, u32 _bridge_timer1_clr_mask,
 	/*
 	 * Setup clockevent timer (interrupt-driven).
 	 */
-	setup_irq(irq, &orion_timer_irq);
+	if (request_irq(irq, orion_timer_interrupt, IRQF_TIMER, "orion_tick",
+			NULL))
+		pr_err("Failed to request irq %u (orion_tick)\n", irq);
 	orion_clkevt.cpumask = cpumask_of(0);
 	clockevents_config_and_register(&orion_clkevt, tclk, 1, 0xfffffffe);
 }
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
