Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E1EE1867
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 12:57:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=OqJLM0Do+CNHFYIRgpl4TqvMlGyyheZs6raxYeL8a+E=; b=OEv
	TYCYoESpqlAWRQW5Tf5nloq4658YS60FNZzo1kWLu+p5fan5t2HVfV6JChDSMqJy2i+NbBKqlIp6v
	VXo4lgQiMCIGERaATLdBKCVyyQPImaBjCHJFrGbkqGI85sbYiKgUB+YR/OIGXIF9aff1HnUP6y586
	z2JKjImPJBXflBtUuG070O7ioiWNNIEjVXF34XFmn5HA+wllZP5jEc4H8u+2Uc0JEvwlbo9jSGRgg
	TCiuf/XiQDcNPu2aOpgxuwzMqCKkf5ggkS6sAGupRvUCMT91/HqGXGnBbpy7DW3AstpNWCQ3XyJhE
	8Fr5tpFjHg+tksSTLVUkBxussLYOgfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNEKa-0005GH-KK; Wed, 23 Oct 2019 10:57:32 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNEKP-0005FV-MF
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 10:57:23 +0000
Received: by mail-wm1-x344.google.com with SMTP id f22so19212729wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 03:57:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id;
 bh=kPQuBMcV3IKlXagNKVVulXxvTJ8mDxo4kt4BxEwQ/EA=;
 b=Y/4PCBMNd4d9GEgJXhtXLJ4r+KsultOsAAI4nWtSyex0m7lXA7lffmOE98cf07ZvFF
 BBWaBOnlsYIrtctb8Vtpu0M1VUBy5ocxBMwSNd5ePbTnhtxm6pCHqgigwkKJ9IY3wltP
 W+ptA38/+vkVceeiyz0YpnCr0MZxCNTrSaWgCccu7bBr0Ru4tmDekEAhWvIycPONw8lf
 8Rfyxf4rlFSh/iC6sLuOqg6XTN1LLfN+Wpo/czK8RN3HQsPFInPGhnN/I1L4ewkYD87+
 2QuHR0RrHXV4ymRhNAmtlV3EeCJ3Rtuiz+gcgaqH3/BFVxkp+JC4Yesmo5h5jWc07IIj
 8xXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
 bh=kPQuBMcV3IKlXagNKVVulXxvTJ8mDxo4kt4BxEwQ/EA=;
 b=Xiwl7fQhYVCypfx3N1SCXO2kNf6Qly/GQaseB38TPDdSPseRS3A+f96Z5NqFtORqRy
 i9d9w7UbwvkOk1bBXF0zrSGNhwnnSuQKrOScEmkXwWmMl++Rj9rUaF+NeiPwqgoJMt1Q
 AXyyMO66yeovreYDqTMXPZrIv3hrj4yexWsd/W9SfT8UlevXFURoAnd/R4PcgVNYhsm7
 RxRVAHmSsoTrOM7+OZxgC2k0r1g3MBPwhln7kzC/PVxv9LsKf5bYK4DjWlE9xap9BjgW
 /79WIm4HKkVEFzq9E5u5VZfsgliSn4Gp7ikoTZ61cU5mXj9MUewrZ7u3rHnTbWbFVlp1
 z0Sg==
X-Gm-Message-State: APjAAAWNSRrjKqyx8Ghw+bEyxznoY4Vws+vjkClGwTawlc6kB0e9HNVC
 bWGqYkWzwgH56CmphZJv9x8NBBWKmcahQA==
X-Google-Smtp-Source: APXvYqwFg08mF+6pemixpVH0aOQ1PBQIDeNDKV2x8R7A1ofugYcuV8909T/yOTX3MI0B02t6JQlJvg==
X-Received: by 2002:a05:600c:2253:: with SMTP id
 a19mr7626130wmm.39.1571828239848; 
 Wed, 23 Oct 2019 03:57:19 -0700 (PDT)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id i1sm29116242wmb.19.2019.10.23.03.57.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 23 Oct 2019 03:57:19 -0700 (PDT)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-kernel@vger.kernel.org, monstr@monstr.eu, michal.simek@xilinx.com,
 git@xilinx.com, quanyang.wang@windriver.com
Subject: [PATCH] ARM: zynq: use physical cpuid in zynq_slcr_cpu_stop/start
Date: Wed, 23 Oct 2019 12:57:13 +0200
Message-Id: <20f6ae784e058aaa136a61456fe4784330255ce5.1571828230.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_035721_725715_5B25F3B6 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Quanyang Wang <quanyang.wang@windriver.com>

When kernel booting, it will create a cpuid map between the logical cpus
and physical cpus. In a normal boot, the cpuid map is as below:

    Physical      Logical
        0    ==>     0
        1    ==>     1

But in kdump, there is a condition that the crash happens at the
physical cpu1, and the crash kernel will run at the physical cpu1 too,
so the cpuid map in crash kernel is as below:

    Physical      Logical
        1    ==>     0
        0    ==>     1

The functions zynq_slcr_cpu_stop/start is to stop/start the physical
cpus, the parameter cpu should be the physical cpuid. So use
cpu_logical_map to translate the logical cpuid to physical cpuid.
Or else the logical cpu0(physical cpu1) will stop itself and
the processor will hang.

Signed-off-by: Quanyang Wang <quanyang.wang@windriver.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 arch/arm/mach-zynq/platsmp.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-zynq/platsmp.c b/arch/arm/mach-zynq/platsmp.c
index a10085be9073..68ec303fa278 100644
--- a/arch/arm/mach-zynq/platsmp.c
+++ b/arch/arm/mach-zynq/platsmp.c
@@ -15,6 +15,7 @@
 #include <linux/init.h>
 #include <linux/io.h>
 #include <asm/cacheflush.h>
+#include <asm/smp_plat.h>
 #include <asm/smp_scu.h>
 #include <linux/irqchip/arm-gic.h>
 #include "common.h"
@@ -30,6 +31,7 @@ int zynq_cpun_start(u32 address, int cpu)
 {
 	u32 trampoline_code_size = &zynq_secondary_trampoline_end -
 						&zynq_secondary_trampoline;
+	u32 phy_cpuid = cpu_logical_map(cpu);
 
 	/* MS: Expectation that SLCR are directly map and accessible */
 	/* Not possible to jump to non aligned address */
@@ -39,7 +41,7 @@ int zynq_cpun_start(u32 address, int cpu)
 		u32 trampoline_size = &zynq_secondary_trampoline_jump -
 						&zynq_secondary_trampoline;
 
-		zynq_slcr_cpu_stop(cpu);
+		zynq_slcr_cpu_stop(phy_cpuid);
 		if (address) {
 			if (__pa(PAGE_OFFSET)) {
 				zero = ioremap(0, trampoline_code_size);
@@ -68,7 +70,7 @@ int zynq_cpun_start(u32 address, int cpu)
 			if (__pa(PAGE_OFFSET))
 				iounmap(zero);
 		}
-		zynq_slcr_cpu_start(cpu);
+		zynq_slcr_cpu_start(phy_cpuid);
 
 		return 0;
 	}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
