Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E0B195761
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 13:44:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iirGiSwrTrohFAVu2WjTWa4E4zilt03atoG94TscRS0=; b=YH3KOm0W0v50HlxT9hH7U2HdZ/
	QYD5+9oG+4xXPIXJ3vWQAih9dvQkMpv4o3Ghv0T3LSyZtf1C+koChLihev2oEJeMNwhM2w+PE41im
	0UVRUwllr/f5WMGIbF3RYd3n4NicR7XfNtpPTlV3aXQnNA78VQKc0clKkcerAVdPhamX4EuVdH+K/
	dEtcjEurpN/udc+ldF4WQ141nIo4RYBctb4lir92quZwDZdmgkXPurxaA1NZtLLAtgyuz4xXhpxcB
	wuCDKft1shCT7E2Z/sF+fmFU16oeopoksbv1XNUoYoshghAzly1ZIuHzu5kcDbY95Ulb1n4i9zsjY
	keRxlfqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHoLc-0007JM-77; Fri, 27 Mar 2020 12:44:28 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHoLP-0007J2-Qq
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 12:44:17 +0000
Received: by mail-pj1-x1042.google.com with SMTP id v13so3815588pjb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 05:44:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Fsqy8TfQMOxnl1SbG7WxWf+f3gEqGelUnglQJSOP4Ds=;
 b=Q2Otw0ipFM9So8sggRAQgCgojzHVsLtIWn5ukWMxPAJdhOBRRO8zrGPlbCo0y2GA6f
 sfSVJRy6ndUByUc0Y3zWpTCLkaYG1RKjr/IHeNTv1R/Pb2gMLXbg9ioX4QgQHzRY5cps
 N3G1ayLdmVxwy4ZjqYlozMN1h34Utvi7fqBiojTRK0pIWMPWvGE0LkUWFA7kqgJuJxja
 rKlEgcXH3J6jBX59IpTWHjzmjQIIBmiyOt5i1v4tca9ZWxogZVM6CDRSdBnOmpGpFEth
 pjmUsrvDUdhO3Bv5CYeCGEspT8IqMcwpli64OnZGn6JM6hBdUYfCQ86yCN7labB76D8d
 c4Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Fsqy8TfQMOxnl1SbG7WxWf+f3gEqGelUnglQJSOP4Ds=;
 b=XHOOMajX7zO2fLI5SK/FVPM5DDlrnxCoHq5UoB92anWXXo064U61X+k1GvSOa/3nQK
 vkoodlm5POTqfo73NDoisMPkx6Yu78+sQRJG2GFZyrI99/rWTQtdVREhqS4FkTlQPV48
 ObKtiIVrzvXGTf2Z4DUHZdBl9cbxpd/RQ4RkFtL1B8yxpBDM9Xn00OLRqPWR0fIxM02n
 RlNC0a3fsZFDfPJn/JIvteMqUfq3CBRQ1PNo+SuQkYE8odSe1n2qUoybdz2A1x4/QPKr
 N2mmV8yxpn0d6VhePdVVo7I8Hz3mSbqne+aIpScl/LLjZ+LyNc42ycIdsTybVrgu1L0A
 dJlA==
X-Gm-Message-State: ANhLgQ1zzbX1V4s1WTzR1A3HhYIpbGCq0kH2p9331GD/1UWRnKAYkEYR
 /DLA1UFCbPjNBPg3Dzr+spo=
X-Google-Smtp-Source: ADFU+vsoujK+muRM6+KaBCVLLvd9JnFa4Q3MxDpF532ov0b1AY3yVciRuMclmYx+K3BcdM08YjVIlA==
X-Received: by 2002:a17:90a:1b22:: with SMTP id
 q31mr5878074pjq.109.1585313055028; 
 Fri, 27 Mar 2020 05:44:15 -0700 (PDT)
Received: from localhost.localdomain ([49.207.51.33])
 by smtp.gmail.com with ESMTPSA id v26sm4056641pfn.51.2020.03.27.05.44.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Mar 2020 05:44:14 -0700 (PDT)
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>,
	SoC Team <soc@kernel.org>
Subject: [PATCH v4 2/5] ARM: spear: replace setup_irq() by request_irq()
Date: Fri, 27 Mar 2020 18:14:06 +0530
Message-Id: <20200327124406.4123-1-afzal.mohd.ma@gmail.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <CAK8P3a2sqika7=3D6Zgkz+v8HtGEc0q0+skWG8mSKuL+qSoYLw@mail.gmail.com>
References: <CAK8P3a2sqika7=3D6Zgkz+v8HtGEc0q0+skWG8mSKuL+qSoYLw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_054415_868237_C7BFE564 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
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
Acked-by: Viresh Kumar <viresh.kumar@linaro.org>
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

 arch/arm/mach-spear/time.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-spear/time.c b/arch/arm/mach-spear/time.c
index 289e036c9c30..d1fdb6066f7b 100644
--- a/arch/arm/mach-spear/time.c
+++ b/arch/arm/mach-spear/time.c
@@ -181,12 +181,6 @@ static irqreturn_t spear_timer_interrupt(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
-static struct irqaction spear_timer_irq = {
-	.name = "timer",
-	.flags = IRQF_TIMER,
-	.handler = spear_timer_interrupt
-};
-
 static void __init spear_clockevent_init(int irq)
 {
 	u32 tick_rate;
@@ -201,7 +195,8 @@ static void __init spear_clockevent_init(int irq)
 
 	clockevents_config_and_register(&clkevt, tick_rate, 3, 0xfff0);
 
-	setup_irq(irq, &spear_timer_irq);
+	if (request_irq(irq, spear_timer_interrupt, IRQF_TIMER, "timer", NULL))
+		pr_err("Failed to request irq %d (timer)\n", irq);
 }
 
 static const struct of_device_id timer_of_match[] __initconst = {
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
