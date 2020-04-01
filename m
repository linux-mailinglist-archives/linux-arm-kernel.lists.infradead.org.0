Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F3519A465
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 06:35:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BP6OyYMIay4ffuhb6+cKdm5nBKZuUsqaDH/hrWrrLa8=; b=OwC
	mPTQMNXE+S7a4DyjVEUB+i/apVWePVSb3U9kLHRpVx5N90RKUTA32geIADqXM095q1oLVKOHKOePU
	CdlnnmyrLH9CKCPvwiH8A6qCIkAEqipv05b+FdCywpzB3UeN/EP6LU87A7w/ND/F/HlqULJq3uqdn
	w9WUXsx+NraiCee9D+24nIwnC94rYgbCT8oj8D3eXJIhJV038zna+vbiGOEiF0Srj890fCBQhoQ7U
	KkW0PSv9RMbGI9ux6Xiu3tJSjwQqQmqTx6O8RY+uwP/GStvpq5TtmNMqffVDH6nlxE8HKT2zRcMfb
	v3TJl4XJuxBpJbdvvyFX/URPyFzBg1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJV6U-00074l-OF; Wed, 01 Apr 2020 04:35:50 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJV6O-00074H-4O
 for linux-arm-kernel@bombadil.infradead.org; Wed, 01 Apr 2020 04:35:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=4MMNG41BDHB8exad93FbVRX9D26UibDtBNyM1+V2/C0=; b=LuP2axCbCis/gIiC+fuAQdK5IO
 KcggJYEAXUvbyczoNX4YSFrykJqIJgqgvKKTemQErwnhKOePMtmN7T7uurUXK/ivasZ01mcWNQQze
 GhtWEoGUCW4kA4K+v/RLDKPzXJAhk+EX/0zF6YIlJAFoRLGATGhK/S9/dJyy1APHwL0LOgiIEVlS/
 37xqXTtg0lkvszXLbEDc/6JAzTgPg9hhdbwhSzm6DYXSvR0tChvfHxjcjUkEhpEnYez5VvhpC/o9I
 JK28il1brxSNbta6zasA4n08Bl0uRz6EFiTetwzexYlVn6Jl3l5BEmMKd81QHW1BMGHqj2BKzKaj0
 /rOmMWWw==;
Received: from inva020.nxp.com ([92.121.34.13])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJV6G-00024r-Vy
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 04:35:40 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id D75D41A0C60;
 Wed,  1 Apr 2020 06:34:32 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 0448E1A0C68;
 Wed,  1 Apr 2020 06:34:28 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id B6DD74024E;
 Wed,  1 Apr 2020 12:34:21 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: daniel.lezcano@linaro.org, tglx@linutronix.de, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH] clocksource/drivers/imx-tpm: Add support for ARM64
Date: Wed,  1 Apr 2020 12:27:02 +0800
Message-Id: <1585715222-24489-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_053537_154333_7E7CC142 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -4.2 (----)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-4.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allows building and compile-testing the i.MX TPM driver also
for ARM64. The delay_timer is only supported on ARMv7.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/clocksource/timer-imx-tpm.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/clocksource/timer-imx-tpm.c b/drivers/clocksource/timer-imx-tpm.c
index 6334a35..2cdc077 100644
--- a/drivers/clocksource/timer-imx-tpm.c
+++ b/drivers/clocksource/timer-imx-tpm.c
@@ -61,17 +61,19 @@ static inline void tpm_irq_acknowledge(void)
 	writel(TPM_STATUS_CH0F, timer_base + TPM_STATUS);
 }
 
-static struct delay_timer tpm_delay_timer;
-
 static inline unsigned long tpm_read_counter(void)
 {
 	return readl(timer_base + TPM_CNT);
 }
 
+#if defined(CONFIG_ARM)
+static struct delay_timer tpm_delay_timer;
+
 static unsigned long tpm_read_current_timer(void)
 {
 	return tpm_read_counter();
 }
+#endif
 
 static u64 notrace tpm_read_sched_clock(void)
 {
@@ -144,9 +146,11 @@ static struct timer_of to_tpm = {
 
 static int __init tpm_clocksource_init(void)
 {
+#if defined(CONFIG_ARM)
 	tpm_delay_timer.read_current_timer = &tpm_read_current_timer;
 	tpm_delay_timer.freq = timer_of_rate(&to_tpm) >> 3;
 	register_current_timer_delay(&tpm_delay_timer);
+#endif
 
 	sched_clock_register(tpm_read_sched_clock, counter_width,
 			     timer_of_rate(&to_tpm) >> 3);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
