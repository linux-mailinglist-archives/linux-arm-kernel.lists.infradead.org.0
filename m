Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E25A19574C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 13:42:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aL5LQ7+ue0U5fBZTQo8v6yHGCPBXDJgbV2ecqQcSnu4=; b=DsTq13CP9iJqmgmb2T0Dd+iYTk
	9nnKRkkoask9bo2gVUZnu7ygYvylzE7+gcYirwGK1RzipT78IlZkO981nKXOsOc19kzmnV7W9DNdb
	s/j/GGvM4HfjoUfmNiZgxs+BZOBeaOp2nFBzyAtPfSuE0gmwY1WMBrIA8/dL1jOxW+Fw3P6PZajkq
	EgKJltGVP81DLGFq8xf6uWrRdMuywGZveonjEVbkPXuKycT8Imdc5Qj23KMgXBGAck7VAEtqF6GfQ
	JWeRY8ryGvrV7vHhttgpUv4vNH9W4uRb7dwRDMcqkpeR23V7JG78WPflc3mvpVAllbFc5yJ5lUuxw
	noEOL16g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHoJd-0006TS-KC; Fri, 27 Mar 2020 12:42:25 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHoJT-0006Sz-M7
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 12:42:17 +0000
Received: by mail-pf1-x443.google.com with SMTP id d25so4435857pfn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 05:42:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=SOrOCCE4z6J1sHuFdxhVTWwdjpzsQ9adaFltG09BEVg=;
 b=Zmey7RsgY68gZWN8kn7J/bo1k0I5hL0K5gpKxpY/nsuhHSOvUn//t6VTyA4quSZuw4
 w14513DwK6CaTS3h900o86OPh57a6eL6rua/lzuOOnaitGQbO3XpDG/1B29SNo3fL/j3
 bCB5Tz4QWUYD+Jk6dD0MFC+5JdsJ1h9GKB9MkDn++uQ7HhxZr2TxfMl9DZYI3zlgQqOF
 Bzf1T7YDvBZYf9qOgWOc3eon+XSD7fwg//6qy6r/mnmvVo3g5tDDrkewZUZzqOzgDGBN
 KUMIwGPhtjQ3/wIpX+GNVYUvU0iYuotNuoAbX4xHMP59RfBeKoeQ+jAt0vqJCJfyXyp9
 CUPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=SOrOCCE4z6J1sHuFdxhVTWwdjpzsQ9adaFltG09BEVg=;
 b=KP9+QSEwqc3GyRK90grtKAvYtnLI7iue3SUVDENLrpPlNNi5FLCYIbd5k8waBemcW0
 pc245jIArKwaZNrXFrzlxmTpnuiIHSWOvOWf4xvFBCH6hzd0HG+lfIeF5TXXr2APYX5s
 1BfPwsAOLnLmFvOppWFggxXJEgLrvmdby+71TqgZsisZeJt3H+c/sydqAb0D1wlfW4ef
 OV4QHUgJPOn3rcG8LBaG9CpXcMRbsr/i+7pKo0O3CM7Ku3OduIsPNb4LWTujPO+fZe0d
 owtBgZdNwsj/bHlK6DXKJYqrjfIqszM8etRAiGr98lRPt/hwy0/+82stMO4MTWaEBrUV
 UzYw==
X-Gm-Message-State: ANhLgQ2Pzp/wYIlou3wFk3Clylzm6byICajArXddjz+aTUA/YoqlxuUt
 JDmFis1AqTpmMbuqOfyTW8g=
X-Google-Smtp-Source: ADFU+vsFUmet2yQ6YpnWSdQbIgJuXPOdUp3HDtFcl6nPspvzZdJH4Ydk8NCDgZHufjhSQ6s+Poi5fg==
X-Received: by 2002:a63:1d52:: with SMTP id d18mr13398372pgm.443.1585312934746; 
 Fri, 27 Mar 2020 05:42:14 -0700 (PDT)
Received: from localhost.localdomain ([49.207.51.33])
 by smtp.gmail.com with ESMTPSA id x186sm4014317pfb.151.2020.03.27.05.42.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Mar 2020 05:42:14 -0700 (PDT)
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>,
	SoC Team <soc@kernel.org>
Subject: [PATCH v4 1/5] ARM: ep93xx: Replace setup_irq() by request_irq()
Date: Fri, 27 Mar 2020 18:11:43 +0530
Message-Id: <20200327124143.3520-1-afzal.mohd.ma@gmail.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <CAK8P3a2sqika7=3D6Zgkz+v8HtGEc0q0+skWG8mSKuL+qSoYLw@mail.gmail.com>
References: <CAK8P3a2sqika7=3D6Zgkz+v8HtGEc0q0+skWG8mSKuL+qSoYLw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_054215_726579_6C62ACAA 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Hartley Sweeten <hsweeten@visionengravers.com>,
 Tony Lindgren <tony@atomide.com>, afzal mohammed <afzal.mohd.ma@gmail.com>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 Russell King <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Lubomir Rintel <lkundrak@v3.sk>, arm-soc <arm@kernel.org>,
 =?UTF-8?q?Krzysztof=20Ha=C5=82asa?= <khalasa@piap.pl>,
 Viresh Kumar <viresh.kumar@linaro.org>, Olof Johansson <olof@lixom.net>,
 Thomas Gleixner <tglx@linutronix.de>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>,
 Shiraz Hashim <shiraz.linux.kernel@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Viresh Kumar <vireshk@kernel.org>
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
Acked-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
---

v4:
 * Add received tags

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
