Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5A5DA768
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 10:29:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fe+Wlg9ieO3BY7fHbXnFqww5OyZEAA49PZ72up2Dss0=; b=nWp0AqE3pFlqjb
	5cpTE44wxxBQoeqtE9EODaufyCz10Ap/4ZMGQNCiRBSvT5ZNbC0YZcfNj99+efJsosuvan5qcYibp
	KRqciua9O/QSi9Y3zBUZ5LAcnJocHmRp3HppI1sSSQLFrnlw+HH68GVCe1bhHbbz0G5nMDH7s99fl
	5RSkosqYRc5dcOUEl9aEBkmjd9AoDGFY8O9OU/QHlgMicqYBS5AdtM252Dcg97tN3wr6v6CFPIwkr
	rliLvois/gYTUa78wsd+vEbLbNfZc5FIRnLSSNqp9SfSW9wHp7UEVEtxruuAJRei2CuNk7Fjr/Rpa
	R9UtP/Zv0K6nU5Tjt7CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL19d-0003C3-LQ; Thu, 17 Oct 2019 08:29:05 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL18w-0002je-Iz
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 08:28:24 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 08DF78AE15FCECDED770;
 Thu, 17 Oct 2019 16:28:20 +0800 (CST)
Received: from localhost.localdomain (10.67.212.75) by
 DGGEMS401-HUB.china.huawei.com (10.3.19.201) with Microsoft SMTP Server id
 14.3.439.0; Thu, 17 Oct 2019 16:28:18 +0800
From: Daode Huang <huangdaode@hisilicon.com>
To: <jason@lakedaemon.net>, <andrew@lunn.ch>, <gregory.clement@bootlin.com>,
 <sebastian.hesselbarth@gmail.com>, <tglx@linutronix.de>, <maz@kernel.org>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>, <nm@ti.com>,
 <t-kristo@ti.com>, <ssantosh@kernel.org>
Subject: [PATCH] irqchip: remove redundant semicolon after while
Date: Thu, 17 Oct 2019 16:25:29 +0800
Message-ID: <1571300729-38822-1-git-send-email-huangdaode@hisilicon.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
X-Originating-IP: [10.67.212.75]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_012822_839028_46C4DFB9 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

check drivers/irqchip with "make coccicheck M=drivers/irqchip/",
it will report unneeded semicolon like below, just remove them.

drivers/irqchip/irq-zevio.c:54:2-3: Unneeded semicolon
drivers/irqchip/irq-gic-v3.c:177:2-3: Unneeded semicolon
drivers/irqchip/irq-gic-v3.c:234:2-3: Unneeded semicolon

Signed-off-by: Daode Huang <huangdaode@hisilicon.com>
---
 drivers/irqchip/irq-gic-v3.c | 4 ++--
 drivers/irqchip/irq-zevio.c  | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
index 422664a..58518e5 100644
--- a/drivers/irqchip/irq-gic-v3.c
+++ b/drivers/irqchip/irq-gic-v3.c
@@ -174,7 +174,7 @@ static void gic_do_wait_for_rwp(void __iomem *base)
 		}
 		cpu_relax();
 		udelay(1);
-	};
+	}
 }
 
 /* Wait for completion of a distributor change */
@@ -231,7 +231,7 @@ static void gic_enable_redist(bool enable)
 			break;
 		cpu_relax();
 		udelay(1);
-	};
+	}
 	if (!count)
 		pr_err_ratelimited("redistributor failed to %s...\n",
 				   enable ? "wakeup" : "sleep");
diff --git a/drivers/irqchip/irq-zevio.c b/drivers/irqchip/irq-zevio.c
index 5a7efeb..84163f1 100644
--- a/drivers/irqchip/irq-zevio.c
+++ b/drivers/irqchip/irq-zevio.c
@@ -51,7 +51,7 @@ static void __exception_irq_entry zevio_handle_irq(struct pt_regs *regs)
 	while (readl(zevio_irq_io + IO_STATUS)) {
 		irqnr = readl(zevio_irq_io + IO_CURRENT);
 		handle_domain_irq(zevio_irq_domain, irqnr, regs);
-	};
+	}
 }
 
 static void __init zevio_init_irq_base(void __iomem *base)
-- 
2.8.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
