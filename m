Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4FAD1DB130
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 13:13:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cyZ8no5PFyLpyjVlqzVtKNN7cbBIYPG9jMJBA6rerG4=; b=ZQFiesNSmUQPMIBOZxl4pFB90a
	DHFu1k1AbQquZQGbRX3SAX3Ap5pu4afedj4bA8yOgeBPP3vueTca5bs8FXqjmV2GTv5hZaBMWXjY2
	v5VMX9MgVCRcsPz8E4P2AJwWrmyj6zdkJTYsAQeUfwbM2WB1yoaqWiqOj7ZUY71Psp9NWG/DPwln3
	lx23KQ9BNdywaFqkBixzbuzq3MYBDGYOA3WmNobD8nBAgcs1lWEm4v+wYcDqpzR454PafbrjNpMJ2
	fFndZuxdoiiMuauwMgrnJiSR1NDRo1PcGp31ZBf+wV2Pe2FEpz27XXpLIQHZenZNvrdY4Y5UfGJtn
	2f3VL3ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbMfN-0004iV-0s; Wed, 20 May 2020 11:13:41 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbMer-0004Zg-34
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 11:13:10 +0000
Received: by mail-pg1-x544.google.com with SMTP id p21so1255039pgm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 04:13:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZG9/oyco7B79XCj6TKIn88+qkDpSNwk8w2d1UWYERo0=;
 b=pdAwNIlvROhiKpL/uEs/CC2blZgu9oXn0Cip5pIyL+nIKtHyciusiYEz1cZHlaoldy
 11bzJLJpdW3zY2XILih4rOtUwCCavUZFMs8eYp8a69jMGrEyovcPGuyMlNMwqRw/J0Nd
 sVGmw/B6Cu9iE1/8flZoqNa5DmIadUAAyYBR2UqNtvdvb/mUlDMknuK2bxsAotyaHJw7
 afeMaBCy/zcIeP6yN4vijo3dtNwFpDuQkl/EyXebZaW6ZH+d28yZT6+wVwxPG5azbPAK
 cAw/AutnoRZ7i1RjlCBe4Pt4M9KMv3aA0uWSM8hY2ouSd+5X/aDy2zXH6Lf5tYsAPZ/U
 HjXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ZG9/oyco7B79XCj6TKIn88+qkDpSNwk8w2d1UWYERo0=;
 b=imaoepBcwCXGd1WhWHAcpQBCoiHJ11gi6jQGSS0w6E7xjnsK2cx5/PVmIeSYV8ThHZ
 XMq4JnJrnUDm9v4c8Jzt6JU2k+bLaq/khXdRPM4hP9lKJr7JsDukhx9KC00YVhpq2FoA
 2yZxYQg/wx/9YUBwunzExoxy5TA/tt9zSXkIq32kIL1kCkJ6x46pJD0IQ9j0b9+1n5VL
 Mn+5m9YVuwstCr3euV2JPSk9+hGP+LfqClFFCWCpKoeVJJaSji0J/GHcMd3tzRvNWkhX
 TLoDJ6cbldhlxFeMYqBbhR/WDggRI9NAii5MgbEBmeo56pvDDEvUNFtL1ovtz0m+zg3E
 gSvw==
X-Gm-Message-State: AOAM531D11sWev69FWblq1LRCCvu4gJxisryNkpPnpfNPVJpFrIA5ESp
 0HGNFo+tRojejzGw6uRvHgshAPEp9gg=
X-Google-Smtp-Source: ABdhPJyAXA8IR3qjB6XDW9mgUh5Gkt/Gfwj2utLLwP9UmxbL/P36lgEOjUZ0/LGMAYySKXzpGmJeRg==
X-Received: by 2002:a62:ee02:: with SMTP id e2mr3672825pfi.161.1589973187571; 
 Wed, 20 May 2020 04:13:07 -0700 (PDT)
Received: from localhost.localdomain ([117.252.68.136])
 by smtp.gmail.com with ESMTPSA id q134sm2044974pfc.143.2020.05.20.04.13.00
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 20 May 2020 04:13:06 -0700 (PDT)
From: Sumit Garg <sumit.garg@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/4] irqchip/gic-v3: Enable support for SGIs to act as NMIs
Date: Wed, 20 May 2020 16:41:53 +0530
Message-Id: <1589973115-14757-3-git-send-email-sumit.garg@linaro.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589973115-14757-1-git-send-email-sumit.garg@linaro.org>
References: <1589973115-14757-1-git-send-email-sumit.garg@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_041309_218833_75A9CC4B 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sumit Garg <sumit.garg@linaro.org>, daniel.thompson@linaro.org,
 jason@lakedaemon.net, catalin.marinas@arm.com, jason.wessel@windriver.com,
 dianders@chromium.org, linux-kernel@vger.kernel.org, maz@kernel.org,
 kgdb-bugreport@lists.sourceforge.net, tglx@linutronix.de, will@kernel.org,
 julien.thierry.kdev@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support to handle SGIs as regular NMIs. As SGIs or IPIs defaults to a
special flow handler: handle_percpu_devid_fasteoi_ipi(), so skip NMI
handler update in case of SGIs.

Also, enable NMI support prior to gic_smp_init() as allocation of SGIs
as IRQs/NMIs happen as part of this routine.

Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
---
 drivers/irqchip/irq-gic-v3.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
index 82095b8..ceef63b 100644
--- a/drivers/irqchip/irq-gic-v3.c
+++ b/drivers/irqchip/irq-gic-v3.c
@@ -477,6 +477,11 @@ static int gic_irq_nmi_setup(struct irq_data *d)
 	if (WARN_ON(gic_irq(d) >= 8192))
 		return -EINVAL;
 
+	if (get_intid_range(d) == SGI_RANGE) {
+		gic_irq_set_prio(d, GICD_INT_NMI_PRI);
+		return 0;
+	}
+
 	/* desc lock should already be held */
 	if (gic_irq_in_rdist(d)) {
 		u32 idx = gic_get_ppi_index(d);
@@ -514,6 +519,11 @@ static void gic_irq_nmi_teardown(struct irq_data *d)
 	if (WARN_ON(gic_irq(d) >= 8192))
 		return;
 
+	if (get_intid_range(d) == SGI_RANGE) {
+		gic_irq_set_prio(d, GICD_INT_DEF_PRI);
+		return;
+	}
+
 	/* desc lock should already be held */
 	if (gic_irq_in_rdist(d)) {
 		u32 idx = gic_get_ppi_index(d);
@@ -1675,6 +1685,7 @@ static int __init gic_init_bases(void __iomem *dist_base,
 
 	gic_dist_init();
 	gic_cpu_init();
+	gic_enable_nmi_support();
 	gic_smp_init();
 	gic_cpu_pm_init();
 
@@ -1686,8 +1697,6 @@ static int __init gic_init_bases(void __iomem *dist_base,
 			gicv2m_init(handle, gic_data.domain);
 	}
 
-	gic_enable_nmi_support();
-
 	return 0;
 
 out_free:
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
