Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF04174D4C
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Mar 2020 13:23:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=b6HxnnVltqMYVxtaghFWPQkQkHYH+G3Mq3blkBVDIMA=; b=mCz
	OdG8/T4PMlkuZpOzjEDPCZxLN58my2DxFDo6bpwrQXXS7aVf3zJXo8quulwxQvhjMmKwtz2TStNhX
	pcY1tHoJwKel5ZRwqggwQBk2vc+HqO6EQGKbyKuDplK5bljjquCo/efliTwQRF/KnD3U/8XoaTUD8
	E8SGs//efIP+eefKoB6ThtUPo/cTxPSpxqxJHEuLljJItEb64R3pVbS8UIYEO/k+yqAOHSEAP9QIj
	3Ms2LStGl1P+lsQfGIohslK9jDNvWyt2EGtm5lJ/JEhKvFbPXN6Dojqik410sBA+twirvkxt9/kQZ
	BuxDCgrqG2dzQvO//Dg8gKCwRXUbwpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8Ncx-0006ve-DP; Sun, 01 Mar 2020 12:23:23 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8Ncj-0006t2-U7
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Mar 2020 12:23:13 +0000
Received: by mail-pj1-x1043.google.com with SMTP id e9so3224117pjr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 01 Mar 2020 04:23:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=GR/xI2gMyvXWdFF9S5uRZpICRt+f76h6nOitHcoQYmY=;
 b=UK5HCV40LjKSntbr1iFufyeFeOXrmKYkN2ZIwvyGnR4UH3pldM0FCkS0Mmg/uqK7+p
 bFypS/136bNGzhW+erlbqIlAlTxlvavQGDgEuqQ340AnRsFHIy5a74Mj7nysOkOpHvKt
 tLes7YFdOiW1lAA0QvFfI64LRKMsgBuDWJlZ3g+VrxW86hpzpeHN69qnrSwXScq1yzS8
 l+nXaxJN2vnvclJAB1H0nDqPNK9jL/Oi9tk0PDyHPwC3Y1kUhShqk2qTWQsdOPYpggXU
 x8QA4pdaauaYHm5J56DXVrDR2QbvJU67q8ByUJD37GGO0gkWsOE5Enarqs8npp/mbMrg
 IdGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=GR/xI2gMyvXWdFF9S5uRZpICRt+f76h6nOitHcoQYmY=;
 b=b/V7n5WODkI4y+5/7aQcjksWT7YGxDLVSvwR51h877qlPfhnXTIPfB0sy8j+EsdDbZ
 VEPiVmH4XeaFmPfBmvxf1q27br2/lT3oCWsZwprRCTNv/X2U9uPxu+k4FOigpgmjKg9O
 nIw30b+8o7NmKIYcIxkTCL3yjRbmgje/Dz5/4wLol7GK3aDkLRHfKXQTjOSH/s/j2kkY
 L7s7pITTCjFxAgZ+YN/W4OAl00Is84ieNmHew0exXEImtik0DgwDhTqaV81nlWa11Z+j
 GjEAe24hHG4NbCVg+BGpW8r9jZ4/YOO9zRrgFQZQrRk7bNZEwXjps28Q/DOt8gxr9yt9
 K9/Q==
X-Gm-Message-State: APjAAAU1qKgDFhaUTUe9M6s7/ki1mSq6jgyMQhUWDNXUbLW3SwgM0LcE
 xznRZWjEriZj13arE3CQuXw=
X-Google-Smtp-Source: APXvYqwlZsfL3WAhOxz2WFCSDWj8yvihulLTiLUQ2dLZnNhHKL6Vu8FNH9VWJHCtmK8WzaTqZE2kxA==
X-Received: by 2002:a17:902:104:: with SMTP id 4mr12889185plb.24.1583065389361; 
 Sun, 01 Mar 2020 04:23:09 -0800 (PST)
Received: from localhost.localdomain ([106.51.232.35])
 by smtp.gmail.com with ESMTPSA id 26sm8623725pjk.3.2020.03.01.04.23.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 01 Mar 2020 04:23:08 -0800 (PST)
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Viresh Kumar <viresh.kumar@linaro.org>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3] ARM: rpc: replace setup_irq() by request_irq()
Date: Sun,  1 Mar 2020 17:53:00 +0530
Message-Id: <20200301122300.4185-1-afzal.mohd.ma@gmail.com>
X-Mailer: git-send-email 2.18.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_042309_981738_F091D668 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
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

 arch/arm/mach-rpc/time.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-rpc/time.c b/arch/arm/mach-rpc/time.c
index 1d750152b160..da85cac761ba 100644
--- a/arch/arm/mach-rpc/time.c
+++ b/arch/arm/mach-rpc/time.c
@@ -85,11 +85,6 @@ ioc_timer_interrupt(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
-static struct irqaction ioc_timer_irq = {
-	.name		= "timer",
-	.handler	= ioc_timer_interrupt
-};
-
 /*
  * Set up timer interrupt.
  */
@@ -97,5 +92,6 @@ void __init ioc_timer_init(void)
 {
 	WARN_ON(clocksource_register_hz(&ioctime_clocksource, RPC_CLOCK_FREQ));
 	ioctime_init();
-	setup_irq(IRQ_TIMER0, &ioc_timer_irq);
+	if (request_irq(IRQ_TIMER0, ioc_timer_interrupt, 0, "timer", NULL))
+		pr_err("Failed to request irq %d (timer)\n", IRQ_TIMER0);
 }
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
