Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C30B619576A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 13:45:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ws+GrSgDqVNNkUQKyxe8et6xRVcDRplZ6lTPNxllQTw=; b=Mx5FH9PUJHa3GBFPLAvujHtezd
	44n+lDACYTexE16S7nEAD9utVQE+JPqQoylt9stxOH3sQw9rkPZUkVwwg5yUUmitC9o+QMD7QNwCK
	w63GV+aVnbqZQfY0e4AW01ceJVUHW7FDDpSlFym76EHiJNhKXzk2SiLu1cG0OrDa9+X4E3ZtykQXq
	GCV+lVnWTVxjgkO1+exGAeYcOK7Up7M9AvOkAniZk2SNvSK/swJDUqBXNOSbvsSQt/m/NRO/H+8eu
	r8nAWWxoCm+s5yXdF8o+SZ6M2AROMxM1gzQ2E27KY1vu3lP6NLfPlrC4FSb8HU5pZlv3ZOP+DJPL7
	zM/RP05w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHoMV-00088W-R4; Fri, 27 Mar 2020 12:45:24 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHoLu-0007b1-6v
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 12:44:47 +0000
Received: by mail-pg1-x542.google.com with SMTP id j29so4527458pgl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 05:44:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xFdvPRnQ5Nq8J+GnOFEHtRkDs3iYX4yKgZJqfls3/Pk=;
 b=YeUXuFl8dwFM3mWt1H2uHEqUccLT5Xz+QFYTGztMmEJoY6CJssaZCuvAawjQwmUXCq
 WE7TnXJ0S7ox17JZ+21+DTHw+iZW/GlO1d0lUqXN7992tY+agbibzc+IMP/oGW7vpWM5
 gE13iQAxCOeB4Yl8kdzjItjkLawp/ZVSOtQ4rKgzu700xbuaJQMe5Ccsu8TwjVsLusAH
 wK8EPmnr3IelGS4b8u3BeSJXBSboMATZKfmjFAV+FFSy/aE3tJvInzpdaqzOsuRN9bzc
 vICZ6w+pbojyLVGrrIUCRIp/TNOH4/Mgwtm5lC6p4NGYsrXsAPUp7ocz2WJkTycuDQYY
 /ULg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xFdvPRnQ5Nq8J+GnOFEHtRkDs3iYX4yKgZJqfls3/Pk=;
 b=Jz42eZXgI4bI6DrToVJbzGSfoVB2lDHIFH9qldyyDSO9mwmOs++3f/XewHuxT7pJsR
 iNu0xb59BB3gZw9ZWKr9R4FdQAvjwkpQyk17l1QDs3iURKduL/Zfr5j0ewz5SYuuo4Xa
 +tQM18NVNsz1tjO0WLh4XNr83Mb808LmSBOjbbG+2AV3oOi6pfSy4F000gjHYjS7Rf+F
 M9UqK3hj7FFJTOTJgDWJQe9C4VwquwCMZrvC0XtojSp775AgSCoKYS7VVfDXMaYu3RE4
 1+baNAwHO5mqnJRkSaAArmxo+RbnIuvbRlljwQkb4e4DR0zPdbMLaQympTX5PE6HKFMm
 mtcw==
X-Gm-Message-State: ANhLgQ3KASScbxWw17I+Sy7bf+XaRxoKIEgpducD4UhLdKN6V/00jVDa
 uExqkN1XzXXolFjNhL1eSp4=
X-Google-Smtp-Source: ADFU+vuLkq2V3axK2zqaj7bfQQYwxISRui0bqL+BPM0Z4hxEntrKa7bvyaSE7IdlBKgOhRoaLMMD4Q==
X-Received: by 2002:a63:2442:: with SMTP id k63mr5968884pgk.250.1585313085217; 
 Fri, 27 Mar 2020 05:44:45 -0700 (PDT)
Received: from localhost.localdomain ([49.207.51.33])
 by smtp.gmail.com with ESMTPSA id 1sm3752699pjo.10.2020.03.27.05.44.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Mar 2020 05:44:44 -0700 (PDT)
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>,
	SoC Team <soc@kernel.org>
Subject: [PATCH v4 4/5] ARM: mmp: replace setup_irq() by request_irq()
Date: Fri, 27 Mar 2020 18:14:37 +0530
Message-Id: <20200327124437.4239-1-afzal.mohd.ma@gmail.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <CAK8P3a2sqika7=3D6Zgkz+v8HtGEc0q0+skWG8mSKuL+qSoYLw@mail.gmail.com>
References: <CAK8P3a2sqika7=3D6Zgkz+v8HtGEc0q0+skWG8mSKuL+qSoYLw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_054446_292460_87546E95 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
Acked-by: Lubomir Rintel <lkundrak@v3.sk>
Tested-by: Lubomir Rintel <lkundrak@v3.sk>
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
