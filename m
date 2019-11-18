Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A0CE100427
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:30:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DMWkmkgQwkfporwjbRvELCpfvQGjtTBISzXeaF3nzi0=; b=iFJM4sKbBZSfG4
	pm5hpo3/Ng0lkzTW3Bc3e4MjHpHVpcgUYLY2VkVUWvn370Dul0qQNl3nsKTp7WUXbLpsLu2iR0veK
	jc9gjo0TeLV7stSBrIl2L/YLL6FeJb6KzwLJlL5/8dnWcI3+U17s9uuoXi4b4Gigb1DSI3g06gLil
	HSK9hABHIEYpffQuxAZJxxIIcjRn7kgmcz7+oiJwL6WSRl1vyS5RxnJ2Lokd3YbeGgRfPc/SUXm6C
	FdChio0OtV7MJtApiMzfDamKuuR7vUIP/WzK77CkrXYsqYsUzwLcY8EEvvC87LXfDhlDIdnA4mNvZ
	87t4aMJzHD/lhyeLEFJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWfEn-0008PP-EJ; Mon, 18 Nov 2019 11:30:33 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWf8N-0001Bc-QO
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 11:23:58 +0000
Received: by mail-wm1-x342.google.com with SMTP id a17so15755992wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 03:23:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=E9MniY1Iee5HGhOe/xollIck0/KPXWyQbXSm1b3gOvo=;
 b=KmYgpOs03WlRSKWe25/tIn9VSvLYe/epSNDIYgK8wAr/FkEbkodUxcOvwDHl0iMXx1
 Q7Fz/OZcylQNKuX0kdyaWA5h5ANdUjaux3BmXbKFKLjXi+V5HXXpPUTLCp9t3I0LYFOn
 OWF2SoCtnbuXsbrG8Dms2j8Rm9M+BO+SEO8Ok=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=E9MniY1Iee5HGhOe/xollIck0/KPXWyQbXSm1b3gOvo=;
 b=VvKZ1jjNhRMMTnOIDsyATtO+Xlqwsz5K5MqudZW6cuqk2znEktRX28oeEAgJN2rsb8
 Zd+64tHv8Xm7DgegCWROUNrUV8jfBnjSZJjkQ82Y1eDEtFNlrAxvRDIgSN7fl6hCosfJ
 XJAtGFctX+LhzYr31Rs3UOOu5H+Y1EXMoBbP+C8nubnD4EGVERLHuR4ORZedPl1oNJny
 3ddO/4NJozm7zhPR0OH802raafb59VxiQT/DigsK4+bQ4f6YGwCEMNPJBZot+R4BK3TV
 xD13v82PGPH7dQ7zdQzQXRiV1G5Oj5k28Bsnv4M5mFX2zdQPJ67eCT9/Uw38k1vQUy7v
 8yZg==
X-Gm-Message-State: APjAAAW4wihIV2GvfLc2C1l08VGtNDVOie3ggUFqyyIkVtYzK+M3DVtP
 oCUyKQXnT+9BHb05FNbF77U5w1a/ShawWA==
X-Google-Smtp-Source: APXvYqxZcCNNXSs5JK4j/71NfJC5T9Ojx0yMJuAKnaNO6Kk/zJ3sCMcq8gy935CfGfKPJG2JCRN2/Q==
X-Received: by 2002:a7b:ce12:: with SMTP id m18mr30519450wmc.130.1574076234050; 
 Mon, 18 Nov 2019 03:23:54 -0800 (PST)
Received: from prevas-ravi.prevas.se (ip-5-186-115-54.cgn.fibianet.dk.
 [5.186.115.54])
 by smtp.gmail.com with ESMTPSA id y2sm21140815wmy.2.2019.11.18.03.23.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 03:23:53 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v5 18/48] soc: fsl: qe: don't use NO_IRQ in qe_ic.c
