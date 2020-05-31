Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CDD51E9724
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 31 May 2020 13:00:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RiB0K+z5d/oh+Noi9wF/ioHbhTntPFS58HBq8ylMjHI=; b=X1POJl7WGSfulR
	Q/2Kuoq4lgPp8oZayXtclAYrdsm+h13X9Kr4fZRv9vuP/nkqie0bUIBx+XcIIsCMbZq7DRg1ibD5y
	nVvhPOl1AacpZNbQuYQDulsIzVhZNTXuzAachSnTNWm7XKI0EivjHXAG2xgaUZHLpD9PeFg+tJTpq
	teHpEmP7Nx/KPegv873ndZh0Nu2LDck3pQPWCPrAqhKMXseQis92exa0XjKYAKvMsClTY1/MtdO0k
	2u6FLCCEpk1EVm8BKewxJvOOKgig0y9zdV6P64JFHSkgHcrKmLNKHvH06PXpDcvWvjrx6UVoGJM5w
	NtIBWGkaIOjxiGnvpikg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfLhf-0005eA-KK; Sun, 31 May 2020 11:00:31 +0000
Received: from smtp03.smtpout.orange.fr ([80.12.242.125]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfLhY-0005dX-D4
 for linux-arm-kernel@lists.infradead.org; Sun, 31 May 2020 11:00:26 +0000
Received: from localhost.localdomain ([93.23.14.245]) by mwinf5d05 with ME
 id lP0H220095HDzGl03P0He9; Sun, 31 May 2020 13:00:20 +0200
X-ME-Helo: localhost.localdomain
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sun, 31 May 2020 13:00:20 +0200
X-ME-IP: 93.23.14.245
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: catalin.marinas@arm.com, will@kernel.org, tglx@linutronix.de,
 paulmck@kernel.org, gregkh@linuxfoundation.org, mhiramat@kernel.org,
 dianders@chromium.org
Subject: [PATCH] arm64: debug: mark a function as __init to save some memory
Date: Sun, 31 May 2020 13:00:15 +0200
Message-Id: <20200531110015.598607-1-christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_040024_735842_79F17FF2 
X-CRM114-Status: GOOD (  16.05  )
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

'debug_monitors_init()' is only called via 'postcore_initcall'.
It can be marked as __init to save a few bytes of memory.

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
 arch/arm64/kernel/debug-monitors.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/debug-monitors.c b/arch/arm64/kernel/debug-monitors.c
index 15e80c876d46..5df49366e9ab 100644
--- a/arch/arm64/kernel/debug-monitors.c
+++ b/arch/arm64/kernel/debug-monitors.c
@@ -130,7 +130,7 @@ static int clear_os_lock(unsigned int cpu)
 	return 0;
 }
 
-static int debug_monitors_init(void)
+static int __init debug_monitors_init(void)
 {
 	return cpuhp_setup_state(CPUHP_AP_ARM64_DEBUG_MONITORS_STARTING,
 				 "arm64/debug_monitors:starting",
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
