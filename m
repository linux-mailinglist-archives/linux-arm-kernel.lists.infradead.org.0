Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20AEC174D41
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Mar 2020 13:22:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=nSdi5Z0IiDtKC/xndga/rWHSHLdXh3iUTojd+LTXdkw=; b=D9Z
	SdBa+it+74KYRejabjXa9+yZVub829lrqqCdSU2H0/tt91TqAvrAcZwNj28TJsMr31h82Zlgw3+Nd
	VmtBLEb6zLd7aC8pHOHjF96cfoX9qo1udlz3WL2kefT9UWR/85f7UH+jphql5Jp7OSxMtpVh4zmad
	7DVvb7np2EB73jJek1+/PjjJMu5ONJlbCTXk4b59rO3ETmVtMbFHO4h68OBsBpSZIBXBrQtLZtwLe
	d4oAJeV9La1YD61ECUk0zgr0wQ3Wthp2VHmZTvGY1yuVZoD99eSZjY2ODUsoR2CK7Sn76vrTW+wGx
	QoS07hU4+y+PS2RV7zeFTZ7VRN4bX7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8Nbx-0005ub-S2; Sun, 01 Mar 2020 12:22:21 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8Nbc-0005pD-SV
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Mar 2020 12:22:03 +0000
Received: by mail-pl1-x644.google.com with SMTP id g12so1053531plo.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 01 Mar 2020 04:22:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=9cIS9wI0z/ly272acO4wuXYRhTq0u593vlOIO8zfEwQ=;
 b=J1xoBje+Kv+ieI2iI8o2Qh4gAtjEIRvTDeYBaJ/Dh2ZXyPrcDZoYJqcqd4hJRmKP2h
 qDro6FnOJFAxIGt1A9SziQoamobw/g1oRljc4Ypt9BlAp1MJIc3HFPq8eMbA7fOmwy+B
 DqiTiiHtfMMaUpQVsUFdPm8EPB0XMhuN2ZycFtvP96nAjoBdfsNAnUiTIgGCy6Oo/Hsk
 rBCEgV7qTEwEo2TO1Tidn4l1bvd4B+RBkbNKMaZ9AhsJ3g/3s3L4jmR+1TBh0rVzsdhl
 SnbJl8s+b1wGrjtBSKp7WXrxcLnZszLT7wDV8GY4ECjxq4OpDpM014urhhdGuw83CKe1
 0fTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=9cIS9wI0z/ly272acO4wuXYRhTq0u593vlOIO8zfEwQ=;
 b=f3+NZjzWW3CofkA8YlhNFaTLL0+ERpfUIz0E28LkDDt8OKzuCVRl5tCtqV4k7Uvk1S
 1VdJM3lHaHGzsvZNTY8hUN/G9ivbgdDrbjr66Cf2pcr2OFkzGTFRuuE2bEYyOZZpifWc
 t6TCJn1u0FSU1s64pmCrdzHE/xi340vsOFuj1+PW+FeewB748TrUMPA9ToDEgsjhFCFh
 TmFORBG2laHunDPBBW3vyPy97eXrkjHGSy16ob9QnwuM8b8thNMN3KcBmtw1vfpOO9bm
 jxGVsY/uWEbFdj8y3CrqE9WXn2EItGH2gh7Dlug8uUy4Br8K1cOrHScmEOBT2tk35+L0
 SjZA==
X-Gm-Message-State: APjAAAWbVS/01K75HnfRnpWglkF0qpfif+65+YWMOkfurpk/JwZIr9pp
 pqxPGOWxEz8ne+CaqH3Bva4=
X-Google-Smtp-Source: APXvYqzQ7LSePL09cmdsNNGSRe3otnppD5HDry8uOivFlQnPHuYZM3uBcbGiBjIjHFC1YfNG4s0fEw==
X-Received: by 2002:a17:902:8a83:: with SMTP id
 p3mr13595862plo.56.1583065320065; 
 Sun, 01 Mar 2020 04:22:00 -0800 (PST)
Received: from localhost.localdomain ([106.51.232.35])
 by smtp.gmail.com with ESMTPSA id d77sm4081997pfd.109.2020.03.01.04.21.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 01 Mar 2020 04:21:59 -0800 (PST)
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Viresh Kumar <viresh.kumar@linaro.org>, Krzysztof Halasa <khalasa@piap.pl>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3] ARM: cns3xxx: replace setup_irq() by request_irq()
Date: Sun,  1 Mar 2020 17:51:55 +0530
Message-Id: <20200301122155.3957-1-afzal.mohd.ma@gmail.com>
X-Mailer: git-send-email 2.18.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_042200_944820_F7EC6DCA 
X-CRM114-Status: GOOD (  12.44  )
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