Date: Mon, 18 Nov 2019 12:22:54 +0100
Message-Id: <20191118112324.22725-19-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
References: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_032355_997622_1D968698 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [5.186.115.54 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Timur Tabi <timur@kernel.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Scott Wood <oss@buserror.net>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This driver is currently PPC-only, and on powerpc, NO_IRQ is 0, so
this doesn't change functionality. However, not every architecture
defines NO_IRQ, and some define it as -1, so the detection of a failed
irq_of_parse_and_map() (which returns 0 on failure) would be wrong on
those. So to prepare for allowing this driver to build on other
architectures, drop all references to NO_IRQ.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe_ic.c | 21 ++++++++++-----------
 1 file changed, 10 insertions(+), 11 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe_ic.c b/drivers/soc/fsl/qe/qe_ic.c
index 4839dcd5c5d3..8f74bc6efd5c 100644
--- a/drivers/soc/fsl/qe/qe_ic.c
+++ b/drivers/soc/fsl/qe/qe_ic.c
@@ -282,7 +282,7 @@ static const struct irq_domain_ops qe_ic_host_ops = {
 	.xlate = irq_domain_xlate_onetwocell,
 };
 
-/* Return an interrupt vector or NO_IRQ if no interrupt is pending. */
+/* Return an interrupt vector or 0 if no interrupt is pending. */
 unsigned int qe_ic_get_low_irq(struct qe_ic *qe_ic)
 {
 	int irq;
@@ -293,12 +293,12 @@ unsigned int qe_ic_get_low_irq(struct qe_ic *qe_ic)
 	irq = qe_ic_read(qe_ic->regs, QEIC_CIVEC) >> 26;
 
 	if (irq == 0)
-		return NO_IRQ;
+		return 0;
 
 	return irq_linear_revmap(qe_ic->irqhost, irq);
 }
 
-/* Return an interrupt vector or NO_IRQ if no interrupt is pending. */
+/* Return an interrupt vector or 0 if no interrupt is pending. */
 unsigned int qe_ic_get_high_irq(struct qe_ic *qe_ic)
 {
 	int irq;
@@ -309,7 +309,7 @@ unsigned int qe_ic_get_high_irq(struct qe_ic *qe_ic)
 	irq = qe_ic_read(qe_ic->regs, QEIC_CHIVEC) >> 26;
 
 	if (irq == 0)
-		return NO_IRQ;
+		return 0;
 
 	return irq_linear_revmap(qe_ic->irqhost, irq);
 }
@@ -320,7 +320,7 @@ static void qe_ic_cascade_low(struct irq_desc *desc)
 	unsigned int cascade_irq = qe_ic_get_low_irq(qe_ic);
 	struct irq_chip *chip = irq_desc_get_chip(desc);
 
-	if (cascade_irq != NO_IRQ)
+	if (cascade_irq != 0)
 		generic_handle_irq(cascade_irq);
 
 	if (chip->irq_eoi)
@@ -333,7 +333,7 @@ static void qe_ic_cascade_high(struct irq_desc *desc)
 	unsigned int cascade_irq = qe_ic_get_high_irq(qe_ic);
 	struct irq_chip *chip = irq_desc_get_chip(desc);
 
-	if (cascade_irq != NO_IRQ)
+	if (cascade_irq != 0)
 		generic_handle_irq(cascade_irq);
 
 	if (chip->irq_eoi)
@@ -347,10 +347,10 @@ static void qe_ic_cascade_muxed_mpic(struct irq_desc *desc)
 	struct irq_chip *chip = irq_desc_get_chip(desc);
 
 	cascade_irq = qe_ic_get_high_irq(qe_ic);
-	if (cascade_irq == NO_IRQ)
+	if (cascade_irq == 0)
 		cascade_irq = qe_ic_get_low_irq(qe_ic);
 
-	if (cascade_irq != NO_IRQ)
+	if (cascade_irq != 0)
 		generic_handle_irq(cascade_irq);
 
 	chip->irq_eoi(&desc->irq_data);
@@ -386,7 +386,7 @@ static void __init qe_ic_init(struct device_node *node, unsigned int flags)
 	qe_ic->virq_high = irq_of_parse_and_map(node, 0);
 	qe_ic->virq_low = irq_of_parse_and_map(node, 1);
 
-	if (qe_ic->virq_low == NO_IRQ) {
+	if (!qe_ic->virq_low) {
 		printk(KERN_ERR "Failed to map QE_IC low IRQ\n");
 		kfree(qe_ic);
 		return;
@@ -423,8 +423,7 @@ static void __init qe_ic_init(struct device_node *node, unsigned int flags)
 	irq_set_handler_data(qe_ic->virq_low, qe_ic);
 	irq_set_chained_handler(qe_ic->virq_low, low_handler);
 
-	if (qe_ic->virq_high != NO_IRQ &&
-			qe_ic->virq_high != qe_ic->virq_low) {
+	if (qe_ic->virq_high && qe_ic->virq_high != qe_ic->virq_low) {
 		irq_set_handler_data(qe_ic->virq_high, qe_ic);
 		irq_set_chained_handler(qe_ic->virq_high, high_handler);
 	}
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
