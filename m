Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62A31C4408
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 00:50:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CDnbZh0xTF/AEhZggFk37+4RzZ/uJ6lHZDc6q9dHXvc=; b=FFh0neRMBtvojwo48HV9uZ0mOK
	mSQYsq1kFEHQvPhe2zv5w7EyG9dpTJ7XoLQEomkQL2uKEcsKGrigPpOGRn2DeEuuJpwJdVYdBoX+3
	Noi33XM5y6pBWo/j9OD1r1PP36HfmveK3JVU9lfnIl+BN1sBuJ2VtAD7TrFwvxzqc+J24S/EKagcM
	WovIYWb3g1zlT23+q+TKHE/6qqdF3QbScVVKGxYM3vF33VOL3GaZwAKkBZ5en8wxAyILKVoJgkAnP
	ZoJkuVK4Pfas1nYcajSrVpHCLqGJ252CL+9AJrU5uwzXbN+Kg8W2GoSSoFPFxAANZlCNyU2Hi3CVc
	cZG0MWCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFQyQ-0007lw-Bt; Tue, 01 Oct 2019 22:50:26 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFQx4-0005Kd-Sy; Tue, 01 Oct 2019 22:49:04 +0000
Received: by mail-pg1-x542.google.com with SMTP id a24so10760222pgj.2;
 Tue, 01 Oct 2019 15:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xm5+dOflKaTZIVZnokmYc6eT45ykFCPyC442ihyZjok=;
 b=AvfH0JGGeod+exu/4O98hP0w0MWFeU5MDDpIqUf0TxoaWb1lRZPOWwJPHNdzFqp4tw
 MgAlSLOWBgHZ/hmrbWf3PkeKubOGzkKobVGw+AHTePEjd8si0p/WLEM+ULC+KScAR56l
 fM5P1gsFioiPQs63FnNdMbuWrrF8rgX+OuFOszZb7ns/1sPsrtdXwuz7WMAYXGrXr87i
 qqblRzyMKzRu7B3z3rMSboEPo2AKSVNMZNMn39FrjwAtDYdRkkR0YMzQfCk+RyGFYlyL
 uGt/XcWwCNyxv7UCEn5XQQgNgKp7cANUUu8zpMt1SebldmTK4GVIf6/rsiiEDJiQcv0w
 1nSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xm5+dOflKaTZIVZnokmYc6eT45ykFCPyC442ihyZjok=;
 b=RlBSd+GR+oiGFA3lrFSALUV5jIpVdtuLJ9aEvWHByWPPS7AM39fy3Xk6wyUCaC1etI
 9Ad8MwS0QX0gngpR0ZwSgZvaXgI4Kzo1D+aR7Q0MYFbL0sGaffbIFZFqFPk+gSq81G2j
 42uvB2+uEoJd+uTgEeeda+q4ZatF535goWrd2gdvLKDcGpYJYSs6Qy63MwOhgChWQEiA
 /nV96lXm3pzlbBCCl0Spf+kaQXuxbgACb8uachzSgEJjT9S/olrNdtM40uqKjoPxkg5E
 cHtotv7E7OX1lO4BCpYt8XLMxXhfKzh/tR8CXnv2Ep94Dbzj9Q+S1HwjvAah5zcfKMr3
 K+1g==
X-Gm-Message-State: APjAAAWfhXWS6zreT9v6w+St4pUGa/AYB0VQR2HWWL9gxtppOqlz00NO
 bUUeHdSOaPvbeNLXczoyPBc=
X-Google-Smtp-Source: APXvYqyELX0xr8bTqUc9jiZz9X1yUX+9gWsgaesoSqUgFW6SMdUD/tGFBJr4cN1mY9BwQJ17kpCwlw==
X-Received: by 2002:a62:2a04:: with SMTP id q4mr882217pfq.120.1569970141963;
 Tue, 01 Oct 2019 15:49:01 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id c128sm20913506pfc.166.2019.10.01.15.49.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 15:49:01 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 5/7] irqchip/irq-bcm2836: Add support for the 7211 interrupt
 controller
Date: Tue,  1 Oct 2019 15:48:40 -0700
Message-Id: <20191001224842.9382-6-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191001224842.9382-1-f.fainelli@gmail.com>
References: <20191001224842.9382-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_154903_026062_8A31D662 
X-CRM114-Status: GOOD (  14.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Jason Cooper <jason@lakedaemon.net>, Scott Branden <sbranden@broadcom.com>,
 Marc Zyngier <maz@kernel.org>, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>, Stefan Wahren <wahrenst@gmx.net>,
 Ray Jui <rjui@broadcom.com>, Thomas Gleixner <tglx@linutronix.de>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The root interrupt controller on 7211 is about identical to the one
existing on BCM2836, except that the SMP cross call are done through the
standard ARM GIC-400 interrupt controller. This interrupt controller is
used for side band wake-up signals though.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/irqchip/irq-bcm2836.c | 25 ++++++++++++++++++++++---
 1 file changed, 22 insertions(+), 3 deletions(-)

diff --git a/drivers/irqchip/irq-bcm2836.c b/drivers/irqchip/irq-bcm2836.c
index 2038693f074c..77fa395c8f6b 100644
--- a/drivers/irqchip/irq-bcm2836.c
+++ b/drivers/irqchip/irq-bcm2836.c
@@ -112,6 +112,8 @@ static int bcm2836_map(struct irq_domain *d, unsigned int irq,
 		return -EINVAL;
 	}
 
+	chip->flags |= IRQCHIP_MASK_ON_SUSPEND | IRQCHIP_SKIP_SET_WAKE;
+
 	irq_set_percpu_devid(irq);
 	irq_domain_set_info(d, irq, hw, chip, d->host_data,
 			    handle_percpu_devid_irq, NULL, NULL);
@@ -216,8 +218,9 @@ static void bcm2835_init_local_timer_frequency(void)
 	writel(0x80000000, intc.base + LOCAL_PRESCALER);
 }
 
-static int __init bcm2836_arm_irqchip_l1_intc_of_init(struct device_node *node,
-						      struct device_node *parent)
+static int __init arm_irqchip_l1_intc_of_init_smp(struct device_node *node,
+						  struct device_node *parent,
+						  bool smp_init)
 {
 	intc.base = of_iomap(node, 0);
 	if (!intc.base) {
@@ -232,11 +235,27 @@ static int __init bcm2836_arm_irqchip_l1_intc_of_init(struct device_node *node,
 	if (!intc.domain)
 		panic("%pOF: unable to create IRQ domain\n", node);
 
-	bcm2836_arm_irqchip_smp_init();
+	if (smp_init)
+		bcm2836_arm_irqchip_smp_init();
 
 	set_handle_irq(bcm2836_arm_irqchip_handle_irq);
+
 	return 0;
 }
 
+static int __init bcm2836_arm_irqchip_l1_intc_of_init(struct device_node *node,
+						      struct device_node *parent)
+{
+	return arm_irqchip_l1_intc_of_init_smp(node, parent, true);
+}
+
+static int __init bcm7211_arm_irqchip_l1_intc_of_init(struct device_node *node,
+						      struct device_node *parent)
+{
+	return arm_irqchip_l1_intc_of_init_smp(node, parent, false);
+}
+
 IRQCHIP_DECLARE(bcm2836_arm_irqchip_l1_intc, "brcm,bcm2836-l1-intc",
 		bcm2836_arm_irqchip_l1_intc_of_init);
+IRQCHIP_DECLARE(bcm7211_arm_irqchip_l1_intc, "brcm,bcm7211-l1-intc",
+		bcm7211_arm_irqchip_l1_intc_of_init);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
