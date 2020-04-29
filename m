Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2810C1BEA64
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 23:55:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z3a2oYf6XbqQT6XUYIkkol+Wvdn7H+QIHvn7sRjTt7U=; b=FeFOfBi1F9fzcG
	qf3U3/I2bDFYUL/mhvSq1fLnlYPr0r840bpyun4VqDS1zEkeiw/4MpvIJlvNffE0m+DqjWJwkpcE0
	tQp6M2iOKLMmqV4PylMNpSeDMbAaIaochL+6NZhDD48DNOJAgkkMeISCCmpJ4SC9eSsIHFguqEB9n
	M8pGJnL+LOc5n/I5+GDe28O4x813K1de0TCQEPjVFCWYOwSFjppdi4LMe1Vb9AYqGFR30mWrZ6Eut
	IBs6S09SyUSq08LfmxB661WYU9GLkGW4+MZTTb65shSlJR8It8AbB7c/j9VjF/+IcDgwEAPHPK4Kj
	w9YPn0AYt2VmszvKIU7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTug3-0004EP-Bu; Wed, 29 Apr 2020 21:55:35 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTueh-00028S-PO
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 21:54:13 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id AC13E81AC;
 Wed, 29 Apr 2020 21:54:58 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 02/15] dt-bindings: timer: add ti,
 dmtimer compatible for for system timers
Date: Wed, 29 Apr 2020 14:53:49 -0700
Message-Id: <20200429215402.18125-3-tony@atomide.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200429215402.18125-1-tony@atomide.com>
References: <20200429215402.18125-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_145411_890860_2C707C30 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Lokesh Vutla <lokeshvutla@ti.com>, "H. Nikolaus Schaller" <hns@goldelico.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Graeme Smecher <gsmecher@threespeedlogic.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, Tero Kristo <t-kristo@ti.com>,
 Stephen Boyd <sboyd@kernel.org>, Andreas Kemnade <andreas@kemnade.info>,
 Keerthy <j-keerthy@ti.com>, linux-omap@vger.kernel.org,
 Adam Ford <aford173@gmail.com>, Brian Hutchinson <b.hutchman@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The TI dual-mode timer can be used for both clocksource and clockevent
system timers. We need a way to specify which dual-mode timers are
reserved for system timers as there are multiple instances available
that may require a board specific configuration.

Let's add a generic compatible "ti,dmtimer" that TIMER_OF_DECLARE can
use as suggested by Daniel Lezcano <daniel.lezcano@linaro.org>.

Suggested-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 Documentation/devicetree/bindings/timer/ti,timer.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/timer/ti,timer.txt b/Documentation/devicetree/bindings/timer/ti,timer.txt
--- a/Documentation/devicetree/bindings/timer/ti,timer.txt
+++ b/Documentation/devicetree/bindings/timer/ti,timer.txt
@@ -14,6 +14,7 @@ Required properties:
 			ti,omap5430-timer (applicable to OMAP543x devices)
 			ti,am335x-timer	(applicable to AM335x devices)
 			ti,am335x-timer-1ms (applicable to AM335x devices)
+			ti,dmtimer (applicable to system timers)
 
 - reg:			Contains timer register address range (base address and
 			length).
-- 
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
