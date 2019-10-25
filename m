Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C613CE4B73
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 14:45:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HlMnO2tQm0ba507U03M6mQg1kGrA67rU40/FGVwRsUY=; b=fTsmJ2IzWtO0U2
	JWyO4RLDB/PT3PTXG/L7EwnK6cpYaq7q/qYAFDdb4KQY3gofNYgCaO+KUj5sNtLCEGvMNU42QKnos
	ZkelFnS8l0X81QFOr4LWo9xFa3pZbapTb0v37snW15t8SuAYd4rjrbQiVsJaDcYmO4QTD/t4ZoD4x
	x9YBTT0D3JhbZImWIO1eIXN4/gWJL+oEy04e0Y1XusOQzd2zr9qL5QridIH8NZSKSvPTfGMCCFcEJ
	hCXsYi5CMj8XQVUCsofWcbUhPI+ZG//shn7gFu79FSjHduAhvhewzKJheQrsvqbPLsA5plG2OdUfe
	v7bSCQ43Q/Ty3ZwEpsxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNyy4-0000YK-Vd; Fri, 25 Oct 2019 12:45:24 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNyu4-0006K3-W8
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 12:41:18 +0000
Received: by mail-lj1-x244.google.com with SMTP id a21so2524378ljh.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 05:41:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=z5OaxQ59kkoON55cfbSWL0VwoPhm02TOWjYAIOsAYR4=;
 b=Z3uV0RfdqSBBGI7kMp681IHDKiMMw34rS+1vg8ANAi2/RP7D8d5hz7qGr7OAQMasdQ
 E/yrP8KoCcF3Gs8xHW0QTxgNeUgESRT7h8oBi5SRnTslm9x4QgJdl3jlOny6kJ+YAnmz
 uj1IKo2rVkGcWirVH0ntdIuyn4x2gOnoOg8N8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=z5OaxQ59kkoON55cfbSWL0VwoPhm02TOWjYAIOsAYR4=;
 b=Nz7leeSJalCQbADNA7L+DOr7gWwoBkkfPiB85kRfG/st8GNzbR5jni5oTSxZPK68WP
 IMx5k7ZuU9veqhDW6ATJCEtlrGK8HCF7ynhBaq6WhzbQT0HeKCUcziK/vAGGY5+ericv
 o8Z41BNiR5mSD1uks3LEoU2CK0HrzcFEQWkoF+AGBbmlR2r9KWamHl7BnKCD2lA4J8f/
 NWpBa2WbXtoZB9qSD2C77Q2UEPyS0hOO5+T1ramuaCFVyLCvHbAbCRV4QCvzYLVn/LpU
 +l9n0iEx+Ko+FFvG0Qn7nHGxooW+Op2H0wq8m6wvqfyenUDSxYOLBF94G1PeGKzjBv/e
 8CgA==
X-Gm-Message-State: APjAAAXkFkKN1kKELCQBT6XVgseM1ugo5/8te3VGHCd5xhAXXRJFywrZ
 wM1EPWWuc6m2ItsEiOTFaDLCYQ==
X-Google-Smtp-Source: APXvYqzNAB0qiRvZa363YM70OsmO/XrxBScuKvT6WflQox4bqMptOwRaqET29Bl5ng2YUS1roZ66tg==
X-Received: by 2002:a2e:98d8:: with SMTP id s24mr2307434ljj.72.1572007275425; 
 Fri, 25 Oct 2019 05:41:15 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id 10sm821028lfy.57.2019.10.25.05.41.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 05:41:15 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v2 10/23] soc: fsl: qe: use qe_ic_cascade_{low,
 high}_mpic also on 83xx
Date: Fri, 25 Oct 2019 14:40:45 +0200
Message-Id: <20191025124058.22580-11-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191025124058.22580-1-linux@rasmusvillemoes.dk>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191025124058.22580-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_054117_077664_8CB4048D 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Valentin Longchamp <valentin.longchamp@keymile.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Scott Wood <oss@buserror.net>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The *_ipic and *_mpic handlers are almost identical - the only
difference is that the latter end with an unconditional
chip->irq_eoi() call. Since IPIC does not have ->irq_eoi, we can
reduce some code duplication by calling irq_eoi conditionally.

This is similar to what is already done in mpc8xxx_gpio_irq_cascade().

