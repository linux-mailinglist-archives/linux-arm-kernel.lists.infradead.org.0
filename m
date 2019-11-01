Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA0D9EC324
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 13:48:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DMWkmkgQwkfporwjbRvELCpfvQGjtTBISzXeaF3nzi0=; b=DO0U92rDZxKHBF
	2v+ETa5+n1xSNmN74LtczDMxM9Ndh3xETmWJCvWi2mqToN/gfVdT8zXff6gTT4wTB90Zl6oSXU/Y2
	mIBPpn9Rd7yKmrgM5+hYStTuxINnkyTJ5L8hNzEs9qCrj8OHc5LOPkcYCsNRpMr85ThI900gI+8k3
	pFrCoHxCkS4HSKcEFCdTcv7QACh+tw/uWjEXfbbgfh1gBdbBSdNKjJAlc1E7Vbmy2IGfaUG7ddTcN
	CkASSddDr1lNUuMnkjGix+hK4gWY8qBvUuHKrKPS1FN0oNopxQjJyafUUQX4mEK7Bz1RQCLByN+Ll
	1Pu/THHiagJyHTD1+wJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQWLZ-0005PL-Le; Fri, 01 Nov 2019 12:48:09 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQWGF-0008AA-SL
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 12:42:41 +0000
Received: by mail-lj1-x241.google.com with SMTP id q64so10065442ljb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 05:42:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=E9MniY1Iee5HGhOe/xollIck0/KPXWyQbXSm1b3gOvo=;
 b=IpmsnlU3N0uY5wGR42rpGKBUHIRdnp8kSvWptnZoSOs8mgvM/MGv2oWAk9GnohesvQ
 9Mgw5KFKbVbmDGlPWX0bPgsWWQcgXnUUa09RONfmY7iCiPIB65NKAk7QExrVUAdDtR8I
 prVxqK2LpIewYWoHxk7rhieBimU/nQgdSay7A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=E9MniY1Iee5HGhOe/xollIck0/KPXWyQbXSm1b3gOvo=;
 b=g77ayH/yDqDhZBV6LzZspKGXsig7PaWbr8OBMMNyzKLZKnwpR4c793XgfskrE9KVYT
 5817a3g7TpviFG7X+oDTN4k0yNb/1m2Coa0Tycn5mr7aZtvdcCPeC4sF+VtYKymwYlPl
 rrrnfPfxczqWpCb7GxxBKFhhS0mShs/RMAJh1aAwTfYa8fm+A95NXB5l7EhP7Cx2eMAM
 485xM4jmVkKF9MKrcXvGk3W1AArU5NZVf2LdSbejRZ3kYexgOuwMMDUoR+vud2mGlhJi
 H2d/cCmtUQQwxk/pAVUkXu3rlzKwlaIy+aofq9Bsq//BwrwG6l6pgVC8ncmcioJV0U3Y
 QI6g==
X-Gm-Message-State: APjAAAW+P1ca8dcpNnw1HbGV4y4vJfk/f6NORV+16NbFq3SC3T3xs1jE
 BbyZ786t+qe48G9ORMHx79Si3A==
X-Google-Smtp-Source: APXvYqxRE/ztjYlNPx5/Juxktxqx6tsdSbtUfuuboMOjXzvh3M6QiHd4gHlHVEZt94kgSWq/axgfxg==
X-Received: by 2002:a2e:99c2:: with SMTP id l2mr2450641ljj.145.1572612158179; 
 Fri, 01 Nov 2019 05:42:38 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id o26sm2458540lfi.57.2019.11.01.05.42.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 05:42:37 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v3 18/36] soc: fsl: qe: don't use NO_IRQ in qe_ic.c
Date: Fri,  1 Nov 2019 13:41:52 +0100
Message-Id: <20191101124210.14510-19-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191101124210.14510-1-linux@rasmusvillemoes.dk>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191101124210.14510-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_054239_953682_993B15AE 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Scott Wood <oss@buserror.net>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
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
