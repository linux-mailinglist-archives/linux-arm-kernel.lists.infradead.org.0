Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2077F19BD3F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 10:03:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VfZFP1U3DyYGYgCrJglCyYHSiNTagWQVTT43CntZKrU=; b=nHCvlVmx4uYrSu
	jxang6CTBZNRsWjRBt+iJyE7W43h3jBmlZ+2+thlZqbnoX7+It1NT9IkNk/DBDjN8fQs6bY3SSEll
	N9PG4EvS6FEKnWPKV2VS9OVRH0ZN1IYBAAe+DrA44DD+3alo5TXOZXY3mKcogilphZc2LLgTlSXlh
	Wt1t6kTJcpjuKWU/08lRPu6YYeBuZ6YeQZ5MswEJT0Z13rlDod3VNcclgMF5EnNR/HD/PpKtUdYIz
	5S0uJYdDuok+MjKWmbcPHbvVhoOqazdTEQRmDWwSByr0QwF9nDQXTbOe85sC50HFJWdB32xFfZqdw
	3CIeQy40hLCWl0bvjBmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJuoQ-0005Em-P7; Thu, 02 Apr 2020 08:02:54 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJuoG-0005E4-NH
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 08:02:46 +0000
Received: by mail-lj1-x241.google.com with SMTP id k21so2257232ljh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Apr 2020 01:02:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Vyp32wAklCO6J5UFHgfFYKkeTAHEzjD89tPlWTYStp0=;
 b=HBlPb8FkIfaQVWnUvAD2TWPaTz73C7I5gXfZE4/tbSgsUl+4s4ZShIDC8unoa6HJTb
 lX4vmMlXeC8V5BCEYreKA26zKdBSvhoffOKwFfytvwhizNhwEkWuaBrfMyBEFchJevIB
 yyUNybyVPawYhZNhiG/hr1H13VIrfk1fGK11wydOa7ccULLoRLi4VbPyKCBFPwKk5qCZ
 ySNgd5QgLemrXt+CGwdpYfi8zsY2Pea4QJAB3qaKGanP6fNZKlPVeHsyUefJTTcS1tSp
 unVxjM6PsgJ9PEVzRwTzwCjMCBsKZ1YOE83bBO8WDxo/HWY8lt6TtijW0AXJuKxUQnhq
 utJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Vyp32wAklCO6J5UFHgfFYKkeTAHEzjD89tPlWTYStp0=;
 b=dNGtnp7FWoMQwv78bVBkeu6iYPKjojwPahWW1gi9IyIT93Ip1OMOBmqUUW47EP5MKJ
 wTmBY8YKTNYb9cKMtwx9uez4jSmNIc6IQiLYY9fK/Oz06LF6RAQxpAEytdyQ42KOLYUt
 QtuxhSamJe6DCMn0oEDGRA8I+aR6J5RZU8WvvqjFHI7+e9BNadWquQVGgnWLqBLXxw4d
 LPARbFGw6VoeXi1Qvl1Sk0fYEAyVFbzhkLLdY4ftFa26v2pOAjRRtFOxOqzyN+tXrZpk
 pggbsFAExN8nCcBFGnqEAb5sZKOkq7Z52ciRp86YSsdcYESlb5abMlVzj1Xjk8Mf9gWN
 RGyg==
X-Gm-Message-State: AGi0PuaHY5662HqibZK0gAoT3FGdq37X4ShHTJIg4ZktIYpH/WLmIkW2
 NLYzNYHZETDdLX34mG0yZ+1aoQ==
X-Google-Smtp-Source: APiQypKRiHheQF6ZN5f6Vy7jk9f35v3zWiX3N7C7LXyAWgdjwul7jANBM4QrgLAHDCT1hyyQ2MLdLg==
X-Received: by 2002:a2e:9b07:: with SMTP id u7mr1242814lji.110.1585814561734; 
 Thu, 02 Apr 2020 01:02:41 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id i190sm3471898lfi.7.2020.04.02.01.02.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Apr 2020 01:02:40 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: "Rafael J . Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>
Subject: [PATCH] cpufreq: Select schedutil when using big.LITTLE
Date: Thu,  2 Apr 2020 10:02:39 +0200
Message-Id: <20200402080239.7471-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_010244_768538_67A12C1D 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When we are using a system with big.LITTLE HMP
configuration, we need to use EAS to schedule the
system.

As can be seen from kernel/sched/topology.c:

 "EAS can be used on a root domain if it meets all the following conditions:
  1. an Energy Model (EM) is available;
  2. the SD_ASYM_CPUCAPACITY flag is set in the sched_domain hierarchy.
  3. no SMT is detected.
  4. the EM complexity is low enough to keep scheduling overheads low;
  5. schedutil is driving the frequency of all CPUs of the rd;"

This means that at the very least, schedutil needs to be
available as a scheduling policy for EAS to work on these
systems. Make this explicit by defaulting to the schedutil
governor if BIG_LITTLE is selected.

Currently users of the TC2 board (like me) has to figure these
dependencies out themselves and it is not helpful.

Suggested-by: Arnd Bergmann <arnd@arndb.de>
Cc: Vincent Guittot <vincent.guittot@linaro.org>
Cc: Viresh Kumar <viresh.kumar@linaro.org>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/cpufreq/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/cpufreq/Kconfig b/drivers/cpufreq/Kconfig
index bff5295016ae..873aefd96cf2 100644
--- a/drivers/cpufreq/Kconfig
+++ b/drivers/cpufreq/Kconfig
@@ -36,6 +36,7 @@ config CPU_FREQ_STAT
 
 choice
 	prompt "Default CPUFreq governor"
+	default CPU_FREQ_DEFAULT_GOV_SCHEDUTIL if BIG_LITTLE
 	default CPU_FREQ_DEFAULT_GOV_USERSPACE if ARM_SA1100_CPUFREQ || ARM_SA1110_CPUFREQ
 	default CPU_FREQ_DEFAULT_GOV_PERFORMANCE
 	help
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
