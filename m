Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6D4E0EE2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 02:06:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KCmshpGssXBfOVWg3zOU3EyraUE4+D5qY+pzgTKQVkg=; b=T5oyEIRKJLa5RCBdQKdGYuaSUu
	MrQgZqpwkT/jLZmb03Jp/HJK3BCzYnWA7Pb4UKtL562EUC/T+p8fk8MII0R+Ok1uy0G/ruEb6MOOR
	5peKWKkPQbQCXu8wwZ44K0582BHrhpcshQ3kSbHyorNA7+qhToBkMBMt+TAggtrDh1Rx95eOZJqs2
	fOrcTYMj1ob+nRYxAfcnDrR7ZrcmUjm6JXUNH9lto87YlPlPA1An5C3IZtRmI623jKHGC35kdXbbk
	IIMUgOKno9CaRBaG0qFMC3LZ8CUqcX8cmtsjHqoo6jv/wFbXSzij+7RHixsZxEsxFCBYC/I1+JIh/
	ZdBJTMlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN4Ah-0007Nx-8q; Wed, 23 Oct 2019 00:06:39 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN4A7-0006yl-C9
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 00:06:05 +0000
Received: by mail-wm1-x343.google.com with SMTP id g24so9999312wmh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 17:06:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=UHr4crB3Dlo9CDtDYw06eX2hUAeMInOCDregffY1R94=;
 b=ZhTu4zFIDCC2d1bvNTmeamTKakpEcalGy9udhPKNt1cQUWiJ+rCzQz82XXyMQHDqJv
 UJCZz6zd/i8PE6urMg1yTNfDt7SOlIR+WYCdOSj5dMkAuw1Cq8q44MXqVdDyAMsM7vnW
 Y/ZT6Z8/37dK/26p0vThbdaC3LW+M66H2xH+613Thh6apkUETaEyRll8JGmwjWp/NJ4q
 7Qh741sIjHHV2WKEeo5q9V1IFlANaqYvuxusUFEm2WHg5qVvYwBSD5CvNNkGzIttvA75
 1iGlIOw6dchx6RvOwcVvUu1fmbgiaSPI78cR6N7yzjryreDTeGnZqDd4tFZH3Y9E3fEC
 64Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=UHr4crB3Dlo9CDtDYw06eX2hUAeMInOCDregffY1R94=;
 b=kq9xhBJlr/EVOIvSE07Zb2vgljUQW6tVL1CZcugeqMfjjmSEfe18FJ5ktje9qAt3Yh
 4oYRewxcsApezO55aPcyzXONxLyti8EhiqO+AZtGJ+QiK7pHIP6hVARLG1f/rSp0M3oV
 uxfpNWt5HVMXUjvK/nJwPjsldvZnQtG72rrSqOaoYBJd/f0VXvjpvgcQlV49OaA/VfDw
 M9cnF4Z5eiPgs6xHtWXayV/QZt76CydvtAWprdfIW5n2sO4QZovmlG/sdtT/nJ6cIP0I
 MQ1eRmKjjdjs83j7gCPKn5+Ynb+IlmpNVCfBWnpaakTp4uKFbkGnWTjrFIz+RAmLN84s
 eXug==
X-Gm-Message-State: APjAAAVVVkoWX5gWRzLBZNntqDrsWGDp7JkF5c7hjL0KbSfQSuPMKnln
 qXmpFa2BqEvJqisvsfFGgOc=
X-Google-Smtp-Source: APXvYqx6vZAry8wKP1UL4roFWw7F2MAgBNgEr3xVlLLYA/CUqWDSAVYx61bir8gN0n5++tH8pFd/rQ==
X-Received: by 2002:a7b:c313:: with SMTP id k19mr5396848wmj.6.1571789161462;
 Tue, 22 Oct 2019 17:06:01 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id v10sm18500272wmg.48.2019.10.22.17.05.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 17:06:00 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH RFC 2/2] irqchip/gic: Allow the use of SGI interrupts
Date: Tue, 22 Oct 2019 17:05:47 -0700
Message-Id: <20191023000547.7831-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191023000547.7831-1-f.fainelli@gmail.com>
References: <20191023000547.7831-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_170603_436375_42AD0A34 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Thanu Rangarajan <Thanu.Rangarajan@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 Jim Quinlan <james.quinlan@broadcom.com>, Sudeep Holla <Sudeep.Holla@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGI interrupts are a convenient way for trusted firmware to target a
specific set of CPUs. Update the ARM GIC code to allow the translation
and mapping of SGI interrupts.

Since the kernel already uses SGIs for various inter-processor interrupt
activities, we specifically make sure that we do not let users of the
IRQ API to even try to map those.

Internal IPIs remain dispatched through handle_IPI() while public SGIs
get promoted to a normal interrupt flow management.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/irqchip/irq-gic.c | 41 +++++++++++++++++++++++++++------------
 1 file changed, 29 insertions(+), 12 deletions(-)

diff --git a/drivers/irqchip/irq-gic.c b/drivers/irqchip/irq-gic.c
index 30ab623343d3..dcfdbaacdd64 100644
--- a/drivers/irqchip/irq-gic.c
+++ b/drivers/irqchip/irq-gic.c
@@ -385,7 +385,10 @@ static void __exception_irq_entry gic_handle_irq(struct pt_regs *regs)
 			 * Pairs with the write barrier in gic_raise_softirq
 			 */
 			smp_rmb();
-			handle_IPI(irqnr, regs);
+			if (irqnr < NR_IPI)
+				handle_IPI(irqnr, regs);
+			else
+				handle_domain_irq(gic->domain, irqnr, regs);
 #endif
 			continue;
 		}
@@ -1005,20 +1008,34 @@ static int gic_irq_domain_translate(struct irq_domain *d,
 		if (fwspec->param_count < 3)
 			return -EINVAL;
 
-		/* Get the interrupt number and add 16 to skip over SGIs */
-		*hwirq = fwspec->param[1] + 16;
-
-		/*
-		 * For SPIs, we need to add 16 more to get the GIC irq
-		 * ID number
-		 */
-		if (!fwspec->param[0])
+		*hwirq = fwspec->param[1];
+		switch (fwspec->param[0]) {
+		case 0:
+			/*
+			 * For SPIs, we need to add 16 more to get the GIC irq
+			 * ID number
+			 */
+			*hwirq += 16;
+			/* fall through */
+		case 1:
+			/* Add 16 to skip over SGIs */
 			*hwirq += 16;
+			*type = fwspec->param[2] & IRQ_TYPE_SENSE_MASK;
 
-		*type = fwspec->param[2] & IRQ_TYPE_SENSE_MASK;
+			/* Make it clear that broken DTs are... broken */
+			WARN_ON(*type == IRQ_TYPE_NONE);
+			break;
+		case 2:
+			/* Refuse to map internal IPIs */
+			if (*hwirq < NR_IPI)
+				return -EPERM;
+
+			*type = IRQ_TYPE_NONE;
+			break;
+		default:
+			break;
+		}
 
-		/* Make it clear that broken DTs are... broken */
-		WARN_ON(*type == IRQ_TYPE_NONE);
 		return 0;
 	}
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
