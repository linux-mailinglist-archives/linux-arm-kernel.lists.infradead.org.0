Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64AE2195490
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 10:57:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ENfG6hRUZ0RCMSG8Iwgq6nyb/XN+Wl44DUVBwndTxWg=; b=oPux8ZSJD25uzR
	C7atyz8swjHmK8+/yxNTcNZVJS84auKeTQ/ACpspndJ6A7XflBB2fK59nGOzaqtTWyBgEBcrL850t
	pYLk2Lc6R3nJ8SYJx2uW8vwG1yGpAnFOijRUieuOEPty7gz4UJxArKZQJHSFB/Qi3FNvc6AKfVYP/
	kdy8bw/v9ZNUncnaBZZtVq8PF6ymTg1GyjuZcVJ+LX+w3AhQzK+RKt/rv4+Ha/KebJtfJ7YYsO9Vb
	mqDPpFdlBiFdj3m5MoAZCV29xbJ7avo1gHfi5C+LU8Q1+r676h3sbIsCUhOJ26e5dl+MO/9SjRBE7
	v9SkZJL5c9UepCizXs9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHljt-0006c7-8F; Fri, 27 Mar 2020 09:57:21 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHljl-0006bF-5k
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 09:57:15 +0000
Received: by mail-lf1-x142.google.com with SMTP id h6so1558699lfp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 02:57:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dxMnZPx7ZOP/i1MY4HPIw99MqretVFofELnazmV9s8M=;
 b=FiSWKVdv3ZebfphDlJuCD7J3uZBdOnPFA/urx+0HWfImxZIkMK7H/IdDaUN57/YOt9
 d8X9OY95Hie/d+/LP1ElMVx8q0Ufz9LrN9cj4BOJpBZrM5LEIjRWO7ViPOykT/ndB4ji
 1Q4GQLjIWlpG4FktaryrG+xZSukiCfw3rwSQXHp1zp316rm4BtkV33msA1XSgUlgw3Ot
 POhBAL5dHkIlKpBCYkzh0TIRB1EaRS0GUYhiH6YgPZ9Ur5flHTfuT3OTMGpi5qqsc8st
 fm9/p+o4ejmdPehymdxPEY1fWDEr9C0SokIbTIz2aNaUSbfsdArfHF03x6HY1Wy0u0vm
 cJNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dxMnZPx7ZOP/i1MY4HPIw99MqretVFofELnazmV9s8M=;
 b=dz7tJYOPJuEMA77g3oNBifmKFWmVGL253YBn50w80qi2C6NKfyPUSFjiJyHT3z7IWv
 GRXjF0SzvuSUIEGQGfuXN5xhtZ6eqcaOlKRugYGYsu4UqTWC0gBPBZ71GKWgZmlMBKLU
 nzoSYjkBBO3g8BBYA/cmxfq2QqNI6YoM9gcPaGj6GhGsbJxAhvu7oZ2p5IcaIJ1jKbbV
 KEDirZ7aUyai3PaByFBfeaIwCXW3K+wnC2yot4/ZwPpdyCDsekt3WkMGNOhs3Vwuspgs
 moU6Zp5Uo9RyQ4VTszTmYCUGhZyhb0aK1cv+V7rqer5FYrJzClYQ3OoFgSxR5CoeUSeJ
 r8nA==
X-Gm-Message-State: ANhLgQ2BY656zedGJG9gcJVzI4zlZMGSe10XEuQzM7rtGgeqihgWmiJb
 SHqNO06iKp+po9ZGfnOZXnFdvQ==
X-Google-Smtp-Source: ADFU+vtkGs3QgJqZ35JeakVvXD76oNN6bsPLXBQzue+1DzzAqwNa3FqhmK+7S4kbPR6v4/BHo1wiuQ==
X-Received: by 2002:a19:74c:: with SMTP id 73mr8275773lfh.56.1585303030318;
 Fri, 27 Mar 2020 02:57:10 -0700 (PDT)
Received: from localhost.localdomain (h-81-170-219-154.NA.cust.bahnhof.se.
 [81.170.219.154])
 by smtp.gmail.com with ESMTPSA id z5sm2711890lfq.71.2020.03.27.02.57.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Mar 2020 02:57:09 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: arm@kernel.org,
	soc@kernel.org
Subject: [PATCH] ARM: vexpress: Make schedutil governor available
Date: Fri, 27 Mar 2020 10:57:03 +0100
Message-Id: <20200327095703.93178-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_025713_225345_3F83A330 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Viresh Kumar <viresh.kumar@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When building the kernel for Versatile Express we need to
consider that some of these boards are big.LITTLE HMP
systems.

As can be seen from kernel/sched/topology.c:

"EAS can be used on a root domain if it meets all the following conditions:
 1. an Energy Model (EM) is available;
 2. the SD_ASYM_CPUCAPACITY flag is set in the sched_domain hierarchy.
 3. no SMT is detected.
 4. the EM complexity is low enough to keep scheduling overheads low;
 5. schedutil is driving the frequency of all CPUs of the rd;"

This means that at the very least, schedutil needs to be
available as a scheduling policy for EAS to work on these
systems. Make this explicit by selecting CPU_FREQ and
CPU_FREQ_GOV_SCHEDUTIL from the Versatile Express
machine.

Currently users of the TC2 board (like me) has to figure these
dependencies out themselves and it is not helpful.

It is still necessary to configure in the schedutil as default
governor manually to actually get a working b.L system, so this
just makes the right governor available to b.L systems, it does
not turn it on by default.

Cc: Vincent Guittot <vincent.guittot@linaro.org>
Cc: Viresh Kumar <viresh.kumar@linaro.org>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/mach-vexpress/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/mach-vexpress/Kconfig b/arch/arm/mach-vexpress/Kconfig
index 726a68085c3b..0a5a67448c94 100644
--- a/arch/arm/mach-vexpress/Kconfig
+++ b/arch/arm/mach-vexpress/Kconfig
@@ -8,6 +8,8 @@ menuconfig ARCH_VEXPRESS
 	select ARM_GLOBAL_TIMER
 	select ARM_TIMER_SP804
 	select COMMON_CLK_VERSATILE
+	select CPU_FREQ
+	select CPU_FREQ_GOV_SCHEDUTIL
 	select GPIOLIB
 	select HAVE_ARM_SCU if SMP
 	select HAVE_ARM_TWD if SMP
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
