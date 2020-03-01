Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C19AD174D3C
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Mar 2020 13:21:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=fDCEjneypyRWl3Cyu9kle6kCwXqMs9wxcACKKaznARQ=; b=Jb7
	o8lxTLTU9NFTDz36vKq5kg1G/6PraqosVSdjVu2JzDJ2F3DwmWj9FYyYs4LBefidQQQg8gMuLFIBY
	3Vtnyw3Jr0DwtcFoQSjoXtMH+4BvBkpvRd7DkIsm3sdrtoOXMMfkTRIoM1vGOdv3ZiuD31hl4pOaG
	G2uZH79ZEB8Flf7Tz0ACbijMOmgaYHXngumSwGJui3sjmH7bk6xYqqSUB0RvxzkFy0rst/c1iZyM5
	ioxtCoK9rX/s5fDCydyhk3i3E/8YlsN6qzWs+rQ8/d4l0dFCh6T39zkpefEZrXYVE+1k+eqdOXl/t
	qEFZyPJ+BkVRm2Ue+MjI8H0GX3sJUeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8Nb2-0005OP-OE; Sun, 01 Mar 2020 12:21:24 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8Nav-0005O6-TR
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Mar 2020 12:21:19 +0000
Received: by mail-pj1-x1041.google.com with SMTP id fa20so3227984pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 01 Mar 2020 04:21:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=SeyPb7WMW17xLR/bm3Ntk537LqOC2X0/Y+QRTFUIpng=;
 b=gYTmSmLm0AA3xBssbb96lsImcBDraglC9axNZh2y1xQlXQsekc+prcCDs7sG/v5n7V
 wP1Wq6ae/TAp00TCaPwQYxFEF6uodaMyUfhvI8y7kFA+lAgeSJlaHvE4AOtkBRFDIuzC
 LwGYnImY1c37asiv6eBOWXHwHZh2YtpGAuH86HNnk16Kasgd+oSUPbXPJU5hkngAvIBx
 FvKcfwGOaawjZfuPL+trJFAW6nsJ44kIe2KBTjhTJsTDX4fY9wXFcd0XlKlA3pUyldnU
 bGz+oLsFQkIaZgAtMu2PloaoWsfwlNTfIHn1biiFDBOL4G5pr7/xsH77w7vpr9akIP6J
 ktIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=SeyPb7WMW17xLR/bm3Ntk537LqOC2X0/Y+QRTFUIpng=;
 b=RpHIA6d9ufw42DEkWO6+TMpR3xzP3taGMNy1I4VWrsA4UBfunoH0LHRal5HY9B1w2K
 cVEv1hqZO5pLBhsdT2HXCvYiDT8N4Of1X/ikhUZo2fdkU3PZzW1qFImumKOQ4jzzKLAd
 McDzBt03zc+GMdjmeMr10myLh5DDbwcz5HEl/xOYuLpR2+U4HKGzk4nhCasDM5DQWrPa
 1UzS1s6YndxWjb6jukC8w5z8Dq1FFs3wrEqfMRQFhtFRSAl44mDD6s8+cdHXQYrCVgoH
 8w488/ZDdpAcQk/tKE+i7KgpXekEyd9v1DXrooAcraSsgdE69E1RAVH9BUS+vltCVLw6
 1zWg==
X-Gm-Message-State: ANhLgQ1OKUYRgoAp9zrg534g+PwcQfHhEYa6AchXlvIzP88QQKDAdzxv
 KsgNghOKEabcWXmVJFCHphE=
X-Google-Smtp-Source: ADFU+vtbfOxxW02DEXdbQIlTCcOsl0UNSCTpDU/wzpXXvmQ+19XZuiOceoT26cJh9xRGHzUzN7YlVQ==
X-Received: by 2002:a17:90b:30c2:: with SMTP id hi2mr943595pjb.7.1583065277013; 
 Sun, 01 Mar 2020 04:21:17 -0800 (PST)
Received: from localhost.localdomain ([106.51.232.35])
 by smtp.gmail.com with ESMTPSA id k9sm17943013pfh.153.2020.03.01.04.21.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 01 Mar 2020 04:21:16 -0800 (PST)
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Viresh Kumar <viresh.kumar@linaro.org>,
 Hartley Sweeten <hsweeten@visionengravers.com>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3] ARM: ep93xx: Replace setup_irq() by request_irq()
Date: Sun,  1 Mar 2020 17:51:12 +0530
Message-Id: <20200301122112.3847-1-afzal.mohd.ma@gmail.com>
X-Mailer: git-send-email 2.18.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_042117_951379_BFFC2DB0 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
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
 * Split out from series, also create subarch level patch as Thomas
	suggested to take it thr' respective maintainers
 * Modify string displayed in case of error as suggested by Thomas
 * Re-arrange code as required to improve readability
 * Remove irrelevant parts from commit message & improve
 
v2:
 * Replace pr_err("request_irq() on %s failed" by
           pr_err("%s: request_irq() failed"
 * Commit message massage

 arch/arm/mach-ep93xx/timer-ep93xx.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mach-ep93xx/timer-ep93xx.c b/arch/arm/mach-ep93xx/timer-ep93xx.c
index de998830f534..dd4b164d1831 100644
--- a/arch/arm/mach-ep93xx/timer-ep93xx.c
+++ b/arch/arm/mach-ep93xx/timer-ep93xx.c
@@ -117,15 +117,11 @@ static irqreturn_t ep93xx_timer_interrupt(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
-static struct irqaction ep93xx_timer_irq = {
-	.name		= "ep93xx timer",
-	.flags		= IRQF_TIMER | IRQF_IRQPOLL,
-	.handler	= ep93xx_timer_interrupt,
-	.dev_id		= &ep93xx_clockevent,
-};
-
 void __init ep93xx_timer_init(void)
 {
+	int irq = IRQ_EP93XX_TIMER3;
+	unsigned long flags = IRQF_TIMER | IRQF_IRQPOLL;
+
 	/* Enable and register clocksource and sched_clock on timer 4 */
 	writel(EP93XX_TIMER4_VALUE_HIGH_ENABLE,
 	       EP93XX_TIMER4_VALUE_HIGH);
@@ -136,7 +132,9 @@ void __init ep93xx_timer_init(void)
 			     EP93XX_TIMER4_RATE);
 
 	/* Set up clockevent on timer 3 */
-	setup_irq(IRQ_EP93XX_TIMER3, &ep93xx_timer_irq);
+	if (request_irq(irq, ep93xx_timer_interrupt, flags, "ep93xx timer",
+			&ep93xx_clockevent))
+		pr_err("Failed to request irq %d (ep93xx timer)\n", irq);
 	clockevents_config_and_register(&ep93xx_clockevent,
 					EP93XX_TIMER123_RATE,
 					1,
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
