Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91728195766
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 13:45:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3KmuH8D1Cg0AcUeyi2uU4u9v5mpbHdFIM3uu8MRc8/U=; b=n8GtSUj6fqjsYvZuW3RNh2zsyj
	LQs0QtzLfoa+Ajh8aTm1qJIunaPKrdRcR2f0QzLYDZircKkRb+GzaMURhOuG80yqwW925cDhCjSYQ
	2W51fNsD9JURvZTjSHTG/S0lxBi5ca8oGaEwjZxcEYJ/xpMTZsmQVsnYtgDNf/t6OaU5wP4nRw7ad
	L2y1WvGj+i/19Y1L1kSLELEXBJD8gcgojRjQKQZWfRsRq+8Ear59WuTG1NMz1H4dsMcLHmJsOknET
	QegCEPjYbFCNXyHZiRaNuSFMmRrLucaI/xuyJJ5jBTW1zi0j25dq6nLGXCeF9gomlv3wM6S7v7KXy
	3TnKOr3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHoM4-0007Yh-6p; Fri, 27 Mar 2020 12:44:56 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHoLg-0007U5-8n
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 12:44:35 +0000
Received: by mail-pf1-x442.google.com with SMTP id 22so4444891pfa.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 05:44:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=OrmCqFezly2Rfxgtc8/QFu/0W5F3zvpkrW43juhNMPA=;
 b=GIA92C3GyqkFnDX8sA9Rknn8fwTnET1ETunHwCgySE9vDZlgyPZM1GTEDiX4Ed9drc
 YH4plfCR6mDkoPfE0nOfFfGPjfLT+W2/okVZ5EhQ+LPZD+3k3spQS23pLTXBiYuvPVjx
 o87eiA3EwHWieUIzUz0Xe1Up70BMgfdBO+fHkji+RKnEtXlrpr8/rOeK064Y/AmaDTya
 RcA9Vm3DNDRleceqduZA8aNk0u38lr/33qFn8a+ay0hVHF40ghOEWJqr4PkbpBpSavrW
 ZKpgwHZ525bKABBbRN8QEulmTk7qyiRpqA+dN3IRCfA+WZ+NBdJSPtEJ3DFpcz4HCpN+
 r5Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=OrmCqFezly2Rfxgtc8/QFu/0W5F3zvpkrW43juhNMPA=;
 b=SU8JjqHQay0uU5v3oFQXEyQ6nttYvs0VipbiQ3N21RN5s5RqVKJa7GwFgK0r+kGV6j
 FmSiRxzfirnhCx6RFgNSuOWZ+Oy0E5YQO06YzBA5dh7nCDU2w0vBDRd5wiJURH+gkzHm
 XsQmz9LyjM4pLx1aDZtwwQX3TKfIAZ9dLxfgiIMfOfaSTfAQOyCwmGlsjIJDrQ/rO0Sm
 n4VeqIPhLC6NSHDBDkDzMp0rbUYbM8MRodUbaajEhA8w+sGNJsGzMKvoZn7wAJL07zbg
 scnmZVvJf70aqVOm5T7OrRQ1TCZpqdfuoqp1Ieza4ECUPCU3LkoQbQNjwkAo/sphPokh
 3tNA==
X-Gm-Message-State: ANhLgQ1vDdbTBeFbOeZQ5JdzwXxnJYHxasuYHWJUKcCWa7dth46nWTBi
 0+Jg8iPZ0pj9uO+C5XzOXMY=
X-Google-Smtp-Source: ADFU+vv89RkFVcocDRn4TLjad8m0Ax5S8FfzmE4pizTzzOO9MsncIbmfrgyhAIrDyE9xef9gEK/Cfg==
X-Received: by 2002:a62:6503:: with SMTP id z3mr14798534pfb.232.1585313070409; 
 Fri, 27 Mar 2020 05:44:30 -0700 (PDT)
Received: from localhost.localdomain ([49.207.51.33])
 by smtp.gmail.com with ESMTPSA id u129sm4070380pfb.101.2020.03.27.05.44.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Mar 2020 05:44:29 -0700 (PDT)
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>,
	SoC Team <soc@kernel.org>
Subject: [PATCH v4 3/5] ARM: cns3xxx: replace setup_irq() by request_irq()
Date: Fri, 27 Mar 2020 18:14:22 +0530
Message-Id: <20200327124422.4181-1-afzal.mohd.ma@gmail.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <CAK8P3a2sqika7=3D6Zgkz+v8HtGEc0q0+skWG8mSKuL+qSoYLw@mail.gmail.com>
References: <CAK8P3a2sqika7=3D6Zgkz+v8HtGEc0q0+skWG8mSKuL+qSoYLw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_054432_383411_7F303CD8 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
Acked-by: Krzysztof Halasa <khalasa@piap.pl>
---

v4:
 * Add received tags

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

 arch/arm/mach-cns3xxx/core.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-cns3xxx/core.c b/arch/arm/mach-cns3xxx/core.c
index 1d61a7701c11..e4f4b20b83a2 100644
--- a/arch/arm/mach-cns3xxx/core.c
+++ b/arch/arm/mach-cns3xxx/core.c
@@ -189,12 +189,6 @@ static irqreturn_t cns3xxx_timer_interrupt(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
-static struct irqaction cns3xxx_timer_irq = {
-	.name		= "timer",
-	.flags		= IRQF_TIMER | IRQF_IRQPOLL,
-	.handler	= cns3xxx_timer_interrupt,
-};
-
 /*
  * Set up the clock source and clock events devices
  */
@@ -245,7 +239,9 @@ static void __init __cns3xxx_timer_init(unsigned int timer_irq)
 	writel(val, cns3xxx_tmr1 + TIMER1_2_CONTROL_OFFSET);
 
 	/* Make irqs happen for the system timer */
-	setup_irq(timer_irq, &cns3xxx_timer_irq);
+	if (request_irq(timer_irq, cns3xxx_timer_interrupt,
+			IRQF_TIMER | IRQF_IRQPOLL, "timer", NULL))
+		pr_err("Failed to request irq %d (timer)\n", timer_irq);
 
 	cns3xxx_clockevents_init(timer_irq);
 }
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
