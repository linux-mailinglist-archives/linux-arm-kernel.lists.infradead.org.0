Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C0A174D48
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Mar 2020 13:23:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JoM9lzXIW1Mh1uDw28CDcWe40xbO0hLzdZaSqG3+1gE=; b=CES
	Tvm51bzojvrYWHszFBJrg4IDWPJDt19YfL1NPqjKSNwGHKB5Y+GM50FHDncxSB8elPZWjEeYtLm9a
	68MFFmC/MFE1I/4yrPp2r5cBxXUaijV0MQ2JwnCYrVl3Y23kTJmjGuBSkq3zEWDtCBzj0JWBmFWFk
	i6nMLL4szjEe3KLIiCr3N37ClwnBB+bFDmqt3uwx+QHr44318Uf8YMtNrl8vFAp0Z0nClw8JEy4FK
	DWrBGIVaM6Q8dIhNhNwY8XkthHzIcp4wtPMJoxT39+Oj/Q3DWKhAOw6ObBG0XqzPvPhFTZd/ffVIH
	Vg9KKiZh3LtOcHaNJAlAVb7Nwlamtlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8Nce-0006cJ-Ms; Sun, 01 Mar 2020 12:23:04 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8NcP-0006Wx-OB
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Mar 2020 12:22:51 +0000
Received: by mail-pf1-x442.google.com with SMTP id l7so4156130pff.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 01 Mar 2020 04:22:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=47sAR4RM+l9ifNugZ2XimQ03YrAvKZblQRJbV80CDnY=;
 b=ruPt+BeHg2jDq1DensdQVbCDxYLCujvm+38bs/wIJaYLsPFCjgUpPK8GJahHoxdAGR
 VpjHCSp2DqEbZywMrIA/nCN7aN7hbvl9f3cgwYkXSVUUFGiv1BcGDlPexH0uFRh6q+zA
 u8MnTwJhh1tT0yzLgUU4cKbYVPwtGAuS0Pr/4gmZiSr8WevwtonVb1dIJgoU/VW4uXsl
 coOWleJfxl4LXSLTLYEfFTWlJzNzgN4ibaNCHz8BoY9OVz+Z9ywodjTkXZOyMFbz/ISE
 OQaglJQukm+OXYVc9pG5uG3Cj3nXqr8THTgMQUgQ/5JHv1ZNf2pDMtM3IeQAuMprqD9K
 oFYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=47sAR4RM+l9ifNugZ2XimQ03YrAvKZblQRJbV80CDnY=;
 b=I/qCckyWdBmbyl8mjtttd7VzdGYlQOuJp1nXWYu5AwOWhYsJFURahgkMVYv0aN0v8G
 GvoiDdS1Hn/hdSGwWJ9suxKnh3RqD0hzO6BqYPepNSSAGj9bYvNuC4jifARPvbVgzSQK
 t0htKObal7aoCqR0gbJSoYb6QOLkJg8NEVTQDtYleeUX6kr7LTjlOghT+FMthP/nNUpo
 ntUJI982uEXJoPKF7jkFuiRJoIjkgtph0b5JfGQoRIMDOHyIh75y7iaZsLHoFcj+7qTx
 ZNjx6d1Y3fSUAaq8Mk6Th6eAVKr6eKjIDl4SNB4dWk7Dk5+qMQlKW+lMnw/nxT00K5Y3
 I5HQ==
X-Gm-Message-State: APjAAAX6YayJB49IkSTNWnOgqUTR2h0vTBjTp958Yfx6fu9oinrMro82
 nKe5CiEJ788VRgkJCHXmCEw=
X-Google-Smtp-Source: APXvYqwCHroCEmwoMdPYwteD6bOcMqgSO/kQohmjMZ0naPIRmxVQYvXIP5xnpZ3u/RJf/wqZ5twucA==
X-Received: by 2002:a63:1e44:: with SMTP id p4mr14268394pgm.367.1583065368821; 
 Sun, 01 Mar 2020 04:22:48 -0800 (PST)
Received: from localhost.localdomain ([106.51.232.35])
 by smtp.gmail.com with ESMTPSA id q8sm8463118pje.2.2020.03.01.04.22.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 01 Mar 2020 04:22:48 -0800 (PST)
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Viresh Kumar <viresh.kumar@linaro.org>, Lubomir Rintel <lkundrak@v3.sk>,
 Russell King <linux@armlinux.org.uk>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Enrico Weigelt <info@metux.net>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3] ARM: mmp: replace setup_irq() by request_irq()
Date: Sun,  1 Mar 2020 17:52:41 +0530
Message-Id: <20200301122243.4129-1-afzal.mohd.ma@gmail.com>
X-Mailer: git-send-email 2.18.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_042249_811282_BC874E6C 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

 arch/arm/mach-mmp/time.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mach-mmp/time.c b/arch/arm/mach-mmp/time.c
index c65cfc1ad99b..049a65f47b42 100644
--- a/arch/arm/mach-mmp/time.c
+++ b/arch/arm/mach-mmp/time.c
@@ -175,13 +175,6 @@ static void __init timer_config(void)
 	__raw_writel(0x2, mmp_timer_base + TMR_CER);
 }
 
-static struct irqaction timer_irq = {
-	.name		= "timer",
-	.flags		= IRQF_TIMER | IRQF_IRQPOLL,
-	.handler	= timer_interrupt,
-	.dev_id		= &ckevt,
-};
-
 void __init mmp_timer_init(int irq, unsigned long rate)
 {
 	timer_config();
@@ -190,7 +183,9 @@ void __init mmp_timer_init(int irq, unsigned long rate)
 
 	ckevt.cpumask = cpumask_of(0);
 
-	setup_irq(irq, &timer_irq);
+	if (request_irq(irq, timer_interrupt, IRQF_TIMER | IRQF_IRQPOLL,
+			"timer", &ckevt))
+		pr_err("Failed to request irq %d (timer)\n", irq);
 
 	clocksource_register_hz(&cksrc, rate);
 	clockevents_config_and_register(&ckevt, rate, MIN_DELTA, MAX_DELTA);
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
