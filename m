Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62A1E174D46
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Mar 2020 13:22:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=OUxoDrMzZpUeYP8l/j5LIw3R3QWnOzJQhy3UmEDvHY8=; b=N/q
	lG3fsFloxORCbjPLf/5FQ95bCDBgBO4ryWMp8H8fpWRucvO1JM3Jv/VSNWUIeD/NBrbwwT5UZ7enY
	iUyEveGIuBL15NJfEI7s9iqzk27oubKeWojbX74PvP6k/DiOFPfsTzrs/zXcvdUYxPtErKC2jFuFt
	WDZT6hSKPOryImOzzBhsDCbBTnedncms5PJX0jPJjPSUHzmaJaOGJeee3iQHuJjZx/FJ4SmlGVHKN
	ioGwHS9I7lrLPm2tlbf0hTOfirAs3DL1KNFDaEApS8WDxgIbawmsNwdXfrqiwUQKHwqk/IBJC3DTH
	jW7XJMsyyc1Yrnxzbhd3OqjeW+yoBQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8NcD-00068P-2y; Sun, 01 Mar 2020 12:22:37 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8Nbr-00061B-Rg
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Mar 2020 12:22:17 +0000
Received: by mail-pj1-x1042.google.com with SMTP id lt1so486717pjb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 01 Mar 2020 04:22:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=6RuW8LcV5g6WypRcQIvGZ/SRPet4fNoET5RxUt4w0FQ=;
 b=hNpiy/uVydyqMqWo83KwxexQEzJHid6YWnsfsiep0CUh6gNn2RqgFVOHvY6gTJMyiD
 Eaf+TcdWuvFMS9DJRFcH8XWQIPeCCtXML4Tfwek2bBmaDjtfksppHrMIi956IGrBqndC
 PfLL+9/TpG6+hrDk75dDl8tT3Q5nRU5IxaR8VBwW8cRm8PCEtRhEV8gZacp3OzWY76Sj
 28ihxoPU2aHwvBHH47CDcophZnBA8/6n2cc65GE3Ml8tigk18JQXpqOUuvrx9hnS19xE
 +8GMnkBaopOecBmMKgif+qRehxN4EtqVMmQyydbabPUWMgomywtsCBaIumrlucE4PeKy
 syAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=6RuW8LcV5g6WypRcQIvGZ/SRPet4fNoET5RxUt4w0FQ=;
 b=iQKBbc6q1WgBfMglTmzYZZ3ypCjYkCTDqARHqfSd+XHn/zqOlyti9mTAMtGGDDzlxT
 z+pa9Iw2aFrY7QZaGdAjyABM+s6WCgRuGzSC7EduXX1G/Eu0hLYZY1fArZnSt9v2YRV+
 yTtAuozVCB/nFgJXJs7Z/uFKzZ9YjYA+GkI6u/jBSHjoRp5zS0uFfDxxg40R57xDe2qa
 cIgPBQtFHfjd1iSzKOIIGA6NWZLMeC1qSkamBIXWomGckdvIRyV3aZ00zRX+eCjpTVFo
 MUYkFSvY1RtXzhbOUDHbsVOGM620i09HRLrRzcui/YbsKTlsrRtcCZp+1PixSwuFSWvy
 G1pw==
X-Gm-Message-State: APjAAAWpcy+3IIbdnSPp0fjKb2Nbgc3LLS/tig6OinhnN0X7Won3UgqP
 jKkM05vcn1m42u4UzJcqYmc=
X-Google-Smtp-Source: APXvYqxFvG3KgjDCtFOpqiwrVA/h5V0iFoU894xpJ/5CjNJFPDjijl8I9D/82NNQ22uympXnuRaCXA==
X-Received: by 2002:a17:902:4a:: with SMTP id
 68mr13359156pla.245.1583065334897; 
 Sun, 01 Mar 2020 04:22:14 -0800 (PST)
Received: from localhost.localdomain ([106.51.232.35])
 by smtp.gmail.com with ESMTPSA id e1sm17520364pff.188.2020.03.01.04.22.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 01 Mar 2020 04:22:14 -0800 (PST)
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Viresh Kumar <viresh.kumar@linaro.org>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3] ARM: ebsa110: replace setup_irq() by request_irq()
Date: Sun,  1 Mar 2020 17:52:09 +0530
Message-Id: <20200301122210.4013-1-afzal.mohd.ma@gmail.com>
X-Mailer: git-send-email 2.18.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_042215_914610_AB00F7AF 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
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

 arch/arm/mach-ebsa110/core.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-ebsa110/core.c b/arch/arm/mach-ebsa110/core.c
index da2ff4f61d6b..575b2e2b6759 100644
--- a/arch/arm/mach-ebsa110/core.c
+++ b/arch/arm/mach-ebsa110/core.c
@@ -201,17 +201,13 @@ ebsa110_timer_interrupt(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
-static struct irqaction ebsa110_timer_irq = {
-	.name		= "EBSA110 Timer Tick",
-	.flags		= IRQF_TIMER | IRQF_IRQPOLL,
-	.handler	= ebsa110_timer_interrupt,
-};
-
 /*
  * Set up timer interrupt.
  */
 void __init ebsa110_timer_init(void)
 {
+	int irq = IRQ_EBSA110_TIMER0;
+
 	arch_gettimeoffset = ebsa110_gettimeoffset;
 
 	/*
@@ -221,7 +217,9 @@ void __init ebsa110_timer_init(void)
 	__raw_writeb(COUNT & 0xff, PIT_T1);
 	__raw_writeb(COUNT >> 8, PIT_T1);
 
-	setup_irq(IRQ_EBSA110_TIMER0, &ebsa110_timer_irq);
+	if (request_irq(irq, ebsa110_timer_interrupt, IRQF_TIMER | IRQF_IRQPOLL,
+			"EBSA110 Timer Tick", NULL))
+		pr_err("Failed to request irq %d (EBSA110 Timer Tick)\n", irq);
 }
 
 static struct plat_serial8250_port serial_platform_data[] = {
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