This leaves the functions slightly misnamed, but that will be fixed in
a subsequent patch.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 arch/powerpc/platforms/83xx/misc.c |  2 +-
 drivers/soc/fsl/qe/qe_ic.c         | 24 ++++--------------------
 include/soc/fsl/qe/qe_ic.h         |  2 --
 3 files changed, 5 insertions(+), 23 deletions(-)

diff --git a/arch/powerpc/platforms/83xx/misc.c b/arch/powerpc/platforms/83xx/misc.c
index f46d7bf3b140..779791c0570f 100644
--- a/arch/powerpc/platforms/83xx/misc.c
+++ b/arch/powerpc/platforms/83xx/misc.c
@@ -100,7 +100,7 @@ void __init mpc83xx_qe_init_IRQ(void)
 		if (!np)
 			return;
 	}
-	qe_ic_init(np, 0, qe_ic_cascade_low_ipic, qe_ic_cascade_high_ipic);
+	qe_ic_init(np, 0, qe_ic_cascade_low_mpic, qe_ic_cascade_high_mpic);
 	of_node_put(np);
 }
 
diff --git a/drivers/soc/fsl/qe/qe_ic.c b/drivers/soc/fsl/qe/qe_ic.c
index a847b2672e90..0ff802816c0c 100644
--- a/drivers/soc/fsl/qe/qe_ic.c
+++ b/drivers/soc/fsl/qe/qe_ic.c
@@ -402,24 +402,6 @@ unsigned int qe_ic_get_high_irq(struct qe_ic *qe_ic)
 	return irq_linear_revmap(qe_ic->irqhost, irq);
 }
 
-void qe_ic_cascade_low_ipic(struct irq_desc *desc)
-{
-	struct qe_ic *qe_ic = irq_desc_get_handler_data(desc);
-	unsigned int cascade_irq = qe_ic_get_low_irq(qe_ic);
-
-	if (cascade_irq != NO_IRQ)
-		generic_handle_irq(cascade_irq);
-}
-
-void qe_ic_cascade_high_ipic(struct irq_desc *desc)
-{
-	struct qe_ic *qe_ic = irq_desc_get_handler_data(desc);
-	unsigned int cascade_irq = qe_ic_get_high_irq(qe_ic);
-
-	if (cascade_irq != NO_IRQ)
-		generic_handle_irq(cascade_irq);
-}
-
 void qe_ic_cascade_low_mpic(struct irq_desc *desc)
 {
 	struct qe_ic *qe_ic = irq_desc_get_handler_data(desc);
@@ -429,7 +411,8 @@ void qe_ic_cascade_low_mpic(struct irq_desc *desc)
 	if (cascade_irq != NO_IRQ)
 		generic_handle_irq(cascade_irq);
 
-	chip->irq_eoi(&desc->irq_data);
+	if (chip->irq_eoi)
+		chip->irq_eoi(&desc->irq_data);
 }
 
 void qe_ic_cascade_high_mpic(struct irq_desc *desc)
@@ -441,7 +424,8 @@ void qe_ic_cascade_high_mpic(struct irq_desc *desc)
 	if (cascade_irq != NO_IRQ)
 		generic_handle_irq(cascade_irq);
 
-	chip->irq_eoi(&desc->irq_data);
+	if (chip->irq_eoi)
+		chip->irq_eoi(&desc->irq_data);
 }
 
 void qe_ic_cascade_muxed_mpic(struct irq_desc *desc)
diff --git a/include/soc/fsl/qe/qe_ic.h b/include/soc/fsl/qe/qe_ic.h
index f3492eb13052..fb10a7606acc 100644
--- a/include/soc/fsl/qe/qe_ic.h
+++ b/include/soc/fsl/qe/qe_ic.h
@@ -74,8 +74,6 @@ void qe_ic_set_highest_priority(unsigned int virq, int high);
 int qe_ic_set_priority(unsigned int virq, unsigned int priority);
 int qe_ic_set_high_priority(unsigned int virq, unsigned int priority, int high);
 
-void qe_ic_cascade_low_ipic(struct irq_desc *desc);
-void qe_ic_cascade_high_ipic(struct irq_desc *desc);
 void qe_ic_cascade_low_mpic(struct irq_desc *desc);
 void qe_ic_cascade_high_mpic(struct irq_desc *desc);
 void qe_ic_cascade_muxed_mpic(struct irq_desc *desc);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
