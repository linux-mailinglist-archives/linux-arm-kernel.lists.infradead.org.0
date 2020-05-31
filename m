Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05CEF1E96AD
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 31 May 2020 11:52:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WrsEnjstyt2gxOcra1Hc/lzF5knQm+tnzr2DfUliAF8=; b=pweETG6hLIAWhF
	cIp03IYOQBqgvZeoPypq7sVkOUeZlec7qNugLKDAfDtfrBvyjrqpS/aJEA+XuZim19mhXuqJW1PrE
	6WcY3k0eTbDm3eVQUXYFcpBaIWBeWmYePjwaqHx8olBBVXO2wD7gBdgVDGDn1E+3F0VdOkL5OCfC6
	1gIr9JfvXAOa+QCqQovLsjrx7n+O5mfEXAL16+ZZoJSNp6vAC/uQTNRbPi2cczckCWLlmz75RjKST
	i/dFdwHRDfPuHIBmZAZ20YbK1tLOz/odVgu8jZR6lBHzHKHMn4f30JTjV2Mb/j2oVaamBWoF0jHJW
	EJ91jclMNvKY+SgsQk3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfKdS-0007nK-AV; Sun, 31 May 2020 09:52:06 +0000
Received: from smtp03.smtpout.orange.fr ([80.12.242.125]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfKdJ-0007ml-IF
 for linux-arm-kernel@lists.infradead.org; Sun, 31 May 2020 09:51:59 +0000
Received: from localhost.localdomain ([93.23.14.245]) by mwinf5d05 with ME
 id lMrs2200E5HDzGl03MrtmT; Sun, 31 May 2020 11:51:55 +0200
X-ME-Helo: localhost.localdomain
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sun, 31 May 2020 11:51:55 +0200
X-ME-IP: 93.23.14.245
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: linux@armlinux.org.uk, tglx@linutronix.de, allison@lohutok.net,
 kstewart@linuxfoundation.org, info@metux.net, gregkh@linuxfoundation.org
Subject: [PATCH] ARM: smp_twd: mark a function as __init to save some memory
Date: Sun, 31 May 2020 11:51:51 +0200
Message-Id: <20200531095151.597393-1-christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_025157_897121_997784B8 
X-CRM114-Status: GOOD (  16.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.125 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.125 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

'twd_clk_init()' is only called via 'core_initcall'.
It can be marked as __init to save a few bytes of memory.

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
For the records, this function has been introduced in commit 4fd7f9b12810
("ARM: 7212/1: smp_twd: reconfigure clockevents after cpufreq change")
---
 arch/arm/kernel/smp_twd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/kernel/smp_twd.c b/arch/arm/kernel/smp_twd.c
index 9a14f721a2b0..e0a0b0d820bc 100644
--- a/arch/arm/kernel/smp_twd.c
+++ b/arch/arm/kernel/smp_twd.c
@@ -129,7 +129,7 @@ static struct notifier_block twd_clk_nb = {
 	.notifier_call = twd_rate_change,
 };
 
-static int twd_clk_init(void)
+static int __init twd_clk_init(void)
 {
 	if (twd_evt && raw_cpu_ptr(twd_evt) && !IS_ERR(twd_clk))
 		return clk_notifier_register(twd_clk, &twd_clk_nb);
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
