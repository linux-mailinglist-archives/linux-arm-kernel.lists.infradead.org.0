Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F11174D47
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Mar 2020 13:23:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ZEwJ0qWQt2rRJjkdhPiLSCuA3OsRIHrD1BzcG6h5/Nw=; b=Mf6
	Vzi8FR0XPriSFEyJqIoXVeTYUOCfgxhlaYKBF/gXvAAzNm8ulMFWV7RSfkezDQqHjxJ8r18HDEWqr
	MhLTtG9DA7vuyWW7+V/zsQUESHCLtAxugntmrv+8BX2JwkhmxruzZQiyIKXEVwBzU9dUF77e7YpCV
	MgBqefsYapb9+jQq3JjbQPVJ7lWVPUQf5NcK9ZCUvIWOZBbHo8IKAACtWvk7pWIQ5FleMOmuKo5+2
	q+pEh62RVREWRnj/y+IePdbIANkyFeQo+WEy9L9J4CjK08XyONzPHLkVciDJK75+BZ9ikjR5wdFdt
	nL3HAQwS1mNGLgpLSA+Uv1ypuJ5TBxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8NcS-0006N3-V8; Sun, 01 Mar 2020 12:22:52 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8Nc8-0006Go-H7
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Mar 2020 12:22:34 +0000
Received: by mail-pl1-x641.google.com with SMTP id p7so3074697pli.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 01 Mar 2020 04:22:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=8DnSngTmvzsd65+fjVgdabNJJWbP31CoAeIiDzwcTxc=;
 b=SHa2iPWW/niSpSf3cfP6JGgRIP6IKYAiwhBfSzd9Z9BnleNtOAbzXQw0wzgQAVAuXQ
 8YP7h2g8CZoRyyC+lkV7bbo0aHCSrbxMFQh1t6Y85L0cL0Vku17MsNMnlnlV7Sp7yg+C
 iAB7onY4u+HNEMgDzInde3O8y5wr36OsOqzjtRtvITPAowj/lmKB48qVN1GCBtlEzAKz
 BbmdMlb1lZM4o74oB+n6E4BUzpw9twyNsV85cT8xDggchIq5wCls46jYxfLbhT0N9gq6
 4nk3OPAUueQc23ZwGYnxvptPPFYQAMkOK6WmLnkUqryiPToQ6PT8W+rq00sIfdpWStWB
 84Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=8DnSngTmvzsd65+fjVgdabNJJWbP31CoAeIiDzwcTxc=;
 b=fL9FJOhPhtKA4u4ECwAvlVL2eqNiNyE51AjJC+giL6XnFgPUHpd261B4r5b4ZRFUxs
 MSp7+foUxBo/0jUmN5L0gPxKjyllnEsorOZeSlCSTv8a28erTVh6pEbdnsFz7XgsrJf3
 yznYd+JS+/bJToJbqmczGOxGd8X0vRn7EaljoPXDQBFd2yAFepf07ecuCaaPhDUYgLUc
 z3y/t5+O/M5othbBiMfrJMNp51puf8Cr9CjYkXCZ9vvy2i9i26P0RVBNg+MO8/Alj6b5
 p/fj3fvmAexoZe3Z+vruO8TJjXkIvAqL4JT5BqoUcR808U/se3ejJGIyNadymCpUtyMw
 DdWQ==
X-Gm-Message-State: ANhLgQ3FQMWJ5k40IAfv1onIy0y9DTQuLyHzd5QV2mJxQYUA0v8JqEMr
 9wywbXGPSP8AIxFEr0sEr9RbmYvM
X-Google-Smtp-Source: ADFU+vtgZDqLq8qgq7cBmuez/0NVgFMd37RvN5fOD22JK6zkTlXJaygnGb4FycXfbqiHgJRos3bonA==
X-Received: by 2002:a17:90a:8d03:: with SMTP id c3mr6978240pjo.7.1583065351992; 
 Sun, 01 Mar 2020 04:22:31 -0800 (PST)
Received: from localhost.localdomain ([106.51.232.35])
 by smtp.gmail.com with ESMTPSA id z10sm16519219pgf.35.2020.03.01.04.22.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 01 Mar 2020 04:22:31 -0800 (PST)
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Viresh Kumar <viresh.kumar@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Allison Randal <allison@lohutok.net>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3] ARM: iop32x: replace setup_irq() by request_irq()
Date: Sun,  1 Mar 2020 17:52:20 +0530
Message-Id: <20200301122226.4068-1-afzal.mohd.ma@gmail.com>
X-Mailer: git-send-email 2.18.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_042232_616327_C906E534 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
