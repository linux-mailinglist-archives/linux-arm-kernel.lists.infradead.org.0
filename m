Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C3B19576C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 13:45:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YgBpDJ8p43OisZ49bvaD3FJYL5ZwDEo1LctKGkBhWiE=; b=ZEQf4ljIxgkCTX+goZRBYY5LjO
	d0pePWy5wcQ3CL2W4zXbvsPYPxq1PeIfwJt1ybtw7VvlokM67zuYqayH8BbzpDvIpkJl8YpRMhksM
	EVm1UD+cGJYEz2BWWKPmY+6Bj4J3XHgpD3E79CAph5KspfyicLWohBPFwkK5XmY8szO/EPCMW2gwj
	FibZ6S4r7txUJ/Rrw9eSSN216U333yBdeyw3f98RNy0A5/ZvCQ/tNPY6RdYAdds8mtlR1+rnWTavr
	mY+yabsYpcj5RS9EOKUVWN4wj42RDvFgwiKXzuVFT7mUAX8cLBRViDfWASb4aw3a048RVqlKbGmax
	wxUG2t9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHoMu-0000la-G5; Fri, 27 Mar 2020 12:45:48 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHoM8-0007lK-2k
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 12:45:01 +0000
Received: by mail-pg1-x541.google.com with SMTP id k191so4508124pgc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 05:44:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+k9FpHI6R329k1p5n2ZmxLrGGeywgn+d1U7fGz/e9fs=;
 b=cJj+HvEYUrch4yUgmLxsQfZstI1JxA0pQDazHNg6IMMsqsjdMjKwmzWoVuCAdMQ2ua
 EERQg4cDrroRlSqfqACd0CcPBpWMjhlGDMIh2nmjzF6Tr8jcXlT6vvrVuPKFDZGplUui
 6VuoAq+7SvMyaKGfd4x36kLvjEhcQFWvsg8ctmPt669FtdT7mglaMQlhJ28EJqweoe0N
 36wuQErl0fLfSy2jtG4q2CXGRFRaKlbvmDk3eTxK7XHh7138+I21f2PDMFhymIxrgGXG
 0NzesrfPdwA/ykaTatv5zddtQzq5Y1HbMI9OJXfHg4mO1SoI7kMAGQ9ozclney7LWjed
 0Jeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+k9FpHI6R329k1p5n2ZmxLrGGeywgn+d1U7fGz/e9fs=;
 b=NU0C+a222fO0run/9uHp1fxzHt2rYgnAOXlPTGoes5fXpiHqz3S3EC+EVG4l1i4b3N
 2ivnWYIz9bfPR+GV48iWG7DBEn5dCnRk80kCKyq1owZtMvrY+2n23uKtZCVSUlWk0s3Y
 jpSO+QIzFdbu2u7G4vOPgLAGOh7Tx+igybogbeZtUZJygmE469MUnwHSY2PSckSCZesB
 BnZ8CiJjKEQAnR03Jh5wxe1J7ZEOYyiCBC2L1rGF2S+aoOrM+gV61nmRQNg4Yeu9PBN/
 G3AhT//JmJjrqLfeCyNFlYo7nbB8QqjJU1lkQh22eL5GreMbKaM9oXpm3Lfw2/p1lntO
 NWZQ==
X-Gm-Message-State: ANhLgQ3MC2XT2oQIZSLxNBg0uaULOdLzgcnOJKUTvNL8vLAH/uSPVWai
 Z8cwbwR6Pzwd1xQZOrL5BhU=
X-Google-Smtp-Source: ADFU+vt4ULTKYB4EI+sbHTJ5JUWGsxXrQ+wP+sgamWxYG48SKpaR8sUaOWRqDMbtt4LvgaR5hQ6/ig==
X-Received: by 2002:a65:53c9:: with SMTP id z9mr12309655pgr.405.1585313099156; 
 Fri, 27 Mar 2020 05:44:59 -0700 (PDT)
Received: from localhost.localdomain ([49.207.51.33])
 by smtp.gmail.com with ESMTPSA id e9sm4085390pfl.179.2020.03.27.05.44.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Mar 2020 05:44:58 -0700 (PDT)
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>,
	SoC Team <soc@kernel.org>
Subject: [PATCH v4 5/5] ARM: iop32x: replace setup_irq() by request_irq()
Date: Fri, 27 Mar 2020 18:14:51 +0530
Message-Id: <20200327124451.4298-1-afzal.mohd.ma@gmail.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <CAK8P3a2sqika7=3D6Zgkz+v8HtGEc0q0+skWG8mSKuL+qSoYLw@mail.gmail.com>
References: <CAK8P3a2sqika7=3D6Zgkz+v8HtGEc0q0+skWG8mSKuL+qSoYLw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_054500_147717_001438A6 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
---

v4:
 * No change

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

 arch/arm/mach-iop32x/time.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mach-iop32x/time.c b/arch/arm/mach-iop32x/time.c
index 18a4df5c1baa..ae533b66fefd 100644
--- a/arch/arm/mach-iop32x/time.c
+++ b/arch/arm/mach-iop32x/time.c
@@ -137,13 +137,6 @@ iop_timer_interrupt(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
-static struct irqaction iop_timer_irq = {
-	.name		= "IOP Timer Tick",
-	.handler	= iop_timer_interrupt,
-	.flags		= IRQF_TIMER | IRQF_IRQPOLL,
-	.dev_id		= &iop_clockevent,
-};
-
 static unsigned long iop_tick_rate;
 unsigned long get_iop_tick_rate(void)
 {
@@ -154,6 +147,7 @@ EXPORT_SYMBOL(get_iop_tick_rate);
 void __init iop_init_time(unsigned long tick_rate)
 {
 	u32 timer_ctl;
+	int irq = IRQ_IOP32X_TIMER0;
 
 	sched_clock_register(iop_read_sched_clock, 32, tick_rate);
 
@@ -168,7 +162,9 @@ void __init iop_init_time(unsigned long tick_rate)
 	 */
 	write_tmr0(timer_ctl & ~IOP_TMR_EN);
 	write_tisr(1);
-	setup_irq(IRQ_IOP32X_TIMER0, &iop_timer_irq);
+	if (request_irq(irq, iop_timer_interrupt, IRQF_TIMER | IRQF_IRQPOLL,
+			"IOP Timer Tick", &iop_clockevent))
+		pr_err("Failed to request irq() %d (IOP Timer Tick)\n", irq);
 	iop_clockevent.cpumask = cpumask_of(0);
 	clockevents_config_and_register(&iop_clockevent, tick_rate,
 					0xf, 0xfffffffe);
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
